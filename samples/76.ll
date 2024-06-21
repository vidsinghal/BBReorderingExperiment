; ModuleID = 'samples/76.bc'
source_filename = "src/http/modules/ngx_http_scgi_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_path_init_t = type { %struct.ngx_str_t, [3 x i64] }
%struct.ngx_keyval_t = type { %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_conf_bitmask_t = type { %struct.ngx_str_t, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_http_scgi_main_conf_t = type { %struct.ngx_array_t }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_scgi_loc_conf_t = type { %struct.ngx_http_upstream_conf_t, %struct.ngx_http_scgi_params_t, %struct.ngx_http_scgi_params_t, ptr, ptr, ptr, %struct.ngx_http_complex_value_t }
%struct.ngx_http_upstream_conf_t = type { ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.ngx_bufs_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.ngx_hash_t, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i64, ptr, i64, i64, %struct.ngx_str_t }
%struct.ngx_bufs_t = type { i64, i64 }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_http_scgi_params_t = type { ptr, ptr, ptr, i64, %struct.ngx_hash_t }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, ptr, ptr, ptr }
%struct.ngx_hash_init_t = type { ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct.ngx_shm_zone_s = type { ptr, %struct.ngx_shm_t, ptr, ptr, ptr, i64 }
%struct.ngx_shm_t = type { ptr, i64, %struct.ngx_str_t, ptr, i64 }
%struct.ngx_http_conf_ctx_t = type { ptr, ptr, ptr }
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, i16, ptr, ptr, i32, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64, ptr }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i112, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64 }
%struct.ngx_http_upstream_s = type { ptr, ptr, %struct.ngx_peer_connection_s, ptr, ptr, %struct.ngx_output_chain_ctx_s, %struct.ngx_chain_writer_ctx_t, ptr, ptr, ptr, i64, i64, i64, %struct.ngx_http_upstream_headers_in_t, ptr, %struct.ngx_buf_s, %struct.ngx_buf_s, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i16 }
%struct.ngx_peer_connection_s = type { ptr, ptr, i32, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.ngx_output_chain_ctx_s = type { ptr, ptr, ptr, ptr, i8, i64, ptr, i64, %struct.ngx_bufs_t, ptr, ptr, ptr }
%struct.ngx_chain_writer_ctx_t = type { ptr, ptr, ptr, ptr, i64 }
%struct.ngx_http_upstream_headers_in_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i8 }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_event_pipe_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i64, %struct.ngx_bufs_t, ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i64, ptr, i64, i64, ptr, i32 }
%struct.ngx_http_script_compile_t = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, i8 }
%struct.ngx_http_upstream_param_t = type { %struct.ngx_str_t, %struct.ngx_str_t, i64 }
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i64, ptr }
%struct.ngx_http_script_copy_code_t = type { ptr, i64 }
%struct.ngx_url_t = type { %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, i16, i16, i32, i8, i32, %union.ngx_sockaddr_t, ptr, i64, ptr }
%union.ngx_sockaddr_t = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_addr_t = type { ptr, i32, %struct.ngx_str_t }
%struct.ngx_http_upstream_resolved_t = type { %struct.ngx_str_t, i16, i64, i64, ptr, ptr, i32, %struct.ngx_str_t, ptr }
%struct.ngx_http_cache_s = type { %struct.ngx_file_s, %struct.ngx_array_t, i32, [16 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i64, i64, i64, i64, %struct.ngx_event_s, i16 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, ptr, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ngx_event_s = type { ptr, i24, ptr, i64, ptr, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_http_script_engine_t = type { ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i8, i64, ptr }
%struct.ngx_chain_s = type { ptr, ptr }
%struct.ngx_table_elt_t = type { i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr }
%struct.ngx_http_status_t = type { i64, i64, i64, ptr, ptr }
%struct.ngx_http_upstream_state_t = type { i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.ngx_http_upstream_main_conf_t = type { %struct.ngx_hash_t, %struct.ngx_array_t }
%struct.ngx_http_upstream_header_t = type { %struct.ngx_str_t, ptr, i64, ptr, i64, i64 }
%struct.ngx_http_compile_complex_value_t = type { ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110011111000110\00", align 1, !dbg !0
@ngx_http_scgi_module_ctx = internal global %struct.ngx_http_module_t { ptr null, ptr null, ptr @ngx_http_scgi_create_main_conf, ptr null, ptr null, ptr null, ptr @ngx_http_scgi_create_loc_conf, ptr @ngx_http_scgi_merge_loc_conf }, align 8, !dbg !7
@ngx_http_scgi_commands = internal global [45 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 9, ptr @.str.36 }, i64 1207959554, ptr @ngx_http_scgi_pass, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 10, ptr @.str.37 }, i64 234881026, ptr @ngx_http_scgi_store, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.38 }, i64 234881038, ptr @ngx_conf_set_access_slot, i64 16, i64 144, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 14, ptr @.str.39 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 160, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 22, ptr @.str.40 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 168, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 24, ptr @.str.41 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 192, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 9, ptr @.str.42 }, i64 234881030, ptr @ngx_http_upstream_bind_set_slot, i64 16, i64 264, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 21, ptr @.str.43 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 272, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 20, ptr @.str.44 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 8, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.45 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 16, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 16, ptr @.str.46 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 48, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 25, ptr @.str.47 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 176, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 22, ptr @.str.48 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 184, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 21, ptr @.str.49 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 200, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.50 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 24, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 12, ptr @.str.51 }, i64 234881028, ptr @ngx_conf_set_bufs_slot, i64 16, i64 112, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 22, ptr @.str.52 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 88, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.53 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 216, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 15, ptr @.str.54 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 56, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 10, ptr @.str.55 }, i64 234881026, ptr @ngx_http_scgi_cache, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 14, ptr @.str.56 }, i64 234881026, ptr @ngx_http_scgi_cache_key, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 15, ptr @.str.57 }, i64 33558528, ptr @ngx_http_file_cache_set_slot, i64 0, i64 0, ptr @ngx_http_scgi_module }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.58 }, i64 234883072, ptr @ngx_http_set_predicate_slot, i64 16, i64 384, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 13, ptr @.str.59 }, i64 234883072, ptr @ngx_http_set_predicate_slot, i64 16, i64 400, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 16, ptr @.str.60 }, i64 234883072, ptr @ngx_http_file_cache_valid_set_slot, i64 16, i64 376, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 19, ptr @.str.61 }, i64 234881026, ptr @ngx_conf_set_num_slot, i64 16, i64 296, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 27, ptr @.str.62 }, i64 234881026, ptr @ngx_conf_set_off_slot, i64 16, i64 320, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 20, ptr @.str.63 }, i64 234883072, ptr @ngx_conf_set_bitmask_slot, i64 16, i64 304, ptr @ngx_http_scgi_next_upstream_masks }, %struct.ngx_command_s { %struct.ngx_str_t { i64 18, ptr @.str.64 }, i64 234883072, ptr @ngx_conf_set_bitmask_slot, i64 16, i64 312, ptr @ngx_http_upstream_cache_method_mask }, %struct.ngx_command_s { %struct.ngx_str_t { i64 15, ptr @.str.65 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 328, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 23, ptr @.str.66 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 336, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 19, ptr @.str.67 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 344, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 21, ptr @.str.68 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 352, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 28, ptr @.str.69 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 368, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 14, ptr @.str.70 }, i64 234881054, ptr @ngx_conf_set_path_slot, i64 16, i64 224, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 23, ptr @.str.71 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 96, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 25, ptr @.str.72 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 104, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 18, ptr @.str.73 }, i64 234883072, ptr @ngx_conf_set_bitmask_slot, i64 16, i64 136, ptr @ngx_http_scgi_next_upstream_masks }, %struct.ngx_command_s { %struct.ngx_str_t { i64 24, ptr @.str.74 }, i64 234881026, ptr @ngx_conf_set_num_slot, i64 16, i64 152, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 26, ptr @.str.75 }, i64 234881026, ptr @ngx_conf_set_msec_slot, i64 16, i64 32, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 10, ptr @.str.76 }, i64 234881036, ptr @ngx_http_upstream_param_set_slot, i64 16, i64 584, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 16, ptr @.str.77 }, i64 234881026, ptr @ngx_conf_set_str_array_slot, i64 16, i64 256, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 16, ptr @.str.78 }, i64 234881026, ptr @ngx_conf_set_str_array_slot, i64 16, i64 248, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 19, ptr @.str.79 }, i64 234883072, ptr @ngx_conf_set_bitmask_slot, i64 16, i64 128, ptr @ngx_http_upstream_ignore_headers_masks }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !2182
@ngx_http_scgi_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1015008, ptr @.str, ptr @ngx_http_scgi_module_ctx, ptr @ngx_http_scgi_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !1916
@.str.1 = private unnamed_addr constant [5 x i8] c"scgi\00", align 1, !dbg !1918
@ngx_pagesize = external global i64, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"there must be at least 2 \22scgi_buffers\22\00", align 1, !dbg !1923
@.str.3 = private unnamed_addr constant [135 x i8] c"\22scgi_busy_buffers_size\22 must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1, !dbg !1928
@.str.4 = private unnamed_addr constant [91 x i8] c"\22scgi_busy_buffers_size\22 must be less than the size of all \22scgi_buffers\22 minus one buffer\00", align 1, !dbg !1933
@.str.5 = private unnamed_addr constant [138 x i8] c"\22scgi_temp_file_write_size\22 must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1, !dbg !1938
@.str.6 = private unnamed_addr constant [194 x i8] c"\22scgi_max_temp_file_size\22 must be equal to zero to disable temporary files usage or must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1, !dbg !1943
@ngx_http_scgi_temp_path = internal global %struct.ngx_path_init_t { %struct.ngx_str_t { i64 9, ptr @.str.10 }, [3 x i64] [i64 1, i64 2, i64 0] }, align 8, !dbg !1968
@.str.7 = private unnamed_addr constant [34 x i8] c"\22scgi_cache\22 zone \22%V\22 is unknown\00", align 1, !dbg !1948
@.str.8 = private unnamed_addr constant [37 x i8] c"no \22scgi_cache_key\22 for \22scgi_cache\22\00", align 1, !dbg !1953
@ngx_cacheline_size = external global i64, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"scgi_hide_headers_hash\00", align 1, !dbg !1958
@ngx_http_scgi_hide_headers = internal global [7 x %struct.ngx_str_t] [%struct.ngx_str_t { i64 6, ptr @.str.11 }, %struct.ngx_str_t { i64 15, ptr @.str.12 }, %struct.ngx_str_t { i64 16, ptr @.str.13 }, %struct.ngx_str_t { i64 18, ptr @.str.14 }, %struct.ngx_str_t { i64 17, ptr @.str.15 }, %struct.ngx_str_t { i64 15, ptr @.str.16 }, %struct.ngx_str_t zeroinitializer], align 16, !dbg !2000
@ngx_http_core_module = external global %struct.ngx_module_s, align 8
@ngx_http_scgi_cache_headers = internal global [7 x %struct.ngx_keyval_t] [%struct.ngx_keyval_t { %struct.ngx_str_t { i64 22, ptr @.str.27 }, %struct.ngx_str_t { i64 29, ptr @.str.28 } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i64 24, ptr @.str.29 }, %struct.ngx_str_t { i64 0, ptr @.str.30 } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i64 18, ptr @.str.31 }, %struct.ngx_str_t { i64 20, ptr @.str.32 } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i64 13, ptr @.str.33 }, %struct.ngx_str_t { i64 0, ptr @.str.30 } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i64 10, ptr @.str.34 }, %struct.ngx_str_t { i64 0, ptr @.str.30 } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i64 13, ptr @.str.35 }, %struct.ngx_str_t { i64 0, ptr @.str.30 } }, %struct.ngx_keyval_t zeroinitializer], align 16, !dbg !2068
@.str.10 = private unnamed_addr constant [10 x i8] c"scgi_temp\00", align 1, !dbg !1963
@.str.11 = private unnamed_addr constant [7 x i8] c"Status\00", align 1, !dbg !1975
@.str.12 = private unnamed_addr constant [16 x i8] c"X-Accel-Expires\00", align 1, !dbg !1980
@.str.13 = private unnamed_addr constant [17 x i8] c"X-Accel-Redirect\00", align 1, !dbg !1983
@.str.14 = private unnamed_addr constant [19 x i8] c"X-Accel-Limit-Rate\00", align 1, !dbg !1988
@.str.15 = private unnamed_addr constant [18 x i8] c"X-Accel-Buffering\00", align 1, !dbg !1993
@.str.16 = private unnamed_addr constant [16 x i8] c"X-Accel-Charset\00", align 1, !dbg !1998
@.str.17 = private unnamed_addr constant [8 x i8] c"scgi://\00", align 1, !dbg !2003
@.str.18 = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1, !dbg !2006
@.str.19 = private unnamed_addr constant [3 x i8] c"%O\00", align 1, !dbg !2011
@.str.20 = private unnamed_addr constant [25 x i8] c"%ui:CONTENT_LENGTH%Z%V%Z\00", align 1, !dbg !2014
@.str.21 = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1, !dbg !2019
@ngx_http_upstream_module = external global %struct.ngx_module_s, align 8
@.str.22 = private unnamed_addr constant [34 x i8] c"upstream sent invalid status \22%V\22\00", align 1, !dbg !2024
@.str.23 = private unnamed_addr constant [22 x i8] c"302 Moved Temporarily\00", align 1, !dbg !2026
@.str.24 = private unnamed_addr constant [7 x i8] c"200 OK\00", align 1, !dbg !2031
@.str.25 = private unnamed_addr constant [29 x i8] c"upstream sent invalid header\00", align 1, !dbg !2033
@.str.26 = private unnamed_addr constant [17 x i8] c"scgi_params_hash\00", align 1, !dbg !2038
@.str.27 = private unnamed_addr constant [23 x i8] c"HTTP_IF_MODIFIED_SINCE\00", align 1, !dbg !2040
@.str.28 = private unnamed_addr constant [30 x i8] c"$upstream_cache_last_modified\00", align 1, !dbg !2042
@.str.29 = private unnamed_addr constant [25 x i8] c"HTTP_IF_UNMODIFIED_SINCE\00", align 1, !dbg !2047
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !2049
@.str.31 = private unnamed_addr constant [19 x i8] c"HTTP_IF_NONE_MATCH\00", align 1, !dbg !2052
@.str.32 = private unnamed_addr constant [21 x i8] c"$upstream_cache_etag\00", align 1, !dbg !2054
@.str.33 = private unnamed_addr constant [14 x i8] c"HTTP_IF_MATCH\00", align 1, !dbg !2059
@.str.34 = private unnamed_addr constant [11 x i8] c"HTTP_RANGE\00", align 1, !dbg !2061
@.str.35 = private unnamed_addr constant [14 x i8] c"HTTP_IF_RANGE\00", align 1, !dbg !2066
@.str.36 = private unnamed_addr constant [10 x i8] c"scgi_pass\00", align 1, !dbg !2076
@.str.37 = private unnamed_addr constant [11 x i8] c"scgi_store\00", align 1, !dbg !2078
@.str.38 = private unnamed_addr constant [18 x i8] c"scgi_store_access\00", align 1, !dbg !2080
@.str.39 = private unnamed_addr constant [15 x i8] c"scgi_buffering\00", align 1, !dbg !2082
@.str.40 = private unnamed_addr constant [23 x i8] c"scgi_request_buffering\00", align 1, !dbg !2087
@.str.41 = private unnamed_addr constant [25 x i8] c"scgi_ignore_client_abort\00", align 1, !dbg !2089
@.str.42 = private unnamed_addr constant [10 x i8] c"scgi_bind\00", align 1, !dbg !2091
@.str.43 = private unnamed_addr constant [22 x i8] c"scgi_socket_keepalive\00", align 1, !dbg !2093
@.str.44 = private unnamed_addr constant [21 x i8] c"scgi_connect_timeout\00", align 1, !dbg !2095
@.str.45 = private unnamed_addr constant [18 x i8] c"scgi_send_timeout\00", align 1, !dbg !2097
@.str.46 = private unnamed_addr constant [17 x i8] c"scgi_buffer_size\00", align 1, !dbg !2099
@.str.47 = private unnamed_addr constant [26 x i8] c"scgi_pass_request_headers\00", align 1, !dbg !2101
@.str.48 = private unnamed_addr constant [23 x i8] c"scgi_pass_request_body\00", align 1, !dbg !2106
@.str.49 = private unnamed_addr constant [22 x i8] c"scgi_intercept_errors\00", align 1, !dbg !2108
@.str.50 = private unnamed_addr constant [18 x i8] c"scgi_read_timeout\00", align 1, !dbg !2110
@.str.51 = private unnamed_addr constant [13 x i8] c"scgi_buffers\00", align 1, !dbg !2112
@.str.52 = private unnamed_addr constant [23 x i8] c"scgi_busy_buffers_size\00", align 1, !dbg !2117
@.str.53 = private unnamed_addr constant [18 x i8] c"scgi_force_ranges\00", align 1, !dbg !2119
@.str.54 = private unnamed_addr constant [16 x i8] c"scgi_limit_rate\00", align 1, !dbg !2121
@.str.55 = private unnamed_addr constant [11 x i8] c"scgi_cache\00", align 1, !dbg !2123
@.str.56 = private unnamed_addr constant [15 x i8] c"scgi_cache_key\00", align 1, !dbg !2125
@.str.57 = private unnamed_addr constant [16 x i8] c"scgi_cache_path\00", align 1, !dbg !2127
@.str.58 = private unnamed_addr constant [18 x i8] c"scgi_cache_bypass\00", align 1, !dbg !2129
@.str.59 = private unnamed_addr constant [14 x i8] c"scgi_no_cache\00", align 1, !dbg !2131
@.str.60 = private unnamed_addr constant [17 x i8] c"scgi_cache_valid\00", align 1, !dbg !2133
@.str.61 = private unnamed_addr constant [20 x i8] c"scgi_cache_min_uses\00", align 1, !dbg !2135
@.str.62 = private unnamed_addr constant [28 x i8] c"scgi_cache_max_range_offset\00", align 1, !dbg !2137
@.str.63 = private unnamed_addr constant [21 x i8] c"scgi_cache_use_stale\00", align 1, !dbg !2142
@ngx_http_scgi_next_upstream_masks = internal global [12 x %struct.ngx_conf_bitmask_t] [%struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 5, ptr @.str.85 }, i64 2 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 7, ptr @.str.86 }, i64 4 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 14, ptr @.str.87 }, i64 8 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 14, ptr @.str.88 }, i64 16384 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.89 }, i64 16 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.90 }, i64 64 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.91 }, i64 256 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.92 }, i64 512 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.93 }, i64 1024 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 8, ptr @.str.94 }, i64 2048 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i64 3, ptr @.str.81 }, i64 2147483648 }, %struct.ngx_conf_bitmask_t zeroinitializer], align 16, !dbg !2221
@.str.64 = private unnamed_addr constant [19 x i8] c"scgi_cache_methods\00", align 1, !dbg !2144
@ngx_http_upstream_cache_method_mask = external global [0 x %struct.ngx_conf_bitmask_t], align 8
@.str.65 = private unnamed_addr constant [16 x i8] c"scgi_cache_lock\00", align 1, !dbg !2146
@.str.66 = private unnamed_addr constant [24 x i8] c"scgi_cache_lock_timeout\00", align 1, !dbg !2148
@.str.67 = private unnamed_addr constant [20 x i8] c"scgi_cache_lock_age\00", align 1, !dbg !2153
@.str.68 = private unnamed_addr constant [22 x i8] c"scgi_cache_revalidate\00", align 1, !dbg !2155
@.str.69 = private unnamed_addr constant [29 x i8] c"scgi_cache_background_update\00", align 1, !dbg !2157
@.str.70 = private unnamed_addr constant [15 x i8] c"scgi_temp_path\00", align 1, !dbg !2159
@.str.71 = private unnamed_addr constant [24 x i8] c"scgi_max_temp_file_size\00", align 1, !dbg !2161
@.str.72 = private unnamed_addr constant [26 x i8] c"scgi_temp_file_write_size\00", align 1, !dbg !2163
@.str.73 = private unnamed_addr constant [19 x i8] c"scgi_next_upstream\00", align 1, !dbg !2165
@.str.74 = private unnamed_addr constant [25 x i8] c"scgi_next_upstream_tries\00", align 1, !dbg !2167
@.str.75 = private unnamed_addr constant [27 x i8] c"scgi_next_upstream_timeout\00", align 1, !dbg !2169
@.str.76 = private unnamed_addr constant [11 x i8] c"scgi_param\00", align 1, !dbg !2174
@.str.77 = private unnamed_addr constant [17 x i8] c"scgi_pass_header\00", align 1, !dbg !2176
@.str.78 = private unnamed_addr constant [17 x i8] c"scgi_hide_header\00", align 1, !dbg !2178
@.str.79 = private unnamed_addr constant [20 x i8] c"scgi_ignore_headers\00", align 1, !dbg !2180
@ngx_http_upstream_ignore_headers_masks = external global [0 x %struct.ngx_conf_bitmask_t], align 8
@.str.80 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1, !dbg !2187
@.str.81 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !2189
@.str.82 = private unnamed_addr constant [34 x i8] c"is incompatible with \22scgi_cache\22\00", align 1, !dbg !2192
@.str.83 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !2194
@.str.84 = private unnamed_addr constant [34 x i8] c"is incompatible with \22scgi_store\22\00", align 1, !dbg !2196
@.str.85 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !2198
@.str.86 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1, !dbg !2200
@.str.87 = private unnamed_addr constant [15 x i8] c"invalid_header\00", align 1, !dbg !2202
@.str.88 = private unnamed_addr constant [15 x i8] c"non_idempotent\00", align 1, !dbg !2204
@.str.89 = private unnamed_addr constant [9 x i8] c"http_500\00", align 1, !dbg !2206
@.str.90 = private unnamed_addr constant [9 x i8] c"http_503\00", align 1, !dbg !2211
@.str.91 = private unnamed_addr constant [9 x i8] c"http_403\00", align 1, !dbg !2213
@.str.92 = private unnamed_addr constant [9 x i8] c"http_404\00", align 1, !dbg !2215
@.str.93 = private unnamed_addr constant [9 x i8] c"http_429\00", align 1, !dbg !2217
@.str.94 = private unnamed_addr constant [9 x i8] c"updating\00", align 1, !dbg !2219

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_create_main_conf(ptr noundef %cf) #0 !dbg !2261 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2263, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !2275
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2264, metadata !DIExpression()), !dbg !2276
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2277, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2278
  %1 = load ptr, ptr %pool, align 8, !dbg !2278, !tbaa !2279
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 40), !dbg !2282
  store ptr %call, ptr %conf, align 8, !dbg !2283, !tbaa !2270
  %2 = load ptr, ptr %conf, align 8, !dbg !2284, !tbaa !2270
  %cmp = icmp eq ptr %2, null, !dbg !2286
  br i1 %cmp, label %if.then, label %if.end, !dbg !2287

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !2290, !tbaa !2270
  %caches = getelementptr inbounds %struct.ngx_http_scgi_main_conf_t, ptr %3, i32 0, i32 0, !dbg !2292
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2293, !tbaa !2270
  %pool1 = getelementptr inbounds %struct.ngx_conf_s, ptr %4, i32 0, i32 3, !dbg !2294
  %5 = load ptr, ptr %pool1, align 8, !dbg !2294, !tbaa !2279
  %call2 = call i64 @ngx_array_init(ptr noundef %caches, ptr noundef %5, i64 noundef 4, i64 noundef 8), !dbg !2295
  %cmp3 = icmp ne i64 %call2, 0, !dbg !2296
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2297

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2298

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %conf, align 8, !dbg !2300, !tbaa !2270
  store ptr %6, ptr %retval, align 8, !dbg !2301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2301

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !2302
  %7 = load ptr, ptr %retval, align 8, !dbg !2302
  ret ptr %7, !dbg !2302
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_create_loc_conf(ptr noundef %cf) #0 !dbg !2303 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2305, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !2327
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2306, metadata !DIExpression()), !dbg !2328
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2329, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2330
  %1 = load ptr, ptr %pool, align 8, !dbg !2330, !tbaa !2279
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 648), !dbg !2331
  store ptr %call, ptr %conf, align 8, !dbg !2332, !tbaa !2270
  %2 = load ptr, ptr %conf, align 8, !dbg !2333, !tbaa !2270
  %cmp = icmp eq ptr %2, null, !dbg !2335
  br i1 %cmp, label %if.then, label %if.end, !dbg !2336

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2337

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !2339, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %3, i32 0, i32 0, !dbg !2340
  %store = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream, i32 0, i32 51, !dbg !2341
  %bf.load = load i8, ptr %store, align 8, !dbg !2342
  %bf.clear = and i8 %bf.load, -13, !dbg !2342
  %bf.set = or i8 %bf.clear, 12, !dbg !2342
  store i8 %bf.set, ptr %store, align 8, !dbg !2342
  %4 = load ptr, ptr %conf, align 8, !dbg !2343, !tbaa !2270
  %upstream1 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !2344
  %store_access = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream1, i32 0, i32 17, !dbg !2345
  store i64 -1, ptr %store_access, align 8, !dbg !2346, !tbaa !2347
  %5 = load ptr, ptr %conf, align 8, !dbg !2356, !tbaa !2270
  %upstream2 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %5, i32 0, i32 0, !dbg !2357
  %next_upstream_tries = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream2, i32 0, i32 18, !dbg !2358
  store i64 -1, ptr %next_upstream_tries, align 8, !dbg !2359, !tbaa !2360
  %6 = load ptr, ptr %conf, align 8, !dbg !2361, !tbaa !2270
  %upstream3 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !2362
  %buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream3, i32 0, i32 19, !dbg !2363
  store i64 -1, ptr %buffering, align 8, !dbg !2364, !tbaa !2365
  %7 = load ptr, ptr %conf, align 8, !dbg !2366, !tbaa !2270
  %upstream4 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %7, i32 0, i32 0, !dbg !2367
  %request_buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream4, i32 0, i32 20, !dbg !2368
  store i64 -1, ptr %request_buffering, align 8, !dbg !2369, !tbaa !2370
  %8 = load ptr, ptr %conf, align 8, !dbg !2371, !tbaa !2270
  %upstream5 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !2372
  %ignore_client_abort = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream5, i32 0, i32 23, !dbg !2373
  store i64 -1, ptr %ignore_client_abort, align 8, !dbg !2374, !tbaa !2375
  %9 = load ptr, ptr %conf, align 8, !dbg !2376, !tbaa !2270
  %upstream6 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %9, i32 0, i32 0, !dbg !2377
  %force_ranges = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream6, i32 0, i32 26, !dbg !2378
  store i64 -1, ptr %force_ranges, align 8, !dbg !2379, !tbaa !2380
  %10 = load ptr, ptr %conf, align 8, !dbg !2381, !tbaa !2270
  %upstream7 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %10, i32 0, i32 0, !dbg !2382
  %local = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream7, i32 0, i32 31, !dbg !2383
  store ptr inttoptr (i64 -1 to ptr), ptr %local, align 8, !dbg !2384, !tbaa !2385
  %11 = load ptr, ptr %conf, align 8, !dbg !2386, !tbaa !2270
  %upstream8 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %11, i32 0, i32 0, !dbg !2387
  %socket_keepalive = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream8, i32 0, i32 32, !dbg !2388
  store i64 -1, ptr %socket_keepalive, align 8, !dbg !2389, !tbaa !2390
  %12 = load ptr, ptr %conf, align 8, !dbg !2391, !tbaa !2270
  %upstream9 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %12, i32 0, i32 0, !dbg !2392
  %connect_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream9, i32 0, i32 1, !dbg !2393
  store i64 -1, ptr %connect_timeout, align 8, !dbg !2394, !tbaa !2395
  %13 = load ptr, ptr %conf, align 8, !dbg !2396, !tbaa !2270
  %upstream10 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %13, i32 0, i32 0, !dbg !2397
  %send_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream10, i32 0, i32 2, !dbg !2398
  store i64 -1, ptr %send_timeout, align 8, !dbg !2399, !tbaa !2400
  %14 = load ptr, ptr %conf, align 8, !dbg !2401, !tbaa !2270
  %upstream11 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %14, i32 0, i32 0, !dbg !2402
  %read_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream11, i32 0, i32 3, !dbg !2403
  store i64 -1, ptr %read_timeout, align 8, !dbg !2404, !tbaa !2405
  %15 = load ptr, ptr %conf, align 8, !dbg !2406, !tbaa !2270
  %upstream12 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !2407
  %next_upstream_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream12, i32 0, i32 4, !dbg !2408
  store i64 -1, ptr %next_upstream_timeout, align 8, !dbg !2409, !tbaa !2410
  %16 = load ptr, ptr %conf, align 8, !dbg !2411, !tbaa !2270
  %upstream13 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %16, i32 0, i32 0, !dbg !2412
  %send_lowat = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream13, i32 0, i32 5, !dbg !2413
  store i64 -1, ptr %send_lowat, align 8, !dbg !2414, !tbaa !2415
  %17 = load ptr, ptr %conf, align 8, !dbg !2416, !tbaa !2270
  %upstream14 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %17, i32 0, i32 0, !dbg !2417
  %buffer_size = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream14, i32 0, i32 6, !dbg !2418
  store i64 -1, ptr %buffer_size, align 8, !dbg !2419, !tbaa !2420
  %18 = load ptr, ptr %conf, align 8, !dbg !2421, !tbaa !2270
  %upstream15 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %18, i32 0, i32 0, !dbg !2422
  %limit_rate = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream15, i32 0, i32 7, !dbg !2423
  store i64 -1, ptr %limit_rate, align 8, !dbg !2424, !tbaa !2425
  %19 = load ptr, ptr %conf, align 8, !dbg !2426, !tbaa !2270
  %upstream16 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %19, i32 0, i32 0, !dbg !2427
  %busy_buffers_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream16, i32 0, i32 11, !dbg !2428
  store i64 -1, ptr %busy_buffers_size_conf, align 8, !dbg !2429, !tbaa !2430
  %20 = load ptr, ptr %conf, align 8, !dbg !2431, !tbaa !2270
  %upstream17 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %20, i32 0, i32 0, !dbg !2432
  %max_temp_file_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream17, i32 0, i32 12, !dbg !2433
  store i64 -1, ptr %max_temp_file_size_conf, align 8, !dbg !2434, !tbaa !2435
  %21 = load ptr, ptr %conf, align 8, !dbg !2436, !tbaa !2270
  %upstream18 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %21, i32 0, i32 0, !dbg !2437
  %temp_file_write_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream18, i32 0, i32 13, !dbg !2438
  store i64 -1, ptr %temp_file_write_size_conf, align 8, !dbg !2439, !tbaa !2440
  %22 = load ptr, ptr %conf, align 8, !dbg !2441, !tbaa !2270
  %upstream19 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %22, i32 0, i32 0, !dbg !2442
  %pass_request_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream19, i32 0, i32 21, !dbg !2443
  store i64 -1, ptr %pass_request_headers, align 8, !dbg !2444, !tbaa !2445
  %23 = load ptr, ptr %conf, align 8, !dbg !2446, !tbaa !2270
  %upstream20 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %23, i32 0, i32 0, !dbg !2447
  %pass_request_body = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream20, i32 0, i32 22, !dbg !2448
  store i64 -1, ptr %pass_request_body, align 8, !dbg !2449, !tbaa !2450
  %24 = load ptr, ptr %conf, align 8, !dbg !2451, !tbaa !2270
  %upstream21 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %24, i32 0, i32 0, !dbg !2452
  %cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream21, i32 0, i32 51, !dbg !2453
  %bf.load22 = load i8, ptr %cache, align 8, !dbg !2454
  %bf.clear23 = and i8 %bf.load22, -4, !dbg !2454
  %bf.set24 = or i8 %bf.clear23, 3, !dbg !2454
  store i8 %bf.set24, ptr %cache, align 8, !dbg !2454
  %25 = load ptr, ptr %conf, align 8, !dbg !2455, !tbaa !2270
  %upstream25 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %25, i32 0, i32 0, !dbg !2456
  %cache_min_uses = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream25, i32 0, i32 35, !dbg !2457
  store i64 -1, ptr %cache_min_uses, align 8, !dbg !2458, !tbaa !2459
  %26 = load ptr, ptr %conf, align 8, !dbg !2460, !tbaa !2270
  %upstream26 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %26, i32 0, i32 0, !dbg !2461
  %cache_max_range_offset = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream26, i32 0, i32 38, !dbg !2462
  store i64 -1, ptr %cache_max_range_offset, align 8, !dbg !2463, !tbaa !2464
  %27 = load ptr, ptr %conf, align 8, !dbg !2465, !tbaa !2270
  %upstream27 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %27, i32 0, i32 0, !dbg !2466
  %cache_bypass = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream27, i32 0, i32 46, !dbg !2467
  store ptr inttoptr (i64 -1 to ptr), ptr %cache_bypass, align 8, !dbg !2468, !tbaa !2469
  %28 = load ptr, ptr %conf, align 8, !dbg !2470, !tbaa !2270
  %upstream28 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %28, i32 0, i32 0, !dbg !2471
  %no_cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream28, i32 0, i32 48, !dbg !2472
  store ptr inttoptr (i64 -1 to ptr), ptr %no_cache, align 8, !dbg !2473, !tbaa !2474
  %29 = load ptr, ptr %conf, align 8, !dbg !2475, !tbaa !2270
  %upstream29 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %29, i32 0, i32 0, !dbg !2476
  %cache_valid = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream29, i32 0, i32 45, !dbg !2477
  store ptr inttoptr (i64 -1 to ptr), ptr %cache_valid, align 8, !dbg !2478, !tbaa !2479
  %30 = load ptr, ptr %conf, align 8, !dbg !2480, !tbaa !2270
  %upstream30 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %30, i32 0, i32 0, !dbg !2481
  %cache_lock = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream30, i32 0, i32 39, !dbg !2482
  store i64 -1, ptr %cache_lock, align 8, !dbg !2483, !tbaa !2484
  %31 = load ptr, ptr %conf, align 8, !dbg !2485, !tbaa !2270
  %upstream31 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %31, i32 0, i32 0, !dbg !2486
  %cache_lock_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream31, i32 0, i32 40, !dbg !2487
  store i64 -1, ptr %cache_lock_timeout, align 8, !dbg !2488, !tbaa !2489
  %32 = load ptr, ptr %conf, align 8, !dbg !2490, !tbaa !2270
  %upstream32 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %32, i32 0, i32 0, !dbg !2491
  %cache_lock_age = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream32, i32 0, i32 41, !dbg !2492
  store i64 -1, ptr %cache_lock_age, align 8, !dbg !2493, !tbaa !2494
  %33 = load ptr, ptr %conf, align 8, !dbg !2495, !tbaa !2270
  %upstream33 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %33, i32 0, i32 0, !dbg !2496
  %cache_revalidate = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream33, i32 0, i32 42, !dbg !2497
  store i64 -1, ptr %cache_revalidate, align 8, !dbg !2498, !tbaa !2499
  %34 = load ptr, ptr %conf, align 8, !dbg !2500, !tbaa !2270
  %upstream34 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %34, i32 0, i32 0, !dbg !2501
  %cache_background_update = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream34, i32 0, i32 44, !dbg !2502
  store i64 -1, ptr %cache_background_update, align 8, !dbg !2503, !tbaa !2504
  %35 = load ptr, ptr %conf, align 8, !dbg !2505, !tbaa !2270
  %upstream35 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %35, i32 0, i32 0, !dbg !2506
  %hide_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream35, i32 0, i32 29, !dbg !2507
  store ptr inttoptr (i64 -1 to ptr), ptr %hide_headers, align 8, !dbg !2508, !tbaa !2509
  %36 = load ptr, ptr %conf, align 8, !dbg !2510, !tbaa !2270
  %upstream36 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %36, i32 0, i32 0, !dbg !2511
  %pass_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream36, i32 0, i32 30, !dbg !2512
  store ptr inttoptr (i64 -1 to ptr), ptr %pass_headers, align 8, !dbg !2513, !tbaa !2514
  %37 = load ptr, ptr %conf, align 8, !dbg !2515, !tbaa !2270
  %upstream37 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %37, i32 0, i32 0, !dbg !2516
  %intercept_errors = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream37, i32 0, i32 24, !dbg !2517
  store i64 -1, ptr %intercept_errors, align 8, !dbg !2518, !tbaa !2519
  %38 = load ptr, ptr %conf, align 8, !dbg !2520, !tbaa !2270
  %upstream38 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %38, i32 0, i32 0, !dbg !2521
  %cyclic_temp_file = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream38, i32 0, i32 25, !dbg !2522
  store i64 0, ptr %cyclic_temp_file, align 8, !dbg !2523, !tbaa !2524
  %39 = load ptr, ptr %conf, align 8, !dbg !2525, !tbaa !2270
  %upstream39 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %39, i32 0, i32 0, !dbg !2526
  %change_buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream39, i32 0, i32 51, !dbg !2527
  %bf.load40 = load i8, ptr %change_buffering, align 8, !dbg !2528
  %bf.clear41 = and i8 %bf.load40, -33, !dbg !2528
  %bf.set42 = or i8 %bf.clear41, 32, !dbg !2528
  store i8 %bf.set42, ptr %change_buffering, align 8, !dbg !2528
  %40 = load ptr, ptr %conf, align 8, !dbg !2529, !tbaa !2270
  %upstream43 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %40, i32 0, i32 0, !dbg !2529
  %module = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream43, i32 0, i32 57, !dbg !2529
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %module, i32 0, i32 0, !dbg !2529
  store i64 4, ptr %len, align 8, !dbg !2529, !tbaa !2530
  %41 = load ptr, ptr %conf, align 8, !dbg !2529, !tbaa !2270
  %upstream44 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %41, i32 0, i32 0, !dbg !2529
  %module45 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream44, i32 0, i32 57, !dbg !2529
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %module45, i32 0, i32 1, !dbg !2529
  store ptr @.str.1, ptr %data, align 8, !dbg !2529, !tbaa !2531
  %42 = load ptr, ptr %conf, align 8, !dbg !2532, !tbaa !2270
  store ptr %42, ptr %retval, align 8, !dbg !2533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2533

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !2534
  %43 = load ptr, ptr %retval, align 8, !dbg !2534
  ret ptr %43, !dbg !2534
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_merge_loc_conf(ptr noundef %cf, ptr noundef %parent, ptr noundef %child) #0 !dbg !2535 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %size = alloca i64, align 8
  %rc = alloca i64, align 8
  %hash = alloca %struct.ngx_hash_init_t, align 8
  %clcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %shm_zone = alloca ptr, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2537, metadata !DIExpression()), !dbg !2564
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2538, metadata !DIExpression()), !dbg !2565
  store ptr %child, ptr %child.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !2539, metadata !DIExpression()), !dbg !2566
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !2567
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !2540, metadata !DIExpression()), !dbg !2568
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2569, !tbaa !2270
  store ptr %0, ptr %prev, align 8, !dbg !2568, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !2570
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2541, metadata !DIExpression()), !dbg !2571
  %1 = load ptr, ptr %child.addr, align 8, !dbg !2572, !tbaa !2270
  store ptr %1, ptr %conf, align 8, !dbg !2571, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !2573
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !2542, metadata !DIExpression()), !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !2575
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2543, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 56, ptr %hash) #8, !dbg !2577
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !2544, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 8, ptr %clcf) #8, !dbg !2579
  tail call void @llvm.dbg.declare(metadata ptr %clcf, metadata !2560, metadata !DIExpression()), !dbg !2580
  %2 = load ptr, ptr %conf, align 8, !dbg !2581, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %2, i32 0, i32 0, !dbg !2583
  %store = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream, i32 0, i32 51, !dbg !2584
  %bf.load = load i8, ptr %store, align 8, !dbg !2584
  %bf.shl = shl i8 %bf.load, 4, !dbg !2584
  %bf.ashr = ashr i8 %bf.shl, 6, !dbg !2584
  %bf.cast = sext i8 %bf.ashr to i32, !dbg !2584
  %cmp = icmp sgt i32 %bf.cast, 0, !dbg !2585
  br i1 %cmp, label %if.then, label %if.end, !dbg !2586

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !2587, !tbaa !2270
  %upstream1 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %3, i32 0, i32 0, !dbg !2589
  %cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream1, i32 0, i32 51, !dbg !2590
  %bf.load2 = load i8, ptr %cache, align 8, !dbg !2591
  %bf.clear = and i8 %bf.load2, -4, !dbg !2591
  %bf.set = or i8 %bf.clear, 0, !dbg !2591
  store i8 %bf.set, ptr %cache, align 8, !dbg !2591
  br label %if.end, !dbg !2592

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %conf, align 8, !dbg !2593, !tbaa !2270
  %upstream3 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !2595
  %cache4 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream3, i32 0, i32 51, !dbg !2596
  %bf.load5 = load i8, ptr %cache4, align 8, !dbg !2596
  %bf.shl6 = shl i8 %bf.load5, 6, !dbg !2596
  %bf.ashr7 = ashr i8 %bf.shl6, 6, !dbg !2596
  %bf.cast8 = sext i8 %bf.ashr7 to i32, !dbg !2596
  %cmp9 = icmp sgt i32 %bf.cast8, 0, !dbg !2597
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !2598

if.then10:                                        ; preds = %if.end
  %5 = load ptr, ptr %conf, align 8, !dbg !2599, !tbaa !2270
  %upstream11 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %5, i32 0, i32 0, !dbg !2601
  %store12 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream11, i32 0, i32 51, !dbg !2602
  %bf.load13 = load i8, ptr %store12, align 8, !dbg !2603
  %bf.clear14 = and i8 %bf.load13, -13, !dbg !2603
  %bf.set15 = or i8 %bf.clear14, 0, !dbg !2603
  store i8 %bf.set15, ptr %store12, align 8, !dbg !2603
  br label %if.end16, !dbg !2604

if.end16:                                         ; preds = %if.then10, %if.end
  %6 = load ptr, ptr %conf, align 8, !dbg !2605, !tbaa !2270
  %upstream17 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !2607
  %store18 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream17, i32 0, i32 51, !dbg !2608
  %bf.load19 = load i8, ptr %store18, align 8, !dbg !2608
  %bf.shl20 = shl i8 %bf.load19, 4, !dbg !2608
  %bf.ashr21 = ashr i8 %bf.shl20, 6, !dbg !2608
  %bf.cast22 = sext i8 %bf.ashr21 to i32, !dbg !2608
  %cmp23 = icmp eq i32 %bf.cast22, -1, !dbg !2609
  br i1 %cmp23, label %if.then24, label %if.end59, !dbg !2610

if.then24:                                        ; preds = %if.end16
  %7 = load ptr, ptr %conf, align 8, !dbg !2611, !tbaa !2270
  %upstream25 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %7, i32 0, i32 0, !dbg !2611
  %store26 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream25, i32 0, i32 51, !dbg !2611
  %bf.load27 = load i8, ptr %store26, align 8, !dbg !2611
  %bf.shl28 = shl i8 %bf.load27, 4, !dbg !2611
  %bf.ashr29 = ashr i8 %bf.shl28, 6, !dbg !2611
  %bf.cast30 = sext i8 %bf.ashr29 to i32, !dbg !2611
  %cmp31 = icmp eq i32 %bf.cast30, -1, !dbg !2611
  br i1 %cmp31, label %if.then32, label %if.end52, !dbg !2614

if.then32:                                        ; preds = %if.then24
  %8 = load ptr, ptr %prev, align 8, !dbg !2615, !tbaa !2270
  %upstream33 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !2615
  %store34 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream33, i32 0, i32 51, !dbg !2615
  %bf.load35 = load i8, ptr %store34, align 8, !dbg !2615
  %bf.shl36 = shl i8 %bf.load35, 4, !dbg !2615
  %bf.ashr37 = ashr i8 %bf.shl36, 6, !dbg !2615
  %bf.cast38 = sext i8 %bf.ashr37 to i32, !dbg !2615
  %cmp39 = icmp eq i32 %bf.cast38, -1, !dbg !2615
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !2615

cond.true:                                        ; preds = %if.then32
  br label %cond.end, !dbg !2615

cond.false:                                       ; preds = %if.then32
  %9 = load ptr, ptr %prev, align 8, !dbg !2615, !tbaa !2270
  %upstream40 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %9, i32 0, i32 0, !dbg !2615
  %store41 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream40, i32 0, i32 51, !dbg !2615
  %bf.load42 = load i8, ptr %store41, align 8, !dbg !2615
  %bf.shl43 = shl i8 %bf.load42, 4, !dbg !2615
  %bf.ashr44 = ashr i8 %bf.shl43, 6, !dbg !2615
  %bf.cast45 = sext i8 %bf.ashr44 to i32, !dbg !2615
  br label %cond.end, !dbg !2615

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %bf.cast45, %cond.false ], !dbg !2615
  %10 = load ptr, ptr %conf, align 8, !dbg !2615, !tbaa !2270
  %upstream46 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %10, i32 0, i32 0, !dbg !2615
  %store47 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream46, i32 0, i32 51, !dbg !2615
  %11 = trunc i32 %cond to i8, !dbg !2615
  %bf.load48 = load i8, ptr %store47, align 8, !dbg !2615
  %bf.value = and i8 %11, 3, !dbg !2615
  %bf.shl49 = shl i8 %bf.value, 2, !dbg !2615
  %bf.clear50 = and i8 %bf.load48, -13, !dbg !2615
  %bf.set51 = or i8 %bf.clear50, %bf.shl49, !dbg !2615
  store i8 %bf.set51, ptr %store47, align 8, !dbg !2615
  %bf.result.shl = shl i8 %bf.value, 6, !dbg !2615
  %bf.result.ashr = ashr i8 %bf.result.shl, 6, !dbg !2615
  %bf.result.cast = sext i8 %bf.result.ashr to i32, !dbg !2615
  br label %if.end52, !dbg !2615

if.end52:                                         ; preds = %cond.end, %if.then24
  %12 = load ptr, ptr %prev, align 8, !dbg !2617, !tbaa !2270
  %upstream53 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %12, i32 0, i32 0, !dbg !2618
  %store_lengths = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream53, i32 0, i32 49, !dbg !2619
  %13 = load ptr, ptr %store_lengths, align 8, !dbg !2619, !tbaa !2620
  %14 = load ptr, ptr %conf, align 8, !dbg !2621, !tbaa !2270
  %upstream54 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %14, i32 0, i32 0, !dbg !2622
  %store_lengths55 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream54, i32 0, i32 49, !dbg !2623
  store ptr %13, ptr %store_lengths55, align 8, !dbg !2624, !tbaa !2620
  %15 = load ptr, ptr %prev, align 8, !dbg !2625, !tbaa !2270
  %upstream56 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !2626
  %store_values = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream56, i32 0, i32 50, !dbg !2627
  %16 = load ptr, ptr %store_values, align 8, !dbg !2627, !tbaa !2628
  %17 = load ptr, ptr %conf, align 8, !dbg !2629, !tbaa !2270
  %upstream57 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %17, i32 0, i32 0, !dbg !2630
  %store_values58 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream57, i32 0, i32 50, !dbg !2631
  store ptr %16, ptr %store_values58, align 8, !dbg !2632, !tbaa !2628
  br label %if.end59, !dbg !2633

if.end59:                                         ; preds = %if.end52, %if.end16
  %18 = load ptr, ptr %conf, align 8, !dbg !2634, !tbaa !2270
  %upstream60 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %18, i32 0, i32 0, !dbg !2634
  %store_access = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream60, i32 0, i32 17, !dbg !2634
  %19 = load i64, ptr %store_access, align 8, !dbg !2634, !tbaa !2347
  %cmp61 = icmp eq i64 %19, -1, !dbg !2634
  br i1 %cmp61, label %if.then62, label %if.end74, !dbg !2636

if.then62:                                        ; preds = %if.end59
  %20 = load ptr, ptr %prev, align 8, !dbg !2637, !tbaa !2270
  %upstream63 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %20, i32 0, i32 0, !dbg !2637
  %store_access64 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream63, i32 0, i32 17, !dbg !2637
  %21 = load i64, ptr %store_access64, align 8, !dbg !2637, !tbaa !2347
  %cmp65 = icmp eq i64 %21, -1, !dbg !2637
  br i1 %cmp65, label %cond.true66, label %cond.false67, !dbg !2637

cond.true66:                                      ; preds = %if.then62
  br label %cond.end70, !dbg !2637

cond.false67:                                     ; preds = %if.then62
  %22 = load ptr, ptr %prev, align 8, !dbg !2637, !tbaa !2270
  %upstream68 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %22, i32 0, i32 0, !dbg !2637
  %store_access69 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream68, i32 0, i32 17, !dbg !2637
  %23 = load i64, ptr %store_access69, align 8, !dbg !2637, !tbaa !2347
  br label %cond.end70, !dbg !2637

cond.end70:                                       ; preds = %cond.false67, %cond.true66
  %cond71 = phi i64 [ 384, %cond.true66 ], [ %23, %cond.false67 ], !dbg !2637
  %24 = load ptr, ptr %conf, align 8, !dbg !2637, !tbaa !2270
  %upstream72 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %24, i32 0, i32 0, !dbg !2637
  %store_access73 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream72, i32 0, i32 17, !dbg !2637
  store i64 %cond71, ptr %store_access73, align 8, !dbg !2637, !tbaa !2347
  br label %if.end74, !dbg !2637

if.end74:                                         ; preds = %cond.end70, %if.end59
  %25 = load ptr, ptr %conf, align 8, !dbg !2639, !tbaa !2270
  %upstream75 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %25, i32 0, i32 0, !dbg !2639
  %next_upstream_tries = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream75, i32 0, i32 18, !dbg !2639
  %26 = load i64, ptr %next_upstream_tries, align 8, !dbg !2639, !tbaa !2360
  %cmp76 = icmp eq i64 %26, -1, !dbg !2639
  br i1 %cmp76, label %if.then77, label %if.end89, !dbg !2641

if.then77:                                        ; preds = %if.end74
  %27 = load ptr, ptr %prev, align 8, !dbg !2642, !tbaa !2270
  %upstream78 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %27, i32 0, i32 0, !dbg !2642
  %next_upstream_tries79 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream78, i32 0, i32 18, !dbg !2642
  %28 = load i64, ptr %next_upstream_tries79, align 8, !dbg !2642, !tbaa !2360
  %cmp80 = icmp eq i64 %28, -1, !dbg !2642
  br i1 %cmp80, label %cond.true81, label %cond.false82, !dbg !2642

cond.true81:                                      ; preds = %if.then77
  br label %cond.end85, !dbg !2642

cond.false82:                                     ; preds = %if.then77
  %29 = load ptr, ptr %prev, align 8, !dbg !2642, !tbaa !2270
  %upstream83 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %29, i32 0, i32 0, !dbg !2642
  %next_upstream_tries84 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream83, i32 0, i32 18, !dbg !2642
  %30 = load i64, ptr %next_upstream_tries84, align 8, !dbg !2642, !tbaa !2360
  br label %cond.end85, !dbg !2642

cond.end85:                                       ; preds = %cond.false82, %cond.true81
  %cond86 = phi i64 [ 0, %cond.true81 ], [ %30, %cond.false82 ], !dbg !2642
  %31 = load ptr, ptr %conf, align 8, !dbg !2642, !tbaa !2270
  %upstream87 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %31, i32 0, i32 0, !dbg !2642
  %next_upstream_tries88 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream87, i32 0, i32 18, !dbg !2642
  store i64 %cond86, ptr %next_upstream_tries88, align 8, !dbg !2642, !tbaa !2360
  br label %if.end89, !dbg !2642

if.end89:                                         ; preds = %cond.end85, %if.end74
  %32 = load ptr, ptr %conf, align 8, !dbg !2644, !tbaa !2270
  %upstream90 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %32, i32 0, i32 0, !dbg !2644
  %buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream90, i32 0, i32 19, !dbg !2644
  %33 = load i64, ptr %buffering, align 8, !dbg !2644, !tbaa !2365
  %cmp91 = icmp eq i64 %33, -1, !dbg !2644
  br i1 %cmp91, label %if.then92, label %if.end104, !dbg !2646

if.then92:                                        ; preds = %if.end89
  %34 = load ptr, ptr %prev, align 8, !dbg !2647, !tbaa !2270
  %upstream93 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %34, i32 0, i32 0, !dbg !2647
  %buffering94 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream93, i32 0, i32 19, !dbg !2647
  %35 = load i64, ptr %buffering94, align 8, !dbg !2647, !tbaa !2365
  %cmp95 = icmp eq i64 %35, -1, !dbg !2647
  br i1 %cmp95, label %cond.true96, label %cond.false97, !dbg !2647

cond.true96:                                      ; preds = %if.then92
  br label %cond.end100, !dbg !2647

cond.false97:                                     ; preds = %if.then92
  %36 = load ptr, ptr %prev, align 8, !dbg !2647, !tbaa !2270
  %upstream98 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %36, i32 0, i32 0, !dbg !2647
  %buffering99 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream98, i32 0, i32 19, !dbg !2647
  %37 = load i64, ptr %buffering99, align 8, !dbg !2647, !tbaa !2365
  br label %cond.end100, !dbg !2647

cond.end100:                                      ; preds = %cond.false97, %cond.true96
  %cond101 = phi i64 [ 1, %cond.true96 ], [ %37, %cond.false97 ], !dbg !2647
  %38 = load ptr, ptr %conf, align 8, !dbg !2647, !tbaa !2270
  %upstream102 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %38, i32 0, i32 0, !dbg !2647
  %buffering103 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream102, i32 0, i32 19, !dbg !2647
  store i64 %cond101, ptr %buffering103, align 8, !dbg !2647, !tbaa !2365
  br label %if.end104, !dbg !2647

if.end104:                                        ; preds = %cond.end100, %if.end89
  %39 = load ptr, ptr %conf, align 8, !dbg !2649, !tbaa !2270
  %upstream105 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %39, i32 0, i32 0, !dbg !2649
  %request_buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream105, i32 0, i32 20, !dbg !2649
  %40 = load i64, ptr %request_buffering, align 8, !dbg !2649, !tbaa !2370
  %cmp106 = icmp eq i64 %40, -1, !dbg !2649
  br i1 %cmp106, label %if.then107, label %if.end119, !dbg !2651

if.then107:                                       ; preds = %if.end104
  %41 = load ptr, ptr %prev, align 8, !dbg !2652, !tbaa !2270
  %upstream108 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %41, i32 0, i32 0, !dbg !2652
  %request_buffering109 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream108, i32 0, i32 20, !dbg !2652
  %42 = load i64, ptr %request_buffering109, align 8, !dbg !2652, !tbaa !2370
  %cmp110 = icmp eq i64 %42, -1, !dbg !2652
  br i1 %cmp110, label %cond.true111, label %cond.false112, !dbg !2652

cond.true111:                                     ; preds = %if.then107
  br label %cond.end115, !dbg !2652

cond.false112:                                    ; preds = %if.then107
  %43 = load ptr, ptr %prev, align 8, !dbg !2652, !tbaa !2270
  %upstream113 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %43, i32 0, i32 0, !dbg !2652
  %request_buffering114 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream113, i32 0, i32 20, !dbg !2652
  %44 = load i64, ptr %request_buffering114, align 8, !dbg !2652, !tbaa !2370
  br label %cond.end115, !dbg !2652

cond.end115:                                      ; preds = %cond.false112, %cond.true111
  %cond116 = phi i64 [ 1, %cond.true111 ], [ %44, %cond.false112 ], !dbg !2652
  %45 = load ptr, ptr %conf, align 8, !dbg !2652, !tbaa !2270
  %upstream117 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %45, i32 0, i32 0, !dbg !2652
  %request_buffering118 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream117, i32 0, i32 20, !dbg !2652
  store i64 %cond116, ptr %request_buffering118, align 8, !dbg !2652, !tbaa !2370
  br label %if.end119, !dbg !2652

if.end119:                                        ; preds = %cond.end115, %if.end104
  %46 = load ptr, ptr %conf, align 8, !dbg !2654, !tbaa !2270
  %upstream120 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %46, i32 0, i32 0, !dbg !2654
  %ignore_client_abort = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream120, i32 0, i32 23, !dbg !2654
  %47 = load i64, ptr %ignore_client_abort, align 8, !dbg !2654, !tbaa !2375
  %cmp121 = icmp eq i64 %47, -1, !dbg !2654
  br i1 %cmp121, label %if.then122, label %if.end134, !dbg !2656

if.then122:                                       ; preds = %if.end119
  %48 = load ptr, ptr %prev, align 8, !dbg !2657, !tbaa !2270
  %upstream123 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %48, i32 0, i32 0, !dbg !2657
  %ignore_client_abort124 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream123, i32 0, i32 23, !dbg !2657
  %49 = load i64, ptr %ignore_client_abort124, align 8, !dbg !2657, !tbaa !2375
  %cmp125 = icmp eq i64 %49, -1, !dbg !2657
  br i1 %cmp125, label %cond.true126, label %cond.false127, !dbg !2657

cond.true126:                                     ; preds = %if.then122
  br label %cond.end130, !dbg !2657

cond.false127:                                    ; preds = %if.then122
  %50 = load ptr, ptr %prev, align 8, !dbg !2657, !tbaa !2270
  %upstream128 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %50, i32 0, i32 0, !dbg !2657
  %ignore_client_abort129 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream128, i32 0, i32 23, !dbg !2657
  %51 = load i64, ptr %ignore_client_abort129, align 8, !dbg !2657, !tbaa !2375
  br label %cond.end130, !dbg !2657

cond.end130:                                      ; preds = %cond.false127, %cond.true126
  %cond131 = phi i64 [ 0, %cond.true126 ], [ %51, %cond.false127 ], !dbg !2657
  %52 = load ptr, ptr %conf, align 8, !dbg !2657, !tbaa !2270
  %upstream132 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %52, i32 0, i32 0, !dbg !2657
  %ignore_client_abort133 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream132, i32 0, i32 23, !dbg !2657
  store i64 %cond131, ptr %ignore_client_abort133, align 8, !dbg !2657, !tbaa !2375
  br label %if.end134, !dbg !2657

if.end134:                                        ; preds = %cond.end130, %if.end119
  %53 = load ptr, ptr %conf, align 8, !dbg !2659, !tbaa !2270
  %upstream135 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %53, i32 0, i32 0, !dbg !2659
  %force_ranges = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream135, i32 0, i32 26, !dbg !2659
  %54 = load i64, ptr %force_ranges, align 8, !dbg !2659, !tbaa !2380
  %cmp136 = icmp eq i64 %54, -1, !dbg !2659
  br i1 %cmp136, label %if.then137, label %if.end149, !dbg !2661

if.then137:                                       ; preds = %if.end134
  %55 = load ptr, ptr %prev, align 8, !dbg !2662, !tbaa !2270
  %upstream138 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %55, i32 0, i32 0, !dbg !2662
  %force_ranges139 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream138, i32 0, i32 26, !dbg !2662
  %56 = load i64, ptr %force_ranges139, align 8, !dbg !2662, !tbaa !2380
  %cmp140 = icmp eq i64 %56, -1, !dbg !2662
  br i1 %cmp140, label %cond.true141, label %cond.false142, !dbg !2662

cond.true141:                                     ; preds = %if.then137
  br label %cond.end145, !dbg !2662

cond.false142:                                    ; preds = %if.then137
  %57 = load ptr, ptr %prev, align 8, !dbg !2662, !tbaa !2270
  %upstream143 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %57, i32 0, i32 0, !dbg !2662
  %force_ranges144 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream143, i32 0, i32 26, !dbg !2662
  %58 = load i64, ptr %force_ranges144, align 8, !dbg !2662, !tbaa !2380
  br label %cond.end145, !dbg !2662

cond.end145:                                      ; preds = %cond.false142, %cond.true141
  %cond146 = phi i64 [ 0, %cond.true141 ], [ %58, %cond.false142 ], !dbg !2662
  %59 = load ptr, ptr %conf, align 8, !dbg !2662, !tbaa !2270
  %upstream147 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %59, i32 0, i32 0, !dbg !2662
  %force_ranges148 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream147, i32 0, i32 26, !dbg !2662
  store i64 %cond146, ptr %force_ranges148, align 8, !dbg !2662, !tbaa !2380
  br label %if.end149, !dbg !2662

if.end149:                                        ; preds = %cond.end145, %if.end134
  %60 = load ptr, ptr %conf, align 8, !dbg !2664, !tbaa !2270
  %upstream150 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %60, i32 0, i32 0, !dbg !2664
  %local = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream150, i32 0, i32 31, !dbg !2664
  %61 = load ptr, ptr %local, align 8, !dbg !2664, !tbaa !2385
  %cmp151 = icmp eq ptr %61, inttoptr (i64 -1 to ptr), !dbg !2664
  br i1 %cmp151, label %if.then152, label %if.end164, !dbg !2666

if.then152:                                       ; preds = %if.end149
  %62 = load ptr, ptr %prev, align 8, !dbg !2667, !tbaa !2270
  %upstream153 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %62, i32 0, i32 0, !dbg !2667
  %local154 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream153, i32 0, i32 31, !dbg !2667
  %63 = load ptr, ptr %local154, align 8, !dbg !2667, !tbaa !2385
  %cmp155 = icmp eq ptr %63, inttoptr (i64 -1 to ptr), !dbg !2667
  br i1 %cmp155, label %cond.true156, label %cond.false157, !dbg !2667

cond.true156:                                     ; preds = %if.then152
  br label %cond.end160, !dbg !2667

cond.false157:                                    ; preds = %if.then152
  %64 = load ptr, ptr %prev, align 8, !dbg !2667, !tbaa !2270
  %upstream158 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %64, i32 0, i32 0, !dbg !2667
  %local159 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream158, i32 0, i32 31, !dbg !2667
  %65 = load ptr, ptr %local159, align 8, !dbg !2667, !tbaa !2385
  br label %cond.end160, !dbg !2667

cond.end160:                                      ; preds = %cond.false157, %cond.true156
  %cond161 = phi ptr [ null, %cond.true156 ], [ %65, %cond.false157 ], !dbg !2667
  %66 = load ptr, ptr %conf, align 8, !dbg !2667, !tbaa !2270
  %upstream162 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %66, i32 0, i32 0, !dbg !2667
  %local163 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream162, i32 0, i32 31, !dbg !2667
  store ptr %cond161, ptr %local163, align 8, !dbg !2667, !tbaa !2385
  br label %if.end164, !dbg !2667

if.end164:                                        ; preds = %cond.end160, %if.end149
  %67 = load ptr, ptr %conf, align 8, !dbg !2669, !tbaa !2270
  %upstream165 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %67, i32 0, i32 0, !dbg !2669
  %socket_keepalive = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream165, i32 0, i32 32, !dbg !2669
  %68 = load i64, ptr %socket_keepalive, align 8, !dbg !2669, !tbaa !2390
  %cmp166 = icmp eq i64 %68, -1, !dbg !2669
  br i1 %cmp166, label %if.then167, label %if.end179, !dbg !2671

if.then167:                                       ; preds = %if.end164
  %69 = load ptr, ptr %prev, align 8, !dbg !2672, !tbaa !2270
  %upstream168 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %69, i32 0, i32 0, !dbg !2672
  %socket_keepalive169 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream168, i32 0, i32 32, !dbg !2672
  %70 = load i64, ptr %socket_keepalive169, align 8, !dbg !2672, !tbaa !2390
  %cmp170 = icmp eq i64 %70, -1, !dbg !2672
  br i1 %cmp170, label %cond.true171, label %cond.false172, !dbg !2672

cond.true171:                                     ; preds = %if.then167
  br label %cond.end175, !dbg !2672

cond.false172:                                    ; preds = %if.then167
  %71 = load ptr, ptr %prev, align 8, !dbg !2672, !tbaa !2270
  %upstream173 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %71, i32 0, i32 0, !dbg !2672
  %socket_keepalive174 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream173, i32 0, i32 32, !dbg !2672
  %72 = load i64, ptr %socket_keepalive174, align 8, !dbg !2672, !tbaa !2390
  br label %cond.end175, !dbg !2672

cond.end175:                                      ; preds = %cond.false172, %cond.true171
  %cond176 = phi i64 [ 0, %cond.true171 ], [ %72, %cond.false172 ], !dbg !2672
  %73 = load ptr, ptr %conf, align 8, !dbg !2672, !tbaa !2270
  %upstream177 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %73, i32 0, i32 0, !dbg !2672
  %socket_keepalive178 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream177, i32 0, i32 32, !dbg !2672
  store i64 %cond176, ptr %socket_keepalive178, align 8, !dbg !2672, !tbaa !2390
  br label %if.end179, !dbg !2672

if.end179:                                        ; preds = %cond.end175, %if.end164
  %74 = load ptr, ptr %conf, align 8, !dbg !2674, !tbaa !2270
  %upstream180 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %74, i32 0, i32 0, !dbg !2674
  %connect_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream180, i32 0, i32 1, !dbg !2674
  %75 = load i64, ptr %connect_timeout, align 8, !dbg !2674, !tbaa !2395
  %cmp181 = icmp eq i64 %75, -1, !dbg !2674
  br i1 %cmp181, label %if.then182, label %if.end194, !dbg !2676

if.then182:                                       ; preds = %if.end179
  %76 = load ptr, ptr %prev, align 8, !dbg !2677, !tbaa !2270
  %upstream183 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %76, i32 0, i32 0, !dbg !2677
  %connect_timeout184 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream183, i32 0, i32 1, !dbg !2677
  %77 = load i64, ptr %connect_timeout184, align 8, !dbg !2677, !tbaa !2395
  %cmp185 = icmp eq i64 %77, -1, !dbg !2677
  br i1 %cmp185, label %cond.true186, label %cond.false187, !dbg !2677

cond.true186:                                     ; preds = %if.then182
  br label %cond.end190, !dbg !2677

cond.false187:                                    ; preds = %if.then182
  %78 = load ptr, ptr %prev, align 8, !dbg !2677, !tbaa !2270
  %upstream188 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %78, i32 0, i32 0, !dbg !2677
  %connect_timeout189 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream188, i32 0, i32 1, !dbg !2677
  %79 = load i64, ptr %connect_timeout189, align 8, !dbg !2677, !tbaa !2395
  br label %cond.end190, !dbg !2677

cond.end190:                                      ; preds = %cond.false187, %cond.true186
  %cond191 = phi i64 [ 60000, %cond.true186 ], [ %79, %cond.false187 ], !dbg !2677
  %80 = load ptr, ptr %conf, align 8, !dbg !2677, !tbaa !2270
  %upstream192 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %80, i32 0, i32 0, !dbg !2677
  %connect_timeout193 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream192, i32 0, i32 1, !dbg !2677
  store i64 %cond191, ptr %connect_timeout193, align 8, !dbg !2677, !tbaa !2395
  br label %if.end194, !dbg !2677

if.end194:                                        ; preds = %cond.end190, %if.end179
  %81 = load ptr, ptr %conf, align 8, !dbg !2679, !tbaa !2270
  %upstream195 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %81, i32 0, i32 0, !dbg !2679
  %send_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream195, i32 0, i32 2, !dbg !2679
  %82 = load i64, ptr %send_timeout, align 8, !dbg !2679, !tbaa !2400
  %cmp196 = icmp eq i64 %82, -1, !dbg !2679
  br i1 %cmp196, label %if.then197, label %if.end209, !dbg !2681

if.then197:                                       ; preds = %if.end194
  %83 = load ptr, ptr %prev, align 8, !dbg !2682, !tbaa !2270
  %upstream198 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %83, i32 0, i32 0, !dbg !2682
  %send_timeout199 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream198, i32 0, i32 2, !dbg !2682
  %84 = load i64, ptr %send_timeout199, align 8, !dbg !2682, !tbaa !2400
  %cmp200 = icmp eq i64 %84, -1, !dbg !2682
  br i1 %cmp200, label %cond.true201, label %cond.false202, !dbg !2682

cond.true201:                                     ; preds = %if.then197
  br label %cond.end205, !dbg !2682

cond.false202:                                    ; preds = %if.then197
  %85 = load ptr, ptr %prev, align 8, !dbg !2682, !tbaa !2270
  %upstream203 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %85, i32 0, i32 0, !dbg !2682
  %send_timeout204 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream203, i32 0, i32 2, !dbg !2682
  %86 = load i64, ptr %send_timeout204, align 8, !dbg !2682, !tbaa !2400
  br label %cond.end205, !dbg !2682

cond.end205:                                      ; preds = %cond.false202, %cond.true201
  %cond206 = phi i64 [ 60000, %cond.true201 ], [ %86, %cond.false202 ], !dbg !2682
  %87 = load ptr, ptr %conf, align 8, !dbg !2682, !tbaa !2270
  %upstream207 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %87, i32 0, i32 0, !dbg !2682
  %send_timeout208 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream207, i32 0, i32 2, !dbg !2682
  store i64 %cond206, ptr %send_timeout208, align 8, !dbg !2682, !tbaa !2400
  br label %if.end209, !dbg !2682

if.end209:                                        ; preds = %cond.end205, %if.end194
  %88 = load ptr, ptr %conf, align 8, !dbg !2684, !tbaa !2270
  %upstream210 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %88, i32 0, i32 0, !dbg !2684
  %read_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream210, i32 0, i32 3, !dbg !2684
  %89 = load i64, ptr %read_timeout, align 8, !dbg !2684, !tbaa !2405
  %cmp211 = icmp eq i64 %89, -1, !dbg !2684
  br i1 %cmp211, label %if.then212, label %if.end224, !dbg !2686

if.then212:                                       ; preds = %if.end209
  %90 = load ptr, ptr %prev, align 8, !dbg !2687, !tbaa !2270
  %upstream213 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %90, i32 0, i32 0, !dbg !2687
  %read_timeout214 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream213, i32 0, i32 3, !dbg !2687
  %91 = load i64, ptr %read_timeout214, align 8, !dbg !2687, !tbaa !2405
  %cmp215 = icmp eq i64 %91, -1, !dbg !2687
  br i1 %cmp215, label %cond.true216, label %cond.false217, !dbg !2687

cond.true216:                                     ; preds = %if.then212
  br label %cond.end220, !dbg !2687

cond.false217:                                    ; preds = %if.then212
  %92 = load ptr, ptr %prev, align 8, !dbg !2687, !tbaa !2270
  %upstream218 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %92, i32 0, i32 0, !dbg !2687
  %read_timeout219 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream218, i32 0, i32 3, !dbg !2687
  %93 = load i64, ptr %read_timeout219, align 8, !dbg !2687, !tbaa !2405
  br label %cond.end220, !dbg !2687

cond.end220:                                      ; preds = %cond.false217, %cond.true216
  %cond221 = phi i64 [ 60000, %cond.true216 ], [ %93, %cond.false217 ], !dbg !2687
  %94 = load ptr, ptr %conf, align 8, !dbg !2687, !tbaa !2270
  %upstream222 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %94, i32 0, i32 0, !dbg !2687
  %read_timeout223 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream222, i32 0, i32 3, !dbg !2687
  store i64 %cond221, ptr %read_timeout223, align 8, !dbg !2687, !tbaa !2405
  br label %if.end224, !dbg !2687

if.end224:                                        ; preds = %cond.end220, %if.end209
  %95 = load ptr, ptr %conf, align 8, !dbg !2689, !tbaa !2270
  %upstream225 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %95, i32 0, i32 0, !dbg !2689
  %next_upstream_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream225, i32 0, i32 4, !dbg !2689
  %96 = load i64, ptr %next_upstream_timeout, align 8, !dbg !2689, !tbaa !2410
  %cmp226 = icmp eq i64 %96, -1, !dbg !2689
  br i1 %cmp226, label %if.then227, label %if.end239, !dbg !2691

if.then227:                                       ; preds = %if.end224
  %97 = load ptr, ptr %prev, align 8, !dbg !2692, !tbaa !2270
  %upstream228 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %97, i32 0, i32 0, !dbg !2692
  %next_upstream_timeout229 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream228, i32 0, i32 4, !dbg !2692
  %98 = load i64, ptr %next_upstream_timeout229, align 8, !dbg !2692, !tbaa !2410
  %cmp230 = icmp eq i64 %98, -1, !dbg !2692
  br i1 %cmp230, label %cond.true231, label %cond.false232, !dbg !2692

cond.true231:                                     ; preds = %if.then227
  br label %cond.end235, !dbg !2692

cond.false232:                                    ; preds = %if.then227
  %99 = load ptr, ptr %prev, align 8, !dbg !2692, !tbaa !2270
  %upstream233 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %99, i32 0, i32 0, !dbg !2692
  %next_upstream_timeout234 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream233, i32 0, i32 4, !dbg !2692
  %100 = load i64, ptr %next_upstream_timeout234, align 8, !dbg !2692, !tbaa !2410
  br label %cond.end235, !dbg !2692

cond.end235:                                      ; preds = %cond.false232, %cond.true231
  %cond236 = phi i64 [ 0, %cond.true231 ], [ %100, %cond.false232 ], !dbg !2692
  %101 = load ptr, ptr %conf, align 8, !dbg !2692, !tbaa !2270
  %upstream237 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %101, i32 0, i32 0, !dbg !2692
  %next_upstream_timeout238 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream237, i32 0, i32 4, !dbg !2692
  store i64 %cond236, ptr %next_upstream_timeout238, align 8, !dbg !2692, !tbaa !2410
  br label %if.end239, !dbg !2692

if.end239:                                        ; preds = %cond.end235, %if.end224
  %102 = load ptr, ptr %conf, align 8, !dbg !2694, !tbaa !2270
  %upstream240 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %102, i32 0, i32 0, !dbg !2694
  %send_lowat = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream240, i32 0, i32 5, !dbg !2694
  %103 = load i64, ptr %send_lowat, align 8, !dbg !2694, !tbaa !2415
  %cmp241 = icmp eq i64 %103, -1, !dbg !2694
  br i1 %cmp241, label %if.then242, label %if.end254, !dbg !2696

if.then242:                                       ; preds = %if.end239
  %104 = load ptr, ptr %prev, align 8, !dbg !2697, !tbaa !2270
  %upstream243 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %104, i32 0, i32 0, !dbg !2697
  %send_lowat244 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream243, i32 0, i32 5, !dbg !2697
  %105 = load i64, ptr %send_lowat244, align 8, !dbg !2697, !tbaa !2415
  %cmp245 = icmp eq i64 %105, -1, !dbg !2697
  br i1 %cmp245, label %cond.true246, label %cond.false247, !dbg !2697

cond.true246:                                     ; preds = %if.then242
  br label %cond.end250, !dbg !2697

cond.false247:                                    ; preds = %if.then242
  %106 = load ptr, ptr %prev, align 8, !dbg !2697, !tbaa !2270
  %upstream248 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %106, i32 0, i32 0, !dbg !2697
  %send_lowat249 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream248, i32 0, i32 5, !dbg !2697
  %107 = load i64, ptr %send_lowat249, align 8, !dbg !2697, !tbaa !2415
  br label %cond.end250, !dbg !2697

cond.end250:                                      ; preds = %cond.false247, %cond.true246
  %cond251 = phi i64 [ 0, %cond.true246 ], [ %107, %cond.false247 ], !dbg !2697
  %108 = load ptr, ptr %conf, align 8, !dbg !2697, !tbaa !2270
  %upstream252 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %108, i32 0, i32 0, !dbg !2697
  %send_lowat253 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream252, i32 0, i32 5, !dbg !2697
  store i64 %cond251, ptr %send_lowat253, align 8, !dbg !2697, !tbaa !2415
  br label %if.end254, !dbg !2697

if.end254:                                        ; preds = %cond.end250, %if.end239
  %109 = load ptr, ptr %conf, align 8, !dbg !2699, !tbaa !2270
  %upstream255 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %109, i32 0, i32 0, !dbg !2699
  %buffer_size = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream255, i32 0, i32 6, !dbg !2699
  %110 = load i64, ptr %buffer_size, align 8, !dbg !2699, !tbaa !2420
  %cmp256 = icmp eq i64 %110, -1, !dbg !2699
  br i1 %cmp256, label %if.then257, label %if.end269, !dbg !2701

if.then257:                                       ; preds = %if.end254
  %111 = load ptr, ptr %prev, align 8, !dbg !2702, !tbaa !2270
  %upstream258 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %111, i32 0, i32 0, !dbg !2702
  %buffer_size259 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream258, i32 0, i32 6, !dbg !2702
  %112 = load i64, ptr %buffer_size259, align 8, !dbg !2702, !tbaa !2420
  %cmp260 = icmp eq i64 %112, -1, !dbg !2702
  br i1 %cmp260, label %cond.true261, label %cond.false262, !dbg !2702

cond.true261:                                     ; preds = %if.then257
  %113 = load i64, ptr @ngx_pagesize, align 8, !dbg !2702, !tbaa !2704
  br label %cond.end265, !dbg !2702

cond.false262:                                    ; preds = %if.then257
  %114 = load ptr, ptr %prev, align 8, !dbg !2702, !tbaa !2270
  %upstream263 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %114, i32 0, i32 0, !dbg !2702
  %buffer_size264 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream263, i32 0, i32 6, !dbg !2702
  %115 = load i64, ptr %buffer_size264, align 8, !dbg !2702, !tbaa !2420
  br label %cond.end265, !dbg !2702

cond.end265:                                      ; preds = %cond.false262, %cond.true261
  %cond266 = phi i64 [ %113, %cond.true261 ], [ %115, %cond.false262 ], !dbg !2702
  %116 = load ptr, ptr %conf, align 8, !dbg !2702, !tbaa !2270
  %upstream267 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %116, i32 0, i32 0, !dbg !2702
  %buffer_size268 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream267, i32 0, i32 6, !dbg !2702
  store i64 %cond266, ptr %buffer_size268, align 8, !dbg !2702, !tbaa !2420
  br label %if.end269, !dbg !2702

if.end269:                                        ; preds = %cond.end265, %if.end254
  %117 = load ptr, ptr %conf, align 8, !dbg !2705, !tbaa !2270
  %upstream270 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %117, i32 0, i32 0, !dbg !2705
  %limit_rate = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream270, i32 0, i32 7, !dbg !2705
  %118 = load i64, ptr %limit_rate, align 8, !dbg !2705, !tbaa !2425
  %cmp271 = icmp eq i64 %118, -1, !dbg !2705
  br i1 %cmp271, label %if.then272, label %if.end284, !dbg !2707

if.then272:                                       ; preds = %if.end269
  %119 = load ptr, ptr %prev, align 8, !dbg !2708, !tbaa !2270
  %upstream273 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %119, i32 0, i32 0, !dbg !2708
  %limit_rate274 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream273, i32 0, i32 7, !dbg !2708
  %120 = load i64, ptr %limit_rate274, align 8, !dbg !2708, !tbaa !2425
  %cmp275 = icmp eq i64 %120, -1, !dbg !2708
  br i1 %cmp275, label %cond.true276, label %cond.false277, !dbg !2708

cond.true276:                                     ; preds = %if.then272
  br label %cond.end280, !dbg !2708

cond.false277:                                    ; preds = %if.then272
  %121 = load ptr, ptr %prev, align 8, !dbg !2708, !tbaa !2270
  %upstream278 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %121, i32 0, i32 0, !dbg !2708
  %limit_rate279 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream278, i32 0, i32 7, !dbg !2708
  %122 = load i64, ptr %limit_rate279, align 8, !dbg !2708, !tbaa !2425
  br label %cond.end280, !dbg !2708

cond.end280:                                      ; preds = %cond.false277, %cond.true276
  %cond281 = phi i64 [ 0, %cond.true276 ], [ %122, %cond.false277 ], !dbg !2708
  %123 = load ptr, ptr %conf, align 8, !dbg !2708, !tbaa !2270
  %upstream282 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %123, i32 0, i32 0, !dbg !2708
  %limit_rate283 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream282, i32 0, i32 7, !dbg !2708
  store i64 %cond281, ptr %limit_rate283, align 8, !dbg !2708, !tbaa !2425
  br label %if.end284, !dbg !2708

if.end284:                                        ; preds = %cond.end280, %if.end269
  %124 = load ptr, ptr %conf, align 8, !dbg !2710, !tbaa !2270
  %upstream285 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %124, i32 0, i32 0, !dbg !2710
  %bufs = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream285, i32 0, i32 14, !dbg !2710
  %num = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs, i32 0, i32 0, !dbg !2710
  %125 = load i64, ptr %num, align 8, !dbg !2710, !tbaa !2712
  %cmp286 = icmp eq i64 %125, 0, !dbg !2710
  br i1 %cmp286, label %if.then287, label %if.end311, !dbg !2713

if.then287:                                       ; preds = %if.end284
  %126 = load ptr, ptr %prev, align 8, !dbg !2714, !tbaa !2270
  %upstream288 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %126, i32 0, i32 0, !dbg !2714
  %bufs289 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream288, i32 0, i32 14, !dbg !2714
  %num290 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs289, i32 0, i32 0, !dbg !2714
  %127 = load i64, ptr %num290, align 8, !dbg !2714, !tbaa !2712
  %tobool = icmp ne i64 %127, 0, !dbg !2714
  br i1 %tobool, label %if.then291, label %if.else, !dbg !2717

if.then291:                                       ; preds = %if.then287
  %128 = load ptr, ptr %prev, align 8, !dbg !2718, !tbaa !2270
  %upstream292 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %128, i32 0, i32 0, !dbg !2718
  %bufs293 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream292, i32 0, i32 14, !dbg !2718
  %num294 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs293, i32 0, i32 0, !dbg !2718
  %129 = load i64, ptr %num294, align 8, !dbg !2718, !tbaa !2712
  %130 = load ptr, ptr %conf, align 8, !dbg !2718, !tbaa !2270
  %upstream295 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %130, i32 0, i32 0, !dbg !2718
  %bufs296 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream295, i32 0, i32 14, !dbg !2718
  %num297 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs296, i32 0, i32 0, !dbg !2718
  store i64 %129, ptr %num297, align 8, !dbg !2718, !tbaa !2712
  %131 = load ptr, ptr %prev, align 8, !dbg !2718, !tbaa !2270
  %upstream298 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %131, i32 0, i32 0, !dbg !2718
  %bufs299 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream298, i32 0, i32 14, !dbg !2718
  %size300 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs299, i32 0, i32 1, !dbg !2718
  %132 = load i64, ptr %size300, align 8, !dbg !2718, !tbaa !2720
  %133 = load ptr, ptr %conf, align 8, !dbg !2718, !tbaa !2270
  %upstream301 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %133, i32 0, i32 0, !dbg !2718
  %bufs302 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream301, i32 0, i32 14, !dbg !2718
  %size303 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs302, i32 0, i32 1, !dbg !2718
  store i64 %132, ptr %size303, align 8, !dbg !2718, !tbaa !2720
  br label %if.end310, !dbg !2718

if.else:                                          ; preds = %if.then287
  %134 = load ptr, ptr %conf, align 8, !dbg !2721, !tbaa !2270
  %upstream304 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %134, i32 0, i32 0, !dbg !2721
  %bufs305 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream304, i32 0, i32 14, !dbg !2721
  %num306 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs305, i32 0, i32 0, !dbg !2721
  store i64 8, ptr %num306, align 8, !dbg !2721, !tbaa !2712
  %135 = load i64, ptr @ngx_pagesize, align 8, !dbg !2721, !tbaa !2704
  %136 = load ptr, ptr %conf, align 8, !dbg !2721, !tbaa !2270
  %upstream307 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %136, i32 0, i32 0, !dbg !2721
  %bufs308 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream307, i32 0, i32 14, !dbg !2721
  %size309 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs308, i32 0, i32 1, !dbg !2721
  store i64 %135, ptr %size309, align 8, !dbg !2721, !tbaa !2720
  br label %if.end310

if.end310:                                        ; preds = %if.else, %if.then291
  br label %if.end311, !dbg !2717

if.end311:                                        ; preds = %if.end310, %if.end284
  %137 = load ptr, ptr %conf, align 8, !dbg !2723, !tbaa !2270
  %upstream312 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %137, i32 0, i32 0, !dbg !2725
  %bufs313 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream312, i32 0, i32 14, !dbg !2726
  %num314 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs313, i32 0, i32 0, !dbg !2727
  %138 = load i64, ptr %num314, align 8, !dbg !2727, !tbaa !2712
  %cmp315 = icmp slt i64 %138, 2, !dbg !2728
  br i1 %cmp315, label %if.then316, label %if.end317, !dbg !2729

if.then316:                                       ; preds = %if.end311
  %139 = load ptr, ptr %cf.addr, align 8, !dbg !2730, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %139, i32 noundef 0, ptr noundef @.str.2), !dbg !2732
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2733

if.end317:                                        ; preds = %if.end311
  %140 = load ptr, ptr %conf, align 8, !dbg !2734, !tbaa !2270
  %upstream318 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %140, i32 0, i32 0, !dbg !2735
  %buffer_size319 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream318, i32 0, i32 6, !dbg !2736
  %141 = load i64, ptr %buffer_size319, align 8, !dbg !2736, !tbaa !2420
  store i64 %141, ptr %size, align 8, !dbg !2737, !tbaa !2704
  %142 = load i64, ptr %size, align 8, !dbg !2738, !tbaa !2704
  %143 = load ptr, ptr %conf, align 8, !dbg !2740, !tbaa !2270
  %upstream320 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %143, i32 0, i32 0, !dbg !2741
  %bufs321 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream320, i32 0, i32 14, !dbg !2742
  %size322 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs321, i32 0, i32 1, !dbg !2743
  %144 = load i64, ptr %size322, align 8, !dbg !2743, !tbaa !2720
  %cmp323 = icmp ult i64 %142, %144, !dbg !2744
  br i1 %cmp323, label %if.then324, label %if.end328, !dbg !2745

if.then324:                                       ; preds = %if.end317
  %145 = load ptr, ptr %conf, align 8, !dbg !2746, !tbaa !2270
  %upstream325 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %145, i32 0, i32 0, !dbg !2748
  %bufs326 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream325, i32 0, i32 14, !dbg !2749
  %size327 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs326, i32 0, i32 1, !dbg !2750
  %146 = load i64, ptr %size327, align 8, !dbg !2750, !tbaa !2720
  store i64 %146, ptr %size, align 8, !dbg !2751, !tbaa !2704
  br label %if.end328, !dbg !2752

if.end328:                                        ; preds = %if.then324, %if.end317
  %147 = load ptr, ptr %conf, align 8, !dbg !2753, !tbaa !2270
  %upstream329 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %147, i32 0, i32 0, !dbg !2753
  %busy_buffers_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream329, i32 0, i32 11, !dbg !2753
  %148 = load i64, ptr %busy_buffers_size_conf, align 8, !dbg !2753, !tbaa !2430
  %cmp330 = icmp eq i64 %148, -1, !dbg !2753
  br i1 %cmp330, label %if.then331, label %if.end343, !dbg !2755

if.then331:                                       ; preds = %if.end328
  %149 = load ptr, ptr %prev, align 8, !dbg !2756, !tbaa !2270
  %upstream332 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %149, i32 0, i32 0, !dbg !2756
  %busy_buffers_size_conf333 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream332, i32 0, i32 11, !dbg !2756
  %150 = load i64, ptr %busy_buffers_size_conf333, align 8, !dbg !2756, !tbaa !2430
  %cmp334 = icmp eq i64 %150, -1, !dbg !2756
  br i1 %cmp334, label %cond.true335, label %cond.false336, !dbg !2756

cond.true335:                                     ; preds = %if.then331
  br label %cond.end339, !dbg !2756

cond.false336:                                    ; preds = %if.then331
  %151 = load ptr, ptr %prev, align 8, !dbg !2756, !tbaa !2270
  %upstream337 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %151, i32 0, i32 0, !dbg !2756
  %busy_buffers_size_conf338 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream337, i32 0, i32 11, !dbg !2756
  %152 = load i64, ptr %busy_buffers_size_conf338, align 8, !dbg !2756, !tbaa !2430
  br label %cond.end339, !dbg !2756

cond.end339:                                      ; preds = %cond.false336, %cond.true335
  %cond340 = phi i64 [ -1, %cond.true335 ], [ %152, %cond.false336 ], !dbg !2756
  %153 = load ptr, ptr %conf, align 8, !dbg !2756, !tbaa !2270
  %upstream341 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %153, i32 0, i32 0, !dbg !2756
  %busy_buffers_size_conf342 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream341, i32 0, i32 11, !dbg !2756
  store i64 %cond340, ptr %busy_buffers_size_conf342, align 8, !dbg !2756, !tbaa !2430
  br label %if.end343, !dbg !2756

if.end343:                                        ; preds = %cond.end339, %if.end328
  %154 = load ptr, ptr %conf, align 8, !dbg !2758, !tbaa !2270
  %upstream344 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %154, i32 0, i32 0, !dbg !2760
  %busy_buffers_size_conf345 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream344, i32 0, i32 11, !dbg !2761
  %155 = load i64, ptr %busy_buffers_size_conf345, align 8, !dbg !2761, !tbaa !2430
  %cmp346 = icmp eq i64 %155, -1, !dbg !2762
  br i1 %cmp346, label %if.then347, label %if.else349, !dbg !2763

if.then347:                                       ; preds = %if.end343
  %156 = load i64, ptr %size, align 8, !dbg !2764, !tbaa !2704
  %mul = mul i64 2, %156, !dbg !2766
  %157 = load ptr, ptr %conf, align 8, !dbg !2767, !tbaa !2270
  %upstream348 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %157, i32 0, i32 0, !dbg !2768
  %busy_buffers_size = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream348, i32 0, i32 8, !dbg !2769
  store i64 %mul, ptr %busy_buffers_size, align 8, !dbg !2770, !tbaa !2771
  br label %if.end354, !dbg !2772

if.else349:                                       ; preds = %if.end343
  %158 = load ptr, ptr %conf, align 8, !dbg !2773, !tbaa !2270
  %upstream350 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %158, i32 0, i32 0, !dbg !2775
  %busy_buffers_size_conf351 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream350, i32 0, i32 11, !dbg !2776
  %159 = load i64, ptr %busy_buffers_size_conf351, align 8, !dbg !2776, !tbaa !2430
  %160 = load ptr, ptr %conf, align 8, !dbg !2777, !tbaa !2270
  %upstream352 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %160, i32 0, i32 0, !dbg !2778
  %busy_buffers_size353 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream352, i32 0, i32 8, !dbg !2779
  store i64 %159, ptr %busy_buffers_size353, align 8, !dbg !2780, !tbaa !2771
  br label %if.end354

if.end354:                                        ; preds = %if.else349, %if.then347
  %161 = load ptr, ptr %conf, align 8, !dbg !2781, !tbaa !2270
  %upstream355 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %161, i32 0, i32 0, !dbg !2783
  %busy_buffers_size356 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream355, i32 0, i32 8, !dbg !2784
  %162 = load i64, ptr %busy_buffers_size356, align 8, !dbg !2784, !tbaa !2771
  %163 = load i64, ptr %size, align 8, !dbg !2785, !tbaa !2704
  %cmp357 = icmp ult i64 %162, %163, !dbg !2786
  br i1 %cmp357, label %if.then358, label %if.end359, !dbg !2787

if.then358:                                       ; preds = %if.end354
  %164 = load ptr, ptr %cf.addr, align 8, !dbg !2788, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %164, i32 noundef 0, ptr noundef @.str.3), !dbg !2790
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2791

if.end359:                                        ; preds = %if.end354
  %165 = load ptr, ptr %conf, align 8, !dbg !2792, !tbaa !2270
  %upstream360 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %165, i32 0, i32 0, !dbg !2794
  %busy_buffers_size361 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream360, i32 0, i32 8, !dbg !2795
  %166 = load i64, ptr %busy_buffers_size361, align 8, !dbg !2795, !tbaa !2771
  %167 = load ptr, ptr %conf, align 8, !dbg !2796, !tbaa !2270
  %upstream362 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %167, i32 0, i32 0, !dbg !2797
  %bufs363 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream362, i32 0, i32 14, !dbg !2798
  %num364 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs363, i32 0, i32 0, !dbg !2799
  %168 = load i64, ptr %num364, align 8, !dbg !2799, !tbaa !2712
  %sub = sub nsw i64 %168, 1, !dbg !2800
  %169 = load ptr, ptr %conf, align 8, !dbg !2801, !tbaa !2270
  %upstream365 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %169, i32 0, i32 0, !dbg !2802
  %bufs366 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream365, i32 0, i32 14, !dbg !2803
  %size367 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs366, i32 0, i32 1, !dbg !2804
  %170 = load i64, ptr %size367, align 8, !dbg !2804, !tbaa !2720
  %mul368 = mul i64 %sub, %170, !dbg !2805
  %cmp369 = icmp ugt i64 %166, %mul368, !dbg !2806
  br i1 %cmp369, label %if.then370, label %if.end371, !dbg !2807

if.then370:                                       ; preds = %if.end359
  %171 = load ptr, ptr %cf.addr, align 8, !dbg !2808, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %171, i32 noundef 0, ptr noundef @.str.4), !dbg !2810
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2811

if.end371:                                        ; preds = %if.end359
  %172 = load ptr, ptr %conf, align 8, !dbg !2812, !tbaa !2270
  %upstream372 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %172, i32 0, i32 0, !dbg !2812
  %temp_file_write_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream372, i32 0, i32 13, !dbg !2812
  %173 = load i64, ptr %temp_file_write_size_conf, align 8, !dbg !2812, !tbaa !2440
  %cmp373 = icmp eq i64 %173, -1, !dbg !2812
  br i1 %cmp373, label %if.then374, label %if.end386, !dbg !2814

if.then374:                                       ; preds = %if.end371
  %174 = load ptr, ptr %prev, align 8, !dbg !2815, !tbaa !2270
  %upstream375 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %174, i32 0, i32 0, !dbg !2815
  %temp_file_write_size_conf376 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream375, i32 0, i32 13, !dbg !2815
  %175 = load i64, ptr %temp_file_write_size_conf376, align 8, !dbg !2815, !tbaa !2440
  %cmp377 = icmp eq i64 %175, -1, !dbg !2815
  br i1 %cmp377, label %cond.true378, label %cond.false379, !dbg !2815

cond.true378:                                     ; preds = %if.then374
  br label %cond.end382, !dbg !2815

cond.false379:                                    ; preds = %if.then374
  %176 = load ptr, ptr %prev, align 8, !dbg !2815, !tbaa !2270
  %upstream380 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %176, i32 0, i32 0, !dbg !2815
  %temp_file_write_size_conf381 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream380, i32 0, i32 13, !dbg !2815
  %177 = load i64, ptr %temp_file_write_size_conf381, align 8, !dbg !2815, !tbaa !2440
  br label %cond.end382, !dbg !2815

cond.end382:                                      ; preds = %cond.false379, %cond.true378
  %cond383 = phi i64 [ -1, %cond.true378 ], [ %177, %cond.false379 ], !dbg !2815
  %178 = load ptr, ptr %conf, align 8, !dbg !2815, !tbaa !2270
  %upstream384 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %178, i32 0, i32 0, !dbg !2815
  %temp_file_write_size_conf385 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream384, i32 0, i32 13, !dbg !2815
  store i64 %cond383, ptr %temp_file_write_size_conf385, align 8, !dbg !2815, !tbaa !2440
  br label %if.end386, !dbg !2815

if.end386:                                        ; preds = %cond.end382, %if.end371
  %179 = load ptr, ptr %conf, align 8, !dbg !2817, !tbaa !2270
  %upstream387 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %179, i32 0, i32 0, !dbg !2819
  %temp_file_write_size_conf388 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream387, i32 0, i32 13, !dbg !2820
  %180 = load i64, ptr %temp_file_write_size_conf388, align 8, !dbg !2820, !tbaa !2440
  %cmp389 = icmp eq i64 %180, -1, !dbg !2821
  br i1 %cmp389, label %if.then390, label %if.else393, !dbg !2822

if.then390:                                       ; preds = %if.end386
  %181 = load i64, ptr %size, align 8, !dbg !2823, !tbaa !2704
  %mul391 = mul i64 2, %181, !dbg !2825
  %182 = load ptr, ptr %conf, align 8, !dbg !2826, !tbaa !2270
  %upstream392 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %182, i32 0, i32 0, !dbg !2827
  %temp_file_write_size = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream392, i32 0, i32 10, !dbg !2828
  store i64 %mul391, ptr %temp_file_write_size, align 8, !dbg !2829, !tbaa !2830
  br label %if.end398, !dbg !2831

if.else393:                                       ; preds = %if.end386
  %183 = load ptr, ptr %conf, align 8, !dbg !2832, !tbaa !2270
  %upstream394 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %183, i32 0, i32 0, !dbg !2834
  %temp_file_write_size_conf395 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream394, i32 0, i32 13, !dbg !2835
  %184 = load i64, ptr %temp_file_write_size_conf395, align 8, !dbg !2835, !tbaa !2440
  %185 = load ptr, ptr %conf, align 8, !dbg !2836, !tbaa !2270
  %upstream396 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %185, i32 0, i32 0, !dbg !2837
  %temp_file_write_size397 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream396, i32 0, i32 10, !dbg !2838
  store i64 %184, ptr %temp_file_write_size397, align 8, !dbg !2839, !tbaa !2830
  br label %if.end398

if.end398:                                        ; preds = %if.else393, %if.then390
  %186 = load ptr, ptr %conf, align 8, !dbg !2840, !tbaa !2270
  %upstream399 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %186, i32 0, i32 0, !dbg !2842
  %temp_file_write_size400 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream399, i32 0, i32 10, !dbg !2843
  %187 = load i64, ptr %temp_file_write_size400, align 8, !dbg !2843, !tbaa !2830
  %188 = load i64, ptr %size, align 8, !dbg !2844, !tbaa !2704
  %cmp401 = icmp ult i64 %187, %188, !dbg !2845
  br i1 %cmp401, label %if.then402, label %if.end403, !dbg !2846

if.then402:                                       ; preds = %if.end398
  %189 = load ptr, ptr %cf.addr, align 8, !dbg !2847, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %189, i32 noundef 0, ptr noundef @.str.5), !dbg !2849
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2850

if.end403:                                        ; preds = %if.end398
  %190 = load ptr, ptr %conf, align 8, !dbg !2851, !tbaa !2270
  %upstream404 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %190, i32 0, i32 0, !dbg !2851
  %max_temp_file_size_conf = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream404, i32 0, i32 12, !dbg !2851
  %191 = load i64, ptr %max_temp_file_size_conf, align 8, !dbg !2851, !tbaa !2435
  %cmp405 = icmp eq i64 %191, -1, !dbg !2851
  br i1 %cmp405, label %if.then406, label %if.end418, !dbg !2853

if.then406:                                       ; preds = %if.end403
  %192 = load ptr, ptr %prev, align 8, !dbg !2854, !tbaa !2270
  %upstream407 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %192, i32 0, i32 0, !dbg !2854
  %max_temp_file_size_conf408 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream407, i32 0, i32 12, !dbg !2854
  %193 = load i64, ptr %max_temp_file_size_conf408, align 8, !dbg !2854, !tbaa !2435
  %cmp409 = icmp eq i64 %193, -1, !dbg !2854
  br i1 %cmp409, label %cond.true410, label %cond.false411, !dbg !2854

cond.true410:                                     ; preds = %if.then406
  br label %cond.end414, !dbg !2854

cond.false411:                                    ; preds = %if.then406
  %194 = load ptr, ptr %prev, align 8, !dbg !2854, !tbaa !2270
  %upstream412 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %194, i32 0, i32 0, !dbg !2854
  %max_temp_file_size_conf413 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream412, i32 0, i32 12, !dbg !2854
  %195 = load i64, ptr %max_temp_file_size_conf413, align 8, !dbg !2854, !tbaa !2435
  br label %cond.end414, !dbg !2854

cond.end414:                                      ; preds = %cond.false411, %cond.true410
  %cond415 = phi i64 [ -1, %cond.true410 ], [ %195, %cond.false411 ], !dbg !2854
  %196 = load ptr, ptr %conf, align 8, !dbg !2854, !tbaa !2270
  %upstream416 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %196, i32 0, i32 0, !dbg !2854
  %max_temp_file_size_conf417 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream416, i32 0, i32 12, !dbg !2854
  store i64 %cond415, ptr %max_temp_file_size_conf417, align 8, !dbg !2854, !tbaa !2435
  br label %if.end418, !dbg !2854

if.end418:                                        ; preds = %cond.end414, %if.end403
  %197 = load ptr, ptr %conf, align 8, !dbg !2856, !tbaa !2270
  %upstream419 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %197, i32 0, i32 0, !dbg !2858
  %max_temp_file_size_conf420 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream419, i32 0, i32 12, !dbg !2859
  %198 = load i64, ptr %max_temp_file_size_conf420, align 8, !dbg !2859, !tbaa !2435
  %cmp421 = icmp eq i64 %198, -1, !dbg !2860
  br i1 %cmp421, label %if.then422, label %if.else424, !dbg !2861

if.then422:                                       ; preds = %if.end418
  %199 = load ptr, ptr %conf, align 8, !dbg !2862, !tbaa !2270
  %upstream423 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %199, i32 0, i32 0, !dbg !2864
  %max_temp_file_size = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream423, i32 0, i32 9, !dbg !2865
  store i64 1073741824, ptr %max_temp_file_size, align 8, !dbg !2866, !tbaa !2867
  br label %if.end429, !dbg !2868

if.else424:                                       ; preds = %if.end418
  %200 = load ptr, ptr %conf, align 8, !dbg !2869, !tbaa !2270
  %upstream425 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %200, i32 0, i32 0, !dbg !2871
  %max_temp_file_size_conf426 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream425, i32 0, i32 12, !dbg !2872
  %201 = load i64, ptr %max_temp_file_size_conf426, align 8, !dbg !2872, !tbaa !2435
  %202 = load ptr, ptr %conf, align 8, !dbg !2873, !tbaa !2270
  %upstream427 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %202, i32 0, i32 0, !dbg !2874
  %max_temp_file_size428 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream427, i32 0, i32 9, !dbg !2875
  store i64 %201, ptr %max_temp_file_size428, align 8, !dbg !2876, !tbaa !2867
  br label %if.end429

if.end429:                                        ; preds = %if.else424, %if.then422
  %203 = load ptr, ptr %conf, align 8, !dbg !2877, !tbaa !2270
  %upstream430 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %203, i32 0, i32 0, !dbg !2879
  %max_temp_file_size431 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream430, i32 0, i32 9, !dbg !2880
  %204 = load i64, ptr %max_temp_file_size431, align 8, !dbg !2880, !tbaa !2867
  %cmp432 = icmp ne i64 %204, 0, !dbg !2881
  br i1 %cmp432, label %land.lhs.true, label %if.end437, !dbg !2882

land.lhs.true:                                    ; preds = %if.end429
  %205 = load ptr, ptr %conf, align 8, !dbg !2883, !tbaa !2270
  %upstream433 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %205, i32 0, i32 0, !dbg !2884
  %max_temp_file_size434 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream433, i32 0, i32 9, !dbg !2885
  %206 = load i64, ptr %max_temp_file_size434, align 8, !dbg !2885, !tbaa !2867
  %207 = load i64, ptr %size, align 8, !dbg !2886, !tbaa !2704
  %cmp435 = icmp ult i64 %206, %207, !dbg !2887
  br i1 %cmp435, label %if.then436, label %if.end437, !dbg !2888

if.then436:                                       ; preds = %land.lhs.true
  %208 = load ptr, ptr %cf.addr, align 8, !dbg !2889, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %208, i32 noundef 0, ptr noundef @.str.6), !dbg !2891
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2892

if.end437:                                        ; preds = %land.lhs.true, %if.end429
  %209 = load ptr, ptr %conf, align 8, !dbg !2893, !tbaa !2270
  %upstream438 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %209, i32 0, i32 0, !dbg !2893
  %ignore_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream438, i32 0, i32 15, !dbg !2893
  %210 = load i64, ptr %ignore_headers, align 8, !dbg !2893, !tbaa !2895
  %cmp439 = icmp eq i64 %210, 0, !dbg !2893
  br i1 %cmp439, label %if.then440, label %if.end452, !dbg !2896

if.then440:                                       ; preds = %if.end437
  %211 = load ptr, ptr %prev, align 8, !dbg !2897, !tbaa !2270
  %upstream441 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %211, i32 0, i32 0, !dbg !2897
  %ignore_headers442 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream441, i32 0, i32 15, !dbg !2897
  %212 = load i64, ptr %ignore_headers442, align 8, !dbg !2897, !tbaa !2895
  %cmp443 = icmp eq i64 %212, 0, !dbg !2897
  br i1 %cmp443, label %cond.true444, label %cond.false445, !dbg !2897

cond.true444:                                     ; preds = %if.then440
  br label %cond.end448, !dbg !2897

cond.false445:                                    ; preds = %if.then440
  %213 = load ptr, ptr %prev, align 8, !dbg !2897, !tbaa !2270
  %upstream446 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %213, i32 0, i32 0, !dbg !2897
  %ignore_headers447 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream446, i32 0, i32 15, !dbg !2897
  %214 = load i64, ptr %ignore_headers447, align 8, !dbg !2897, !tbaa !2895
  br label %cond.end448, !dbg !2897

cond.end448:                                      ; preds = %cond.false445, %cond.true444
  %cond449 = phi i64 [ 1, %cond.true444 ], [ %214, %cond.false445 ], !dbg !2897
  %215 = load ptr, ptr %conf, align 8, !dbg !2897, !tbaa !2270
  %upstream450 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %215, i32 0, i32 0, !dbg !2897
  %ignore_headers451 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream450, i32 0, i32 15, !dbg !2897
  store i64 %cond449, ptr %ignore_headers451, align 8, !dbg !2897, !tbaa !2895
  br label %if.end452, !dbg !2897

if.end452:                                        ; preds = %cond.end448, %if.end437
  %216 = load ptr, ptr %conf, align 8, !dbg !2899, !tbaa !2270
  %upstream453 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %216, i32 0, i32 0, !dbg !2899
  %next_upstream = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream453, i32 0, i32 16, !dbg !2899
  %217 = load i64, ptr %next_upstream, align 8, !dbg !2899, !tbaa !2901
  %cmp454 = icmp eq i64 %217, 0, !dbg !2899
  br i1 %cmp454, label %if.then455, label %if.end467, !dbg !2902

if.then455:                                       ; preds = %if.end452
  %218 = load ptr, ptr %prev, align 8, !dbg !2903, !tbaa !2270
  %upstream456 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %218, i32 0, i32 0, !dbg !2903
  %next_upstream457 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream456, i32 0, i32 16, !dbg !2903
  %219 = load i64, ptr %next_upstream457, align 8, !dbg !2903, !tbaa !2901
  %cmp458 = icmp eq i64 %219, 0, !dbg !2903
  br i1 %cmp458, label %cond.true459, label %cond.false460, !dbg !2903

cond.true459:                                     ; preds = %if.then455
  br label %cond.end463, !dbg !2903

cond.false460:                                    ; preds = %if.then455
  %220 = load ptr, ptr %prev, align 8, !dbg !2903, !tbaa !2270
  %upstream461 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %220, i32 0, i32 0, !dbg !2903
  %next_upstream462 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream461, i32 0, i32 16, !dbg !2903
  %221 = load i64, ptr %next_upstream462, align 8, !dbg !2903, !tbaa !2901
  br label %cond.end463, !dbg !2903

cond.end463:                                      ; preds = %cond.false460, %cond.true459
  %cond464 = phi i64 [ 7, %cond.true459 ], [ %221, %cond.false460 ], !dbg !2903
  %222 = load ptr, ptr %conf, align 8, !dbg !2903, !tbaa !2270
  %upstream465 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %222, i32 0, i32 0, !dbg !2903
  %next_upstream466 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream465, i32 0, i32 16, !dbg !2903
  store i64 %cond464, ptr %next_upstream466, align 8, !dbg !2903, !tbaa !2901
  br label %if.end467, !dbg !2903

if.end467:                                        ; preds = %cond.end463, %if.end452
  %223 = load ptr, ptr %conf, align 8, !dbg !2905, !tbaa !2270
  %upstream468 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %223, i32 0, i32 0, !dbg !2907
  %next_upstream469 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream468, i32 0, i32 16, !dbg !2908
  %224 = load i64, ptr %next_upstream469, align 8, !dbg !2908, !tbaa !2901
  %and = and i64 %224, 2147483648, !dbg !2909
  %tobool470 = icmp ne i64 %and, 0, !dbg !2909
  br i1 %tobool470, label %if.then471, label %if.end474, !dbg !2910

if.then471:                                       ; preds = %if.end467
  %225 = load ptr, ptr %conf, align 8, !dbg !2911, !tbaa !2270
  %upstream472 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %225, i32 0, i32 0, !dbg !2913
  %next_upstream473 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream472, i32 0, i32 16, !dbg !2914
  store i64 2147483649, ptr %next_upstream473, align 8, !dbg !2915, !tbaa !2901
  br label %if.end474, !dbg !2916

if.end474:                                        ; preds = %if.then471, %if.end467
  %226 = load ptr, ptr %cf.addr, align 8, !dbg !2917, !tbaa !2270
  %227 = load ptr, ptr %conf, align 8, !dbg !2919, !tbaa !2270
  %upstream475 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %227, i32 0, i32 0, !dbg !2920
  %temp_path = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream475, i32 0, i32 27, !dbg !2921
  %228 = load ptr, ptr %prev, align 8, !dbg !2922, !tbaa !2270
  %upstream476 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %228, i32 0, i32 0, !dbg !2923
  %temp_path477 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream476, i32 0, i32 27, !dbg !2924
  %229 = load ptr, ptr %temp_path477, align 8, !dbg !2924, !tbaa !2925
  %call = call ptr @ngx_conf_merge_path_value(ptr noundef %226, ptr noundef %temp_path, ptr noundef %229, ptr noundef @ngx_http_scgi_temp_path), !dbg !2926
  %cmp478 = icmp ne ptr %call, null, !dbg !2927
  br i1 %cmp478, label %if.then479, label %if.end480, !dbg !2928

if.then479:                                       ; preds = %if.end474
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2929

if.end480:                                        ; preds = %if.end474
  %230 = load ptr, ptr %conf, align 8, !dbg !2931, !tbaa !2270
  %upstream481 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %230, i32 0, i32 0, !dbg !2933
  %cache482 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream481, i32 0, i32 51, !dbg !2934
  %bf.load483 = load i8, ptr %cache482, align 8, !dbg !2934
  %bf.shl484 = shl i8 %bf.load483, 6, !dbg !2934
  %bf.ashr485 = ashr i8 %bf.shl484, 6, !dbg !2934
  %bf.cast486 = sext i8 %bf.ashr485 to i32, !dbg !2934
  %cmp487 = icmp eq i32 %bf.cast486, -1, !dbg !2935
  br i1 %cmp487, label %if.then488, label %if.end530, !dbg !2936

if.then488:                                       ; preds = %if.end480
  %231 = load ptr, ptr %conf, align 8, !dbg !2937, !tbaa !2270
  %upstream489 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %231, i32 0, i32 0, !dbg !2937
  %cache490 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream489, i32 0, i32 51, !dbg !2937
  %bf.load491 = load i8, ptr %cache490, align 8, !dbg !2937
  %bf.shl492 = shl i8 %bf.load491, 6, !dbg !2937
  %bf.ashr493 = ashr i8 %bf.shl492, 6, !dbg !2937
  %bf.cast494 = sext i8 %bf.ashr493 to i32, !dbg !2937
  %cmp495 = icmp eq i32 %bf.cast494, -1, !dbg !2937
  br i1 %cmp495, label %if.then496, label %if.end523, !dbg !2940

if.then496:                                       ; preds = %if.then488
  %232 = load ptr, ptr %prev, align 8, !dbg !2941, !tbaa !2270
  %upstream497 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %232, i32 0, i32 0, !dbg !2941
  %cache498 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream497, i32 0, i32 51, !dbg !2941
  %bf.load499 = load i8, ptr %cache498, align 8, !dbg !2941
  %bf.shl500 = shl i8 %bf.load499, 6, !dbg !2941
  %bf.ashr501 = ashr i8 %bf.shl500, 6, !dbg !2941
  %bf.cast502 = sext i8 %bf.ashr501 to i32, !dbg !2941
  %cmp503 = icmp eq i32 %bf.cast502, -1, !dbg !2941
  br i1 %cmp503, label %cond.true504, label %cond.false505, !dbg !2941

cond.true504:                                     ; preds = %if.then496
  br label %cond.end512, !dbg !2941

cond.false505:                                    ; preds = %if.then496
  %233 = load ptr, ptr %prev, align 8, !dbg !2941, !tbaa !2270
  %upstream506 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %233, i32 0, i32 0, !dbg !2941
  %cache507 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream506, i32 0, i32 51, !dbg !2941
  %bf.load508 = load i8, ptr %cache507, align 8, !dbg !2941
  %bf.shl509 = shl i8 %bf.load508, 6, !dbg !2941
  %bf.ashr510 = ashr i8 %bf.shl509, 6, !dbg !2941
  %bf.cast511 = sext i8 %bf.ashr510 to i32, !dbg !2941
  br label %cond.end512, !dbg !2941

cond.end512:                                      ; preds = %cond.false505, %cond.true504
  %cond513 = phi i32 [ 0, %cond.true504 ], [ %bf.cast511, %cond.false505 ], !dbg !2941
  %234 = load ptr, ptr %conf, align 8, !dbg !2941, !tbaa !2270
  %upstream514 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %234, i32 0, i32 0, !dbg !2941
  %cache515 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream514, i32 0, i32 51, !dbg !2941
  %235 = trunc i32 %cond513 to i8, !dbg !2941
  %bf.load516 = load i8, ptr %cache515, align 8, !dbg !2941
  %bf.value517 = and i8 %235, 3, !dbg !2941
  %bf.clear518 = and i8 %bf.load516, -4, !dbg !2941
  %bf.set519 = or i8 %bf.clear518, %bf.value517, !dbg !2941
  store i8 %bf.set519, ptr %cache515, align 8, !dbg !2941
  %bf.result.shl520 = shl i8 %bf.value517, 6, !dbg !2941
  %bf.result.ashr521 = ashr i8 %bf.result.shl520, 6, !dbg !2941
  %bf.result.cast522 = sext i8 %bf.result.ashr521 to i32, !dbg !2941
  br label %if.end523, !dbg !2941

if.end523:                                        ; preds = %cond.end512, %if.then488
  %236 = load ptr, ptr %prev, align 8, !dbg !2943, !tbaa !2270
  %upstream524 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %236, i32 0, i32 0, !dbg !2944
  %cache_zone = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream524, i32 0, i32 33, !dbg !2945
  %237 = load ptr, ptr %cache_zone, align 8, !dbg !2945, !tbaa !2946
  %238 = load ptr, ptr %conf, align 8, !dbg !2947, !tbaa !2270
  %upstream525 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %238, i32 0, i32 0, !dbg !2948
  %cache_zone526 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream525, i32 0, i32 33, !dbg !2949
  store ptr %237, ptr %cache_zone526, align 8, !dbg !2950, !tbaa !2946
  %239 = load ptr, ptr %prev, align 8, !dbg !2951, !tbaa !2270
  %upstream527 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %239, i32 0, i32 0, !dbg !2952
  %cache_value = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream527, i32 0, i32 34, !dbg !2953
  %240 = load ptr, ptr %cache_value, align 8, !dbg !2953, !tbaa !2954
  %241 = load ptr, ptr %conf, align 8, !dbg !2955, !tbaa !2270
  %upstream528 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %241, i32 0, i32 0, !dbg !2956
  %cache_value529 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream528, i32 0, i32 34, !dbg !2957
  store ptr %240, ptr %cache_value529, align 8, !dbg !2958, !tbaa !2954
  br label %if.end530, !dbg !2959

if.end530:                                        ; preds = %if.end523, %if.end480
  %242 = load ptr, ptr %conf, align 8, !dbg !2960, !tbaa !2270
  %upstream531 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %242, i32 0, i32 0, !dbg !2961
  %cache_zone532 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream531, i32 0, i32 33, !dbg !2962
  %243 = load ptr, ptr %cache_zone532, align 8, !dbg !2962, !tbaa !2946
  %tobool533 = icmp ne ptr %243, null, !dbg !2960
  br i1 %tobool533, label %land.lhs.true534, label %if.end541, !dbg !2963

land.lhs.true534:                                 ; preds = %if.end530
  %244 = load ptr, ptr %conf, align 8, !dbg !2964, !tbaa !2270
  %upstream535 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %244, i32 0, i32 0, !dbg !2965
  %cache_zone536 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream535, i32 0, i32 33, !dbg !2966
  %245 = load ptr, ptr %cache_zone536, align 8, !dbg !2966, !tbaa !2946
  %data = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %245, i32 0, i32 0, !dbg !2967
  %246 = load ptr, ptr %data, align 8, !dbg !2967, !tbaa !2968
  %cmp537 = icmp eq ptr %246, null, !dbg !2971
  br i1 %cmp537, label %if.then538, label %if.end541, !dbg !2972

if.then538:                                       ; preds = %land.lhs.true534
  call void @llvm.lifetime.start.p0(i64 8, ptr %shm_zone) #8, !dbg !2973
  tail call void @llvm.dbg.declare(metadata ptr %shm_zone, metadata !2561, metadata !DIExpression()), !dbg !2974
  %247 = load ptr, ptr %conf, align 8, !dbg !2975, !tbaa !2270
  %upstream539 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %247, i32 0, i32 0, !dbg !2976
  %cache_zone540 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream539, i32 0, i32 33, !dbg !2977
  %248 = load ptr, ptr %cache_zone540, align 8, !dbg !2977, !tbaa !2946
  store ptr %248, ptr %shm_zone, align 8, !dbg !2978, !tbaa !2270
  %249 = load ptr, ptr %cf.addr, align 8, !dbg !2979, !tbaa !2270
  %250 = load ptr, ptr %shm_zone, align 8, !dbg !2980, !tbaa !2270
  %shm = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %250, i32 0, i32 1, !dbg !2981
  %name = getelementptr inbounds %struct.ngx_shm_t, ptr %shm, i32 0, i32 2, !dbg !2982
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %249, i32 noundef 0, ptr noundef @.str.7, ptr noundef %name), !dbg !2983
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2984
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %shm_zone) #8, !dbg !2985
  br label %cleanup

if.end541:                                        ; preds = %land.lhs.true534, %if.end530
  %251 = load ptr, ptr %conf, align 8, !dbg !2986, !tbaa !2270
  %upstream542 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %251, i32 0, i32 0, !dbg !2986
  %cache_min_uses = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream542, i32 0, i32 35, !dbg !2986
  %252 = load i64, ptr %cache_min_uses, align 8, !dbg !2986, !tbaa !2459
  %cmp543 = icmp eq i64 %252, -1, !dbg !2986
  br i1 %cmp543, label %if.then544, label %if.end556, !dbg !2988

if.then544:                                       ; preds = %if.end541
  %253 = load ptr, ptr %prev, align 8, !dbg !2989, !tbaa !2270
  %upstream545 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %253, i32 0, i32 0, !dbg !2989
  %cache_min_uses546 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream545, i32 0, i32 35, !dbg !2989
  %254 = load i64, ptr %cache_min_uses546, align 8, !dbg !2989, !tbaa !2459
  %cmp547 = icmp eq i64 %254, -1, !dbg !2989
  br i1 %cmp547, label %cond.true548, label %cond.false549, !dbg !2989

cond.true548:                                     ; preds = %if.then544
  br label %cond.end552, !dbg !2989

cond.false549:                                    ; preds = %if.then544
  %255 = load ptr, ptr %prev, align 8, !dbg !2989, !tbaa !2270
  %upstream550 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %255, i32 0, i32 0, !dbg !2989
  %cache_min_uses551 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream550, i32 0, i32 35, !dbg !2989
  %256 = load i64, ptr %cache_min_uses551, align 8, !dbg !2989, !tbaa !2459
  br label %cond.end552, !dbg !2989

cond.end552:                                      ; preds = %cond.false549, %cond.true548
  %cond553 = phi i64 [ 1, %cond.true548 ], [ %256, %cond.false549 ], !dbg !2989
  %257 = load ptr, ptr %conf, align 8, !dbg !2989, !tbaa !2270
  %upstream554 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %257, i32 0, i32 0, !dbg !2989
  %cache_min_uses555 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream554, i32 0, i32 35, !dbg !2989
  store i64 %cond553, ptr %cache_min_uses555, align 8, !dbg !2989, !tbaa !2459
  br label %if.end556, !dbg !2989

if.end556:                                        ; preds = %cond.end552, %if.end541
  %258 = load ptr, ptr %conf, align 8, !dbg !2991, !tbaa !2270
  %upstream557 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %258, i32 0, i32 0, !dbg !2991
  %cache_max_range_offset = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream557, i32 0, i32 38, !dbg !2991
  %259 = load i64, ptr %cache_max_range_offset, align 8, !dbg !2991, !tbaa !2464
  %cmp558 = icmp eq i64 %259, -1, !dbg !2991
  br i1 %cmp558, label %if.then559, label %if.end571, !dbg !2993

if.then559:                                       ; preds = %if.end556
  %260 = load ptr, ptr %prev, align 8, !dbg !2994, !tbaa !2270
  %upstream560 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %260, i32 0, i32 0, !dbg !2994
  %cache_max_range_offset561 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream560, i32 0, i32 38, !dbg !2994
  %261 = load i64, ptr %cache_max_range_offset561, align 8, !dbg !2994, !tbaa !2464
  %cmp562 = icmp eq i64 %261, -1, !dbg !2994
  br i1 %cmp562, label %cond.true563, label %cond.false564, !dbg !2994

cond.true563:                                     ; preds = %if.then559
  br label %cond.end567, !dbg !2994

cond.false564:                                    ; preds = %if.then559
  %262 = load ptr, ptr %prev, align 8, !dbg !2994, !tbaa !2270
  %upstream565 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %262, i32 0, i32 0, !dbg !2994
  %cache_max_range_offset566 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream565, i32 0, i32 38, !dbg !2994
  %263 = load i64, ptr %cache_max_range_offset566, align 8, !dbg !2994, !tbaa !2464
  br label %cond.end567, !dbg !2994

cond.end567:                                      ; preds = %cond.false564, %cond.true563
  %cond568 = phi i64 [ 9223372036854775807, %cond.true563 ], [ %263, %cond.false564 ], !dbg !2994
  %264 = load ptr, ptr %conf, align 8, !dbg !2994, !tbaa !2270
  %upstream569 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %264, i32 0, i32 0, !dbg !2994
  %cache_max_range_offset570 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream569, i32 0, i32 38, !dbg !2994
  store i64 %cond568, ptr %cache_max_range_offset570, align 8, !dbg !2994, !tbaa !2464
  br label %if.end571, !dbg !2994

if.end571:                                        ; preds = %cond.end567, %if.end556
  %265 = load ptr, ptr %conf, align 8, !dbg !2996, !tbaa !2270
  %upstream572 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %265, i32 0, i32 0, !dbg !2996
  %cache_use_stale = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream572, i32 0, i32 36, !dbg !2996
  %266 = load i64, ptr %cache_use_stale, align 8, !dbg !2996, !tbaa !2998
  %cmp573 = icmp eq i64 %266, 0, !dbg !2996
  br i1 %cmp573, label %if.then574, label %if.end586, !dbg !2999

if.then574:                                       ; preds = %if.end571
  %267 = load ptr, ptr %prev, align 8, !dbg !3000, !tbaa !2270
  %upstream575 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %267, i32 0, i32 0, !dbg !3000
  %cache_use_stale576 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream575, i32 0, i32 36, !dbg !3000
  %268 = load i64, ptr %cache_use_stale576, align 8, !dbg !3000, !tbaa !2998
  %cmp577 = icmp eq i64 %268, 0, !dbg !3000
  br i1 %cmp577, label %cond.true578, label %cond.false579, !dbg !3000

cond.true578:                                     ; preds = %if.then574
  br label %cond.end582, !dbg !3000

cond.false579:                                    ; preds = %if.then574
  %269 = load ptr, ptr %prev, align 8, !dbg !3000, !tbaa !2270
  %upstream580 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %269, i32 0, i32 0, !dbg !3000
  %cache_use_stale581 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream580, i32 0, i32 36, !dbg !3000
  %270 = load i64, ptr %cache_use_stale581, align 8, !dbg !3000, !tbaa !2998
  br label %cond.end582, !dbg !3000

cond.end582:                                      ; preds = %cond.false579, %cond.true578
  %cond583 = phi i64 [ 2147483649, %cond.true578 ], [ %270, %cond.false579 ], !dbg !3000
  %271 = load ptr, ptr %conf, align 8, !dbg !3000, !tbaa !2270
  %upstream584 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %271, i32 0, i32 0, !dbg !3000
  %cache_use_stale585 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream584, i32 0, i32 36, !dbg !3000
  store i64 %cond583, ptr %cache_use_stale585, align 8, !dbg !3000, !tbaa !2998
  br label %if.end586, !dbg !3000

if.end586:                                        ; preds = %cond.end582, %if.end571
  %272 = load ptr, ptr %conf, align 8, !dbg !3002, !tbaa !2270
  %upstream587 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %272, i32 0, i32 0, !dbg !3004
  %cache_use_stale588 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream587, i32 0, i32 36, !dbg !3005
  %273 = load i64, ptr %cache_use_stale588, align 8, !dbg !3005, !tbaa !2998
  %and589 = and i64 %273, 2147483648, !dbg !3006
  %tobool590 = icmp ne i64 %and589, 0, !dbg !3006
  br i1 %tobool590, label %if.then591, label %if.end594, !dbg !3007

if.then591:                                       ; preds = %if.end586
  %274 = load ptr, ptr %conf, align 8, !dbg !3008, !tbaa !2270
  %upstream592 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %274, i32 0, i32 0, !dbg !3010
  %cache_use_stale593 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream592, i32 0, i32 36, !dbg !3011
  store i64 2147483649, ptr %cache_use_stale593, align 8, !dbg !3012, !tbaa !2998
  br label %if.end594, !dbg !3013

if.end594:                                        ; preds = %if.then591, %if.end586
  %275 = load ptr, ptr %conf, align 8, !dbg !3014, !tbaa !2270
  %upstream595 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %275, i32 0, i32 0, !dbg !3016
  %cache_use_stale596 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream595, i32 0, i32 36, !dbg !3017
  %276 = load i64, ptr %cache_use_stale596, align 8, !dbg !3017, !tbaa !2998
  %and597 = and i64 %276, 2, !dbg !3018
  %tobool598 = icmp ne i64 %and597, 0, !dbg !3018
  br i1 %tobool598, label %if.then599, label %if.end602, !dbg !3019

if.then599:                                       ; preds = %if.end594
  %277 = load ptr, ptr %conf, align 8, !dbg !3020, !tbaa !2270
  %upstream600 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %277, i32 0, i32 0, !dbg !3022
  %cache_use_stale601 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream600, i32 0, i32 36, !dbg !3023
  %278 = load i64, ptr %cache_use_stale601, align 8, !dbg !3024, !tbaa !2998
  %or = or i64 %278, 1073741824, !dbg !3024
  store i64 %or, ptr %cache_use_stale601, align 8, !dbg !3024, !tbaa !2998
  br label %if.end602, !dbg !3025

if.end602:                                        ; preds = %if.then599, %if.end594
  %279 = load ptr, ptr %conf, align 8, !dbg !3026, !tbaa !2270
  %upstream603 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %279, i32 0, i32 0, !dbg !3028
  %cache_methods = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream603, i32 0, i32 37, !dbg !3029
  %280 = load i64, ptr %cache_methods, align 8, !dbg !3029, !tbaa !3030
  %cmp604 = icmp eq i64 %280, 0, !dbg !3031
  br i1 %cmp604, label %if.then605, label %if.end610, !dbg !3032

if.then605:                                       ; preds = %if.end602
  %281 = load ptr, ptr %prev, align 8, !dbg !3033, !tbaa !2270
  %upstream606 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %281, i32 0, i32 0, !dbg !3035
  %cache_methods607 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream606, i32 0, i32 37, !dbg !3036
  %282 = load i64, ptr %cache_methods607, align 8, !dbg !3036, !tbaa !3030
  %283 = load ptr, ptr %conf, align 8, !dbg !3037, !tbaa !2270
  %upstream608 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %283, i32 0, i32 0, !dbg !3038
  %cache_methods609 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream608, i32 0, i32 37, !dbg !3039
  store i64 %282, ptr %cache_methods609, align 8, !dbg !3040, !tbaa !3030
  br label %if.end610, !dbg !3041

if.end610:                                        ; preds = %if.then605, %if.end602
  %284 = load ptr, ptr %conf, align 8, !dbg !3042, !tbaa !2270
  %upstream611 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %284, i32 0, i32 0, !dbg !3043
  %cache_methods612 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream611, i32 0, i32 37, !dbg !3044
  %285 = load i64, ptr %cache_methods612, align 8, !dbg !3045, !tbaa !3030
  %or613 = or i64 %285, 6, !dbg !3045
  store i64 %or613, ptr %cache_methods612, align 8, !dbg !3045, !tbaa !3030
  %286 = load ptr, ptr %conf, align 8, !dbg !3046, !tbaa !2270
  %upstream614 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %286, i32 0, i32 0, !dbg !3046
  %cache_bypass = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream614, i32 0, i32 46, !dbg !3046
  %287 = load ptr, ptr %cache_bypass, align 8, !dbg !3046, !tbaa !2469
  %cmp615 = icmp eq ptr %287, inttoptr (i64 -1 to ptr), !dbg !3046
  br i1 %cmp615, label %if.then616, label %if.end628, !dbg !3048

if.then616:                                       ; preds = %if.end610
  %288 = load ptr, ptr %prev, align 8, !dbg !3049, !tbaa !2270
  %upstream617 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %288, i32 0, i32 0, !dbg !3049
  %cache_bypass618 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream617, i32 0, i32 46, !dbg !3049
  %289 = load ptr, ptr %cache_bypass618, align 8, !dbg !3049, !tbaa !2469
  %cmp619 = icmp eq ptr %289, inttoptr (i64 -1 to ptr), !dbg !3049
  br i1 %cmp619, label %cond.true620, label %cond.false621, !dbg !3049

cond.true620:                                     ; preds = %if.then616
  br label %cond.end624, !dbg !3049

cond.false621:                                    ; preds = %if.then616
  %290 = load ptr, ptr %prev, align 8, !dbg !3049, !tbaa !2270
  %upstream622 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %290, i32 0, i32 0, !dbg !3049
  %cache_bypass623 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream622, i32 0, i32 46, !dbg !3049
  %291 = load ptr, ptr %cache_bypass623, align 8, !dbg !3049, !tbaa !2469
  br label %cond.end624, !dbg !3049

cond.end624:                                      ; preds = %cond.false621, %cond.true620
  %cond625 = phi ptr [ null, %cond.true620 ], [ %291, %cond.false621 ], !dbg !3049
  %292 = load ptr, ptr %conf, align 8, !dbg !3049, !tbaa !2270
  %upstream626 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %292, i32 0, i32 0, !dbg !3049
  %cache_bypass627 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream626, i32 0, i32 46, !dbg !3049
  store ptr %cond625, ptr %cache_bypass627, align 8, !dbg !3049, !tbaa !2469
  br label %if.end628, !dbg !3049

if.end628:                                        ; preds = %cond.end624, %if.end610
  %293 = load ptr, ptr %conf, align 8, !dbg !3051, !tbaa !2270
  %upstream629 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %293, i32 0, i32 0, !dbg !3051
  %no_cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream629, i32 0, i32 48, !dbg !3051
  %294 = load ptr, ptr %no_cache, align 8, !dbg !3051, !tbaa !2474
  %cmp630 = icmp eq ptr %294, inttoptr (i64 -1 to ptr), !dbg !3051
  br i1 %cmp630, label %if.then631, label %if.end643, !dbg !3053

if.then631:                                       ; preds = %if.end628
  %295 = load ptr, ptr %prev, align 8, !dbg !3054, !tbaa !2270
  %upstream632 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %295, i32 0, i32 0, !dbg !3054
  %no_cache633 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream632, i32 0, i32 48, !dbg !3054
  %296 = load ptr, ptr %no_cache633, align 8, !dbg !3054, !tbaa !2474
  %cmp634 = icmp eq ptr %296, inttoptr (i64 -1 to ptr), !dbg !3054
  br i1 %cmp634, label %cond.true635, label %cond.false636, !dbg !3054

cond.true635:                                     ; preds = %if.then631
  br label %cond.end639, !dbg !3054

cond.false636:                                    ; preds = %if.then631
  %297 = load ptr, ptr %prev, align 8, !dbg !3054, !tbaa !2270
  %upstream637 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %297, i32 0, i32 0, !dbg !3054
  %no_cache638 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream637, i32 0, i32 48, !dbg !3054
  %298 = load ptr, ptr %no_cache638, align 8, !dbg !3054, !tbaa !2474
  br label %cond.end639, !dbg !3054

cond.end639:                                      ; preds = %cond.false636, %cond.true635
  %cond640 = phi ptr [ null, %cond.true635 ], [ %298, %cond.false636 ], !dbg !3054
  %299 = load ptr, ptr %conf, align 8, !dbg !3054, !tbaa !2270
  %upstream641 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %299, i32 0, i32 0, !dbg !3054
  %no_cache642 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream641, i32 0, i32 48, !dbg !3054
  store ptr %cond640, ptr %no_cache642, align 8, !dbg !3054, !tbaa !2474
  br label %if.end643, !dbg !3054

if.end643:                                        ; preds = %cond.end639, %if.end628
  %300 = load ptr, ptr %conf, align 8, !dbg !3056, !tbaa !2270
  %upstream644 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %300, i32 0, i32 0, !dbg !3056
  %cache_valid = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream644, i32 0, i32 45, !dbg !3056
  %301 = load ptr, ptr %cache_valid, align 8, !dbg !3056, !tbaa !2479
  %cmp645 = icmp eq ptr %301, inttoptr (i64 -1 to ptr), !dbg !3056
  br i1 %cmp645, label %if.then646, label %if.end658, !dbg !3058

if.then646:                                       ; preds = %if.end643
  %302 = load ptr, ptr %prev, align 8, !dbg !3059, !tbaa !2270
  %upstream647 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %302, i32 0, i32 0, !dbg !3059
  %cache_valid648 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream647, i32 0, i32 45, !dbg !3059
  %303 = load ptr, ptr %cache_valid648, align 8, !dbg !3059, !tbaa !2479
  %cmp649 = icmp eq ptr %303, inttoptr (i64 -1 to ptr), !dbg !3059
  br i1 %cmp649, label %cond.true650, label %cond.false651, !dbg !3059

cond.true650:                                     ; preds = %if.then646
  br label %cond.end654, !dbg !3059

cond.false651:                                    ; preds = %if.then646
  %304 = load ptr, ptr %prev, align 8, !dbg !3059, !tbaa !2270
  %upstream652 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %304, i32 0, i32 0, !dbg !3059
  %cache_valid653 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream652, i32 0, i32 45, !dbg !3059
  %305 = load ptr, ptr %cache_valid653, align 8, !dbg !3059, !tbaa !2479
  br label %cond.end654, !dbg !3059

cond.end654:                                      ; preds = %cond.false651, %cond.true650
  %cond655 = phi ptr [ null, %cond.true650 ], [ %305, %cond.false651 ], !dbg !3059
  %306 = load ptr, ptr %conf, align 8, !dbg !3059, !tbaa !2270
  %upstream656 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %306, i32 0, i32 0, !dbg !3059
  %cache_valid657 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream656, i32 0, i32 45, !dbg !3059
  store ptr %cond655, ptr %cache_valid657, align 8, !dbg !3059, !tbaa !2479
  br label %if.end658, !dbg !3059

if.end658:                                        ; preds = %cond.end654, %if.end643
  %307 = load ptr, ptr %conf, align 8, !dbg !3061, !tbaa !2270
  %cache_key = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %307, i32 0, i32 6, !dbg !3063
  %value = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %cache_key, i32 0, i32 0, !dbg !3064
  %data659 = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 1, !dbg !3065
  %308 = load ptr, ptr %data659, align 8, !dbg !3065, !tbaa !3066
  %cmp660 = icmp eq ptr %308, null, !dbg !3067
  br i1 %cmp660, label %if.then661, label %if.end664, !dbg !3068

if.then661:                                       ; preds = %if.end658
  %309 = load ptr, ptr %conf, align 8, !dbg !3069, !tbaa !2270
  %cache_key662 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %309, i32 0, i32 6, !dbg !3071
  %310 = load ptr, ptr %prev, align 8, !dbg !3072, !tbaa !2270
  %cache_key663 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %310, i32 0, i32 6, !dbg !3073
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cache_key662, ptr align 8 %cache_key663, i64 40, i1 false), !dbg !3073, !tbaa.struct !3074
  br label %if.end664, !dbg !3075

if.end664:                                        ; preds = %if.then661, %if.end658
  %311 = load ptr, ptr %conf, align 8, !dbg !3076, !tbaa !2270
  %upstream665 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %311, i32 0, i32 0, !dbg !3078
  %cache666 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream665, i32 0, i32 51, !dbg !3079
  %bf.load667 = load i8, ptr %cache666, align 8, !dbg !3079
  %bf.shl668 = shl i8 %bf.load667, 6, !dbg !3079
  %bf.ashr669 = ashr i8 %bf.shl668, 6, !dbg !3079
  %bf.cast670 = sext i8 %bf.ashr669 to i32, !dbg !3079
  %tobool671 = icmp ne i32 %bf.cast670, 0, !dbg !3076
  br i1 %tobool671, label %land.lhs.true672, label %if.end678, !dbg !3080

land.lhs.true672:                                 ; preds = %if.end664
  %312 = load ptr, ptr %conf, align 8, !dbg !3081, !tbaa !2270
  %cache_key673 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %312, i32 0, i32 6, !dbg !3082
  %value674 = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %cache_key673, i32 0, i32 0, !dbg !3083
  %data675 = getelementptr inbounds %struct.ngx_str_t, ptr %value674, i32 0, i32 1, !dbg !3084
  %313 = load ptr, ptr %data675, align 8, !dbg !3084, !tbaa !3066
  %cmp676 = icmp eq ptr %313, null, !dbg !3085
  br i1 %cmp676, label %if.then677, label %if.end678, !dbg !3086

if.then677:                                       ; preds = %land.lhs.true672
  %314 = load ptr, ptr %cf.addr, align 8, !dbg !3087, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 5, ptr noundef %314, i32 noundef 0, ptr noundef @.str.8), !dbg !3089
  br label %if.end678, !dbg !3090

if.end678:                                        ; preds = %if.then677, %land.lhs.true672, %if.end664
  %315 = load ptr, ptr %conf, align 8, !dbg !3091, !tbaa !2270
  %upstream679 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %315, i32 0, i32 0, !dbg !3091
  %cache_lock = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream679, i32 0, i32 39, !dbg !3091
  %316 = load i64, ptr %cache_lock, align 8, !dbg !3091, !tbaa !2484
  %cmp680 = icmp eq i64 %316, -1, !dbg !3091
  br i1 %cmp680, label %if.then681, label %if.end693, !dbg !3093

if.then681:                                       ; preds = %if.end678
  %317 = load ptr, ptr %prev, align 8, !dbg !3094, !tbaa !2270
  %upstream682 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %317, i32 0, i32 0, !dbg !3094
  %cache_lock683 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream682, i32 0, i32 39, !dbg !3094
  %318 = load i64, ptr %cache_lock683, align 8, !dbg !3094, !tbaa !2484
  %cmp684 = icmp eq i64 %318, -1, !dbg !3094
  br i1 %cmp684, label %cond.true685, label %cond.false686, !dbg !3094

cond.true685:                                     ; preds = %if.then681
  br label %cond.end689, !dbg !3094

cond.false686:                                    ; preds = %if.then681
  %319 = load ptr, ptr %prev, align 8, !dbg !3094, !tbaa !2270
  %upstream687 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %319, i32 0, i32 0, !dbg !3094
  %cache_lock688 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream687, i32 0, i32 39, !dbg !3094
  %320 = load i64, ptr %cache_lock688, align 8, !dbg !3094, !tbaa !2484
  br label %cond.end689, !dbg !3094

cond.end689:                                      ; preds = %cond.false686, %cond.true685
  %cond690 = phi i64 [ 0, %cond.true685 ], [ %320, %cond.false686 ], !dbg !3094
  %321 = load ptr, ptr %conf, align 8, !dbg !3094, !tbaa !2270
  %upstream691 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %321, i32 0, i32 0, !dbg !3094
  %cache_lock692 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream691, i32 0, i32 39, !dbg !3094
  store i64 %cond690, ptr %cache_lock692, align 8, !dbg !3094, !tbaa !2484
  br label %if.end693, !dbg !3094

if.end693:                                        ; preds = %cond.end689, %if.end678
  %322 = load ptr, ptr %conf, align 8, !dbg !3096, !tbaa !2270
  %upstream694 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %322, i32 0, i32 0, !dbg !3096
  %cache_lock_timeout = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream694, i32 0, i32 40, !dbg !3096
  %323 = load i64, ptr %cache_lock_timeout, align 8, !dbg !3096, !tbaa !2489
  %cmp695 = icmp eq i64 %323, -1, !dbg !3096
  br i1 %cmp695, label %if.then696, label %if.end708, !dbg !3098

if.then696:                                       ; preds = %if.end693
  %324 = load ptr, ptr %prev, align 8, !dbg !3099, !tbaa !2270
  %upstream697 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %324, i32 0, i32 0, !dbg !3099
  %cache_lock_timeout698 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream697, i32 0, i32 40, !dbg !3099
  %325 = load i64, ptr %cache_lock_timeout698, align 8, !dbg !3099, !tbaa !2489
  %cmp699 = icmp eq i64 %325, -1, !dbg !3099
  br i1 %cmp699, label %cond.true700, label %cond.false701, !dbg !3099

cond.true700:                                     ; preds = %if.then696
  br label %cond.end704, !dbg !3099

cond.false701:                                    ; preds = %if.then696
  %326 = load ptr, ptr %prev, align 8, !dbg !3099, !tbaa !2270
  %upstream702 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %326, i32 0, i32 0, !dbg !3099
  %cache_lock_timeout703 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream702, i32 0, i32 40, !dbg !3099
  %327 = load i64, ptr %cache_lock_timeout703, align 8, !dbg !3099, !tbaa !2489
  br label %cond.end704, !dbg !3099

cond.end704:                                      ; preds = %cond.false701, %cond.true700
  %cond705 = phi i64 [ 5000, %cond.true700 ], [ %327, %cond.false701 ], !dbg !3099
  %328 = load ptr, ptr %conf, align 8, !dbg !3099, !tbaa !2270
  %upstream706 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %328, i32 0, i32 0, !dbg !3099
  %cache_lock_timeout707 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream706, i32 0, i32 40, !dbg !3099
  store i64 %cond705, ptr %cache_lock_timeout707, align 8, !dbg !3099, !tbaa !2489
  br label %if.end708, !dbg !3099

if.end708:                                        ; preds = %cond.end704, %if.end693
  %329 = load ptr, ptr %conf, align 8, !dbg !3101, !tbaa !2270
  %upstream709 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %329, i32 0, i32 0, !dbg !3101
  %cache_lock_age = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream709, i32 0, i32 41, !dbg !3101
  %330 = load i64, ptr %cache_lock_age, align 8, !dbg !3101, !tbaa !2494
  %cmp710 = icmp eq i64 %330, -1, !dbg !3101
  br i1 %cmp710, label %if.then711, label %if.end723, !dbg !3103

if.then711:                                       ; preds = %if.end708
  %331 = load ptr, ptr %prev, align 8, !dbg !3104, !tbaa !2270
  %upstream712 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %331, i32 0, i32 0, !dbg !3104
  %cache_lock_age713 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream712, i32 0, i32 41, !dbg !3104
  %332 = load i64, ptr %cache_lock_age713, align 8, !dbg !3104, !tbaa !2494
  %cmp714 = icmp eq i64 %332, -1, !dbg !3104
  br i1 %cmp714, label %cond.true715, label %cond.false716, !dbg !3104

cond.true715:                                     ; preds = %if.then711
  br label %cond.end719, !dbg !3104

cond.false716:                                    ; preds = %if.then711
  %333 = load ptr, ptr %prev, align 8, !dbg !3104, !tbaa !2270
  %upstream717 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %333, i32 0, i32 0, !dbg !3104
  %cache_lock_age718 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream717, i32 0, i32 41, !dbg !3104
  %334 = load i64, ptr %cache_lock_age718, align 8, !dbg !3104, !tbaa !2494
  br label %cond.end719, !dbg !3104

cond.end719:                                      ; preds = %cond.false716, %cond.true715
  %cond720 = phi i64 [ 5000, %cond.true715 ], [ %334, %cond.false716 ], !dbg !3104
  %335 = load ptr, ptr %conf, align 8, !dbg !3104, !tbaa !2270
  %upstream721 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %335, i32 0, i32 0, !dbg !3104
  %cache_lock_age722 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream721, i32 0, i32 41, !dbg !3104
  store i64 %cond720, ptr %cache_lock_age722, align 8, !dbg !3104, !tbaa !2494
  br label %if.end723, !dbg !3104

if.end723:                                        ; preds = %cond.end719, %if.end708
  %336 = load ptr, ptr %conf, align 8, !dbg !3106, !tbaa !2270
  %upstream724 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %336, i32 0, i32 0, !dbg !3106
  %cache_revalidate = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream724, i32 0, i32 42, !dbg !3106
  %337 = load i64, ptr %cache_revalidate, align 8, !dbg !3106, !tbaa !2499
  %cmp725 = icmp eq i64 %337, -1, !dbg !3106
  br i1 %cmp725, label %if.then726, label %if.end738, !dbg !3108

if.then726:                                       ; preds = %if.end723
  %338 = load ptr, ptr %prev, align 8, !dbg !3109, !tbaa !2270
  %upstream727 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %338, i32 0, i32 0, !dbg !3109
  %cache_revalidate728 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream727, i32 0, i32 42, !dbg !3109
  %339 = load i64, ptr %cache_revalidate728, align 8, !dbg !3109, !tbaa !2499
  %cmp729 = icmp eq i64 %339, -1, !dbg !3109
  br i1 %cmp729, label %cond.true730, label %cond.false731, !dbg !3109

cond.true730:                                     ; preds = %if.then726
  br label %cond.end734, !dbg !3109

cond.false731:                                    ; preds = %if.then726
  %340 = load ptr, ptr %prev, align 8, !dbg !3109, !tbaa !2270
  %upstream732 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %340, i32 0, i32 0, !dbg !3109
  %cache_revalidate733 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream732, i32 0, i32 42, !dbg !3109
  %341 = load i64, ptr %cache_revalidate733, align 8, !dbg !3109, !tbaa !2499
  br label %cond.end734, !dbg !3109

cond.end734:                                      ; preds = %cond.false731, %cond.true730
  %cond735 = phi i64 [ 0, %cond.true730 ], [ %341, %cond.false731 ], !dbg !3109
  %342 = load ptr, ptr %conf, align 8, !dbg !3109, !tbaa !2270
  %upstream736 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %342, i32 0, i32 0, !dbg !3109
  %cache_revalidate737 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream736, i32 0, i32 42, !dbg !3109
  store i64 %cond735, ptr %cache_revalidate737, align 8, !dbg !3109, !tbaa !2499
  br label %if.end738, !dbg !3109

if.end738:                                        ; preds = %cond.end734, %if.end723
  %343 = load ptr, ptr %conf, align 8, !dbg !3111, !tbaa !2270
  %upstream739 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %343, i32 0, i32 0, !dbg !3111
  %cache_background_update = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream739, i32 0, i32 44, !dbg !3111
  %344 = load i64, ptr %cache_background_update, align 8, !dbg !3111, !tbaa !2504
  %cmp740 = icmp eq i64 %344, -1, !dbg !3111
  br i1 %cmp740, label %if.then741, label %if.end753, !dbg !3113

if.then741:                                       ; preds = %if.end738
  %345 = load ptr, ptr %prev, align 8, !dbg !3114, !tbaa !2270
  %upstream742 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %345, i32 0, i32 0, !dbg !3114
  %cache_background_update743 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream742, i32 0, i32 44, !dbg !3114
  %346 = load i64, ptr %cache_background_update743, align 8, !dbg !3114, !tbaa !2504
  %cmp744 = icmp eq i64 %346, -1, !dbg !3114
  br i1 %cmp744, label %cond.true745, label %cond.false746, !dbg !3114

cond.true745:                                     ; preds = %if.then741
  br label %cond.end749, !dbg !3114

cond.false746:                                    ; preds = %if.then741
  %347 = load ptr, ptr %prev, align 8, !dbg !3114, !tbaa !2270
  %upstream747 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %347, i32 0, i32 0, !dbg !3114
  %cache_background_update748 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream747, i32 0, i32 44, !dbg !3114
  %348 = load i64, ptr %cache_background_update748, align 8, !dbg !3114, !tbaa !2504
  br label %cond.end749, !dbg !3114

cond.end749:                                      ; preds = %cond.false746, %cond.true745
  %cond750 = phi i64 [ 0, %cond.true745 ], [ %348, %cond.false746 ], !dbg !3114
  %349 = load ptr, ptr %conf, align 8, !dbg !3114, !tbaa !2270
  %upstream751 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %349, i32 0, i32 0, !dbg !3114
  %cache_background_update752 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream751, i32 0, i32 44, !dbg !3114
  store i64 %cond750, ptr %cache_background_update752, align 8, !dbg !3114, !tbaa !2504
  br label %if.end753, !dbg !3114

if.end753:                                        ; preds = %cond.end749, %if.end738
  %350 = load ptr, ptr %conf, align 8, !dbg !3116, !tbaa !2270
  %upstream754 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %350, i32 0, i32 0, !dbg !3116
  %pass_request_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream754, i32 0, i32 21, !dbg !3116
  %351 = load i64, ptr %pass_request_headers, align 8, !dbg !3116, !tbaa !2445
  %cmp755 = icmp eq i64 %351, -1, !dbg !3116
  br i1 %cmp755, label %if.then756, label %if.end768, !dbg !3118

if.then756:                                       ; preds = %if.end753
  %352 = load ptr, ptr %prev, align 8, !dbg !3119, !tbaa !2270
  %upstream757 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %352, i32 0, i32 0, !dbg !3119
  %pass_request_headers758 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream757, i32 0, i32 21, !dbg !3119
  %353 = load i64, ptr %pass_request_headers758, align 8, !dbg !3119, !tbaa !2445
  %cmp759 = icmp eq i64 %353, -1, !dbg !3119
  br i1 %cmp759, label %cond.true760, label %cond.false761, !dbg !3119

cond.true760:                                     ; preds = %if.then756
  br label %cond.end764, !dbg !3119

cond.false761:                                    ; preds = %if.then756
  %354 = load ptr, ptr %prev, align 8, !dbg !3119, !tbaa !2270
  %upstream762 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %354, i32 0, i32 0, !dbg !3119
  %pass_request_headers763 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream762, i32 0, i32 21, !dbg !3119
  %355 = load i64, ptr %pass_request_headers763, align 8, !dbg !3119, !tbaa !2445
  br label %cond.end764, !dbg !3119

cond.end764:                                      ; preds = %cond.false761, %cond.true760
  %cond765 = phi i64 [ 1, %cond.true760 ], [ %355, %cond.false761 ], !dbg !3119
  %356 = load ptr, ptr %conf, align 8, !dbg !3119, !tbaa !2270
  %upstream766 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %356, i32 0, i32 0, !dbg !3119
  %pass_request_headers767 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream766, i32 0, i32 21, !dbg !3119
  store i64 %cond765, ptr %pass_request_headers767, align 8, !dbg !3119, !tbaa !2445
  br label %if.end768, !dbg !3119

if.end768:                                        ; preds = %cond.end764, %if.end753
  %357 = load ptr, ptr %conf, align 8, !dbg !3121, !tbaa !2270
  %upstream769 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %357, i32 0, i32 0, !dbg !3121
  %pass_request_body = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream769, i32 0, i32 22, !dbg !3121
  %358 = load i64, ptr %pass_request_body, align 8, !dbg !3121, !tbaa !2450
  %cmp770 = icmp eq i64 %358, -1, !dbg !3121
  br i1 %cmp770, label %if.then771, label %if.end783, !dbg !3123

if.then771:                                       ; preds = %if.end768
  %359 = load ptr, ptr %prev, align 8, !dbg !3124, !tbaa !2270
  %upstream772 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %359, i32 0, i32 0, !dbg !3124
  %pass_request_body773 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream772, i32 0, i32 22, !dbg !3124
  %360 = load i64, ptr %pass_request_body773, align 8, !dbg !3124, !tbaa !2450
  %cmp774 = icmp eq i64 %360, -1, !dbg !3124
  br i1 %cmp774, label %cond.true775, label %cond.false776, !dbg !3124

cond.true775:                                     ; preds = %if.then771
  br label %cond.end779, !dbg !3124

cond.false776:                                    ; preds = %if.then771
  %361 = load ptr, ptr %prev, align 8, !dbg !3124, !tbaa !2270
  %upstream777 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %361, i32 0, i32 0, !dbg !3124
  %pass_request_body778 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream777, i32 0, i32 22, !dbg !3124
  %362 = load i64, ptr %pass_request_body778, align 8, !dbg !3124, !tbaa !2450
  br label %cond.end779, !dbg !3124

cond.end779:                                      ; preds = %cond.false776, %cond.true775
  %cond780 = phi i64 [ 1, %cond.true775 ], [ %362, %cond.false776 ], !dbg !3124
  %363 = load ptr, ptr %conf, align 8, !dbg !3124, !tbaa !2270
  %upstream781 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %363, i32 0, i32 0, !dbg !3124
  %pass_request_body782 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream781, i32 0, i32 22, !dbg !3124
  store i64 %cond780, ptr %pass_request_body782, align 8, !dbg !3124, !tbaa !2450
  br label %if.end783, !dbg !3124

if.end783:                                        ; preds = %cond.end779, %if.end768
  %364 = load ptr, ptr %conf, align 8, !dbg !3126, !tbaa !2270
  %upstream784 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %364, i32 0, i32 0, !dbg !3126
  %intercept_errors = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream784, i32 0, i32 24, !dbg !3126
  %365 = load i64, ptr %intercept_errors, align 8, !dbg !3126, !tbaa !2519
  %cmp785 = icmp eq i64 %365, -1, !dbg !3126
  br i1 %cmp785, label %if.then786, label %if.end798, !dbg !3128

if.then786:                                       ; preds = %if.end783
  %366 = load ptr, ptr %prev, align 8, !dbg !3129, !tbaa !2270
  %upstream787 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %366, i32 0, i32 0, !dbg !3129
  %intercept_errors788 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream787, i32 0, i32 24, !dbg !3129
  %367 = load i64, ptr %intercept_errors788, align 8, !dbg !3129, !tbaa !2519
  %cmp789 = icmp eq i64 %367, -1, !dbg !3129
  br i1 %cmp789, label %cond.true790, label %cond.false791, !dbg !3129

cond.true790:                                     ; preds = %if.then786
  br label %cond.end794, !dbg !3129

cond.false791:                                    ; preds = %if.then786
  %368 = load ptr, ptr %prev, align 8, !dbg !3129, !tbaa !2270
  %upstream792 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %368, i32 0, i32 0, !dbg !3129
  %intercept_errors793 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream792, i32 0, i32 24, !dbg !3129
  %369 = load i64, ptr %intercept_errors793, align 8, !dbg !3129, !tbaa !2519
  br label %cond.end794, !dbg !3129

cond.end794:                                      ; preds = %cond.false791, %cond.true790
  %cond795 = phi i64 [ 0, %cond.true790 ], [ %369, %cond.false791 ], !dbg !3129
  %370 = load ptr, ptr %conf, align 8, !dbg !3129, !tbaa !2270
  %upstream796 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %370, i32 0, i32 0, !dbg !3129
  %intercept_errors797 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream796, i32 0, i32 24, !dbg !3129
  store i64 %cond795, ptr %intercept_errors797, align 8, !dbg !3129, !tbaa !2519
  br label %if.end798, !dbg !3129

if.end798:                                        ; preds = %cond.end794, %if.end783
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 2, !dbg !3131
  store i64 512, ptr %max_size, align 8, !dbg !3132, !tbaa !3133
  %371 = load i64, ptr @ngx_cacheline_size, align 8, !dbg !3135, !tbaa !2704
  %sub799 = sub i64 %371, 1, !dbg !3135
  %add = add i64 64, %sub799, !dbg !3135
  %372 = load i64, ptr @ngx_cacheline_size, align 8, !dbg !3135, !tbaa !2704
  %sub800 = sub i64 %372, 1, !dbg !3135
  %not = xor i64 %sub800, -1, !dbg !3135
  %and801 = and i64 %add, %not, !dbg !3135
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 3, !dbg !3136
  store i64 %and801, ptr %bucket_size, align 8, !dbg !3137, !tbaa !3138
  %name802 = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 4, !dbg !3139
  store ptr @.str.9, ptr %name802, align 8, !dbg !3140, !tbaa !3141
  %373 = load ptr, ptr %cf.addr, align 8, !dbg !3142, !tbaa !2270
  %374 = load ptr, ptr %conf, align 8, !dbg !3144, !tbaa !2270
  %upstream803 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %374, i32 0, i32 0, !dbg !3145
  %375 = load ptr, ptr %prev, align 8, !dbg !3146, !tbaa !2270
  %upstream804 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %375, i32 0, i32 0, !dbg !3147
  %call805 = call i64 @ngx_http_upstream_hide_headers_hash(ptr noundef %373, ptr noundef %upstream803, ptr noundef %upstream804, ptr noundef @ngx_http_scgi_hide_headers, ptr noundef %hash), !dbg !3148
  %cmp806 = icmp ne i64 %call805, 0, !dbg !3149
  br i1 %cmp806, label %if.then807, label %if.end808, !dbg !3150

if.then807:                                       ; preds = %if.end798
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3151

if.end808:                                        ; preds = %if.end798
  %376 = load ptr, ptr %cf.addr, align 8, !dbg !3153, !tbaa !2270
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %376, i32 0, i32 7, !dbg !3153
  %377 = load ptr, ptr %ctx, align 8, !dbg !3153, !tbaa !3154
  %loc_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %377, i32 0, i32 2, !dbg !3153
  %378 = load ptr, ptr %loc_conf, align 8, !dbg !3153, !tbaa !3155
  %379 = load i64, ptr @ngx_http_core_module, align 8, !dbg !3153, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %378, i64 %379, !dbg !3153
  %380 = load ptr, ptr %arrayidx, align 8, !dbg !3153, !tbaa !2270
  store ptr %380, ptr %clcf, align 8, !dbg !3159, !tbaa !2270
  %381 = load ptr, ptr %clcf, align 8, !dbg !3160, !tbaa !2270
  %noname = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %381, i32 0, i32 1, !dbg !3162
  %bf.load809 = load i16, ptr %noname, align 8, !dbg !3162
  %bf.clear810 = and i16 %bf.load809, 1, !dbg !3162
  %bf.cast811 = zext i16 %bf.clear810 to i32, !dbg !3162
  %tobool812 = icmp ne i32 %bf.cast811, 0, !dbg !3160
  br i1 %tobool812, label %land.lhs.true813, label %if.end827, !dbg !3163

land.lhs.true813:                                 ; preds = %if.end808
  %382 = load ptr, ptr %conf, align 8, !dbg !3164, !tbaa !2270
  %upstream814 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %382, i32 0, i32 0, !dbg !3165
  %upstream815 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream814, i32 0, i32 0, !dbg !3166
  %383 = load ptr, ptr %upstream815, align 8, !dbg !3166, !tbaa !3167
  %cmp816 = icmp eq ptr %383, null, !dbg !3168
  br i1 %cmp816, label %land.lhs.true817, label %if.end827, !dbg !3169

land.lhs.true817:                                 ; preds = %land.lhs.true813
  %384 = load ptr, ptr %conf, align 8, !dbg !3170, !tbaa !2270
  %scgi_lengths = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %384, i32 0, i32 4, !dbg !3171
  %385 = load ptr, ptr %scgi_lengths, align 8, !dbg !3171, !tbaa !3172
  %cmp818 = icmp eq ptr %385, null, !dbg !3173
  br i1 %cmp818, label %if.then819, label %if.end827, !dbg !3174

if.then819:                                       ; preds = %land.lhs.true817
  %386 = load ptr, ptr %prev, align 8, !dbg !3175, !tbaa !2270
  %upstream820 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %386, i32 0, i32 0, !dbg !3177
  %upstream821 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream820, i32 0, i32 0, !dbg !3178
  %387 = load ptr, ptr %upstream821, align 8, !dbg !3178, !tbaa !3167
  %388 = load ptr, ptr %conf, align 8, !dbg !3179, !tbaa !2270
  %upstream822 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %388, i32 0, i32 0, !dbg !3180
  %upstream823 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream822, i32 0, i32 0, !dbg !3181
  store ptr %387, ptr %upstream823, align 8, !dbg !3182, !tbaa !3167
  %389 = load ptr, ptr %prev, align 8, !dbg !3183, !tbaa !2270
  %scgi_lengths824 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %389, i32 0, i32 4, !dbg !3184
  %390 = load ptr, ptr %scgi_lengths824, align 8, !dbg !3184, !tbaa !3172
  %391 = load ptr, ptr %conf, align 8, !dbg !3185, !tbaa !2270
  %scgi_lengths825 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %391, i32 0, i32 4, !dbg !3186
  store ptr %390, ptr %scgi_lengths825, align 8, !dbg !3187, !tbaa !3172
  %392 = load ptr, ptr %prev, align 8, !dbg !3188, !tbaa !2270
  %scgi_values = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %392, i32 0, i32 5, !dbg !3189
  %393 = load ptr, ptr %scgi_values, align 8, !dbg !3189, !tbaa !3190
  %394 = load ptr, ptr %conf, align 8, !dbg !3191, !tbaa !2270
  %scgi_values826 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %394, i32 0, i32 5, !dbg !3192
  store ptr %393, ptr %scgi_values826, align 8, !dbg !3193, !tbaa !3190
  br label %if.end827, !dbg !3194

if.end827:                                        ; preds = %if.then819, %land.lhs.true817, %land.lhs.true813, %if.end808
  %395 = load ptr, ptr %clcf, align 8, !dbg !3195, !tbaa !2270
  %lmt_excpt = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %395, i32 0, i32 1, !dbg !3197
  %bf.load828 = load i16, ptr %lmt_excpt, align 8, !dbg !3197
  %bf.lshr = lshr i16 %bf.load828, 1, !dbg !3197
  %bf.clear829 = and i16 %bf.lshr, 1, !dbg !3197
  %bf.cast830 = zext i16 %bf.clear829 to i32, !dbg !3197
  %tobool831 = icmp ne i32 %bf.cast830, 0, !dbg !3195
  br i1 %tobool831, label %land.lhs.true832, label %if.end842, !dbg !3198

land.lhs.true832:                                 ; preds = %if.end827
  %396 = load ptr, ptr %clcf, align 8, !dbg !3199, !tbaa !2270
  %handler = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %396, i32 0, i32 6, !dbg !3200
  %397 = load ptr, ptr %handler, align 8, !dbg !3200, !tbaa !3201
  %cmp833 = icmp eq ptr %397, null, !dbg !3203
  br i1 %cmp833, label %land.lhs.true834, label %if.end842, !dbg !3204

land.lhs.true834:                                 ; preds = %land.lhs.true832
  %398 = load ptr, ptr %conf, align 8, !dbg !3205, !tbaa !2270
  %upstream835 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %398, i32 0, i32 0, !dbg !3206
  %upstream836 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream835, i32 0, i32 0, !dbg !3207
  %399 = load ptr, ptr %upstream836, align 8, !dbg !3207, !tbaa !3167
  %tobool837 = icmp ne ptr %399, null, !dbg !3205
  br i1 %tobool837, label %if.then840, label %lor.lhs.false, !dbg !3208

lor.lhs.false:                                    ; preds = %land.lhs.true834
  %400 = load ptr, ptr %conf, align 8, !dbg !3209, !tbaa !2270
  %scgi_lengths838 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %400, i32 0, i32 4, !dbg !3210
  %401 = load ptr, ptr %scgi_lengths838, align 8, !dbg !3210, !tbaa !3172
  %tobool839 = icmp ne ptr %401, null, !dbg !3209
  br i1 %tobool839, label %if.then840, label %if.end842, !dbg !3211

if.then840:                                       ; preds = %lor.lhs.false, %land.lhs.true834
  %402 = load ptr, ptr %clcf, align 8, !dbg !3212, !tbaa !2270
  %handler841 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %402, i32 0, i32 6, !dbg !3214
  store ptr @ngx_http_scgi_handler, ptr %handler841, align 8, !dbg !3215, !tbaa !3201
  br label %if.end842, !dbg !3216

if.end842:                                        ; preds = %if.then840, %lor.lhs.false, %land.lhs.true832, %if.end827
  %403 = load ptr, ptr %conf, align 8, !dbg !3217, !tbaa !2270
  %params_source = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %403, i32 0, i32 3, !dbg !3219
  %404 = load ptr, ptr %params_source, align 8, !dbg !3219, !tbaa !3220
  %cmp843 = icmp eq ptr %404, null, !dbg !3221
  br i1 %cmp843, label %if.then844, label %if.end849, !dbg !3222

if.then844:                                       ; preds = %if.end842
  %405 = load ptr, ptr %conf, align 8, !dbg !3223, !tbaa !2270
  %params = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %405, i32 0, i32 1, !dbg !3225
  %406 = load ptr, ptr %prev, align 8, !dbg !3226, !tbaa !2270
  %params845 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %406, i32 0, i32 1, !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params, ptr align 8 %params845, i64 48, i1 false), !dbg !3227, !tbaa.struct !3228
  %407 = load ptr, ptr %conf, align 8, !dbg !3229, !tbaa !2270
  %params_cache = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %407, i32 0, i32 2, !dbg !3230
  %408 = load ptr, ptr %prev, align 8, !dbg !3231, !tbaa !2270
  %params_cache846 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %408, i32 0, i32 2, !dbg !3232
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params_cache, ptr align 8 %params_cache846, i64 48, i1 false), !dbg !3232, !tbaa.struct !3228
  %409 = load ptr, ptr %prev, align 8, !dbg !3233, !tbaa !2270
  %params_source847 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %409, i32 0, i32 3, !dbg !3234
  %410 = load ptr, ptr %params_source847, align 8, !dbg !3234, !tbaa !3220
  %411 = load ptr, ptr %conf, align 8, !dbg !3235, !tbaa !2270
  %params_source848 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %411, i32 0, i32 3, !dbg !3236
  store ptr %410, ptr %params_source848, align 8, !dbg !3237, !tbaa !3220
  br label %if.end849, !dbg !3238

if.end849:                                        ; preds = %if.then844, %if.end842
  %412 = load ptr, ptr %cf.addr, align 8, !dbg !3239, !tbaa !2270
  %413 = load ptr, ptr %conf, align 8, !dbg !3240, !tbaa !2270
  %414 = load ptr, ptr %conf, align 8, !dbg !3241, !tbaa !2270
  %params850 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %414, i32 0, i32 1, !dbg !3242
  %call851 = call i64 @ngx_http_scgi_init_params(ptr noundef %412, ptr noundef %413, ptr noundef %params850, ptr noundef null), !dbg !3243
  store i64 %call851, ptr %rc, align 8, !dbg !3244, !tbaa !2704
  %415 = load i64, ptr %rc, align 8, !dbg !3245, !tbaa !2704
  %cmp852 = icmp ne i64 %415, 0, !dbg !3247
  br i1 %cmp852, label %if.then853, label %if.end854, !dbg !3248

if.then853:                                       ; preds = %if.end849
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3249

if.end854:                                        ; preds = %if.end849
  %416 = load ptr, ptr %conf, align 8, !dbg !3251, !tbaa !2270
  %upstream855 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %416, i32 0, i32 0, !dbg !3253
  %cache856 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream855, i32 0, i32 51, !dbg !3254
  %bf.load857 = load i8, ptr %cache856, align 8, !dbg !3254
  %bf.shl858 = shl i8 %bf.load857, 6, !dbg !3254
  %bf.ashr859 = ashr i8 %bf.shl858, 6, !dbg !3254
  %bf.cast860 = sext i8 %bf.ashr859 to i32, !dbg !3254
  %tobool861 = icmp ne i32 %bf.cast860, 0, !dbg !3251
  br i1 %tobool861, label %if.then862, label %if.end868, !dbg !3255

if.then862:                                       ; preds = %if.end854
  %417 = load ptr, ptr %cf.addr, align 8, !dbg !3256, !tbaa !2270
  %418 = load ptr, ptr %conf, align 8, !dbg !3258, !tbaa !2270
  %419 = load ptr, ptr %conf, align 8, !dbg !3259, !tbaa !2270
  %params_cache863 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %419, i32 0, i32 2, !dbg !3260
  %call864 = call i64 @ngx_http_scgi_init_params(ptr noundef %417, ptr noundef %418, ptr noundef %params_cache863, ptr noundef @ngx_http_scgi_cache_headers), !dbg !3261
  store i64 %call864, ptr %rc, align 8, !dbg !3262, !tbaa !2704
  %420 = load i64, ptr %rc, align 8, !dbg !3263, !tbaa !2704
  %cmp865 = icmp ne i64 %420, 0, !dbg !3265
  br i1 %cmp865, label %if.then866, label %if.end867, !dbg !3266

if.then866:                                       ; preds = %if.then862
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3267

if.end867:                                        ; preds = %if.then862
  br label %if.end868, !dbg !3269

if.end868:                                        ; preds = %if.end867, %if.end854
  %421 = load ptr, ptr %prev, align 8, !dbg !3270, !tbaa !2270
  %params869 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %421, i32 0, i32 1, !dbg !3272
  %hash870 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %params869, i32 0, i32 4, !dbg !3273
  %buckets = getelementptr inbounds %struct.ngx_hash_t, ptr %hash870, i32 0, i32 0, !dbg !3274
  %422 = load ptr, ptr %buckets, align 8, !dbg !3274, !tbaa !3275
  %cmp871 = icmp eq ptr %422, null, !dbg !3276
  br i1 %cmp871, label %land.lhs.true872, label %if.end881, !dbg !3277

land.lhs.true872:                                 ; preds = %if.end868
  %423 = load ptr, ptr %conf, align 8, !dbg !3278, !tbaa !2270
  %params_source873 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %423, i32 0, i32 3, !dbg !3279
  %424 = load ptr, ptr %params_source873, align 8, !dbg !3279, !tbaa !3220
  %425 = load ptr, ptr %prev, align 8, !dbg !3280, !tbaa !2270
  %params_source874 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %425, i32 0, i32 3, !dbg !3281
  %426 = load ptr, ptr %params_source874, align 8, !dbg !3281, !tbaa !3220
  %cmp875 = icmp eq ptr %424, %426, !dbg !3282
  br i1 %cmp875, label %if.then876, label %if.end881, !dbg !3283

if.then876:                                       ; preds = %land.lhs.true872
  %427 = load ptr, ptr %prev, align 8, !dbg !3284, !tbaa !2270
  %params877 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %427, i32 0, i32 1, !dbg !3286
  %428 = load ptr, ptr %conf, align 8, !dbg !3287, !tbaa !2270
  %params878 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %428, i32 0, i32 1, !dbg !3288
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params877, ptr align 8 %params878, i64 48, i1 false), !dbg !3288, !tbaa.struct !3228
  %429 = load ptr, ptr %prev, align 8, !dbg !3289, !tbaa !2270
  %params_cache879 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %429, i32 0, i32 2, !dbg !3290
  %430 = load ptr, ptr %conf, align 8, !dbg !3291, !tbaa !2270
  %params_cache880 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %430, i32 0, i32 2, !dbg !3292
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params_cache879, ptr align 8 %params_cache880, i64 48, i1 false), !dbg !3292, !tbaa.struct !3228
  br label %if.end881, !dbg !3293

if.end881:                                        ; preds = %if.then876, %land.lhs.true872, %if.end868
  store ptr null, ptr %retval, align 8, !dbg !3294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3294

cleanup:                                          ; preds = %if.end881, %if.then866, %if.then853, %if.then807, %if.then538, %if.then479, %if.then436, %if.then402, %if.then370, %if.then358, %if.then316
  call void @llvm.lifetime.end.p0(i64 8, ptr %clcf) #8, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 56, ptr %hash) #8, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !3295
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !3295
  %431 = load ptr, ptr %retval, align 8, !dbg !3295
  ret ptr %431, !dbg !3295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !3296 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ngx_array_init(ptr noundef %array, ptr noundef %pool, i64 noundef %n, i64 noundef %size) #3 !dbg !3299 {
entry:
  %retval = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !3303, metadata !DIExpression()), !dbg !3307
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !3304, metadata !DIExpression()), !dbg !3308
  store i64 %n, ptr %n.addr, align 8, !tbaa !2704
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3305, metadata !DIExpression()), !dbg !3309
  store i64 %size, ptr %size.addr, align 8, !tbaa !2704
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3306, metadata !DIExpression()), !dbg !3310
  %0 = load ptr, ptr %array.addr, align 8, !dbg !3311, !tbaa !2270
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %0, i32 0, i32 1, !dbg !3312
  store i64 0, ptr %nelts, align 8, !dbg !3313, !tbaa !3314
  %1 = load i64, ptr %size.addr, align 8, !dbg !3316, !tbaa !2704
  %2 = load ptr, ptr %array.addr, align 8, !dbg !3317, !tbaa !2270
  %size1 = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 2, !dbg !3318
  store i64 %1, ptr %size1, align 8, !dbg !3319, !tbaa !3320
  %3 = load i64, ptr %n.addr, align 8, !dbg !3321, !tbaa !2704
  %4 = load ptr, ptr %array.addr, align 8, !dbg !3322, !tbaa !2270
  %nalloc = getelementptr inbounds %struct.ngx_array_t, ptr %4, i32 0, i32 3, !dbg !3323
  store i64 %3, ptr %nalloc, align 8, !dbg !3324, !tbaa !3325
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !3326, !tbaa !2270
  %6 = load ptr, ptr %array.addr, align 8, !dbg !3327, !tbaa !2270
  %pool2 = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 4, !dbg !3328
  store ptr %5, ptr %pool2, align 8, !dbg !3329, !tbaa !3330
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !3331, !tbaa !2270
  %8 = load i64, ptr %n.addr, align 8, !dbg !3332, !tbaa !2704
  %9 = load i64, ptr %size.addr, align 8, !dbg !3333, !tbaa !2704
  %mul = mul i64 %8, %9, !dbg !3334
  %call = call ptr @ngx_palloc(ptr noundef %7, i64 noundef %mul), !dbg !3335
  %10 = load ptr, ptr %array.addr, align 8, !dbg !3336, !tbaa !2270
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %10, i32 0, i32 0, !dbg !3337
  store ptr %call, ptr %elts, align 8, !dbg !3338, !tbaa !3339
  %11 = load ptr, ptr %array.addr, align 8, !dbg !3340, !tbaa !2270
  %elts3 = getelementptr inbounds %struct.ngx_array_t, ptr %11, i32 0, i32 0, !dbg !3342
  %12 = load ptr, ptr %elts3, align 8, !dbg !3342, !tbaa !3339
  %cmp = icmp eq ptr %12, null, !dbg !3343
  br i1 %cmp, label %if.then, label %if.end, !dbg !3344

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !3345
  br label %return, !dbg !3345

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3347
  br label %return, !dbg !3347

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, ptr %retval, align 8, !dbg !3348
  ret i64 %13, !dbg !3348
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !3349 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

declare !dbg !3350 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !3355 ptr @ngx_conf_merge_path_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !3360 i64 @ngx_http_upstream_hide_headers_hash(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_handler(ptr noundef %r) #0 !dbg !3364 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %status = alloca ptr, align 8
  %u = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %smcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3366, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !3382
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3367, metadata !DIExpression()), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #8, !dbg !3384
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !3368, metadata !DIExpression()), !dbg !3385
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #8, !dbg !3386
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !3378, metadata !DIExpression()), !dbg !3387
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !3388
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !3379, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 8, ptr %smcf) #8, !dbg !3390
  tail call void @llvm.dbg.declare(metadata ptr %smcf, metadata !3380, metadata !DIExpression()), !dbg !3391
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3392, !tbaa !2270
  %call = call i64 @ngx_http_upstream_create(ptr noundef %0), !dbg !3394
  %cmp = icmp ne i64 %call, 0, !dbg !3395
  br i1 %cmp, label %if.then, label %if.end, !dbg !3396

if.then:                                          ; preds = %entry
  store i64 500, ptr %retval, align 8, !dbg !3397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3397

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3399, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 11, !dbg !3400
  %2 = load ptr, ptr %pool, align 8, !dbg !3400, !tbaa !3401
  %call1 = call ptr @ngx_pcalloc(ptr noundef %2, i64 noundef 40), !dbg !3407
  store ptr %call1, ptr %status, align 8, !dbg !3408, !tbaa !2270
  %3 = load ptr, ptr %status, align 8, !dbg !3409, !tbaa !2270
  %cmp2 = icmp eq ptr %3, null, !dbg !3411
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3412

if.then3:                                         ; preds = %if.end
  store i64 500, ptr %retval, align 8, !dbg !3413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3413

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %status, align 8, !dbg !3415, !tbaa !2270
  %5 = load ptr, ptr %r.addr, align 8, !dbg !3415, !tbaa !2270
  %ctx = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 2, !dbg !3415
  %6 = load ptr, ptr %ctx, align 8, !dbg !3415, !tbaa !3416
  %7 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !3415, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %7, !dbg !3415
  store ptr %4, ptr %arrayidx, align 8, !dbg !3415, !tbaa !2270
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3417, !tbaa !2270
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 5, !dbg !3417
  %9 = load ptr, ptr %loc_conf, align 8, !dbg !3417, !tbaa !3418
  %10 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !3417, !tbaa !3157
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !3417
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3417, !tbaa !2270
  store ptr %11, ptr %scf, align 8, !dbg !3419, !tbaa !2270
  %12 = load ptr, ptr %scf, align 8, !dbg !3420, !tbaa !2270
  %scgi_lengths = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %12, i32 0, i32 4, !dbg !3422
  %13 = load ptr, ptr %scgi_lengths, align 8, !dbg !3422, !tbaa !3172
  %tobool = icmp ne ptr %13, null, !dbg !3420
  br i1 %tobool, label %if.then6, label %if.end11, !dbg !3423

if.then6:                                         ; preds = %if.end4
  %14 = load ptr, ptr %r.addr, align 8, !dbg !3424, !tbaa !2270
  %15 = load ptr, ptr %scf, align 8, !dbg !3427, !tbaa !2270
  %call7 = call i64 @ngx_http_scgi_eval(ptr noundef %14, ptr noundef %15), !dbg !3428
  %cmp8 = icmp ne i64 %call7, 0, !dbg !3429
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3430

if.then9:                                         ; preds = %if.then6
  store i64 500, ptr %retval, align 8, !dbg !3431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3431

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !3433

if.end11:                                         ; preds = %if.end10, %if.end4
  %16 = load ptr, ptr %r.addr, align 8, !dbg !3434, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 9, !dbg !3435
  %17 = load ptr, ptr %upstream, align 8, !dbg !3435, !tbaa !3436
  store ptr %17, ptr %u, align 8, !dbg !3437, !tbaa !2270
  %18 = load ptr, ptr %u, align 8, !dbg !3438, !tbaa !2270
  %schema = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %18, i32 0, i32 35, !dbg !3438
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %schema, i32 0, i32 0, !dbg !3438
  store i64 7, ptr %len, align 8, !dbg !3438, !tbaa !3439
  %19 = load ptr, ptr %u, align 8, !dbg !3438, !tbaa !2270
  %schema12 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %19, i32 0, i32 35, !dbg !3438
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %schema12, i32 0, i32 1, !dbg !3438
  store ptr @.str.17, ptr %data, align 8, !dbg !3438, !tbaa !3446
  %20 = load ptr, ptr %u, align 8, !dbg !3447, !tbaa !2270
  %output = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %20, i32 0, i32 5, !dbg !3448
  %tag = getelementptr inbounds %struct.ngx_output_chain_ctx_s, ptr %output, i32 0, i32 9, !dbg !3449
  store ptr @ngx_http_scgi_module, ptr %tag, align 8, !dbg !3450, !tbaa !3451
  %21 = load ptr, ptr %scf, align 8, !dbg !3452, !tbaa !2270
  %upstream13 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %21, i32 0, i32 0, !dbg !3453
  %22 = load ptr, ptr %u, align 8, !dbg !3454, !tbaa !2270
  %conf = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %22, i32 0, i32 7, !dbg !3455
  store ptr %upstream13, ptr %conf, align 8, !dbg !3456, !tbaa !3457
  %23 = load ptr, ptr %r.addr, align 8, !dbg !3458, !tbaa !2270
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %23, i32 0, i32 3, !dbg !3458
  %24 = load ptr, ptr %main_conf, align 8, !dbg !3458, !tbaa !3459
  %25 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !3458, !tbaa !3157
  %arrayidx14 = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !3458
  %26 = load ptr, ptr %arrayidx14, align 8, !dbg !3458, !tbaa !2270
  store ptr %26, ptr %smcf, align 8, !dbg !3460, !tbaa !2270
  %27 = load ptr, ptr %smcf, align 8, !dbg !3461, !tbaa !2270
  %caches = getelementptr inbounds %struct.ngx_http_scgi_main_conf_t, ptr %27, i32 0, i32 0, !dbg !3462
  %28 = load ptr, ptr %u, align 8, !dbg !3463, !tbaa !2270
  %caches15 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %28, i32 0, i32 9, !dbg !3464
  store ptr %caches, ptr %caches15, align 8, !dbg !3465, !tbaa !3466
  %29 = load ptr, ptr %u, align 8, !dbg !3467, !tbaa !2270
  %create_key = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %29, i32 0, i32 24, !dbg !3468
  store ptr @ngx_http_scgi_create_key, ptr %create_key, align 8, !dbg !3469, !tbaa !3470
  %30 = load ptr, ptr %u, align 8, !dbg !3471, !tbaa !2270
  %create_request = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %30, i32 0, i32 25, !dbg !3472
  store ptr @ngx_http_scgi_create_request, ptr %create_request, align 8, !dbg !3473, !tbaa !3474
  %31 = load ptr, ptr %u, align 8, !dbg !3475, !tbaa !2270
  %reinit_request = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %31, i32 0, i32 26, !dbg !3476
  store ptr @ngx_http_scgi_reinit_request, ptr %reinit_request, align 8, !dbg !3477, !tbaa !3478
  %32 = load ptr, ptr %u, align 8, !dbg !3479, !tbaa !2270
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %32, i32 0, i32 27, !dbg !3480
  store ptr @ngx_http_scgi_process_status_line, ptr %process_header, align 8, !dbg !3481, !tbaa !3482
  %33 = load ptr, ptr %u, align 8, !dbg !3483, !tbaa !2270
  %abort_request = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %33, i32 0, i32 28, !dbg !3484
  store ptr @ngx_http_scgi_abort_request, ptr %abort_request, align 8, !dbg !3485, !tbaa !3486
  %34 = load ptr, ptr %u, align 8, !dbg !3487, !tbaa !2270
  %finalize_request = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %34, i32 0, i32 29, !dbg !3488
  store ptr @ngx_http_scgi_finalize_request, ptr %finalize_request, align 8, !dbg !3489, !tbaa !3490
  %35 = load ptr, ptr %r.addr, align 8, !dbg !3491, !tbaa !2270
  %state = getelementptr inbounds %struct.ngx_http_request_s, ptr %35, i32 0, i32 49, !dbg !3492
  store i64 0, ptr %state, align 8, !dbg !3493, !tbaa !3494
  %36 = load ptr, ptr %scf, align 8, !dbg !3495, !tbaa !2270
  %upstream16 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %36, i32 0, i32 0, !dbg !3496
  %buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream16, i32 0, i32 19, !dbg !3497
  %37 = load i64, ptr %buffering, align 8, !dbg !3497, !tbaa !2365
  %conv = trunc i64 %37 to i32, !dbg !3495
  %38 = load ptr, ptr %u, align 8, !dbg !3498, !tbaa !2270
  %buffering17 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %38, i32 0, i32 39, !dbg !3499
  %39 = trunc i32 %conv to i16, !dbg !3500
  %bf.load = load i16, ptr %buffering17, align 8, !dbg !3500
  %bf.value = and i16 %39, 1, !dbg !3500
  %bf.shl = shl i16 %bf.value, 7, !dbg !3500
  %bf.clear = and i16 %bf.load, -129, !dbg !3500
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !3500
  store i16 %bf.set, ptr %buffering17, align 8, !dbg !3500
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !3500
  %40 = load ptr, ptr %r.addr, align 8, !dbg !3501, !tbaa !2270
  %pool18 = getelementptr inbounds %struct.ngx_http_request_s, ptr %40, i32 0, i32 11, !dbg !3502
  %41 = load ptr, ptr %pool18, align 8, !dbg !3502, !tbaa !3401
  %call19 = call ptr @ngx_pcalloc(ptr noundef %41, i64 noundef 280), !dbg !3503
  %42 = load ptr, ptr %u, align 8, !dbg !3504, !tbaa !2270
  %pipe = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %42, i32 0, i32 3, !dbg !3505
  store ptr %call19, ptr %pipe, align 8, !dbg !3506, !tbaa !3507
  %43 = load ptr, ptr %u, align 8, !dbg !3508, !tbaa !2270
  %pipe20 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %43, i32 0, i32 3, !dbg !3510
  %44 = load ptr, ptr %pipe20, align 8, !dbg !3510, !tbaa !3507
  %cmp21 = icmp eq ptr %44, null, !dbg !3511
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !3512

if.then23:                                        ; preds = %if.end11
  store i64 500, ptr %retval, align 8, !dbg !3513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3513

if.end24:                                         ; preds = %if.end11
  %45 = load ptr, ptr %u, align 8, !dbg !3515, !tbaa !2270
  %pipe25 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %45, i32 0, i32 3, !dbg !3516
  %46 = load ptr, ptr %pipe25, align 8, !dbg !3516, !tbaa !3507
  %input_filter = getelementptr inbounds %struct.ngx_event_pipe_s, ptr %46, i32 0, i32 9, !dbg !3517
  store ptr @ngx_event_pipe_copy_input_filter, ptr %input_filter, align 8, !dbg !3518, !tbaa !3519
  %47 = load ptr, ptr %r.addr, align 8, !dbg !3521, !tbaa !2270
  %48 = load ptr, ptr %u, align 8, !dbg !3522, !tbaa !2270
  %pipe26 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %48, i32 0, i32 3, !dbg !3523
  %49 = load ptr, ptr %pipe26, align 8, !dbg !3523, !tbaa !3507
  %input_ctx = getelementptr inbounds %struct.ngx_event_pipe_s, ptr %49, i32 0, i32 10, !dbg !3524
  store ptr %47, ptr %input_ctx, align 8, !dbg !3525, !tbaa !3526
  %50 = load ptr, ptr %scf, align 8, !dbg !3527, !tbaa !2270
  %upstream27 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %50, i32 0, i32 0, !dbg !3529
  %request_buffering = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream27, i32 0, i32 20, !dbg !3530
  %51 = load i64, ptr %request_buffering, align 8, !dbg !3530, !tbaa !2370
  %tobool28 = icmp ne i64 %51, 0, !dbg !3527
  br i1 %tobool28, label %if.end39, label %land.lhs.true, !dbg !3531

land.lhs.true:                                    ; preds = %if.end24
  %52 = load ptr, ptr %scf, align 8, !dbg !3532, !tbaa !2270
  %upstream29 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %52, i32 0, i32 0, !dbg !3533
  %pass_request_body = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream29, i32 0, i32 22, !dbg !3534
  %53 = load i64, ptr %pass_request_body, align 8, !dbg !3534, !tbaa !2450
  %tobool30 = icmp ne i64 %53, 0, !dbg !3532
  br i1 %tobool30, label %land.lhs.true31, label %if.end39, !dbg !3535

land.lhs.true31:                                  ; preds = %land.lhs.true
  %54 = load ptr, ptr %r.addr, align 8, !dbg !3536, !tbaa !2270
  %headers_in = getelementptr inbounds %struct.ngx_http_request_s, ptr %54, i32 0, i32 13, !dbg !3537
  %chunked = getelementptr inbounds %struct.ngx_http_headers_in_t, ptr %headers_in, i32 0, i32 29, !dbg !3538
  %bf.load32 = load i16, ptr %chunked, align 8, !dbg !3538
  %bf.lshr = lshr i16 %bf.load32, 2, !dbg !3538
  %bf.clear33 = and i16 %bf.lshr, 1, !dbg !3538
  %bf.cast = zext i16 %bf.clear33 to i32, !dbg !3538
  %tobool34 = icmp ne i32 %bf.cast, 0, !dbg !3536
  br i1 %tobool34, label %if.end39, label %if.then35, !dbg !3539

if.then35:                                        ; preds = %land.lhs.true31
  %55 = load ptr, ptr %r.addr, align 8, !dbg !3540, !tbaa !2270
  %request_body_no_buffering = getelementptr inbounds %struct.ngx_http_request_s, ptr %55, i32 0, i32 48, !dbg !3542
  %bf.load36 = load i128, ptr %request_body_no_buffering, align 8, !dbg !3543
  %bf.clear37 = and i128 %bf.load36, -288230376151711745, !dbg !3543
  %bf.set38 = or i128 %bf.clear37, 288230376151711744, !dbg !3543
  store i128 %bf.set38, ptr %request_body_no_buffering, align 8, !dbg !3543
  br label %if.end39, !dbg !3544

if.end39:                                         ; preds = %if.then35, %land.lhs.true31, %land.lhs.true, %if.end24
  %56 = load ptr, ptr %r.addr, align 8, !dbg !3545, !tbaa !2270
  %call40 = call i64 @ngx_http_read_client_request_body(ptr noundef %56, ptr noundef @ngx_http_upstream_init), !dbg !3546
  store i64 %call40, ptr %rc, align 8, !dbg !3547, !tbaa !2704
  %57 = load i64, ptr %rc, align 8, !dbg !3548, !tbaa !2704
  %cmp41 = icmp sge i64 %57, 300, !dbg !3550
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !3551

if.then43:                                        ; preds = %if.end39
  %58 = load i64, ptr %rc, align 8, !dbg !3552, !tbaa !2704
  store i64 %58, ptr %retval, align 8, !dbg !3554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3554

if.end44:                                         ; preds = %if.end39
  store i64 -4, ptr %retval, align 8, !dbg !3555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3555

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then23, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %smcf) #8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !3556
  %59 = load i64, ptr %retval, align 8, !dbg !3556
  ret i64 %59, !dbg !3556
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_init_params(ptr noundef %cf, ptr noundef %conf, ptr noundef %params, ptr noundef %default_params) #0 !dbg !3557 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %default_params.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %size = alloca i64, align 8
  %code = alloca ptr, align 8
  %i = alloca i64, align 8
  %nsrc = alloca i64, align 8
  %headers_names = alloca %struct.ngx_array_t, align 8
  %params_merged = alloca %struct.ngx_array_t, align 8
  %h = alloca ptr, align 8
  %hk = alloca ptr, align 8
  %hash = alloca %struct.ngx_hash_init_t, align 8
  %src = alloca ptr, align 8
  %s = alloca ptr, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 8
  %copy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !3563, metadata !DIExpression()), !dbg !3627
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !3564, metadata !DIExpression()), !dbg !3628
  store ptr %params, ptr %params.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !3565, metadata !DIExpression()), !dbg !3629
  store ptr %default_params, ptr %default_params.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %default_params.addr, metadata !3566, metadata !DIExpression()), !dbg !3630
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !3631
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3567, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !3633
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3568, metadata !DIExpression()), !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #8, !dbg !3635
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !3569, metadata !DIExpression()), !dbg !3636
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !3637
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3570, metadata !DIExpression()), !dbg !3638
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsrc) #8, !dbg !3637
  tail call void @llvm.dbg.declare(metadata ptr %nsrc, metadata !3571, metadata !DIExpression()), !dbg !3639
  call void @llvm.lifetime.start.p0(i64 40, ptr %headers_names) #8, !dbg !3640
  tail call void @llvm.dbg.declare(metadata ptr %headers_names, metadata !3572, metadata !DIExpression()), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 40, ptr %params_merged) #8, !dbg !3640
  tail call void @llvm.dbg.declare(metadata ptr %params_merged, metadata !3573, metadata !DIExpression()), !dbg !3642
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #8, !dbg !3643
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !3574, metadata !DIExpression()), !dbg !3644
  call void @llvm.lifetime.start.p0(i64 8, ptr %hk) #8, !dbg !3645
  tail call void @llvm.dbg.declare(metadata ptr %hk, metadata !3575, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 56, ptr %hash) #8, !dbg !3647
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !3583, metadata !DIExpression()), !dbg !3648
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #8, !dbg !3649
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !3584, metadata !DIExpression()), !dbg !3650
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !3649
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !3592, metadata !DIExpression()), !dbg !3651
  call void @llvm.lifetime.start.p0(i64 88, ptr %sc) #8, !dbg !3652
  tail call void @llvm.dbg.declare(metadata ptr %sc, metadata !3593, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #8, !dbg !3654
  tail call void @llvm.dbg.declare(metadata ptr %copy, metadata !3616, metadata !DIExpression()), !dbg !3655
  %0 = load ptr, ptr %params.addr, align 8, !dbg !3656, !tbaa !2270
  %hash1 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %0, i32 0, i32 4, !dbg !3658
  %buckets = getelementptr inbounds %struct.ngx_hash_t, ptr %hash1, i32 0, i32 0, !dbg !3659
  %1 = load ptr, ptr %buckets, align 8, !dbg !3659, !tbaa !3660
  %tobool = icmp ne ptr %1, null, !dbg !3656
  br i1 %tobool, label %if.then, label %if.end, !dbg !3661

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3662

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !3664, !tbaa !2270
  %params_source = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %2, i32 0, i32 3, !dbg !3666
  %3 = load ptr, ptr %params_source, align 8, !dbg !3666, !tbaa !3220
  %cmp = icmp eq ptr %3, null, !dbg !3667
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !3668

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %default_params.addr, align 8, !dbg !3669, !tbaa !2270
  %cmp2 = icmp eq ptr %4, null, !dbg !3670
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !3671

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %params.addr, align 8, !dbg !3672, !tbaa !2270
  %hash4 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %5, i32 0, i32 4, !dbg !3674
  %buckets5 = getelementptr inbounds %struct.ngx_hash_t, ptr %hash4, i32 0, i32 0, !dbg !3675
  store ptr inttoptr (i64 1 to ptr), ptr %buckets5, align 8, !dbg !3676, !tbaa !3660
  store i64 0, ptr %retval, align 8, !dbg !3677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3677

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !3678, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %6, i32 0, i32 3, !dbg !3679
  %7 = load ptr, ptr %pool, align 8, !dbg !3679, !tbaa !2279
  %call = call ptr @ngx_array_create(ptr noundef %7, i64 noundef 64, i64 noundef 1), !dbg !3680
  %8 = load ptr, ptr %params.addr, align 8, !dbg !3681, !tbaa !2270
  %lengths = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %8, i32 0, i32 1, !dbg !3682
  store ptr %call, ptr %lengths, align 8, !dbg !3683, !tbaa !3684
  %9 = load ptr, ptr %params.addr, align 8, !dbg !3685, !tbaa !2270
  %lengths7 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %9, i32 0, i32 1, !dbg !3687
  %10 = load ptr, ptr %lengths7, align 8, !dbg !3687, !tbaa !3684
  %cmp8 = icmp eq ptr %10, null, !dbg !3688
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3689

if.then9:                                         ; preds = %if.end6
  store i64 -1, ptr %retval, align 8, !dbg !3690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3690

if.end10:                                         ; preds = %if.end6
  %11 = load ptr, ptr %cf.addr, align 8, !dbg !3692, !tbaa !2270
  %pool11 = getelementptr inbounds %struct.ngx_conf_s, ptr %11, i32 0, i32 3, !dbg !3693
  %12 = load ptr, ptr %pool11, align 8, !dbg !3693, !tbaa !2279
  %call12 = call ptr @ngx_array_create(ptr noundef %12, i64 noundef 512, i64 noundef 1), !dbg !3694
  %13 = load ptr, ptr %params.addr, align 8, !dbg !3695, !tbaa !2270
  %values = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %13, i32 0, i32 2, !dbg !3696
  store ptr %call12, ptr %values, align 8, !dbg !3697, !tbaa !3698
  %14 = load ptr, ptr %params.addr, align 8, !dbg !3699, !tbaa !2270
  %values13 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %14, i32 0, i32 2, !dbg !3701
  %15 = load ptr, ptr %values13, align 8, !dbg !3701, !tbaa !3698
  %cmp14 = icmp eq ptr %15, null, !dbg !3702
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3703

if.then15:                                        ; preds = %if.end10
  store i64 -1, ptr %retval, align 8, !dbg !3704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3704

if.end16:                                         ; preds = %if.end10
  %16 = load ptr, ptr %cf.addr, align 8, !dbg !3706, !tbaa !2270
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s, ptr %16, i32 0, i32 4, !dbg !3708
  %17 = load ptr, ptr %temp_pool, align 8, !dbg !3708, !tbaa !3709
  %call17 = call i64 @ngx_array_init(ptr noundef %headers_names, ptr noundef %17, i64 noundef 4, i64 noundef 32), !dbg !3710
  %cmp18 = icmp ne i64 %call17, 0, !dbg !3711
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3712

if.then19:                                        ; preds = %if.end16
  store i64 -1, ptr %retval, align 8, !dbg !3713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3713

if.end20:                                         ; preds = %if.end16
  %18 = load ptr, ptr %conf.addr, align 8, !dbg !3715, !tbaa !2270
  %params_source21 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %18, i32 0, i32 3, !dbg !3717
  %19 = load ptr, ptr %params_source21, align 8, !dbg !3717, !tbaa !3220
  %tobool22 = icmp ne ptr %19, null, !dbg !3715
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !3718

if.then23:                                        ; preds = %if.end20
  %20 = load ptr, ptr %conf.addr, align 8, !dbg !3719, !tbaa !2270
  %params_source24 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %20, i32 0, i32 3, !dbg !3721
  %21 = load ptr, ptr %params_source24, align 8, !dbg !3721, !tbaa !3220
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %21, i32 0, i32 0, !dbg !3722
  %22 = load ptr, ptr %elts, align 8, !dbg !3722, !tbaa !3339
  store ptr %22, ptr %src, align 8, !dbg !3723, !tbaa !2270
  %23 = load ptr, ptr %conf.addr, align 8, !dbg !3724, !tbaa !2270
  %params_source25 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %23, i32 0, i32 3, !dbg !3725
  %24 = load ptr, ptr %params_source25, align 8, !dbg !3725, !tbaa !3220
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %24, i32 0, i32 1, !dbg !3726
  %25 = load i64, ptr %nelts, align 8, !dbg !3726, !tbaa !3314
  store i64 %25, ptr %nsrc, align 8, !dbg !3727, !tbaa !2704
  br label %if.end26, !dbg !3728

if.else:                                          ; preds = %if.end20
  store ptr null, ptr %src, align 8, !dbg !3729, !tbaa !2270
  store i64 0, ptr %nsrc, align 8, !dbg !3731, !tbaa !2704
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %26 = load ptr, ptr %default_params.addr, align 8, !dbg !3732, !tbaa !2270
  %tobool27 = icmp ne ptr %26, null, !dbg !3732
  br i1 %tobool27, label %if.then28, label %if.end65, !dbg !3733

if.then28:                                        ; preds = %if.end26
  %27 = load ptr, ptr %cf.addr, align 8, !dbg !3734, !tbaa !2270
  %temp_pool29 = getelementptr inbounds %struct.ngx_conf_s, ptr %27, i32 0, i32 4, !dbg !3736
  %28 = load ptr, ptr %temp_pool29, align 8, !dbg !3736, !tbaa !3709
  %call30 = call i64 @ngx_array_init(ptr noundef %params_merged, ptr noundef %28, i64 noundef 4, i64 noundef 40), !dbg !3737
  %cmp31 = icmp ne i64 %call30, 0, !dbg !3738
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !3739

if.then32:                                        ; preds = %if.then28
  store i64 -1, ptr %retval, align 8, !dbg !3740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3740

if.end33:                                         ; preds = %if.then28
  store i64 0, ptr %i, align 8, !dbg !3742, !tbaa !2704
  br label %for.cond, !dbg !3744

for.cond:                                         ; preds = %for.inc, %if.end33
  %29 = load i64, ptr %i, align 8, !dbg !3745, !tbaa !2704
  %30 = load i64, ptr %nsrc, align 8, !dbg !3747, !tbaa !2704
  %cmp34 = icmp ult i64 %29, %30, !dbg !3748
  br i1 %cmp34, label %for.body, label %for.end, !dbg !3749

for.body:                                         ; preds = %for.cond
  %call35 = call ptr @ngx_array_push(ptr noundef %params_merged), !dbg !3750
  store ptr %call35, ptr %s, align 8, !dbg !3752, !tbaa !2270
  %31 = load ptr, ptr %s, align 8, !dbg !3753, !tbaa !2270
  %cmp36 = icmp eq ptr %31, null, !dbg !3755
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3756

if.then37:                                        ; preds = %for.body
  store i64 -1, ptr %retval, align 8, !dbg !3757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3757

if.end38:                                         ; preds = %for.body
  %32 = load ptr, ptr %s, align 8, !dbg !3759, !tbaa !2270
  %33 = load ptr, ptr %src, align 8, !dbg !3760, !tbaa !2270
  %34 = load i64, ptr %i, align 8, !dbg !3761, !tbaa !2704
  %arrayidx = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %33, i64 %34, !dbg !3760
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %arrayidx, i64 40, i1 false), !dbg !3760, !tbaa.struct !3762
  br label %for.inc, !dbg !3763

for.inc:                                          ; preds = %if.end38
  %35 = load i64, ptr %i, align 8, !dbg !3764, !tbaa !2704
  %inc = add i64 %35, 1, !dbg !3764
  store i64 %inc, ptr %i, align 8, !dbg !3764, !tbaa !2704
  br label %for.cond, !dbg !3765, !llvm.loop !3766

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %default_params.addr, align 8, !dbg !3769, !tbaa !2270
  store ptr %36, ptr %h, align 8, !dbg !3770, !tbaa !2270
  br label %while.cond, !dbg !3771

while.cond:                                       ; preds = %next, %for.end
  %37 = load ptr, ptr %h, align 8, !dbg !3772, !tbaa !2270
  %key = getelementptr inbounds %struct.ngx_keyval_t, ptr %37, i32 0, i32 0, !dbg !3773
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %key, i32 0, i32 0, !dbg !3774
  %38 = load i64, ptr %len, align 8, !dbg !3774, !tbaa !3775
  %tobool39 = icmp ne i64 %38, 0, !dbg !3771
  br i1 %tobool39, label %while.body, label %while.end, !dbg !3771

while.body:                                       ; preds = %while.cond
  %elts40 = getelementptr inbounds %struct.ngx_array_t, ptr %params_merged, i32 0, i32 0, !dbg !3777
  %39 = load ptr, ptr %elts40, align 8, !dbg !3777, !tbaa !3339
  store ptr %39, ptr %src, align 8, !dbg !3778, !tbaa !2270
  %nelts41 = getelementptr inbounds %struct.ngx_array_t, ptr %params_merged, i32 0, i32 1, !dbg !3779
  %40 = load i64, ptr %nelts41, align 8, !dbg !3779, !tbaa !3314
  store i64 %40, ptr %nsrc, align 8, !dbg !3780, !tbaa !2704
  store i64 0, ptr %i, align 8, !dbg !3781, !tbaa !2704
  br label %for.cond42, !dbg !3783

for.cond42:                                       ; preds = %for.inc53, %while.body
  %41 = load i64, ptr %i, align 8, !dbg !3784, !tbaa !2704
  %42 = load i64, ptr %nsrc, align 8, !dbg !3786, !tbaa !2704
  %cmp43 = icmp ult i64 %41, %42, !dbg !3787
  br i1 %cmp43, label %for.body44, label %for.end55, !dbg !3788

for.body44:                                       ; preds = %for.cond42
  %43 = load ptr, ptr %h, align 8, !dbg !3789, !tbaa !2270
  %key45 = getelementptr inbounds %struct.ngx_keyval_t, ptr %43, i32 0, i32 0, !dbg !3792
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %key45, i32 0, i32 1, !dbg !3793
  %44 = load ptr, ptr %data, align 8, !dbg !3793, !tbaa !3794
  %45 = load ptr, ptr %src, align 8, !dbg !3795, !tbaa !2270
  %46 = load i64, ptr %i, align 8, !dbg !3796, !tbaa !2704
  %arrayidx46 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %45, i64 %46, !dbg !3795
  %key47 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx46, i32 0, i32 0, !dbg !3797
  %data48 = getelementptr inbounds %struct.ngx_str_t, ptr %key47, i32 0, i32 1, !dbg !3798
  %47 = load ptr, ptr %data48, align 8, !dbg !3798, !tbaa !3799
  %call49 = call i64 @ngx_strcasecmp(ptr noundef %44, ptr noundef %47), !dbg !3801
  %cmp50 = icmp eq i64 %call49, 0, !dbg !3802
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !3803

if.then51:                                        ; preds = %for.body44
  br label %next, !dbg !3804

if.end52:                                         ; preds = %for.body44
  br label %for.inc53, !dbg !3806

for.inc53:                                        ; preds = %if.end52
  %48 = load i64, ptr %i, align 8, !dbg !3807, !tbaa !2704
  %inc54 = add i64 %48, 1, !dbg !3807
  store i64 %inc54, ptr %i, align 8, !dbg !3807, !tbaa !2704
  br label %for.cond42, !dbg !3808, !llvm.loop !3809

for.end55:                                        ; preds = %for.cond42
  %call56 = call ptr @ngx_array_push(ptr noundef %params_merged), !dbg !3811
  store ptr %call56, ptr %s, align 8, !dbg !3812, !tbaa !2270
  %49 = load ptr, ptr %s, align 8, !dbg !3813, !tbaa !2270
  %cmp57 = icmp eq ptr %49, null, !dbg !3815
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3816

if.then58:                                        ; preds = %for.end55
  store i64 -1, ptr %retval, align 8, !dbg !3817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3817

if.end59:                                         ; preds = %for.end55
  %50 = load ptr, ptr %s, align 8, !dbg !3819, !tbaa !2270
  %key60 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %50, i32 0, i32 0, !dbg !3820
  %51 = load ptr, ptr %h, align 8, !dbg !3821, !tbaa !2270
  %key61 = getelementptr inbounds %struct.ngx_keyval_t, ptr %51, i32 0, i32 0, !dbg !3822
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key60, ptr align 8 %key61, i64 16, i1 false), !dbg !3822, !tbaa.struct !3823
  %52 = load ptr, ptr %s, align 8, !dbg !3824, !tbaa !2270
  %value = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %52, i32 0, i32 1, !dbg !3825
  %53 = load ptr, ptr %h, align 8, !dbg !3826, !tbaa !2270
  %value62 = getelementptr inbounds %struct.ngx_keyval_t, ptr %53, i32 0, i32 1, !dbg !3827
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %value62, i64 16, i1 false), !dbg !3827, !tbaa.struct !3823
  %54 = load ptr, ptr %s, align 8, !dbg !3828, !tbaa !2270
  %skip_empty = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %54, i32 0, i32 2, !dbg !3829
  store i64 1, ptr %skip_empty, align 8, !dbg !3830, !tbaa !3831
  br label %next, !dbg !3828

next:                                             ; preds = %if.end59, %if.then51
  tail call void @llvm.dbg.label(metadata !3623), !dbg !3832
  %55 = load ptr, ptr %h, align 8, !dbg !3833, !tbaa !2270
  %incdec.ptr = getelementptr inbounds %struct.ngx_keyval_t, ptr %55, i32 1, !dbg !3833
  store ptr %incdec.ptr, ptr %h, align 8, !dbg !3833, !tbaa !2270
  br label %while.cond, !dbg !3771, !llvm.loop !3834

while.end:                                        ; preds = %while.cond
  %elts63 = getelementptr inbounds %struct.ngx_array_t, ptr %params_merged, i32 0, i32 0, !dbg !3836
  %56 = load ptr, ptr %elts63, align 8, !dbg !3836, !tbaa !3339
  store ptr %56, ptr %src, align 8, !dbg !3837, !tbaa !2270
  %nelts64 = getelementptr inbounds %struct.ngx_array_t, ptr %params_merged, i32 0, i32 1, !dbg !3838
  %57 = load i64, ptr %nelts64, align 8, !dbg !3838, !tbaa !3314
  store i64 %57, ptr %nsrc, align 8, !dbg !3839, !tbaa !2704
  br label %if.end65, !dbg !3840

if.end65:                                         ; preds = %while.end, %if.end26
  store i64 0, ptr %i, align 8, !dbg !3841, !tbaa !2704
  br label %for.cond66, !dbg !3843

for.cond66:                                       ; preds = %for.inc175, %if.end65
  %58 = load i64, ptr %i, align 8, !dbg !3844, !tbaa !2704
  %59 = load i64, ptr %nsrc, align 8, !dbg !3846, !tbaa !2704
  %cmp67 = icmp ult i64 %58, %59, !dbg !3847
  br i1 %cmp67, label %for.body68, label %for.end177, !dbg !3848

for.body68:                                       ; preds = %for.cond66
  %60 = load ptr, ptr %src, align 8, !dbg !3849, !tbaa !2270
  %61 = load i64, ptr %i, align 8, !dbg !3852, !tbaa !2704
  %arrayidx69 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %60, i64 %61, !dbg !3849
  %key70 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx69, i32 0, i32 0, !dbg !3853
  %len71 = getelementptr inbounds %struct.ngx_str_t, ptr %key70, i32 0, i32 0, !dbg !3854
  %62 = load i64, ptr %len71, align 8, !dbg !3854, !tbaa !3855
  %cmp72 = icmp ugt i64 %62, 5, !dbg !3856
  br i1 %cmp72, label %land.lhs.true73, label %if.end106, !dbg !3857

land.lhs.true73:                                  ; preds = %for.body68
  %63 = load ptr, ptr %src, align 8, !dbg !3858, !tbaa !2270
  %64 = load i64, ptr %i, align 8, !dbg !3858, !tbaa !2704
  %arrayidx74 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %63, i64 %64, !dbg !3858
  %key75 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx74, i32 0, i32 0, !dbg !3858
  %data76 = getelementptr inbounds %struct.ngx_str_t, ptr %key75, i32 0, i32 1, !dbg !3858
  %65 = load ptr, ptr %data76, align 8, !dbg !3858, !tbaa !3799
  %call77 = call i32 @strncmp(ptr noundef %65, ptr noundef @.str.21, i64 noundef 5) #9, !dbg !3858
  %cmp78 = icmp eq i32 %call77, 0, !dbg !3859
  br i1 %cmp78, label %if.then79, label %if.end106, !dbg !3860

if.then79:                                        ; preds = %land.lhs.true73
  %call80 = call ptr @ngx_array_push(ptr noundef %headers_names), !dbg !3861
  store ptr %call80, ptr %hk, align 8, !dbg !3863, !tbaa !2270
  %66 = load ptr, ptr %hk, align 8, !dbg !3864, !tbaa !2270
  %cmp81 = icmp eq ptr %66, null, !dbg !3866
  br i1 %cmp81, label %if.then82, label %if.end83, !dbg !3867

if.then82:                                        ; preds = %if.then79
  store i64 -1, ptr %retval, align 8, !dbg !3868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3868

if.end83:                                         ; preds = %if.then79
  %67 = load ptr, ptr %src, align 8, !dbg !3870, !tbaa !2270
  %68 = load i64, ptr %i, align 8, !dbg !3871, !tbaa !2704
  %arrayidx84 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %67, i64 %68, !dbg !3870
  %key85 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx84, i32 0, i32 0, !dbg !3872
  %len86 = getelementptr inbounds %struct.ngx_str_t, ptr %key85, i32 0, i32 0, !dbg !3873
  %69 = load i64, ptr %len86, align 8, !dbg !3873, !tbaa !3855
  %sub = sub i64 %69, 5, !dbg !3874
  %70 = load ptr, ptr %hk, align 8, !dbg !3875, !tbaa !2270
  %key87 = getelementptr inbounds %struct.ngx_hash_key_t, ptr %70, i32 0, i32 0, !dbg !3876
  %len88 = getelementptr inbounds %struct.ngx_str_t, ptr %key87, i32 0, i32 0, !dbg !3877
  store i64 %sub, ptr %len88, align 8, !dbg !3878, !tbaa !3879
  %71 = load ptr, ptr %src, align 8, !dbg !3881, !tbaa !2270
  %72 = load i64, ptr %i, align 8, !dbg !3882, !tbaa !2704
  %arrayidx89 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %71, i64 %72, !dbg !3881
  %key90 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx89, i32 0, i32 0, !dbg !3883
  %data91 = getelementptr inbounds %struct.ngx_str_t, ptr %key90, i32 0, i32 1, !dbg !3884
  %73 = load ptr, ptr %data91, align 8, !dbg !3884, !tbaa !3799
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 5, !dbg !3885
  %74 = load ptr, ptr %hk, align 8, !dbg !3886, !tbaa !2270
  %key92 = getelementptr inbounds %struct.ngx_hash_key_t, ptr %74, i32 0, i32 0, !dbg !3887
  %data93 = getelementptr inbounds %struct.ngx_str_t, ptr %key92, i32 0, i32 1, !dbg !3888
  store ptr %add.ptr, ptr %data93, align 8, !dbg !3889, !tbaa !3890
  %75 = load ptr, ptr %hk, align 8, !dbg !3891, !tbaa !2270
  %key94 = getelementptr inbounds %struct.ngx_hash_key_t, ptr %75, i32 0, i32 0, !dbg !3892
  %data95 = getelementptr inbounds %struct.ngx_str_t, ptr %key94, i32 0, i32 1, !dbg !3893
  %76 = load ptr, ptr %data95, align 8, !dbg !3893, !tbaa !3890
  %77 = load ptr, ptr %hk, align 8, !dbg !3894, !tbaa !2270
  %key96 = getelementptr inbounds %struct.ngx_hash_key_t, ptr %77, i32 0, i32 0, !dbg !3895
  %len97 = getelementptr inbounds %struct.ngx_str_t, ptr %key96, i32 0, i32 0, !dbg !3896
  %78 = load i64, ptr %len97, align 8, !dbg !3896, !tbaa !3879
  %call98 = call i64 @ngx_hash_key_lc(ptr noundef %76, i64 noundef %78), !dbg !3897
  %79 = load ptr, ptr %hk, align 8, !dbg !3898, !tbaa !2270
  %key_hash = getelementptr inbounds %struct.ngx_hash_key_t, ptr %79, i32 0, i32 1, !dbg !3899
  store i64 %call98, ptr %key_hash, align 8, !dbg !3900, !tbaa !3901
  %80 = load ptr, ptr %hk, align 8, !dbg !3902, !tbaa !2270
  %value99 = getelementptr inbounds %struct.ngx_hash_key_t, ptr %80, i32 0, i32 2, !dbg !3903
  store ptr inttoptr (i64 1 to ptr), ptr %value99, align 8, !dbg !3904, !tbaa !3905
  %81 = load ptr, ptr %src, align 8, !dbg !3906, !tbaa !2270
  %82 = load i64, ptr %i, align 8, !dbg !3908, !tbaa !2704
  %arrayidx100 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %81, i64 %82, !dbg !3906
  %value101 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx100, i32 0, i32 1, !dbg !3909
  %len102 = getelementptr inbounds %struct.ngx_str_t, ptr %value101, i32 0, i32 0, !dbg !3910
  %83 = load i64, ptr %len102, align 8, !dbg !3910, !tbaa !3911
  %cmp103 = icmp eq i64 %83, 0, !dbg !3912
  br i1 %cmp103, label %if.then104, label %if.end105, !dbg !3913

if.then104:                                       ; preds = %if.end83
  br label %for.inc175, !dbg !3914

if.end105:                                        ; preds = %if.end83
  br label %if.end106, !dbg !3916

if.end106:                                        ; preds = %if.end105, %land.lhs.true73, %for.body68
  %84 = load ptr, ptr %params.addr, align 8, !dbg !3917, !tbaa !2270
  %lengths107 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %84, i32 0, i32 1, !dbg !3918
  %85 = load ptr, ptr %lengths107, align 8, !dbg !3918, !tbaa !3684
  %call108 = call ptr @ngx_array_push_n(ptr noundef %85, i64 noundef 16), !dbg !3919
  store ptr %call108, ptr %copy, align 8, !dbg !3920, !tbaa !2270
  %86 = load ptr, ptr %copy, align 8, !dbg !3921, !tbaa !2270
  %cmp109 = icmp eq ptr %86, null, !dbg !3923
  br i1 %cmp109, label %if.then110, label %if.end111, !dbg !3924

if.then110:                                       ; preds = %if.end106
  store i64 -1, ptr %retval, align 8, !dbg !3925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

if.end111:                                        ; preds = %if.end106
  %87 = load ptr, ptr %copy, align 8, !dbg !3927, !tbaa !2270
  %code112 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %87, i32 0, i32 0, !dbg !3928
  store ptr @ngx_http_script_copy_len_code, ptr %code112, align 8, !dbg !3929, !tbaa !3930
  %88 = load ptr, ptr %src, align 8, !dbg !3931, !tbaa !2270
  %89 = load i64, ptr %i, align 8, !dbg !3932, !tbaa !2704
  %arrayidx113 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %88, i64 %89, !dbg !3931
  %key114 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx113, i32 0, i32 0, !dbg !3933
  %len115 = getelementptr inbounds %struct.ngx_str_t, ptr %key114, i32 0, i32 0, !dbg !3934
  %90 = load i64, ptr %len115, align 8, !dbg !3934, !tbaa !3855
  %add = add i64 %90, 1, !dbg !3935
  %91 = load ptr, ptr %copy, align 8, !dbg !3936, !tbaa !2270
  %len116 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %91, i32 0, i32 1, !dbg !3937
  store i64 %add, ptr %len116, align 8, !dbg !3938, !tbaa !3939
  %92 = load ptr, ptr %params.addr, align 8, !dbg !3940, !tbaa !2270
  %lengths117 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %92, i32 0, i32 1, !dbg !3941
  %93 = load ptr, ptr %lengths117, align 8, !dbg !3941, !tbaa !3684
  %call118 = call ptr @ngx_array_push_n(ptr noundef %93, i64 noundef 16), !dbg !3942
  store ptr %call118, ptr %copy, align 8, !dbg !3943, !tbaa !2270
  %94 = load ptr, ptr %copy, align 8, !dbg !3944, !tbaa !2270
  %cmp119 = icmp eq ptr %94, null, !dbg !3946
  br i1 %cmp119, label %if.then120, label %if.end121, !dbg !3947

if.then120:                                       ; preds = %if.end111
  store i64 -1, ptr %retval, align 8, !dbg !3948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3948

if.end121:                                        ; preds = %if.end111
  %95 = load ptr, ptr %copy, align 8, !dbg !3950, !tbaa !2270
  %code122 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %95, i32 0, i32 0, !dbg !3951
  store ptr @ngx_http_script_copy_len_code, ptr %code122, align 8, !dbg !3952, !tbaa !3930
  %96 = load ptr, ptr %src, align 8, !dbg !3953, !tbaa !2270
  %97 = load i64, ptr %i, align 8, !dbg !3954, !tbaa !2704
  %arrayidx123 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %96, i64 %97, !dbg !3953
  %skip_empty124 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx123, i32 0, i32 2, !dbg !3955
  %98 = load i64, ptr %skip_empty124, align 8, !dbg !3955, !tbaa !3831
  %99 = load ptr, ptr %copy, align 8, !dbg !3956, !tbaa !2270
  %len125 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %99, i32 0, i32 1, !dbg !3957
  store i64 %98, ptr %len125, align 8, !dbg !3958, !tbaa !3939
  %100 = load ptr, ptr %src, align 8, !dbg !3959, !tbaa !2270
  %101 = load i64, ptr %i, align 8, !dbg !3960, !tbaa !2704
  %arrayidx126 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %100, i64 %101, !dbg !3959
  %key127 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx126, i32 0, i32 0, !dbg !3961
  %len128 = getelementptr inbounds %struct.ngx_str_t, ptr %key127, i32 0, i32 0, !dbg !3962
  %102 = load i64, ptr %len128, align 8, !dbg !3962, !tbaa !3855
  %add129 = add i64 16, %102, !dbg !3963
  %add130 = add i64 %add129, 1, !dbg !3964
  %add131 = add i64 %add130, 8, !dbg !3965
  %sub132 = sub i64 %add131, 1, !dbg !3966
  %and = and i64 %sub132, -8, !dbg !3967
  store i64 %and, ptr %size, align 8, !dbg !3968, !tbaa !2704
  %103 = load ptr, ptr %params.addr, align 8, !dbg !3969, !tbaa !2270
  %values133 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %103, i32 0, i32 2, !dbg !3970
  %104 = load ptr, ptr %values133, align 8, !dbg !3970, !tbaa !3698
  %105 = load i64, ptr %size, align 8, !dbg !3971, !tbaa !2704
  %call134 = call ptr @ngx_array_push_n(ptr noundef %104, i64 noundef %105), !dbg !3972
  store ptr %call134, ptr %copy, align 8, !dbg !3973, !tbaa !2270
  %106 = load ptr, ptr %copy, align 8, !dbg !3974, !tbaa !2270
  %cmp135 = icmp eq ptr %106, null, !dbg !3976
  br i1 %cmp135, label %if.then136, label %if.end137, !dbg !3977

if.then136:                                       ; preds = %if.end121
  store i64 -1, ptr %retval, align 8, !dbg !3978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3978

if.end137:                                        ; preds = %if.end121
  %107 = load ptr, ptr %copy, align 8, !dbg !3980, !tbaa !2270
  %code138 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %107, i32 0, i32 0, !dbg !3981
  store ptr @ngx_http_script_copy_code, ptr %code138, align 8, !dbg !3982, !tbaa !3930
  %108 = load ptr, ptr %src, align 8, !dbg !3983, !tbaa !2270
  %109 = load i64, ptr %i, align 8, !dbg !3984, !tbaa !2704
  %arrayidx139 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %108, i64 %109, !dbg !3983
  %key140 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx139, i32 0, i32 0, !dbg !3985
  %len141 = getelementptr inbounds %struct.ngx_str_t, ptr %key140, i32 0, i32 0, !dbg !3986
  %110 = load i64, ptr %len141, align 8, !dbg !3986, !tbaa !3855
  %add142 = add i64 %110, 1, !dbg !3987
  %111 = load ptr, ptr %copy, align 8, !dbg !3988, !tbaa !2270
  %len143 = getelementptr inbounds %struct.ngx_http_script_copy_code_t, ptr %111, i32 0, i32 1, !dbg !3989
  store i64 %add142, ptr %len143, align 8, !dbg !3990, !tbaa !3939
  %112 = load ptr, ptr %copy, align 8, !dbg !3991, !tbaa !2270
  %add.ptr144 = getelementptr inbounds i8, ptr %112, i64 16, !dbg !3992
  store ptr %add.ptr144, ptr %p, align 8, !dbg !3993, !tbaa !2270
  %113 = load ptr, ptr %p, align 8, !dbg !3994, !tbaa !2270
  %114 = load ptr, ptr %src, align 8, !dbg !3995, !tbaa !2270
  %115 = load i64, ptr %i, align 8, !dbg !3996, !tbaa !2704
  %arrayidx145 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %114, i64 %115, !dbg !3995
  %key146 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx145, i32 0, i32 0, !dbg !3997
  %data147 = getelementptr inbounds %struct.ngx_str_t, ptr %key146, i32 0, i32 1, !dbg !3998
  %116 = load ptr, ptr %data147, align 8, !dbg !3998, !tbaa !3799
  %117 = load ptr, ptr %src, align 8, !dbg !3999, !tbaa !2270
  %118 = load i64, ptr %i, align 8, !dbg !4000, !tbaa !2704
  %arrayidx148 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %117, i64 %118, !dbg !3999
  %key149 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx148, i32 0, i32 0, !dbg !4001
  %len150 = getelementptr inbounds %struct.ngx_str_t, ptr %key149, i32 0, i32 0, !dbg !4002
  %119 = load i64, ptr %len150, align 8, !dbg !4002, !tbaa !3855
  %add151 = add i64 %119, 1, !dbg !4003
  %call152 = call ptr @ngx_cpystrn(ptr noundef %113, ptr noundef %116, i64 noundef %add151), !dbg !4004
  call void @llvm.memset.p0.i64(ptr align 8 %sc, i8 0, i64 88, i1 false), !dbg !4005
  %120 = load ptr, ptr %cf.addr, align 8, !dbg !4006, !tbaa !2270
  %cf153 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 0, !dbg !4007
  store ptr %120, ptr %cf153, align 8, !dbg !4008, !tbaa !4009
  %121 = load ptr, ptr %src, align 8, !dbg !4011, !tbaa !2270
  %122 = load i64, ptr %i, align 8, !dbg !4012, !tbaa !2704
  %arrayidx154 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %121, i64 %122, !dbg !4011
  %value155 = getelementptr inbounds %struct.ngx_http_upstream_param_t, ptr %arrayidx154, i32 0, i32 1, !dbg !4013
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 1, !dbg !4014
  store ptr %value155, ptr %source, align 8, !dbg !4015, !tbaa !4016
  %123 = load ptr, ptr %params.addr, align 8, !dbg !4017, !tbaa !2270
  %flushes = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %123, i32 0, i32 0, !dbg !4018
  %flushes156 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 2, !dbg !4019
  store ptr %flushes, ptr %flushes156, align 8, !dbg !4020, !tbaa !4021
  %124 = load ptr, ptr %params.addr, align 8, !dbg !4022, !tbaa !2270
  %lengths157 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %124, i32 0, i32 1, !dbg !4023
  %lengths158 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 3, !dbg !4024
  store ptr %lengths157, ptr %lengths158, align 8, !dbg !4025, !tbaa !4026
  %125 = load ptr, ptr %params.addr, align 8, !dbg !4027, !tbaa !2270
  %values159 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %125, i32 0, i32 2, !dbg !4028
  %values160 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 4, !dbg !4029
  store ptr %values159, ptr %values160, align 8, !dbg !4030, !tbaa !4031
  %call161 = call i64 @ngx_http_script_compile(ptr noundef %sc), !dbg !4032
  %cmp162 = icmp ne i64 %call161, 0, !dbg !4034
  br i1 %cmp162, label %if.then163, label %if.end164, !dbg !4035

if.then163:                                       ; preds = %if.end137
  store i64 -1, ptr %retval, align 8, !dbg !4036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4036

if.end164:                                        ; preds = %if.end137
  %126 = load ptr, ptr %params.addr, align 8, !dbg !4038, !tbaa !2270
  %lengths165 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %126, i32 0, i32 1, !dbg !4039
  %127 = load ptr, ptr %lengths165, align 8, !dbg !4039, !tbaa !3684
  %call166 = call ptr @ngx_array_push_n(ptr noundef %127, i64 noundef 8), !dbg !4040
  store ptr %call166, ptr %code, align 8, !dbg !4041, !tbaa !2270
  %128 = load ptr, ptr %code, align 8, !dbg !4042, !tbaa !2270
  %cmp167 = icmp eq ptr %128, null, !dbg !4044
  br i1 %cmp167, label %if.then168, label %if.end169, !dbg !4045

if.then168:                                       ; preds = %if.end164
  store i64 -1, ptr %retval, align 8, !dbg !4046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4046

if.end169:                                        ; preds = %if.end164
  %129 = load ptr, ptr %code, align 8, !dbg !4048, !tbaa !2270
  store i64 0, ptr %129, align 8, !dbg !4049, !tbaa !2704
  %130 = load ptr, ptr %params.addr, align 8, !dbg !4050, !tbaa !2270
  %values170 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %130, i32 0, i32 2, !dbg !4051
  %131 = load ptr, ptr %values170, align 8, !dbg !4051, !tbaa !3698
  %call171 = call ptr @ngx_array_push_n(ptr noundef %131, i64 noundef 8), !dbg !4052
  store ptr %call171, ptr %code, align 8, !dbg !4053, !tbaa !2270
  %132 = load ptr, ptr %code, align 8, !dbg !4054, !tbaa !2270
  %cmp172 = icmp eq ptr %132, null, !dbg !4056
  br i1 %cmp172, label %if.then173, label %if.end174, !dbg !4057

if.then173:                                       ; preds = %if.end169
  store i64 -1, ptr %retval, align 8, !dbg !4058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4058

if.end174:                                        ; preds = %if.end169
  %133 = load ptr, ptr %code, align 8, !dbg !4060, !tbaa !2270
  store i64 0, ptr %133, align 8, !dbg !4061, !tbaa !2704
  br label %for.inc175, !dbg !4062

for.inc175:                                       ; preds = %if.end174, %if.then104
  %134 = load i64, ptr %i, align 8, !dbg !4063, !tbaa !2704
  %inc176 = add i64 %134, 1, !dbg !4063
  store i64 %inc176, ptr %i, align 8, !dbg !4063, !tbaa !2704
  br label %for.cond66, !dbg !4064, !llvm.loop !4065

for.end177:                                       ; preds = %for.cond66
  %135 = load ptr, ptr %params.addr, align 8, !dbg !4067, !tbaa !2270
  %lengths178 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %135, i32 0, i32 1, !dbg !4068
  %136 = load ptr, ptr %lengths178, align 8, !dbg !4068, !tbaa !3684
  %call179 = call ptr @ngx_array_push_n(ptr noundef %136, i64 noundef 8), !dbg !4069
  store ptr %call179, ptr %code, align 8, !dbg !4070, !tbaa !2270
  %137 = load ptr, ptr %code, align 8, !dbg !4071, !tbaa !2270
  %cmp180 = icmp eq ptr %137, null, !dbg !4073
  br i1 %cmp180, label %if.then181, label %if.end182, !dbg !4074

if.then181:                                       ; preds = %for.end177
  store i64 -1, ptr %retval, align 8, !dbg !4075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4075

if.end182:                                        ; preds = %for.end177
  %138 = load ptr, ptr %code, align 8, !dbg !4077, !tbaa !2270
  store i64 0, ptr %138, align 8, !dbg !4078, !tbaa !2704
  %nelts183 = getelementptr inbounds %struct.ngx_array_t, ptr %headers_names, i32 0, i32 1, !dbg !4079
  %139 = load i64, ptr %nelts183, align 8, !dbg !4079, !tbaa !3314
  %140 = load ptr, ptr %params.addr, align 8, !dbg !4080, !tbaa !2270
  %number = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %140, i32 0, i32 3, !dbg !4081
  store i64 %139, ptr %number, align 8, !dbg !4082, !tbaa !4083
  %141 = load ptr, ptr %params.addr, align 8, !dbg !4084, !tbaa !2270
  %hash184 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %141, i32 0, i32 4, !dbg !4085
  %hash185 = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 0, !dbg !4086
  store ptr %hash184, ptr %hash185, align 8, !dbg !4087, !tbaa !4088
  %key186 = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 1, !dbg !4089
  store ptr @ngx_hash_key_lc, ptr %key186, align 8, !dbg !4090, !tbaa !4091
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 2, !dbg !4092
  store i64 512, ptr %max_size, align 8, !dbg !4093, !tbaa !3133
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 3, !dbg !4094
  store i64 64, ptr %bucket_size, align 8, !dbg !4095, !tbaa !3138
  %name = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 4, !dbg !4096
  store ptr @.str.26, ptr %name, align 8, !dbg !4097, !tbaa !3141
  %142 = load ptr, ptr %cf.addr, align 8, !dbg !4098, !tbaa !2270
  %pool187 = getelementptr inbounds %struct.ngx_conf_s, ptr %142, i32 0, i32 3, !dbg !4099
  %143 = load ptr, ptr %pool187, align 8, !dbg !4099, !tbaa !2279
  %pool188 = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 5, !dbg !4100
  store ptr %143, ptr %pool188, align 8, !dbg !4101, !tbaa !4102
  %temp_pool189 = getelementptr inbounds %struct.ngx_hash_init_t, ptr %hash, i32 0, i32 6, !dbg !4103
  store ptr null, ptr %temp_pool189, align 8, !dbg !4104, !tbaa !4105
  %elts190 = getelementptr inbounds %struct.ngx_array_t, ptr %headers_names, i32 0, i32 0, !dbg !4106
  %144 = load ptr, ptr %elts190, align 8, !dbg !4106, !tbaa !3339
  %nelts191 = getelementptr inbounds %struct.ngx_array_t, ptr %headers_names, i32 0, i32 1, !dbg !4107
  %145 = load i64, ptr %nelts191, align 8, !dbg !4107, !tbaa !3314
  %call192 = call i64 @ngx_hash_init(ptr noundef %hash, ptr noundef %144, i64 noundef %145), !dbg !4108
  store i64 %call192, ptr %retval, align 8, !dbg !4109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4109

cleanup:                                          ; preds = %if.end182, %if.then181, %if.then173, %if.then168, %if.then163, %if.then136, %if.then120, %if.then110, %if.then82, %if.then58, %if.then37, %if.then32, %if.then19, %if.then15, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 88, ptr %sc) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 56, ptr %hash) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %hk) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 40, ptr %params_merged) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 40, ptr %headers_names) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsrc) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !4110
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4110
  %146 = load i64, ptr %retval, align 8, !dbg !4110
  ret i64 %146, !dbg !4110
}

declare !dbg !4111 i64 @ngx_http_upstream_create(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_eval(ptr noundef %r, ptr noundef %scf) #0 !dbg !4112 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %scf.addr = alloca ptr, align 8
  %url = alloca %struct.ngx_url_t, align 8
  %u = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4116, metadata !DIExpression()), !dbg !4162
  store ptr %scf, ptr %scf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %scf.addr, metadata !4117, metadata !DIExpression()), !dbg !4163
  call void @llvm.lifetime.start.p0(i64 216, ptr %url) #8, !dbg !4164
  tail call void @llvm.dbg.declare(metadata ptr %url, metadata !4118, metadata !DIExpression()), !dbg !4165
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #8, !dbg !4166
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !4161, metadata !DIExpression()), !dbg !4167
  call void @llvm.memset.p0.i64(ptr align 8 %url, i8 0, i64 216, i1 false), !dbg !4168
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4169, !tbaa !2270
  %url1 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 0, !dbg !4171
  %1 = load ptr, ptr %scf.addr, align 8, !dbg !4172, !tbaa !2270
  %scgi_lengths = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %1, i32 0, i32 4, !dbg !4173
  %2 = load ptr, ptr %scgi_lengths, align 8, !dbg !4173, !tbaa !3172
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !4174
  %3 = load ptr, ptr %elts, align 8, !dbg !4174, !tbaa !3339
  %4 = load ptr, ptr %scf.addr, align 8, !dbg !4175, !tbaa !2270
  %scgi_values = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %4, i32 0, i32 5, !dbg !4176
  %5 = load ptr, ptr %scgi_values, align 8, !dbg !4176, !tbaa !3190
  %elts2 = getelementptr inbounds %struct.ngx_array_t, ptr %5, i32 0, i32 0, !dbg !4177
  %6 = load ptr, ptr %elts2, align 8, !dbg !4177, !tbaa !3339
  %call = call ptr @ngx_http_script_run(ptr noundef %0, ptr noundef %url1, ptr noundef %3, i64 noundef 0, ptr noundef %6), !dbg !4178
  %cmp = icmp eq ptr %call, null, !dbg !4179
  br i1 %cmp, label %if.then, label %if.end, !dbg !4180

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4181

if.end:                                           ; preds = %entry
  %no_resolve = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 7, !dbg !4183
  %bf.load = load i8, ptr %no_resolve, align 8, !dbg !4184
  %bf.clear = and i8 %bf.load, -5, !dbg !4184
  %bf.set = or i8 %bf.clear, 4, !dbg !4184
  store i8 %bf.set, ptr %no_resolve, align 8, !dbg !4184
  %7 = load ptr, ptr %r.addr, align 8, !dbg !4185, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %7, i32 0, i32 11, !dbg !4187
  %8 = load ptr, ptr %pool, align 8, !dbg !4187, !tbaa !3401
  %call3 = call i64 @ngx_parse_url(ptr noundef %8, ptr noundef %url), !dbg !4188
  %cmp4 = icmp ne i64 %call3, 0, !dbg !4189
  br i1 %cmp4, label %if.then5, label %if.end15, !dbg !4190

if.then5:                                         ; preds = %if.end
  %err = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 12, !dbg !4191
  %9 = load ptr, ptr %err, align 8, !dbg !4191, !tbaa !4194
  %tobool = icmp ne ptr %9, null, !dbg !4197
  br i1 %tobool, label %if.then6, label %if.end14, !dbg !4198

if.then6:                                         ; preds = %if.then5
  %10 = load ptr, ptr %r.addr, align 8, !dbg !4199, !tbaa !2270
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %10, i32 0, i32 1, !dbg !4199
  %11 = load ptr, ptr %connection, align 8, !dbg !4199, !tbaa !4202
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 10, !dbg !4199
  %12 = load ptr, ptr %log, align 8, !dbg !4199, !tbaa !4203
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %12, i32 0, i32 0, !dbg !4199
  %13 = load i64, ptr %log_level, align 8, !dbg !4199, !tbaa !4206
  %cmp7 = icmp uge i64 %13, 4, !dbg !4199
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !4208

if.then8:                                         ; preds = %if.then6
  %14 = load ptr, ptr %r.addr, align 8, !dbg !4199, !tbaa !2270
  %connection9 = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 1, !dbg !4199
  %15 = load ptr, ptr %connection9, align 8, !dbg !4199, !tbaa !4202
  %log10 = getelementptr inbounds %struct.ngx_connection_s, ptr %15, i32 0, i32 10, !dbg !4199
  %16 = load ptr, ptr %log10, align 8, !dbg !4199, !tbaa !4203
  %err11 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 12, !dbg !4199
  %17 = load ptr, ptr %err11, align 8, !dbg !4199, !tbaa !4194
  %url12 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 0, !dbg !4199
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %16, i32 noundef 0, ptr noundef @.str.18, ptr noundef %17, ptr noundef %url12), !dbg !4199
  br label %if.end13, !dbg !4199

if.end13:                                         ; preds = %if.then8, %if.then6
  br label %if.end14, !dbg !4209

if.end14:                                         ; preds = %if.end13, %if.then5
  store i64 -1, ptr %retval, align 8, !dbg !4210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4210

if.end15:                                         ; preds = %if.end
  %18 = load ptr, ptr %r.addr, align 8, !dbg !4211, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 9, !dbg !4212
  %19 = load ptr, ptr %upstream, align 8, !dbg !4212, !tbaa !3436
  store ptr %19, ptr %u, align 8, !dbg !4213, !tbaa !2270
  %20 = load ptr, ptr %r.addr, align 8, !dbg !4214, !tbaa !2270
  %pool16 = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 11, !dbg !4215
  %21 = load ptr, ptr %pool16, align 8, !dbg !4215, !tbaa !3401
  %call17 = call ptr @ngx_pcalloc(ptr noundef %21, i64 noundef 88), !dbg !4216
  %22 = load ptr, ptr %u, align 8, !dbg !4217, !tbaa !2270
  %resolved = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %22, i32 0, i32 14, !dbg !4218
  store ptr %call17, ptr %resolved, align 8, !dbg !4219, !tbaa !4220
  %23 = load ptr, ptr %u, align 8, !dbg !4221, !tbaa !2270
  %resolved18 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %23, i32 0, i32 14, !dbg !4223
  %24 = load ptr, ptr %resolved18, align 8, !dbg !4223, !tbaa !4220
  %cmp19 = icmp eq ptr %24, null, !dbg !4224
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4225

if.then20:                                        ; preds = %if.end15
  store i64 -1, ptr %retval, align 8, !dbg !4226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4226

if.end21:                                         ; preds = %if.end15
  %addrs = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 10, !dbg !4228
  %25 = load ptr, ptr %addrs, align 8, !dbg !4228, !tbaa !4230
  %tobool22 = icmp ne ptr %25, null, !dbg !4231
  br i1 %tobool22, label %if.then23, label %if.end36, !dbg !4232

if.then23:                                        ; preds = %if.end21
  %addrs24 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 10, !dbg !4233
  %26 = load ptr, ptr %addrs24, align 8, !dbg !4233, !tbaa !4230
  %arrayidx = getelementptr inbounds %struct.ngx_addr_t, ptr %26, i64 0, !dbg !4235
  %sockaddr = getelementptr inbounds %struct.ngx_addr_t, ptr %arrayidx, i32 0, i32 0, !dbg !4236
  %27 = load ptr, ptr %sockaddr, align 8, !dbg !4236, !tbaa !4237
  %28 = load ptr, ptr %u, align 8, !dbg !4239, !tbaa !2270
  %resolved25 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %28, i32 0, i32 14, !dbg !4240
  %29 = load ptr, ptr %resolved25, align 8, !dbg !4240, !tbaa !4220
  %sockaddr26 = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %29, i32 0, i32 5, !dbg !4241
  store ptr %27, ptr %sockaddr26, align 8, !dbg !4242, !tbaa !4243
  %addrs27 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 10, !dbg !4245
  %30 = load ptr, ptr %addrs27, align 8, !dbg !4245, !tbaa !4230
  %arrayidx28 = getelementptr inbounds %struct.ngx_addr_t, ptr %30, i64 0, !dbg !4246
  %socklen = getelementptr inbounds %struct.ngx_addr_t, ptr %arrayidx28, i32 0, i32 1, !dbg !4247
  %31 = load i32, ptr %socklen, align 8, !dbg !4247, !tbaa !4248
  %32 = load ptr, ptr %u, align 8, !dbg !4249, !tbaa !2270
  %resolved29 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %32, i32 0, i32 14, !dbg !4250
  %33 = load ptr, ptr %resolved29, align 8, !dbg !4250, !tbaa !4220
  %socklen30 = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %33, i32 0, i32 6, !dbg !4251
  store i32 %31, ptr %socklen30, align 8, !dbg !4252, !tbaa !4253
  %34 = load ptr, ptr %u, align 8, !dbg !4254, !tbaa !2270
  %resolved31 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %34, i32 0, i32 14, !dbg !4255
  %35 = load ptr, ptr %resolved31, align 8, !dbg !4255, !tbaa !4220
  %name = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %35, i32 0, i32 7, !dbg !4256
  %addrs32 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 10, !dbg !4257
  %36 = load ptr, ptr %addrs32, align 8, !dbg !4257, !tbaa !4230
  %arrayidx33 = getelementptr inbounds %struct.ngx_addr_t, ptr %36, i64 0, !dbg !4258
  %name34 = getelementptr inbounds %struct.ngx_addr_t, ptr %arrayidx33, i32 0, i32 2, !dbg !4259
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 %name34, i64 16, i1 false), !dbg !4259, !tbaa.struct !3823
  %37 = load ptr, ptr %u, align 8, !dbg !4260, !tbaa !2270
  %resolved35 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %37, i32 0, i32 14, !dbg !4261
  %38 = load ptr, ptr %resolved35, align 8, !dbg !4261, !tbaa !4220
  %naddrs = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %38, i32 0, i32 3, !dbg !4262
  store i64 1, ptr %naddrs, align 8, !dbg !4263, !tbaa !4264
  br label %if.end36, !dbg !4265

if.end36:                                         ; preds = %if.then23, %if.end21
  %39 = load ptr, ptr %u, align 8, !dbg !4266, !tbaa !2270
  %resolved37 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %39, i32 0, i32 14, !dbg !4267
  %40 = load ptr, ptr %resolved37, align 8, !dbg !4267, !tbaa !4220
  %host = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %40, i32 0, i32 0, !dbg !4268
  %host38 = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 1, !dbg !4269
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %host, ptr align 8 %host38, i64 16, i1 false), !dbg !4269, !tbaa.struct !3823
  %port = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 4, !dbg !4270
  %41 = load i16, ptr %port, align 8, !dbg !4270, !tbaa !4271
  %42 = load ptr, ptr %u, align 8, !dbg !4272, !tbaa !2270
  %resolved39 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %42, i32 0, i32 14, !dbg !4273
  %43 = load ptr, ptr %resolved39, align 8, !dbg !4273, !tbaa !4220
  %port40 = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %43, i32 0, i32 1, !dbg !4274
  store i16 %41, ptr %port40, align 8, !dbg !4275, !tbaa !4276
  %no_port = getelementptr inbounds %struct.ngx_url_t, ptr %url, i32 0, i32 7, !dbg !4277
  %bf.load41 = load i8, ptr %no_port, align 8, !dbg !4277
  %bf.lshr = lshr i8 %bf.load41, 3, !dbg !4277
  %bf.clear42 = and i8 %bf.lshr, 1, !dbg !4277
  %bf.cast = zext i8 %bf.clear42 to i32, !dbg !4277
  %conv = zext i32 %bf.cast to i64, !dbg !4278
  %44 = load ptr, ptr %u, align 8, !dbg !4279, !tbaa !2270
  %resolved43 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %44, i32 0, i32 14, !dbg !4280
  %45 = load ptr, ptr %resolved43, align 8, !dbg !4280, !tbaa !4220
  %no_port44 = getelementptr inbounds %struct.ngx_http_upstream_resolved_t, ptr %45, i32 0, i32 2, !dbg !4281
  store i64 %conv, ptr %no_port44, align 8, !dbg !4282, !tbaa !4283
  store i64 0, ptr %retval, align 8, !dbg !4284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4284

cleanup:                                          ; preds = %if.end36, %if.then20, %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #8, !dbg !4285
  call void @llvm.lifetime.end.p0(i64 216, ptr %url) #8, !dbg !4285
  %46 = load i64, ptr %retval, align 8, !dbg !4285
  ret i64 %46, !dbg !4285
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_create_key(ptr noundef %r) #0 !dbg !4286 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4288, metadata !DIExpression()), !dbg !4291
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8, !dbg !4292
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !4294
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !4290, metadata !DIExpression()), !dbg !4295
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4296, !tbaa !2270
  %cache = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 8, !dbg !4297
  %1 = load ptr, ptr %cache, align 8, !dbg !4297, !tbaa !4298
  %keys = getelementptr inbounds %struct.ngx_http_cache_s, ptr %1, i32 0, i32 1, !dbg !4299
  %call = call ptr @ngx_array_push(ptr noundef %keys), !dbg !4300
  store ptr %call, ptr %key, align 8, !dbg !4301, !tbaa !2270
  %2 = load ptr, ptr %key, align 8, !dbg !4302, !tbaa !2270
  %cmp = icmp eq ptr %2, null, !dbg !4304
  br i1 %cmp, label %if.then, label %if.end, !dbg !4305

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4306

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !4308, !tbaa !2270
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %3, i32 0, i32 5, !dbg !4308
  %4 = load ptr, ptr %loc_conf, align 8, !dbg !4308, !tbaa !3418
  %5 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !4308, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5, !dbg !4308
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !4308, !tbaa !2270
  store ptr %6, ptr %scf, align 8, !dbg !4309, !tbaa !2270
  %7 = load ptr, ptr %r.addr, align 8, !dbg !4310, !tbaa !2270
  %8 = load ptr, ptr %scf, align 8, !dbg !4312, !tbaa !2270
  %cache_key = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 6, !dbg !4313
  %9 = load ptr, ptr %key, align 8, !dbg !4314, !tbaa !2270
  %call1 = call i64 @ngx_http_complex_value(ptr noundef %7, ptr noundef %cache_key, ptr noundef %9), !dbg !4315
  %cmp2 = icmp ne i64 %call1, 0, !dbg !4316
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4317

if.then3:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !4318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4318

if.end4:                                          ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !4320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4320

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !4321
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8, !dbg !4321
  %10 = load i64, ptr %retval, align 8, !dbg !4321
  ret i64 %10, !dbg !4321
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_create_request(ptr noundef %r) #0 !dbg !4322 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %content_length_n = alloca i64, align 8
  %ch = alloca i8, align 1
  %key = alloca ptr, align 8
  %val = alloca ptr, align 8
  %lowcase_key = alloca ptr, align 8
  %len = alloca i64, align 8
  %key_len = alloca i64, align 8
  %val_len = alloca i64, align 8
  %allocated = alloca i64, align 8
  %b = alloca ptr, align 8
  %content_length = alloca %struct.ngx_str_t, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %hash = alloca i64, align 8
  %skip_empty = alloca i64, align 8
  %header_params = alloca i64, align 8
  %cl = alloca ptr, align 8
  %body = alloca ptr, align 8
  %part = alloca ptr, align 8
  %header = alloca ptr, align 8
  %ignored = alloca ptr, align 8
  %params = alloca ptr, align 8
  %code = alloca ptr, align 8
  %e = alloca %struct.ngx_http_script_engine_t, align 8
  %le = alloca %struct.ngx_http_script_engine_t, align 8
  %scf = alloca ptr, align 8
  %lcode = alloca ptr, align 8
  %buffer = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4324, metadata !DIExpression()), !dbg !4361
  call void @llvm.lifetime.start.p0(i64 8, ptr %content_length_n) #8, !dbg !4362
  tail call void @llvm.dbg.declare(metadata ptr %content_length_n, metadata !4325, metadata !DIExpression()), !dbg !4363
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #8, !dbg !4364
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !4326, metadata !DIExpression()), !dbg !4365
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8, !dbg !4364
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4327, metadata !DIExpression()), !dbg !4366
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !4364
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !4328, metadata !DIExpression()), !dbg !4367
  call void @llvm.lifetime.start.p0(i64 8, ptr %lowcase_key) #8, !dbg !4364
  tail call void @llvm.dbg.declare(metadata ptr %lowcase_key, metadata !4329, metadata !DIExpression()), !dbg !4368
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !4369
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !4330, metadata !DIExpression()), !dbg !4370
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_len) #8, !dbg !4369
  tail call void @llvm.dbg.declare(metadata ptr %key_len, metadata !4331, metadata !DIExpression()), !dbg !4371
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_len) #8, !dbg !4369
  tail call void @llvm.dbg.declare(metadata ptr %val_len, metadata !4332, metadata !DIExpression()), !dbg !4372
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocated) #8, !dbg !4369
  tail call void @llvm.dbg.declare(metadata ptr %allocated, metadata !4333, metadata !DIExpression()), !dbg !4373
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8, !dbg !4374
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !4334, metadata !DIExpression()), !dbg !4375
  call void @llvm.lifetime.start.p0(i64 16, ptr %content_length) #8, !dbg !4376
  tail call void @llvm.dbg.declare(metadata ptr %content_length, metadata !4335, metadata !DIExpression()), !dbg !4377
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !4378
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4336, metadata !DIExpression()), !dbg !4379
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !4378
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !4337, metadata !DIExpression()), !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #8, !dbg !4378
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !4338, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip_empty) #8, !dbg !4378
  tail call void @llvm.dbg.declare(metadata ptr %skip_empty, metadata !4339, metadata !DIExpression()), !dbg !4382
  call void @llvm.lifetime.start.p0(i64 8, ptr %header_params) #8, !dbg !4378
  tail call void @llvm.dbg.declare(metadata ptr %header_params, metadata !4340, metadata !DIExpression()), !dbg !4383
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #8, !dbg !4384
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !4341, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %body) #8, !dbg !4384
  tail call void @llvm.dbg.declare(metadata ptr %body, metadata !4342, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 8, ptr %part) #8, !dbg !4387
  tail call void @llvm.dbg.declare(metadata ptr %part, metadata !4343, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #8, !dbg !4389
  tail call void @llvm.dbg.declare(metadata ptr %header, metadata !4344, metadata !DIExpression()), !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %ignored) #8, !dbg !4389
  tail call void @llvm.dbg.declare(metadata ptr %ignored, metadata !4345, metadata !DIExpression()), !dbg !4391
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #8, !dbg !4392
  tail call void @llvm.dbg.declare(metadata ptr %params, metadata !4347, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #8, !dbg !4394
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !4348, metadata !DIExpression()), !dbg !4395
  call void @llvm.lifetime.start.p0(i64 88, ptr %e) #8, !dbg !4396
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !4349, metadata !DIExpression()), !dbg !4397
  call void @llvm.lifetime.start.p0(i64 88, ptr %le) #8, !dbg !4396
  tail call void @llvm.dbg.declare(metadata ptr %le, metadata !4350, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !4399
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !4351, metadata !DIExpression()), !dbg !4400
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcode) #8, !dbg !4401
  tail call void @llvm.dbg.declare(metadata ptr %lcode, metadata !4352, metadata !DIExpression()), !dbg !4402
  call void @llvm.lifetime.start.p0(i64 20, ptr %buffer) #8, !dbg !4403
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4353, metadata !DIExpression()), !dbg !4404
  store i64 0, ptr %content_length_n, align 8, !dbg !4405, !tbaa !2704
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4406, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 9, !dbg !4407
  %1 = load ptr, ptr %upstream, align 8, !dbg !4407, !tbaa !3436
  %request_bufs = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %1, i32 0, i32 4, !dbg !4408
  %2 = load ptr, ptr %request_bufs, align 8, !dbg !4408, !tbaa !4409
  store ptr %2, ptr %body, align 8, !dbg !4410, !tbaa !2270
  br label %while.cond, !dbg !4411

while.cond:                                       ; preds = %cond.end, %entry
  %3 = load ptr, ptr %body, align 8, !dbg !4412, !tbaa !2270
  %tobool = icmp ne ptr %3, null, !dbg !4411
  br i1 %tobool, label %while.body, label %while.end, !dbg !4411

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %4, i32 0, i32 0, !dbg !4413
  %5 = load ptr, ptr %buf, align 8, !dbg !4413, !tbaa !4415
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %5, i32 0, i32 9, !dbg !4413
  %bf.load = load i16, ptr %temporary, align 8, !dbg !4413
  %bf.clear = and i16 %bf.load, 1, !dbg !4413
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4413
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !4413
  br i1 %tobool1, label %cond.true, label %lor.lhs.false, !dbg !4413

lor.lhs.false:                                    ; preds = %while.body
  %6 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf2 = getelementptr inbounds %struct.ngx_chain_s, ptr %6, i32 0, i32 0, !dbg !4413
  %7 = load ptr, ptr %buf2, align 8, !dbg !4413, !tbaa !4415
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %7, i32 0, i32 9, !dbg !4413
  %bf.load3 = load i16, ptr %memory, align 8, !dbg !4413
  %bf.lshr = lshr i16 %bf.load3, 1, !dbg !4413
  %bf.clear4 = and i16 %bf.lshr, 1, !dbg !4413
  %bf.cast5 = zext i16 %bf.clear4 to i32, !dbg !4413
  %tobool6 = icmp ne i32 %bf.cast5, 0, !dbg !4413
  br i1 %tobool6, label %cond.true, label %lor.lhs.false7, !dbg !4413

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf8 = getelementptr inbounds %struct.ngx_chain_s, ptr %8, i32 0, i32 0, !dbg !4413
  %9 = load ptr, ptr %buf8, align 8, !dbg !4413, !tbaa !4415
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %9, i32 0, i32 9, !dbg !4413
  %bf.load9 = load i16, ptr %mmap, align 8, !dbg !4413
  %bf.lshr10 = lshr i16 %bf.load9, 2, !dbg !4413
  %bf.clear11 = and i16 %bf.lshr10, 1, !dbg !4413
  %bf.cast12 = zext i16 %bf.clear11 to i32, !dbg !4413
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !4413
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !4413

cond.true:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %while.body
  %10 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf14 = getelementptr inbounds %struct.ngx_chain_s, ptr %10, i32 0, i32 0, !dbg !4413
  %11 = load ptr, ptr %buf14, align 8, !dbg !4413, !tbaa !4415
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %11, i32 0, i32 1, !dbg !4413
  %12 = load ptr, ptr %last, align 8, !dbg !4413, !tbaa !4417
  %13 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf15 = getelementptr inbounds %struct.ngx_chain_s, ptr %13, i32 0, i32 0, !dbg !4413
  %14 = load ptr, ptr %buf15, align 8, !dbg !4413, !tbaa !4415
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %14, i32 0, i32 0, !dbg !4413
  %15 = load ptr, ptr %pos, align 8, !dbg !4413, !tbaa !4418
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !4413
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64, !dbg !4413
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4413
  br label %cond.end, !dbg !4413

cond.false:                                       ; preds = %lor.lhs.false7
  %16 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf16 = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 0, !dbg !4413
  %17 = load ptr, ptr %buf16, align 8, !dbg !4413, !tbaa !4415
  %file_last = getelementptr inbounds %struct.ngx_buf_s, ptr %17, i32 0, i32 3, !dbg !4413
  %18 = load i64, ptr %file_last, align 8, !dbg !4413, !tbaa !4419
  %19 = load ptr, ptr %body, align 8, !dbg !4413, !tbaa !2270
  %buf17 = getelementptr inbounds %struct.ngx_chain_s, ptr %19, i32 0, i32 0, !dbg !4413
  %20 = load ptr, ptr %buf17, align 8, !dbg !4413, !tbaa !4415
  %file_pos = getelementptr inbounds %struct.ngx_buf_s, ptr %20, i32 0, i32 2, !dbg !4413
  %21 = load i64, ptr %file_pos, align 8, !dbg !4413, !tbaa !4420
  %sub = sub nsw i64 %18, %21, !dbg !4413
  br label %cond.end, !dbg !4413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub, %cond.false ], !dbg !4413
  %22 = load i64, ptr %content_length_n, align 8, !dbg !4421, !tbaa !2704
  %add = add nsw i64 %22, %cond, !dbg !4421
  store i64 %add, ptr %content_length_n, align 8, !dbg !4421, !tbaa !2704
  %23 = load ptr, ptr %body, align 8, !dbg !4422, !tbaa !2270
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %23, i32 0, i32 1, !dbg !4423
  %24 = load ptr, ptr %next, align 8, !dbg !4423, !tbaa !4424
  store ptr %24, ptr %body, align 8, !dbg !4425, !tbaa !2270
  br label %while.cond, !dbg !4411, !llvm.loop !4426

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buffer, i64 0, i64 0, !dbg !4428
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %content_length, i32 0, i32 1, !dbg !4429
  store ptr %arraydecay, ptr %data, align 8, !dbg !4430, !tbaa !4431
  %arraydecay18 = getelementptr inbounds [20 x i8], ptr %buffer, i64 0, i64 0, !dbg !4432
  %25 = load i64, ptr %content_length_n, align 8, !dbg !4433, !tbaa !2704
  %call = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %arraydecay18, ptr noundef @.str.19, i64 noundef %25), !dbg !4434
  %arraydecay19 = getelementptr inbounds [20 x i8], ptr %buffer, i64 0, i64 0, !dbg !4435
  %sub.ptr.lhs.cast20 = ptrtoint ptr %call to i64, !dbg !4436
  %sub.ptr.rhs.cast21 = ptrtoint ptr %arraydecay19 to i64, !dbg !4436
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21, !dbg !4436
  %len23 = getelementptr inbounds %struct.ngx_str_t, ptr %content_length, i32 0, i32 0, !dbg !4437
  store i64 %sub.ptr.sub22, ptr %len23, align 8, !dbg !4438, !tbaa !4439
  %len24 = getelementptr inbounds %struct.ngx_str_t, ptr %content_length, i32 0, i32 0, !dbg !4440
  %26 = load i64, ptr %len24, align 8, !dbg !4440, !tbaa !4439
  %add25 = add i64 15, %26, !dbg !4441
  %add26 = add i64 %add25, 1, !dbg !4442
  store i64 %add26, ptr %len, align 8, !dbg !4443, !tbaa !2704
  store i64 0, ptr %header_params, align 8, !dbg !4444, !tbaa !2704
  store ptr null, ptr %ignored, align 8, !dbg !4445, !tbaa !2270
  %27 = load ptr, ptr %r.addr, align 8, !dbg !4446, !tbaa !2270
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %27, i32 0, i32 5, !dbg !4446
  %28 = load ptr, ptr %loc_conf, align 8, !dbg !4446, !tbaa !3418
  %29 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !4446, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 %29, !dbg !4446
  %30 = load ptr, ptr %arrayidx, align 8, !dbg !4446, !tbaa !2270
  store ptr %30, ptr %scf, align 8, !dbg !4447, !tbaa !2270
  %31 = load ptr, ptr %r.addr, align 8, !dbg !4448, !tbaa !2270
  %upstream27 = getelementptr inbounds %struct.ngx_http_request_s, ptr %31, i32 0, i32 9, !dbg !4449
  %32 = load ptr, ptr %upstream27, align 8, !dbg !4449, !tbaa !3436
  %cacheable = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %32, i32 0, i32 39, !dbg !4450
  %bf.load28 = load i16, ptr %cacheable, align 8, !dbg !4450
  %bf.lshr29 = lshr i16 %bf.load28, 1, !dbg !4450
  %bf.clear30 = and i16 %bf.lshr29, 1, !dbg !4450
  %bf.cast31 = zext i16 %bf.clear30 to i32, !dbg !4450
  %tobool32 = icmp ne i32 %bf.cast31, 0, !dbg !4448
  br i1 %tobool32, label %cond.true33, label %cond.false34, !dbg !4448

cond.true33:                                      ; preds = %while.end
  %33 = load ptr, ptr %scf, align 8, !dbg !4451, !tbaa !2270
  %params_cache = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %33, i32 0, i32 2, !dbg !4452
  br label %cond.end36, !dbg !4448

cond.false34:                                     ; preds = %while.end
  %34 = load ptr, ptr %scf, align 8, !dbg !4453, !tbaa !2270
  %params35 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %34, i32 0, i32 1, !dbg !4454
  br label %cond.end36, !dbg !4448

cond.end36:                                       ; preds = %cond.false34, %cond.true33
  %cond37 = phi ptr [ %params_cache, %cond.true33 ], [ %params35, %cond.false34 ], !dbg !4448
  store ptr %cond37, ptr %params, align 8, !dbg !4455, !tbaa !2270
  %35 = load ptr, ptr %params, align 8, !dbg !4456, !tbaa !2270
  %lengths = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %35, i32 0, i32 1, !dbg !4458
  %36 = load ptr, ptr %lengths, align 8, !dbg !4458, !tbaa !3684
  %tobool38 = icmp ne ptr %36, null, !dbg !4456
  br i1 %tobool38, label %if.then, label %if.end62, !dbg !4459

if.then:                                          ; preds = %cond.end36
  call void @llvm.memset.p0.i64(ptr align 8 %le, i8 0, i64 88, i1 false), !dbg !4460
  %37 = load ptr, ptr %r.addr, align 8, !dbg !4462, !tbaa !2270
  %38 = load ptr, ptr %params, align 8, !dbg !4463, !tbaa !2270
  %flushes = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %38, i32 0, i32 0, !dbg !4464
  %39 = load ptr, ptr %flushes, align 8, !dbg !4464, !tbaa !4465
  call void @ngx_http_script_flush_no_cacheable_variables(ptr noundef %37, ptr noundef %39), !dbg !4466
  %flushed = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 6, !dbg !4467
  %bf.load39 = load i8, ptr %flushed, align 8, !dbg !4468
  %bf.clear40 = and i8 %bf.load39, -2, !dbg !4468
  %bf.set = or i8 %bf.clear40, 1, !dbg !4468
  store i8 %bf.set, ptr %flushed, align 8, !dbg !4468
  %40 = load ptr, ptr %params, align 8, !dbg !4469, !tbaa !2270
  %lengths41 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %40, i32 0, i32 1, !dbg !4470
  %41 = load ptr, ptr %lengths41, align 8, !dbg !4470, !tbaa !3684
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %41, i32 0, i32 0, !dbg !4471
  %42 = load ptr, ptr %elts, align 8, !dbg !4471, !tbaa !3339
  %ip = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4472
  store ptr %42, ptr %ip, align 8, !dbg !4473, !tbaa !4474
  %43 = load ptr, ptr %r.addr, align 8, !dbg !4476, !tbaa !2270
  %request = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 8, !dbg !4477
  store ptr %43, ptr %request, align 8, !dbg !4478, !tbaa !4479
  br label %while.cond42, !dbg !4480

while.cond42:                                     ; preds = %if.end, %if.then57, %if.then
  %ip43 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4481
  %44 = load ptr, ptr %ip43, align 8, !dbg !4481, !tbaa !4474
  %45 = load i64, ptr %44, align 8, !dbg !4482, !tbaa !2704
  %tobool44 = icmp ne i64 %45, 0, !dbg !4480
  br i1 %tobool44, label %while.body45, label %while.end61, !dbg !4480

while.body45:                                     ; preds = %while.cond42
  %ip46 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4483
  %46 = load ptr, ptr %ip46, align 8, !dbg !4483, !tbaa !4474
  %47 = load ptr, ptr %46, align 8, !dbg !4485, !tbaa !2270
  store ptr %47, ptr %lcode, align 8, !dbg !4486, !tbaa !2270
  %48 = load ptr, ptr %lcode, align 8, !dbg !4487, !tbaa !2270
  %call47 = call i64 %48(ptr noundef %le), !dbg !4487
  store i64 %call47, ptr %key_len, align 8, !dbg !4488, !tbaa !2704
  %ip48 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4489
  %49 = load ptr, ptr %ip48, align 8, !dbg !4489, !tbaa !4474
  %50 = load ptr, ptr %49, align 8, !dbg !4490, !tbaa !2270
  store ptr %50, ptr %lcode, align 8, !dbg !4491, !tbaa !2270
  %51 = load ptr, ptr %lcode, align 8, !dbg !4492, !tbaa !2270
  %call49 = call i64 %51(ptr noundef %le), !dbg !4492
  store i64 %call49, ptr %skip_empty, align 8, !dbg !4493, !tbaa !2704
  store i64 0, ptr %val_len, align 8, !dbg !4494, !tbaa !2704
  br label %for.cond, !dbg !4496

for.cond:                                         ; preds = %for.inc, %while.body45
  %ip50 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4497
  %52 = load ptr, ptr %ip50, align 8, !dbg !4497, !tbaa !4474
  %53 = load i64, ptr %52, align 8, !dbg !4499, !tbaa !2704
  %tobool51 = icmp ne i64 %53, 0, !dbg !4500
  br i1 %tobool51, label %for.body, label %for.end, !dbg !4500

for.body:                                         ; preds = %for.cond
  %ip52 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4501
  %54 = load ptr, ptr %ip52, align 8, !dbg !4501, !tbaa !4474
  %55 = load ptr, ptr %54, align 8, !dbg !4503, !tbaa !2270
  store ptr %55, ptr %lcode, align 8, !dbg !4504, !tbaa !2270
  br label %for.inc, !dbg !4505

for.inc:                                          ; preds = %for.body
  %56 = load ptr, ptr %lcode, align 8, !dbg !4506, !tbaa !2270
  %call53 = call i64 %56(ptr noundef %le), !dbg !4506
  %57 = load i64, ptr %val_len, align 8, !dbg !4507, !tbaa !2704
  %add54 = add i64 %57, %call53, !dbg !4507
  store i64 %add54, ptr %val_len, align 8, !dbg !4507, !tbaa !2704
  br label %for.cond, !dbg !4508, !llvm.loop !4509

for.end:                                          ; preds = %for.cond
  %ip55 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4511
  %58 = load ptr, ptr %ip55, align 8, !dbg !4512, !tbaa !4474
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 8, !dbg !4512
  store ptr %add.ptr, ptr %ip55, align 8, !dbg !4512, !tbaa !4474
  %59 = load i64, ptr %skip_empty, align 8, !dbg !4513, !tbaa !2704
  %tobool56 = icmp ne i64 %59, 0, !dbg !4513
  br i1 %tobool56, label %land.lhs.true, label %if.end, !dbg !4515

land.lhs.true:                                    ; preds = %for.end
  %60 = load i64, ptr %val_len, align 8, !dbg !4516, !tbaa !2704
  %cmp = icmp eq i64 %60, 0, !dbg !4517
  br i1 %cmp, label %if.then57, label %if.end, !dbg !4518

if.then57:                                        ; preds = %land.lhs.true
  br label %while.cond42, !dbg !4519, !llvm.loop !4521

if.end:                                           ; preds = %land.lhs.true, %for.end
  %61 = load i64, ptr %key_len, align 8, !dbg !4523, !tbaa !2704
  %62 = load i64, ptr %val_len, align 8, !dbg !4524, !tbaa !2704
  %add58 = add i64 %61, %62, !dbg !4525
  %add59 = add i64 %add58, 1, !dbg !4526
  %63 = load i64, ptr %len, align 8, !dbg !4527, !tbaa !2704
  %add60 = add i64 %63, %add59, !dbg !4527
  store i64 %add60, ptr %len, align 8, !dbg !4527, !tbaa !2704
  br label %while.cond42, !dbg !4480, !llvm.loop !4521

while.end61:                                      ; preds = %while.cond42
  br label %if.end62, !dbg !4528

if.end62:                                         ; preds = %while.end61, %cond.end36
  %64 = load ptr, ptr %scf, align 8, !dbg !4529, !tbaa !2270
  %upstream63 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %64, i32 0, i32 0, !dbg !4531
  %pass_request_headers = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream63, i32 0, i32 21, !dbg !4532
  %65 = load i64, ptr %pass_request_headers, align 8, !dbg !4532, !tbaa !2445
  %tobool64 = icmp ne i64 %65, 0, !dbg !4529
  br i1 %tobool64, label %if.then65, label %if.end166, !dbg !4533

if.then65:                                        ; preds = %if.end62
  store i64 0, ptr %allocated, align 8, !dbg !4534, !tbaa !2704
  store ptr null, ptr %lowcase_key, align 8, !dbg !4536, !tbaa !2270
  %66 = load ptr, ptr %params, align 8, !dbg !4537, !tbaa !2270
  %number = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %66, i32 0, i32 3, !dbg !4539
  %67 = load i64, ptr %number, align 8, !dbg !4539, !tbaa !4083
  %tobool66 = icmp ne i64 %67, 0, !dbg !4537
  br i1 %tobool66, label %if.then67, label %if.end79, !dbg !4540

if.then67:                                        ; preds = %if.then65
  store i64 0, ptr %n, align 8, !dbg !4541, !tbaa !2704
  %68 = load ptr, ptr %r.addr, align 8, !dbg !4543, !tbaa !2270
  %headers_in = getelementptr inbounds %struct.ngx_http_request_s, ptr %68, i32 0, i32 13, !dbg !4544
  %headers = getelementptr inbounds %struct.ngx_http_headers_in_t, ptr %headers_in, i32 0, i32 0, !dbg !4545
  %part68 = getelementptr inbounds %struct.ngx_list_t, ptr %headers, i32 0, i32 1, !dbg !4546
  store ptr %part68, ptr %part, align 8, !dbg !4547, !tbaa !2270
  br label %while.cond69, !dbg !4548

while.cond69:                                     ; preds = %while.body71, %if.then67
  %69 = load ptr, ptr %part, align 8, !dbg !4549, !tbaa !2270
  %tobool70 = icmp ne ptr %69, null, !dbg !4548
  br i1 %tobool70, label %while.body71, label %while.end74, !dbg !4548

while.body71:                                     ; preds = %while.cond69
  %70 = load ptr, ptr %part, align 8, !dbg !4550, !tbaa !2270
  %nelts = getelementptr inbounds %struct.ngx_list_part_s, ptr %70, i32 0, i32 1, !dbg !4552
  %71 = load i64, ptr %nelts, align 8, !dbg !4552, !tbaa !4553
  %72 = load i64, ptr %n, align 8, !dbg !4554, !tbaa !2704
  %add72 = add i64 %72, %71, !dbg !4554
  store i64 %add72, ptr %n, align 8, !dbg !4554, !tbaa !2704
  %73 = load ptr, ptr %part, align 8, !dbg !4555, !tbaa !2270
  %next73 = getelementptr inbounds %struct.ngx_list_part_s, ptr %73, i32 0, i32 2, !dbg !4556
  %74 = load ptr, ptr %next73, align 8, !dbg !4556, !tbaa !4557
  store ptr %74, ptr %part, align 8, !dbg !4558, !tbaa !2270
  br label %while.cond69, !dbg !4548, !llvm.loop !4559

while.end74:                                      ; preds = %while.cond69
  %75 = load ptr, ptr %r.addr, align 8, !dbg !4561, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %75, i32 0, i32 11, !dbg !4562
  %76 = load ptr, ptr %pool, align 8, !dbg !4562, !tbaa !3401
  %77 = load i64, ptr %n, align 8, !dbg !4563, !tbaa !2704
  %mul = mul i64 %77, 8, !dbg !4564
  %call75 = call ptr @ngx_palloc(ptr noundef %76, i64 noundef %mul), !dbg !4565
  store ptr %call75, ptr %ignored, align 8, !dbg !4566, !tbaa !2270
  %78 = load ptr, ptr %ignored, align 8, !dbg !4567, !tbaa !2270
  %cmp76 = icmp eq ptr %78, null, !dbg !4569
  br i1 %cmp76, label %if.then77, label %if.end78, !dbg !4570

if.then77:                                        ; preds = %while.end74
  store i64 -1, ptr %retval, align 8, !dbg !4571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4571

if.end78:                                         ; preds = %while.end74
  br label %if.end79, !dbg !4573

if.end79:                                         ; preds = %if.end78, %if.then65
  %79 = load ptr, ptr %r.addr, align 8, !dbg !4574, !tbaa !2270
  %headers_in80 = getelementptr inbounds %struct.ngx_http_request_s, ptr %79, i32 0, i32 13, !dbg !4575
  %headers81 = getelementptr inbounds %struct.ngx_http_headers_in_t, ptr %headers_in80, i32 0, i32 0, !dbg !4576
  %part82 = getelementptr inbounds %struct.ngx_list_t, ptr %headers81, i32 0, i32 1, !dbg !4577
  store ptr %part82, ptr %part, align 8, !dbg !4578, !tbaa !2270
  %80 = load ptr, ptr %part, align 8, !dbg !4579, !tbaa !2270
  %elts83 = getelementptr inbounds %struct.ngx_list_part_s, ptr %80, i32 0, i32 0, !dbg !4580
  %81 = load ptr, ptr %elts83, align 8, !dbg !4580, !tbaa !4581
  store ptr %81, ptr %header, align 8, !dbg !4582, !tbaa !2270
  store i64 0, ptr %i, align 8, !dbg !4583, !tbaa !2704
  br label %for.cond84, !dbg !4585

for.cond84:                                       ; preds = %for.inc163, %if.end79
  %82 = load i64, ptr %i, align 8, !dbg !4586, !tbaa !2704
  %83 = load ptr, ptr %part, align 8, !dbg !4590, !tbaa !2270
  %nelts85 = getelementptr inbounds %struct.ngx_list_part_s, ptr %83, i32 0, i32 1, !dbg !4591
  %84 = load i64, ptr %nelts85, align 8, !dbg !4591, !tbaa !4553
  %cmp86 = icmp uge i64 %82, %84, !dbg !4592
  br i1 %cmp86, label %if.then87, label %if.end94, !dbg !4593

if.then87:                                        ; preds = %for.cond84
  %85 = load ptr, ptr %part, align 8, !dbg !4594, !tbaa !2270
  %next88 = getelementptr inbounds %struct.ngx_list_part_s, ptr %85, i32 0, i32 2, !dbg !4597
  %86 = load ptr, ptr %next88, align 8, !dbg !4597, !tbaa !4557
  %cmp89 = icmp eq ptr %86, null, !dbg !4598
  br i1 %cmp89, label %if.then90, label %if.end91, !dbg !4599

if.then90:                                        ; preds = %if.then87
  br label %for.end165, !dbg !4600

if.end91:                                         ; preds = %if.then87
  %87 = load ptr, ptr %part, align 8, !dbg !4602, !tbaa !2270
  %next92 = getelementptr inbounds %struct.ngx_list_part_s, ptr %87, i32 0, i32 2, !dbg !4603
  %88 = load ptr, ptr %next92, align 8, !dbg !4603, !tbaa !4557
  store ptr %88, ptr %part, align 8, !dbg !4604, !tbaa !2270
  %89 = load ptr, ptr %part, align 8, !dbg !4605, !tbaa !2270
  %elts93 = getelementptr inbounds %struct.ngx_list_part_s, ptr %89, i32 0, i32 0, !dbg !4606
  %90 = load ptr, ptr %elts93, align 8, !dbg !4606, !tbaa !4581
  store ptr %90, ptr %header, align 8, !dbg !4607, !tbaa !2270
  store i64 0, ptr %i, align 8, !dbg !4608, !tbaa !2704
  br label %if.end94, !dbg !4609

if.end94:                                         ; preds = %if.end91, %for.cond84
  %91 = load ptr, ptr %params, align 8, !dbg !4610, !tbaa !2270
  %number95 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %91, i32 0, i32 3, !dbg !4612
  %92 = load i64, ptr %number95, align 8, !dbg !4612, !tbaa !4083
  %tobool96 = icmp ne i64 %92, 0, !dbg !4610
  br i1 %tobool96, label %if.then97, label %if.end152, !dbg !4613

if.then97:                                        ; preds = %if.end94
  %93 = load i64, ptr %allocated, align 8, !dbg !4614, !tbaa !2704
  %94 = load ptr, ptr %header, align 8, !dbg !4617, !tbaa !2270
  %95 = load i64, ptr %i, align 8, !dbg !4618, !tbaa !2704
  %arrayidx98 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %94, i64 %95, !dbg !4617
  %key99 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx98, i32 0, i32 1, !dbg !4619
  %len100 = getelementptr inbounds %struct.ngx_str_t, ptr %key99, i32 0, i32 0, !dbg !4620
  %96 = load i64, ptr %len100, align 8, !dbg !4620, !tbaa !4621
  %cmp101 = icmp ult i64 %93, %96, !dbg !4623
  br i1 %cmp101, label %if.then102, label %if.end112, !dbg !4624

if.then102:                                       ; preds = %if.then97
  %97 = load ptr, ptr %header, align 8, !dbg !4625, !tbaa !2270
  %98 = load i64, ptr %i, align 8, !dbg !4627, !tbaa !2704
  %arrayidx103 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %97, i64 %98, !dbg !4625
  %key104 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx103, i32 0, i32 1, !dbg !4628
  %len105 = getelementptr inbounds %struct.ngx_str_t, ptr %key104, i32 0, i32 0, !dbg !4629
  %99 = load i64, ptr %len105, align 8, !dbg !4629, !tbaa !4621
  %add106 = add i64 %99, 16, !dbg !4630
  store i64 %add106, ptr %allocated, align 8, !dbg !4631, !tbaa !2704
  %100 = load ptr, ptr %r.addr, align 8, !dbg !4632, !tbaa !2270
  %pool107 = getelementptr inbounds %struct.ngx_http_request_s, ptr %100, i32 0, i32 11, !dbg !4633
  %101 = load ptr, ptr %pool107, align 8, !dbg !4633, !tbaa !3401
  %102 = load i64, ptr %allocated, align 8, !dbg !4634, !tbaa !2704
  %call108 = call ptr @ngx_pnalloc(ptr noundef %101, i64 noundef %102), !dbg !4635
  store ptr %call108, ptr %lowcase_key, align 8, !dbg !4636, !tbaa !2270
  %103 = load ptr, ptr %lowcase_key, align 8, !dbg !4637, !tbaa !2270
  %cmp109 = icmp eq ptr %103, null, !dbg !4639
  br i1 %cmp109, label %if.then110, label %if.end111, !dbg !4640

if.then110:                                       ; preds = %if.then102
  store i64 -1, ptr %retval, align 8, !dbg !4641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end111:                                        ; preds = %if.then102
  br label %if.end112, !dbg !4643

if.end112:                                        ; preds = %if.end111, %if.then97
  store i64 0, ptr %hash, align 8, !dbg !4644, !tbaa !2704
  store i64 0, ptr %n, align 8, !dbg !4645, !tbaa !2704
  br label %for.cond113, !dbg !4647

for.cond113:                                      ; preds = %for.inc142, %if.end112
  %104 = load i64, ptr %n, align 8, !dbg !4648, !tbaa !2704
  %105 = load ptr, ptr %header, align 8, !dbg !4650, !tbaa !2270
  %106 = load i64, ptr %i, align 8, !dbg !4651, !tbaa !2704
  %arrayidx114 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %105, i64 %106, !dbg !4650
  %key115 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx114, i32 0, i32 1, !dbg !4652
  %len116 = getelementptr inbounds %struct.ngx_str_t, ptr %key115, i32 0, i32 0, !dbg !4653
  %107 = load i64, ptr %len116, align 8, !dbg !4653, !tbaa !4621
  %cmp117 = icmp ult i64 %104, %107, !dbg !4654
  br i1 %cmp117, label %for.body118, label %for.end143, !dbg !4655

for.body118:                                      ; preds = %for.cond113
  %108 = load ptr, ptr %header, align 8, !dbg !4656, !tbaa !2270
  %109 = load i64, ptr %i, align 8, !dbg !4658, !tbaa !2704
  %arrayidx119 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %108, i64 %109, !dbg !4656
  %key120 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx119, i32 0, i32 1, !dbg !4659
  %data121 = getelementptr inbounds %struct.ngx_str_t, ptr %key120, i32 0, i32 1, !dbg !4660
  %110 = load ptr, ptr %data121, align 8, !dbg !4660, !tbaa !4661
  %111 = load i64, ptr %n, align 8, !dbg !4662, !tbaa !2704
  %arrayidx122 = getelementptr inbounds i8, ptr %110, i64 %111, !dbg !4656
  %112 = load i8, ptr %arrayidx122, align 1, !dbg !4656, !tbaa !4663
  store i8 %112, ptr %ch, align 1, !dbg !4664, !tbaa !4663
  %113 = load i8, ptr %ch, align 1, !dbg !4665, !tbaa !4663
  %conv = zext i8 %113 to i32, !dbg !4665
  %cmp123 = icmp sge i32 %conv, 65, !dbg !4667
  br i1 %cmp123, label %land.lhs.true125, label %if.else, !dbg !4668

land.lhs.true125:                                 ; preds = %for.body118
  %114 = load i8, ptr %ch, align 1, !dbg !4669, !tbaa !4663
  %conv126 = zext i8 %114 to i32, !dbg !4669
  %cmp127 = icmp sle i32 %conv126, 90, !dbg !4670
  br i1 %cmp127, label %if.then129, label %if.else, !dbg !4671

if.then129:                                       ; preds = %land.lhs.true125
  %115 = load i8, ptr %ch, align 1, !dbg !4672, !tbaa !4663
  %conv130 = zext i8 %115 to i32, !dbg !4672
  %or = or i32 %conv130, 32, !dbg !4672
  %conv131 = trunc i32 %or to i8, !dbg !4672
  store i8 %conv131, ptr %ch, align 1, !dbg !4672, !tbaa !4663
  br label %if.end137, !dbg !4674

if.else:                                          ; preds = %land.lhs.true125, %for.body118
  %116 = load i8, ptr %ch, align 1, !dbg !4675, !tbaa !4663
  %conv132 = zext i8 %116 to i32, !dbg !4675
  %cmp133 = icmp eq i32 %conv132, 45, !dbg !4677
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !4678

if.then135:                                       ; preds = %if.else
  store i8 95, ptr %ch, align 1, !dbg !4679, !tbaa !4663
  br label %if.end136, !dbg !4681

if.end136:                                        ; preds = %if.then135, %if.else
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then129
  %117 = load i64, ptr %hash, align 8, !dbg !4682, !tbaa !2704
  %mul138 = mul i64 %117, 31, !dbg !4682
  %118 = load i8, ptr %ch, align 1, !dbg !4682, !tbaa !4663
  %conv139 = zext i8 %118 to i64, !dbg !4682
  %add140 = add i64 %mul138, %conv139, !dbg !4682
  store i64 %add140, ptr %hash, align 8, !dbg !4683, !tbaa !2704
  %119 = load i8, ptr %ch, align 1, !dbg !4684, !tbaa !4663
  %120 = load ptr, ptr %lowcase_key, align 8, !dbg !4685, !tbaa !2270
  %121 = load i64, ptr %n, align 8, !dbg !4686, !tbaa !2704
  %arrayidx141 = getelementptr inbounds i8, ptr %120, i64 %121, !dbg !4685
  store i8 %119, ptr %arrayidx141, align 1, !dbg !4687, !tbaa !4663
  br label %for.inc142, !dbg !4688

for.inc142:                                       ; preds = %if.end137
  %122 = load i64, ptr %n, align 8, !dbg !4689, !tbaa !2704
  %inc = add i64 %122, 1, !dbg !4689
  store i64 %inc, ptr %n, align 8, !dbg !4689, !tbaa !2704
  br label %for.cond113, !dbg !4690, !llvm.loop !4691

for.end143:                                       ; preds = %for.cond113
  %123 = load ptr, ptr %params, align 8, !dbg !4693, !tbaa !2270
  %hash144 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %123, i32 0, i32 4, !dbg !4695
  %124 = load i64, ptr %hash, align 8, !dbg !4696, !tbaa !2704
  %125 = load ptr, ptr %lowcase_key, align 8, !dbg !4697, !tbaa !2270
  %126 = load i64, ptr %n, align 8, !dbg !4698, !tbaa !2704
  %call145 = call ptr @ngx_hash_find(ptr noundef %hash144, i64 noundef %124, ptr noundef %125, i64 noundef %126), !dbg !4699
  %tobool146 = icmp ne ptr %call145, null, !dbg !4699
  br i1 %tobool146, label %if.then147, label %if.end151, !dbg !4700

if.then147:                                       ; preds = %for.end143
  %127 = load ptr, ptr %header, align 8, !dbg !4701, !tbaa !2270
  %128 = load i64, ptr %i, align 8, !dbg !4703, !tbaa !2704
  %arrayidx148 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %127, i64 %128, !dbg !4701
  %129 = load ptr, ptr %ignored, align 8, !dbg !4704, !tbaa !2270
  %130 = load i64, ptr %header_params, align 8, !dbg !4705, !tbaa !2704
  %inc149 = add i64 %130, 1, !dbg !4705
  store i64 %inc149, ptr %header_params, align 8, !dbg !4705, !tbaa !2704
  %arrayidx150 = getelementptr inbounds ptr, ptr %129, i64 %130, !dbg !4704
  store ptr %arrayidx148, ptr %arrayidx150, align 8, !dbg !4706, !tbaa !2270
  br label %for.inc163, !dbg !4707

if.end151:                                        ; preds = %for.end143
  br label %if.end152, !dbg !4708

if.end152:                                        ; preds = %if.end151, %if.end94
  %131 = load ptr, ptr %header, align 8, !dbg !4709, !tbaa !2270
  %132 = load i64, ptr %i, align 8, !dbg !4710, !tbaa !2704
  %arrayidx153 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %131, i64 %132, !dbg !4709
  %key154 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx153, i32 0, i32 1, !dbg !4711
  %len155 = getelementptr inbounds %struct.ngx_str_t, ptr %key154, i32 0, i32 0, !dbg !4712
  %133 = load i64, ptr %len155, align 8, !dbg !4712, !tbaa !4621
  %add156 = add i64 5, %133, !dbg !4713
  %add157 = add i64 %add156, 1, !dbg !4714
  %134 = load ptr, ptr %header, align 8, !dbg !4715, !tbaa !2270
  %135 = load i64, ptr %i, align 8, !dbg !4716, !tbaa !2704
  %arrayidx158 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %134, i64 %135, !dbg !4715
  %value = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx158, i32 0, i32 2, !dbg !4717
  %len159 = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 0, !dbg !4718
  %136 = load i64, ptr %len159, align 8, !dbg !4718, !tbaa !4719
  %add160 = add i64 %add157, %136, !dbg !4720
  %add161 = add i64 %add160, 1, !dbg !4721
  %137 = load i64, ptr %len, align 8, !dbg !4722, !tbaa !2704
  %add162 = add i64 %137, %add161, !dbg !4722
  store i64 %add162, ptr %len, align 8, !dbg !4722, !tbaa !2704
  br label %for.inc163, !dbg !4723

for.inc163:                                       ; preds = %if.end152, %if.then147
  %138 = load i64, ptr %i, align 8, !dbg !4724, !tbaa !2704
  %inc164 = add i64 %138, 1, !dbg !4724
  store i64 %inc164, ptr %i, align 8, !dbg !4724, !tbaa !2704
  br label %for.cond84, !dbg !4725, !llvm.loop !4726

for.end165:                                       ; preds = %if.then90
  br label %if.end166, !dbg !4729

if.end166:                                        ; preds = %for.end165, %if.end62
  %139 = load ptr, ptr %r.addr, align 8, !dbg !4730, !tbaa !2270
  %pool167 = getelementptr inbounds %struct.ngx_http_request_s, ptr %139, i32 0, i32 11, !dbg !4731
  %140 = load ptr, ptr %pool167, align 8, !dbg !4731, !tbaa !3401
  %141 = load i64, ptr %len, align 8, !dbg !4732, !tbaa !2704
  %add168 = add i64 21, %141, !dbg !4733
  %add169 = add i64 %add168, 1, !dbg !4734
  %call170 = call ptr @ngx_create_temp_buf(ptr noundef %140, i64 noundef %add169), !dbg !4735
  store ptr %call170, ptr %b, align 8, !dbg !4736, !tbaa !2270
  %142 = load ptr, ptr %b, align 8, !dbg !4737, !tbaa !2270
  %cmp171 = icmp eq ptr %142, null, !dbg !4739
  br i1 %cmp171, label %if.then173, label %if.end174, !dbg !4740

if.then173:                                       ; preds = %if.end166
  store i64 -1, ptr %retval, align 8, !dbg !4741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

if.end174:                                        ; preds = %if.end166
  %143 = load ptr, ptr %r.addr, align 8, !dbg !4743, !tbaa !2270
  %pool175 = getelementptr inbounds %struct.ngx_http_request_s, ptr %143, i32 0, i32 11, !dbg !4744
  %144 = load ptr, ptr %pool175, align 8, !dbg !4744, !tbaa !3401
  %call176 = call ptr @ngx_alloc_chain_link(ptr noundef %144), !dbg !4745
  store ptr %call176, ptr %cl, align 8, !dbg !4746, !tbaa !2270
  %145 = load ptr, ptr %cl, align 8, !dbg !4747, !tbaa !2270
  %cmp177 = icmp eq ptr %145, null, !dbg !4749
  br i1 %cmp177, label %if.then179, label %if.end180, !dbg !4750

if.then179:                                       ; preds = %if.end174
  store i64 -1, ptr %retval, align 8, !dbg !4751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

if.end180:                                        ; preds = %if.end174
  %146 = load ptr, ptr %b, align 8, !dbg !4753, !tbaa !2270
  %147 = load ptr, ptr %cl, align 8, !dbg !4754, !tbaa !2270
  %buf181 = getelementptr inbounds %struct.ngx_chain_s, ptr %147, i32 0, i32 0, !dbg !4755
  store ptr %146, ptr %buf181, align 8, !dbg !4756, !tbaa !4415
  %148 = load ptr, ptr %b, align 8, !dbg !4757, !tbaa !2270
  %last182 = getelementptr inbounds %struct.ngx_buf_s, ptr %148, i32 0, i32 1, !dbg !4758
  %149 = load ptr, ptr %last182, align 8, !dbg !4758, !tbaa !4417
  %150 = load i64, ptr %len, align 8, !dbg !4759, !tbaa !2704
  %call183 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %149, ptr noundef @.str.20, i64 noundef %150, ptr noundef %content_length), !dbg !4760
  %151 = load ptr, ptr %b, align 8, !dbg !4761, !tbaa !2270
  %last184 = getelementptr inbounds %struct.ngx_buf_s, ptr %151, i32 0, i32 1, !dbg !4762
  store ptr %call183, ptr %last184, align 8, !dbg !4763, !tbaa !4417
  %152 = load ptr, ptr %params, align 8, !dbg !4764, !tbaa !2270
  %lengths185 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %152, i32 0, i32 1, !dbg !4766
  %153 = load ptr, ptr %lengths185, align 8, !dbg !4766, !tbaa !3684
  %tobool186 = icmp ne ptr %153, null, !dbg !4764
  br i1 %tobool186, label %if.then187, label %if.end253, !dbg !4767

if.then187:                                       ; preds = %if.end180
  call void @llvm.memset.p0.i64(ptr align 8 %e, i8 0, i64 88, i1 false), !dbg !4768
  %154 = load ptr, ptr %params, align 8, !dbg !4770, !tbaa !2270
  %values = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %154, i32 0, i32 2, !dbg !4771
  %155 = load ptr, ptr %values, align 8, !dbg !4771, !tbaa !3698
  %elts188 = getelementptr inbounds %struct.ngx_array_t, ptr %155, i32 0, i32 0, !dbg !4772
  %156 = load ptr, ptr %elts188, align 8, !dbg !4772, !tbaa !3339
  %ip189 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4773
  store ptr %156, ptr %ip189, align 8, !dbg !4774, !tbaa !4474
  %157 = load ptr, ptr %b, align 8, !dbg !4775, !tbaa !2270
  %last190 = getelementptr inbounds %struct.ngx_buf_s, ptr %157, i32 0, i32 1, !dbg !4776
  %158 = load ptr, ptr %last190, align 8, !dbg !4776, !tbaa !4417
  %pos191 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !4777
  store ptr %158, ptr %pos191, align 8, !dbg !4778, !tbaa !4779
  %159 = load ptr, ptr %r.addr, align 8, !dbg !4780, !tbaa !2270
  %request192 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 8, !dbg !4781
  store ptr %159, ptr %request192, align 8, !dbg !4782, !tbaa !4479
  %flushed193 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 6, !dbg !4783
  %bf.load194 = load i8, ptr %flushed193, align 8, !dbg !4784
  %bf.clear195 = and i8 %bf.load194, -2, !dbg !4784
  %bf.set196 = or i8 %bf.clear195, 1, !dbg !4784
  store i8 %bf.set196, ptr %flushed193, align 8, !dbg !4784
  %160 = load ptr, ptr %params, align 8, !dbg !4785, !tbaa !2270
  %lengths197 = getelementptr inbounds %struct.ngx_http_scgi_params_t, ptr %160, i32 0, i32 1, !dbg !4786
  %161 = load ptr, ptr %lengths197, align 8, !dbg !4786, !tbaa !3684
  %elts198 = getelementptr inbounds %struct.ngx_array_t, ptr %161, i32 0, i32 0, !dbg !4787
  %162 = load ptr, ptr %elts198, align 8, !dbg !4787, !tbaa !3339
  %ip199 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4788
  store ptr %162, ptr %ip199, align 8, !dbg !4789, !tbaa !4474
  br label %while.cond200, !dbg !4790

while.cond200:                                    ; preds = %while.end246, %while.end232, %if.then187
  %ip201 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4791
  %163 = load ptr, ptr %ip201, align 8, !dbg !4791, !tbaa !4474
  %164 = load i64, ptr %163, align 8, !dbg !4792, !tbaa !2704
  %tobool202 = icmp ne i64 %164, 0, !dbg !4790
  br i1 %tobool202, label %while.body203, label %while.end250, !dbg !4790

while.body203:                                    ; preds = %while.cond200
  %ip204 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4793
  %165 = load ptr, ptr %ip204, align 8, !dbg !4793, !tbaa !4474
  %166 = load ptr, ptr %165, align 8, !dbg !4795, !tbaa !2270
  store ptr %166, ptr %lcode, align 8, !dbg !4796, !tbaa !2270
  %167 = load ptr, ptr %lcode, align 8, !dbg !4797, !tbaa !2270
  %call205 = call i64 %167(ptr noundef %le), !dbg !4797
  %ip206 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4798
  %168 = load ptr, ptr %ip206, align 8, !dbg !4798, !tbaa !4474
  %169 = load ptr, ptr %168, align 8, !dbg !4799, !tbaa !2270
  store ptr %169, ptr %lcode, align 8, !dbg !4800, !tbaa !2270
  %170 = load ptr, ptr %lcode, align 8, !dbg !4801, !tbaa !2270
  %call207 = call i64 %170(ptr noundef %le), !dbg !4801
  store i64 %call207, ptr %skip_empty, align 8, !dbg !4802, !tbaa !2704
  store i64 0, ptr %val_len, align 8, !dbg !4803, !tbaa !2704
  br label %for.cond208, !dbg !4805

for.cond208:                                      ; preds = %for.inc213, %while.body203
  %ip209 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4806
  %171 = load ptr, ptr %ip209, align 8, !dbg !4806, !tbaa !4474
  %172 = load i64, ptr %171, align 8, !dbg !4808, !tbaa !2704
  %tobool210 = icmp ne i64 %172, 0, !dbg !4809
  br i1 %tobool210, label %for.body211, label %for.end216, !dbg !4809

for.body211:                                      ; preds = %for.cond208
  %ip212 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4810
  %173 = load ptr, ptr %ip212, align 8, !dbg !4810, !tbaa !4474
  %174 = load ptr, ptr %173, align 8, !dbg !4812, !tbaa !2270
  store ptr %174, ptr %lcode, align 8, !dbg !4813, !tbaa !2270
  br label %for.inc213, !dbg !4814

for.inc213:                                       ; preds = %for.body211
  %175 = load ptr, ptr %lcode, align 8, !dbg !4815, !tbaa !2270
  %call214 = call i64 %175(ptr noundef %le), !dbg !4815
  %176 = load i64, ptr %val_len, align 8, !dbg !4816, !tbaa !2704
  %add215 = add i64 %176, %call214, !dbg !4816
  store i64 %add215, ptr %val_len, align 8, !dbg !4816, !tbaa !2704
  br label %for.cond208, !dbg !4817, !llvm.loop !4818

for.end216:                                       ; preds = %for.cond208
  %ip217 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %le, i32 0, i32 0, !dbg !4820
  %177 = load ptr, ptr %ip217, align 8, !dbg !4821, !tbaa !4474
  %add.ptr218 = getelementptr inbounds i8, ptr %177, i64 8, !dbg !4821
  store ptr %add.ptr218, ptr %ip217, align 8, !dbg !4821, !tbaa !4474
  %178 = load i64, ptr %skip_empty, align 8, !dbg !4822, !tbaa !2704
  %tobool219 = icmp ne i64 %178, 0, !dbg !4822
  br i1 %tobool219, label %land.lhs.true220, label %if.end239, !dbg !4824

land.lhs.true220:                                 ; preds = %for.end216
  %179 = load i64, ptr %val_len, align 8, !dbg !4825, !tbaa !2704
  %cmp221 = icmp eq i64 %179, 0, !dbg !4826
  br i1 %cmp221, label %if.then223, label %if.end239, !dbg !4827

if.then223:                                       ; preds = %land.lhs.true220
  %skip = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 6, !dbg !4828
  %bf.load224 = load i8, ptr %skip, align 8, !dbg !4830
  %bf.clear225 = and i8 %bf.load224, -3, !dbg !4830
  %bf.set226 = or i8 %bf.clear225, 2, !dbg !4830
  store i8 %bf.set226, ptr %skip, align 8, !dbg !4830
  br label %while.cond227, !dbg !4831

while.cond227:                                    ; preds = %while.body230, %if.then223
  %ip228 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4832
  %180 = load ptr, ptr %ip228, align 8, !dbg !4832, !tbaa !4474
  %181 = load i64, ptr %180, align 8, !dbg !4833, !tbaa !2704
  %tobool229 = icmp ne i64 %181, 0, !dbg !4831
  br i1 %tobool229, label %while.body230, label %while.end232, !dbg !4831

while.body230:                                    ; preds = %while.cond227
  %ip231 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4834
  %182 = load ptr, ptr %ip231, align 8, !dbg !4834, !tbaa !4474
  %183 = load ptr, ptr %182, align 8, !dbg !4836, !tbaa !2270
  store ptr %183, ptr %code, align 8, !dbg !4837, !tbaa !2270
  %184 = load ptr, ptr %code, align 8, !dbg !4838, !tbaa !2270
  call void %184(ptr noundef %e), !dbg !4838
  br label %while.cond227, !dbg !4831, !llvm.loop !4839

while.end232:                                     ; preds = %while.cond227
  %ip233 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4841
  %185 = load ptr, ptr %ip233, align 8, !dbg !4842, !tbaa !4474
  %add.ptr234 = getelementptr inbounds i8, ptr %185, i64 8, !dbg !4842
  store ptr %add.ptr234, ptr %ip233, align 8, !dbg !4842, !tbaa !4474
  %skip235 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 6, !dbg !4843
  %bf.load236 = load i8, ptr %skip235, align 8, !dbg !4844
  %bf.clear237 = and i8 %bf.load236, -3, !dbg !4844
  %bf.set238 = or i8 %bf.clear237, 0, !dbg !4844
  store i8 %bf.set238, ptr %skip235, align 8, !dbg !4844
  br label %while.cond200, !dbg !4845, !llvm.loop !4846

if.end239:                                        ; preds = %land.lhs.true220, %for.end216
  %ip240 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4848
  %186 = load ptr, ptr %ip240, align 8, !dbg !4848, !tbaa !4474
  %187 = load ptr, ptr %186, align 8, !dbg !4849, !tbaa !2270
  store ptr %187, ptr %code, align 8, !dbg !4850, !tbaa !2270
  %188 = load ptr, ptr %code, align 8, !dbg !4851, !tbaa !2270
  call void %188(ptr noundef %e), !dbg !4851
  br label %while.cond241, !dbg !4852

while.cond241:                                    ; preds = %while.body244, %if.end239
  %ip242 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4853
  %189 = load ptr, ptr %ip242, align 8, !dbg !4853, !tbaa !4474
  %190 = load i64, ptr %189, align 8, !dbg !4854, !tbaa !2704
  %tobool243 = icmp ne i64 %190, 0, !dbg !4852
  br i1 %tobool243, label %while.body244, label %while.end246, !dbg !4852

while.body244:                                    ; preds = %while.cond241
  %ip245 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4855
  %191 = load ptr, ptr %ip245, align 8, !dbg !4855, !tbaa !4474
  %192 = load ptr, ptr %191, align 8, !dbg !4857, !tbaa !2270
  store ptr %192, ptr %code, align 8, !dbg !4858, !tbaa !2270
  %193 = load ptr, ptr %code, align 8, !dbg !4859, !tbaa !2270
  call void %193(ptr noundef %e), !dbg !4859
  br label %while.cond241, !dbg !4852, !llvm.loop !4860

while.end246:                                     ; preds = %while.cond241
  %pos247 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !4862
  %194 = load ptr, ptr %pos247, align 8, !dbg !4863, !tbaa !4779
  %incdec.ptr = getelementptr inbounds i8, ptr %194, i32 1, !dbg !4863
  store ptr %incdec.ptr, ptr %pos247, align 8, !dbg !4863, !tbaa !4779
  store i8 0, ptr %194, align 1, !dbg !4864, !tbaa !4663
  %ip248 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !4865
  %195 = load ptr, ptr %ip248, align 8, !dbg !4866, !tbaa !4474
  %add.ptr249 = getelementptr inbounds i8, ptr %195, i64 8, !dbg !4866
  store ptr %add.ptr249, ptr %ip248, align 8, !dbg !4866, !tbaa !4474
  br label %while.cond200, !dbg !4790, !llvm.loop !4846

while.end250:                                     ; preds = %while.cond200
  %pos251 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !4867
  %196 = load ptr, ptr %pos251, align 8, !dbg !4867, !tbaa !4779
  %197 = load ptr, ptr %b, align 8, !dbg !4868, !tbaa !2270
  %last252 = getelementptr inbounds %struct.ngx_buf_s, ptr %197, i32 0, i32 1, !dbg !4869
  store ptr %196, ptr %last252, align 8, !dbg !4870, !tbaa !4417
  br label %if.end253, !dbg !4871

if.end253:                                        ; preds = %while.end250, %if.end180
  %198 = load ptr, ptr %scf, align 8, !dbg !4872, !tbaa !2270
  %upstream254 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %198, i32 0, i32 0, !dbg !4873
  %pass_request_headers255 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream254, i32 0, i32 21, !dbg !4874
  %199 = load i64, ptr %pass_request_headers255, align 8, !dbg !4874, !tbaa !2445
  %tobool256 = icmp ne i64 %199, 0, !dbg !4872
  br i1 %tobool256, label %if.then257, label %if.end344, !dbg !4875

if.then257:                                       ; preds = %if.end253
  %200 = load ptr, ptr %r.addr, align 8, !dbg !4876, !tbaa !2270
  %headers_in258 = getelementptr inbounds %struct.ngx_http_request_s, ptr %200, i32 0, i32 13, !dbg !4877
  %headers259 = getelementptr inbounds %struct.ngx_http_headers_in_t, ptr %headers_in258, i32 0, i32 0, !dbg !4878
  %part260 = getelementptr inbounds %struct.ngx_list_t, ptr %headers259, i32 0, i32 1, !dbg !4879
  store ptr %part260, ptr %part, align 8, !dbg !4880, !tbaa !2270
  %201 = load ptr, ptr %part, align 8, !dbg !4881, !tbaa !2270
  %elts261 = getelementptr inbounds %struct.ngx_list_part_s, ptr %201, i32 0, i32 0, !dbg !4882
  %202 = load ptr, ptr %elts261, align 8, !dbg !4882, !tbaa !4581
  store ptr %202, ptr %header, align 8, !dbg !4883, !tbaa !2270
  store i64 0, ptr %i, align 8, !dbg !4884, !tbaa !2704
  br label %for.cond262, !dbg !4885

for.cond262:                                      ; preds = %for.inc341, %if.then257
  %203 = load i64, ptr %i, align 8, !dbg !4886, !tbaa !2704
  %204 = load ptr, ptr %part, align 8, !dbg !4888, !tbaa !2270
  %nelts263 = getelementptr inbounds %struct.ngx_list_part_s, ptr %204, i32 0, i32 1, !dbg !4889
  %205 = load i64, ptr %nelts263, align 8, !dbg !4889, !tbaa !4553
  %cmp264 = icmp uge i64 %203, %205, !dbg !4890
  br i1 %cmp264, label %if.then266, label %if.end274, !dbg !4891

if.then266:                                       ; preds = %for.cond262
  %206 = load ptr, ptr %part, align 8, !dbg !4892, !tbaa !2270
  %next267 = getelementptr inbounds %struct.ngx_list_part_s, ptr %206, i32 0, i32 2, !dbg !4895
  %207 = load ptr, ptr %next267, align 8, !dbg !4895, !tbaa !4557
  %cmp268 = icmp eq ptr %207, null, !dbg !4896
  br i1 %cmp268, label %if.then270, label %if.end271, !dbg !4897

if.then270:                                       ; preds = %if.then266
  br label %for.end343, !dbg !4898

if.end271:                                        ; preds = %if.then266
  %208 = load ptr, ptr %part, align 8, !dbg !4900, !tbaa !2270
  %next272 = getelementptr inbounds %struct.ngx_list_part_s, ptr %208, i32 0, i32 2, !dbg !4901
  %209 = load ptr, ptr %next272, align 8, !dbg !4901, !tbaa !4557
  store ptr %209, ptr %part, align 8, !dbg !4902, !tbaa !2270
  %210 = load ptr, ptr %part, align 8, !dbg !4903, !tbaa !2270
  %elts273 = getelementptr inbounds %struct.ngx_list_part_s, ptr %210, i32 0, i32 0, !dbg !4904
  %211 = load ptr, ptr %elts273, align 8, !dbg !4904, !tbaa !4581
  store ptr %211, ptr %header, align 8, !dbg !4905, !tbaa !2270
  store i64 0, ptr %i, align 8, !dbg !4906, !tbaa !2704
  br label %if.end274, !dbg !4907

if.end274:                                        ; preds = %if.end271, %for.cond262
  store i64 0, ptr %n, align 8, !dbg !4908, !tbaa !2704
  br label %for.cond275, !dbg !4910

for.cond275:                                      ; preds = %for.inc285, %if.end274
  %212 = load i64, ptr %n, align 8, !dbg !4911, !tbaa !2704
  %213 = load i64, ptr %header_params, align 8, !dbg !4913, !tbaa !2704
  %cmp276 = icmp ult i64 %212, %213, !dbg !4914
  br i1 %cmp276, label %for.body278, label %for.end287, !dbg !4915

for.body278:                                      ; preds = %for.cond275
  %214 = load ptr, ptr %header, align 8, !dbg !4916, !tbaa !2270
  %215 = load i64, ptr %i, align 8, !dbg !4919, !tbaa !2704
  %arrayidx279 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %214, i64 %215, !dbg !4916
  %216 = load ptr, ptr %ignored, align 8, !dbg !4920, !tbaa !2270
  %217 = load i64, ptr %n, align 8, !dbg !4921, !tbaa !2704
  %arrayidx280 = getelementptr inbounds ptr, ptr %216, i64 %217, !dbg !4920
  %218 = load ptr, ptr %arrayidx280, align 8, !dbg !4920, !tbaa !2270
  %cmp281 = icmp eq ptr %arrayidx279, %218, !dbg !4922
  br i1 %cmp281, label %if.then283, label %if.end284, !dbg !4923

if.then283:                                       ; preds = %for.body278
  br label %next340, !dbg !4924

if.end284:                                        ; preds = %for.body278
  br label %for.inc285, !dbg !4926

for.inc285:                                       ; preds = %if.end284
  %219 = load i64, ptr %n, align 8, !dbg !4927, !tbaa !2704
  %inc286 = add i64 %219, 1, !dbg !4927
  store i64 %inc286, ptr %n, align 8, !dbg !4927, !tbaa !2704
  br label %for.cond275, !dbg !4928, !llvm.loop !4929

for.end287:                                       ; preds = %for.cond275
  %220 = load ptr, ptr %b, align 8, !dbg !4931, !tbaa !2270
  %last288 = getelementptr inbounds %struct.ngx_buf_s, ptr %220, i32 0, i32 1, !dbg !4932
  %221 = load ptr, ptr %last288, align 8, !dbg !4932, !tbaa !4417
  store ptr %221, ptr %key, align 8, !dbg !4933, !tbaa !2270
  %222 = load ptr, ptr %key, align 8, !dbg !4934, !tbaa !2270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 @.str.21, i64 5, i1 false), !dbg !4934
  %add.ptr289 = getelementptr inbounds i8, ptr %222, i64 5, !dbg !4934
  %223 = load ptr, ptr %b, align 8, !dbg !4935, !tbaa !2270
  %last290 = getelementptr inbounds %struct.ngx_buf_s, ptr %223, i32 0, i32 1, !dbg !4936
  store ptr %add.ptr289, ptr %last290, align 8, !dbg !4937, !tbaa !4417
  store i64 0, ptr %n, align 8, !dbg !4938, !tbaa !2704
  br label %for.cond291, !dbg !4940

for.cond291:                                      ; preds = %for.inc321, %for.end287
  %224 = load i64, ptr %n, align 8, !dbg !4941, !tbaa !2704
  %225 = load ptr, ptr %header, align 8, !dbg !4943, !tbaa !2270
  %226 = load i64, ptr %i, align 8, !dbg !4944, !tbaa !2704
  %arrayidx292 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %225, i64 %226, !dbg !4943
  %key293 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx292, i32 0, i32 1, !dbg !4945
  %len294 = getelementptr inbounds %struct.ngx_str_t, ptr %key293, i32 0, i32 0, !dbg !4946
  %227 = load i64, ptr %len294, align 8, !dbg !4946, !tbaa !4621
  %cmp295 = icmp ult i64 %224, %227, !dbg !4947
  br i1 %cmp295, label %for.body297, label %for.end323, !dbg !4948

for.body297:                                      ; preds = %for.cond291
  %228 = load ptr, ptr %header, align 8, !dbg !4949, !tbaa !2270
  %229 = load i64, ptr %i, align 8, !dbg !4951, !tbaa !2704
  %arrayidx298 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %228, i64 %229, !dbg !4949
  %key299 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx298, i32 0, i32 1, !dbg !4952
  %data300 = getelementptr inbounds %struct.ngx_str_t, ptr %key299, i32 0, i32 1, !dbg !4953
  %230 = load ptr, ptr %data300, align 8, !dbg !4953, !tbaa !4661
  %231 = load i64, ptr %n, align 8, !dbg !4954, !tbaa !2704
  %arrayidx301 = getelementptr inbounds i8, ptr %230, i64 %231, !dbg !4949
  %232 = load i8, ptr %arrayidx301, align 1, !dbg !4949, !tbaa !4663
  store i8 %232, ptr %ch, align 1, !dbg !4955, !tbaa !4663
  %233 = load i8, ptr %ch, align 1, !dbg !4956, !tbaa !4663
  %conv302 = zext i8 %233 to i32, !dbg !4956
  %cmp303 = icmp sge i32 %conv302, 97, !dbg !4958
  br i1 %cmp303, label %land.lhs.true305, label %if.else312, !dbg !4959

land.lhs.true305:                                 ; preds = %for.body297
  %234 = load i8, ptr %ch, align 1, !dbg !4960, !tbaa !4663
  %conv306 = zext i8 %234 to i32, !dbg !4960
  %cmp307 = icmp sle i32 %conv306, 122, !dbg !4961
  br i1 %cmp307, label %if.then309, label %if.else312, !dbg !4962

if.then309:                                       ; preds = %land.lhs.true305
  %235 = load i8, ptr %ch, align 1, !dbg !4963, !tbaa !4663
  %conv310 = zext i8 %235 to i32, !dbg !4963
  %and = and i32 %conv310, -33, !dbg !4963
  %conv311 = trunc i32 %and to i8, !dbg !4963
  store i8 %conv311, ptr %ch, align 1, !dbg !4963, !tbaa !4663
  br label %if.end318, !dbg !4965

if.else312:                                       ; preds = %land.lhs.true305, %for.body297
  %236 = load i8, ptr %ch, align 1, !dbg !4966, !tbaa !4663
  %conv313 = zext i8 %236 to i32, !dbg !4966
  %cmp314 = icmp eq i32 %conv313, 45, !dbg !4968
  br i1 %cmp314, label %if.then316, label %if.end317, !dbg !4969

if.then316:                                       ; preds = %if.else312
  store i8 95, ptr %ch, align 1, !dbg !4970, !tbaa !4663
  br label %if.end317, !dbg !4972

if.end317:                                        ; preds = %if.then316, %if.else312
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.then309
  %237 = load i8, ptr %ch, align 1, !dbg !4973, !tbaa !4663
  %238 = load ptr, ptr %b, align 8, !dbg !4974, !tbaa !2270
  %last319 = getelementptr inbounds %struct.ngx_buf_s, ptr %238, i32 0, i32 1, !dbg !4975
  %239 = load ptr, ptr %last319, align 8, !dbg !4976, !tbaa !4417
  %incdec.ptr320 = getelementptr inbounds i8, ptr %239, i32 1, !dbg !4976
  store ptr %incdec.ptr320, ptr %last319, align 8, !dbg !4976, !tbaa !4417
  store i8 %237, ptr %239, align 1, !dbg !4977, !tbaa !4663
  br label %for.inc321, !dbg !4978

for.inc321:                                       ; preds = %if.end318
  %240 = load i64, ptr %n, align 8, !dbg !4979, !tbaa !2704
  %inc322 = add i64 %240, 1, !dbg !4979
  store i64 %inc322, ptr %n, align 8, !dbg !4979, !tbaa !2704
  br label %for.cond291, !dbg !4980, !llvm.loop !4981

for.end323:                                       ; preds = %for.cond291
  %241 = load ptr, ptr %b, align 8, !dbg !4983, !tbaa !2270
  %last324 = getelementptr inbounds %struct.ngx_buf_s, ptr %241, i32 0, i32 1, !dbg !4984
  %242 = load ptr, ptr %last324, align 8, !dbg !4985, !tbaa !4417
  %incdec.ptr325 = getelementptr inbounds i8, ptr %242, i32 1, !dbg !4985
  store ptr %incdec.ptr325, ptr %last324, align 8, !dbg !4985, !tbaa !4417
  store i8 0, ptr %242, align 1, !dbg !4986, !tbaa !4663
  %243 = load ptr, ptr %b, align 8, !dbg !4987, !tbaa !2270
  %last326 = getelementptr inbounds %struct.ngx_buf_s, ptr %243, i32 0, i32 1, !dbg !4988
  %244 = load ptr, ptr %last326, align 8, !dbg !4988, !tbaa !4417
  store ptr %244, ptr %val, align 8, !dbg !4989, !tbaa !2270
  %245 = load ptr, ptr %val, align 8, !dbg !4990, !tbaa !2270
  %246 = load ptr, ptr %header, align 8, !dbg !4990, !tbaa !2270
  %247 = load i64, ptr %i, align 8, !dbg !4990, !tbaa !2704
  %arrayidx327 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %246, i64 %247, !dbg !4990
  %value328 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx327, i32 0, i32 2, !dbg !4990
  %data329 = getelementptr inbounds %struct.ngx_str_t, ptr %value328, i32 0, i32 1, !dbg !4990
  %248 = load ptr, ptr %data329, align 8, !dbg !4990, !tbaa !4991
  %249 = load ptr, ptr %header, align 8, !dbg !4990, !tbaa !2270
  %250 = load i64, ptr %i, align 8, !dbg !4990, !tbaa !2704
  %arrayidx330 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %249, i64 %250, !dbg !4990
  %value331 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx330, i32 0, i32 2, !dbg !4990
  %len332 = getelementptr inbounds %struct.ngx_str_t, ptr %value331, i32 0, i32 0, !dbg !4990
  %251 = load i64, ptr %len332, align 8, !dbg !4990, !tbaa !4719
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %245, ptr align 1 %248, i64 %251, i1 false), !dbg !4990
  %252 = load ptr, ptr %header, align 8, !dbg !4990, !tbaa !2270
  %253 = load i64, ptr %i, align 8, !dbg !4990, !tbaa !2704
  %arrayidx333 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %252, i64 %253, !dbg !4990
  %value334 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %arrayidx333, i32 0, i32 2, !dbg !4990
  %len335 = getelementptr inbounds %struct.ngx_str_t, ptr %value334, i32 0, i32 0, !dbg !4990
  %254 = load i64, ptr %len335, align 8, !dbg !4990, !tbaa !4719
  %add.ptr336 = getelementptr inbounds i8, ptr %245, i64 %254, !dbg !4990
  %255 = load ptr, ptr %b, align 8, !dbg !4992, !tbaa !2270
  %last337 = getelementptr inbounds %struct.ngx_buf_s, ptr %255, i32 0, i32 1, !dbg !4993
  store ptr %add.ptr336, ptr %last337, align 8, !dbg !4994, !tbaa !4417
  %256 = load ptr, ptr %b, align 8, !dbg !4995, !tbaa !2270
  %last338 = getelementptr inbounds %struct.ngx_buf_s, ptr %256, i32 0, i32 1, !dbg !4996
  %257 = load ptr, ptr %last338, align 8, !dbg !4997, !tbaa !4417
  %incdec.ptr339 = getelementptr inbounds i8, ptr %257, i32 1, !dbg !4997
  store ptr %incdec.ptr339, ptr %last338, align 8, !dbg !4997, !tbaa !4417
  store i8 0, ptr %257, align 1, !dbg !4998, !tbaa !4663
  br label %next340, !dbg !4999

next340:                                          ; preds = %for.end323, %if.then283
  tail call void @llvm.dbg.label(metadata !4355), !dbg !5000
  br label %for.inc341, !dbg !5001

for.inc341:                                       ; preds = %next340
  %258 = load i64, ptr %i, align 8, !dbg !5002, !tbaa !2704
  %inc342 = add i64 %258, 1, !dbg !5002
  store i64 %inc342, ptr %i, align 8, !dbg !5002, !tbaa !2704
  br label %for.cond262, !dbg !5003, !llvm.loop !5004

for.end343:                                       ; preds = %if.then270
  br label %if.end344, !dbg !5007

if.end344:                                        ; preds = %for.end343, %if.end253
  %259 = load ptr, ptr %b, align 8, !dbg !5008, !tbaa !2270
  %last345 = getelementptr inbounds %struct.ngx_buf_s, ptr %259, i32 0, i32 1, !dbg !5009
  %260 = load ptr, ptr %last345, align 8, !dbg !5010, !tbaa !4417
  %incdec.ptr346 = getelementptr inbounds i8, ptr %260, i32 1, !dbg !5010
  store ptr %incdec.ptr346, ptr %last345, align 8, !dbg !5010, !tbaa !4417
  store i8 44, ptr %260, align 1, !dbg !5011, !tbaa !4663
  %261 = load ptr, ptr %r.addr, align 8, !dbg !5012, !tbaa !2270
  %request_body_no_buffering = getelementptr inbounds %struct.ngx_http_request_s, ptr %261, i32 0, i32 48, !dbg !5014
  %bf.load347 = load i128, ptr %request_body_no_buffering, align 8, !dbg !5014
  %bf.lshr348 = lshr i128 %bf.load347, 58, !dbg !5014
  %bf.clear349 = and i128 %bf.lshr348, 1, !dbg !5014
  %bf.cast350 = trunc i128 %bf.clear349 to i32, !dbg !5014
  %tobool351 = icmp ne i32 %bf.cast350, 0, !dbg !5012
  br i1 %tobool351, label %if.then352, label %if.else355, !dbg !5015

if.then352:                                       ; preds = %if.end344
  %262 = load ptr, ptr %cl, align 8, !dbg !5016, !tbaa !2270
  %263 = load ptr, ptr %r.addr, align 8, !dbg !5018, !tbaa !2270
  %upstream353 = getelementptr inbounds %struct.ngx_http_request_s, ptr %263, i32 0, i32 9, !dbg !5019
  %264 = load ptr, ptr %upstream353, align 8, !dbg !5019, !tbaa !3436
  %request_bufs354 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %264, i32 0, i32 4, !dbg !5020
  store ptr %262, ptr %request_bufs354, align 8, !dbg !5021, !tbaa !4409
  br label %if.end389, !dbg !5022

if.else355:                                       ; preds = %if.end344
  %265 = load ptr, ptr %scf, align 8, !dbg !5023, !tbaa !2270
  %upstream356 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %265, i32 0, i32 0, !dbg !5025
  %pass_request_body = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream356, i32 0, i32 22, !dbg !5026
  %266 = load i64, ptr %pass_request_body, align 8, !dbg !5026, !tbaa !2450
  %tobool357 = icmp ne i64 %266, 0, !dbg !5023
  br i1 %tobool357, label %if.then358, label %if.else385, !dbg !5027

if.then358:                                       ; preds = %if.else355
  %267 = load ptr, ptr %r.addr, align 8, !dbg !5028, !tbaa !2270
  %upstream359 = getelementptr inbounds %struct.ngx_http_request_s, ptr %267, i32 0, i32 9, !dbg !5030
  %268 = load ptr, ptr %upstream359, align 8, !dbg !5030, !tbaa !3436
  %request_bufs360 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %268, i32 0, i32 4, !dbg !5031
  %269 = load ptr, ptr %request_bufs360, align 8, !dbg !5031, !tbaa !4409
  store ptr %269, ptr %body, align 8, !dbg !5032, !tbaa !2270
  %270 = load ptr, ptr %cl, align 8, !dbg !5033, !tbaa !2270
  %271 = load ptr, ptr %r.addr, align 8, !dbg !5034, !tbaa !2270
  %upstream361 = getelementptr inbounds %struct.ngx_http_request_s, ptr %271, i32 0, i32 9, !dbg !5035
  %272 = load ptr, ptr %upstream361, align 8, !dbg !5035, !tbaa !3436
  %request_bufs362 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %272, i32 0, i32 4, !dbg !5036
  store ptr %270, ptr %request_bufs362, align 8, !dbg !5037, !tbaa !4409
  br label %while.cond363, !dbg !5038

while.cond363:                                    ; preds = %if.end380, %if.then358
  %273 = load ptr, ptr %body, align 8, !dbg !5039, !tbaa !2270
  %tobool364 = icmp ne ptr %273, null, !dbg !5038
  br i1 %tobool364, label %while.body365, label %while.end384, !dbg !5038

while.body365:                                    ; preds = %while.cond363
  %274 = load ptr, ptr %r.addr, align 8, !dbg !5040, !tbaa !2270
  %pool366 = getelementptr inbounds %struct.ngx_http_request_s, ptr %274, i32 0, i32 11, !dbg !5040
  %275 = load ptr, ptr %pool366, align 8, !dbg !5040, !tbaa !3401
  %call367 = call ptr @ngx_palloc(ptr noundef %275, i64 noundef 80), !dbg !5040
  store ptr %call367, ptr %b, align 8, !dbg !5042, !tbaa !2270
  %276 = load ptr, ptr %b, align 8, !dbg !5043, !tbaa !2270
  %cmp368 = icmp eq ptr %276, null, !dbg !5045
  br i1 %cmp368, label %if.then370, label %if.end371, !dbg !5046

if.then370:                                       ; preds = %while.body365
  store i64 -1, ptr %retval, align 8, !dbg !5047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5047

if.end371:                                        ; preds = %while.body365
  %277 = load ptr, ptr %b, align 8, !dbg !5049, !tbaa !2270
  %278 = load ptr, ptr %body, align 8, !dbg !5049, !tbaa !2270
  %buf372 = getelementptr inbounds %struct.ngx_chain_s, ptr %278, i32 0, i32 0, !dbg !5049
  %279 = load ptr, ptr %buf372, align 8, !dbg !5049, !tbaa !4415
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %277, ptr align 8 %279, i64 80, i1 false), !dbg !5049
  %280 = load ptr, ptr %r.addr, align 8, !dbg !5050, !tbaa !2270
  %pool373 = getelementptr inbounds %struct.ngx_http_request_s, ptr %280, i32 0, i32 11, !dbg !5051
  %281 = load ptr, ptr %pool373, align 8, !dbg !5051, !tbaa !3401
  %call374 = call ptr @ngx_alloc_chain_link(ptr noundef %281), !dbg !5052
  %282 = load ptr, ptr %cl, align 8, !dbg !5053, !tbaa !2270
  %next375 = getelementptr inbounds %struct.ngx_chain_s, ptr %282, i32 0, i32 1, !dbg !5054
  store ptr %call374, ptr %next375, align 8, !dbg !5055, !tbaa !4424
  %283 = load ptr, ptr %cl, align 8, !dbg !5056, !tbaa !2270
  %next376 = getelementptr inbounds %struct.ngx_chain_s, ptr %283, i32 0, i32 1, !dbg !5058
  %284 = load ptr, ptr %next376, align 8, !dbg !5058, !tbaa !4424
  %cmp377 = icmp eq ptr %284, null, !dbg !5059
  br i1 %cmp377, label %if.then379, label %if.end380, !dbg !5060

if.then379:                                       ; preds = %if.end371
  store i64 -1, ptr %retval, align 8, !dbg !5061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5061

if.end380:                                        ; preds = %if.end371
  %285 = load ptr, ptr %cl, align 8, !dbg !5063, !tbaa !2270
  %next381 = getelementptr inbounds %struct.ngx_chain_s, ptr %285, i32 0, i32 1, !dbg !5064
  %286 = load ptr, ptr %next381, align 8, !dbg !5064, !tbaa !4424
  store ptr %286, ptr %cl, align 8, !dbg !5065, !tbaa !2270
  %287 = load ptr, ptr %b, align 8, !dbg !5066, !tbaa !2270
  %288 = load ptr, ptr %cl, align 8, !dbg !5067, !tbaa !2270
  %buf382 = getelementptr inbounds %struct.ngx_chain_s, ptr %288, i32 0, i32 0, !dbg !5068
  store ptr %287, ptr %buf382, align 8, !dbg !5069, !tbaa !4415
  %289 = load ptr, ptr %body, align 8, !dbg !5070, !tbaa !2270
  %next383 = getelementptr inbounds %struct.ngx_chain_s, ptr %289, i32 0, i32 1, !dbg !5071
  %290 = load ptr, ptr %next383, align 8, !dbg !5071, !tbaa !4424
  store ptr %290, ptr %body, align 8, !dbg !5072, !tbaa !2270
  br label %while.cond363, !dbg !5038, !llvm.loop !5073

while.end384:                                     ; preds = %while.cond363
  br label %if.end388, !dbg !5075

if.else385:                                       ; preds = %if.else355
  %291 = load ptr, ptr %cl, align 8, !dbg !5076, !tbaa !2270
  %292 = load ptr, ptr %r.addr, align 8, !dbg !5078, !tbaa !2270
  %upstream386 = getelementptr inbounds %struct.ngx_http_request_s, ptr %292, i32 0, i32 9, !dbg !5079
  %293 = load ptr, ptr %upstream386, align 8, !dbg !5079, !tbaa !3436
  %request_bufs387 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %293, i32 0, i32 4, !dbg !5080
  store ptr %291, ptr %request_bufs387, align 8, !dbg !5081, !tbaa !4409
  br label %if.end388

if.end388:                                        ; preds = %if.else385, %while.end384
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.then352
  %294 = load ptr, ptr %cl, align 8, !dbg !5082, !tbaa !2270
  %next390 = getelementptr inbounds %struct.ngx_chain_s, ptr %294, i32 0, i32 1, !dbg !5083
  store ptr null, ptr %next390, align 8, !dbg !5084, !tbaa !4424
  store i64 0, ptr %retval, align 8, !dbg !5085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5085

cleanup:                                          ; preds = %if.end389, %if.then379, %if.then370, %if.then179, %if.then173, %if.then110, %if.then77
  call void @llvm.lifetime.end.p0(i64 20, ptr %buffer) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcode) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 88, ptr %le) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 88, ptr %e) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %ignored) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %part) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %body) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %header_params) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip_empty) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 16, ptr %content_length) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocated) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_len) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_len) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %lowcase_key) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #8, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %content_length_n) #8, !dbg !5086
  %295 = load i64, ptr %retval, align 8, !dbg !5086
  ret i64 %295, !dbg !5086
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_reinit_request(ptr noundef %r) #0 !dbg !5087 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %status = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5089, metadata !DIExpression()), !dbg !5091
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #8, !dbg !5092
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5090, metadata !DIExpression()), !dbg !5093
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5094, !tbaa !2270
  %ctx = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !5094
  %1 = load ptr, ptr %ctx, align 8, !dbg !5094, !tbaa !3416
  %2 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !5094, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !5094
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5094, !tbaa !2270
  store ptr %3, ptr %status, align 8, !dbg !5095, !tbaa !2270
  %4 = load ptr, ptr %status, align 8, !dbg !5096, !tbaa !2270
  %cmp = icmp eq ptr %4, null, !dbg !5098
  br i1 %cmp, label %if.then, label %if.end, !dbg !5099

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5100

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %status, align 8, !dbg !5102, !tbaa !2270
  %code = getelementptr inbounds %struct.ngx_http_status_t, ptr %5, i32 0, i32 1, !dbg !5103
  store i64 0, ptr %code, align 8, !dbg !5104, !tbaa !5105
  %6 = load ptr, ptr %status, align 8, !dbg !5107, !tbaa !2270
  %count = getelementptr inbounds %struct.ngx_http_status_t, ptr %6, i32 0, i32 2, !dbg !5108
  store i64 0, ptr %count, align 8, !dbg !5109, !tbaa !5110
  %7 = load ptr, ptr %status, align 8, !dbg !5111, !tbaa !2270
  %start = getelementptr inbounds %struct.ngx_http_status_t, ptr %7, i32 0, i32 3, !dbg !5112
  store ptr null, ptr %start, align 8, !dbg !5113, !tbaa !5114
  %8 = load ptr, ptr %status, align 8, !dbg !5115, !tbaa !2270
  %end = getelementptr inbounds %struct.ngx_http_status_t, ptr %8, i32 0, i32 4, !dbg !5116
  store ptr null, ptr %end, align 8, !dbg !5117, !tbaa !5118
  %9 = load ptr, ptr %r.addr, align 8, !dbg !5119, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %9, i32 0, i32 9, !dbg !5120
  %10 = load ptr, ptr %upstream, align 8, !dbg !5120, !tbaa !3436
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %10, i32 0, i32 27, !dbg !5121
  store ptr @ngx_http_scgi_process_status_line, ptr %process_header, align 8, !dbg !5122, !tbaa !3482
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5123, !tbaa !2270
  %state = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 49, !dbg !5124
  store i64 0, ptr %state, align 8, !dbg !5125, !tbaa !3494
  store i64 0, ptr %retval, align 8, !dbg !5126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5126

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #8, !dbg !5127
  %12 = load i64, ptr %retval, align 8, !dbg !5127
  ret i64 %12, !dbg !5127
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_process_status_line(ptr noundef %r) #0 !dbg !5128 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %rc = alloca i64, align 8
  %status = alloca ptr, align 8
  %u = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5130, metadata !DIExpression()), !dbg !5135
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !5136
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !5131, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !5138
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !5132, metadata !DIExpression()), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #8, !dbg !5140
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5133, metadata !DIExpression()), !dbg !5141
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #8, !dbg !5142
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !5134, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5144, !tbaa !2270
  %ctx = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !5144
  %1 = load ptr, ptr %ctx, align 8, !dbg !5144, !tbaa !3416
  %2 = load i64, ptr @ngx_http_scgi_module, align 8, !dbg !5144, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !5144
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5144, !tbaa !2270
  store ptr %3, ptr %status, align 8, !dbg !5145, !tbaa !2270
  %4 = load ptr, ptr %status, align 8, !dbg !5146, !tbaa !2270
  %cmp = icmp eq ptr %4, null, !dbg !5148
  br i1 %cmp, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %r.addr, align 8, !dbg !5152, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 9, !dbg !5153
  %6 = load ptr, ptr %upstream, align 8, !dbg !5153, !tbaa !3436
  store ptr %6, ptr %u, align 8, !dbg !5154, !tbaa !2270
  %7 = load ptr, ptr %r.addr, align 8, !dbg !5155, !tbaa !2270
  %8 = load ptr, ptr %u, align 8, !dbg !5156, !tbaa !2270
  %buffer = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %8, i32 0, i32 16, !dbg !5157
  %9 = load ptr, ptr %status, align 8, !dbg !5158, !tbaa !2270
  %call = call i64 @ngx_http_parse_status_line(ptr noundef %7, ptr noundef %buffer, ptr noundef %9), !dbg !5159
  store i64 %call, ptr %rc, align 8, !dbg !5160, !tbaa !2704
  %10 = load i64, ptr %rc, align 8, !dbg !5161, !tbaa !2704
  %cmp1 = icmp eq i64 %10, -2, !dbg !5163
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5164

if.then2:                                         ; preds = %if.end
  %11 = load i64, ptr %rc, align 8, !dbg !5165, !tbaa !2704
  store i64 %11, ptr %retval, align 8, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

if.end3:                                          ; preds = %if.end
  %12 = load i64, ptr %rc, align 8, !dbg !5168, !tbaa !2704
  %cmp4 = icmp eq i64 %12, -1, !dbg !5170
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5171

if.then5:                                         ; preds = %if.end3
  %13 = load ptr, ptr %u, align 8, !dbg !5172, !tbaa !2270
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %13, i32 0, i32 27, !dbg !5174
  store ptr @ngx_http_scgi_process_header, ptr %process_header, align 8, !dbg !5175, !tbaa !3482
  %14 = load ptr, ptr %r.addr, align 8, !dbg !5176, !tbaa !2270
  %call6 = call i64 @ngx_http_scgi_process_header(ptr noundef %14), !dbg !5177
  store i64 %call6, ptr %retval, align 8, !dbg !5178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5178

if.end7:                                          ; preds = %if.end3
  %15 = load ptr, ptr %u, align 8, !dbg !5179, !tbaa !2270
  %state = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %15, i32 0, i32 33, !dbg !5181
  %16 = load ptr, ptr %state, align 8, !dbg !5181, !tbaa !5182
  %tobool = icmp ne ptr %16, null, !dbg !5179
  br i1 %tobool, label %land.lhs.true, label %if.end14, !dbg !5183

land.lhs.true:                                    ; preds = %if.end7
  %17 = load ptr, ptr %u, align 8, !dbg !5184, !tbaa !2270
  %state8 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %17, i32 0, i32 33, !dbg !5185
  %18 = load ptr, ptr %state8, align 8, !dbg !5185, !tbaa !5182
  %status9 = getelementptr inbounds %struct.ngx_http_upstream_state_t, ptr %18, i32 0, i32 0, !dbg !5186
  %19 = load i64, ptr %status9, align 8, !dbg !5186, !tbaa !5187
  %cmp10 = icmp eq i64 %19, 0, !dbg !5189
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !5190

if.then11:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %status, align 8, !dbg !5191, !tbaa !2270
  %code = getelementptr inbounds %struct.ngx_http_status_t, ptr %20, i32 0, i32 1, !dbg !5193
  %21 = load i64, ptr %code, align 8, !dbg !5193, !tbaa !5105
  %22 = load ptr, ptr %u, align 8, !dbg !5194, !tbaa !2270
  %state12 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %22, i32 0, i32 33, !dbg !5195
  %23 = load ptr, ptr %state12, align 8, !dbg !5195, !tbaa !5182
  %status13 = getelementptr inbounds %struct.ngx_http_upstream_state_t, ptr %23, i32 0, i32 0, !dbg !5196
  store i64 %21, ptr %status13, align 8, !dbg !5197, !tbaa !5187
  br label %if.end14, !dbg !5198

if.end14:                                         ; preds = %if.then11, %land.lhs.true, %if.end7
  %24 = load ptr, ptr %status, align 8, !dbg !5199, !tbaa !2270
  %code15 = getelementptr inbounds %struct.ngx_http_status_t, ptr %24, i32 0, i32 1, !dbg !5200
  %25 = load i64, ptr %code15, align 8, !dbg !5200, !tbaa !5105
  %26 = load ptr, ptr %u, align 8, !dbg !5201, !tbaa !2270
  %headers_in = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %26, i32 0, i32 13, !dbg !5202
  %status_n = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in, i32 0, i32 2, !dbg !5203
  store i64 %25, ptr %status_n, align 8, !dbg !5204, !tbaa !5205
  %27 = load ptr, ptr %status, align 8, !dbg !5206, !tbaa !2270
  %end = getelementptr inbounds %struct.ngx_http_status_t, ptr %27, i32 0, i32 4, !dbg !5207
  %28 = load ptr, ptr %end, align 8, !dbg !5207, !tbaa !5118
  %29 = load ptr, ptr %status, align 8, !dbg !5208, !tbaa !2270
  %start = getelementptr inbounds %struct.ngx_http_status_t, ptr %29, i32 0, i32 3, !dbg !5209
  %30 = load ptr, ptr %start, align 8, !dbg !5209, !tbaa !5114
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !5210
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64, !dbg !5210
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5210
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !5211, !tbaa !2704
  %31 = load i64, ptr %len, align 8, !dbg !5212, !tbaa !2704
  %32 = load ptr, ptr %u, align 8, !dbg !5213, !tbaa !2270
  %headers_in16 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %32, i32 0, i32 13, !dbg !5214
  %status_line = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in16, i32 0, i32 3, !dbg !5215
  %len17 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line, i32 0, i32 0, !dbg !5216
  store i64 %31, ptr %len17, align 8, !dbg !5217, !tbaa !5218
  %33 = load ptr, ptr %r.addr, align 8, !dbg !5219, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 11, !dbg !5220
  %34 = load ptr, ptr %pool, align 8, !dbg !5220, !tbaa !3401
  %35 = load i64, ptr %len, align 8, !dbg !5221, !tbaa !2704
  %call18 = call ptr @ngx_pnalloc(ptr noundef %34, i64 noundef %35), !dbg !5222
  %36 = load ptr, ptr %u, align 8, !dbg !5223, !tbaa !2270
  %headers_in19 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %36, i32 0, i32 13, !dbg !5224
  %status_line20 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in19, i32 0, i32 3, !dbg !5225
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %status_line20, i32 0, i32 1, !dbg !5226
  store ptr %call18, ptr %data, align 8, !dbg !5227, !tbaa !5228
  %37 = load ptr, ptr %u, align 8, !dbg !5229, !tbaa !2270
  %headers_in21 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %37, i32 0, i32 13, !dbg !5231
  %status_line22 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in21, i32 0, i32 3, !dbg !5232
  %data23 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line22, i32 0, i32 1, !dbg !5233
  %38 = load ptr, ptr %data23, align 8, !dbg !5233, !tbaa !5228
  %cmp24 = icmp eq ptr %38, null, !dbg !5234
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5235

if.then25:                                        ; preds = %if.end14
  store i64 -1, ptr %retval, align 8, !dbg !5236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

if.end26:                                         ; preds = %if.end14
  %39 = load ptr, ptr %u, align 8, !dbg !5238, !tbaa !2270
  %headers_in27 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %39, i32 0, i32 13, !dbg !5238
  %status_line28 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in27, i32 0, i32 3, !dbg !5238
  %data29 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line28, i32 0, i32 1, !dbg !5238
  %40 = load ptr, ptr %data29, align 8, !dbg !5238, !tbaa !5228
  %41 = load ptr, ptr %status, align 8, !dbg !5238, !tbaa !2270
  %start30 = getelementptr inbounds %struct.ngx_http_status_t, ptr %41, i32 0, i32 3, !dbg !5238
  %42 = load ptr, ptr %start30, align 8, !dbg !5238, !tbaa !5114
  %43 = load i64, ptr %len, align 8, !dbg !5238, !tbaa !2704
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %42, i64 %43, i1 false), !dbg !5238
  %44 = load ptr, ptr %u, align 8, !dbg !5239, !tbaa !2270
  %process_header31 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %44, i32 0, i32 27, !dbg !5240
  store ptr @ngx_http_scgi_process_header, ptr %process_header31, align 8, !dbg !5241, !tbaa !3482
  %45 = load ptr, ptr %r.addr, align 8, !dbg !5242, !tbaa !2270
  %call32 = call i64 @ngx_http_scgi_process_header(ptr noundef %45), !dbg !5243
  store i64 %call32, ptr %retval, align 8, !dbg !5244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5244

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #8, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #8, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !5245
  %46 = load i64, ptr %retval, align 8, !dbg !5245
  ret i64 %46, !dbg !5245
}

; Function Attrs: nounwind uwtable
define internal void @ngx_http_scgi_abort_request(ptr noundef %r) #0 !dbg !5246 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  ret void, !dbg !5250
}

; Function Attrs: nounwind uwtable
define internal void @ngx_http_scgi_finalize_request(ptr noundef %r, i64 noundef %rc) #0 !dbg !5251 {
entry:
  %r.addr = alloca ptr, align 8
  %rc.addr = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5253, metadata !DIExpression()), !dbg !5255
  store i64 %rc, ptr %rc.addr, align 8, !tbaa !2704
  tail call void @llvm.dbg.declare(metadata ptr %rc.addr, metadata !5254, metadata !DIExpression()), !dbg !5256
  ret void, !dbg !5257
}

declare i64 @ngx_event_pipe_copy_input_filter(ptr noundef, ptr noundef) #2

declare !dbg !5258 i64 @ngx_http_read_client_request_body(ptr noundef, ptr noundef) #2

declare void @ngx_http_upstream_init(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !5261 ptr @ngx_http_script_run(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !5264 i64 @ngx_parse_url(ptr noundef, ptr noundef) #2

declare !dbg !5268 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !5271 ptr @ngx_array_push(ptr noundef) #2

declare !dbg !5274 i64 @ngx_http_complex_value(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !5277 ptr @ngx_sprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !5280 void @ngx_http_script_flush_no_cacheable_variables(ptr noundef, ptr noundef) #2

declare !dbg !5283 ptr @ngx_pnalloc(ptr noundef, i64 noundef) #2

declare !dbg !5284 ptr @ngx_hash_find(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare !dbg !5287 ptr @ngx_create_temp_buf(ptr noundef, i64 noundef) #2

declare !dbg !5290 ptr @ngx_alloc_chain_link(ptr noundef) #2

declare !dbg !5293 i64 @ngx_http_parse_status_line(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_scgi_process_header(ptr noundef %r) #0 !dbg !5296 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %status_line = alloca ptr, align 8
  %rc = alloca i64, align 8
  %status = alloca i64, align 8
  %h = alloca ptr, align 8
  %u = alloca ptr, align 8
  %hh = alloca ptr, align 8
  %umcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5298, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 8, ptr %status_line) #8, !dbg !5333
  tail call void @llvm.dbg.declare(metadata ptr %status_line, metadata !5299, metadata !DIExpression()), !dbg !5334
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !5335
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !5300, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #8, !dbg !5335
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5301, metadata !DIExpression()), !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #8, !dbg !5338
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !5302, metadata !DIExpression()), !dbg !5339
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #8, !dbg !5340
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !5303, metadata !DIExpression()), !dbg !5341
  call void @llvm.lifetime.start.p0(i64 8, ptr %hh) #8, !dbg !5342
  tail call void @llvm.dbg.declare(metadata ptr %hh, metadata !5304, metadata !DIExpression()), !dbg !5343
  call void @llvm.lifetime.start.p0(i64 8, ptr %umcf) #8, !dbg !5344
  tail call void @llvm.dbg.declare(metadata ptr %umcf, metadata !5319, metadata !DIExpression()), !dbg !5345
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5346, !tbaa !2270
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 3, !dbg !5346
  %1 = load ptr, ptr %main_conf, align 8, !dbg !5346, !tbaa !3459
  %2 = load i64, ptr @ngx_http_upstream_module, align 8, !dbg !5346, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !5346
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5346, !tbaa !2270
  store ptr %3, ptr %umcf, align 8, !dbg !5347, !tbaa !2270
  br label %for.cond, !dbg !5348

for.cond:                                         ; preds = %if.end84, %entry
  %4 = load ptr, ptr %r.addr, align 8, !dbg !5349, !tbaa !2270
  %5 = load ptr, ptr %r.addr, align 8, !dbg !5350, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 9, !dbg !5351
  %6 = load ptr, ptr %upstream, align 8, !dbg !5351, !tbaa !3436
  %buffer = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %6, i32 0, i32 16, !dbg !5352
  %call = call i64 @ngx_http_parse_header_line(ptr noundef %4, ptr noundef %buffer, i64 noundef 1), !dbg !5353
  store i64 %call, ptr %rc, align 8, !dbg !5354, !tbaa !2704
  %7 = load i64, ptr %rc, align 8, !dbg !5355, !tbaa !2704
  %cmp = icmp eq i64 %7, 0, !dbg !5357
  br i1 %cmp, label %if.then, label %if.end85, !dbg !5358

if.then:                                          ; preds = %for.cond
  %8 = load ptr, ptr %r.addr, align 8, !dbg !5359, !tbaa !2270
  %upstream1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 9, !dbg !5361
  %9 = load ptr, ptr %upstream1, align 8, !dbg !5361, !tbaa !3436
  %headers_in = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %9, i32 0, i32 13, !dbg !5362
  %headers = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in, i32 0, i32 0, !dbg !5363
  %call2 = call ptr @ngx_list_push(ptr noundef %headers), !dbg !5364
  store ptr %call2, ptr %h, align 8, !dbg !5365, !tbaa !2270
  %10 = load ptr, ptr %h, align 8, !dbg !5366, !tbaa !2270
  %cmp3 = icmp eq ptr %10, null, !dbg !5368
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5369

if.then4:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8, !dbg !5370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5370

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5372, !tbaa !2270
  %header_hash = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 50, !dbg !5373
  %12 = load i64, ptr %header_hash, align 8, !dbg !5373, !tbaa !5374
  %13 = load ptr, ptr %h, align 8, !dbg !5375, !tbaa !2270
  %hash = getelementptr inbounds %struct.ngx_table_elt_t, ptr %13, i32 0, i32 0, !dbg !5376
  store i64 %12, ptr %hash, align 8, !dbg !5377, !tbaa !5378
  %14 = load ptr, ptr %r.addr, align 8, !dbg !5379, !tbaa !2270
  %header_name_end = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 54, !dbg !5380
  %15 = load ptr, ptr %header_name_end, align 8, !dbg !5380, !tbaa !5381
  %16 = load ptr, ptr %r.addr, align 8, !dbg !5382, !tbaa !2270
  %header_name_start = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 53, !dbg !5383
  %17 = load ptr, ptr %header_name_start, align 8, !dbg !5383, !tbaa !5384
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64, !dbg !5385
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64, !dbg !5385
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5385
  %18 = load ptr, ptr %h, align 8, !dbg !5386, !tbaa !2270
  %key = getelementptr inbounds %struct.ngx_table_elt_t, ptr %18, i32 0, i32 1, !dbg !5387
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %key, i32 0, i32 0, !dbg !5388
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !5389, !tbaa !4621
  %19 = load ptr, ptr %r.addr, align 8, !dbg !5390, !tbaa !2270
  %header_end = getelementptr inbounds %struct.ngx_http_request_s, ptr %19, i32 0, i32 56, !dbg !5391
  %20 = load ptr, ptr %header_end, align 8, !dbg !5391, !tbaa !5392
  %21 = load ptr, ptr %r.addr, align 8, !dbg !5393, !tbaa !2270
  %header_start = getelementptr inbounds %struct.ngx_http_request_s, ptr %21, i32 0, i32 55, !dbg !5394
  %22 = load ptr, ptr %header_start, align 8, !dbg !5394, !tbaa !5395
  %sub.ptr.lhs.cast5 = ptrtoint ptr %20 to i64, !dbg !5396
  %sub.ptr.rhs.cast6 = ptrtoint ptr %22 to i64, !dbg !5396
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6, !dbg !5396
  %23 = load ptr, ptr %h, align 8, !dbg !5397, !tbaa !2270
  %value = getelementptr inbounds %struct.ngx_table_elt_t, ptr %23, i32 0, i32 2, !dbg !5398
  %len8 = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 0, !dbg !5399
  store i64 %sub.ptr.sub7, ptr %len8, align 8, !dbg !5400, !tbaa !4719
  %24 = load ptr, ptr %r.addr, align 8, !dbg !5401, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %24, i32 0, i32 11, !dbg !5402
  %25 = load ptr, ptr %pool, align 8, !dbg !5402, !tbaa !3401
  %26 = load ptr, ptr %h, align 8, !dbg !5403, !tbaa !2270
  %key9 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %26, i32 0, i32 1, !dbg !5404
  %len10 = getelementptr inbounds %struct.ngx_str_t, ptr %key9, i32 0, i32 0, !dbg !5405
  %27 = load i64, ptr %len10, align 8, !dbg !5405, !tbaa !4621
  %add = add i64 %27, 1, !dbg !5406
  %28 = load ptr, ptr %h, align 8, !dbg !5407, !tbaa !2270
  %value11 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %28, i32 0, i32 2, !dbg !5408
  %len12 = getelementptr inbounds %struct.ngx_str_t, ptr %value11, i32 0, i32 0, !dbg !5409
  %29 = load i64, ptr %len12, align 8, !dbg !5409, !tbaa !4719
  %add13 = add i64 %add, %29, !dbg !5410
  %add14 = add i64 %add13, 1, !dbg !5411
  %30 = load ptr, ptr %h, align 8, !dbg !5412, !tbaa !2270
  %key15 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %30, i32 0, i32 1, !dbg !5413
  %len16 = getelementptr inbounds %struct.ngx_str_t, ptr %key15, i32 0, i32 0, !dbg !5414
  %31 = load i64, ptr %len16, align 8, !dbg !5414, !tbaa !4621
  %add17 = add i64 %add14, %31, !dbg !5415
  %call18 = call ptr @ngx_pnalloc(ptr noundef %25, i64 noundef %add17), !dbg !5416
  %32 = load ptr, ptr %h, align 8, !dbg !5417, !tbaa !2270
  %key19 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %32, i32 0, i32 1, !dbg !5418
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %key19, i32 0, i32 1, !dbg !5419
  store ptr %call18, ptr %data, align 8, !dbg !5420, !tbaa !4661
  %33 = load ptr, ptr %h, align 8, !dbg !5421, !tbaa !2270
  %key20 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %33, i32 0, i32 1, !dbg !5423
  %data21 = getelementptr inbounds %struct.ngx_str_t, ptr %key20, i32 0, i32 1, !dbg !5424
  %34 = load ptr, ptr %data21, align 8, !dbg !5424, !tbaa !4661
  %cmp22 = icmp eq ptr %34, null, !dbg !5425
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !5426

if.then23:                                        ; preds = %if.end
  %35 = load ptr, ptr %h, align 8, !dbg !5427, !tbaa !2270
  %hash24 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %35, i32 0, i32 0, !dbg !5429
  store i64 0, ptr %hash24, align 8, !dbg !5430, !tbaa !5378
  store i64 -1, ptr %retval, align 8, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

if.end25:                                         ; preds = %if.end
  %36 = load ptr, ptr %h, align 8, !dbg !5432, !tbaa !2270
  %key26 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %36, i32 0, i32 1, !dbg !5433
  %data27 = getelementptr inbounds %struct.ngx_str_t, ptr %key26, i32 0, i32 1, !dbg !5434
  %37 = load ptr, ptr %data27, align 8, !dbg !5434, !tbaa !4661
  %38 = load ptr, ptr %h, align 8, !dbg !5435, !tbaa !2270
  %key28 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %38, i32 0, i32 1, !dbg !5436
  %len29 = getelementptr inbounds %struct.ngx_str_t, ptr %key28, i32 0, i32 0, !dbg !5437
  %39 = load i64, ptr %len29, align 8, !dbg !5437, !tbaa !4621
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !5438
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !5439
  %40 = load ptr, ptr %h, align 8, !dbg !5440, !tbaa !2270
  %value31 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %40, i32 0, i32 2, !dbg !5441
  %data32 = getelementptr inbounds %struct.ngx_str_t, ptr %value31, i32 0, i32 1, !dbg !5442
  store ptr %add.ptr30, ptr %data32, align 8, !dbg !5443, !tbaa !4991
  %41 = load ptr, ptr %h, align 8, !dbg !5444, !tbaa !2270
  %key33 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %41, i32 0, i32 1, !dbg !5445
  %data34 = getelementptr inbounds %struct.ngx_str_t, ptr %key33, i32 0, i32 1, !dbg !5446
  %42 = load ptr, ptr %data34, align 8, !dbg !5446, !tbaa !4661
  %43 = load ptr, ptr %h, align 8, !dbg !5447, !tbaa !2270
  %key35 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %43, i32 0, i32 1, !dbg !5448
  %len36 = getelementptr inbounds %struct.ngx_str_t, ptr %key35, i32 0, i32 0, !dbg !5449
  %44 = load i64, ptr %len36, align 8, !dbg !5449, !tbaa !4621
  %add.ptr37 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !5450
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 1, !dbg !5451
  %45 = load ptr, ptr %h, align 8, !dbg !5452, !tbaa !2270
  %value39 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %45, i32 0, i32 2, !dbg !5453
  %len40 = getelementptr inbounds %struct.ngx_str_t, ptr %value39, i32 0, i32 0, !dbg !5454
  %46 = load i64, ptr %len40, align 8, !dbg !5454, !tbaa !4719
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr38, i64 %46, !dbg !5455
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr41, i64 1, !dbg !5456
  %47 = load ptr, ptr %h, align 8, !dbg !5457, !tbaa !2270
  %lowcase_key = getelementptr inbounds %struct.ngx_table_elt_t, ptr %47, i32 0, i32 3, !dbg !5458
  store ptr %add.ptr42, ptr %lowcase_key, align 8, !dbg !5459, !tbaa !5460
  %48 = load ptr, ptr %h, align 8, !dbg !5461, !tbaa !2270
  %key43 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %48, i32 0, i32 1, !dbg !5461
  %data44 = getelementptr inbounds %struct.ngx_str_t, ptr %key43, i32 0, i32 1, !dbg !5461
  %49 = load ptr, ptr %data44, align 8, !dbg !5461, !tbaa !4661
  %50 = load ptr, ptr %r.addr, align 8, !dbg !5461, !tbaa !2270
  %header_name_start45 = getelementptr inbounds %struct.ngx_http_request_s, ptr %50, i32 0, i32 53, !dbg !5461
  %51 = load ptr, ptr %header_name_start45, align 8, !dbg !5461, !tbaa !5384
  %52 = load ptr, ptr %h, align 8, !dbg !5461, !tbaa !2270
  %key46 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %52, i32 0, i32 1, !dbg !5461
  %len47 = getelementptr inbounds %struct.ngx_str_t, ptr %key46, i32 0, i32 0, !dbg !5461
  %53 = load i64, ptr %len47, align 8, !dbg !5461, !tbaa !4621
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %51, i64 %53, i1 false), !dbg !5461
  %54 = load ptr, ptr %h, align 8, !dbg !5462, !tbaa !2270
  %key48 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %54, i32 0, i32 1, !dbg !5463
  %data49 = getelementptr inbounds %struct.ngx_str_t, ptr %key48, i32 0, i32 1, !dbg !5464
  %55 = load ptr, ptr %data49, align 8, !dbg !5464, !tbaa !4661
  %56 = load ptr, ptr %h, align 8, !dbg !5465, !tbaa !2270
  %key50 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %56, i32 0, i32 1, !dbg !5466
  %len51 = getelementptr inbounds %struct.ngx_str_t, ptr %key50, i32 0, i32 0, !dbg !5467
  %57 = load i64, ptr %len51, align 8, !dbg !5467, !tbaa !4621
  %arrayidx52 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !5462
  store i8 0, ptr %arrayidx52, align 1, !dbg !5468, !tbaa !4663
  %58 = load ptr, ptr %h, align 8, !dbg !5469, !tbaa !2270
  %value53 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %58, i32 0, i32 2, !dbg !5469
  %data54 = getelementptr inbounds %struct.ngx_str_t, ptr %value53, i32 0, i32 1, !dbg !5469
  %59 = load ptr, ptr %data54, align 8, !dbg !5469, !tbaa !4991
  %60 = load ptr, ptr %r.addr, align 8, !dbg !5469, !tbaa !2270
  %header_start55 = getelementptr inbounds %struct.ngx_http_request_s, ptr %60, i32 0, i32 55, !dbg !5469
  %61 = load ptr, ptr %header_start55, align 8, !dbg !5469, !tbaa !5395
  %62 = load ptr, ptr %h, align 8, !dbg !5469, !tbaa !2270
  %value56 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %62, i32 0, i32 2, !dbg !5469
  %len57 = getelementptr inbounds %struct.ngx_str_t, ptr %value56, i32 0, i32 0, !dbg !5469
  %63 = load i64, ptr %len57, align 8, !dbg !5469, !tbaa !4719
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %61, i64 %63, i1 false), !dbg !5469
  %64 = load ptr, ptr %h, align 8, !dbg !5470, !tbaa !2270
  %value58 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %64, i32 0, i32 2, !dbg !5471
  %data59 = getelementptr inbounds %struct.ngx_str_t, ptr %value58, i32 0, i32 1, !dbg !5472
  %65 = load ptr, ptr %data59, align 8, !dbg !5472, !tbaa !4991
  %66 = load ptr, ptr %h, align 8, !dbg !5473, !tbaa !2270
  %value60 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %66, i32 0, i32 2, !dbg !5474
  %len61 = getelementptr inbounds %struct.ngx_str_t, ptr %value60, i32 0, i32 0, !dbg !5475
  %67 = load i64, ptr %len61, align 8, !dbg !5475, !tbaa !4719
  %arrayidx62 = getelementptr inbounds i8, ptr %65, i64 %67, !dbg !5470
  store i8 0, ptr %arrayidx62, align 1, !dbg !5476, !tbaa !4663
  %68 = load ptr, ptr %h, align 8, !dbg !5477, !tbaa !2270
  %key63 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %68, i32 0, i32 1, !dbg !5479
  %len64 = getelementptr inbounds %struct.ngx_str_t, ptr %key63, i32 0, i32 0, !dbg !5480
  %69 = load i64, ptr %len64, align 8, !dbg !5480, !tbaa !4621
  %70 = load ptr, ptr %r.addr, align 8, !dbg !5481, !tbaa !2270
  %lowcase_index = getelementptr inbounds %struct.ngx_http_request_s, ptr %70, i32 0, i32 51, !dbg !5482
  %71 = load i64, ptr %lowcase_index, align 8, !dbg !5482, !tbaa !5483
  %cmp65 = icmp eq i64 %69, %71, !dbg !5484
  br i1 %cmp65, label %if.then66, label %if.else, !dbg !5485

if.then66:                                        ; preds = %if.end25
  %72 = load ptr, ptr %h, align 8, !dbg !5486, !tbaa !2270
  %lowcase_key67 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %72, i32 0, i32 3, !dbg !5486
  %73 = load ptr, ptr %lowcase_key67, align 8, !dbg !5486, !tbaa !5460
  %74 = load ptr, ptr %r.addr, align 8, !dbg !5486, !tbaa !2270
  %lowcase_header = getelementptr inbounds %struct.ngx_http_request_s, ptr %74, i32 0, i32 52, !dbg !5486
  %arraydecay = getelementptr inbounds [32 x i8], ptr %lowcase_header, i64 0, i64 0, !dbg !5486
  %75 = load ptr, ptr %h, align 8, !dbg !5486, !tbaa !2270
  %key68 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %75, i32 0, i32 1, !dbg !5486
  %len69 = getelementptr inbounds %struct.ngx_str_t, ptr %key68, i32 0, i32 0, !dbg !5486
  %76 = load i64, ptr %len69, align 8, !dbg !5486, !tbaa !4621
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 8 %arraydecay, i64 %76, i1 false), !dbg !5486
  br label %if.end75, !dbg !5488

if.else:                                          ; preds = %if.end25
  %77 = load ptr, ptr %h, align 8, !dbg !5489, !tbaa !2270
  %lowcase_key70 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %77, i32 0, i32 3, !dbg !5491
  %78 = load ptr, ptr %lowcase_key70, align 8, !dbg !5491, !tbaa !5460
  %79 = load ptr, ptr %h, align 8, !dbg !5492, !tbaa !2270
  %key71 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %79, i32 0, i32 1, !dbg !5493
  %data72 = getelementptr inbounds %struct.ngx_str_t, ptr %key71, i32 0, i32 1, !dbg !5494
  %80 = load ptr, ptr %data72, align 8, !dbg !5494, !tbaa !4661
  %81 = load ptr, ptr %h, align 8, !dbg !5495, !tbaa !2270
  %key73 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %81, i32 0, i32 1, !dbg !5496
  %len74 = getelementptr inbounds %struct.ngx_str_t, ptr %key73, i32 0, i32 0, !dbg !5497
  %82 = load i64, ptr %len74, align 8, !dbg !5497, !tbaa !4621
  call void @ngx_strlow(ptr noundef %78, ptr noundef %80, i64 noundef %82), !dbg !5498
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then66
  %83 = load ptr, ptr %umcf, align 8, !dbg !5499, !tbaa !2270
  %headers_in_hash = getelementptr inbounds %struct.ngx_http_upstream_main_conf_t, ptr %83, i32 0, i32 0, !dbg !5500
  %84 = load ptr, ptr %h, align 8, !dbg !5501, !tbaa !2270
  %hash76 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %84, i32 0, i32 0, !dbg !5502
  %85 = load i64, ptr %hash76, align 8, !dbg !5502, !tbaa !5378
  %86 = load ptr, ptr %h, align 8, !dbg !5503, !tbaa !2270
  %lowcase_key77 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %86, i32 0, i32 3, !dbg !5504
  %87 = load ptr, ptr %lowcase_key77, align 8, !dbg !5504, !tbaa !5460
  %88 = load ptr, ptr %h, align 8, !dbg !5505, !tbaa !2270
  %key78 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %88, i32 0, i32 1, !dbg !5506
  %len79 = getelementptr inbounds %struct.ngx_str_t, ptr %key78, i32 0, i32 0, !dbg !5507
  %89 = load i64, ptr %len79, align 8, !dbg !5507, !tbaa !4621
  %call80 = call ptr @ngx_hash_find(ptr noundef %headers_in_hash, i64 noundef %85, ptr noundef %87, i64 noundef %89), !dbg !5508
  store ptr %call80, ptr %hh, align 8, !dbg !5509, !tbaa !2270
  %90 = load ptr, ptr %hh, align 8, !dbg !5510, !tbaa !2270
  %tobool = icmp ne ptr %90, null, !dbg !5510
  br i1 %tobool, label %land.lhs.true, label %if.end84, !dbg !5512

land.lhs.true:                                    ; preds = %if.end75
  %91 = load ptr, ptr %hh, align 8, !dbg !5513, !tbaa !2270
  %handler = getelementptr inbounds %struct.ngx_http_upstream_header_t, ptr %91, i32 0, i32 1, !dbg !5514
  %92 = load ptr, ptr %handler, align 8, !dbg !5514, !tbaa !5515
  %93 = load ptr, ptr %r.addr, align 8, !dbg !5517, !tbaa !2270
  %94 = load ptr, ptr %h, align 8, !dbg !5518, !tbaa !2270
  %95 = load ptr, ptr %hh, align 8, !dbg !5519, !tbaa !2270
  %offset = getelementptr inbounds %struct.ngx_http_upstream_header_t, ptr %95, i32 0, i32 2, !dbg !5520
  %96 = load i64, ptr %offset, align 8, !dbg !5520, !tbaa !5521
  %call81 = call i64 %92(ptr noundef %93, ptr noundef %94, i64 noundef %96), !dbg !5513
  %cmp82 = icmp ne i64 %call81, 0, !dbg !5522
  br i1 %cmp82, label %if.then83, label %if.end84, !dbg !5523

if.then83:                                        ; preds = %land.lhs.true
  store i64 -1, ptr %retval, align 8, !dbg !5524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5524

if.end84:                                         ; preds = %land.lhs.true, %if.end75
  br label %for.cond, !dbg !5526, !llvm.loop !5527

if.end85:                                         ; preds = %for.cond
  %97 = load i64, ptr %rc, align 8, !dbg !5530, !tbaa !2704
  %cmp86 = icmp eq i64 %97, 1, !dbg !5531
  br i1 %cmp86, label %if.then87, label %if.end157, !dbg !5532

if.then87:                                        ; preds = %if.end85
  %98 = load ptr, ptr %r.addr, align 8, !dbg !5533, !tbaa !2270
  %upstream88 = getelementptr inbounds %struct.ngx_http_request_s, ptr %98, i32 0, i32 9, !dbg !5534
  %99 = load ptr, ptr %upstream88, align 8, !dbg !5534, !tbaa !3436
  store ptr %99, ptr %u, align 8, !dbg !5535, !tbaa !2270
  %100 = load ptr, ptr %u, align 8, !dbg !5536, !tbaa !2270
  %headers_in89 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %100, i32 0, i32 13, !dbg !5538
  %status_n = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in89, i32 0, i32 2, !dbg !5539
  %101 = load i64, ptr %status_n, align 8, !dbg !5539, !tbaa !5205
  %tobool90 = icmp ne i64 %101, 0, !dbg !5536
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !5540

if.then91:                                        ; preds = %if.then87
  br label %done, !dbg !5541

if.end92:                                         ; preds = %if.then87
  %102 = load ptr, ptr %u, align 8, !dbg !5543, !tbaa !2270
  %headers_in93 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %102, i32 0, i32 13, !dbg !5545
  %status94 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in93, i32 0, i32 4, !dbg !5546
  %103 = load ptr, ptr %status94, align 8, !dbg !5546, !tbaa !5547
  %tobool95 = icmp ne ptr %103, null, !dbg !5543
  br i1 %tobool95, label %if.then96, label %if.else114, !dbg !5548

if.then96:                                        ; preds = %if.end92
  %104 = load ptr, ptr %u, align 8, !dbg !5549, !tbaa !2270
  %headers_in97 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %104, i32 0, i32 13, !dbg !5551
  %status98 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in97, i32 0, i32 4, !dbg !5552
  %105 = load ptr, ptr %status98, align 8, !dbg !5552, !tbaa !5547
  %value99 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %105, i32 0, i32 2, !dbg !5553
  store ptr %value99, ptr %status_line, align 8, !dbg !5554, !tbaa !2270
  %106 = load ptr, ptr %status_line, align 8, !dbg !5555, !tbaa !2270
  %data100 = getelementptr inbounds %struct.ngx_str_t, ptr %106, i32 0, i32 1, !dbg !5556
  %107 = load ptr, ptr %data100, align 8, !dbg !5556, !tbaa !4431
  %call101 = call i64 @ngx_atoi(ptr noundef %107, i64 noundef 3), !dbg !5557
  store i64 %call101, ptr %status, align 8, !dbg !5558, !tbaa !2704
  %108 = load i64, ptr %status, align 8, !dbg !5559, !tbaa !2704
  %cmp102 = icmp eq i64 %108, -1, !dbg !5561
  br i1 %cmp102, label %if.then103, label %if.end109, !dbg !5562

if.then103:                                       ; preds = %if.then96
  %109 = load ptr, ptr %r.addr, align 8, !dbg !5563, !tbaa !2270
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %109, i32 0, i32 1, !dbg !5563
  %110 = load ptr, ptr %connection, align 8, !dbg !5563, !tbaa !4202
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %110, i32 0, i32 10, !dbg !5563
  %111 = load ptr, ptr %log, align 8, !dbg !5563, !tbaa !4203
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %111, i32 0, i32 0, !dbg !5563
  %112 = load i64, ptr %log_level, align 8, !dbg !5563, !tbaa !4206
  %cmp104 = icmp uge i64 %112, 4, !dbg !5563
  br i1 %cmp104, label %if.then105, label %if.end108, !dbg !5566

if.then105:                                       ; preds = %if.then103
  %113 = load ptr, ptr %r.addr, align 8, !dbg !5563, !tbaa !2270
  %connection106 = getelementptr inbounds %struct.ngx_http_request_s, ptr %113, i32 0, i32 1, !dbg !5563
  %114 = load ptr, ptr %connection106, align 8, !dbg !5563, !tbaa !4202
  %log107 = getelementptr inbounds %struct.ngx_connection_s, ptr %114, i32 0, i32 10, !dbg !5563
  %115 = load ptr, ptr %log107, align 8, !dbg !5563, !tbaa !4203
  %116 = load ptr, ptr %status_line, align 8, !dbg !5563, !tbaa !2270
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %115, i32 noundef 0, ptr noundef @.str.22, ptr noundef %116), !dbg !5563
  br label %if.end108, !dbg !5563

if.end108:                                        ; preds = %if.then105, %if.then103
  store i64 40, ptr %retval, align 8, !dbg !5567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5567

if.end109:                                        ; preds = %if.then96
  %117 = load i64, ptr %status, align 8, !dbg !5568, !tbaa !2704
  %118 = load ptr, ptr %u, align 8, !dbg !5569, !tbaa !2270
  %headers_in110 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %118, i32 0, i32 13, !dbg !5570
  %status_n111 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in110, i32 0, i32 2, !dbg !5571
  store i64 %117, ptr %status_n111, align 8, !dbg !5572, !tbaa !5205
  %119 = load ptr, ptr %u, align 8, !dbg !5573, !tbaa !2270
  %headers_in112 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %119, i32 0, i32 13, !dbg !5574
  %status_line113 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in112, i32 0, i32 3, !dbg !5575
  %120 = load ptr, ptr %status_line, align 8, !dbg !5576, !tbaa !2270
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %status_line113, ptr align 8 %120, i64 16, i1 false), !dbg !5577, !tbaa.struct !3823
  br label %if.end136, !dbg !5578

if.else114:                                       ; preds = %if.end92
  %121 = load ptr, ptr %u, align 8, !dbg !5579, !tbaa !2270
  %headers_in115 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %121, i32 0, i32 13, !dbg !5581
  %location = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in115, i32 0, i32 16, !dbg !5582
  %122 = load ptr, ptr %location, align 8, !dbg !5582, !tbaa !5583
  %tobool116 = icmp ne ptr %122, null, !dbg !5579
  br i1 %tobool116, label %if.then117, label %if.else126, !dbg !5584

if.then117:                                       ; preds = %if.else114
  %123 = load ptr, ptr %u, align 8, !dbg !5585, !tbaa !2270
  %headers_in118 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %123, i32 0, i32 13, !dbg !5587
  %status_n119 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in118, i32 0, i32 2, !dbg !5588
  store i64 302, ptr %status_n119, align 8, !dbg !5589, !tbaa !5205
  %124 = load ptr, ptr %u, align 8, !dbg !5590, !tbaa !2270
  %headers_in120 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %124, i32 0, i32 13, !dbg !5590
  %status_line121 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in120, i32 0, i32 3, !dbg !5590
  %len122 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line121, i32 0, i32 0, !dbg !5590
  store i64 21, ptr %len122, align 8, !dbg !5590, !tbaa !5218
  %125 = load ptr, ptr %u, align 8, !dbg !5590, !tbaa !2270
  %headers_in123 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %125, i32 0, i32 13, !dbg !5590
  %status_line124 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in123, i32 0, i32 3, !dbg !5590
  %data125 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line124, i32 0, i32 1, !dbg !5590
  store ptr @.str.23, ptr %data125, align 8, !dbg !5590, !tbaa !5228
  br label %if.end135, !dbg !5591

if.else126:                                       ; preds = %if.else114
  %126 = load ptr, ptr %u, align 8, !dbg !5592, !tbaa !2270
  %headers_in127 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %126, i32 0, i32 13, !dbg !5594
  %status_n128 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in127, i32 0, i32 2, !dbg !5595
  store i64 200, ptr %status_n128, align 8, !dbg !5596, !tbaa !5205
  %127 = load ptr, ptr %u, align 8, !dbg !5597, !tbaa !2270
  %headers_in129 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %127, i32 0, i32 13, !dbg !5597
  %status_line130 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in129, i32 0, i32 3, !dbg !5597
  %len131 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line130, i32 0, i32 0, !dbg !5597
  store i64 6, ptr %len131, align 8, !dbg !5597, !tbaa !5218
  %128 = load ptr, ptr %u, align 8, !dbg !5597, !tbaa !2270
  %headers_in132 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %128, i32 0, i32 13, !dbg !5597
  %status_line133 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in132, i32 0, i32 3, !dbg !5597
  %data134 = getelementptr inbounds %struct.ngx_str_t, ptr %status_line133, i32 0, i32 1, !dbg !5597
  store ptr @.str.24, ptr %data134, align 8, !dbg !5597, !tbaa !5228
  br label %if.end135

if.end135:                                        ; preds = %if.else126, %if.then117
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end109
  %129 = load ptr, ptr %u, align 8, !dbg !5598, !tbaa !2270
  %state = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %129, i32 0, i32 33, !dbg !5600
  %130 = load ptr, ptr %state, align 8, !dbg !5600, !tbaa !5182
  %tobool137 = icmp ne ptr %130, null, !dbg !5598
  br i1 %tobool137, label %land.lhs.true138, label %if.end147, !dbg !5601

land.lhs.true138:                                 ; preds = %if.end136
  %131 = load ptr, ptr %u, align 8, !dbg !5602, !tbaa !2270
  %state139 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %131, i32 0, i32 33, !dbg !5603
  %132 = load ptr, ptr %state139, align 8, !dbg !5603, !tbaa !5182
  %status140 = getelementptr inbounds %struct.ngx_http_upstream_state_t, ptr %132, i32 0, i32 0, !dbg !5604
  %133 = load i64, ptr %status140, align 8, !dbg !5604, !tbaa !5187
  %cmp141 = icmp eq i64 %133, 0, !dbg !5605
  br i1 %cmp141, label %if.then142, label %if.end147, !dbg !5606

if.then142:                                       ; preds = %land.lhs.true138
  %134 = load ptr, ptr %u, align 8, !dbg !5607, !tbaa !2270
  %headers_in143 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %134, i32 0, i32 13, !dbg !5609
  %status_n144 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in143, i32 0, i32 2, !dbg !5610
  %135 = load i64, ptr %status_n144, align 8, !dbg !5610, !tbaa !5205
  %136 = load ptr, ptr %u, align 8, !dbg !5611, !tbaa !2270
  %state145 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %136, i32 0, i32 33, !dbg !5612
  %137 = load ptr, ptr %state145, align 8, !dbg !5612, !tbaa !5182
  %status146 = getelementptr inbounds %struct.ngx_http_upstream_state_t, ptr %137, i32 0, i32 0, !dbg !5613
  store i64 %135, ptr %status146, align 8, !dbg !5614, !tbaa !5187
  br label %if.end147, !dbg !5615

if.end147:                                        ; preds = %if.then142, %land.lhs.true138, %if.end136
  br label %done, !dbg !5616

done:                                             ; preds = %if.end147, %if.then91
  tail call void @llvm.dbg.label(metadata !5326), !dbg !5617
  %138 = load ptr, ptr %u, align 8, !dbg !5618, !tbaa !2270
  %headers_in148 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %138, i32 0, i32 13, !dbg !5620
  %status_n149 = getelementptr inbounds %struct.ngx_http_upstream_headers_in_t, ptr %headers_in148, i32 0, i32 2, !dbg !5621
  %139 = load i64, ptr %status_n149, align 8, !dbg !5621, !tbaa !5205
  %cmp150 = icmp eq i64 %139, 101, !dbg !5622
  br i1 %cmp150, label %land.lhs.true151, label %if.end156, !dbg !5623

land.lhs.true151:                                 ; preds = %done
  %140 = load ptr, ptr %r.addr, align 8, !dbg !5624, !tbaa !2270
  %headers_in152 = getelementptr inbounds %struct.ngx_http_request_s, ptr %140, i32 0, i32 13, !dbg !5625
  %upgrade = getelementptr inbounds %struct.ngx_http_headers_in_t, ptr %headers_in152, i32 0, i32 17, !dbg !5626
  %141 = load ptr, ptr %upgrade, align 8, !dbg !5626, !tbaa !5627
  %tobool153 = icmp ne ptr %141, null, !dbg !5624
  br i1 %tobool153, label %if.then154, label %if.end156, !dbg !5628

if.then154:                                       ; preds = %land.lhs.true151
  %142 = load ptr, ptr %u, align 8, !dbg !5629, !tbaa !2270
  %upgrade155 = getelementptr inbounds %struct.ngx_http_upstream_s, ptr %142, i32 0, i32 39, !dbg !5631
  %bf.load = load i16, ptr %upgrade155, align 8, !dbg !5632
  %bf.clear = and i16 %bf.load, -513, !dbg !5632
  %bf.set = or i16 %bf.clear, 512, !dbg !5632
  store i16 %bf.set, ptr %upgrade155, align 8, !dbg !5632
  br label %if.end156, !dbg !5633

if.end156:                                        ; preds = %if.then154, %land.lhs.true151, %done
  store i64 0, ptr %retval, align 8, !dbg !5634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5634

if.end157:                                        ; preds = %if.end85
  %143 = load i64, ptr %rc, align 8, !dbg !5635, !tbaa !2704
  %cmp158 = icmp eq i64 %143, -2, !dbg !5637
  br i1 %cmp158, label %if.then159, label %if.end160, !dbg !5638

if.then159:                                       ; preds = %if.end157
  store i64 -2, ptr %retval, align 8, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

if.end160:                                        ; preds = %if.end157
  %144 = load ptr, ptr %r.addr, align 8, !dbg !5641, !tbaa !2270
  %connection161 = getelementptr inbounds %struct.ngx_http_request_s, ptr %144, i32 0, i32 1, !dbg !5641
  %145 = load ptr, ptr %connection161, align 8, !dbg !5641, !tbaa !4202
  %log162 = getelementptr inbounds %struct.ngx_connection_s, ptr %145, i32 0, i32 10, !dbg !5641
  %146 = load ptr, ptr %log162, align 8, !dbg !5641, !tbaa !4203
  %log_level163 = getelementptr inbounds %struct.ngx_log_s, ptr %146, i32 0, i32 0, !dbg !5641
  %147 = load i64, ptr %log_level163, align 8, !dbg !5641, !tbaa !4206
  %cmp164 = icmp uge i64 %147, 4, !dbg !5641
  br i1 %cmp164, label %if.then165, label %if.end168, !dbg !5643

if.then165:                                       ; preds = %if.end160
  %148 = load ptr, ptr %r.addr, align 8, !dbg !5641, !tbaa !2270
  %connection166 = getelementptr inbounds %struct.ngx_http_request_s, ptr %148, i32 0, i32 1, !dbg !5641
  %149 = load ptr, ptr %connection166, align 8, !dbg !5641, !tbaa !4202
  %log167 = getelementptr inbounds %struct.ngx_connection_s, ptr %149, i32 0, i32 10, !dbg !5641
  %150 = load ptr, ptr %log167, align 8, !dbg !5641, !tbaa !4203
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %150, i32 noundef 0, ptr noundef @.str.25), !dbg !5641
  br label %if.end168, !dbg !5641

if.end168:                                        ; preds = %if.then165, %if.end160
  store i64 40, ptr %retval, align 8, !dbg !5644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5644

cleanup:                                          ; preds = %if.end168, %if.then159, %if.end156, %if.end108, %if.then83, %if.then23, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %umcf) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %hh) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %status_line) #8, !dbg !5645
  %151 = load i64, ptr %retval, align 8, !dbg !5645
  ret i64 %151, !dbg !5645
}

declare !dbg !5646 i64 @ngx_http_parse_header_line(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !5649 ptr @ngx_list_push(ptr noundef) #2

declare !dbg !5653 void @ngx_strlow(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !5656 i64 @ngx_atoi(ptr noundef, i64 noundef) #2

declare !dbg !5659 ptr @ngx_array_create(ptr noundef, i64 noundef, i64 noundef) #2

declare !dbg !5662 i64 @ngx_strcasecmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5665 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

declare !dbg !5671 i64 @ngx_hash_key_lc(ptr noundef, i64 noundef) #2

declare !dbg !5672 ptr @ngx_array_push_n(ptr noundef, i64 noundef) #2

declare i64 @ngx_http_script_copy_len_code(ptr noundef) #2

declare void @ngx_http_script_copy_code(ptr noundef) #2

declare !dbg !5675 ptr @ngx_cpystrn(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !5678 i64 @ngx_http_script_compile(ptr noundef) #2

declare !dbg !5682 i64 @ngx_hash_init(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_pass(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !5685 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %u = alloca %struct.ngx_url_t, align 8
  %value = alloca ptr, align 8
  %url = alloca ptr, align 8
  %n = alloca i64, align 8
  %clcf = alloca ptr, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !5687, metadata !DIExpression()), !dbg !5697
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5688, metadata !DIExpression()), !dbg !5698
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !5689, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !5700
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !5690, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !5702, !tbaa !2270
  store ptr %0, ptr %scf, align 8, !dbg !5701, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 216, ptr %u) #8, !dbg !5703
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !5691, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !5705
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !5692, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 8, ptr %url) #8, !dbg !5705
  tail call void @llvm.dbg.declare(metadata ptr %url, metadata !5693, metadata !DIExpression()), !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !5708
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !5694, metadata !DIExpression()), !dbg !5709
  call void @llvm.lifetime.start.p0(i64 8, ptr %clcf) #8, !dbg !5710
  tail call void @llvm.dbg.declare(metadata ptr %clcf, metadata !5695, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 88, ptr %sc) #8, !dbg !5712
  tail call void @llvm.dbg.declare(metadata ptr %sc, metadata !5696, metadata !DIExpression()), !dbg !5713
  %1 = load ptr, ptr %scf, align 8, !dbg !5714, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %1, i32 0, i32 0, !dbg !5716
  %upstream1 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream, i32 0, i32 0, !dbg !5717
  %2 = load ptr, ptr %upstream1, align 8, !dbg !5717, !tbaa !3167
  %tobool = icmp ne ptr %2, null, !dbg !5714
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5718

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %scf, align 8, !dbg !5719, !tbaa !2270
  %scgi_lengths = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %3, i32 0, i32 4, !dbg !5720
  %4 = load ptr, ptr %scgi_lengths, align 8, !dbg !5720, !tbaa !3172
  %tobool2 = icmp ne ptr %4, null, !dbg !5719
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5721

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr @.str.80, ptr %retval, align 8, !dbg !5722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5722

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !5724, !tbaa !2270
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 7, !dbg !5724
  %6 = load ptr, ptr %ctx, align 8, !dbg !5724, !tbaa !3154
  %loc_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %6, i32 0, i32 2, !dbg !5724
  %7 = load ptr, ptr %loc_conf, align 8, !dbg !5724, !tbaa !3155
  %8 = load i64, ptr @ngx_http_core_module, align 8, !dbg !5724, !tbaa !3157
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !5724
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !5724, !tbaa !2270
  store ptr %9, ptr %clcf, align 8, !dbg !5725, !tbaa !2270
  %10 = load ptr, ptr %clcf, align 8, !dbg !5726, !tbaa !2270
  %handler = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %10, i32 0, i32 6, !dbg !5727
  store ptr @ngx_http_scgi_handler, ptr %handler, align 8, !dbg !5728, !tbaa !3201
  %11 = load ptr, ptr %cf.addr, align 8, !dbg !5729, !tbaa !2270
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %11, i32 0, i32 1, !dbg !5730
  %12 = load ptr, ptr %args, align 8, !dbg !5730, !tbaa !5731
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %12, i32 0, i32 0, !dbg !5732
  %13 = load ptr, ptr %elts, align 8, !dbg !5732, !tbaa !3339
  store ptr %13, ptr %value, align 8, !dbg !5733, !tbaa !2270
  %14 = load ptr, ptr %value, align 8, !dbg !5734, !tbaa !2270
  %arrayidx3 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i64 1, !dbg !5734
  store ptr %arrayidx3, ptr %url, align 8, !dbg !5735, !tbaa !2270
  %15 = load ptr, ptr %url, align 8, !dbg !5736, !tbaa !2270
  %call = call i64 @ngx_http_script_variables_count(ptr noundef %15), !dbg !5737
  store i64 %call, ptr %n, align 8, !dbg !5738, !tbaa !2704
  %16 = load i64, ptr %n, align 8, !dbg !5739, !tbaa !2704
  %tobool4 = icmp ne i64 %16, 0, !dbg !5739
  br i1 %tobool4, label %if.then5, label %if.end14, !dbg !5741

if.then5:                                         ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %sc, i8 0, i64 88, i1 false), !dbg !5742
  %17 = load ptr, ptr %cf.addr, align 8, !dbg !5744, !tbaa !2270
  %cf6 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 0, !dbg !5745
  store ptr %17, ptr %cf6, align 8, !dbg !5746, !tbaa !4009
  %18 = load ptr, ptr %url, align 8, !dbg !5747, !tbaa !2270
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 1, !dbg !5748
  store ptr %18, ptr %source, align 8, !dbg !5749, !tbaa !4016
  %19 = load ptr, ptr %scf, align 8, !dbg !5750, !tbaa !2270
  %scgi_lengths7 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %19, i32 0, i32 4, !dbg !5751
  %lengths = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 3, !dbg !5752
  store ptr %scgi_lengths7, ptr %lengths, align 8, !dbg !5753, !tbaa !4026
  %20 = load ptr, ptr %scf, align 8, !dbg !5754, !tbaa !2270
  %scgi_values = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %20, i32 0, i32 5, !dbg !5755
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 4, !dbg !5756
  store ptr %scgi_values, ptr %values, align 8, !dbg !5757, !tbaa !4031
  %21 = load i64, ptr %n, align 8, !dbg !5758, !tbaa !2704
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 5, !dbg !5759
  store i64 %21, ptr %variables, align 8, !dbg !5760, !tbaa !5761
  %complete_lengths = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !5762
  %bf.load = load i8, ptr %complete_lengths, align 8, !dbg !5763
  %bf.clear = and i8 %bf.load, -3, !dbg !5763
  %bf.set = or i8 %bf.clear, 2, !dbg !5763
  store i8 %bf.set, ptr %complete_lengths, align 8, !dbg !5763
  %complete_values = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !5764
  %bf.load8 = load i8, ptr %complete_values, align 8, !dbg !5765
  %bf.clear9 = and i8 %bf.load8, -5, !dbg !5765
  %bf.set10 = or i8 %bf.clear9, 4, !dbg !5765
  store i8 %bf.set10, ptr %complete_values, align 8, !dbg !5765
  %call11 = call i64 @ngx_http_script_compile(ptr noundef %sc), !dbg !5766
  %cmp = icmp ne i64 %call11, 0, !dbg !5768
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !5769

if.then12:                                        ; preds = %if.then5
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5770

if.end13:                                         ; preds = %if.then5
  store ptr null, ptr %retval, align 8, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

if.end14:                                         ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %u, i8 0, i64 216, i1 false), !dbg !5773
  %url15 = getelementptr inbounds %struct.ngx_url_t, ptr %u, i32 0, i32 0, !dbg !5774
  %22 = load ptr, ptr %value, align 8, !dbg !5775, !tbaa !2270
  %arrayidx16 = getelementptr inbounds %struct.ngx_str_t, ptr %22, i64 1, !dbg !5775
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %url15, ptr align 8 %arrayidx16, i64 16, i1 false), !dbg !5775, !tbaa.struct !3823
  %no_resolve = getelementptr inbounds %struct.ngx_url_t, ptr %u, i32 0, i32 7, !dbg !5776
  %bf.load17 = load i8, ptr %no_resolve, align 8, !dbg !5777
  %bf.clear18 = and i8 %bf.load17, -5, !dbg !5777
  %bf.set19 = or i8 %bf.clear18, 4, !dbg !5777
  store i8 %bf.set19, ptr %no_resolve, align 8, !dbg !5777
  %23 = load ptr, ptr %cf.addr, align 8, !dbg !5778, !tbaa !2270
  %call20 = call ptr @ngx_http_upstream_add(ptr noundef %23, ptr noundef %u, i64 noundef 0), !dbg !5779
  %24 = load ptr, ptr %scf, align 8, !dbg !5780, !tbaa !2270
  %upstream21 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %24, i32 0, i32 0, !dbg !5781
  %upstream22 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream21, i32 0, i32 0, !dbg !5782
  store ptr %call20, ptr %upstream22, align 8, !dbg !5783, !tbaa !3167
  %25 = load ptr, ptr %scf, align 8, !dbg !5784, !tbaa !2270
  %upstream23 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %25, i32 0, i32 0, !dbg !5786
  %upstream24 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream23, i32 0, i32 0, !dbg !5787
  %26 = load ptr, ptr %upstream24, align 8, !dbg !5787, !tbaa !3167
  %cmp25 = icmp eq ptr %26, null, !dbg !5788
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !5789

if.then26:                                        ; preds = %if.end14
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5790

if.end27:                                         ; preds = %if.end14
  %27 = load ptr, ptr %clcf, align 8, !dbg !5792, !tbaa !2270
  %name = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %27, i32 0, i32 0, !dbg !5794
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !5795
  %28 = load i64, ptr %len, align 8, !dbg !5795, !tbaa !5796
  %tobool28 = icmp ne i64 %28, 0, !dbg !5792
  br i1 %tobool28, label %land.lhs.true, label %if.end39, !dbg !5797

land.lhs.true:                                    ; preds = %if.end27
  %29 = load ptr, ptr %clcf, align 8, !dbg !5798, !tbaa !2270
  %name29 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %29, i32 0, i32 0, !dbg !5799
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name29, i32 0, i32 1, !dbg !5800
  %30 = load ptr, ptr %data, align 8, !dbg !5800, !tbaa !5801
  %31 = load ptr, ptr %clcf, align 8, !dbg !5802, !tbaa !2270
  %name30 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %31, i32 0, i32 0, !dbg !5803
  %len31 = getelementptr inbounds %struct.ngx_str_t, ptr %name30, i32 0, i32 0, !dbg !5804
  %32 = load i64, ptr %len31, align 8, !dbg !5804, !tbaa !5796
  %sub = sub i64 %32, 1, !dbg !5805
  %arrayidx32 = getelementptr inbounds i8, ptr %30, i64 %sub, !dbg !5798
  %33 = load i8, ptr %arrayidx32, align 1, !dbg !5798, !tbaa !4663
  %conv = zext i8 %33 to i32, !dbg !5798
  %cmp33 = icmp eq i32 %conv, 47, !dbg !5806
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !5807

if.then35:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %clcf, align 8, !dbg !5808, !tbaa !2270
  %auto_redirect = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %34, i32 0, i32 1, !dbg !5810
  %bf.load36 = load i16, ptr %auto_redirect, align 8, !dbg !5811
  %bf.clear37 = and i16 %bf.load36, -33, !dbg !5811
  %bf.set38 = or i16 %bf.clear37, 32, !dbg !5811
  store i16 %bf.set38, ptr %auto_redirect, align 8, !dbg !5811
  br label %if.end39, !dbg !5812

if.end39:                                         ; preds = %if.then35, %land.lhs.true, %if.end27
  store ptr null, ptr %retval, align 8, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5813

cleanup:                                          ; preds = %if.end39, %if.then26, %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 88, ptr %sc) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %clcf) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %url) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 216, ptr %u) #8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !5814
  %35 = load ptr, ptr %retval, align 8, !dbg !5814
  ret ptr %35, !dbg !5814
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_store(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !5815 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !5817, metadata !DIExpression()), !dbg !5823
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5818, metadata !DIExpression()), !dbg !5824
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !5819, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !5826
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !5820, metadata !DIExpression()), !dbg !5827
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !5828, !tbaa !2270
  store ptr %0, ptr %scf, align 8, !dbg !5827, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !5829
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !5821, metadata !DIExpression()), !dbg !5830
  call void @llvm.lifetime.start.p0(i64 88, ptr %sc) #8, !dbg !5831
  tail call void @llvm.dbg.declare(metadata ptr %sc, metadata !5822, metadata !DIExpression()), !dbg !5832
  %1 = load ptr, ptr %scf, align 8, !dbg !5833, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %1, i32 0, i32 0, !dbg !5835
  %store = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream, i32 0, i32 51, !dbg !5836
  %bf.load = load i8, ptr %store, align 8, !dbg !5836
  %bf.shl = shl i8 %bf.load, 4, !dbg !5836
  %bf.ashr = ashr i8 %bf.shl, 6, !dbg !5836
  %bf.cast = sext i8 %bf.ashr to i32, !dbg !5836
  %cmp = icmp ne i32 %bf.cast, -1, !dbg !5837
  br i1 %cmp, label %if.then, label %if.end, !dbg !5838

if.then:                                          ; preds = %entry
  store ptr @.str.80, ptr %retval, align 8, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cf.addr, align 8, !dbg !5841, !tbaa !2270
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %2, i32 0, i32 1, !dbg !5842
  %3 = load ptr, ptr %args, align 8, !dbg !5842, !tbaa !5731
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %3, i32 0, i32 0, !dbg !5843
  %4 = load ptr, ptr %elts, align 8, !dbg !5843, !tbaa !3339
  store ptr %4, ptr %value, align 8, !dbg !5844, !tbaa !2270
  %5 = load ptr, ptr %value, align 8, !dbg !5845, !tbaa !2270
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %5, i64 1, !dbg !5845
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !5845
  %6 = load ptr, ptr %data, align 8, !dbg !5845, !tbaa !4431
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.81) #9, !dbg !5845
  %cmp1 = icmp eq i32 %call, 0, !dbg !5847
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !5848

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %scf, align 8, !dbg !5849, !tbaa !2270
  %upstream3 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %7, i32 0, i32 0, !dbg !5851
  %store4 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream3, i32 0, i32 51, !dbg !5852
  %bf.load5 = load i8, ptr %store4, align 8, !dbg !5853
  %bf.clear = and i8 %bf.load5, -13, !dbg !5853
  %bf.set = or i8 %bf.clear, 0, !dbg !5853
  store i8 %bf.set, ptr %store4, align 8, !dbg !5853
  store ptr null, ptr %retval, align 8, !dbg !5854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5854

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %scf, align 8, !dbg !5855, !tbaa !2270
  %upstream7 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !5857
  %cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream7, i32 0, i32 51, !dbg !5858
  %bf.load8 = load i8, ptr %cache, align 8, !dbg !5858
  %bf.shl9 = shl i8 %bf.load8, 6, !dbg !5858
  %bf.ashr10 = ashr i8 %bf.shl9, 6, !dbg !5858
  %bf.cast11 = sext i8 %bf.ashr10 to i32, !dbg !5858
  %cmp12 = icmp sgt i32 %bf.cast11, 0, !dbg !5859
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5860

if.then13:                                        ; preds = %if.end6
  store ptr @.str.82, ptr %retval, align 8, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

if.end14:                                         ; preds = %if.end6
  %9 = load ptr, ptr %scf, align 8, !dbg !5863, !tbaa !2270
  %upstream15 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %9, i32 0, i32 0, !dbg !5864
  %store16 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream15, i32 0, i32 51, !dbg !5865
  %bf.load17 = load i8, ptr %store16, align 8, !dbg !5866
  %bf.clear18 = and i8 %bf.load17, -13, !dbg !5866
  %bf.set19 = or i8 %bf.clear18, 4, !dbg !5866
  store i8 %bf.set19, ptr %store16, align 8, !dbg !5866
  %10 = load ptr, ptr %value, align 8, !dbg !5867, !tbaa !2270
  %arrayidx20 = getelementptr inbounds %struct.ngx_str_t, ptr %10, i64 1, !dbg !5867
  %data21 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx20, i32 0, i32 1, !dbg !5867
  %11 = load ptr, ptr %data21, align 8, !dbg !5867, !tbaa !4431
  %call22 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.83) #9, !dbg !5867
  %cmp23 = icmp eq i32 %call22, 0, !dbg !5869
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !5870

if.then24:                                        ; preds = %if.end14
  store ptr null, ptr %retval, align 8, !dbg !5871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5871

if.end25:                                         ; preds = %if.end14
  %12 = load ptr, ptr %value, align 8, !dbg !5873, !tbaa !2270
  %arrayidx26 = getelementptr inbounds %struct.ngx_str_t, ptr %12, i64 1, !dbg !5873
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx26, i32 0, i32 0, !dbg !5874
  %13 = load i64, ptr %len, align 8, !dbg !5875, !tbaa !4439
  %inc = add i64 %13, 1, !dbg !5875
  store i64 %inc, ptr %len, align 8, !dbg !5875, !tbaa !4439
  call void @llvm.memset.p0.i64(ptr align 8 %sc, i8 0, i64 88, i1 false), !dbg !5876
  %14 = load ptr, ptr %cf.addr, align 8, !dbg !5877, !tbaa !2270
  %cf27 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 0, !dbg !5878
  store ptr %14, ptr %cf27, align 8, !dbg !5879, !tbaa !4009
  %15 = load ptr, ptr %value, align 8, !dbg !5880, !tbaa !2270
  %arrayidx28 = getelementptr inbounds %struct.ngx_str_t, ptr %15, i64 1, !dbg !5880
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 1, !dbg !5881
  store ptr %arrayidx28, ptr %source, align 8, !dbg !5882, !tbaa !4016
  %16 = load ptr, ptr %scf, align 8, !dbg !5883, !tbaa !2270
  %upstream29 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %16, i32 0, i32 0, !dbg !5884
  %store_lengths = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream29, i32 0, i32 49, !dbg !5885
  %lengths = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 3, !dbg !5886
  store ptr %store_lengths, ptr %lengths, align 8, !dbg !5887, !tbaa !4026
  %17 = load ptr, ptr %scf, align 8, !dbg !5888, !tbaa !2270
  %upstream30 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %17, i32 0, i32 0, !dbg !5889
  %store_values = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream30, i32 0, i32 50, !dbg !5890
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 4, !dbg !5891
  store ptr %store_values, ptr %values, align 8, !dbg !5892, !tbaa !4031
  %18 = load ptr, ptr %value, align 8, !dbg !5893, !tbaa !2270
  %arrayidx31 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !5893
  %call32 = call i64 @ngx_http_script_variables_count(ptr noundef %arrayidx31), !dbg !5894
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 5, !dbg !5895
  store i64 %call32, ptr %variables, align 8, !dbg !5896, !tbaa !5761
  %complete_lengths = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !5897
  %bf.load33 = load i8, ptr %complete_lengths, align 8, !dbg !5898
  %bf.clear34 = and i8 %bf.load33, -3, !dbg !5898
  %bf.set35 = or i8 %bf.clear34, 2, !dbg !5898
  store i8 %bf.set35, ptr %complete_lengths, align 8, !dbg !5898
  %complete_values = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !5899
  %bf.load36 = load i8, ptr %complete_values, align 8, !dbg !5900
  %bf.clear37 = and i8 %bf.load36, -5, !dbg !5900
  %bf.set38 = or i8 %bf.clear37, 4, !dbg !5900
  store i8 %bf.set38, ptr %complete_values, align 8, !dbg !5900
  %call39 = call i64 @ngx_http_script_compile(ptr noundef %sc), !dbg !5901
  %cmp40 = icmp ne i64 %call39, 0, !dbg !5903
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !5904

if.then41:                                        ; preds = %if.end25
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5905

if.end42:                                         ; preds = %if.end25
  store ptr null, ptr %retval, align 8, !dbg !5907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5907

cleanup:                                          ; preds = %if.end42, %if.then41, %if.then24, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 88, ptr %sc) #8, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !5908
  %19 = load ptr, ptr %retval, align 8, !dbg !5908
  ret ptr %19, !dbg !5908
}

declare ptr @ngx_conf_set_access_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_flag_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_upstream_bind_set_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_msec_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_size_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_bufs_slot(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_cache(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !5909 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cv = alloca %struct.ngx_http_complex_value_t, align 8
  %ccv = alloca %struct.ngx_http_compile_complex_value_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !5911, metadata !DIExpression()), !dbg !5927
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5912, metadata !DIExpression()), !dbg !5928
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !5913, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !5930
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !5914, metadata !DIExpression()), !dbg !5931
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !5932, !tbaa !2270
  store ptr %0, ptr %scf, align 8, !dbg !5931, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !5933
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !5915, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 40, ptr %cv) #8, !dbg !5935
  tail call void @llvm.dbg.declare(metadata ptr %cv, metadata !5916, metadata !DIExpression()), !dbg !5936
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !5937
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !5917, metadata !DIExpression()), !dbg !5938
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !5939, !tbaa !2270
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !5940
  %2 = load ptr, ptr %args, align 8, !dbg !5940, !tbaa !5731
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !5941
  %3 = load ptr, ptr %elts, align 8, !dbg !5941, !tbaa !3339
  store ptr %3, ptr %value, align 8, !dbg !5942, !tbaa !2270
  %4 = load ptr, ptr %scf, align 8, !dbg !5943, !tbaa !2270
  %upstream = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !5945
  %cache = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream, i32 0, i32 51, !dbg !5946
  %bf.load = load i8, ptr %cache, align 8, !dbg !5946
  %bf.shl = shl i8 %bf.load, 6, !dbg !5946
  %bf.ashr = ashr i8 %bf.shl, 6, !dbg !5946
  %bf.cast = sext i8 %bf.ashr to i32, !dbg !5946
  %cmp = icmp ne i32 %bf.cast, -1, !dbg !5947
  br i1 %cmp, label %if.then, label %if.end, !dbg !5948

if.then:                                          ; preds = %entry
  store ptr @.str.80, ptr %retval, align 8, !dbg !5949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5949

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %value, align 8, !dbg !5951, !tbaa !2270
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %5, i64 1, !dbg !5951
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !5951
  %6 = load ptr, ptr %data, align 8, !dbg !5951, !tbaa !4431
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.81) #9, !dbg !5951
  %cmp1 = icmp eq i32 %call, 0, !dbg !5953
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !5954

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %scf, align 8, !dbg !5955, !tbaa !2270
  %upstream3 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %7, i32 0, i32 0, !dbg !5957
  %cache4 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream3, i32 0, i32 51, !dbg !5958
  %bf.load5 = load i8, ptr %cache4, align 8, !dbg !5959
  %bf.clear = and i8 %bf.load5, -4, !dbg !5959
  %bf.set = or i8 %bf.clear, 0, !dbg !5959
  store i8 %bf.set, ptr %cache4, align 8, !dbg !5959
  store ptr null, ptr %retval, align 8, !dbg !5960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %scf, align 8, !dbg !5961, !tbaa !2270
  %upstream7 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !5963
  %store = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream7, i32 0, i32 51, !dbg !5964
  %bf.load8 = load i8, ptr %store, align 8, !dbg !5964
  %bf.shl9 = shl i8 %bf.load8, 4, !dbg !5964
  %bf.ashr10 = ashr i8 %bf.shl9, 6, !dbg !5964
  %bf.cast11 = sext i8 %bf.ashr10 to i32, !dbg !5964
  %cmp12 = icmp sgt i32 %bf.cast11, 0, !dbg !5965
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5966

if.then13:                                        ; preds = %if.end6
  store ptr @.str.84, ptr %retval, align 8, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end14:                                         ; preds = %if.end6
  %9 = load ptr, ptr %scf, align 8, !dbg !5969, !tbaa !2270
  %upstream15 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %9, i32 0, i32 0, !dbg !5970
  %cache16 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream15, i32 0, i32 51, !dbg !5971
  %bf.load17 = load i8, ptr %cache16, align 8, !dbg !5972
  %bf.clear18 = and i8 %bf.load17, -4, !dbg !5972
  %bf.set19 = or i8 %bf.clear18, 1, !dbg !5972
  store i8 %bf.set19, ptr %cache16, align 8, !dbg !5972
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !5973
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !5974, !tbaa !2270
  %cf20 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !5975
  store ptr %10, ptr %cf20, align 8, !dbg !5976, !tbaa !5977
  %11 = load ptr, ptr %value, align 8, !dbg !5979, !tbaa !2270
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %11, i64 1, !dbg !5979
  %value22 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !5980
  store ptr %arrayidx21, ptr %value22, align 8, !dbg !5981, !tbaa !5982
  %complex_value = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !5983
  store ptr %cv, ptr %complex_value, align 8, !dbg !5984, !tbaa !5985
  %call23 = call i64 @ngx_http_compile_complex_value(ptr noundef %ccv), !dbg !5986
  %cmp24 = icmp ne i64 %call23, 0, !dbg !5988
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5989

if.then25:                                        ; preds = %if.end14
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5990

if.end26:                                         ; preds = %if.end14
  %lengths = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %cv, i32 0, i32 2, !dbg !5992
  %12 = load ptr, ptr %lengths, align 8, !dbg !5992, !tbaa !5994
  %cmp27 = icmp ne ptr %12, null, !dbg !5995
  br i1 %cmp27, label %if.then28, label %if.end38, !dbg !5996

if.then28:                                        ; preds = %if.end26
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !5997, !tbaa !2270
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %13, i32 0, i32 3, !dbg !5999
  %14 = load ptr, ptr %pool, align 8, !dbg !5999, !tbaa !2279
  %call29 = call ptr @ngx_palloc(ptr noundef %14, i64 noundef 40), !dbg !6000
  %15 = load ptr, ptr %scf, align 8, !dbg !6001, !tbaa !2270
  %upstream30 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !6002
  %cache_value = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream30, i32 0, i32 34, !dbg !6003
  store ptr %call29, ptr %cache_value, align 8, !dbg !6004, !tbaa !2954
  %16 = load ptr, ptr %scf, align 8, !dbg !6005, !tbaa !2270
  %upstream31 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %16, i32 0, i32 0, !dbg !6007
  %cache_value32 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream31, i32 0, i32 34, !dbg !6008
  %17 = load ptr, ptr %cache_value32, align 8, !dbg !6008, !tbaa !2954
  %cmp33 = icmp eq ptr %17, null, !dbg !6009
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6010

if.then34:                                        ; preds = %if.then28
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !6011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6011

if.end35:                                         ; preds = %if.then28
  %18 = load ptr, ptr %scf, align 8, !dbg !6013, !tbaa !2270
  %upstream36 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %18, i32 0, i32 0, !dbg !6014
  %cache_value37 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream36, i32 0, i32 34, !dbg !6015
  %19 = load ptr, ptr %cache_value37, align 8, !dbg !6015, !tbaa !2954
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %cv, i64 40, i1 false), !dbg !6016, !tbaa.struct !3074
  store ptr null, ptr %retval, align 8, !dbg !6017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6017

if.end38:                                         ; preds = %if.end26
  %20 = load ptr, ptr %cf.addr, align 8, !dbg !6018, !tbaa !2270
  %21 = load ptr, ptr %value, align 8, !dbg !6019, !tbaa !2270
  %arrayidx39 = getelementptr inbounds %struct.ngx_str_t, ptr %21, i64 1, !dbg !6019
  %call40 = call ptr @ngx_shared_memory_add(ptr noundef %20, ptr noundef %arrayidx39, i64 noundef 0, ptr noundef @ngx_http_scgi_module), !dbg !6020
  %22 = load ptr, ptr %scf, align 8, !dbg !6021, !tbaa !2270
  %upstream41 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %22, i32 0, i32 0, !dbg !6022
  %cache_zone = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream41, i32 0, i32 33, !dbg !6023
  store ptr %call40, ptr %cache_zone, align 8, !dbg !6024, !tbaa !2946
  %23 = load ptr, ptr %scf, align 8, !dbg !6025, !tbaa !2270
  %upstream42 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %23, i32 0, i32 0, !dbg !6027
  %cache_zone43 = getelementptr inbounds %struct.ngx_http_upstream_conf_t, ptr %upstream42, i32 0, i32 33, !dbg !6028
  %24 = load ptr, ptr %cache_zone43, align 8, !dbg !6028, !tbaa !2946
  %cmp44 = icmp eq ptr %24, null, !dbg !6029
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !6030

if.then45:                                        ; preds = %if.end38
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !6031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6031

if.end46:                                         ; preds = %if.end38
  store ptr null, ptr %retval, align 8, !dbg !6033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6033

cleanup:                                          ; preds = %if.end46, %if.then45, %if.end35, %if.then34, %if.then25, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 40, ptr %cv) #8, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !6034
  %25 = load ptr, ptr %retval, align 8, !dbg !6034
  ret ptr %25, !dbg !6034
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_scgi_cache_key(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !6035 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %scf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %ccv = alloca %struct.ngx_http_compile_complex_value_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !6037, metadata !DIExpression()), !dbg !6043
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6038, metadata !DIExpression()), !dbg !6044
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2270
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !6039, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %scf) #8, !dbg !6046
  tail call void @llvm.dbg.declare(metadata ptr %scf, metadata !6040, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !6048, !tbaa !2270
  store ptr %0, ptr %scf, align 8, !dbg !6047, !tbaa !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !6049
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !6041, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !6051
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !6042, metadata !DIExpression()), !dbg !6052
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !6053, !tbaa !2270
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !6054
  %2 = load ptr, ptr %args, align 8, !dbg !6054, !tbaa !5731
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !6055
  %3 = load ptr, ptr %elts, align 8, !dbg !6055, !tbaa !3339
  store ptr %3, ptr %value, align 8, !dbg !6056, !tbaa !2270
  %4 = load ptr, ptr %scf, align 8, !dbg !6057, !tbaa !2270
  %cache_key = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %4, i32 0, i32 6, !dbg !6059
  %value1 = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %cache_key, i32 0, i32 0, !dbg !6060
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %value1, i32 0, i32 1, !dbg !6061
  %5 = load ptr, ptr %data, align 8, !dbg !6061, !tbaa !3066
  %tobool = icmp ne ptr %5, null, !dbg !6057
  br i1 %tobool, label %if.then, label %if.end, !dbg !6062

if.then:                                          ; preds = %entry
  store ptr @.str.80, ptr %retval, align 8, !dbg !6063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6063

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !6065
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !6066, !tbaa !2270
  %cf2 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !6067
  store ptr %6, ptr %cf2, align 8, !dbg !6068, !tbaa !5977
  %7 = load ptr, ptr %value, align 8, !dbg !6069, !tbaa !2270
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %7, i64 1, !dbg !6069
  %value3 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !6070
  store ptr %arrayidx, ptr %value3, align 8, !dbg !6071, !tbaa !5982
  %8 = load ptr, ptr %scf, align 8, !dbg !6072, !tbaa !2270
  %cache_key4 = getelementptr inbounds %struct.ngx_http_scgi_loc_conf_t, ptr %8, i32 0, i32 6, !dbg !6073
  %complex_value = getelementptr inbounds %struct.ngx_http_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !6074
  store ptr %cache_key4, ptr %complex_value, align 8, !dbg !6075, !tbaa !5985
  %call = call i64 @ngx_http_compile_complex_value(ptr noundef %ccv), !dbg !6076
  %cmp = icmp ne i64 %call, 0, !dbg !6078
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6079

if.then5:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !6080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6080

if.end6:                                          ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !6082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6082

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !6083
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !6083
  call void @llvm.lifetime.end.p0(i64 8, ptr %scf) #8, !dbg !6083
  %9 = load ptr, ptr %retval, align 8, !dbg !6083
  ret ptr %9, !dbg !6083
}

declare ptr @ngx_http_file_cache_set_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_set_predicate_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_file_cache_valid_set_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_num_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_off_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_bitmask_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_path_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_upstream_param_set_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_str_array_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !6084 i64 @ngx_http_script_variables_count(ptr noundef) #2

declare !dbg !6087 ptr @ngx_http_upstream_add(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !6090 i32 @strcmp(ptr noundef, ptr noundef) #6

declare !dbg !6093 i64 @ngx_http_compile_complex_value(ptr noundef) #2

declare !dbg !6097 ptr @ngx_shared_memory_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2254, !2255, !2256, !2257, !2258, !2259}
!llvm.ident = !{!2260}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_scgi_module.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2fdf915e39658a2ba3c29b1f3ede7c8a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_scgi_module_ctx", scope: !9, file: !2, line: 413, type: !2231, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !1915, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !17, !21, !23, !29, !38, !40, !43, !44, !1910, !50, !24, !963, !1911, !13}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 90, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !18, line: 16, baseType: !19)
!18 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !20, line: 16, baseType: !11)
!20 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 29, baseType: !15)
!22 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !25, line: 33, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 17, size: 192, elements: !33)
!33 = !{!34, !36, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !32, file: !31, line: 18, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !32, file: !31, line: 19, baseType: !35, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !32, file: !31, line: 20, baseType: !35, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !39, line: 16, baseType: !16)
!39 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !25, line: 87, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 153, baseType: !42)
!42 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_len_code_pt", file: !46, line: 86, baseType: !47)
!46 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!21, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_engine_t", file: !46, line: 36, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 17, size: 704, elements: !53)
!53 = !{!54, !55, !56, !71, !77, !78, !79, !80, !81, !82, !83, !84, !89}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !52, file: !46, line: 18, baseType: !23, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !52, file: !46, line: 19, baseType: !23, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !52, file: !46, line: 20, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !59, line: 17, baseType: !60)
!59 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !61, line: 37, baseType: !62)
!61 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 28, size: 128, elements: !63)
!63 = !{!64, !66, !67, !68, !69, !70}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !62, file: !61, line: 29, baseType: !65, size: 28, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !62, file: !61, line: 31, baseType: !65, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !62, file: !61, line: 32, baseType: !65, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !62, file: !61, line: 33, baseType: !65, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !62, file: !61, line: 34, baseType: !65, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !62, file: !61, line: 36, baseType: !23, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !52, file: !46, line: 22, baseType: !72, size: 128, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !61, line: 19, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 16, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !73, file: !61, line: 17, baseType: !21, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !61, line: 18, baseType: !23, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !52, file: !46, line: 23, baseType: !72, size: 128, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !52, file: !46, line: 26, baseType: !23, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flushed", scope: !52, file: !46, line: 28, baseType: !65, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !52, file: !46, line: 29, baseType: !65, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !52, file: !46, line: 30, baseType: !65, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "is_args", scope: !52, file: !46, line: 31, baseType: !65, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !52, file: !46, line: 32, baseType: !65, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !52, file: !46, line: 34, baseType: !85, size: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !12, line: 78, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !87, line: 267, baseType: !88)
!87 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !27, line: 207, baseType: !42)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !52, file: !46, line: 35, baseType: !90, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !92, line: 16, baseType: !93)
!92 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !94, line: 371, size: 11456, elements: !95)
!94 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!95 = !{!96, !100, !499, !500, !501, !502, !503, !508, !509, !735, !1474, !1475, !1476, !1477, !1519, !1551, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1597, !1608, !1615, !1616, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1803, !1807, !1812, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !93, file: !94, line: 372, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 42, baseType: !65)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !93, file: !94, line: 374, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !103, line: 26, baseType: !104)
!103 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !105, line: 124, size: 1920, elements: !106)
!105 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!106 = !{!107, !108, !207, !208, !211, !219, !221, !307, !312, !388, !389, !390, !427, !428, !429, !430, !431, !432, !437, !475, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !105, line: 125, baseType: !16, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !104, file: !105, line: 126, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !103, line: 24, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !112, line: 30, size: 768, elements: !113)
!112 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !142, !143, !188, !199}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !112, line: 31, baseType: !16, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !111, file: !112, line: 33, baseType: !65, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !111, file: !112, line: 35, baseType: !65, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !111, file: !112, line: 38, baseType: !65, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !111, file: !112, line: 44, baseType: !65, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !111, file: !112, line: 46, baseType: !65, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !111, file: !112, line: 49, baseType: !65, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !111, file: !112, line: 51, baseType: !65, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !111, file: !112, line: 54, baseType: !65, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !111, file: !112, line: 56, baseType: !65, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !111, file: !112, line: 57, baseType: !65, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !111, file: !112, line: 59, baseType: !65, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !111, file: !112, line: 60, baseType: !65, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !111, file: !112, line: 62, baseType: !65, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !111, file: !112, line: 64, baseType: !65, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !111, file: !112, line: 67, baseType: !65, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !111, file: !112, line: 69, baseType: !65, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !111, file: !112, line: 71, baseType: !65, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !111, file: !112, line: 74, baseType: !65, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !111, file: !112, line: 75, baseType: !65, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !111, file: !112, line: 77, baseType: !65, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !111, file: !112, line: 80, baseType: !65, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !111, file: !112, line: 110, baseType: !65, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !111, file: !112, line: 113, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !103, line: 32, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !109}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !111, file: !112, line: 120, baseType: !11, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !111, file: !112, line: 122, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !103, line: 20, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !147, line: 50, size: 640, elements: !148)
!147 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!148 = !{!149, !150, !166, !169, !173, !178, !179, !184, !185, !187}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !146, file: !147, line: 51, baseType: !11, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !146, file: !147, line: 52, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !103, line: 21, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !154, line: 89, size: 320, elements: !155)
!154 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!155 = !{!156, !160, !161, !165}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !153, file: !154, line: 90, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !158, line: 16, baseType: !159)
!158 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 91, baseType: !72, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !153, file: !154, line: 93, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !151, !144}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !153, file: !154, line: 94, baseType: !16, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !146, file: !147, line: 54, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !168, line: 98, baseType: !15)
!168 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !146, file: !147, line: 56, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !171, line: 10, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !27, line: 160, baseType: !42)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !146, file: !147, line: 58, baseType: !174, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !147, line: 45, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!23, !144, !23, !21}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !147, line: 59, baseType: !16, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !146, file: !147, line: 61, baseType: !180, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !147, line: 46, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !144, !11, !23, !21}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !146, file: !147, line: 62, baseType: !16, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !146, file: !147, line: 70, baseType: !186, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 72, baseType: !144, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !111, file: !112, line: 124, baseType: !189, size: 320, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !20, line: 20, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !20, line: 22, size: 320, elements: !191)
!191 = !{!192, !193, !195, !196, !197, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !190, file: !20, line: 23, baseType: !19, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !190, file: !20, line: 24, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !190, file: !20, line: 25, baseType: !194, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !20, line: 26, baseType: !194, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !190, file: !20, line: 27, baseType: !24, size: 8, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !190, file: !20, line: 28, baseType: !24, size: 8, offset: 264)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !111, file: !112, line: 127, baseType: !200, size: 128, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !201, line: 16, baseType: !202)
!201 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !201, line: 18, size: 128, elements: !203)
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !201, line: 19, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !201, line: 20, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !104, file: !105, line: 127, baseType: !109, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !104, file: !105, line: 129, baseType: !209, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !210, line: 17, baseType: !159)
!210 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !104, file: !105, line: 131, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !213, line: 19, baseType: !214)
!213 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !101, !23, !21}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 108, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 194, baseType: !42)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !104, file: !105, line: 132, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !213, line: 22, baseType: !214)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !104, file: !105, line: 133, baseType: !222, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !213, line: 20, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!217, !101, !226, !40}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !103, line: 19, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !39, line: 59, size: 128, elements: !229)
!229 = !{!230, !306}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !228, file: !39, line: 60, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !39, line: 18, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !39, line: 20, size: 640, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !233, file: !39, line: 21, baseType: !23, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !233, file: !39, line: 22, baseType: !23, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !233, file: !39, line: 23, baseType: !40, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !233, file: !39, line: 24, baseType: !40, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !233, file: !39, line: 26, baseType: !23, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !233, file: !39, line: 27, baseType: !23, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !233, file: !39, line: 28, baseType: !38, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !233, file: !39, line: 29, baseType: !243, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !103, line: 23, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !246, line: 16, size: 1600, elements: !247)
!246 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!247 = !{!248, !249, !250, !288, !289, !290, !291, !292}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !245, file: !246, line: 17, baseType: !157, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !246, line: 18, baseType: !72, size: 128, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !245, file: !246, line: 19, baseType: !251, size: 1152, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !158, line: 17, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !253, line: 26, size: 1152, elements: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!254 = !{!255, !257, !259, !261, !263, !265, !267, !268, !269, !271, !273, !275, !282, !283, !284}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !252, file: !253, line: 31, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !27, line: 145, baseType: !15)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !252, file: !253, line: 36, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !27, line: 148, baseType: !15)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !252, file: !253, line: 44, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !27, line: 151, baseType: !15)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !252, file: !253, line: 45, baseType: !262, size: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !27, line: 150, baseType: !65)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !252, file: !253, line: 47, baseType: !264, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !27, line: 146, baseType: !65)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !252, file: !253, line: 48, baseType: !266, size: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !27, line: 147, baseType: !65)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !252, file: !253, line: 50, baseType: !159, size: 32, offset: 288)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !252, file: !253, line: 52, baseType: !256, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !252, file: !253, line: 57, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 152, baseType: !42)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !252, file: !253, line: 61, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !27, line: 175, baseType: !42)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !252, file: !253, line: 63, baseType: !274, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !27, line: 180, baseType: !42)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !252, file: !253, line: 74, baseType: !276, size: 128, offset: 576)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !277, line: 11, size: 128, elements: !278)
!277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !276, file: !277, line: 16, baseType: !172, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !276, file: !277, line: 21, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !27, line: 197, baseType: !42)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !252, file: !253, line: 75, baseType: !276, size: 128, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !252, file: !253, line: 76, baseType: !276, size: 128, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !252, file: !253, line: 89, baseType: !285, size: 192, offset: 960)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 192, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 3)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !245, file: !246, line: 21, baseType: !40, size: 64, offset: 1344)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !245, file: !246, line: 22, baseType: !40, size: 64, offset: 1408)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !245, file: !246, line: 24, baseType: !144, size: 64, offset: 1472)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !245, file: !246, line: 37, baseType: !65, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !245, file: !246, line: 38, baseType: !65, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !233, file: !39, line: 30, baseType: !231, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !233, file: !39, line: 34, baseType: !65, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !233, file: !39, line: 40, baseType: !65, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !233, file: !39, line: 43, baseType: !65, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !233, file: !39, line: 45, baseType: !65, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !233, file: !39, line: 46, baseType: !65, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !233, file: !39, line: 47, baseType: !65, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !233, file: !39, line: 48, baseType: !65, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !233, file: !39, line: 49, baseType: !65, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !233, file: !39, line: 50, baseType: !65, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !233, file: !39, line: 52, baseType: !65, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !233, file: !39, line: 53, baseType: !65, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !233, file: !39, line: 55, baseType: !159, size: 32, offset: 608)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !39, line: 61, baseType: !226, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !104, file: !105, line: 134, baseType: !308, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !213, line: 23, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!226, !101, !226, !40}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !104, file: !105, line: 136, baseType: !313, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !105, line: 16, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !105, line: 18, size: 2432, elements: !316)
!316 = !{!317, !318, !331, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !348, !349, !350, !351, !352, !353, !354, !355, !356, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !315, file: !105, line: 19, baseType: !209, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !315, file: !105, line: 21, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !321, line: 180, size: 128, elements: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !320, file: !321, line: 182, baseType: !324, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !325, line: 28, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!326 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !320, file: !321, line: 183, baseType: !328, size: 112, offset: 16)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 14)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !315, file: !105, line: 22, baseType: !332, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !87, line: 274, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !27, line: 210, baseType: !65)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !315, file: !105, line: 23, baseType: !21, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !315, file: !105, line: 24, baseType: !72, size: 128, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !315, file: !105, line: 26, baseType: !159, size: 32, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !315, file: !105, line: 28, baseType: !159, size: 32, offset: 416)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !315, file: !105, line: 29, baseType: !159, size: 32, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !315, file: !105, line: 30, baseType: !159, size: 32, offset: 480)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !315, file: !105, line: 32, baseType: !159, size: 32, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !315, file: !105, line: 33, baseType: !159, size: 32, offset: 544)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !315, file: !105, line: 34, baseType: !159, size: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !315, file: !105, line: 38, baseType: !344, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !103, line: 33, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !101}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !315, file: !105, line: 40, baseType: !16, size: 64, offset: 704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !315, file: !105, line: 42, baseType: !145, size: 640, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !315, file: !105, line: 43, baseType: !144, size: 64, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !315, file: !105, line: 45, baseType: !21, size: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !315, file: !105, line: 47, baseType: !21, size: 64, offset: 1536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !315, file: !105, line: 49, baseType: !17, size: 64, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !315, file: !105, line: 51, baseType: !313, size: 64, offset: 1664)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !315, file: !105, line: 52, baseType: !101, size: 64, offset: 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !315, file: !105, line: 54, baseType: !357, size: 192, offset: 1792)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !20, line: 32, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !20, line: 37, size: 192, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !358, file: !20, line: 38, baseType: !194, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !358, file: !20, line: 39, baseType: !194, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !358, file: !20, line: 40, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !20, line: 34, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !194, !194, !194}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !315, file: !105, line: 55, baseType: !189, size: 320, offset: 1984)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !315, file: !105, line: 57, baseType: !11, size: 64, offset: 2304)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !315, file: !105, line: 59, baseType: !65, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !315, file: !105, line: 60, baseType: !65, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !315, file: !105, line: 61, baseType: !65, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !315, file: !105, line: 63, baseType: !65, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !315, file: !105, line: 64, baseType: !65, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !315, file: !105, line: 65, baseType: !65, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !315, file: !105, line: 66, baseType: !65, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !315, file: !105, line: 67, baseType: !65, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !315, file: !105, line: 68, baseType: !65, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !315, file: !105, line: 69, baseType: !65, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !315, file: !105, line: 70, baseType: !65, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !315, file: !105, line: 73, baseType: !65, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !315, file: !105, line: 75, baseType: !65, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !315, file: !105, line: 76, baseType: !65, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !315, file: !105, line: 77, baseType: !65, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !315, file: !105, line: 79, baseType: !65, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !315, file: !105, line: 80, baseType: !65, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !315, file: !105, line: 81, baseType: !65, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !315, file: !105, line: 90, baseType: !159, size: 32, offset: 2400)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !104, file: !105, line: 138, baseType: !40, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !104, file: !105, line: 140, baseType: !144, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !104, file: !105, line: 142, baseType: !391, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !103, line: 18, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !394, line: 57, size: 640, elements: !395)
!394 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!395 = !{!396, !404, !405, !406, !407, !414, !426}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !393, file: !394, line: 58, baseType: !397, size: 256)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !394, line: 54, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 49, size: 256, elements: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !398, file: !394, line: 50, baseType: !23, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !398, file: !394, line: 51, baseType: !23, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !394, line: 52, baseType: !391, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !398, file: !394, line: 53, baseType: !11, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !393, file: !394, line: 59, baseType: !21, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !393, file: !394, line: 60, baseType: !391, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !393, file: !394, line: 61, baseType: !226, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !393, file: !394, line: 62, baseType: !408, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !394, line: 41, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !394, line: 43, size: 128, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !394, line: 44, baseType: !408, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !410, file: !394, line: 45, baseType: !16, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !393, file: !394, line: 63, baseType: !415, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !394, line: 32, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !394, line: 34, size: 192, elements: !418)
!418 = !{!419, !424, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !417, file: !394, line: 35, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !394, line: 30, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !16}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !417, file: !394, line: 36, baseType: !16, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !394, line: 37, baseType: !415, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !393, file: !394, line: 64, baseType: !144, size: 64, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !105, line: 144, baseType: !159, size: 32, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !104, file: !105, line: 146, baseType: !319, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !104, file: !105, line: 147, baseType: !332, size: 32, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !104, file: !105, line: 148, baseType: !72, size: 128, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !104, file: !105, line: 150, baseType: !72, size: 128, offset: 1088)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !104, file: !105, line: 151, baseType: !433, size: 16, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !434, line: 123, baseType: !435)
!434 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !27, line: 40, baseType: !326)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !104, file: !105, line: 154, baseType: !438, size: 64, offset: 1280)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !103, line: 29, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !441, line: 74, size: 704, elements: !442)
!441 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!442 = !{!443, !448, !452, !453, !454, !455, !456, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !440, file: !441, line: 75, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !446, line: 184, baseType: !447)
!446 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !446, line: 184, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !440, file: !441, line: 76, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !446, line: 185, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !446, line: 185, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !440, file: !441, line: 78, baseType: !85, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !440, file: !441, line: 79, baseType: !231, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !440, file: !441, line: 80, baseType: !21, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !440, file: !441, line: 82, baseType: !344, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !440, file: !441, line: 84, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !459, line: 231, baseType: !460)
!459 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !459, line: 231, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !440, file: !441, line: 85, baseType: !344, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !440, file: !441, line: 87, baseType: !138, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !440, file: !441, line: 88, baseType: !138, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !440, file: !441, line: 90, baseType: !24, size: 8, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !440, file: !441, line: 92, baseType: !65, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !440, file: !441, line: 93, baseType: !65, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !440, file: !441, line: 94, baseType: !65, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !440, file: !441, line: 95, baseType: !65, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !440, file: !441, line: 96, baseType: !65, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !440, file: !441, line: 97, baseType: !65, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !440, file: !441, line: 98, baseType: !65, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !440, file: !441, line: 99, baseType: !65, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !440, file: !441, line: 100, baseType: !65, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !440, file: !441, line: 101, baseType: !65, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !104, file: !105, line: 157, baseType: !476, size: 64, offset: 1344)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !103, line: 30, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !103, line: 30, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !104, file: !105, line: 159, baseType: !319, size: 64, offset: 1408)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !104, file: !105, line: 160, baseType: !332, size: 32, offset: 1472)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !104, file: !105, line: 162, baseType: !231, size: 64, offset: 1536)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !104, file: !105, line: 164, baseType: !200, size: 128, offset: 1600)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !104, file: !105, line: 166, baseType: !167, size: 64, offset: 1728)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !104, file: !105, line: 168, baseType: !11, size: 64, offset: 1792)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !104, file: !105, line: 170, baseType: !65, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !104, file: !105, line: 172, baseType: !65, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !104, file: !105, line: 174, baseType: !65, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !104, file: !105, line: 175, baseType: !65, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !104, file: !105, line: 176, baseType: !65, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !104, file: !105, line: 178, baseType: !65, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !104, file: !105, line: 179, baseType: !65, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !104, file: !105, line: 180, baseType: !65, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !104, file: !105, line: 181, baseType: !65, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !104, file: !105, line: 183, baseType: !65, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !104, file: !105, line: 184, baseType: !65, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !104, file: !105, line: 185, baseType: !65, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !104, file: !105, line: 186, baseType: !65, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !104, file: !105, line: 188, baseType: !65, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !93, file: !94, line: 376, baseType: !35, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !93, file: !94, line: 377, baseType: !35, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !93, file: !94, line: 378, baseType: !35, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !93, file: !94, line: 379, baseType: !35, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !93, file: !94, line: 381, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !94, line: 368, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !90}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !93, file: !94, line: 382, baseType: !504, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !93, file: !94, line: 385, baseType: !510, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !92, line: 18, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !513, line: 65, size: 4800, elements: !514)
!513 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!514 = !{!515, !516, !526, !527, !531, !532, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !693, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !512, file: !513, line: 66, baseType: !244, size: 1600)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !512, file: !513, line: 67, baseType: !517, size: 320, offset: 1600)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !518, line: 22, baseType: !519)
!518 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 16, size: 320, elements: !520)
!520 = !{!521, !522, !523, !524, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !519, file: !518, line: 17, baseType: !16, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !519, file: !518, line: 18, baseType: !11, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !518, line: 19, baseType: !21, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !519, file: !518, line: 20, baseType: !11, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !519, file: !518, line: 21, baseType: !391, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !512, file: !513, line: 68, baseType: !97, size: 32, offset: 1920)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !512, file: !513, line: 69, baseType: !528, size: 128, offset: 1952)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 16)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !512, file: !513, line: 70, baseType: !528, size: 128, offset: 2080)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !512, file: !513, line: 72, baseType: !533, size: 64, offset: 2240)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !158, line: 18, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !25, line: 49, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !27, line: 149, baseType: !15)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !512, file: !513, line: 73, baseType: !170, size: 64, offset: 2304)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !512, file: !513, line: 74, baseType: !170, size: 64, offset: 2368)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !512, file: !513, line: 75, baseType: !170, size: 64, offset: 2432)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !512, file: !513, line: 76, baseType: !170, size: 64, offset: 2496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !512, file: !513, line: 77, baseType: !170, size: 64, offset: 2560)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !512, file: !513, line: 79, baseType: !72, size: 128, offset: 2624)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !512, file: !513, line: 80, baseType: !72, size: 128, offset: 2752)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !512, file: !513, line: 81, baseType: !528, size: 128, offset: 2880)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !512, file: !513, line: 83, baseType: !21, size: 64, offset: 3008)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !512, file: !513, line: 84, baseType: !21, size: 64, offset: 3072)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !512, file: !513, line: 85, baseType: !40, size: 64, offset: 3136)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !512, file: !513, line: 86, baseType: !40, size: 64, offset: 3200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !512, file: !513, line: 88, baseType: !11, size: 64, offset: 3264)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !512, file: !513, line: 89, baseType: !11, size: 64, offset: 3328)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !512, file: !513, line: 90, baseType: !11, size: 64, offset: 3392)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !512, file: !513, line: 91, baseType: !11, size: 64, offset: 3456)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !512, file: !513, line: 93, baseType: !231, size: 64, offset: 3520)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !512, file: !513, line: 95, baseType: !554, size: 64, offset: 3584)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !92, line: 19, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !513, line: 157, size: 1088, elements: !557)
!557 = !{!558, !573, !634, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !692}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !556, file: !513, line: 158, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !513, line: 154, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 145, size: 960, elements: !562)
!562 = !{!563, !564, !565, !566, !569, !570, !571, !572}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !561, file: !513, line: 146, baseType: !357, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !561, file: !513, line: 147, baseType: !189, size: 320, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !561, file: !513, line: 148, baseType: !200, size: 128, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !561, file: !513, line: 149, baseType: !567, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !168, line: 106, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !167)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !561, file: !513, line: 150, baseType: !567, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !513, line: 151, baseType: !40, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !561, file: !513, line: 152, baseType: !11, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !561, file: !513, line: 153, baseType: !11, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !556, file: !513, line: 159, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !576, line: 59, baseType: !577)
!576 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 34, size: 1600, elements: !578)
!578 = !{!579, !586, !587, !588, !596, !597, !598, !607, !608, !609, !610, !629, !630, !631, !632, !633}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !576, line: 35, baseType: !580, size: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !581, line: 21, baseType: !582)
!581 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 16, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !582, file: !581, line: 17, baseType: !567, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !582, file: !581, line: 19, baseType: !567, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !577, file: !576, line: 37, baseType: !21, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !577, file: !576, line: 38, baseType: !21, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !577, file: !576, line: 40, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !576, line: 16, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !576, line: 18, size: 192, elements: !592)
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !591, file: !576, line: 19, baseType: !13, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !576, line: 20, baseType: !589, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !591, file: !576, line: 21, baseType: !13, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !577, file: !576, line: 41, baseType: !589, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !577, file: !576, line: 42, baseType: !590, size: 192, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !577, file: !576, line: 44, baseType: !599, size: 64, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !576, line: 31, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 25, size: 256, elements: !602)
!602 = !{!603, !604, !605, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !601, file: !576, line: 26, baseType: !11, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !601, file: !576, line: 27, baseType: !11, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !601, file: !576, line: 29, baseType: !11, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !601, file: !576, line: 30, baseType: !11, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !577, file: !576, line: 45, baseType: !11, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !577, file: !576, line: 47, baseType: !23, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !577, file: !576, line: 48, baseType: !23, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !577, file: !576, line: 50, baseType: !611, size: 512, offset: 832)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !581, line: 37, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 24, size: 512, elements: !613)
!613 = !{!614, !616, !617, !618, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !581, line: 26, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !612, file: !581, line: 28, baseType: !615, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !612, file: !581, line: 29, baseType: !11, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !612, file: !581, line: 30, baseType: !619, size: 256, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !620, line: 39, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !620, line: 35, size: 256, elements: !622)
!622 = !{!623, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !621, file: !620, line: 37, baseType: !624, size: 256)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !621, file: !620, line: 38, baseType: !42, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !612, file: !581, line: 36, baseType: !11, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !577, file: !576, line: 52, baseType: !23, size: 64, offset: 1344)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !577, file: !576, line: 53, baseType: !24, size: 8, offset: 1408)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !577, file: !576, line: 55, baseType: !65, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !577, file: !576, line: 57, baseType: !16, size: 64, offset: 1472)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !577, file: !576, line: 58, baseType: !16, size: 64, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !556, file: !513, line: 161, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !246, line: 62, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 50, size: 768, elements: !638)
!638 = !{!639, !640, !641, !643, !648, !650, !652, !653, !654}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !246, line: 51, baseType: !72, size: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !637, file: !246, line: 52, baseType: !21, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !637, file: !246, line: 53, baseType: !642, size: 192, offset: 192)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !286)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !637, file: !246, line: 55, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !246, line: 45, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!17, !16}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !637, file: !246, line: 56, baseType: !649, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !246, line: 46, baseType: !645)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !637, file: !246, line: 57, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !246, line: 47, baseType: !421)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !637, file: !246, line: 58, baseType: !16, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !637, file: !246, line: 60, baseType: !23, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !637, file: !246, line: 61, baseType: !11, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !556, file: !513, line: 163, baseType: !40, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !556, file: !513, line: 164, baseType: !21, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !556, file: !513, line: 166, baseType: !170, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !556, file: !513, line: 168, baseType: !170, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !556, file: !513, line: 170, baseType: !11, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !556, file: !513, line: 171, baseType: !11, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !556, file: !513, line: 172, baseType: !17, size: 64, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !556, file: !513, line: 173, baseType: !17, size: 64, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !556, file: !513, line: 174, baseType: !17, size: 64, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !556, file: !513, line: 176, baseType: !11, size: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !556, file: !513, line: 177, baseType: !17, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !556, file: !513, line: 178, baseType: !17, size: 64, offset: 896)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !556, file: !513, line: 180, baseType: !668, size: 64, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !670, line: 31, baseType: !671)
!670 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !670, line: 37, size: 704, elements: !672)
!672 = !{!673, !674, !684, !689, !690, !691}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !671, file: !670, line: 38, baseType: !16, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !671, file: !670, line: 39, baseType: !675, size: 384, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !676, line: 22, baseType: !677)
!676 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 16, size: 384, elements: !678)
!678 = !{!679, !680, !681, !682, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !677, file: !676, line: 17, baseType: !23, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !677, file: !676, line: 18, baseType: !21, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !677, file: !676, line: 19, baseType: !72, size: 128, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !677, file: !676, line: 20, baseType: !144, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !677, file: !676, line: 21, baseType: !11, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !671, file: !670, line: 40, baseType: !685, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !670, line: 33, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!85, !668, !16}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !671, file: !670, line: 41, baseType: !16, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !671, file: !670, line: 42, baseType: !16, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !671, file: !670, line: 43, baseType: !11, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !556, file: !513, line: 182, baseType: !11, size: 64, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !513, line: 96, baseType: !694, size: 64, offset: 3648)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !513, line: 62, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 39, size: 960, elements: !697)
!697 = !{!698, !699, !700, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !513, line: 40, baseType: !189, size: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !696, file: !513, line: 41, baseType: !200, size: 128, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !696, file: !513, line: 43, baseType: !701, size: 64, offset: 448)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 8)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !696, file: !513, line: 46, baseType: !65, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !696, file: !513, line: 47, baseType: !65, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !696, file: !513, line: 48, baseType: !65, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !696, file: !513, line: 49, baseType: !65, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !696, file: !513, line: 50, baseType: !65, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !696, file: !513, line: 51, baseType: !65, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !696, file: !513, line: 52, baseType: !65, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !696, file: !513, line: 53, baseType: !65, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !696, file: !513, line: 56, baseType: !533, size: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !696, file: !513, line: 57, baseType: !170, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !696, file: !513, line: 58, baseType: !170, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !696, file: !513, line: 59, baseType: !21, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !696, file: !513, line: 60, baseType: !40, size: 64, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !696, file: !513, line: 61, baseType: !17, size: 64, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !512, file: !513, line: 102, baseType: !17, size: 64, offset: 3712)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !512, file: !513, line: 103, baseType: !17, size: 64, offset: 3776)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !512, file: !513, line: 104, baseType: !17, size: 64, offset: 3840)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !512, file: !513, line: 105, baseType: !17, size: 64, offset: 3904)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !512, file: !513, line: 107, baseType: !110, size: 768, offset: 3968)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !512, file: !513, line: 109, baseType: !65, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !512, file: !513, line: 110, baseType: !65, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !512, file: !513, line: 112, baseType: !65, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !512, file: !513, line: 113, baseType: !65, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !512, file: !513, line: 114, baseType: !65, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !512, file: !513, line: 115, baseType: !65, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !512, file: !513, line: 116, baseType: !65, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !512, file: !513, line: 117, baseType: !65, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !512, file: !513, line: 118, baseType: !65, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !512, file: !513, line: 119, baseType: !65, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !512, file: !513, line: 121, baseType: !65, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !512, file: !513, line: 122, baseType: !65, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !93, file: !94, line: 388, baseType: !736, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !92, line: 17, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !739, line: 319, size: 8960, elements: !740)
!739 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!740 = !{!741, !746, !747, !796, !875, !876, !898, !907, !1189, !1190, !1191, !1192, !1193, !1194, !1234, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1415, !1419, !1420, !1424, !1425, !1426, !1427, !1428, !1432, !1436, !1440, !1441, !1455, !1456, !1457, !1458, !1459, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !738, file: !739, line: 320, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !739, line: 315, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !90, !736}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !738, file: !739, line: 321, baseType: !742, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !738, file: !739, line: 323, baseType: !748, size: 1024, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !749, line: 22, baseType: !750)
!749 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !749, line: 36, size: 1024, elements: !751)
!751 = !{!752, !753, !754, !755, !757, !758, !759, !765, !770, !772, !773, !775, !780, !789, !790, !791, !792, !793, !794, !795}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !750, file: !749, line: 37, baseType: !101, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !750, file: !749, line: 39, baseType: !319, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !750, file: !749, line: 40, baseType: !332, size: 32, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !750, file: !749, line: 41, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !750, file: !749, line: 43, baseType: !11, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !750, file: !749, line: 44, baseType: !17, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !750, file: !749, line: 46, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !749, line: 24, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!85, !764, !16}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !750, file: !749, line: 47, baseType: !766, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !749, line: 26, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !764, !16, !11}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !750, file: !749, line: 48, baseType: !771, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !749, line: 28, baseType: !767)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !750, file: !749, line: 49, baseType: !16, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !750, file: !749, line: 52, baseType: !774, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !749, line: 30, baseType: !761)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !750, file: !749, line: 53, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !749, line: 32, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !764, !16}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !750, file: !749, line: 56, baseType: !781, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !783, line: 78, baseType: !784)
!783 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !783, line: 74, size: 256, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !784, file: !783, line: 75, baseType: !319, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !784, file: !783, line: 76, baseType: !332, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !784, file: !783, line: 77, baseType: !72, size: 128, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !749, line: 58, baseType: !159, size: 32, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !750, file: !749, line: 59, baseType: !159, size: 32, offset: 864)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !750, file: !749, line: 61, baseType: !144, size: 64, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !750, file: !749, line: 63, baseType: !65, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !750, file: !749, line: 64, baseType: !65, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !750, file: !749, line: 65, baseType: !65, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !750, file: !749, line: 68, baseType: !65, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !738, file: !739, line: 325, baseType: !797, size: 64, offset: 1152)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !799, line: 17, baseType: !800)
!799 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !799, line: 25, size: 2240, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !808, !809, !810, !811, !812, !817, !818, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !874}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !800, file: !799, line: 26, baseType: !101, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !800, file: !799, line: 27, baseType: !101, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !800, file: !799, line: 29, baseType: !226, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !800, file: !799, line: 30, baseType: !226, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !800, file: !799, line: 31, baseType: !807, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !800, file: !799, line: 33, baseType: !226, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !800, file: !799, line: 35, baseType: !226, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !800, file: !799, line: 36, baseType: !226, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !800, file: !799, line: 37, baseType: !226, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !800, file: !799, line: 44, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !799, line: 19, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!85, !797, !231}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !800, file: !799, line: 45, baseType: !16, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !800, file: !799, line: 47, baseType: !819, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !799, line: 21, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!85, !16, !226}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !800, file: !799, line: 48, baseType: !16, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !800, file: !799, line: 57, baseType: !65, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !800, file: !799, line: 58, baseType: !65, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !800, file: !799, line: 59, baseType: !65, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !800, file: !799, line: 60, baseType: !65, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !800, file: !799, line: 61, baseType: !65, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !800, file: !799, line: 62, baseType: !65, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !800, file: !799, line: 63, baseType: !65, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !800, file: !799, line: 64, baseType: !65, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !800, file: !799, line: 65, baseType: !65, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !800, file: !799, line: 66, baseType: !65, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !800, file: !799, line: 67, baseType: !65, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !800, file: !799, line: 68, baseType: !65, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !800, file: !799, line: 70, baseType: !85, size: 64, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !800, file: !799, line: 71, baseType: !838, size: 128, offset: 960)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !39, line: 68, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 65, size: 128, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !839, file: !39, line: 66, baseType: !85, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !839, file: !39, line: 67, baseType: !21, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !800, file: !799, line: 72, baseType: !38, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !800, file: !799, line: 74, baseType: !217, size: 64, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !800, file: !799, line: 76, baseType: !40, size: 64, offset: 1216)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !800, file: !799, line: 77, baseType: !40, size: 64, offset: 1280)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !800, file: !799, line: 79, baseType: !40, size: 64, offset: 1344)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !800, file: !799, line: 80, baseType: !217, size: 64, offset: 1408)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !800, file: !799, line: 82, baseType: !17, size: 64, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !800, file: !799, line: 83, baseType: !17, size: 64, offset: 1536)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !800, file: !799, line: 84, baseType: !217, size: 64, offset: 1600)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !800, file: !799, line: 86, baseType: !391, size: 64, offset: 1664)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !800, file: !799, line: 87, baseType: !144, size: 64, offset: 1728)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !800, file: !799, line: 89, baseType: !226, size: 64, offset: 1792)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !800, file: !799, line: 90, baseType: !21, size: 64, offset: 1856)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !800, file: !799, line: 91, baseType: !231, size: 64, offset: 1920)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !800, file: !799, line: 93, baseType: !21, size: 64, offset: 1984)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !800, file: !799, line: 94, baseType: !170, size: 64, offset: 2048)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !800, file: !799, line: 96, baseType: !860, size: 64, offset: 2112)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !246, line: 84, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 71, size: 1984, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !862, file: !246, line: 72, baseType: !244, size: 1600)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !862, file: !246, line: 73, baseType: !40, size: 64, offset: 1600)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !862, file: !246, line: 74, baseType: !635, size: 64, offset: 1664)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !862, file: !246, line: 75, baseType: !391, size: 64, offset: 1728)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !862, file: !246, line: 76, baseType: !186, size: 64, offset: 1792)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !862, file: !246, line: 78, baseType: !11, size: 64, offset: 1856)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !862, file: !246, line: 80, baseType: !65, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !862, file: !246, line: 81, baseType: !65, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !862, file: !246, line: 82, baseType: !65, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !862, file: !246, line: 83, baseType: !65, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !800, file: !799, line: 98, baseType: !159, size: 32, offset: 2176)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !738, file: !739, line: 327, baseType: !226, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !738, file: !739, line: 329, baseType: !877, size: 832, offset: 1280)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !39, line: 71, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !39, line: 78, size: 832, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !897}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !878, file: !39, line: 79, baseType: !231, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !878, file: !39, line: 80, baseType: !226, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !878, file: !39, line: 81, baseType: !226, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !878, file: !39, line: 82, baseType: !226, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !878, file: !39, line: 84, baseType: !65, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !878, file: !39, line: 85, baseType: !65, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !878, file: !39, line: 86, baseType: !65, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !878, file: !39, line: 87, baseType: !65, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !878, file: !39, line: 88, baseType: !65, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !878, file: !39, line: 89, baseType: !65, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !878, file: !39, line: 104, baseType: !40, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !878, file: !39, line: 106, baseType: !391, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !878, file: !39, line: 107, baseType: !85, size: 64, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !878, file: !39, line: 108, baseType: !838, size: 128, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !878, file: !39, line: 109, baseType: !38, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !878, file: !39, line: 111, baseType: !896, size: 64, offset: 704)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !39, line: 73, baseType: !820)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !878, file: !39, line: 112, baseType: !16, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !738, file: !739, line: 330, baseType: !899, size: 320, offset: 2112)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !39, line: 122, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 116, size: 320, elements: !901)
!901 = !{!902, !903, !904, !905, !906}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !900, file: !39, line: 117, baseType: !226, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !900, file: !39, line: 118, baseType: !807, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !900, file: !39, line: 119, baseType: !101, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !900, file: !39, line: 120, baseType: !391, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !900, file: !39, line: 121, baseType: !40, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !738, file: !739, line: 332, baseType: !908, size: 64, offset: 2432)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !739, line: 243, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 149, size: 3904, elements: !911)
!911 = !{!912, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1132, !1133, !1134, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1184, !1185, !1186, !1187, !1188}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !910, file: !739, line: 150, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !739, line: 79, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !739, line: 121, size: 832, elements: !916)
!916 = !{!917, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !915, file: !739, line: 122, baseType: !918, size: 192)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !739, line: 91, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 87, size: 192, elements: !920)
!920 = !{!921, !1069, !1074}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !919, file: !739, line: 88, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !739, line: 81, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!85, !926, !913}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !103, line: 16, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !154, line: 116, size: 768, elements: !929)
!929 = !{!930, !931, !933, !1051, !1052, !1053, !1062, !1063, !1064, !1065, !1066, !1068}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !928, file: !154, line: 117, baseType: !186, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !928, file: !154, line: 118, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !928, file: !154, line: 120, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !103, line: 17, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !670, line: 47, size: 5184, elements: !937)
!937 = !{!938, !941, !942, !943, !944, !945, !947, !948, !949, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1049, !1050}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !936, file: !670, line: 48, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !936, file: !670, line: 49, baseType: !391, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !936, file: !670, line: 51, baseType: !144, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !936, file: !670, line: 52, baseType: !145, size: 640, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !936, file: !670, line: 54, baseType: !11, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !936, file: !670, line: 56, baseType: !946, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !936, file: !670, line: 57, baseType: !101, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !936, file: !670, line: 58, baseType: !11, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !936, file: !670, line: 60, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !103, line: 15, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !954, line: 222, size: 1600, elements: !955)
!954 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!955 = !{!956, !957, !958, !959, !960, !961, !962, !965, !966, !980, !981, !985, !989, !990, !991, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !953, file: !954, line: 223, baseType: !11, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !953, file: !954, line: 224, baseType: !11, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !953, file: !954, line: 226, baseType: !186, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !953, file: !954, line: 228, baseType: !11, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !953, file: !954, line: 229, baseType: !11, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !953, file: !954, line: 231, baseType: !11, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !953, file: !954, line: 232, baseType: !963, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !953, file: !954, line: 234, baseType: !16, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !953, file: !954, line: 235, baseType: !967, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !103, line: 22, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !154, line: 77, size: 448, elements: !970)
!970 = !{!971, !972, !973, !977, !978, !979}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !969, file: !154, line: 78, baseType: !72, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !969, file: !154, line: 79, baseType: !11, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !969, file: !154, line: 80, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!186, !926, !967, !16}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !969, file: !154, line: 81, baseType: !11, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !969, file: !154, line: 82, baseType: !11, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !969, file: !154, line: 83, baseType: !16, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !953, file: !954, line: 236, baseType: !11, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !953, file: !954, line: 238, baseType: !982, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!85, !144}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !953, file: !954, line: 240, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!85, !934}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !953, file: !954, line: 242, baseType: !986, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !953, file: !954, line: 243, baseType: !986, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !953, file: !954, line: 244, baseType: !992, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !934}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !953, file: !954, line: 245, baseType: !992, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !953, file: !954, line: 247, baseType: !992, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !953, file: !954, line: 249, baseType: !13, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !953, file: !954, line: 250, baseType: !13, size: 64, offset: 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !953, file: !954, line: 251, baseType: !13, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !953, file: !954, line: 252, baseType: !13, size: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !953, file: !954, line: 253, baseType: !13, size: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !953, file: !954, line: 254, baseType: !13, size: 64, offset: 1408)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !953, file: !954, line: 255, baseType: !13, size: 64, offset: 1472)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !953, file: !954, line: 256, baseType: !13, size: 64, offset: 1536)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !936, file: !670, line: 61, baseType: !11, size: 64, offset: 1152)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !936, file: !670, line: 62, baseType: !11, size: 64, offset: 1216)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !936, file: !670, line: 64, baseType: !200, size: 128, offset: 1280)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !936, file: !670, line: 65, baseType: !11, size: 64, offset: 1408)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !936, file: !670, line: 67, baseType: !517, size: 320, offset: 1472)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !936, file: !670, line: 68, baseType: !517, size: 320, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !936, file: !670, line: 70, baseType: !517, size: 320, offset: 2112)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !936, file: !670, line: 71, baseType: !357, size: 192, offset: 2432)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !936, file: !670, line: 72, baseType: !189, size: 320, offset: 2624)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !936, file: !670, line: 74, baseType: !1015, size: 448, offset: 2944)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !1016, line: 31, baseType: !1017)
!1016 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 25, size: 448, elements: !1018)
!1018 = !{!1019, !1027, !1028, !1029, !1030}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1017, file: !1016, line: 26, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !1016, line: 16, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !1016, line: 18, size: 192, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1022, file: !1016, line: 19, baseType: !16, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !1022, file: !1016, line: 20, baseType: !11, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !1016, line: 21, baseType: !1020, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1017, file: !1016, line: 27, baseType: !1021, size: 192, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !1016, line: 28, baseType: !21, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !1017, file: !1016, line: 29, baseType: !11, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1017, file: !1016, line: 30, baseType: !391, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !936, file: !670, line: 75, baseType: !1015, size: 448, offset: 3392)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !936, file: !670, line: 77, baseType: !11, size: 64, offset: 3840)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !936, file: !670, line: 78, baseType: !11, size: 64, offset: 3904)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !936, file: !670, line: 80, baseType: !101, size: 64, offset: 3968)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !936, file: !670, line: 81, baseType: !109, size: 64, offset: 4032)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !936, file: !670, line: 82, baseType: !109, size: 64, offset: 4096)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !936, file: !670, line: 84, baseType: !934, size: 64, offset: 4160)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !936, file: !670, line: 86, baseType: !72, size: 128, offset: 4224)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !936, file: !670, line: 87, baseType: !72, size: 128, offset: 4352)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !936, file: !670, line: 88, baseType: !72, size: 128, offset: 4480)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !936, file: !670, line: 89, baseType: !72, size: 128, offset: 4608)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !936, file: !670, line: 90, baseType: !72, size: 128, offset: 4736)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !936, file: !670, line: 91, baseType: !72, size: 128, offset: 4864)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !936, file: !670, line: 93, baseType: !1045, size: 64, offset: 4992)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !670, line: 34, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!85, !144, !11, !23, !21}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !936, file: !670, line: 94, baseType: !16, size: 64, offset: 5056)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !936, file: !670, line: 95, baseType: !65, size: 32, offset: 5120)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !928, file: !154, line: 121, baseType: !391, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !928, file: !154, line: 122, baseType: !391, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !928, file: !154, line: 123, baseType: !1054, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !154, line: 103, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 98, size: 1792, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1056, file: !154, line: 99, baseType: !244, size: 1600)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1056, file: !154, line: 100, baseType: !231, size: 64, offset: 1600)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1056, file: !154, line: 101, baseType: !231, size: 64, offset: 1664)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1056, file: !154, line: 102, baseType: !11, size: 64, offset: 1728)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !928, file: !154, line: 124, baseType: !144, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !928, file: !154, line: 126, baseType: !16, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !928, file: !154, line: 127, baseType: !11, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !928, file: !154, line: 128, baseType: !11, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !928, file: !154, line: 130, baseType: !1067, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !154, line: 112, baseType: !974)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !928, file: !154, line: 131, baseType: !16, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !919, file: !739, line: 89, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !739, line: 83, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!85, !90, !913}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !919, file: !739, line: 90, baseType: !16, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !915, file: !739, line: 123, baseType: !35, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !915, file: !739, line: 125, baseType: !932, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !739, line: 127, baseType: !11, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !915, file: !739, line: 128, baseType: !72, size: 128, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !915, file: !739, line: 129, baseType: !23, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !915, file: !739, line: 130, baseType: !11, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !915, file: !739, line: 131, baseType: !433, size: 16, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !915, file: !739, line: 132, baseType: !11, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !915, file: !739, line: 135, baseType: !668, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !910, file: !739, line: 152, baseType: !17, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !910, file: !739, line: 153, baseType: !17, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !910, file: !739, line: 154, baseType: !17, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !910, file: !739, line: 155, baseType: !17, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !910, file: !739, line: 157, baseType: !21, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !910, file: !739, line: 158, baseType: !21, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !910, file: !739, line: 159, baseType: !21, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !910, file: !739, line: 161, baseType: !21, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !910, file: !739, line: 162, baseType: !21, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !910, file: !739, line: 163, baseType: !21, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !910, file: !739, line: 165, baseType: !21, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !910, file: !739, line: 166, baseType: !21, size: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !910, file: !739, line: 167, baseType: !21, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !910, file: !739, line: 169, baseType: !838, size: 128, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !910, file: !739, line: 171, baseType: !11, size: 64, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !910, file: !739, line: 172, baseType: !11, size: 64, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !910, file: !739, line: 173, baseType: !11, size: 64, offset: 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !910, file: !739, line: 174, baseType: !11, size: 64, offset: 1216)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !910, file: !739, line: 175, baseType: !1103, size: 64, offset: 1280)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !12, line: 80, baseType: !86)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !910, file: !739, line: 176, baseType: !1103, size: 64, offset: 1344)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !910, file: !739, line: 177, baseType: !1103, size: 64, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !910, file: !739, line: 178, baseType: !1103, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !910, file: !739, line: 180, baseType: !1103, size: 64, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !910, file: !739, line: 181, baseType: !1103, size: 64, offset: 1600)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !910, file: !739, line: 182, baseType: !1103, size: 64, offset: 1664)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !910, file: !739, line: 183, baseType: !1103, size: 64, offset: 1728)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !910, file: !739, line: 185, baseType: !635, size: 64, offset: 1792)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !910, file: !739, line: 187, baseType: !1113, size: 128, offset: 1856)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1114, line: 26, baseType: !1115)
!1114 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 23, size: 128, elements: !1116)
!1116 = !{!1117, !1131}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1115, file: !1114, line: 24, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1114, line: 20, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 16, size: 128, elements: !1122)
!1122 = !{!1123, !1124, !1127}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1121, file: !1114, line: 17, baseType: !16, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1121, file: !1114, line: 18, baseType: !1125, size: 16, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !25, line: 34, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !27, line: 32, baseType: !326)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1121, file: !1114, line: 19, baseType: !1128, size: 8, offset: 80)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 1)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1115, file: !1114, line: 25, baseType: !11, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !910, file: !739, line: 188, baseType: !932, size: 64, offset: 1984)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !910, file: !739, line: 189, baseType: !932, size: 64, offset: 2048)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !910, file: !739, line: 191, baseType: !1135, size: 64, offset: 2112)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !739, line: 146, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 140, size: 192, elements: !1138)
!1138 = !{!1139, !1140, !1150}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1137, file: !739, line: 141, baseType: !781, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1137, file: !739, line: 142, baseType: !1141, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !46, line: 71, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 66, size: 320, elements: !1144)
!1144 = !{!1145, !1146, !1148, !1149}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1143, file: !46, line: 67, baseType: !72, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1143, file: !46, line: 68, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1143, file: !46, line: 69, baseType: !16, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1143, file: !46, line: 70, baseType: !16, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1137, file: !739, line: 144, baseType: !11, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !910, file: !739, line: 192, baseType: !1103, size: 64, offset: 2176)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !910, file: !739, line: 195, baseType: !668, size: 64, offset: 2240)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !910, file: !739, line: 196, baseType: !1141, size: 64, offset: 2304)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !910, file: !739, line: 198, baseType: !11, size: 64, offset: 2368)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !910, file: !739, line: 199, baseType: !11, size: 64, offset: 2432)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !910, file: !739, line: 200, baseType: !11, size: 64, offset: 2496)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !910, file: !739, line: 202, baseType: !40, size: 64, offset: 2560)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !910, file: !739, line: 204, baseType: !1103, size: 64, offset: 2624)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !910, file: !739, line: 205, baseType: !17, size: 64, offset: 2688)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !910, file: !739, line: 206, baseType: !17, size: 64, offset: 2752)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !910, file: !739, line: 208, baseType: !1103, size: 64, offset: 2816)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !910, file: !739, line: 209, baseType: !1103, size: 64, offset: 2880)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !910, file: !739, line: 210, baseType: !1103, size: 64, offset: 2944)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !910, file: !739, line: 212, baseType: !932, size: 64, offset: 3008)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !910, file: !739, line: 213, baseType: !932, size: 64, offset: 3072)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !910, file: !739, line: 214, baseType: !932, size: 64, offset: 3136)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !910, file: !739, line: 215, baseType: !932, size: 64, offset: 3200)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !910, file: !739, line: 218, baseType: !932, size: 64, offset: 3264)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !910, file: !739, line: 219, baseType: !932, size: 64, offset: 3328)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !910, file: !739, line: 222, baseType: !159, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !910, file: !739, line: 224, baseType: !159, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !910, file: !739, line: 225, baseType: !65, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !910, file: !739, line: 226, baseType: !65, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !910, file: !739, line: 227, baseType: !65, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !910, file: !739, line: 228, baseType: !65, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !910, file: !739, line: 231, baseType: !1177, size: 64, offset: 3456)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !103, line: 28, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !441, line: 67, size: 192, elements: !1180)
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1179, file: !441, line: 68, baseType: !449, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1179, file: !441, line: 69, baseType: !144, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1179, file: !441, line: 70, baseType: !21, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !910, file: !739, line: 232, baseType: !1103, size: 64, offset: 3520)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !910, file: !739, line: 234, baseType: !1141, size: 64, offset: 3584)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !910, file: !739, line: 235, baseType: !1103, size: 64, offset: 3648)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !910, file: !739, line: 236, baseType: !1103, size: 64, offset: 3712)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !910, file: !739, line: 239, baseType: !72, size: 128, offset: 3776)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !738, file: !739, line: 333, baseType: !913, size: 64, offset: 2496)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !738, file: !739, line: 335, baseType: !932, size: 64, offset: 2560)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !738, file: !739, line: 339, baseType: !17, size: 64, offset: 2624)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !738, file: !739, line: 340, baseType: !17, size: 64, offset: 2688)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !738, file: !739, line: 341, baseType: !17, size: 64, offset: 2752)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !738, file: !739, line: 343, baseType: !1195, size: 3072, offset: 2816)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !739, line: 296, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 256, size: 3072, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1196, file: !739, line: 257, baseType: !1015, size: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1196, file: !739, line: 258, baseType: !1015, size: 448, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1196, file: !739, line: 260, baseType: !11, size: 64, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1196, file: !739, line: 261, baseType: !72, size: 128, offset: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1196, file: !739, line: 263, baseType: !1203, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1114, line: 97, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 92, size: 384, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1205, file: !1114, line: 93, baseType: !11, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1205, file: !1114, line: 94, baseType: !72, size: 128, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1205, file: !1114, line: 95, baseType: !72, size: 128, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1205, file: !1114, line: 96, baseType: !23, size: 64, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1196, file: !739, line: 264, baseType: !1203, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1196, file: !739, line: 265, baseType: !1203, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1196, file: !739, line: 266, baseType: !1203, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1196, file: !739, line: 268, baseType: !1203, size: 64, offset: 1344)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1196, file: !739, line: 269, baseType: !1203, size: 64, offset: 1408)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1196, file: !739, line: 270, baseType: !1203, size: 64, offset: 1472)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1196, file: !739, line: 271, baseType: !1203, size: 64, offset: 1536)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1196, file: !739, line: 272, baseType: !1203, size: 64, offset: 1600)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1196, file: !739, line: 274, baseType: !1203, size: 64, offset: 1664)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1196, file: !739, line: 275, baseType: !1203, size: 64, offset: 1728)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1196, file: !739, line: 277, baseType: !1203, size: 64, offset: 1792)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1196, file: !739, line: 278, baseType: !1203, size: 64, offset: 1856)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1196, file: !739, line: 279, baseType: !1203, size: 64, offset: 1920)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1196, file: !739, line: 280, baseType: !1203, size: 64, offset: 1984)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1196, file: !739, line: 281, baseType: !1203, size: 64, offset: 2048)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1196, file: !739, line: 282, baseType: !1203, size: 64, offset: 2112)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1196, file: !739, line: 285, baseType: !1203, size: 64, offset: 2176)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1196, file: !739, line: 288, baseType: !517, size: 320, offset: 2240)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1196, file: !739, line: 289, baseType: !517, size: 320, offset: 2560)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1196, file: !739, line: 291, baseType: !40, size: 64, offset: 2880)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1196, file: !739, line: 292, baseType: !170, size: 64, offset: 2944)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1196, file: !739, line: 294, baseType: !65, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1196, file: !739, line: 295, baseType: !65, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !739, line: 345, baseType: !1235, size: 64, offset: 5888)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !739, line: 312, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 299, size: 704, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1254, !1255, !1256, !1257}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1237, file: !739, line: 300, baseType: !72, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1237, file: !739, line: 301, baseType: !433, size: 16, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1237, file: !739, line: 302, baseType: !11, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1237, file: !739, line: 304, baseType: !11, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1237, file: !739, line: 305, baseType: !1244, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1246, line: 67, baseType: !1247)
!1246 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 61, size: 320, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1247, file: !1246, line: 62, baseType: !319, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1247, file: !1246, line: 63, baseType: !332, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1247, file: !1246, line: 64, baseType: !72, size: 128, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1247, file: !1246, line: 65, baseType: !1125, size: 16, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1247, file: !1246, line: 66, baseType: !1125, size: 16, offset: 272)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1237, file: !739, line: 307, baseType: !319, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1237, file: !739, line: 308, baseType: !332, size: 32, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1237, file: !739, line: 309, baseType: !72, size: 128, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1237, file: !739, line: 311, baseType: !1258, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1246, line: 56, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1246, line: 195, size: 1792, elements: !1261)
!1261 = !{!1262, !1263, !1296, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1378, !1379, !1380, !1393, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1260, file: !1246, line: 196, baseType: !1258, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1260, file: !1246, line: 197, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1246, line: 40, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1246, line: 148, size: 4096, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1266, file: !1246, line: 150, baseType: !109, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1266, file: !1246, line: 151, baseType: !16, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1266, file: !1246, line: 152, baseType: !144, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1266, file: !1246, line: 155, baseType: !85, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1266, file: !1246, line: 158, baseType: !517, size: 320, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1266, file: !1246, line: 159, baseType: !11, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1266, file: !1246, line: 161, baseType: !357, size: 192, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1266, file: !1246, line: 162, baseType: !189, size: 320, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1266, file: !1246, line: 164, baseType: !357, size: 192, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1266, file: !1246, line: 165, baseType: !189, size: 320, offset: 1344)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1266, file: !1246, line: 167, baseType: !357, size: 192, offset: 1664)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1266, file: !1246, line: 168, baseType: !189, size: 320, offset: 1856)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1266, file: !1246, line: 170, baseType: !200, size: 128, offset: 2176)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1266, file: !1246, line: 171, baseType: !200, size: 128, offset: 2304)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1266, file: !1246, line: 172, baseType: !200, size: 128, offset: 2432)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1266, file: !1246, line: 174, baseType: !200, size: 128, offset: 2560)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1266, file: !1246, line: 175, baseType: !200, size: 128, offset: 2688)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1266, file: !1246, line: 176, baseType: !200, size: 128, offset: 2816)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1266, file: !1246, line: 179, baseType: !11, size: 64, offset: 2944)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1266, file: !1246, line: 180, baseType: !357, size: 192, offset: 3008)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1266, file: !1246, line: 181, baseType: !189, size: 320, offset: 3200)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1266, file: !1246, line: 182, baseType: !200, size: 128, offset: 3520)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1266, file: !1246, line: 183, baseType: !200, size: 128, offset: 3648)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1266, file: !1246, line: 186, baseType: !170, size: 64, offset: 3776)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1266, file: !1246, line: 187, baseType: !170, size: 64, offset: 3840)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1266, file: !1246, line: 188, baseType: !170, size: 64, offset: 3904)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1266, file: !1246, line: 189, baseType: !170, size: 64, offset: 3968)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1266, file: !1246, line: 191, baseType: !11, size: 64, offset: 4032)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1260, file: !1246, line: 198, baseType: !1297, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1246, line: 145, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 92, size: 1472, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1320, !1321, !1322, !1323, !1324, !1341, !1342, !1343, !1344, !1345, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1299, file: !1246, line: 93, baseType: !189, size: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1299, file: !1246, line: 94, baseType: !200, size: 128, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1299, file: !1246, line: 97, baseType: !23, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1299, file: !1246, line: 101, baseType: !1305, size: 128, offset: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !434, line: 219, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1305, file: !434, line: 226, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !434, line: 221, size: 128, elements: !1309)
!1309 = !{!1310, !1314, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1308, file: !434, line: 223, baseType: !1311, size: 128)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 128, elements: !529)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !98, line: 24, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !28)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1308, file: !434, line: 224, baseType: !1315, size: 128)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 128, elements: !702)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1308, file: !434, line: 225, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 4)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1299, file: !1246, line: 104, baseType: !1125, size: 16, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1299, file: !1246, line: 105, baseType: !1125, size: 16, offset: 656)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1299, file: !1246, line: 107, baseType: !23, size: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1299, file: !1246, line: 109, baseType: !23, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1299, file: !1246, line: 117, baseType: !1325, size: 64, offset: 832)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1246, line: 112, size: 64, elements: !1326)
!1326 = !{!1327, !1329, !1331, !1332}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1325, file: !1246, line: 113, baseType: !1328, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !434, line: 30, baseType: !97)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1325, file: !1246, line: 114, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1325, file: !1246, line: 115, baseType: !23, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1325, file: !1246, line: 116, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1246, line: 75, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 70, size: 192, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1335, file: !1246, line: 71, baseType: !72, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1335, file: !1246, line: 72, baseType: !1125, size: 16, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1335, file: !1246, line: 73, baseType: !1125, size: 16, offset: 144)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1335, file: !1246, line: 74, baseType: !1125, size: 16, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1299, file: !1246, line: 119, baseType: !24, size: 8, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1299, file: !1246, line: 120, baseType: !1125, size: 16, offset: 912)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1299, file: !1246, line: 121, baseType: !1125, size: 16, offset: 928)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1299, file: !1246, line: 122, baseType: !1125, size: 16, offset: 944)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1299, file: !1246, line: 128, baseType: !1346, size: 128, offset: 960)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !1246, line: 125, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1346, file: !1246, line: 126, baseType: !1305, size: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1346, file: !1246, line: 127, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1299, file: !1246, line: 130, baseType: !1125, size: 16, offset: 1088)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1299, file: !1246, line: 133, baseType: !170, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1299, file: !1246, line: 134, baseType: !170, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1299, file: !1246, line: 135, baseType: !97, size: 32, offset: 1280)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1299, file: !1246, line: 137, baseType: !65, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1299, file: !1246, line: 139, baseType: !65, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1299, file: !1246, line: 142, baseType: !11, size: 64, offset: 1344)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1299, file: !1246, line: 144, baseType: !1258, size: 64, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1260, file: !1246, line: 201, baseType: !85, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1260, file: !1246, line: 203, baseType: !85, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1260, file: !1246, line: 204, baseType: !72, size: 128, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1260, file: !1246, line: 205, baseType: !72, size: 128, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1260, file: !1246, line: 207, baseType: !170, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1260, file: !1246, line: 208, baseType: !11, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1260, file: !1246, line: 209, baseType: !1244, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1260, file: !1246, line: 210, baseType: !1245, size: 320, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1260, file: !1246, line: 211, baseType: !1368, size: 128, offset: 1088)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !434, line: 245, size: 128, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1376}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1368, file: !434, line: 247, baseType: !324, size: 16)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1368, file: !434, line: 248, baseType: !433, size: 16, offset: 16)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1368, file: !434, line: 249, baseType: !1373, size: 32, offset: 32)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !434, line: 31, size: 32, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1373, file: !434, line: 33, baseType: !1328, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1368, file: !434, line: 252, baseType: !1377, size: 64, offset: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !702)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1260, file: !1246, line: 213, baseType: !11, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1260, file: !1246, line: 214, baseType: !11, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1260, file: !1246, line: 215, baseType: !1381, size: 64, offset: 1344)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1246, line: 89, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1246, line: 78, size: 448, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !1246, line: 79, baseType: !72, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1383, file: !1246, line: 80, baseType: !1125, size: 16, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1383, file: !1246, line: 81, baseType: !1125, size: 16, offset: 144)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1383, file: !1246, line: 82, baseType: !1125, size: 16, offset: 160)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1383, file: !1246, line: 84, baseType: !1258, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1383, file: !1246, line: 85, baseType: !85, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1383, file: !1246, line: 87, baseType: !11, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1383, file: !1246, line: 88, baseType: !781, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1260, file: !1246, line: 217, baseType: !1394, size: 64, offset: 1408)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1246, line: 58, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1258}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1260, file: !1246, line: 218, baseType: !16, size: 64, offset: 1472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1260, file: !1246, line: 219, baseType: !17, size: 64, offset: 1536)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1260, file: !1246, line: 221, baseType: !65, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1260, file: !1246, line: 222, baseType: !65, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1260, file: !1246, line: 223, baseType: !65, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1260, file: !1246, line: 224, baseType: !11, size: 64, offset: 1664)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1260, file: !1246, line: 225, baseType: !109, size: 64, offset: 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !738, file: !739, line: 347, baseType: !232, size: 640, offset: 5952)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !738, file: !739, line: 349, baseType: !232, size: 640, offset: 6592)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !738, file: !739, line: 350, baseType: !40, size: 64, offset: 7232)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !738, file: !739, line: 352, baseType: !226, size: 64, offset: 7296)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !738, file: !739, line: 353, baseType: !226, size: 64, offset: 7360)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !738, file: !739, line: 354, baseType: !226, size: 64, offset: 7424)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !738, file: !739, line: 356, baseType: !1412, size: 64, offset: 7488)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!85, !16}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !738, file: !739, line: 357, baseType: !1416, size: 64, offset: 7552)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!85, !16, !217}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !738, file: !739, line: 358, baseType: !16, size: 64, offset: 7616)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !738, file: !739, line: 361, baseType: !1421, size: 64, offset: 7680)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!85, !90}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !738, file: !739, line: 363, baseType: !1421, size: 64, offset: 7744)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !738, file: !739, line: 364, baseType: !1421, size: 64, offset: 7808)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !738, file: !739, line: 365, baseType: !1421, size: 64, offset: 7872)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !738, file: !739, line: 366, baseType: !505, size: 64, offset: 7936)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !738, file: !739, line: 367, baseType: !1429, size: 64, offset: 8000)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !90, !85}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !738, file: !739, line: 369, baseType: !1433, size: 64, offset: 8064)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!85, !90, !1203, !21}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !738, file: !739, line: 371, baseType: !1437, size: 64, offset: 8128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!85, !90, !1203}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !738, file: !739, line: 374, baseType: !17, size: 64, offset: 8192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !738, file: !739, line: 376, baseType: !1442, size: 64, offset: 8256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !739, line: 70, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 59, size: 576, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1444, file: !739, line: 60, baseType: !11, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1444, file: !739, line: 61, baseType: !17, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1444, file: !739, line: 62, baseType: !17, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1444, file: !739, line: 63, baseType: !17, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1444, file: !739, line: 64, baseType: !17, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1444, file: !739, line: 65, baseType: !40, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1444, file: !739, line: 66, baseType: !40, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1444, file: !739, line: 67, baseType: !40, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1444, file: !739, line: 69, baseType: !756, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !738, file: !739, line: 378, baseType: !72, size: 128, offset: 8320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !738, file: !739, line: 379, baseType: !72, size: 128, offset: 8448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !738, file: !739, line: 380, baseType: !72, size: 128, offset: 8576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !738, file: !739, line: 383, baseType: !72, size: 128, offset: 8704)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !738, file: !739, line: 386, baseType: !1460, size: 64, offset: 8832)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !94, line: 330, baseType: !421)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !738, file: !739, line: 388, baseType: !65, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !738, file: !739, line: 389, baseType: !65, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !738, file: !739, line: 390, baseType: !65, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !738, file: !739, line: 391, baseType: !65, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !738, file: !739, line: 393, baseType: !65, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !738, file: !739, line: 396, baseType: !65, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !738, file: !739, line: 397, baseType: !65, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !738, file: !739, line: 398, baseType: !65, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !738, file: !739, line: 400, baseType: !65, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !738, file: !739, line: 401, baseType: !65, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !738, file: !739, line: 402, baseType: !65, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !738, file: !739, line: 403, baseType: !65, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !93, file: !94, line: 389, baseType: !932, size: 64, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !93, file: !94, line: 392, baseType: !391, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !93, file: !94, line: 393, baseType: !231, size: 64, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !93, file: !94, line: 395, baseType: !1478, size: 3008, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !94, line: 251, baseType: !1479)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 181, size: 3008, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1479, file: !94, line: 182, baseType: !1015, size: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1479, file: !94, line: 184, baseType: !1203, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1479, file: !94, line: 185, baseType: !1203, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1479, file: !94, line: 186, baseType: !1203, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1479, file: !94, line: 187, baseType: !1203, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1479, file: !94, line: 188, baseType: !1203, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1479, file: !94, line: 189, baseType: !1203, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1479, file: !94, line: 190, baseType: !1203, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1479, file: !94, line: 191, baseType: !1203, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1479, file: !94, line: 192, baseType: !1203, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1479, file: !94, line: 193, baseType: !1203, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1479, file: !94, line: 194, baseType: !1203, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1479, file: !94, line: 196, baseType: !1203, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1479, file: !94, line: 197, baseType: !1203, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1479, file: !94, line: 199, baseType: !1203, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1479, file: !94, line: 200, baseType: !1203, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1479, file: !94, line: 201, baseType: !1203, size: 64, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1479, file: !94, line: 202, baseType: !1203, size: 64, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1479, file: !94, line: 205, baseType: !1203, size: 64, offset: 1536)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1479, file: !94, line: 206, baseType: !1203, size: 64, offset: 1600)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1479, file: !94, line: 209, baseType: !1203, size: 64, offset: 1664)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1479, file: !94, line: 211, baseType: !1203, size: 64, offset: 1728)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1479, file: !94, line: 214, baseType: !517, size: 320, offset: 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1479, file: !94, line: 233, baseType: !72, size: 128, offset: 2112)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1479, file: !94, line: 234, baseType: !72, size: 128, offset: 2240)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1479, file: !94, line: 236, baseType: !517, size: 320, offset: 2368)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1479, file: !94, line: 238, baseType: !72, size: 128, offset: 2688)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1479, file: !94, line: 239, baseType: !40, size: 64, offset: 2816)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1479, file: !94, line: 240, baseType: !170, size: 64, offset: 2880)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1479, file: !94, line: 242, baseType: !65, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1479, file: !94, line: 243, baseType: !65, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1479, file: !94, line: 244, baseType: !65, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1479, file: !94, line: 245, baseType: !65, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1479, file: !94, line: 246, baseType: !65, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1479, file: !94, line: 247, baseType: !65, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1479, file: !94, line: 248, baseType: !65, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1479, file: !94, line: 249, baseType: !65, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1479, file: !94, line: 250, baseType: !65, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !93, file: !94, line: 396, baseType: !1520, size: 3264, offset: 3840)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !94, line: 289, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 254, size: 3264, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1521, file: !94, line: 255, baseType: !1015, size: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1521, file: !94, line: 256, baseType: !1015, size: 448, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1521, file: !94, line: 258, baseType: !11, size: 64, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1521, file: !94, line: 259, baseType: !72, size: 128, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1521, file: !94, line: 261, baseType: !1203, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1521, file: !94, line: 262, baseType: !1203, size: 64, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1521, file: !94, line: 263, baseType: !1203, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1521, file: !94, line: 264, baseType: !1203, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1521, file: !94, line: 265, baseType: !1203, size: 64, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1521, file: !94, line: 266, baseType: !1203, size: 64, offset: 1408)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1521, file: !94, line: 267, baseType: !1203, size: 64, offset: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1521, file: !94, line: 268, baseType: !1203, size: 64, offset: 1536)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1521, file: !94, line: 269, baseType: !1203, size: 64, offset: 1600)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1521, file: !94, line: 270, baseType: !1203, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1521, file: !94, line: 271, baseType: !1203, size: 64, offset: 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1521, file: !94, line: 272, baseType: !1203, size: 64, offset: 1792)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1521, file: !94, line: 274, baseType: !756, size: 64, offset: 1856)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1521, file: !94, line: 276, baseType: !21, size: 64, offset: 1920)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1521, file: !94, line: 277, baseType: !72, size: 128, offset: 1984)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1521, file: !94, line: 278, baseType: !72, size: 128, offset: 2112)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1521, file: !94, line: 279, baseType: !23, size: 64, offset: 2240)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1521, file: !94, line: 280, baseType: !11, size: 64, offset: 2304)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1521, file: !94, line: 282, baseType: !517, size: 320, offset: 2368)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1521, file: !94, line: 283, baseType: !517, size: 320, offset: 2688)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1521, file: !94, line: 285, baseType: !40, size: 64, offset: 3008)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1521, file: !94, line: 286, baseType: !40, size: 64, offset: 3072)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1521, file: !94, line: 287, baseType: !170, size: 64, offset: 3136)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1521, file: !94, line: 288, baseType: !170, size: 64, offset: 3200)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !93, file: !94, line: 398, baseType: !1552, size: 64, offset: 7104)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !94, line: 304, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 294, size: 576, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1571}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1554, file: !94, line: 295, baseType: !860, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1554, file: !94, line: 296, baseType: !226, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1554, file: !94, line: 297, baseType: !231, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1554, file: !94, line: 298, baseType: !40, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1554, file: !94, line: 299, baseType: !40, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1554, file: !94, line: 300, baseType: !226, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1554, file: !94, line: 301, baseType: !226, size: 64, offset: 384)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1554, file: !94, line: 302, baseType: !1564, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !92, line: 21, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !92, line: 59, size: 192, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1566, file: !92, line: 60, baseType: !11, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1566, file: !92, line: 61, baseType: !40, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1566, file: !92, line: 62, baseType: !40, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1554, file: !94, line: 303, baseType: !1572, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !94, line: 292, baseType: !505)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !93, file: !94, line: 400, baseType: !170, size: 64, offset: 7168)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !93, file: !94, line: 401, baseType: !170, size: 64, offset: 7232)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !93, file: !94, line: 402, baseType: !17, size: 64, offset: 7296)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !93, file: !94, line: 404, baseType: !11, size: 64, offset: 7360)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !93, file: !94, line: 405, baseType: !11, size: 64, offset: 7424)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !93, file: !94, line: 407, baseType: !72, size: 128, offset: 7488)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !93, file: !94, line: 408, baseType: !72, size: 128, offset: 7616)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !93, file: !94, line: 409, baseType: !72, size: 128, offset: 7744)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !93, file: !94, line: 410, baseType: !72, size: 128, offset: 7872)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !93, file: !94, line: 411, baseType: !72, size: 128, offset: 8000)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !93, file: !94, line: 413, baseType: !72, size: 128, offset: 8128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !93, file: !94, line: 414, baseType: !72, size: 128, offset: 8256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !93, file: !94, line: 415, baseType: !72, size: 128, offset: 8384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !93, file: !94, line: 417, baseType: !226, size: 64, offset: 8512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !93, file: !94, line: 418, baseType: !90, size: 64, offset: 8576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !94, line: 419, baseType: !90, size: 64, offset: 8640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !93, file: !94, line: 420, baseType: !1590, size: 64, offset: 8704)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !94, line: 350, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !94, line: 352, size: 192, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1592, file: !94, line: 353, baseType: !90, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1592, file: !94, line: 354, baseType: !226, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1592, file: !94, line: 355, baseType: !1590, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !93, file: !94, line: 421, baseType: !1598, size: 64, offset: 8768)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !94, line: 347, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 344, size: 128, elements: !1601)
!1601 = !{!1602, !1607}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1600, file: !94, line: 345, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !94, line: 341, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!85, !90, !16, !85}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1600, file: !94, line: 346, baseType: !16, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !93, file: !94, line: 422, baseType: !1609, size: 64, offset: 8832)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !94, line: 359, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !94, line: 361, size: 128, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1611, file: !94, line: 362, baseType: !90, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1611, file: !94, line: 363, baseType: !1609, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !93, file: !94, line: 424, baseType: !85, size: 64, offset: 8896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !93, file: !94, line: 425, baseType: !1617, size: 64, offset: 8960)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !94, line: 367, baseType: !1421)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !93, file: !94, line: 426, baseType: !11, size: 64, offset: 9024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !93, file: !94, line: 428, baseType: !57, size: 64, offset: 9088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !93, file: !94, line: 436, baseType: !21, size: 64, offset: 9152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !93, file: !94, line: 437, baseType: !21, size: 64, offset: 9216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !93, file: !94, line: 440, baseType: !21, size: 64, offset: 9280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !93, file: !94, line: 442, baseType: !40, size: 64, offset: 9344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !93, file: !94, line: 444, baseType: !11, size: 64, offset: 9408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !93, file: !94, line: 446, baseType: !1626, size: 64, offset: 9472)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !94, line: 327, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 309, size: 448, elements: !1629)
!1629 = !{!1630, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1628, file: !94, line: 310, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !94, line: 307, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !1634, line: 233, size: 192, elements: !1635)
!1634 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
!1635 = !{!1636, !1767, !1793, !1794, !1795}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1633, file: !1634, line: 235, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !1634, line: 210, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 180, size: 1344, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1639, file: !1634, line: 182, baseType: !517, size: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1639, file: !1634, line: 185, baseType: !29, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1639, file: !1634, line: 187, baseType: !23, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1639, file: !1634, line: 188, baseType: !11, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1639, file: !1634, line: 190, baseType: !72, size: 128, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1639, file: !1634, line: 192, baseType: !21, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1639, file: !1634, line: 193, baseType: !21, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1639, file: !1634, line: 194, baseType: !21, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1639, file: !1634, line: 196, baseType: !838, size: 128, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1639, file: !1634, line: 198, baseType: !17, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1639, file: !1634, line: 200, baseType: !1103, size: 64, offset: 1024)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1639, file: !1634, line: 201, baseType: !1103, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1639, file: !1634, line: 202, baseType: !1103, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1639, file: !1634, line: 204, baseType: !65, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1639, file: !1634, line: 209, baseType: !1656, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !1634, line: 64, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !1634, line: 301, size: 5184, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1634, line: 302, baseType: !72, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1659, file: !1634, line: 308, baseType: !65, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1659, file: !1634, line: 309, baseType: !65, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1659, file: !1634, line: 310, baseType: !65, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1659, file: !1634, line: 312, baseType: !65, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1659, file: !1634, line: 313, baseType: !65, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1659, file: !1634, line: 315, baseType: !65, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1659, file: !1634, line: 317, baseType: !65, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1659, file: !1634, line: 318, baseType: !65, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1659, file: !1634, line: 321, baseType: !1671, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !1634, line: 63, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !1634, line: 455, size: 384, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1673, file: !1634, line: 456, baseType: !1671, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1673, file: !1634, line: 457, baseType: !1671, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1673, file: !1634, line: 458, baseType: !1671, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1673, file: !1634, line: 460, baseType: !1657, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1673, file: !1634, line: 461, baseType: !1657, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1673, file: !1634, line: 463, baseType: !24, size: 8, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1673, file: !1634, line: 464, baseType: !24, size: 8, offset: 328)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !1634, line: 465, baseType: !1128, size: 8, offset: 336)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1659, file: !1634, line: 327, baseType: !35, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1659, file: !1634, line: 329, baseType: !97, size: 32, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1659, file: !1634, line: 330, baseType: !35, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1659, file: !1634, line: 332, baseType: !1617, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1659, file: !1634, line: 335, baseType: !21, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1659, file: !1634, line: 336, baseType: !72, size: 128, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1659, file: !1634, line: 337, baseType: !72, size: 128, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1659, file: !1634, line: 339, baseType: !932, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1659, file: !1634, line: 340, baseType: !932, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1659, file: !1634, line: 342, baseType: !932, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1659, file: !1634, line: 343, baseType: !1113, size: 128, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1659, file: !1634, line: 344, baseType: !72, size: 128, offset: 1152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1659, file: !1634, line: 346, baseType: !40, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1659, file: !1634, line: 347, baseType: !40, size: 64, offset: 1344)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1659, file: !1634, line: 348, baseType: !40, size: 64, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1659, file: !1634, line: 350, baseType: !21, size: 64, offset: 1472)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1659, file: !1634, line: 351, baseType: !21, size: 64, offset: 1536)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1659, file: !1634, line: 352, baseType: !21, size: 64, offset: 1600)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1659, file: !1634, line: 353, baseType: !21, size: 64, offset: 1664)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1659, file: !1634, line: 354, baseType: !21, size: 64, offset: 1728)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1659, file: !1634, line: 355, baseType: !21, size: 64, offset: 1792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1659, file: !1634, line: 356, baseType: !21, size: 64, offset: 1856)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1659, file: !1634, line: 357, baseType: !21, size: 64, offset: 1920)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1659, file: !1634, line: 360, baseType: !17, size: 64, offset: 1984)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1659, file: !1634, line: 361, baseType: !17, size: 64, offset: 2048)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1659, file: !1634, line: 362, baseType: !17, size: 64, offset: 2112)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1659, file: !1634, line: 363, baseType: !17, size: 64, offset: 2176)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1659, file: !1634, line: 364, baseType: !17, size: 64, offset: 2240)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1659, file: !1634, line: 365, baseType: !17, size: 64, offset: 2304)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1659, file: !1634, line: 367, baseType: !1264, size: 64, offset: 2368)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1659, file: !1634, line: 369, baseType: !170, size: 64, offset: 2432)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1659, file: !1634, line: 371, baseType: !11, size: 64, offset: 2496)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1659, file: !1634, line: 372, baseType: !11, size: 64, offset: 2560)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1659, file: !1634, line: 373, baseType: !11, size: 64, offset: 2624)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1659, file: !1634, line: 374, baseType: !11, size: 64, offset: 2688)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1659, file: !1634, line: 375, baseType: !11, size: 64, offset: 2752)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1659, file: !1634, line: 376, baseType: !11, size: 64, offset: 2816)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1659, file: !1634, line: 377, baseType: !11, size: 64, offset: 2880)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1659, file: !1634, line: 379, baseType: !1103, size: 64, offset: 2944)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1659, file: !1634, line: 381, baseType: !1103, size: 64, offset: 3008)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1659, file: !1634, line: 382, baseType: !1103, size: 64, offset: 3072)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1659, file: !1634, line: 383, baseType: !1103, size: 64, offset: 3136)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1659, file: !1634, line: 384, baseType: !1103, size: 64, offset: 3200)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1659, file: !1634, line: 385, baseType: !1103, size: 64, offset: 3264)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1659, file: !1634, line: 386, baseType: !1103, size: 64, offset: 3328)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1659, file: !1634, line: 387, baseType: !1103, size: 64, offset: 3392)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1659, file: !1634, line: 388, baseType: !1103, size: 64, offset: 3456)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1659, file: !1634, line: 389, baseType: !1103, size: 64, offset: 3520)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1659, file: !1634, line: 390, baseType: !1103, size: 64, offset: 3584)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1659, file: !1634, line: 391, baseType: !1103, size: 64, offset: 3648)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1659, file: !1634, line: 392, baseType: !1103, size: 64, offset: 3712)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1659, file: !1634, line: 393, baseType: !1103, size: 64, offset: 3776)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1659, file: !1634, line: 394, baseType: !1103, size: 64, offset: 3840)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1659, file: !1634, line: 395, baseType: !1103, size: 64, offset: 3904)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1659, file: !1634, line: 396, baseType: !11, size: 64, offset: 3968)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1659, file: !1634, line: 397, baseType: !1103, size: 64, offset: 4032)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1659, file: !1634, line: 398, baseType: !1103, size: 64, offset: 4096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1659, file: !1634, line: 401, baseType: !1103, size: 64, offset: 4160)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1659, file: !1634, line: 403, baseType: !11, size: 64, offset: 4224)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1659, file: !1634, line: 404, baseType: !11, size: 64, offset: 4288)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1659, file: !1634, line: 417, baseType: !11, size: 64, offset: 4352)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1659, file: !1634, line: 418, baseType: !1141, size: 64, offset: 4416)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1659, file: !1634, line: 421, baseType: !932, size: 64, offset: 4480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1659, file: !1634, line: 423, baseType: !635, size: 64, offset: 4544)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1659, file: !1634, line: 425, baseType: !1748, size: 64, offset: 4608)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1750, line: 99, baseType: !1751)
!1750 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1750, line: 91, size: 832, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1751, file: !1750, line: 92, baseType: !357, size: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1751, file: !1750, line: 93, baseType: !189, size: 320, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1751, file: !1750, line: 94, baseType: !200, size: 128, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1751, file: !1750, line: 96, baseType: !11, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1751, file: !1750, line: 97, baseType: !11, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1751, file: !1750, line: 98, baseType: !170, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1659, file: !1634, line: 426, baseType: !170, size: 64, offset: 4672)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1659, file: !1634, line: 427, baseType: !11, size: 64, offset: 4736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1659, file: !1634, line: 428, baseType: !1103, size: 64, offset: 4800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1659, file: !1634, line: 429, baseType: !1103, size: 64, offset: 4864)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1659, file: !1634, line: 431, baseType: !144, size: 64, offset: 4928)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1659, file: !1634, line: 433, baseType: !11, size: 64, offset: 4992)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1659, file: !1634, line: 434, baseType: !11, size: 64, offset: 5056)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1659, file: !1634, line: 436, baseType: !205, size: 64, offset: 5120)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1633, file: !1634, line: 237, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !1634, line: 230, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 225, size: 384, elements: !1771)
!1771 = !{!1772, !1785, !1786}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1770, file: !1634, line: 226, baseType: !1773, size: 256)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1114, line: 49, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 45, size: 256, elements: !1775)
!1775 = !{!1776, !1777, !1784}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1774, file: !1114, line: 46, baseType: !1113, size: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1774, file: !1114, line: 47, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1114, line: 32, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 29, size: 192, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1780, file: !1114, line: 30, baseType: !1113, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1780, file: !1114, line: 31, baseType: !16, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1774, file: !1114, line: 48, baseType: !1778, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1770, file: !1634, line: 228, baseType: !11, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1770, file: !1634, line: 229, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !1634, line: 222, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 216, size: 192, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1789, file: !1634, line: 220, baseType: !1637, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1789, file: !1634, line: 221, baseType: !72, size: 128, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1633, file: !1634, line: 239, baseType: !65, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1633, file: !1634, line: 240, baseType: !65, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1633, file: !1634, line: 241, baseType: !65, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1628, file: !94, line: 311, baseType: !29, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1628, file: !94, line: 314, baseType: !756, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1628, file: !94, line: 320, baseType: !226, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1628, file: !94, line: 321, baseType: !85, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1628, file: !94, line: 323, baseType: !226, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1628, file: !94, line: 325, baseType: !65, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1628, file: !94, line: 326, baseType: !65, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !93, file: !94, line: 447, baseType: !1804, size: 64, offset: 9536)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !92, line: 22, baseType: !1806)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !92, line: 22, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !93, file: !94, line: 449, baseType: !1808, size: 64, offset: 9600)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !92, line: 26, baseType: !1809)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!23, !90, !90, !23, !21}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !93, file: !94, line: 451, baseType: !1813, size: 64, offset: 9664)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !94, line: 332, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !94, line: 334, size: 192, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1815, file: !94, line: 335, baseType: !1461, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1815, file: !94, line: 336, baseType: !16, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1815, file: !94, line: 337, baseType: !1813, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !93, file: !94, line: 453, baseType: !65, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !93, file: !94, line: 454, baseType: !65, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !93, file: !94, line: 455, baseType: !65, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !93, file: !94, line: 457, baseType: !65, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !93, file: !94, line: 459, baseType: !65, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !93, file: !94, line: 462, baseType: !65, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !93, file: !94, line: 465, baseType: !65, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !93, file: !94, line: 468, baseType: !65, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !93, file: !94, line: 471, baseType: !65, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !93, file: !94, line: 473, baseType: !65, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !93, file: !94, line: 475, baseType: !65, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !93, file: !94, line: 476, baseType: !65, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !93, file: !94, line: 477, baseType: !65, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !93, file: !94, line: 478, baseType: !65, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !93, file: !94, line: 479, baseType: !65, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !93, file: !94, line: 481, baseType: !65, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !93, file: !94, line: 482, baseType: !65, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !93, file: !94, line: 483, baseType: !65, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !93, file: !94, line: 484, baseType: !65, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !93, file: !94, line: 485, baseType: !65, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !93, file: !94, line: 486, baseType: !65, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !93, file: !94, line: 487, baseType: !65, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !93, file: !94, line: 489, baseType: !65, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !93, file: !94, line: 490, baseType: !65, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !93, file: !94, line: 493, baseType: !65, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !93, file: !94, line: 497, baseType: !65, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !93, file: !94, line: 498, baseType: !65, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !93, file: !94, line: 499, baseType: !65, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !93, file: !94, line: 506, baseType: !65, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !93, file: !94, line: 507, baseType: !65, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !93, file: !94, line: 508, baseType: !65, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !93, file: !94, line: 515, baseType: !65, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !93, file: !94, line: 516, baseType: !65, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !93, file: !94, line: 522, baseType: !65, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !93, file: !94, line: 523, baseType: !65, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !93, file: !94, line: 524, baseType: !65, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !93, file: !94, line: 525, baseType: !65, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !93, file: !94, line: 526, baseType: !65, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !93, file: !94, line: 527, baseType: !65, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !93, file: !94, line: 528, baseType: !65, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !93, file: !94, line: 529, baseType: !65, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !93, file: !94, line: 530, baseType: !65, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !93, file: !94, line: 531, baseType: !65, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !93, file: !94, line: 532, baseType: !65, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !93, file: !94, line: 533, baseType: !65, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !93, file: !94, line: 534, baseType: !65, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !93, file: !94, line: 535, baseType: !65, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !93, file: !94, line: 536, baseType: !65, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !93, file: !94, line: 537, baseType: !65, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !93, file: !94, line: 538, baseType: !65, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !93, file: !94, line: 539, baseType: !65, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !93, file: !94, line: 540, baseType: !65, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !93, file: !94, line: 542, baseType: !65, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !93, file: !94, line: 544, baseType: !65, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !93, file: !94, line: 545, baseType: !65, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !93, file: !94, line: 546, baseType: !65, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !93, file: !94, line: 547, baseType: !65, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !93, file: !94, line: 548, baseType: !65, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !93, file: !94, line: 549, baseType: !65, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !93, file: !94, line: 550, baseType: !65, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !93, file: !94, line: 551, baseType: !65, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !93, file: !94, line: 552, baseType: !65, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !93, file: !94, line: 553, baseType: !65, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !93, file: !94, line: 554, baseType: !65, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !93, file: !94, line: 556, baseType: !65, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !93, file: !94, line: 557, baseType: !65, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !93, file: !94, line: 561, baseType: !11, size: 64, offset: 9856)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !93, file: !94, line: 563, baseType: !11, size: 64, offset: 9920)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !93, file: !94, line: 564, baseType: !11, size: 64, offset: 9984)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !93, file: !94, line: 565, baseType: !1890, size: 256, offset: 10048)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !625)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !93, file: !94, line: 567, baseType: !23, size: 64, offset: 10304)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !93, file: !94, line: 568, baseType: !23, size: 64, offset: 10368)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !93, file: !94, line: 569, baseType: !23, size: 64, offset: 10432)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !93, file: !94, line: 570, baseType: !23, size: 64, offset: 10496)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !93, file: !94, line: 577, baseType: !23, size: 64, offset: 10560)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !93, file: !94, line: 578, baseType: !23, size: 64, offset: 10624)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !93, file: !94, line: 579, baseType: !23, size: 64, offset: 10688)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !93, file: !94, line: 580, baseType: !23, size: 64, offset: 10752)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !93, file: !94, line: 581, baseType: !23, size: 64, offset: 10816)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !93, file: !94, line: 582, baseType: !23, size: 64, offset: 10880)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !93, file: !94, line: 583, baseType: !23, size: 64, offset: 10944)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !93, file: !94, line: 584, baseType: !23, size: 64, offset: 11008)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !93, file: !94, line: 585, baseType: !23, size: 64, offset: 11072)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !93, file: !94, line: 586, baseType: !23, size: 64, offset: 11136)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !93, file: !94, line: 587, baseType: !23, size: 64, offset: 11200)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !93, file: !94, line: 588, baseType: !23, size: 64, offset: 11264)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !93, file: !94, line: 589, baseType: !23, size: 64, offset: 11328)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !93, file: !94, line: 591, baseType: !65, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !93, file: !94, line: 592, baseType: !65, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_code_pt", file: !46, line: 85, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !50}
!1915 = !{!0, !1916, !7, !1918, !1923, !1928, !1933, !1938, !1943, !1948, !1953, !1958, !1963, !1968, !1975, !1980, !1983, !1988, !1993, !1998, !2000, !2003, !2006, !2011, !2014, !2019, !2024, !2026, !2031, !2033, !2038, !2040, !2042, !2047, !2049, !2052, !2054, !2059, !2061, !2066, !2068, !2076, !2078, !2080, !2082, !2087, !2089, !2091, !2093, !2095, !2097, !2099, !2101, !2106, !2108, !2110, !2112, !2117, !2119, !2121, !2123, !2125, !2127, !2129, !2131, !2133, !2135, !2137, !2142, !2144, !2146, !2148, !2153, !2155, !2157, !2159, !2161, !2163, !2165, !2167, !2169, !2174, !2176, !2178, !2180, !2182, !2187, !2189, !2192, !2194, !2196, !2198, !2200, !2202, !2204, !2206, !2211, !2213, !2215, !2217, !2219, !2221}
!1916 = !DIGlobalVariableExpression(var: !1917, expr: !DIExpression())
!1917 = distinct !DIGlobalVariable(name: "ngx_http_scgi_module", scope: !9, file: !2, line: 428, type: !952, isLocal: false, isDefinition: true)
!1918 = !DIGlobalVariableExpression(var: !1919, expr: !DIExpression())
!1919 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1252, type: !1920, isLocal: true, isDefinition: true)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 5)
!1923 = !DIGlobalVariableExpression(var: !1924, expr: !DIExpression())
!1924 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1340, type: !1925, isLocal: true, isDefinition: true)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 40)
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1364, type: !1930, isLocal: true, isDefinition: true)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1080, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 135)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1375, type: !1935, isLocal: true, isDefinition: true)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 91)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1395, type: !1940, isLocal: true, isDefinition: true)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1104, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 138)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1418, type: !1945, isLocal: true, isDefinition: true)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1552, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 194)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1467, type: !1950, isLocal: true, isDefinition: true)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 34)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1515, type: !1955, isLocal: true, isDefinition: true)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 37)
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1545, type: !1960, isLocal: true, isDefinition: true)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !1961)
!1961 = !{!1962}
!1962 = !DISubrange(count: 23)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !1965, isLocal: true, isDefinition: true)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 10)
!1968 = !DIGlobalVariableExpression(var: !1969, expr: !DIExpression())
!1969 = distinct !DIGlobalVariable(name: "ngx_http_scgi_temp_path", scope: !9, file: !2, line: 471, type: !1970, isLocal: true, isDefinition: true)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_init_t", file: !246, line: 68, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 65, size: 320, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1971, file: !246, line: 66, baseType: !72, size: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1971, file: !246, line: 67, baseType: !642, size: 192, offset: 128)
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !1977, isLocal: true, isDefinition: true)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1978)
!1978 = !{!1979}
!1979 = !DISubrange(count: 7)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !1982, isLocal: true, isDefinition: true)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !529)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !1985, isLocal: true, isDefinition: true)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1986)
!1986 = !{!1987}
!1987 = !DISubrange(count: 17)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !1990, isLocal: true, isDefinition: true)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !1991)
!1991 = !{!1992}
!1992 = !DISubrange(count: 19)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !1995, isLocal: true, isDefinition: true)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !1996)
!1996 = !{!1997}
!1997 = !DISubrange(count: 18)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !1982, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(name: "ngx_http_scgi_hide_headers", scope: !9, file: !2, line: 444, type: !2002, isLocal: true, isDefinition: true)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 896, elements: !1978)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !2005, isLocal: true, isDefinition: true)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !702)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !2008, isLocal: true, isDefinition: true)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 20)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !2, line: 655, type: !2013, isLocal: true, isDefinition: true)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !286)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !2016, isLocal: true, isDefinition: true)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 25)
!2019 = !DIGlobalVariableExpression(var: !2020, expr: !DIExpression())
!2020 = distinct !DIGlobalVariable(scope: null, file: !2, line: 872, type: !2021, isLocal: true, isDefinition: true)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2022)
!2022 = !{!2023}
!2023 = !DISubrange(count: 6)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1100, type: !1950, isLocal: true, isDefinition: true)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1111, type: !2028, isLocal: true, isDefinition: true)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 22)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1116, type: !1977, isLocal: true, isDefinition: true)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1140, type: !2035, isLocal: true, isDefinition: true)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !2036)
!2036 = !{!2037}
!2037 = !DISubrange(count: 29)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1810, type: !1985, isLocal: true, isDefinition: true)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !1960, isLocal: true, isDefinition: true)
!2042 = !DIGlobalVariableExpression(var: !2043, expr: !DIExpression())
!2043 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !2044, isLocal: true, isDefinition: true)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !2045)
!2045 = !{!2046}
!2046 = !DISubrange(count: 30)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !2016, isLocal: true, isDefinition: true)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !2051, isLocal: true, isDefinition: true)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1129)
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !1990, isLocal: true, isDefinition: true)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !2056, isLocal: true, isDefinition: true)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 21)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !328, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !2063, isLocal: true, isDefinition: true)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 11)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !328, isLocal: true, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069, expr: !DIExpression())
!2069 = distinct !DIGlobalVariable(name: "ngx_http_scgi_cache_headers", scope: !9, file: !2, line: 457, type: !2070, isLocal: true, isDefinition: true)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 1792, elements: !1978)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_keyval_t", file: !61, line: 25, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 22, size: 256, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2072, file: !61, line: 23, baseType: !72, size: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2072, file: !61, line: 24, baseType: !72, size: 128, offset: 128)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !1965, isLocal: true, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !2063, isLocal: true, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !1995, isLocal: true, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !2084, isLocal: true, isDefinition: true)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 15)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !1960, isLocal: true, isDefinition: true)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !2016, isLocal: true, isDefinition: true)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !1965, isLocal: true, isDefinition: true)
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !2028, isLocal: true, isDefinition: true)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !2056, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !1995, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !1985, isLocal: true, isDefinition: true)
!2101 = !DIGlobalVariableExpression(var: !2102, expr: !DIExpression())
!2102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !2103, isLocal: true, isDefinition: true)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !2104)
!2104 = !{!2105}
!2105 = !DISubrange(count: 26)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !1960, isLocal: true, isDefinition: true)
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !2028, isLocal: true, isDefinition: true)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !1995, isLocal: true, isDefinition: true)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !2114, isLocal: true, isDefinition: true)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 13)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !1960, isLocal: true, isDefinition: true)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !1995, isLocal: true, isDefinition: true)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !1982, isLocal: true, isDefinition: true)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !2063, isLocal: true, isDefinition: true)
!2125 = !DIGlobalVariableExpression(var: !2126, expr: !DIExpression())
!2126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !2084, isLocal: true, isDefinition: true)
!2127 = !DIGlobalVariableExpression(var: !2128, expr: !DIExpression())
!2128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !1982, isLocal: true, isDefinition: true)
!2129 = !DIGlobalVariableExpression(var: !2130, expr: !DIExpression())
!2130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !1995, isLocal: true, isDefinition: true)
!2131 = !DIGlobalVariableExpression(var: !2132, expr: !DIExpression())
!2132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !328, isLocal: true, isDefinition: true)
!2133 = !DIGlobalVariableExpression(var: !2134, expr: !DIExpression())
!2134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !1985, isLocal: true, isDefinition: true)
!2135 = !DIGlobalVariableExpression(var: !2136, expr: !DIExpression())
!2136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !2008, isLocal: true, isDefinition: true)
!2137 = !DIGlobalVariableExpression(var: !2138, expr: !DIExpression())
!2138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !2139, isLocal: true, isDefinition: true)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 28)
!2142 = !DIGlobalVariableExpression(var: !2143, expr: !DIExpression())
!2143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !2056, isLocal: true, isDefinition: true)
!2144 = !DIGlobalVariableExpression(var: !2145, expr: !DIExpression())
!2145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !1990, isLocal: true, isDefinition: true)
!2146 = !DIGlobalVariableExpression(var: !2147, expr: !DIExpression())
!2147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !1982, isLocal: true, isDefinition: true)
!2148 = !DIGlobalVariableExpression(var: !2149, expr: !DIExpression())
!2149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !2150, isLocal: true, isDefinition: true)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 24)
!2153 = !DIGlobalVariableExpression(var: !2154, expr: !DIExpression())
!2154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !2008, isLocal: true, isDefinition: true)
!2155 = !DIGlobalVariableExpression(var: !2156, expr: !DIExpression())
!2156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !2028, isLocal: true, isDefinition: true)
!2157 = !DIGlobalVariableExpression(var: !2158, expr: !DIExpression())
!2158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !2035, isLocal: true, isDefinition: true)
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !2084, isLocal: true, isDefinition: true)
!2161 = !DIGlobalVariableExpression(var: !2162, expr: !DIExpression())
!2162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !2150, isLocal: true, isDefinition: true)
!2163 = !DIGlobalVariableExpression(var: !2164, expr: !DIExpression())
!2164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !2103, isLocal: true, isDefinition: true)
!2165 = !DIGlobalVariableExpression(var: !2166, expr: !DIExpression())
!2166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !1990, isLocal: true, isDefinition: true)
!2167 = !DIGlobalVariableExpression(var: !2168, expr: !DIExpression())
!2168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !2016, isLocal: true, isDefinition: true)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !2171, isLocal: true, isDefinition: true)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 27)
!2174 = !DIGlobalVariableExpression(var: !2175, expr: !DIExpression())
!2175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !2063, isLocal: true, isDefinition: true)
!2176 = !DIGlobalVariableExpression(var: !2177, expr: !DIExpression())
!2177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !1985, isLocal: true, isDefinition: true)
!2178 = !DIGlobalVariableExpression(var: !2179, expr: !DIExpression())
!2179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !1985, isLocal: true, isDefinition: true)
!2180 = !DIGlobalVariableExpression(var: !2181, expr: !DIExpression())
!2181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !2008, isLocal: true, isDefinition: true)
!2182 = !DIGlobalVariableExpression(var: !2183, expr: !DIExpression())
!2183 = distinct !DIGlobalVariable(name: "ngx_http_scgi_commands", scope: !9, file: !2, line: 95, type: !2184, isLocal: true, isDefinition: true)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 20160, elements: !2185)
!2185 = !{!2186}
!2186 = !DISubrange(count: 45)
!2187 = !DIGlobalVariableExpression(var: !2188, expr: !DIExpression())
!2188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1830, type: !2114, isLocal: true, isDefinition: true)
!2189 = !DIGlobalVariableExpression(var: !2190, expr: !DIExpression())
!2190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1893, type: !2191, isLocal: true, isDefinition: true)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1318)
!2192 = !DIGlobalVariableExpression(var: !2193, expr: !DIExpression())
!2193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1900, type: !1950, isLocal: true, isDefinition: true)
!2194 = !DIGlobalVariableExpression(var: !2195, expr: !DIExpression())
!2195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1906, type: !2013, isLocal: true, isDefinition: true)
!2196 = !DIGlobalVariableExpression(var: !2197, expr: !DIExpression())
!2197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1954, type: !1950, isLocal: true, isDefinition: true)
!2198 = !DIGlobalVariableExpression(var: !2199, expr: !DIExpression())
!2199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !2021, isLocal: true, isDefinition: true)
!2200 = !DIGlobalVariableExpression(var: !2201, expr: !DIExpression())
!2201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !2005, isLocal: true, isDefinition: true)
!2202 = !DIGlobalVariableExpression(var: !2203, expr: !DIExpression())
!2203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !2084, isLocal: true, isDefinition: true)
!2204 = !DIGlobalVariableExpression(var: !2205, expr: !DIExpression())
!2205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !2084, isLocal: true, isDefinition: true)
!2206 = !DIGlobalVariableExpression(var: !2207, expr: !DIExpression())
!2207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !2208, isLocal: true, isDefinition: true)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !2209)
!2209 = !{!2210}
!2210 = !DISubrange(count: 9)
!2211 = !DIGlobalVariableExpression(var: !2212, expr: !DIExpression())
!2212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !2208, isLocal: true, isDefinition: true)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !2208, isLocal: true, isDefinition: true)
!2215 = !DIGlobalVariableExpression(var: !2216, expr: !DIExpression())
!2216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !2208, isLocal: true, isDefinition: true)
!2217 = !DIGlobalVariableExpression(var: !2218, expr: !DIExpression())
!2218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !2208, isLocal: true, isDefinition: true)
!2219 = !DIGlobalVariableExpression(var: !2220, expr: !DIExpression())
!2220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !2208, isLocal: true, isDefinition: true)
!2221 = !DIGlobalVariableExpression(var: !2222, expr: !DIExpression())
!2222 = distinct !DIGlobalVariable(name: "ngx_http_scgi_next_upstream_masks", scope: !9, file: !2, line: 76, type: !2223, isLocal: true, isDefinition: true)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2224, size: 2304, elements: !2229)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_bitmask_t", file: !154, line: 168, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 165, size: 192, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2225, file: !154, line: 166, baseType: !72, size: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2225, file: !154, line: 167, baseType: !11, size: 64, offset: 128)
!2229 = !{!2230}
!2230 = !DISubrange(count: 12)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !31, line: 36, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 24, size: 512, elements: !2233)
!2233 = !{!2234, !2238, !2239, !2243, !2247, !2248, !2252, !2253}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !2232, file: !31, line: 25, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!85, !926}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !2232, file: !31, line: 26, baseType: !2235, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !2232, file: !31, line: 28, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!16, !926}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !2232, file: !31, line: 29, baseType: !2244, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!186, !926, !16}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !2232, file: !31, line: 31, baseType: !2240, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !2232, file: !31, line: 32, baseType: !2249, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!186, !926, !16, !16}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !2232, file: !31, line: 34, baseType: !2240, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !2232, file: !31, line: 35, baseType: !2249, size: 64, offset: 448)
!2254 = !{i32 7, !"Dwarf Version", i32 5}
!2255 = !{i32 2, !"Debug Info Version", i32 3}
!2256 = !{i32 1, !"wchar_size", i32 4}
!2257 = !{i32 8, !"PIC Level", i32 2}
!2258 = !{i32 7, !"PIE Level", i32 2}
!2259 = !{i32 7, !"uwtable", i32 2}
!2260 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2261 = distinct !DISubprogram(name: "ngx_http_scgi_create_main_conf", scope: !2, file: !2, line: 1169, type: !2241, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2262)
!2262 = !{!2263, !2264}
!2263 = !DILocalVariable(name: "cf", arg: 1, scope: !2261, file: !2, line: 1169, type: !926)
!2264 = !DILocalVariable(name: "conf", scope: !2261, file: !2, line: 1171, type: !2265)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_scgi_main_conf_t", file: !2, line: 16, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 14, size: 320, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !2267, file: !2, line: 15, baseType: !517, size: 320)
!2270 = !{!2271, !2271, i64 0}
!2271 = !{!"any pointer", !2272, i64 0}
!2272 = !{!"omnipotent char", !2273, i64 0}
!2273 = !{!"Simple C/C++ TBAA"}
!2274 = !DILocation(line: 1169, column: 44, scope: !2261)
!2275 = !DILocation(line: 1171, column: 5, scope: !2261)
!2276 = !DILocation(line: 1171, column: 33, scope: !2261)
!2277 = !DILocation(line: 1173, column: 24, scope: !2261)
!2278 = !DILocation(line: 1173, column: 28, scope: !2261)
!2279 = !{!2280, !2271, i64 24}
!2280 = !{!"ngx_conf_s", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2281, i64 64, !2281, i64 72, !2271, i64 80, !2271, i64 88}
!2281 = !{!"long", !2272, i64 0}
!2282 = !DILocation(line: 1173, column: 12, scope: !2261)
!2283 = !DILocation(line: 1173, column: 10, scope: !2261)
!2284 = !DILocation(line: 1174, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1174, column: 9)
!2286 = !DILocation(line: 1174, column: 14, scope: !2285)
!2287 = !DILocation(line: 1174, column: 9, scope: !2261)
!2288 = !DILocation(line: 1175, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 1174, column: 23)
!2290 = !DILocation(line: 1179, column: 25, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1179, column: 9)
!2292 = !DILocation(line: 1179, column: 31, scope: !2291)
!2293 = !DILocation(line: 1179, column: 39, scope: !2291)
!2294 = !DILocation(line: 1179, column: 43, scope: !2291)
!2295 = !DILocation(line: 1179, column: 9, scope: !2291)
!2296 = !DILocation(line: 1181, column: 9, scope: !2291)
!2297 = !DILocation(line: 1179, column: 9, scope: !2261)
!2298 = !DILocation(line: 1183, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2291, file: !2, line: 1182, column: 5)
!2300 = !DILocation(line: 1187, column: 12, scope: !2261)
!2301 = !DILocation(line: 1187, column: 5, scope: !2261)
!2302 = !DILocation(line: 1188, column: 1, scope: !2261)
!2303 = distinct !DISubprogram(name: "ngx_http_scgi_create_loc_conf", scope: !2, file: !2, line: 1192, type: !2241, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2304)
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "cf", arg: 1, scope: !2303, file: !2, line: 1192, type: !926)
!2306 = !DILocalVariable(name: "conf", scope: !2303, file: !2, line: 1194, type: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_scgi_loc_conf_t", file: !2, line: 43, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 28, size: 5184, elements: !2310)
!2310 = !{!2311, !2312, !2321, !2322, !2323, !2324, !2325}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !2309, file: !2, line: 29, baseType: !909, size: 3904)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !2309, file: !2, line: 31, baseType: !2313, size: 384, offset: 3904)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_scgi_params_t", file: !2, line: 25, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 19, size: 384, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2320}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !2314, file: !2, line: 20, baseType: !932, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !2314, file: !2, line: 21, baseType: !932, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2314, file: !2, line: 22, baseType: !932, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2314, file: !2, line: 23, baseType: !11, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2314, file: !2, line: 24, baseType: !1113, size: 128, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "params_cache", scope: !2309, file: !2, line: 33, baseType: !2313, size: 384, offset: 4288)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "params_source", scope: !2309, file: !2, line: 35, baseType: !932, size: 64, offset: 4672)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "scgi_lengths", scope: !2309, file: !2, line: 37, baseType: !932, size: 64, offset: 4736)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "scgi_values", scope: !2309, file: !2, line: 38, baseType: !932, size: 64, offset: 4800)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cache_key", scope: !2309, file: !2, line: 41, baseType: !1142, size: 320, offset: 4864)
!2326 = !DILocation(line: 1192, column: 43, scope: !2303)
!2327 = !DILocation(line: 1194, column: 5, scope: !2303)
!2328 = !DILocation(line: 1194, column: 32, scope: !2303)
!2329 = !DILocation(line: 1196, column: 24, scope: !2303)
!2330 = !DILocation(line: 1196, column: 28, scope: !2303)
!2331 = !DILocation(line: 1196, column: 12, scope: !2303)
!2332 = !DILocation(line: 1196, column: 10, scope: !2303)
!2333 = !DILocation(line: 1197, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 1197, column: 9)
!2335 = !DILocation(line: 1197, column: 14, scope: !2334)
!2336 = !DILocation(line: 1197, column: 9, scope: !2303)
!2337 = !DILocation(line: 1198, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 1197, column: 23)
!2339 = !DILocation(line: 1201, column: 5, scope: !2303)
!2340 = !DILocation(line: 1201, column: 11, scope: !2303)
!2341 = !DILocation(line: 1201, column: 20, scope: !2303)
!2342 = !DILocation(line: 1201, column: 26, scope: !2303)
!2343 = !DILocation(line: 1202, column: 5, scope: !2303)
!2344 = !DILocation(line: 1202, column: 11, scope: !2303)
!2345 = !DILocation(line: 1202, column: 20, scope: !2303)
!2346 = !DILocation(line: 1202, column: 33, scope: !2303)
!2347 = !{!2348, !2281, i64 144}
!2348 = !{!"", !2349, i64 0, !2354, i64 488, !2354, i64 536, !2271, i64 584, !2271, i64 592, !2271, i64 600, !2355, i64 608}
!2349 = !{!"", !2271, i64 0, !2281, i64 8, !2281, i64 16, !2281, i64 24, !2281, i64 32, !2281, i64 40, !2281, i64 48, !2281, i64 56, !2281, i64 64, !2281, i64 72, !2281, i64 80, !2281, i64 88, !2281, i64 96, !2281, i64 104, !2350, i64 112, !2281, i64 128, !2281, i64 136, !2281, i64 144, !2281, i64 152, !2281, i64 160, !2281, i64 168, !2281, i64 176, !2281, i64 184, !2281, i64 192, !2281, i64 200, !2281, i64 208, !2281, i64 216, !2271, i64 224, !2351, i64 232, !2271, i64 248, !2271, i64 256, !2271, i64 264, !2281, i64 272, !2271, i64 280, !2271, i64 288, !2281, i64 296, !2281, i64 304, !2281, i64 312, !2281, i64 320, !2281, i64 328, !2281, i64 336, !2281, i64 344, !2281, i64 352, !2281, i64 360, !2281, i64 368, !2271, i64 376, !2271, i64 384, !2271, i64 392, !2271, i64 400, !2271, i64 408, !2271, i64 416, !2352, i64 424, !2352, i64 424, !2352, i64 424, !2352, i64 424, !2352, i64 424, !2352, i64 424, !2271, i64 432, !2281, i64 440, !2271, i64 448, !2281, i64 456, !2281, i64 464, !2353, i64 472}
!2350 = !{!"", !2281, i64 0, !2281, i64 8}
!2351 = !{!"", !2271, i64 0, !2281, i64 8}
!2352 = !{!"int", !2272, i64 0}
!2353 = !{!"", !2281, i64 0, !2271, i64 8}
!2354 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2281, i64 24, !2351, i64 32}
!2355 = !{!"", !2353, i64 0, !2271, i64 16, !2271, i64 24, !2271, i64 32}
!2356 = !DILocation(line: 1203, column: 5, scope: !2303)
!2357 = !DILocation(line: 1203, column: 11, scope: !2303)
!2358 = !DILocation(line: 1203, column: 20, scope: !2303)
!2359 = !DILocation(line: 1203, column: 40, scope: !2303)
!2360 = !{!2348, !2281, i64 152}
!2361 = !DILocation(line: 1204, column: 5, scope: !2303)
!2362 = !DILocation(line: 1204, column: 11, scope: !2303)
!2363 = !DILocation(line: 1204, column: 20, scope: !2303)
!2364 = !DILocation(line: 1204, column: 30, scope: !2303)
!2365 = !{!2348, !2281, i64 160}
!2366 = !DILocation(line: 1205, column: 5, scope: !2303)
!2367 = !DILocation(line: 1205, column: 11, scope: !2303)
!2368 = !DILocation(line: 1205, column: 20, scope: !2303)
!2369 = !DILocation(line: 1205, column: 38, scope: !2303)
!2370 = !{!2348, !2281, i64 168}
!2371 = !DILocation(line: 1206, column: 5, scope: !2303)
!2372 = !DILocation(line: 1206, column: 11, scope: !2303)
!2373 = !DILocation(line: 1206, column: 20, scope: !2303)
!2374 = !DILocation(line: 1206, column: 40, scope: !2303)
!2375 = !{!2348, !2281, i64 192}
!2376 = !DILocation(line: 1207, column: 5, scope: !2303)
!2377 = !DILocation(line: 1207, column: 11, scope: !2303)
!2378 = !DILocation(line: 1207, column: 20, scope: !2303)
!2379 = !DILocation(line: 1207, column: 33, scope: !2303)
!2380 = !{!2348, !2281, i64 216}
!2381 = !DILocation(line: 1209, column: 5, scope: !2303)
!2382 = !DILocation(line: 1209, column: 11, scope: !2303)
!2383 = !DILocation(line: 1209, column: 20, scope: !2303)
!2384 = !DILocation(line: 1209, column: 26, scope: !2303)
!2385 = !{!2348, !2271, i64 264}
!2386 = !DILocation(line: 1210, column: 5, scope: !2303)
!2387 = !DILocation(line: 1210, column: 11, scope: !2303)
!2388 = !DILocation(line: 1210, column: 20, scope: !2303)
!2389 = !DILocation(line: 1210, column: 37, scope: !2303)
!2390 = !{!2348, !2281, i64 272}
!2391 = !DILocation(line: 1212, column: 5, scope: !2303)
!2392 = !DILocation(line: 1212, column: 11, scope: !2303)
!2393 = !DILocation(line: 1212, column: 20, scope: !2303)
!2394 = !DILocation(line: 1212, column: 36, scope: !2303)
!2395 = !{!2348, !2281, i64 8}
!2396 = !DILocation(line: 1213, column: 5, scope: !2303)
!2397 = !DILocation(line: 1213, column: 11, scope: !2303)
!2398 = !DILocation(line: 1213, column: 20, scope: !2303)
!2399 = !DILocation(line: 1213, column: 33, scope: !2303)
!2400 = !{!2348, !2281, i64 16}
!2401 = !DILocation(line: 1214, column: 5, scope: !2303)
!2402 = !DILocation(line: 1214, column: 11, scope: !2303)
!2403 = !DILocation(line: 1214, column: 20, scope: !2303)
!2404 = !DILocation(line: 1214, column: 33, scope: !2303)
!2405 = !{!2348, !2281, i64 24}
!2406 = !DILocation(line: 1215, column: 5, scope: !2303)
!2407 = !DILocation(line: 1215, column: 11, scope: !2303)
!2408 = !DILocation(line: 1215, column: 20, scope: !2303)
!2409 = !DILocation(line: 1215, column: 42, scope: !2303)
!2410 = !{!2348, !2281, i64 32}
!2411 = !DILocation(line: 1217, column: 5, scope: !2303)
!2412 = !DILocation(line: 1217, column: 11, scope: !2303)
!2413 = !DILocation(line: 1217, column: 20, scope: !2303)
!2414 = !DILocation(line: 1217, column: 31, scope: !2303)
!2415 = !{!2348, !2281, i64 40}
!2416 = !DILocation(line: 1218, column: 5, scope: !2303)
!2417 = !DILocation(line: 1218, column: 11, scope: !2303)
!2418 = !DILocation(line: 1218, column: 20, scope: !2303)
!2419 = !DILocation(line: 1218, column: 32, scope: !2303)
!2420 = !{!2348, !2281, i64 48}
!2421 = !DILocation(line: 1219, column: 5, scope: !2303)
!2422 = !DILocation(line: 1219, column: 11, scope: !2303)
!2423 = !DILocation(line: 1219, column: 20, scope: !2303)
!2424 = !DILocation(line: 1219, column: 31, scope: !2303)
!2425 = !{!2348, !2281, i64 56}
!2426 = !DILocation(line: 1221, column: 5, scope: !2303)
!2427 = !DILocation(line: 1221, column: 11, scope: !2303)
!2428 = !DILocation(line: 1221, column: 20, scope: !2303)
!2429 = !DILocation(line: 1221, column: 43, scope: !2303)
!2430 = !{!2348, !2281, i64 88}
!2431 = !DILocation(line: 1222, column: 5, scope: !2303)
!2432 = !DILocation(line: 1222, column: 11, scope: !2303)
!2433 = !DILocation(line: 1222, column: 20, scope: !2303)
!2434 = !DILocation(line: 1222, column: 44, scope: !2303)
!2435 = !{!2348, !2281, i64 96}
!2436 = !DILocation(line: 1223, column: 5, scope: !2303)
!2437 = !DILocation(line: 1223, column: 11, scope: !2303)
!2438 = !DILocation(line: 1223, column: 20, scope: !2303)
!2439 = !DILocation(line: 1223, column: 46, scope: !2303)
!2440 = !{!2348, !2281, i64 104}
!2441 = !DILocation(line: 1225, column: 5, scope: !2303)
!2442 = !DILocation(line: 1225, column: 11, scope: !2303)
!2443 = !DILocation(line: 1225, column: 20, scope: !2303)
!2444 = !DILocation(line: 1225, column: 41, scope: !2303)
!2445 = !{!2348, !2281, i64 176}
!2446 = !DILocation(line: 1226, column: 5, scope: !2303)
!2447 = !DILocation(line: 1226, column: 11, scope: !2303)
!2448 = !DILocation(line: 1226, column: 20, scope: !2303)
!2449 = !DILocation(line: 1226, column: 38, scope: !2303)
!2450 = !{!2348, !2281, i64 184}
!2451 = !DILocation(line: 1229, column: 5, scope: !2303)
!2452 = !DILocation(line: 1229, column: 11, scope: !2303)
!2453 = !DILocation(line: 1229, column: 20, scope: !2303)
!2454 = !DILocation(line: 1229, column: 26, scope: !2303)
!2455 = !DILocation(line: 1230, column: 5, scope: !2303)
!2456 = !DILocation(line: 1230, column: 11, scope: !2303)
!2457 = !DILocation(line: 1230, column: 20, scope: !2303)
!2458 = !DILocation(line: 1230, column: 35, scope: !2303)
!2459 = !{!2348, !2281, i64 296}
!2460 = !DILocation(line: 1231, column: 5, scope: !2303)
!2461 = !DILocation(line: 1231, column: 11, scope: !2303)
!2462 = !DILocation(line: 1231, column: 20, scope: !2303)
!2463 = !DILocation(line: 1231, column: 43, scope: !2303)
!2464 = !{!2348, !2281, i64 320}
!2465 = !DILocation(line: 1232, column: 5, scope: !2303)
!2466 = !DILocation(line: 1232, column: 11, scope: !2303)
!2467 = !DILocation(line: 1232, column: 20, scope: !2303)
!2468 = !DILocation(line: 1232, column: 33, scope: !2303)
!2469 = !{!2348, !2271, i64 384}
!2470 = !DILocation(line: 1233, column: 5, scope: !2303)
!2471 = !DILocation(line: 1233, column: 11, scope: !2303)
!2472 = !DILocation(line: 1233, column: 20, scope: !2303)
!2473 = !DILocation(line: 1233, column: 29, scope: !2303)
!2474 = !{!2348, !2271, i64 400}
!2475 = !DILocation(line: 1234, column: 5, scope: !2303)
!2476 = !DILocation(line: 1234, column: 11, scope: !2303)
!2477 = !DILocation(line: 1234, column: 20, scope: !2303)
!2478 = !DILocation(line: 1234, column: 32, scope: !2303)
!2479 = !{!2348, !2271, i64 376}
!2480 = !DILocation(line: 1235, column: 5, scope: !2303)
!2481 = !DILocation(line: 1235, column: 11, scope: !2303)
!2482 = !DILocation(line: 1235, column: 20, scope: !2303)
!2483 = !DILocation(line: 1235, column: 31, scope: !2303)
!2484 = !{!2348, !2281, i64 328}
!2485 = !DILocation(line: 1236, column: 5, scope: !2303)
!2486 = !DILocation(line: 1236, column: 11, scope: !2303)
!2487 = !DILocation(line: 1236, column: 20, scope: !2303)
!2488 = !DILocation(line: 1236, column: 39, scope: !2303)
!2489 = !{!2348, !2281, i64 336}
!2490 = !DILocation(line: 1237, column: 5, scope: !2303)
!2491 = !DILocation(line: 1237, column: 11, scope: !2303)
!2492 = !DILocation(line: 1237, column: 20, scope: !2303)
!2493 = !DILocation(line: 1237, column: 35, scope: !2303)
!2494 = !{!2348, !2281, i64 344}
!2495 = !DILocation(line: 1238, column: 5, scope: !2303)
!2496 = !DILocation(line: 1238, column: 11, scope: !2303)
!2497 = !DILocation(line: 1238, column: 20, scope: !2303)
!2498 = !DILocation(line: 1238, column: 37, scope: !2303)
!2499 = !{!2348, !2281, i64 352}
!2500 = !DILocation(line: 1239, column: 5, scope: !2303)
!2501 = !DILocation(line: 1239, column: 11, scope: !2303)
!2502 = !DILocation(line: 1239, column: 20, scope: !2303)
!2503 = !DILocation(line: 1239, column: 44, scope: !2303)
!2504 = !{!2348, !2281, i64 368}
!2505 = !DILocation(line: 1242, column: 5, scope: !2303)
!2506 = !DILocation(line: 1242, column: 11, scope: !2303)
!2507 = !DILocation(line: 1242, column: 20, scope: !2303)
!2508 = !DILocation(line: 1242, column: 33, scope: !2303)
!2509 = !{!2348, !2271, i64 248}
!2510 = !DILocation(line: 1243, column: 5, scope: !2303)
!2511 = !DILocation(line: 1243, column: 11, scope: !2303)
!2512 = !DILocation(line: 1243, column: 20, scope: !2303)
!2513 = !DILocation(line: 1243, column: 33, scope: !2303)
!2514 = !{!2348, !2271, i64 256}
!2515 = !DILocation(line: 1245, column: 5, scope: !2303)
!2516 = !DILocation(line: 1245, column: 11, scope: !2303)
!2517 = !DILocation(line: 1245, column: 20, scope: !2303)
!2518 = !DILocation(line: 1245, column: 37, scope: !2303)
!2519 = !{!2348, !2281, i64 200}
!2520 = !DILocation(line: 1248, column: 5, scope: !2303)
!2521 = !DILocation(line: 1248, column: 11, scope: !2303)
!2522 = !DILocation(line: 1248, column: 20, scope: !2303)
!2523 = !DILocation(line: 1248, column: 37, scope: !2303)
!2524 = !{!2348, !2281, i64 208}
!2525 = !DILocation(line: 1250, column: 5, scope: !2303)
!2526 = !DILocation(line: 1250, column: 11, scope: !2303)
!2527 = !DILocation(line: 1250, column: 20, scope: !2303)
!2528 = !DILocation(line: 1250, column: 37, scope: !2303)
!2529 = !DILocation(line: 1252, column: 5, scope: !2303)
!2530 = !{!2348, !2281, i64 472}
!2531 = !{!2348, !2271, i64 480}
!2532 = !DILocation(line: 1254, column: 12, scope: !2303)
!2533 = !DILocation(line: 1254, column: 5, scope: !2303)
!2534 = !DILocation(line: 1255, column: 1, scope: !2303)
!2535 = distinct !DISubprogram(name: "ngx_http_scgi_merge_loc_conf", scope: !2, file: !2, line: 1259, type: !2250, scopeLine: 1260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2560, !2561}
!2537 = !DILocalVariable(name: "cf", arg: 1, scope: !2535, file: !2, line: 1259, type: !926)
!2538 = !DILocalVariable(name: "parent", arg: 2, scope: !2535, file: !2, line: 1259, type: !16)
!2539 = !DILocalVariable(name: "child", arg: 3, scope: !2535, file: !2, line: 1259, type: !16)
!2540 = !DILocalVariable(name: "prev", scope: !2535, file: !2, line: 1261, type: !2307)
!2541 = !DILocalVariable(name: "conf", scope: !2535, file: !2, line: 1262, type: !2307)
!2542 = !DILocalVariable(name: "size", scope: !2535, file: !2, line: 1264, type: !21)
!2543 = !DILocalVariable(name: "rc", scope: !2535, file: !2, line: 1265, type: !85)
!2544 = !DILocalVariable(name: "hash", scope: !2535, file: !2, line: 1266, type: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_init_t", file: !1114, line: 62, baseType: !2546)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 52, size: 448, elements: !2547)
!2547 = !{!2548, !2550, !2555, !2556, !2557, !2558, !2559}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2546, file: !1114, line: 53, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2546, file: !1114, line: 54, baseType: !2551, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_key_pt", file: !1114, line: 42, baseType: !2552)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!11, !23, !21}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !2546, file: !1114, line: 56, baseType: !11, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_size", scope: !2546, file: !1114, line: 57, baseType: !11, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2546, file: !1114, line: 59, baseType: !186, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !2546, file: !1114, line: 60, baseType: !391, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !2546, file: !1114, line: 61, baseType: !391, size: 64, offset: 384)
!2560 = !DILocalVariable(name: "clcf", scope: !2535, file: !2, line: 1267, type: !1657)
!2561 = !DILocalVariable(name: "shm_zone", scope: !2562, file: !2, line: 1462, type: !668)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 1461, column: 79)
!2563 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1461, column: 9)
!2564 = !DILocation(line: 1259, column: 42, scope: !2535)
!2565 = !DILocation(line: 1259, column: 52, scope: !2535)
!2566 = !DILocation(line: 1259, column: 66, scope: !2535)
!2567 = !DILocation(line: 1261, column: 5, scope: !2535)
!2568 = !DILocation(line: 1261, column: 31, scope: !2535)
!2569 = !DILocation(line: 1261, column: 38, scope: !2535)
!2570 = !DILocation(line: 1262, column: 5, scope: !2535)
!2571 = !DILocation(line: 1262, column: 31, scope: !2535)
!2572 = !DILocation(line: 1262, column: 38, scope: !2535)
!2573 = !DILocation(line: 1264, column: 5, scope: !2535)
!2574 = !DILocation(line: 1264, column: 35, scope: !2535)
!2575 = !DILocation(line: 1265, column: 5, scope: !2535)
!2576 = !DILocation(line: 1265, column: 35, scope: !2535)
!2577 = !DILocation(line: 1266, column: 5, scope: !2535)
!2578 = !DILocation(line: 1266, column: 35, scope: !2535)
!2579 = !DILocation(line: 1267, column: 5, scope: !2535)
!2580 = !DILocation(line: 1267, column: 35, scope: !2535)
!2581 = !DILocation(line: 1271, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1271, column: 9)
!2583 = !DILocation(line: 1271, column: 15, scope: !2582)
!2584 = !DILocation(line: 1271, column: 24, scope: !2582)
!2585 = !DILocation(line: 1271, column: 30, scope: !2582)
!2586 = !DILocation(line: 1271, column: 9, scope: !2535)
!2587 = !DILocation(line: 1272, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2582, file: !2, line: 1271, column: 35)
!2589 = !DILocation(line: 1272, column: 15, scope: !2588)
!2590 = !DILocation(line: 1272, column: 24, scope: !2588)
!2591 = !DILocation(line: 1272, column: 30, scope: !2588)
!2592 = !DILocation(line: 1273, column: 5, scope: !2588)
!2593 = !DILocation(line: 1275, column: 9, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1275, column: 9)
!2595 = !DILocation(line: 1275, column: 15, scope: !2594)
!2596 = !DILocation(line: 1275, column: 24, scope: !2594)
!2597 = !DILocation(line: 1275, column: 30, scope: !2594)
!2598 = !DILocation(line: 1275, column: 9, scope: !2535)
!2599 = !DILocation(line: 1276, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2594, file: !2, line: 1275, column: 35)
!2601 = !DILocation(line: 1276, column: 15, scope: !2600)
!2602 = !DILocation(line: 1276, column: 24, scope: !2600)
!2603 = !DILocation(line: 1276, column: 30, scope: !2600)
!2604 = !DILocation(line: 1277, column: 5, scope: !2600)
!2605 = !DILocation(line: 1281, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1281, column: 9)
!2607 = !DILocation(line: 1281, column: 15, scope: !2606)
!2608 = !DILocation(line: 1281, column: 24, scope: !2606)
!2609 = !DILocation(line: 1281, column: 30, scope: !2606)
!2610 = !DILocation(line: 1281, column: 9, scope: !2535)
!2611 = !DILocation(line: 1282, column: 9, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 1282, column: 9)
!2613 = distinct !DILexicalBlock(scope: !2606, file: !2, line: 1281, column: 49)
!2614 = !DILocation(line: 1282, column: 9, scope: !2613)
!2615 = !DILocation(line: 1282, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !2, line: 1282, column: 9)
!2617 = !DILocation(line: 1284, column: 40, scope: !2613)
!2618 = !DILocation(line: 1284, column: 46, scope: !2613)
!2619 = !DILocation(line: 1284, column: 55, scope: !2613)
!2620 = !{!2348, !2271, i64 408}
!2621 = !DILocation(line: 1284, column: 9, scope: !2613)
!2622 = !DILocation(line: 1284, column: 15, scope: !2613)
!2623 = !DILocation(line: 1284, column: 24, scope: !2613)
!2624 = !DILocation(line: 1284, column: 38, scope: !2613)
!2625 = !DILocation(line: 1285, column: 39, scope: !2613)
!2626 = !DILocation(line: 1285, column: 45, scope: !2613)
!2627 = !DILocation(line: 1285, column: 54, scope: !2613)
!2628 = !{!2348, !2271, i64 416}
!2629 = !DILocation(line: 1285, column: 9, scope: !2613)
!2630 = !DILocation(line: 1285, column: 15, scope: !2613)
!2631 = !DILocation(line: 1285, column: 24, scope: !2613)
!2632 = !DILocation(line: 1285, column: 37, scope: !2613)
!2633 = !DILocation(line: 1286, column: 5, scope: !2613)
!2634 = !DILocation(line: 1288, column: 5, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1288, column: 5)
!2636 = !DILocation(line: 1288, column: 5, scope: !2535)
!2637 = !DILocation(line: 1288, column: 5, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 1288, column: 5)
!2639 = !DILocation(line: 1291, column: 5, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1291, column: 5)
!2641 = !DILocation(line: 1291, column: 5, scope: !2535)
!2642 = !DILocation(line: 1291, column: 5, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !2, line: 1291, column: 5)
!2644 = !DILocation(line: 1294, column: 5, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1294, column: 5)
!2646 = !DILocation(line: 1294, column: 5, scope: !2535)
!2647 = !DILocation(line: 1294, column: 5, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !2, line: 1294, column: 5)
!2649 = !DILocation(line: 1297, column: 5, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1297, column: 5)
!2651 = !DILocation(line: 1297, column: 5, scope: !2535)
!2652 = !DILocation(line: 1297, column: 5, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 1297, column: 5)
!2654 = !DILocation(line: 1300, column: 5, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1300, column: 5)
!2656 = !DILocation(line: 1300, column: 5, scope: !2535)
!2657 = !DILocation(line: 1300, column: 5, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 1300, column: 5)
!2659 = !DILocation(line: 1303, column: 5, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1303, column: 5)
!2661 = !DILocation(line: 1303, column: 5, scope: !2535)
!2662 = !DILocation(line: 1303, column: 5, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 1303, column: 5)
!2664 = !DILocation(line: 1306, column: 5, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1306, column: 5)
!2666 = !DILocation(line: 1306, column: 5, scope: !2535)
!2667 = !DILocation(line: 1306, column: 5, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 1306, column: 5)
!2669 = !DILocation(line: 1309, column: 5, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1309, column: 5)
!2671 = !DILocation(line: 1309, column: 5, scope: !2535)
!2672 = !DILocation(line: 1309, column: 5, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1309, column: 5)
!2674 = !DILocation(line: 1312, column: 5, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1312, column: 5)
!2676 = !DILocation(line: 1312, column: 5, scope: !2535)
!2677 = !DILocation(line: 1312, column: 5, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !2, line: 1312, column: 5)
!2679 = !DILocation(line: 1315, column: 5, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1315, column: 5)
!2681 = !DILocation(line: 1315, column: 5, scope: !2535)
!2682 = !DILocation(line: 1315, column: 5, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1315, column: 5)
!2684 = !DILocation(line: 1318, column: 5, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1318, column: 5)
!2686 = !DILocation(line: 1318, column: 5, scope: !2535)
!2687 = !DILocation(line: 1318, column: 5, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 1318, column: 5)
!2689 = !DILocation(line: 1321, column: 5, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1321, column: 5)
!2691 = !DILocation(line: 1321, column: 5, scope: !2535)
!2692 = !DILocation(line: 1321, column: 5, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1321, column: 5)
!2694 = !DILocation(line: 1324, column: 5, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1324, column: 5)
!2696 = !DILocation(line: 1324, column: 5, scope: !2535)
!2697 = !DILocation(line: 1324, column: 5, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 1324, column: 5)
!2699 = !DILocation(line: 1327, column: 5, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1327, column: 5)
!2701 = !DILocation(line: 1327, column: 5, scope: !2535)
!2702 = !DILocation(line: 1327, column: 5, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 1327, column: 5)
!2704 = !{!2281, !2281, i64 0}
!2705 = !DILocation(line: 1331, column: 5, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1331, column: 5)
!2707 = !DILocation(line: 1331, column: 5, scope: !2535)
!2708 = !DILocation(line: 1331, column: 5, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 1331, column: 5)
!2710 = !DILocation(line: 1335, column: 5, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1335, column: 5)
!2712 = !{!2348, !2281, i64 112}
!2713 = !DILocation(line: 1335, column: 5, scope: !2535)
!2714 = !DILocation(line: 1335, column: 5, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 1335, column: 5)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 1335, column: 5)
!2717 = !DILocation(line: 1335, column: 5, scope: !2716)
!2718 = !DILocation(line: 1335, column: 5, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 1335, column: 5)
!2720 = !{!2348, !2281, i64 120}
!2721 = !DILocation(line: 1335, column: 5, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 1335, column: 5)
!2723 = !DILocation(line: 1338, column: 9, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1338, column: 9)
!2725 = !DILocation(line: 1338, column: 15, scope: !2724)
!2726 = !DILocation(line: 1338, column: 24, scope: !2724)
!2727 = !DILocation(line: 1338, column: 29, scope: !2724)
!2728 = !DILocation(line: 1338, column: 33, scope: !2724)
!2729 = !DILocation(line: 1338, column: 9, scope: !2535)
!2730 = !DILocation(line: 1339, column: 43, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1338, column: 38)
!2732 = !DILocation(line: 1339, column: 9, scope: !2731)
!2733 = !DILocation(line: 1341, column: 9, scope: !2731)
!2734 = !DILocation(line: 1345, column: 12, scope: !2535)
!2735 = !DILocation(line: 1345, column: 18, scope: !2535)
!2736 = !DILocation(line: 1345, column: 27, scope: !2535)
!2737 = !DILocation(line: 1345, column: 10, scope: !2535)
!2738 = !DILocation(line: 1346, column: 9, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1346, column: 9)
!2740 = !DILocation(line: 1346, column: 16, scope: !2739)
!2741 = !DILocation(line: 1346, column: 22, scope: !2739)
!2742 = !DILocation(line: 1346, column: 31, scope: !2739)
!2743 = !DILocation(line: 1346, column: 36, scope: !2739)
!2744 = !DILocation(line: 1346, column: 14, scope: !2739)
!2745 = !DILocation(line: 1346, column: 9, scope: !2535)
!2746 = !DILocation(line: 1347, column: 16, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1346, column: 42)
!2748 = !DILocation(line: 1347, column: 22, scope: !2747)
!2749 = !DILocation(line: 1347, column: 31, scope: !2747)
!2750 = !DILocation(line: 1347, column: 36, scope: !2747)
!2751 = !DILocation(line: 1347, column: 14, scope: !2747)
!2752 = !DILocation(line: 1348, column: 5, scope: !2747)
!2753 = !DILocation(line: 1351, column: 5, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1351, column: 5)
!2755 = !DILocation(line: 1351, column: 5, scope: !2535)
!2756 = !DILocation(line: 1351, column: 5, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !2, line: 1351, column: 5)
!2758 = !DILocation(line: 1355, column: 9, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1355, column: 9)
!2760 = !DILocation(line: 1355, column: 15, scope: !2759)
!2761 = !DILocation(line: 1355, column: 24, scope: !2759)
!2762 = !DILocation(line: 1355, column: 47, scope: !2759)
!2763 = !DILocation(line: 1355, column: 9, scope: !2535)
!2764 = !DILocation(line: 1356, column: 48, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2759, file: !2, line: 1355, column: 71)
!2766 = !DILocation(line: 1356, column: 46, scope: !2765)
!2767 = !DILocation(line: 1356, column: 9, scope: !2765)
!2768 = !DILocation(line: 1356, column: 15, scope: !2765)
!2769 = !DILocation(line: 1356, column: 24, scope: !2765)
!2770 = !DILocation(line: 1356, column: 42, scope: !2765)
!2771 = !{!2348, !2281, i64 64}
!2772 = !DILocation(line: 1357, column: 5, scope: !2765)
!2773 = !DILocation(line: 1359, column: 13, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2759, file: !2, line: 1357, column: 12)
!2775 = !DILocation(line: 1359, column: 19, scope: !2774)
!2776 = !DILocation(line: 1359, column: 28, scope: !2774)
!2777 = !DILocation(line: 1358, column: 9, scope: !2774)
!2778 = !DILocation(line: 1358, column: 15, scope: !2774)
!2779 = !DILocation(line: 1358, column: 24, scope: !2774)
!2780 = !DILocation(line: 1358, column: 42, scope: !2774)
!2781 = !DILocation(line: 1362, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1362, column: 9)
!2783 = !DILocation(line: 1362, column: 15, scope: !2782)
!2784 = !DILocation(line: 1362, column: 24, scope: !2782)
!2785 = !DILocation(line: 1362, column: 44, scope: !2782)
!2786 = !DILocation(line: 1362, column: 42, scope: !2782)
!2787 = !DILocation(line: 1362, column: 9, scope: !2535)
!2788 = !DILocation(line: 1363, column: 43, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 1362, column: 50)
!2790 = !DILocation(line: 1363, column: 9, scope: !2789)
!2791 = !DILocation(line: 1368, column: 9, scope: !2789)
!2792 = !DILocation(line: 1371, column: 9, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1371, column: 9)
!2794 = !DILocation(line: 1371, column: 15, scope: !2793)
!2795 = !DILocation(line: 1371, column: 24, scope: !2793)
!2796 = !DILocation(line: 1372, column: 12, scope: !2793)
!2797 = !DILocation(line: 1372, column: 18, scope: !2793)
!2798 = !DILocation(line: 1372, column: 27, scope: !2793)
!2799 = !DILocation(line: 1372, column: 32, scope: !2793)
!2800 = !DILocation(line: 1372, column: 36, scope: !2793)
!2801 = !DILocation(line: 1372, column: 43, scope: !2793)
!2802 = !DILocation(line: 1372, column: 49, scope: !2793)
!2803 = !DILocation(line: 1372, column: 58, scope: !2793)
!2804 = !DILocation(line: 1372, column: 63, scope: !2793)
!2805 = !DILocation(line: 1372, column: 41, scope: !2793)
!2806 = !DILocation(line: 1372, column: 9, scope: !2793)
!2807 = !DILocation(line: 1371, column: 9, scope: !2535)
!2808 = !DILocation(line: 1374, column: 43, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1373, column: 5)
!2810 = !DILocation(line: 1374, column: 9, scope: !2809)
!2811 = !DILocation(line: 1378, column: 9, scope: !2809)
!2812 = !DILocation(line: 1382, column: 5, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1382, column: 5)
!2814 = !DILocation(line: 1382, column: 5, scope: !2535)
!2815 = !DILocation(line: 1382, column: 5, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !2, line: 1382, column: 5)
!2817 = !DILocation(line: 1386, column: 9, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1386, column: 9)
!2819 = !DILocation(line: 1386, column: 15, scope: !2818)
!2820 = !DILocation(line: 1386, column: 24, scope: !2818)
!2821 = !DILocation(line: 1386, column: 50, scope: !2818)
!2822 = !DILocation(line: 1386, column: 9, scope: !2535)
!2823 = !DILocation(line: 1387, column: 51, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1386, column: 74)
!2825 = !DILocation(line: 1387, column: 49, scope: !2824)
!2826 = !DILocation(line: 1387, column: 9, scope: !2824)
!2827 = !DILocation(line: 1387, column: 15, scope: !2824)
!2828 = !DILocation(line: 1387, column: 24, scope: !2824)
!2829 = !DILocation(line: 1387, column: 45, scope: !2824)
!2830 = !{!2348, !2281, i64 80}
!2831 = !DILocation(line: 1388, column: 5, scope: !2824)
!2832 = !DILocation(line: 1390, column: 13, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1388, column: 12)
!2834 = !DILocation(line: 1390, column: 19, scope: !2833)
!2835 = !DILocation(line: 1390, column: 28, scope: !2833)
!2836 = !DILocation(line: 1389, column: 9, scope: !2833)
!2837 = !DILocation(line: 1389, column: 15, scope: !2833)
!2838 = !DILocation(line: 1389, column: 24, scope: !2833)
!2839 = !DILocation(line: 1389, column: 45, scope: !2833)
!2840 = !DILocation(line: 1393, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1393, column: 9)
!2842 = !DILocation(line: 1393, column: 15, scope: !2841)
!2843 = !DILocation(line: 1393, column: 24, scope: !2841)
!2844 = !DILocation(line: 1393, column: 47, scope: !2841)
!2845 = !DILocation(line: 1393, column: 45, scope: !2841)
!2846 = !DILocation(line: 1393, column: 9, scope: !2535)
!2847 = !DILocation(line: 1394, column: 43, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 1393, column: 53)
!2849 = !DILocation(line: 1394, column: 9, scope: !2848)
!2850 = !DILocation(line: 1399, column: 9, scope: !2848)
!2851 = !DILocation(line: 1403, column: 5, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1403, column: 5)
!2853 = !DILocation(line: 1403, column: 5, scope: !2535)
!2854 = !DILocation(line: 1403, column: 5, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 1403, column: 5)
!2856 = !DILocation(line: 1407, column: 9, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1407, column: 9)
!2858 = !DILocation(line: 1407, column: 15, scope: !2857)
!2859 = !DILocation(line: 1407, column: 24, scope: !2857)
!2860 = !DILocation(line: 1407, column: 48, scope: !2857)
!2861 = !DILocation(line: 1407, column: 9, scope: !2535)
!2862 = !DILocation(line: 1408, column: 9, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2857, file: !2, line: 1407, column: 72)
!2864 = !DILocation(line: 1408, column: 15, scope: !2863)
!2865 = !DILocation(line: 1408, column: 24, scope: !2863)
!2866 = !DILocation(line: 1408, column: 43, scope: !2863)
!2867 = !{!2348, !2281, i64 72}
!2868 = !DILocation(line: 1409, column: 5, scope: !2863)
!2869 = !DILocation(line: 1411, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2857, file: !2, line: 1409, column: 12)
!2871 = !DILocation(line: 1411, column: 19, scope: !2870)
!2872 = !DILocation(line: 1411, column: 28, scope: !2870)
!2873 = !DILocation(line: 1410, column: 9, scope: !2870)
!2874 = !DILocation(line: 1410, column: 15, scope: !2870)
!2875 = !DILocation(line: 1410, column: 24, scope: !2870)
!2876 = !DILocation(line: 1410, column: 43, scope: !2870)
!2877 = !DILocation(line: 1414, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1414, column: 9)
!2879 = !DILocation(line: 1414, column: 15, scope: !2878)
!2880 = !DILocation(line: 1414, column: 24, scope: !2878)
!2881 = !DILocation(line: 1414, column: 43, scope: !2878)
!2882 = !DILocation(line: 1415, column: 9, scope: !2878)
!2883 = !DILocation(line: 1415, column: 12, scope: !2878)
!2884 = !DILocation(line: 1415, column: 18, scope: !2878)
!2885 = !DILocation(line: 1415, column: 27, scope: !2878)
!2886 = !DILocation(line: 1415, column: 48, scope: !2878)
!2887 = !DILocation(line: 1415, column: 46, scope: !2878)
!2888 = !DILocation(line: 1414, column: 9, scope: !2535)
!2889 = !DILocation(line: 1417, column: 43, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1416, column: 5)
!2891 = !DILocation(line: 1417, column: 9, scope: !2890)
!2892 = !DILocation(line: 1423, column: 9, scope: !2890)
!2893 = !DILocation(line: 1427, column: 5, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1427, column: 5)
!2895 = !{!2348, !2281, i64 128}
!2896 = !DILocation(line: 1427, column: 5, scope: !2535)
!2897 = !DILocation(line: 1427, column: 5, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 1427, column: 5)
!2899 = !DILocation(line: 1432, column: 5, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1432, column: 5)
!2901 = !{!2348, !2281, i64 136}
!2902 = !DILocation(line: 1432, column: 5, scope: !2535)
!2903 = !DILocation(line: 1432, column: 5, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 1432, column: 5)
!2905 = !DILocation(line: 1438, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1438, column: 9)
!2907 = !DILocation(line: 1438, column: 15, scope: !2906)
!2908 = !DILocation(line: 1438, column: 24, scope: !2906)
!2909 = !DILocation(line: 1438, column: 38, scope: !2906)
!2910 = !DILocation(line: 1438, column: 9, scope: !2535)
!2911 = !DILocation(line: 1439, column: 9, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2906, file: !2, line: 1438, column: 66)
!2913 = !DILocation(line: 1439, column: 15, scope: !2912)
!2914 = !DILocation(line: 1439, column: 24, scope: !2912)
!2915 = !DILocation(line: 1439, column: 38, scope: !2912)
!2916 = !DILocation(line: 1441, column: 5, scope: !2912)
!2917 = !DILocation(line: 1443, column: 35, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1443, column: 9)
!2919 = !DILocation(line: 1443, column: 40, scope: !2918)
!2920 = !DILocation(line: 1443, column: 46, scope: !2918)
!2921 = !DILocation(line: 1443, column: 55, scope: !2918)
!2922 = !DILocation(line: 1444, column: 35, scope: !2918)
!2923 = !DILocation(line: 1444, column: 41, scope: !2918)
!2924 = !DILocation(line: 1444, column: 50, scope: !2918)
!2925 = !{!2348, !2271, i64 224}
!2926 = !DILocation(line: 1443, column: 9, scope: !2918)
!2927 = !DILocation(line: 1446, column: 9, scope: !2918)
!2928 = !DILocation(line: 1443, column: 9, scope: !2535)
!2929 = !DILocation(line: 1448, column: 9, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2918, file: !2, line: 1447, column: 5)
!2931 = !DILocation(line: 1453, column: 9, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1453, column: 9)
!2933 = !DILocation(line: 1453, column: 15, scope: !2932)
!2934 = !DILocation(line: 1453, column: 24, scope: !2932)
!2935 = !DILocation(line: 1453, column: 30, scope: !2932)
!2936 = !DILocation(line: 1453, column: 9, scope: !2535)
!2937 = !DILocation(line: 1454, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !2, line: 1454, column: 9)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1453, column: 49)
!2940 = !DILocation(line: 1454, column: 9, scope: !2939)
!2941 = !DILocation(line: 1454, column: 9, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !2, line: 1454, column: 9)
!2943 = !DILocation(line: 1457, column: 37, scope: !2939)
!2944 = !DILocation(line: 1457, column: 43, scope: !2939)
!2945 = !DILocation(line: 1457, column: 52, scope: !2939)
!2946 = !{!2348, !2271, i64 280}
!2947 = !DILocation(line: 1457, column: 9, scope: !2939)
!2948 = !DILocation(line: 1457, column: 15, scope: !2939)
!2949 = !DILocation(line: 1457, column: 24, scope: !2939)
!2950 = !DILocation(line: 1457, column: 35, scope: !2939)
!2951 = !DILocation(line: 1458, column: 38, scope: !2939)
!2952 = !DILocation(line: 1458, column: 44, scope: !2939)
!2953 = !DILocation(line: 1458, column: 53, scope: !2939)
!2954 = !{!2348, !2271, i64 288}
!2955 = !DILocation(line: 1458, column: 9, scope: !2939)
!2956 = !DILocation(line: 1458, column: 15, scope: !2939)
!2957 = !DILocation(line: 1458, column: 24, scope: !2939)
!2958 = !DILocation(line: 1458, column: 36, scope: !2939)
!2959 = !DILocation(line: 1459, column: 5, scope: !2939)
!2960 = !DILocation(line: 1461, column: 9, scope: !2563)
!2961 = !DILocation(line: 1461, column: 15, scope: !2563)
!2962 = !DILocation(line: 1461, column: 24, scope: !2563)
!2963 = !DILocation(line: 1461, column: 35, scope: !2563)
!2964 = !DILocation(line: 1461, column: 38, scope: !2563)
!2965 = !DILocation(line: 1461, column: 44, scope: !2563)
!2966 = !DILocation(line: 1461, column: 53, scope: !2563)
!2967 = !DILocation(line: 1461, column: 65, scope: !2563)
!2968 = !{!2969, !2271, i64 0}
!2969 = !{!"ngx_shm_zone_s", !2271, i64 0, !2970, i64 8, !2271, i64 56, !2271, i64 64, !2271, i64 72, !2281, i64 80}
!2970 = !{!"", !2271, i64 0, !2281, i64 8, !2353, i64 16, !2271, i64 32, !2281, i64 40}
!2971 = !DILocation(line: 1461, column: 70, scope: !2563)
!2972 = !DILocation(line: 1461, column: 9, scope: !2535)
!2973 = !DILocation(line: 1462, column: 9, scope: !2562)
!2974 = !DILocation(line: 1462, column: 26, scope: !2562)
!2975 = !DILocation(line: 1464, column: 20, scope: !2562)
!2976 = !DILocation(line: 1464, column: 26, scope: !2562)
!2977 = !DILocation(line: 1464, column: 35, scope: !2562)
!2978 = !DILocation(line: 1464, column: 18, scope: !2562)
!2979 = !DILocation(line: 1466, column: 43, scope: !2562)
!2980 = !DILocation(line: 1468, column: 29, scope: !2562)
!2981 = !DILocation(line: 1468, column: 39, scope: !2562)
!2982 = !DILocation(line: 1468, column: 43, scope: !2562)
!2983 = !DILocation(line: 1466, column: 9, scope: !2562)
!2984 = !DILocation(line: 1470, column: 9, scope: !2562)
!2985 = !DILocation(line: 1471, column: 5, scope: !2563)
!2986 = !DILocation(line: 1473, column: 5, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1473, column: 5)
!2988 = !DILocation(line: 1473, column: 5, scope: !2535)
!2989 = !DILocation(line: 1473, column: 5, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1473, column: 5)
!2991 = !DILocation(line: 1476, column: 5, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1476, column: 5)
!2993 = !DILocation(line: 1476, column: 5, scope: !2535)
!2994 = !DILocation(line: 1476, column: 5, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1476, column: 5)
!2996 = !DILocation(line: 1480, column: 5, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1480, column: 5)
!2998 = !{!2348, !2281, i64 304}
!2999 = !DILocation(line: 1480, column: 5, scope: !2535)
!3000 = !DILocation(line: 1480, column: 5, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 1480, column: 5)
!3002 = !DILocation(line: 1485, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1485, column: 9)
!3004 = !DILocation(line: 1485, column: 15, scope: !3003)
!3005 = !DILocation(line: 1485, column: 24, scope: !3003)
!3006 = !DILocation(line: 1485, column: 40, scope: !3003)
!3007 = !DILocation(line: 1485, column: 9, scope: !2535)
!3008 = !DILocation(line: 1486, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !2, line: 1485, column: 68)
!3010 = !DILocation(line: 1486, column: 15, scope: !3009)
!3011 = !DILocation(line: 1486, column: 24, scope: !3009)
!3012 = !DILocation(line: 1486, column: 40, scope: !3009)
!3013 = !DILocation(line: 1488, column: 5, scope: !3009)
!3014 = !DILocation(line: 1490, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1490, column: 9)
!3016 = !DILocation(line: 1490, column: 15, scope: !3015)
!3017 = !DILocation(line: 1490, column: 24, scope: !3015)
!3018 = !DILocation(line: 1490, column: 40, scope: !3015)
!3019 = !DILocation(line: 1490, column: 9, scope: !2535)
!3020 = !DILocation(line: 1491, column: 9, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3015, file: !2, line: 1490, column: 70)
!3022 = !DILocation(line: 1491, column: 15, scope: !3021)
!3023 = !DILocation(line: 1491, column: 24, scope: !3021)
!3024 = !DILocation(line: 1491, column: 40, scope: !3021)
!3025 = !DILocation(line: 1492, column: 5, scope: !3021)
!3026 = !DILocation(line: 1494, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1494, column: 9)
!3028 = !DILocation(line: 1494, column: 15, scope: !3027)
!3029 = !DILocation(line: 1494, column: 24, scope: !3027)
!3030 = !{!2348, !2281, i64 312}
!3031 = !DILocation(line: 1494, column: 38, scope: !3027)
!3032 = !DILocation(line: 1494, column: 9, scope: !2535)
!3033 = !DILocation(line: 1495, column: 40, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3027, file: !2, line: 1494, column: 44)
!3035 = !DILocation(line: 1495, column: 46, scope: !3034)
!3036 = !DILocation(line: 1495, column: 55, scope: !3034)
!3037 = !DILocation(line: 1495, column: 9, scope: !3034)
!3038 = !DILocation(line: 1495, column: 15, scope: !3034)
!3039 = !DILocation(line: 1495, column: 24, scope: !3034)
!3040 = !DILocation(line: 1495, column: 38, scope: !3034)
!3041 = !DILocation(line: 1496, column: 5, scope: !3034)
!3042 = !DILocation(line: 1498, column: 5, scope: !2535)
!3043 = !DILocation(line: 1498, column: 11, scope: !2535)
!3044 = !DILocation(line: 1498, column: 20, scope: !2535)
!3045 = !DILocation(line: 1498, column: 34, scope: !2535)
!3046 = !DILocation(line: 1500, column: 5, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1500, column: 5)
!3048 = !DILocation(line: 1500, column: 5, scope: !2535)
!3049 = !DILocation(line: 1500, column: 5, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 1500, column: 5)
!3051 = !DILocation(line: 1503, column: 5, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1503, column: 5)
!3053 = !DILocation(line: 1503, column: 5, scope: !2535)
!3054 = !DILocation(line: 1503, column: 5, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !2, line: 1503, column: 5)
!3056 = !DILocation(line: 1506, column: 5, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1506, column: 5)
!3058 = !DILocation(line: 1506, column: 5, scope: !2535)
!3059 = !DILocation(line: 1506, column: 5, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !2, line: 1506, column: 5)
!3061 = !DILocation(line: 1509, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1509, column: 9)
!3063 = !DILocation(line: 1509, column: 15, scope: !3062)
!3064 = !DILocation(line: 1509, column: 25, scope: !3062)
!3065 = !DILocation(line: 1509, column: 31, scope: !3062)
!3066 = !{!2348, !2271, i64 616}
!3067 = !DILocation(line: 1509, column: 36, scope: !3062)
!3068 = !DILocation(line: 1509, column: 9, scope: !2535)
!3069 = !DILocation(line: 1510, column: 9, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !2, line: 1509, column: 45)
!3071 = !DILocation(line: 1510, column: 15, scope: !3070)
!3072 = !DILocation(line: 1510, column: 27, scope: !3070)
!3073 = !DILocation(line: 1510, column: 33, scope: !3070)
!3074 = !{i64 0, i64 8, !2704, i64 8, i64 8, !2270, i64 16, i64 8, !2270, i64 24, i64 8, !2270, i64 32, i64 8, !2270}
!3075 = !DILocation(line: 1511, column: 5, scope: !3070)
!3076 = !DILocation(line: 1513, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1513, column: 9)
!3078 = !DILocation(line: 1513, column: 15, scope: !3077)
!3079 = !DILocation(line: 1513, column: 24, scope: !3077)
!3080 = !DILocation(line: 1513, column: 30, scope: !3077)
!3081 = !DILocation(line: 1513, column: 33, scope: !3077)
!3082 = !DILocation(line: 1513, column: 39, scope: !3077)
!3083 = !DILocation(line: 1513, column: 49, scope: !3077)
!3084 = !DILocation(line: 1513, column: 55, scope: !3077)
!3085 = !DILocation(line: 1513, column: 60, scope: !3077)
!3086 = !DILocation(line: 1513, column: 9, scope: !2535)
!3087 = !DILocation(line: 1514, column: 42, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3077, file: !2, line: 1513, column: 69)
!3089 = !DILocation(line: 1514, column: 9, scope: !3088)
!3090 = !DILocation(line: 1516, column: 5, scope: !3088)
!3091 = !DILocation(line: 1518, column: 5, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1518, column: 5)
!3093 = !DILocation(line: 1518, column: 5, scope: !2535)
!3094 = !DILocation(line: 1518, column: 5, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3092, file: !2, line: 1518, column: 5)
!3096 = !DILocation(line: 1521, column: 5, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1521, column: 5)
!3098 = !DILocation(line: 1521, column: 5, scope: !2535)
!3099 = !DILocation(line: 1521, column: 5, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3097, file: !2, line: 1521, column: 5)
!3101 = !DILocation(line: 1524, column: 5, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1524, column: 5)
!3103 = !DILocation(line: 1524, column: 5, scope: !2535)
!3104 = !DILocation(line: 1524, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 1524, column: 5)
!3106 = !DILocation(line: 1527, column: 5, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1527, column: 5)
!3108 = !DILocation(line: 1527, column: 5, scope: !2535)
!3109 = !DILocation(line: 1527, column: 5, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 1527, column: 5)
!3111 = !DILocation(line: 1530, column: 5, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1530, column: 5)
!3113 = !DILocation(line: 1530, column: 5, scope: !2535)
!3114 = !DILocation(line: 1530, column: 5, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 1530, column: 5)
!3116 = !DILocation(line: 1535, column: 5, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1535, column: 5)
!3118 = !DILocation(line: 1535, column: 5, scope: !2535)
!3119 = !DILocation(line: 1535, column: 5, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !2, line: 1535, column: 5)
!3121 = !DILocation(line: 1537, column: 5, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1537, column: 5)
!3123 = !DILocation(line: 1537, column: 5, scope: !2535)
!3124 = !DILocation(line: 1537, column: 5, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !2, line: 1537, column: 5)
!3126 = !DILocation(line: 1540, column: 5, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1540, column: 5)
!3128 = !DILocation(line: 1540, column: 5, scope: !2535)
!3129 = !DILocation(line: 1540, column: 5, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 1540, column: 5)
!3131 = !DILocation(line: 1543, column: 10, scope: !2535)
!3132 = !DILocation(line: 1543, column: 19, scope: !2535)
!3133 = !{!3134, !2281, i64 16}
!3134 = !{!"", !2271, i64 0, !2271, i64 8, !2281, i64 16, !2281, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48}
!3135 = !DILocation(line: 1544, column: 24, scope: !2535)
!3136 = !DILocation(line: 1544, column: 10, scope: !2535)
!3137 = !DILocation(line: 1544, column: 22, scope: !2535)
!3138 = !{!3134, !2281, i64 24}
!3139 = !DILocation(line: 1545, column: 10, scope: !2535)
!3140 = !DILocation(line: 1545, column: 15, scope: !2535)
!3141 = !{!3134, !2271, i64 32}
!3142 = !DILocation(line: 1547, column: 45, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1547, column: 9)
!3144 = !DILocation(line: 1547, column: 50, scope: !3143)
!3145 = !DILocation(line: 1547, column: 56, scope: !3143)
!3146 = !DILocation(line: 1548, column: 14, scope: !3143)
!3147 = !DILocation(line: 1548, column: 20, scope: !3143)
!3148 = !DILocation(line: 1547, column: 9, scope: !3143)
!3149 = !DILocation(line: 1549, column: 9, scope: !3143)
!3150 = !DILocation(line: 1547, column: 9, scope: !2535)
!3151 = !DILocation(line: 1551, column: 9, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3143, file: !2, line: 1550, column: 5)
!3153 = !DILocation(line: 1554, column: 12, scope: !2535)
!3154 = !{!2280, !2271, i64 56}
!3155 = !{!3156, !2271, i64 16}
!3156 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16}
!3157 = !{!3158, !2281, i64 0}
!3158 = !{!"ngx_module_s", !2281, i64 0, !2281, i64 8, !2271, i64 16, !2281, i64 24, !2281, i64 32, !2281, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2281, i64 72, !2271, i64 80, !2271, i64 88, !2271, i64 96, !2271, i64 104, !2271, i64 112, !2271, i64 120, !2271, i64 128, !2281, i64 136, !2281, i64 144, !2281, i64 152, !2281, i64 160, !2281, i64 168, !2281, i64 176, !2281, i64 184, !2281, i64 192}
!3159 = !DILocation(line: 1554, column: 10, scope: !2535)
!3160 = !DILocation(line: 1556, column: 9, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1556, column: 9)
!3162 = !DILocation(line: 1556, column: 15, scope: !3161)
!3163 = !DILocation(line: 1557, column: 9, scope: !3161)
!3164 = !DILocation(line: 1557, column: 12, scope: !3161)
!3165 = !DILocation(line: 1557, column: 18, scope: !3161)
!3166 = !DILocation(line: 1557, column: 27, scope: !3161)
!3167 = !{!2348, !2271, i64 0}
!3168 = !DILocation(line: 1557, column: 36, scope: !3161)
!3169 = !DILocation(line: 1557, column: 44, scope: !3161)
!3170 = !DILocation(line: 1557, column: 47, scope: !3161)
!3171 = !DILocation(line: 1557, column: 53, scope: !3161)
!3172 = !{!2348, !2271, i64 592}
!3173 = !DILocation(line: 1557, column: 66, scope: !3161)
!3174 = !DILocation(line: 1556, column: 9, scope: !2535)
!3175 = !DILocation(line: 1559, column: 35, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 1558, column: 5)
!3177 = !DILocation(line: 1559, column: 41, scope: !3176)
!3178 = !DILocation(line: 1559, column: 50, scope: !3176)
!3179 = !DILocation(line: 1559, column: 9, scope: !3176)
!3180 = !DILocation(line: 1559, column: 15, scope: !3176)
!3181 = !DILocation(line: 1559, column: 24, scope: !3176)
!3182 = !DILocation(line: 1559, column: 33, scope: !3176)
!3183 = !DILocation(line: 1560, column: 30, scope: !3176)
!3184 = !DILocation(line: 1560, column: 36, scope: !3176)
!3185 = !DILocation(line: 1560, column: 9, scope: !3176)
!3186 = !DILocation(line: 1560, column: 15, scope: !3176)
!3187 = !DILocation(line: 1560, column: 28, scope: !3176)
!3188 = !DILocation(line: 1561, column: 29, scope: !3176)
!3189 = !DILocation(line: 1561, column: 35, scope: !3176)
!3190 = !{!2348, !2271, i64 600}
!3191 = !DILocation(line: 1561, column: 9, scope: !3176)
!3192 = !DILocation(line: 1561, column: 15, scope: !3176)
!3193 = !DILocation(line: 1561, column: 27, scope: !3176)
!3194 = !DILocation(line: 1562, column: 5, scope: !3176)
!3195 = !DILocation(line: 1564, column: 9, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1564, column: 9)
!3197 = !DILocation(line: 1564, column: 15, scope: !3196)
!3198 = !DILocation(line: 1564, column: 25, scope: !3196)
!3199 = !DILocation(line: 1564, column: 28, scope: !3196)
!3200 = !DILocation(line: 1564, column: 34, scope: !3196)
!3201 = !{!3202, !2271, i64 56}
!3202 = !{!"ngx_http_core_loc_conf_s", !2353, i64 0, !2352, i64 16, !2352, i64 16, !2352, i64 16, !2352, i64 16, !2352, i64 16, !2352, i64 16, !2352, i64 16, !2352, i64 17, !2271, i64 24, !2271, i64 32, !2352, i64 40, !2271, i64 48, !2271, i64 56, !2281, i64 64, !2353, i64 72, !2353, i64 88, !2271, i64 104, !2271, i64 112, !2271, i64 120, !2351, i64 128, !2353, i64 144, !2281, i64 160, !2281, i64 168, !2281, i64 176, !2281, i64 184, !2281, i64 192, !2281, i64 200, !2281, i64 208, !2281, i64 216, !2281, i64 224, !2281, i64 232, !2281, i64 240, !2281, i64 248, !2281, i64 256, !2281, i64 264, !2281, i64 272, !2281, i64 280, !2281, i64 288, !2271, i64 296, !2281, i64 304, !2281, i64 312, !2281, i64 320, !2281, i64 328, !2281, i64 336, !2281, i64 344, !2281, i64 352, !2281, i64 360, !2281, i64 368, !2281, i64 376, !2281, i64 384, !2281, i64 392, !2281, i64 400, !2281, i64 408, !2281, i64 416, !2281, i64 424, !2281, i64 432, !2281, i64 440, !2281, i64 448, !2281, i64 456, !2281, i64 464, !2281, i64 472, !2281, i64 480, !2281, i64 488, !2281, i64 496, !2281, i64 504, !2281, i64 512, !2281, i64 520, !2281, i64 528, !2281, i64 536, !2281, i64 544, !2271, i64 552, !2271, i64 560, !2271, i64 568, !2271, i64 576, !2281, i64 584, !2281, i64 592, !2281, i64 600, !2281, i64 608, !2271, i64 616, !2281, i64 624, !2281, i64 632, !2271, i64 640}
!3203 = !DILocation(line: 1564, column: 42, scope: !3196)
!3204 = !DILocation(line: 1565, column: 9, scope: !3196)
!3205 = !DILocation(line: 1565, column: 13, scope: !3196)
!3206 = !DILocation(line: 1565, column: 19, scope: !3196)
!3207 = !DILocation(line: 1565, column: 28, scope: !3196)
!3208 = !DILocation(line: 1565, column: 37, scope: !3196)
!3209 = !DILocation(line: 1565, column: 40, scope: !3196)
!3210 = !DILocation(line: 1565, column: 46, scope: !3196)
!3211 = !DILocation(line: 1564, column: 9, scope: !2535)
!3212 = !DILocation(line: 1567, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 1566, column: 5)
!3214 = !DILocation(line: 1567, column: 15, scope: !3213)
!3215 = !DILocation(line: 1567, column: 23, scope: !3213)
!3216 = !DILocation(line: 1568, column: 5, scope: !3213)
!3217 = !DILocation(line: 1570, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1570, column: 9)
!3219 = !DILocation(line: 1570, column: 15, scope: !3218)
!3220 = !{!2348, !2271, i64 584}
!3221 = !DILocation(line: 1570, column: 29, scope: !3218)
!3222 = !DILocation(line: 1570, column: 9, scope: !2535)
!3223 = !DILocation(line: 1571, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3218, file: !2, line: 1570, column: 38)
!3225 = !DILocation(line: 1571, column: 15, scope: !3224)
!3226 = !DILocation(line: 1571, column: 24, scope: !3224)
!3227 = !DILocation(line: 1571, column: 30, scope: !3224)
!3228 = !{i64 0, i64 8, !2270, i64 8, i64 8, !2270, i64 16, i64 8, !2270, i64 24, i64 8, !2704, i64 32, i64 8, !2270, i64 40, i64 8, !2704}
!3229 = !DILocation(line: 1573, column: 9, scope: !3224)
!3230 = !DILocation(line: 1573, column: 15, scope: !3224)
!3231 = !DILocation(line: 1573, column: 30, scope: !3224)
!3232 = !DILocation(line: 1573, column: 36, scope: !3224)
!3233 = !DILocation(line: 1575, column: 31, scope: !3224)
!3234 = !DILocation(line: 1575, column: 37, scope: !3224)
!3235 = !DILocation(line: 1575, column: 9, scope: !3224)
!3236 = !DILocation(line: 1575, column: 15, scope: !3224)
!3237 = !DILocation(line: 1575, column: 29, scope: !3224)
!3238 = !DILocation(line: 1576, column: 5, scope: !3224)
!3239 = !DILocation(line: 1578, column: 36, scope: !2535)
!3240 = !DILocation(line: 1578, column: 40, scope: !2535)
!3241 = !DILocation(line: 1578, column: 47, scope: !2535)
!3242 = !DILocation(line: 1578, column: 53, scope: !2535)
!3243 = !DILocation(line: 1578, column: 10, scope: !2535)
!3244 = !DILocation(line: 1578, column: 8, scope: !2535)
!3245 = !DILocation(line: 1579, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1579, column: 9)
!3247 = !DILocation(line: 1579, column: 12, scope: !3246)
!3248 = !DILocation(line: 1579, column: 9, scope: !2535)
!3249 = !DILocation(line: 1580, column: 9, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 1579, column: 23)
!3251 = !DILocation(line: 1585, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1585, column: 9)
!3253 = !DILocation(line: 1585, column: 15, scope: !3252)
!3254 = !DILocation(line: 1585, column: 24, scope: !3252)
!3255 = !DILocation(line: 1585, column: 9, scope: !2535)
!3256 = !DILocation(line: 1586, column: 40, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3252, file: !2, line: 1585, column: 31)
!3258 = !DILocation(line: 1586, column: 44, scope: !3257)
!3259 = !DILocation(line: 1586, column: 51, scope: !3257)
!3260 = !DILocation(line: 1586, column: 57, scope: !3257)
!3261 = !DILocation(line: 1586, column: 14, scope: !3257)
!3262 = !DILocation(line: 1586, column: 12, scope: !3257)
!3263 = !DILocation(line: 1588, column: 13, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 1588, column: 13)
!3265 = !DILocation(line: 1588, column: 16, scope: !3264)
!3266 = !DILocation(line: 1588, column: 13, scope: !3257)
!3267 = !DILocation(line: 1589, column: 13, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !2, line: 1588, column: 27)
!3269 = !DILocation(line: 1591, column: 5, scope: !3257)
!3270 = !DILocation(line: 1600, column: 9, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1600, column: 9)
!3272 = !DILocation(line: 1600, column: 15, scope: !3271)
!3273 = !DILocation(line: 1600, column: 22, scope: !3271)
!3274 = !DILocation(line: 1600, column: 27, scope: !3271)
!3275 = !{!2348, !2271, i64 520}
!3276 = !DILocation(line: 1600, column: 35, scope: !3271)
!3277 = !DILocation(line: 1601, column: 9, scope: !3271)
!3278 = !DILocation(line: 1601, column: 12, scope: !3271)
!3279 = !DILocation(line: 1601, column: 18, scope: !3271)
!3280 = !DILocation(line: 1601, column: 35, scope: !3271)
!3281 = !DILocation(line: 1601, column: 41, scope: !3271)
!3282 = !DILocation(line: 1601, column: 32, scope: !3271)
!3283 = !DILocation(line: 1600, column: 9, scope: !2535)
!3284 = !DILocation(line: 1603, column: 9, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 1602, column: 5)
!3286 = !DILocation(line: 1603, column: 15, scope: !3285)
!3287 = !DILocation(line: 1603, column: 24, scope: !3285)
!3288 = !DILocation(line: 1603, column: 30, scope: !3285)
!3289 = !DILocation(line: 1605, column: 9, scope: !3285)
!3290 = !DILocation(line: 1605, column: 15, scope: !3285)
!3291 = !DILocation(line: 1605, column: 30, scope: !3285)
!3292 = !DILocation(line: 1605, column: 36, scope: !3285)
!3293 = !DILocation(line: 1607, column: 5, scope: !3285)
!3294 = !DILocation(line: 1609, column: 5, scope: !2535)
!3295 = !DILocation(line: 1610, column: 1, scope: !2535)
!3296 = !DISubprogram(name: "ngx_pcalloc", scope: !394, file: !394, line: 81, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!16, !391, !21}
!3299 = distinct !DISubprogram(name: "ngx_array_init", scope: !518, file: !518, line: 32, type: !3300, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!85, !932, !391, !11, !21}
!3302 = !{!3303, !3304, !3305, !3306}
!3303 = !DILocalVariable(name: "array", arg: 1, scope: !3299, file: !518, line: 32, type: !932)
!3304 = !DILocalVariable(name: "pool", arg: 2, scope: !3299, file: !518, line: 32, type: !391)
!3305 = !DILocalVariable(name: "n", arg: 3, scope: !3299, file: !518, line: 32, type: !11)
!3306 = !DILocalVariable(name: "size", arg: 4, scope: !3299, file: !518, line: 32, type: !21)
!3307 = !DILocation(line: 32, column: 29, scope: !3299)
!3308 = !DILocation(line: 32, column: 48, scope: !3299)
!3309 = !DILocation(line: 32, column: 65, scope: !3299)
!3310 = !DILocation(line: 32, column: 75, scope: !3299)
!3311 = !DILocation(line: 39, column: 5, scope: !3299)
!3312 = !DILocation(line: 39, column: 12, scope: !3299)
!3313 = !DILocation(line: 39, column: 18, scope: !3299)
!3314 = !{!3315, !2281, i64 8}
!3315 = !{!"", !2271, i64 0, !2281, i64 8, !2281, i64 16, !2281, i64 24, !2271, i64 32}
!3316 = !DILocation(line: 40, column: 19, scope: !3299)
!3317 = !DILocation(line: 40, column: 5, scope: !3299)
!3318 = !DILocation(line: 40, column: 12, scope: !3299)
!3319 = !DILocation(line: 40, column: 17, scope: !3299)
!3320 = !{!3315, !2281, i64 16}
!3321 = !DILocation(line: 41, column: 21, scope: !3299)
!3322 = !DILocation(line: 41, column: 5, scope: !3299)
!3323 = !DILocation(line: 41, column: 12, scope: !3299)
!3324 = !DILocation(line: 41, column: 19, scope: !3299)
!3325 = !{!3315, !2281, i64 24}
!3326 = !DILocation(line: 42, column: 19, scope: !3299)
!3327 = !DILocation(line: 42, column: 5, scope: !3299)
!3328 = !DILocation(line: 42, column: 12, scope: !3299)
!3329 = !DILocation(line: 42, column: 17, scope: !3299)
!3330 = !{!3315, !2271, i64 32}
!3331 = !DILocation(line: 44, column: 30, scope: !3299)
!3332 = !DILocation(line: 44, column: 36, scope: !3299)
!3333 = !DILocation(line: 44, column: 40, scope: !3299)
!3334 = !DILocation(line: 44, column: 38, scope: !3299)
!3335 = !DILocation(line: 44, column: 19, scope: !3299)
!3336 = !DILocation(line: 44, column: 5, scope: !3299)
!3337 = !DILocation(line: 44, column: 12, scope: !3299)
!3338 = !DILocation(line: 44, column: 17, scope: !3299)
!3339 = !{!3315, !2271, i64 0}
!3340 = !DILocation(line: 45, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3299, file: !518, line: 45, column: 9)
!3342 = !DILocation(line: 45, column: 16, scope: !3341)
!3343 = !DILocation(line: 45, column: 21, scope: !3341)
!3344 = !DILocation(line: 45, column: 9, scope: !3299)
!3345 = !DILocation(line: 46, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !518, line: 45, column: 30)
!3347 = !DILocation(line: 49, column: 5, scope: !3299)
!3348 = !DILocation(line: 50, column: 1, scope: !3299)
!3349 = !DISubprogram(name: "ngx_palloc", scope: !394, file: !394, line: 79, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3350 = !DISubprogram(name: "ngx_conf_log_error", scope: !154, file: !154, line: 276, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !11, !926, !3353, !963, null}
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !3354, line: 16, baseType: !159)
!3354 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!3355 = !DISubprogram(name: "ngx_conf_merge_path_value", scope: !246, file: !246, line: 155, type: !3356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!186, !926, !3358, !635, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!3360 = !DISubprogram(name: "ngx_http_upstream_hide_headers_hash", scope: !739, file: !739, line: 428, type: !3361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!85, !926, !908, !908, !756, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!3364 = distinct !DISubprogram(name: "ngx_http_scgi_handler", scope: !2, file: !2, line: 477, type: !1422, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3365)
!3365 = !{!3366, !3367, !3368, !3378, !3379, !3380}
!3366 = !DILocalVariable(name: "r", arg: 1, scope: !3364, file: !2, line: 477, type: !90)
!3367 = !DILocalVariable(name: "rc", scope: !3364, file: !2, line: 479, type: !85)
!3368 = !DILocalVariable(name: "status", scope: !3364, file: !2, line: 480, type: !3369)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_status_t", file: !92, line: 72, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 66, size: 320, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !3371, file: !92, line: 67, baseType: !11, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3371, file: !92, line: 68, baseType: !11, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3371, file: !92, line: 69, baseType: !11, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3371, file: !92, line: 70, baseType: !23, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3371, file: !92, line: 71, baseType: !23, size: 64, offset: 256)
!3378 = !DILocalVariable(name: "u", scope: !3364, file: !2, line: 481, type: !736)
!3379 = !DILocalVariable(name: "scf", scope: !3364, file: !2, line: 482, type: !2307)
!3380 = !DILocalVariable(name: "smcf", scope: !3364, file: !2, line: 484, type: !2265)
!3381 = !DILocation(line: 477, column: 43, scope: !3364)
!3382 = !DILocation(line: 479, column: 5, scope: !3364)
!3383 = !DILocation(line: 479, column: 33, scope: !3364)
!3384 = !DILocation(line: 480, column: 5, scope: !3364)
!3385 = !DILocation(line: 480, column: 33, scope: !3364)
!3386 = !DILocation(line: 481, column: 5, scope: !3364)
!3387 = !DILocation(line: 481, column: 33, scope: !3364)
!3388 = !DILocation(line: 482, column: 5, scope: !3364)
!3389 = !DILocation(line: 482, column: 33, scope: !3364)
!3390 = !DILocation(line: 484, column: 5, scope: !3364)
!3391 = !DILocation(line: 484, column: 33, scope: !3364)
!3392 = !DILocation(line: 487, column: 34, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 487, column: 9)
!3394 = !DILocation(line: 487, column: 9, scope: !3393)
!3395 = !DILocation(line: 487, column: 37, scope: !3393)
!3396 = !DILocation(line: 487, column: 9, scope: !3364)
!3397 = !DILocation(line: 488, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 487, column: 48)
!3399 = !DILocation(line: 491, column: 26, scope: !3364)
!3400 = !DILocation(line: 491, column: 29, scope: !3364)
!3401 = !{!3402, !2271, i64 88}
!3402 = !{!"ngx_http_request_s", !2352, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2271, i64 72, !2271, i64 80, !2271, i64 88, !2271, i64 96, !3403, i64 104, !3406, i64 480, !2271, i64 888, !2281, i64 896, !2281, i64 904, !2281, i64 912, !2281, i64 920, !2281, i64 928, !2353, i64 936, !2353, i64 952, !2353, i64 968, !2353, i64 984, !2353, i64 1000, !2353, i64 1016, !2353, i64 1032, !2353, i64 1048, !2271, i64 1064, !2271, i64 1072, !2271, i64 1080, !2271, i64 1088, !2271, i64 1096, !2271, i64 1104, !2281, i64 1112, !2271, i64 1120, !2281, i64 1128, !2271, i64 1136, !2281, i64 1144, !2281, i64 1152, !2281, i64 1160, !2281, i64 1168, !2281, i64 1176, !2271, i64 1184, !2271, i64 1192, !2271, i64 1200, !2271, i64 1208, !2352, i64 1216, !2352, i64 1218, !2352, i64 1219, !2352, i64 1220, !2352, i64 1220, !2352, i64 1220, !2352, i64 1220, !2352, i64 1220, !2352, i64 1221, !2352, i64 1221, !2352, i64 1221, !2352, i64 1221, !2352, i64 1221, !2352, i64 1221, !2352, i64 1221, !2352, i64 1222, !2352, i64 1222, !2352, i64 1222, !2352, i64 1222, !2352, i64 1222, !2352, i64 1222, !2352, i64 1223, !2352, i64 1223, !2352, i64 1223, !2352, i64 1223, !2352, i64 1223, !2352, i64 1223, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1224, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1225, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1226, !2352, i64 1227, !2352, i64 1227, !2352, i64 1227, !2352, i64 1227, !2352, i64 1227, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1228, !2352, i64 1229, !2352, i64 1229, !2281, i64 1232, !2281, i64 1240, !2281, i64 1248, !2272, i64 1256, !2271, i64 1288, !2271, i64 1296, !2271, i64 1304, !2271, i64 1312, !2271, i64 1320, !2271, i64 1328, !2271, i64 1336, !2271, i64 1344, !2271, i64 1352, !2271, i64 1360, !2271, i64 1368, !2271, i64 1376, !2271, i64 1384, !2271, i64 1392, !2271, i64 1400, !2271, i64 1408, !2271, i64 1416, !2352, i64 1424, !2352, i64 1426}
!3403 = !{!"", !3404, i64 0, !2271, i64 56, !2271, i64 64, !2271, i64 72, !2271, i64 80, !2271, i64 88, !2271, i64 96, !2271, i64 104, !2271, i64 112, !2271, i64 120, !2271, i64 128, !2271, i64 136, !2271, i64 144, !2271, i64 152, !2271, i64 160, !2271, i64 168, !2271, i64 176, !2271, i64 184, !2271, i64 192, !2271, i64 200, !2271, i64 208, !2271, i64 216, !3315, i64 224, !2353, i64 264, !2353, i64 280, !3315, i64 296, !2353, i64 336, !2281, i64 352, !2281, i64 360, !2352, i64 368, !2352, i64 368, !2352, i64 368, !2352, i64 368, !2352, i64 368, !2352, i64 368, !2352, i64 368, !2352, i64 369, !2352, i64 369}
!3404 = !{!"", !2271, i64 0, !3405, i64 8, !2281, i64 32, !2281, i64 40, !2271, i64 48}
!3405 = !{!"ngx_list_part_s", !2271, i64 0, !2281, i64 8, !2271, i64 16}
!3406 = !{!"", !3404, i64 0, !3404, i64 56, !2281, i64 112, !2353, i64 120, !2271, i64 136, !2271, i64 144, !2271, i64 152, !2271, i64 160, !2271, i64 168, !2271, i64 176, !2271, i64 184, !2271, i64 192, !2271, i64 200, !2271, i64 208, !2271, i64 216, !2271, i64 224, !2271, i64 232, !2281, i64 240, !2353, i64 248, !2353, i64 264, !2271, i64 280, !2281, i64 288, !3315, i64 296, !3315, i64 336, !2281, i64 376, !2281, i64 384, !2281, i64 392, !2281, i64 400}
!3407 = !DILocation(line: 491, column: 14, scope: !3364)
!3408 = !DILocation(line: 491, column: 12, scope: !3364)
!3409 = !DILocation(line: 492, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 492, column: 9)
!3411 = !DILocation(line: 492, column: 16, scope: !3410)
!3412 = !DILocation(line: 492, column: 9, scope: !3364)
!3413 = !DILocation(line: 493, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3410, file: !2, line: 492, column: 25)
!3415 = !DILocation(line: 496, column: 5, scope: !3364)
!3416 = !{!3402, !2271, i64 16}
!3417 = !DILocation(line: 498, column: 11, scope: !3364)
!3418 = !{!3402, !2271, i64 40}
!3419 = !DILocation(line: 498, column: 9, scope: !3364)
!3420 = !DILocation(line: 500, column: 9, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 500, column: 9)
!3422 = !DILocation(line: 500, column: 14, scope: !3421)
!3423 = !DILocation(line: 500, column: 9, scope: !3364)
!3424 = !DILocation(line: 501, column: 32, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 501, column: 13)
!3426 = distinct !DILexicalBlock(scope: !3421, file: !2, line: 500, column: 28)
!3427 = !DILocation(line: 501, column: 35, scope: !3425)
!3428 = !DILocation(line: 501, column: 13, scope: !3425)
!3429 = !DILocation(line: 501, column: 40, scope: !3425)
!3430 = !DILocation(line: 501, column: 13, scope: !3426)
!3431 = !DILocation(line: 502, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3425, file: !2, line: 501, column: 51)
!3433 = !DILocation(line: 504, column: 5, scope: !3426)
!3434 = !DILocation(line: 506, column: 9, scope: !3364)
!3435 = !DILocation(line: 506, column: 12, scope: !3364)
!3436 = !{!3402, !2271, i64 72}
!3437 = !DILocation(line: 506, column: 7, scope: !3364)
!3438 = !DILocation(line: 508, column: 5, scope: !3364)
!3439 = !{!3440, !2281, i64 1056}
!3440 = !{!"ngx_http_upstream_s", !2271, i64 0, !2271, i64 8, !3441, i64 16, !2271, i64 144, !2271, i64 152, !3442, i64 160, !3443, i64 264, !2271, i64 304, !2271, i64 312, !2271, i64 320, !2281, i64 328, !2281, i64 336, !2281, i64 344, !3444, i64 352, !2271, i64 736, !3445, i64 744, !3445, i64 824, !2281, i64 904, !2271, i64 912, !2271, i64 920, !2271, i64 928, !2271, i64 936, !2271, i64 944, !2271, i64 952, !2271, i64 960, !2271, i64 968, !2271, i64 976, !2271, i64 984, !2271, i64 992, !2271, i64 1000, !2271, i64 1008, !2271, i64 1016, !2281, i64 1024, !2271, i64 1032, !2353, i64 1040, !2353, i64 1056, !2353, i64 1072, !2353, i64 1088, !2271, i64 1104, !2352, i64 1112, !2352, i64 1112, !2352, i64 1112, !2352, i64 1112, !2352, i64 1112, !2352, i64 1112, !2352, i64 1113, !2352, i64 1113, !2352, i64 1113, !2352, i64 1113, !2352, i64 1113, !2352, i64 1113}
!3441 = !{!"ngx_peer_connection_s", !2271, i64 0, !2271, i64 8, !2352, i64 16, !2271, i64 24, !2281, i64 32, !2281, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2271, i64 72, !2271, i64 80, !2271, i64 88, !2271, i64 96, !2352, i64 104, !2352, i64 108, !2271, i64 112, !2352, i64 120, !2352, i64 120, !2352, i64 120, !2352, i64 120}
!3442 = !{!"ngx_output_chain_ctx_s", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2352, i64 32, !2352, i64 32, !2352, i64 32, !2352, i64 32, !2352, i64 32, !2352, i64 32, !2281, i64 40, !2271, i64 48, !2281, i64 56, !2350, i64 64, !2271, i64 80, !2271, i64 88, !2271, i64 96}
!3443 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2281, i64 32}
!3444 = !{!"", !3404, i64 0, !3404, i64 56, !2281, i64 112, !2353, i64 120, !2271, i64 136, !2271, i64 144, !2271, i64 152, !2271, i64 160, !2271, i64 168, !2271, i64 176, !2271, i64 184, !2271, i64 192, !2271, i64 200, !2271, i64 208, !2271, i64 216, !2271, i64 224, !2271, i64 232, !2271, i64 240, !2271, i64 248, !2271, i64 256, !2271, i64 264, !2271, i64 272, !3315, i64 280, !3315, i64 320, !2281, i64 360, !2281, i64 368, !2352, i64 376, !2352, i64 376}
!3445 = !{!"ngx_buf_s", !2271, i64 0, !2271, i64 8, !2281, i64 16, !2281, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 73, !2352, i64 73, !2352, i64 73, !2352, i64 76}
!3446 = !{!3440, !2271, i64 1064}
!3447 = !DILocation(line: 509, column: 5, scope: !3364)
!3448 = !DILocation(line: 509, column: 8, scope: !3364)
!3449 = !DILocation(line: 509, column: 15, scope: !3364)
!3450 = !DILocation(line: 509, column: 19, scope: !3364)
!3451 = !{!3440, !2271, i64 240}
!3452 = !DILocation(line: 511, column: 16, scope: !3364)
!3453 = !DILocation(line: 511, column: 21, scope: !3364)
!3454 = !DILocation(line: 511, column: 5, scope: !3364)
!3455 = !DILocation(line: 511, column: 8, scope: !3364)
!3456 = !DILocation(line: 511, column: 13, scope: !3364)
!3457 = !{!3440, !2271, i64 304}
!3458 = !DILocation(line: 514, column: 12, scope: !3364)
!3459 = !{!3402, !2271, i64 24}
!3460 = !DILocation(line: 514, column: 10, scope: !3364)
!3461 = !DILocation(line: 516, column: 18, scope: !3364)
!3462 = !DILocation(line: 516, column: 24, scope: !3364)
!3463 = !DILocation(line: 516, column: 5, scope: !3364)
!3464 = !DILocation(line: 516, column: 8, scope: !3364)
!3465 = !DILocation(line: 516, column: 15, scope: !3364)
!3466 = !{!3440, !2271, i64 320}
!3467 = !DILocation(line: 517, column: 5, scope: !3364)
!3468 = !DILocation(line: 517, column: 8, scope: !3364)
!3469 = !DILocation(line: 517, column: 19, scope: !3364)
!3470 = !{!3440, !2271, i64 960}
!3471 = !DILocation(line: 520, column: 5, scope: !3364)
!3472 = !DILocation(line: 520, column: 8, scope: !3364)
!3473 = !DILocation(line: 520, column: 23, scope: !3364)
!3474 = !{!3440, !2271, i64 968}
!3475 = !DILocation(line: 521, column: 5, scope: !3364)
!3476 = !DILocation(line: 521, column: 8, scope: !3364)
!3477 = !DILocation(line: 521, column: 23, scope: !3364)
!3478 = !{!3440, !2271, i64 976}
!3479 = !DILocation(line: 522, column: 5, scope: !3364)
!3480 = !DILocation(line: 522, column: 8, scope: !3364)
!3481 = !DILocation(line: 522, column: 23, scope: !3364)
!3482 = !{!3440, !2271, i64 984}
!3483 = !DILocation(line: 523, column: 5, scope: !3364)
!3484 = !DILocation(line: 523, column: 8, scope: !3364)
!3485 = !DILocation(line: 523, column: 22, scope: !3364)
!3486 = !{!3440, !2271, i64 992}
!3487 = !DILocation(line: 524, column: 5, scope: !3364)
!3488 = !DILocation(line: 524, column: 8, scope: !3364)
!3489 = !DILocation(line: 524, column: 25, scope: !3364)
!3490 = !{!3440, !2271, i64 1000}
!3491 = !DILocation(line: 525, column: 5, scope: !3364)
!3492 = !DILocation(line: 525, column: 8, scope: !3364)
!3493 = !DILocation(line: 525, column: 14, scope: !3364)
!3494 = !{!3402, !2281, i64 1232}
!3495 = !DILocation(line: 527, column: 20, scope: !3364)
!3496 = !DILocation(line: 527, column: 25, scope: !3364)
!3497 = !DILocation(line: 527, column: 34, scope: !3364)
!3498 = !DILocation(line: 527, column: 5, scope: !3364)
!3499 = !DILocation(line: 527, column: 8, scope: !3364)
!3500 = !DILocation(line: 527, column: 18, scope: !3364)
!3501 = !DILocation(line: 529, column: 27, scope: !3364)
!3502 = !DILocation(line: 529, column: 30, scope: !3364)
!3503 = !DILocation(line: 529, column: 15, scope: !3364)
!3504 = !DILocation(line: 529, column: 5, scope: !3364)
!3505 = !DILocation(line: 529, column: 8, scope: !3364)
!3506 = !DILocation(line: 529, column: 13, scope: !3364)
!3507 = !{!3440, !2271, i64 144}
!3508 = !DILocation(line: 530, column: 9, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 530, column: 9)
!3510 = !DILocation(line: 530, column: 12, scope: !3509)
!3511 = !DILocation(line: 530, column: 17, scope: !3509)
!3512 = !DILocation(line: 530, column: 9, scope: !3364)
!3513 = !DILocation(line: 531, column: 9, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3509, file: !2, line: 530, column: 26)
!3515 = !DILocation(line: 534, column: 5, scope: !3364)
!3516 = !DILocation(line: 534, column: 8, scope: !3364)
!3517 = !DILocation(line: 534, column: 14, scope: !3364)
!3518 = !DILocation(line: 534, column: 27, scope: !3364)
!3519 = !{!3520, !2271, i64 72}
!3520 = !{!"ngx_event_pipe_s", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2271, i64 72, !2271, i64 80, !2271, i64 88, !2271, i64 96, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 104, !2352, i64 105, !2352, i64 105, !2352, i64 105, !2352, i64 105, !2281, i64 112, !2350, i64 120, !2271, i64 136, !2281, i64 144, !2281, i64 152, !2281, i64 160, !2281, i64 168, !2281, i64 176, !2281, i64 184, !2281, i64 192, !2281, i64 200, !2271, i64 208, !2271, i64 216, !2271, i64 224, !2281, i64 232, !2271, i64 240, !2281, i64 248, !2281, i64 256, !2271, i64 264, !2352, i64 272}
!3521 = !DILocation(line: 535, column: 26, scope: !3364)
!3522 = !DILocation(line: 535, column: 5, scope: !3364)
!3523 = !DILocation(line: 535, column: 8, scope: !3364)
!3524 = !DILocation(line: 535, column: 14, scope: !3364)
!3525 = !DILocation(line: 535, column: 24, scope: !3364)
!3526 = !{!3520, !2271, i64 80}
!3527 = !DILocation(line: 537, column: 10, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 537, column: 9)
!3529 = !DILocation(line: 537, column: 15, scope: !3528)
!3530 = !DILocation(line: 537, column: 24, scope: !3528)
!3531 = !DILocation(line: 538, column: 9, scope: !3528)
!3532 = !DILocation(line: 538, column: 12, scope: !3528)
!3533 = !DILocation(line: 538, column: 17, scope: !3528)
!3534 = !DILocation(line: 538, column: 26, scope: !3528)
!3535 = !DILocation(line: 539, column: 9, scope: !3528)
!3536 = !DILocation(line: 539, column: 13, scope: !3528)
!3537 = !DILocation(line: 539, column: 16, scope: !3528)
!3538 = !DILocation(line: 539, column: 27, scope: !3528)
!3539 = !DILocation(line: 537, column: 9, scope: !3364)
!3540 = !DILocation(line: 541, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3528, file: !2, line: 540, column: 5)
!3542 = !DILocation(line: 541, column: 12, scope: !3541)
!3543 = !DILocation(line: 541, column: 38, scope: !3541)
!3544 = !DILocation(line: 542, column: 5, scope: !3541)
!3545 = !DILocation(line: 544, column: 44, scope: !3364)
!3546 = !DILocation(line: 544, column: 10, scope: !3364)
!3547 = !DILocation(line: 544, column: 8, scope: !3364)
!3548 = !DILocation(line: 546, column: 9, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3364, file: !2, line: 546, column: 9)
!3550 = !DILocation(line: 546, column: 12, scope: !3549)
!3551 = !DILocation(line: 546, column: 9, scope: !3364)
!3552 = !DILocation(line: 547, column: 16, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 546, column: 42)
!3554 = !DILocation(line: 547, column: 9, scope: !3553)
!3555 = !DILocation(line: 550, column: 5, scope: !3364)
!3556 = !DILocation(line: 551, column: 1, scope: !3364)
!3557 = distinct !DISubprogram(name: "ngx_http_scgi_init_params", scope: !2, file: !2, line: 1614, type: !3558, scopeLine: 1616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3562)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!85, !926, !2307, !3560, !3561}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3583, !3584, !3592, !3593, !3616, !3623}
!3563 = !DILocalVariable(name: "cf", arg: 1, scope: !3557, file: !2, line: 1614, type: !926)
!3564 = !DILocalVariable(name: "conf", arg: 2, scope: !3557, file: !2, line: 1614, type: !2307)
!3565 = !DILocalVariable(name: "params", arg: 3, scope: !3557, file: !2, line: 1615, type: !3560)
!3566 = !DILocalVariable(name: "default_params", arg: 4, scope: !3557, file: !2, line: 1615, type: !3561)
!3567 = !DILocalVariable(name: "p", scope: !3557, file: !2, line: 1617, type: !23)
!3568 = !DILocalVariable(name: "size", scope: !3557, file: !2, line: 1618, type: !21)
!3569 = !DILocalVariable(name: "code", scope: !3557, file: !2, line: 1619, type: !43)
!3570 = !DILocalVariable(name: "i", scope: !3557, file: !2, line: 1620, type: !11)
!3571 = !DILocalVariable(name: "nsrc", scope: !3557, file: !2, line: 1620, type: !11)
!3572 = !DILocalVariable(name: "headers_names", scope: !3557, file: !2, line: 1621, type: !517)
!3573 = !DILocalVariable(name: "params_merged", scope: !3557, file: !2, line: 1621, type: !517)
!3574 = !DILocalVariable(name: "h", scope: !3557, file: !2, line: 1622, type: !3561)
!3575 = !DILocalVariable(name: "hk", scope: !3557, file: !2, line: 1623, type: !3576)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_key_t", file: !1114, line: 39, baseType: !3578)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 35, size: 256, elements: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3578, file: !1114, line: 36, baseType: !72, size: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "key_hash", scope: !3578, file: !1114, line: 37, baseType: !11, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3578, file: !1114, line: 38, baseType: !16, size: 64, offset: 192)
!3583 = !DILocalVariable(name: "hash", scope: !3557, file: !2, line: 1624, type: !2545)
!3584 = !DILocalVariable(name: "src", scope: !3557, file: !2, line: 1625, type: !3585)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_param_t", file: !739, line: 417, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 413, size: 320, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3587, file: !739, line: 414, baseType: !72, size: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3587, file: !739, line: 415, baseType: !72, size: 128, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "skip_empty", scope: !3587, file: !739, line: 416, baseType: !11, size: 64, offset: 256)
!3592 = !DILocalVariable(name: "s", scope: !3557, file: !2, line: 1625, type: !3585)
!3593 = !DILocalVariable(name: "sc", scope: !3557, file: !2, line: 1626, type: !3594)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_compile_t", file: !46, line: 63, baseType: !3595)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 39, size: 704, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !3595, file: !46, line: 40, baseType: !926, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3595, file: !46, line: 41, baseType: !756, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !3595, file: !46, line: 43, baseType: !3600, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !3595, file: !46, line: 44, baseType: !3600, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !3595, file: !46, line: 45, baseType: !3600, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !3595, file: !46, line: 47, baseType: !11, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !3595, file: !46, line: 48, baseType: !11, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "captures_mask", scope: !3595, file: !46, line: 49, baseType: !11, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3595, file: !46, line: 50, baseType: !11, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !3595, file: !46, line: 52, baseType: !16, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "compile_args", scope: !3595, file: !46, line: 54, baseType: !65, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "complete_lengths", scope: !3595, file: !46, line: 55, baseType: !65, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "complete_values", scope: !3595, file: !46, line: 56, baseType: !65, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !3595, file: !46, line: 57, baseType: !65, size: 1, offset: 643, flags: DIFlagBitField, extraData: i64 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !3595, file: !46, line: 58, baseType: !65, size: 1, offset: 644, flags: DIFlagBitField, extraData: i64 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "root_prefix", scope: !3595, file: !46, line: 59, baseType: !65, size: 1, offset: 645, flags: DIFlagBitField, extraData: i64 640)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dup_capture", scope: !3595, file: !46, line: 61, baseType: !65, size: 1, offset: 646, flags: DIFlagBitField, extraData: i64 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3595, file: !46, line: 62, baseType: !65, size: 1, offset: 647, flags: DIFlagBitField, extraData: i64 640)
!3616 = !DILocalVariable(name: "copy", scope: !3557, file: !2, line: 1627, type: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_copy_code_t", file: !46, line: 92, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 89, size: 128, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3619, file: !46, line: 90, baseType: !1911, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3619, file: !46, line: 91, baseType: !13, size: 64, offset: 64)
!3623 = !DILabel(scope: !3624, name: "next", file: !2, line: 1703)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 1683, column: 28)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 1663, column: 25)
!3626 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1663, column: 9)
!3627 = !DILocation(line: 1614, column: 39, scope: !3557)
!3628 = !DILocation(line: 1614, column: 69, scope: !3557)
!3629 = !DILocation(line: 1615, column: 29, scope: !3557)
!3630 = !DILocation(line: 1615, column: 51, scope: !3557)
!3631 = !DILocation(line: 1617, column: 5, scope: !3557)
!3632 = !DILocation(line: 1617, column: 35, scope: !3557)
!3633 = !DILocation(line: 1618, column: 5, scope: !3557)
!3634 = !DILocation(line: 1618, column: 35, scope: !3557)
!3635 = !DILocation(line: 1619, column: 5, scope: !3557)
!3636 = !DILocation(line: 1619, column: 35, scope: !3557)
!3637 = !DILocation(line: 1620, column: 5, scope: !3557)
!3638 = !DILocation(line: 1620, column: 35, scope: !3557)
!3639 = !DILocation(line: 1620, column: 38, scope: !3557)
!3640 = !DILocation(line: 1621, column: 5, scope: !3557)
!3641 = !DILocation(line: 1621, column: 35, scope: !3557)
!3642 = !DILocation(line: 1621, column: 50, scope: !3557)
!3643 = !DILocation(line: 1622, column: 5, scope: !3557)
!3644 = !DILocation(line: 1622, column: 35, scope: !3557)
!3645 = !DILocation(line: 1623, column: 5, scope: !3557)
!3646 = !DILocation(line: 1623, column: 35, scope: !3557)
!3647 = !DILocation(line: 1624, column: 5, scope: !3557)
!3648 = !DILocation(line: 1624, column: 35, scope: !3557)
!3649 = !DILocation(line: 1625, column: 5, scope: !3557)
!3650 = !DILocation(line: 1625, column: 35, scope: !3557)
!3651 = !DILocation(line: 1625, column: 41, scope: !3557)
!3652 = !DILocation(line: 1626, column: 5, scope: !3557)
!3653 = !DILocation(line: 1626, column: 35, scope: !3557)
!3654 = !DILocation(line: 1627, column: 5, scope: !3557)
!3655 = !DILocation(line: 1627, column: 35, scope: !3557)
!3656 = !DILocation(line: 1629, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1629, column: 9)
!3658 = !DILocation(line: 1629, column: 17, scope: !3657)
!3659 = !DILocation(line: 1629, column: 22, scope: !3657)
!3660 = !{!2354, !2271, i64 32}
!3661 = !DILocation(line: 1629, column: 9, scope: !3557)
!3662 = !DILocation(line: 1630, column: 9, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3657, file: !2, line: 1629, column: 31)
!3664 = !DILocation(line: 1633, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1633, column: 9)
!3666 = !DILocation(line: 1633, column: 15, scope: !3665)
!3667 = !DILocation(line: 1633, column: 29, scope: !3665)
!3668 = !DILocation(line: 1633, column: 37, scope: !3665)
!3669 = !DILocation(line: 1633, column: 40, scope: !3665)
!3670 = !DILocation(line: 1633, column: 55, scope: !3665)
!3671 = !DILocation(line: 1633, column: 9, scope: !3557)
!3672 = !DILocation(line: 1634, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3665, file: !2, line: 1633, column: 64)
!3674 = !DILocation(line: 1634, column: 17, scope: !3673)
!3675 = !DILocation(line: 1634, column: 22, scope: !3673)
!3676 = !DILocation(line: 1634, column: 30, scope: !3673)
!3677 = !DILocation(line: 1635, column: 9, scope: !3673)
!3678 = !DILocation(line: 1638, column: 40, scope: !3557)
!3679 = !DILocation(line: 1638, column: 44, scope: !3557)
!3680 = !DILocation(line: 1638, column: 23, scope: !3557)
!3681 = !DILocation(line: 1638, column: 5, scope: !3557)
!3682 = !DILocation(line: 1638, column: 13, scope: !3557)
!3683 = !DILocation(line: 1638, column: 21, scope: !3557)
!3684 = !{!2354, !2271, i64 8}
!3685 = !DILocation(line: 1639, column: 9, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1639, column: 9)
!3687 = !DILocation(line: 1639, column: 17, scope: !3686)
!3688 = !DILocation(line: 1639, column: 25, scope: !3686)
!3689 = !DILocation(line: 1639, column: 9, scope: !3557)
!3690 = !DILocation(line: 1640, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3686, file: !2, line: 1639, column: 34)
!3692 = !DILocation(line: 1643, column: 39, scope: !3557)
!3693 = !DILocation(line: 1643, column: 43, scope: !3557)
!3694 = !DILocation(line: 1643, column: 22, scope: !3557)
!3695 = !DILocation(line: 1643, column: 5, scope: !3557)
!3696 = !DILocation(line: 1643, column: 13, scope: !3557)
!3697 = !DILocation(line: 1643, column: 20, scope: !3557)
!3698 = !{!2354, !2271, i64 16}
!3699 = !DILocation(line: 1644, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1644, column: 9)
!3701 = !DILocation(line: 1644, column: 17, scope: !3700)
!3702 = !DILocation(line: 1644, column: 24, scope: !3700)
!3703 = !DILocation(line: 1644, column: 9, scope: !3557)
!3704 = !DILocation(line: 1645, column: 9, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3700, file: !2, line: 1644, column: 33)
!3706 = !DILocation(line: 1648, column: 40, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1648, column: 9)
!3708 = !DILocation(line: 1648, column: 44, scope: !3707)
!3709 = !{!2280, !2271, i64 32}
!3710 = !DILocation(line: 1648, column: 9, scope: !3707)
!3711 = !DILocation(line: 1649, column: 9, scope: !3707)
!3712 = !DILocation(line: 1648, column: 9, scope: !3557)
!3713 = !DILocation(line: 1651, column: 9, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3707, file: !2, line: 1650, column: 5)
!3715 = !DILocation(line: 1654, column: 9, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1654, column: 9)
!3717 = !DILocation(line: 1654, column: 15, scope: !3716)
!3718 = !DILocation(line: 1654, column: 9, scope: !3557)
!3719 = !DILocation(line: 1655, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !2, line: 1654, column: 30)
!3721 = !DILocation(line: 1655, column: 21, scope: !3720)
!3722 = !DILocation(line: 1655, column: 36, scope: !3720)
!3723 = !DILocation(line: 1655, column: 13, scope: !3720)
!3724 = !DILocation(line: 1656, column: 16, scope: !3720)
!3725 = !DILocation(line: 1656, column: 22, scope: !3720)
!3726 = !DILocation(line: 1656, column: 37, scope: !3720)
!3727 = !DILocation(line: 1656, column: 14, scope: !3720)
!3728 = !DILocation(line: 1658, column: 5, scope: !3720)
!3729 = !DILocation(line: 1659, column: 13, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3716, file: !2, line: 1658, column: 12)
!3731 = !DILocation(line: 1660, column: 14, scope: !3730)
!3732 = !DILocation(line: 1663, column: 9, scope: !3626)
!3733 = !DILocation(line: 1663, column: 9, scope: !3557)
!3734 = !DILocation(line: 1664, column: 44, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 1664, column: 13)
!3736 = !DILocation(line: 1664, column: 48, scope: !3735)
!3737 = !DILocation(line: 1664, column: 13, scope: !3735)
!3738 = !DILocation(line: 1666, column: 13, scope: !3735)
!3739 = !DILocation(line: 1664, column: 13, scope: !3625)
!3740 = !DILocation(line: 1668, column: 13, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3735, file: !2, line: 1667, column: 9)
!3742 = !DILocation(line: 1671, column: 16, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 1671, column: 9)
!3744 = !DILocation(line: 1671, column: 14, scope: !3743)
!3745 = !DILocation(line: 1671, column: 21, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3743, file: !2, line: 1671, column: 9)
!3747 = !DILocation(line: 1671, column: 25, scope: !3746)
!3748 = !DILocation(line: 1671, column: 23, scope: !3746)
!3749 = !DILocation(line: 1671, column: 9, scope: !3743)
!3750 = !DILocation(line: 1673, column: 17, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3746, file: !2, line: 1671, column: 36)
!3752 = !DILocation(line: 1673, column: 15, scope: !3751)
!3753 = !DILocation(line: 1674, column: 17, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !2, line: 1674, column: 17)
!3755 = !DILocation(line: 1674, column: 19, scope: !3754)
!3756 = !DILocation(line: 1674, column: 17, scope: !3751)
!3757 = !DILocation(line: 1675, column: 17, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !2, line: 1674, column: 28)
!3759 = !DILocation(line: 1678, column: 14, scope: !3751)
!3760 = !DILocation(line: 1678, column: 18, scope: !3751)
!3761 = !DILocation(line: 1678, column: 22, scope: !3751)
!3762 = !{i64 0, i64 8, !2704, i64 8, i64 8, !2270, i64 16, i64 8, !2704, i64 24, i64 8, !2270, i64 32, i64 8, !2704}
!3763 = !DILocation(line: 1679, column: 9, scope: !3751)
!3764 = !DILocation(line: 1671, column: 32, scope: !3746)
!3765 = !DILocation(line: 1671, column: 9, scope: !3746)
!3766 = distinct !{!3766, !3749, !3767, !3768}
!3767 = !DILocation(line: 1679, column: 9, scope: !3743)
!3768 = !{!"llvm.loop.mustprogress"}
!3769 = !DILocation(line: 1681, column: 13, scope: !3625)
!3770 = !DILocation(line: 1681, column: 11, scope: !3625)
!3771 = !DILocation(line: 1683, column: 9, scope: !3625)
!3772 = !DILocation(line: 1683, column: 16, scope: !3625)
!3773 = !DILocation(line: 1683, column: 19, scope: !3625)
!3774 = !DILocation(line: 1683, column: 23, scope: !3625)
!3775 = !{!3776, !2281, i64 0}
!3776 = !{!"", !2353, i64 0, !2353, i64 16}
!3777 = !DILocation(line: 1685, column: 33, scope: !3624)
!3778 = !DILocation(line: 1685, column: 17, scope: !3624)
!3779 = !DILocation(line: 1686, column: 34, scope: !3624)
!3780 = !DILocation(line: 1686, column: 18, scope: !3624)
!3781 = !DILocation(line: 1688, column: 20, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 1688, column: 13)
!3783 = !DILocation(line: 1688, column: 18, scope: !3782)
!3784 = !DILocation(line: 1688, column: 25, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !2, line: 1688, column: 13)
!3786 = !DILocation(line: 1688, column: 29, scope: !3785)
!3787 = !DILocation(line: 1688, column: 27, scope: !3785)
!3788 = !DILocation(line: 1688, column: 13, scope: !3782)
!3789 = !DILocation(line: 1689, column: 36, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !2, line: 1689, column: 21)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 1688, column: 40)
!3792 = !DILocation(line: 1689, column: 39, scope: !3790)
!3793 = !DILocation(line: 1689, column: 43, scope: !3790)
!3794 = !{!3776, !2271, i64 8}
!3795 = !DILocation(line: 1689, column: 49, scope: !3790)
!3796 = !DILocation(line: 1689, column: 53, scope: !3790)
!3797 = !DILocation(line: 1689, column: 56, scope: !3790)
!3798 = !DILocation(line: 1689, column: 60, scope: !3790)
!3799 = !{!3800, !2271, i64 8}
!3800 = !{!"", !2353, i64 0, !2353, i64 16, !2281, i64 32}
!3801 = !DILocation(line: 1689, column: 21, scope: !3790)
!3802 = !DILocation(line: 1689, column: 66, scope: !3790)
!3803 = !DILocation(line: 1689, column: 21, scope: !3791)
!3804 = !DILocation(line: 1690, column: 21, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3790, file: !2, line: 1689, column: 72)
!3806 = !DILocation(line: 1692, column: 13, scope: !3791)
!3807 = !DILocation(line: 1688, column: 36, scope: !3785)
!3808 = !DILocation(line: 1688, column: 13, scope: !3785)
!3809 = distinct !{!3809, !3788, !3810, !3768}
!3810 = !DILocation(line: 1692, column: 13, scope: !3782)
!3811 = !DILocation(line: 1694, column: 17, scope: !3624)
!3812 = !DILocation(line: 1694, column: 15, scope: !3624)
!3813 = !DILocation(line: 1695, column: 17, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 1695, column: 17)
!3815 = !DILocation(line: 1695, column: 19, scope: !3814)
!3816 = !DILocation(line: 1695, column: 17, scope: !3624)
!3817 = !DILocation(line: 1696, column: 17, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !2, line: 1695, column: 28)
!3819 = !DILocation(line: 1699, column: 13, scope: !3624)
!3820 = !DILocation(line: 1699, column: 16, scope: !3624)
!3821 = !DILocation(line: 1699, column: 22, scope: !3624)
!3822 = !DILocation(line: 1699, column: 25, scope: !3624)
!3823 = !{i64 0, i64 8, !2704, i64 8, i64 8, !2270}
!3824 = !DILocation(line: 1700, column: 13, scope: !3624)
!3825 = !DILocation(line: 1700, column: 16, scope: !3624)
!3826 = !DILocation(line: 1700, column: 24, scope: !3624)
!3827 = !DILocation(line: 1700, column: 27, scope: !3624)
!3828 = !DILocation(line: 1701, column: 13, scope: !3624)
!3829 = !DILocation(line: 1701, column: 16, scope: !3624)
!3830 = !DILocation(line: 1701, column: 27, scope: !3624)
!3831 = !{!3800, !2281, i64 32}
!3832 = !DILocation(line: 1703, column: 9, scope: !3624)
!3833 = !DILocation(line: 1705, column: 14, scope: !3624)
!3834 = distinct !{!3834, !3771, !3835, !3768}
!3835 = !DILocation(line: 1706, column: 9, scope: !3625)
!3836 = !DILocation(line: 1708, column: 29, scope: !3625)
!3837 = !DILocation(line: 1708, column: 13, scope: !3625)
!3838 = !DILocation(line: 1709, column: 30, scope: !3625)
!3839 = !DILocation(line: 1709, column: 14, scope: !3625)
!3840 = !DILocation(line: 1710, column: 5, scope: !3625)
!3841 = !DILocation(line: 1712, column: 12, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1712, column: 5)
!3843 = !DILocation(line: 1712, column: 10, scope: !3842)
!3844 = !DILocation(line: 1712, column: 17, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !2, line: 1712, column: 5)
!3846 = !DILocation(line: 1712, column: 21, scope: !3845)
!3847 = !DILocation(line: 1712, column: 19, scope: !3845)
!3848 = !DILocation(line: 1712, column: 5, scope: !3842)
!3849 = !DILocation(line: 1714, column: 13, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1714, column: 13)
!3851 = distinct !DILexicalBlock(scope: !3845, file: !2, line: 1712, column: 32)
!3852 = !DILocation(line: 1714, column: 17, scope: !3850)
!3853 = !DILocation(line: 1714, column: 20, scope: !3850)
!3854 = !DILocation(line: 1714, column: 24, scope: !3850)
!3855 = !{!3800, !2281, i64 0}
!3856 = !DILocation(line: 1714, column: 28, scope: !3850)
!3857 = !DILocation(line: 1715, column: 13, scope: !3850)
!3858 = !DILocation(line: 1715, column: 16, scope: !3850)
!3859 = !DILocation(line: 1715, column: 75, scope: !3850)
!3860 = !DILocation(line: 1714, column: 13, scope: !3851)
!3861 = !DILocation(line: 1717, column: 18, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3850, file: !2, line: 1716, column: 9)
!3863 = !DILocation(line: 1717, column: 16, scope: !3862)
!3864 = !DILocation(line: 1718, column: 17, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !2, line: 1718, column: 17)
!3866 = !DILocation(line: 1718, column: 20, scope: !3865)
!3867 = !DILocation(line: 1718, column: 17, scope: !3862)
!3868 = !DILocation(line: 1719, column: 17, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 1718, column: 29)
!3870 = !DILocation(line: 1722, column: 27, scope: !3862)
!3871 = !DILocation(line: 1722, column: 31, scope: !3862)
!3872 = !DILocation(line: 1722, column: 34, scope: !3862)
!3873 = !DILocation(line: 1722, column: 38, scope: !3862)
!3874 = !DILocation(line: 1722, column: 42, scope: !3862)
!3875 = !DILocation(line: 1722, column: 13, scope: !3862)
!3876 = !DILocation(line: 1722, column: 17, scope: !3862)
!3877 = !DILocation(line: 1722, column: 21, scope: !3862)
!3878 = !DILocation(line: 1722, column: 25, scope: !3862)
!3879 = !{!3880, !2281, i64 0}
!3880 = !{!"", !2353, i64 0, !2281, i64 16, !2271, i64 24}
!3881 = !DILocation(line: 1723, column: 28, scope: !3862)
!3882 = !DILocation(line: 1723, column: 32, scope: !3862)
!3883 = !DILocation(line: 1723, column: 35, scope: !3862)
!3884 = !DILocation(line: 1723, column: 39, scope: !3862)
!3885 = !DILocation(line: 1723, column: 44, scope: !3862)
!3886 = !DILocation(line: 1723, column: 13, scope: !3862)
!3887 = !DILocation(line: 1723, column: 17, scope: !3862)
!3888 = !DILocation(line: 1723, column: 21, scope: !3862)
!3889 = !DILocation(line: 1723, column: 26, scope: !3862)
!3890 = !{!3880, !2271, i64 8}
!3891 = !DILocation(line: 1724, column: 44, scope: !3862)
!3892 = !DILocation(line: 1724, column: 48, scope: !3862)
!3893 = !DILocation(line: 1724, column: 52, scope: !3862)
!3894 = !DILocation(line: 1724, column: 58, scope: !3862)
!3895 = !DILocation(line: 1724, column: 62, scope: !3862)
!3896 = !DILocation(line: 1724, column: 66, scope: !3862)
!3897 = !DILocation(line: 1724, column: 28, scope: !3862)
!3898 = !DILocation(line: 1724, column: 13, scope: !3862)
!3899 = !DILocation(line: 1724, column: 17, scope: !3862)
!3900 = !DILocation(line: 1724, column: 26, scope: !3862)
!3901 = !{!3880, !2281, i64 16}
!3902 = !DILocation(line: 1725, column: 13, scope: !3862)
!3903 = !DILocation(line: 1725, column: 17, scope: !3862)
!3904 = !DILocation(line: 1725, column: 23, scope: !3862)
!3905 = !{!3880, !2271, i64 24}
!3906 = !DILocation(line: 1727, column: 17, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3862, file: !2, line: 1727, column: 17)
!3908 = !DILocation(line: 1727, column: 21, scope: !3907)
!3909 = !DILocation(line: 1727, column: 24, scope: !3907)
!3910 = !DILocation(line: 1727, column: 30, scope: !3907)
!3911 = !{!3800, !2281, i64 16}
!3912 = !DILocation(line: 1727, column: 34, scope: !3907)
!3913 = !DILocation(line: 1727, column: 17, scope: !3862)
!3914 = !DILocation(line: 1728, column: 17, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3907, file: !2, line: 1727, column: 40)
!3916 = !DILocation(line: 1730, column: 9, scope: !3862)
!3917 = !DILocation(line: 1732, column: 33, scope: !3851)
!3918 = !DILocation(line: 1732, column: 41, scope: !3851)
!3919 = !DILocation(line: 1732, column: 16, scope: !3851)
!3920 = !DILocation(line: 1732, column: 14, scope: !3851)
!3921 = !DILocation(line: 1734, column: 13, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1734, column: 13)
!3923 = !DILocation(line: 1734, column: 18, scope: !3922)
!3924 = !DILocation(line: 1734, column: 13, scope: !3851)
!3925 = !DILocation(line: 1735, column: 13, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3922, file: !2, line: 1734, column: 27)
!3927 = !DILocation(line: 1738, column: 9, scope: !3851)
!3928 = !DILocation(line: 1738, column: 15, scope: !3851)
!3929 = !DILocation(line: 1738, column: 20, scope: !3851)
!3930 = !{!2351, !2271, i64 0}
!3931 = !DILocation(line: 1740, column: 21, scope: !3851)
!3932 = !DILocation(line: 1740, column: 25, scope: !3851)
!3933 = !DILocation(line: 1740, column: 28, scope: !3851)
!3934 = !DILocation(line: 1740, column: 32, scope: !3851)
!3935 = !DILocation(line: 1740, column: 36, scope: !3851)
!3936 = !DILocation(line: 1740, column: 9, scope: !3851)
!3937 = !DILocation(line: 1740, column: 15, scope: !3851)
!3938 = !DILocation(line: 1740, column: 19, scope: !3851)
!3939 = !{!2351, !2281, i64 8}
!3940 = !DILocation(line: 1742, column: 33, scope: !3851)
!3941 = !DILocation(line: 1742, column: 41, scope: !3851)
!3942 = !DILocation(line: 1742, column: 16, scope: !3851)
!3943 = !DILocation(line: 1742, column: 14, scope: !3851)
!3944 = !DILocation(line: 1744, column: 13, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1744, column: 13)
!3946 = !DILocation(line: 1744, column: 18, scope: !3945)
!3947 = !DILocation(line: 1744, column: 13, scope: !3851)
!3948 = !DILocation(line: 1745, column: 13, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 1744, column: 27)
!3950 = !DILocation(line: 1748, column: 9, scope: !3851)
!3951 = !DILocation(line: 1748, column: 15, scope: !3851)
!3952 = !DILocation(line: 1748, column: 20, scope: !3851)
!3953 = !DILocation(line: 1750, column: 21, scope: !3851)
!3954 = !DILocation(line: 1750, column: 25, scope: !3851)
!3955 = !DILocation(line: 1750, column: 28, scope: !3851)
!3956 = !DILocation(line: 1750, column: 9, scope: !3851)
!3957 = !DILocation(line: 1750, column: 15, scope: !3851)
!3958 = !DILocation(line: 1750, column: 19, scope: !3851)
!3959 = !DILocation(line: 1754, column: 19, scope: !3851)
!3960 = !DILocation(line: 1754, column: 23, scope: !3851)
!3961 = !DILocation(line: 1754, column: 26, scope: !3851)
!3962 = !DILocation(line: 1754, column: 30, scope: !3851)
!3963 = !DILocation(line: 1754, column: 17, scope: !3851)
!3964 = !DILocation(line: 1754, column: 34, scope: !3851)
!3965 = !DILocation(line: 1754, column: 38, scope: !3851)
!3966 = !DILocation(line: 1754, column: 58, scope: !3851)
!3967 = !DILocation(line: 1755, column: 16, scope: !3851)
!3968 = !DILocation(line: 1753, column: 14, scope: !3851)
!3969 = !DILocation(line: 1757, column: 33, scope: !3851)
!3970 = !DILocation(line: 1757, column: 41, scope: !3851)
!3971 = !DILocation(line: 1757, column: 49, scope: !3851)
!3972 = !DILocation(line: 1757, column: 16, scope: !3851)
!3973 = !DILocation(line: 1757, column: 14, scope: !3851)
!3974 = !DILocation(line: 1758, column: 13, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1758, column: 13)
!3976 = !DILocation(line: 1758, column: 18, scope: !3975)
!3977 = !DILocation(line: 1758, column: 13, scope: !3851)
!3978 = !DILocation(line: 1759, column: 13, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3975, file: !2, line: 1758, column: 27)
!3980 = !DILocation(line: 1762, column: 9, scope: !3851)
!3981 = !DILocation(line: 1762, column: 15, scope: !3851)
!3982 = !DILocation(line: 1762, column: 20, scope: !3851)
!3983 = !DILocation(line: 1763, column: 21, scope: !3851)
!3984 = !DILocation(line: 1763, column: 25, scope: !3851)
!3985 = !DILocation(line: 1763, column: 28, scope: !3851)
!3986 = !DILocation(line: 1763, column: 32, scope: !3851)
!3987 = !DILocation(line: 1763, column: 36, scope: !3851)
!3988 = !DILocation(line: 1763, column: 9, scope: !3851)
!3989 = !DILocation(line: 1763, column: 15, scope: !3851)
!3990 = !DILocation(line: 1763, column: 19, scope: !3851)
!3991 = !DILocation(line: 1765, column: 24, scope: !3851)
!3992 = !DILocation(line: 1765, column: 29, scope: !3851)
!3993 = !DILocation(line: 1765, column: 11, scope: !3851)
!3994 = !DILocation(line: 1766, column: 28, scope: !3851)
!3995 = !DILocation(line: 1766, column: 31, scope: !3851)
!3996 = !DILocation(line: 1766, column: 35, scope: !3851)
!3997 = !DILocation(line: 1766, column: 38, scope: !3851)
!3998 = !DILocation(line: 1766, column: 42, scope: !3851)
!3999 = !DILocation(line: 1766, column: 48, scope: !3851)
!4000 = !DILocation(line: 1766, column: 52, scope: !3851)
!4001 = !DILocation(line: 1766, column: 55, scope: !3851)
!4002 = !DILocation(line: 1766, column: 59, scope: !3851)
!4003 = !DILocation(line: 1766, column: 63, scope: !3851)
!4004 = !DILocation(line: 1766, column: 16, scope: !3851)
!4005 = !DILocation(line: 1769, column: 9, scope: !3851)
!4006 = !DILocation(line: 1771, column: 17, scope: !3851)
!4007 = !DILocation(line: 1771, column: 12, scope: !3851)
!4008 = !DILocation(line: 1771, column: 15, scope: !3851)
!4009 = !{!4010, !2271, i64 0}
!4010 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2271, i64 24, !2271, i64 32, !2281, i64 40, !2281, i64 48, !2281, i64 56, !2281, i64 64, !2271, i64 72, !2352, i64 80, !2352, i64 80, !2352, i64 80, !2352, i64 80, !2352, i64 80, !2352, i64 80, !2352, i64 80, !2352, i64 80}
!4011 = !DILocation(line: 1772, column: 22, scope: !3851)
!4012 = !DILocation(line: 1772, column: 26, scope: !3851)
!4013 = !DILocation(line: 1772, column: 29, scope: !3851)
!4014 = !DILocation(line: 1772, column: 12, scope: !3851)
!4015 = !DILocation(line: 1772, column: 19, scope: !3851)
!4016 = !{!4010, !2271, i64 8}
!4017 = !DILocation(line: 1773, column: 23, scope: !3851)
!4018 = !DILocation(line: 1773, column: 31, scope: !3851)
!4019 = !DILocation(line: 1773, column: 12, scope: !3851)
!4020 = !DILocation(line: 1773, column: 20, scope: !3851)
!4021 = !{!4010, !2271, i64 16}
!4022 = !DILocation(line: 1774, column: 23, scope: !3851)
!4023 = !DILocation(line: 1774, column: 31, scope: !3851)
!4024 = !DILocation(line: 1774, column: 12, scope: !3851)
!4025 = !DILocation(line: 1774, column: 20, scope: !3851)
!4026 = !{!4010, !2271, i64 24}
!4027 = !DILocation(line: 1775, column: 22, scope: !3851)
!4028 = !DILocation(line: 1775, column: 30, scope: !3851)
!4029 = !DILocation(line: 1775, column: 12, scope: !3851)
!4030 = !DILocation(line: 1775, column: 19, scope: !3851)
!4031 = !{!4010, !2271, i64 32}
!4032 = !DILocation(line: 1777, column: 13, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1777, column: 13)
!4034 = !DILocation(line: 1777, column: 42, scope: !4033)
!4035 = !DILocation(line: 1777, column: 13, scope: !3851)
!4036 = !DILocation(line: 1778, column: 13, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4033, file: !2, line: 1777, column: 53)
!4038 = !DILocation(line: 1781, column: 33, scope: !3851)
!4039 = !DILocation(line: 1781, column: 41, scope: !3851)
!4040 = !DILocation(line: 1781, column: 16, scope: !3851)
!4041 = !DILocation(line: 1781, column: 14, scope: !3851)
!4042 = !DILocation(line: 1782, column: 13, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1782, column: 13)
!4044 = !DILocation(line: 1782, column: 18, scope: !4043)
!4045 = !DILocation(line: 1782, column: 13, scope: !3851)
!4046 = !DILocation(line: 1783, column: 13, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4043, file: !2, line: 1782, column: 27)
!4048 = !DILocation(line: 1786, column: 10, scope: !3851)
!4049 = !DILocation(line: 1786, column: 15, scope: !3851)
!4050 = !DILocation(line: 1789, column: 33, scope: !3851)
!4051 = !DILocation(line: 1789, column: 41, scope: !3851)
!4052 = !DILocation(line: 1789, column: 16, scope: !3851)
!4053 = !DILocation(line: 1789, column: 14, scope: !3851)
!4054 = !DILocation(line: 1790, column: 13, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1790, column: 13)
!4056 = !DILocation(line: 1790, column: 18, scope: !4055)
!4057 = !DILocation(line: 1790, column: 13, scope: !3851)
!4058 = !DILocation(line: 1791, column: 13, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4055, file: !2, line: 1790, column: 27)
!4060 = !DILocation(line: 1794, column: 10, scope: !3851)
!4061 = !DILocation(line: 1794, column: 15, scope: !3851)
!4062 = !DILocation(line: 1795, column: 5, scope: !3851)
!4063 = !DILocation(line: 1712, column: 28, scope: !3845)
!4064 = !DILocation(line: 1712, column: 5, scope: !3845)
!4065 = distinct !{!4065, !3848, !4066, !3768}
!4066 = !DILocation(line: 1795, column: 5, scope: !3842)
!4067 = !DILocation(line: 1797, column: 29, scope: !3557)
!4068 = !DILocation(line: 1797, column: 37, scope: !3557)
!4069 = !DILocation(line: 1797, column: 12, scope: !3557)
!4070 = !DILocation(line: 1797, column: 10, scope: !3557)
!4071 = !DILocation(line: 1798, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1798, column: 9)
!4073 = !DILocation(line: 1798, column: 14, scope: !4072)
!4074 = !DILocation(line: 1798, column: 9, scope: !3557)
!4075 = !DILocation(line: 1799, column: 9, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 1798, column: 23)
!4077 = !DILocation(line: 1802, column: 6, scope: !3557)
!4078 = !DILocation(line: 1802, column: 11, scope: !3557)
!4079 = !DILocation(line: 1804, column: 36, scope: !3557)
!4080 = !DILocation(line: 1804, column: 5, scope: !3557)
!4081 = !DILocation(line: 1804, column: 13, scope: !3557)
!4082 = !DILocation(line: 1804, column: 20, scope: !3557)
!4083 = !{!2354, !2281, i64 24}
!4084 = !DILocation(line: 1806, column: 18, scope: !3557)
!4085 = !DILocation(line: 1806, column: 26, scope: !3557)
!4086 = !DILocation(line: 1806, column: 10, scope: !3557)
!4087 = !DILocation(line: 1806, column: 15, scope: !3557)
!4088 = !{!3134, !2271, i64 0}
!4089 = !DILocation(line: 1807, column: 10, scope: !3557)
!4090 = !DILocation(line: 1807, column: 14, scope: !3557)
!4091 = !{!3134, !2271, i64 8}
!4092 = !DILocation(line: 1808, column: 10, scope: !3557)
!4093 = !DILocation(line: 1808, column: 19, scope: !3557)
!4094 = !DILocation(line: 1809, column: 10, scope: !3557)
!4095 = !DILocation(line: 1809, column: 22, scope: !3557)
!4096 = !DILocation(line: 1810, column: 10, scope: !3557)
!4097 = !DILocation(line: 1810, column: 15, scope: !3557)
!4098 = !DILocation(line: 1811, column: 17, scope: !3557)
!4099 = !DILocation(line: 1811, column: 21, scope: !3557)
!4100 = !DILocation(line: 1811, column: 10, scope: !3557)
!4101 = !DILocation(line: 1811, column: 15, scope: !3557)
!4102 = !{!3134, !2271, i64 40}
!4103 = !DILocation(line: 1812, column: 10, scope: !3557)
!4104 = !DILocation(line: 1812, column: 20, scope: !3557)
!4105 = !{!3134, !2271, i64 48}
!4106 = !DILocation(line: 1814, column: 47, scope: !3557)
!4107 = !DILocation(line: 1814, column: 67, scope: !3557)
!4108 = !DILocation(line: 1814, column: 12, scope: !3557)
!4109 = !DILocation(line: 1814, column: 5, scope: !3557)
!4110 = !DILocation(line: 1815, column: 1, scope: !3557)
!4111 = !DISubprogram(name: "ngx_http_upstream_create", scope: !739, file: !739, line: 420, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4112 = distinct !DISubprogram(name: "ngx_http_scgi_eval", scope: !2, file: !2, line: 555, type: !4113, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!85, !90, !2307}
!4115 = !{!4116, !4117, !4118, !4161}
!4116 = !DILocalVariable(name: "r", arg: 1, scope: !4112, file: !2, line: 555, type: !90)
!4117 = !DILocalVariable(name: "scf", arg: 2, scope: !4112, file: !2, line: 555, type: !2307)
!4118 = !DILocalVariable(name: "url", scope: !4112, file: !2, line: 557, type: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_url_t", file: !783, line: 105, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !783, line: 81, size: 1728, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4158, !4159, !4160}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !4120, file: !783, line: 82, baseType: !72, size: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !4120, file: !783, line: 83, baseType: !72, size: 128, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "port_text", scope: !4120, file: !783, line: 84, baseType: !72, size: 128, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !4120, file: !783, line: 85, baseType: !72, size: 128, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4120, file: !783, line: 87, baseType: !433, size: 16, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "default_port", scope: !4120, file: !783, line: 88, baseType: !433, size: 16, offset: 528)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4120, file: !783, line: 89, baseType: !159, size: 32, offset: 544)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !4120, file: !783, line: 91, baseType: !65, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "uri_part", scope: !4120, file: !783, line: 92, baseType: !65, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "no_resolve", scope: !4120, file: !783, line: 93, baseType: !65, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !4120, file: !783, line: 95, baseType: !65, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !4120, file: !783, line: 96, baseType: !65, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !4120, file: !783, line: 98, baseType: !332, size: 32, offset: 608)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !4120, file: !783, line: 99, baseType: !4136, size: 896, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_sockaddr_t", file: !783, line: 44, baseType: !4137)
!4137 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !783, line: 35, size: 896, elements: !4138)
!4138 = !{!4139, !4140, !4141, !4149}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !4137, file: !783, line: 36, baseType: !320, size: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_in", scope: !4137, file: !783, line: 37, baseType: !1368, size: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_in6", scope: !4137, file: !783, line: 39, baseType: !4142, size: 224)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !434, line: 260, size: 224, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !4142, file: !434, line: 262, baseType: !324, size: 16)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !4142, file: !434, line: 263, baseType: !433, size: 16, offset: 16)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !4142, file: !434, line: 264, baseType: !97, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !4142, file: !434, line: 265, baseType: !1305, size: 128, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !4142, file: !434, line: 266, baseType: !97, size: 32, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_un", scope: !4137, file: !783, line: 42, baseType: !4150, size: 880)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !4151, line: 29, size: 880, elements: !4152)
!4151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!4152 = !{!4153, !4154}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !4150, file: !4151, line: 31, baseType: !324, size: 16)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !4150, file: !4151, line: 32, baseType: !4155, size: 864, offset: 16)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !4156)
!4156 = !{!4157}
!4157 = !DISubrange(count: 108)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !4120, file: !783, line: 101, baseType: !781, size: 64, offset: 1536)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !4120, file: !783, line: 102, baseType: !11, size: 64, offset: 1600)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !4120, file: !783, line: 104, baseType: !186, size: 64, offset: 1664)
!4161 = !DILocalVariable(name: "u", scope: !4112, file: !2, line: 558, type: !736)
!4162 = !DILocation(line: 555, column: 40, scope: !4112)
!4163 = !DILocation(line: 555, column: 70, scope: !4112)
!4164 = !DILocation(line: 557, column: 5, scope: !4112)
!4165 = !DILocation(line: 557, column: 27, scope: !4112)
!4166 = !DILocation(line: 558, column: 5, scope: !4112)
!4167 = !DILocation(line: 558, column: 27, scope: !4112)
!4168 = !DILocation(line: 560, column: 5, scope: !4112)
!4169 = !DILocation(line: 562, column: 29, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 562, column: 9)
!4171 = !DILocation(line: 562, column: 37, scope: !4170)
!4172 = !DILocation(line: 562, column: 42, scope: !4170)
!4173 = !DILocation(line: 562, column: 47, scope: !4170)
!4174 = !DILocation(line: 562, column: 61, scope: !4170)
!4175 = !DILocation(line: 563, column: 29, scope: !4170)
!4176 = !DILocation(line: 563, column: 34, scope: !4170)
!4177 = !DILocation(line: 563, column: 47, scope: !4170)
!4178 = !DILocation(line: 562, column: 9, scope: !4170)
!4179 = !DILocation(line: 564, column: 9, scope: !4170)
!4180 = !DILocation(line: 562, column: 9, scope: !4112)
!4181 = !DILocation(line: 566, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4170, file: !2, line: 565, column: 5)
!4183 = !DILocation(line: 569, column: 9, scope: !4112)
!4184 = !DILocation(line: 569, column: 20, scope: !4112)
!4185 = !DILocation(line: 571, column: 23, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 571, column: 9)
!4187 = !DILocation(line: 571, column: 26, scope: !4186)
!4188 = !DILocation(line: 571, column: 9, scope: !4186)
!4189 = !DILocation(line: 571, column: 38, scope: !4186)
!4190 = !DILocation(line: 571, column: 9, scope: !4112)
!4191 = !DILocation(line: 572, column: 17, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !2, line: 572, column: 13)
!4193 = distinct !DILexicalBlock(scope: !4186, file: !2, line: 571, column: 49)
!4194 = !{!4195, !2271, i64 208}
!4195 = !{!"", !2353, i64 0, !2353, i64 16, !2353, i64 32, !2353, i64 48, !4196, i64 64, !4196, i64 66, !2352, i64 68, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 72, !2352, i64 76, !2272, i64 80, !2271, i64 192, !2281, i64 200, !2271, i64 208}
!4196 = !{!"short", !2272, i64 0}
!4197 = !DILocation(line: 572, column: 13, scope: !4192)
!4198 = !DILocation(line: 572, column: 13, scope: !4193)
!4199 = !DILocation(line: 573, column: 13, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !2, line: 573, column: 13)
!4201 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 572, column: 22)
!4202 = !{!3402, !2271, i64 8}
!4203 = !{!4204, !2271, i64 80}
!4204 = !{!"ngx_connection_s", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2352, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2281, i64 72, !2271, i64 80, !2271, i64 88, !2352, i64 96, !2271, i64 104, !2352, i64 112, !2353, i64 120, !2353, i64 136, !4196, i64 152, !2271, i64 160, !2271, i64 168, !2271, i64 176, !2352, i64 184, !2271, i64 192, !4205, i64 200, !2281, i64 216, !2281, i64 224, !2352, i64 232, !2352, i64 233, !2352, i64 233, !2352, i64 233, !2352, i64 233, !2352, i64 233, !2352, i64 233, !2352, i64 234, !2352, i64 234, !2352, i64 234, !2352, i64 234, !2352, i64 234, !2352, i64 234, !2352, i64 235}
!4205 = !{!"ngx_queue_s", !2271, i64 0, !2271, i64 8}
!4206 = !{!4207, !2281, i64 0}
!4207 = !{!"ngx_log_s", !2281, i64 0, !2271, i64 8, !2281, i64 16, !2281, i64 24, !2271, i64 32, !2271, i64 40, !2271, i64 48, !2271, i64 56, !2271, i64 64, !2271, i64 72}
!4208 = !DILocation(line: 573, column: 13, scope: !4201)
!4209 = !DILocation(line: 575, column: 9, scope: !4201)
!4210 = !DILocation(line: 577, column: 9, scope: !4193)
!4211 = !DILocation(line: 580, column: 9, scope: !4112)
!4212 = !DILocation(line: 580, column: 12, scope: !4112)
!4213 = !DILocation(line: 580, column: 7, scope: !4112)
!4214 = !DILocation(line: 582, column: 31, scope: !4112)
!4215 = !DILocation(line: 582, column: 34, scope: !4112)
!4216 = !DILocation(line: 582, column: 19, scope: !4112)
!4217 = !DILocation(line: 582, column: 5, scope: !4112)
!4218 = !DILocation(line: 582, column: 8, scope: !4112)
!4219 = !DILocation(line: 582, column: 17, scope: !4112)
!4220 = !{!3440, !2271, i64 736}
!4221 = !DILocation(line: 583, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 583, column: 9)
!4223 = !DILocation(line: 583, column: 12, scope: !4222)
!4224 = !DILocation(line: 583, column: 21, scope: !4222)
!4225 = !DILocation(line: 583, column: 9, scope: !4112)
!4226 = !DILocation(line: 584, column: 9, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !2, line: 583, column: 30)
!4228 = !DILocation(line: 587, column: 13, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 587, column: 9)
!4230 = !{!4195, !2271, i64 192}
!4231 = !DILocation(line: 587, column: 9, scope: !4229)
!4232 = !DILocation(line: 587, column: 9, scope: !4112)
!4233 = !DILocation(line: 588, column: 37, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4229, file: !2, line: 587, column: 20)
!4235 = !DILocation(line: 588, column: 33, scope: !4234)
!4236 = !DILocation(line: 588, column: 46, scope: !4234)
!4237 = !{!4238, !2271, i64 0}
!4238 = !{!"", !2271, i64 0, !2352, i64 8, !2353, i64 16}
!4239 = !DILocation(line: 588, column: 9, scope: !4234)
!4240 = !DILocation(line: 588, column: 12, scope: !4234)
!4241 = !DILocation(line: 588, column: 22, scope: !4234)
!4242 = !DILocation(line: 588, column: 31, scope: !4234)
!4243 = !{!4244, !2271, i64 48}
!4244 = !{!"", !2353, i64 0, !4196, i64 16, !2281, i64 24, !2281, i64 32, !2271, i64 40, !2271, i64 48, !2352, i64 56, !2353, i64 64, !2271, i64 80}
!4245 = !DILocation(line: 589, column: 36, scope: !4234)
!4246 = !DILocation(line: 589, column: 32, scope: !4234)
!4247 = !DILocation(line: 589, column: 45, scope: !4234)
!4248 = !{!4238, !2352, i64 8}
!4249 = !DILocation(line: 589, column: 9, scope: !4234)
!4250 = !DILocation(line: 589, column: 12, scope: !4234)
!4251 = !DILocation(line: 589, column: 22, scope: !4234)
!4252 = !DILocation(line: 589, column: 30, scope: !4234)
!4253 = !{!4244, !2352, i64 56}
!4254 = !DILocation(line: 590, column: 9, scope: !4234)
!4255 = !DILocation(line: 590, column: 12, scope: !4234)
!4256 = !DILocation(line: 590, column: 22, scope: !4234)
!4257 = !DILocation(line: 590, column: 33, scope: !4234)
!4258 = !DILocation(line: 590, column: 29, scope: !4234)
!4259 = !DILocation(line: 590, column: 42, scope: !4234)
!4260 = !DILocation(line: 591, column: 9, scope: !4234)
!4261 = !DILocation(line: 591, column: 12, scope: !4234)
!4262 = !DILocation(line: 591, column: 22, scope: !4234)
!4263 = !DILocation(line: 591, column: 29, scope: !4234)
!4264 = !{!4244, !2281, i64 32}
!4265 = !DILocation(line: 592, column: 5, scope: !4234)
!4266 = !DILocation(line: 594, column: 5, scope: !4112)
!4267 = !DILocation(line: 594, column: 8, scope: !4112)
!4268 = !DILocation(line: 594, column: 18, scope: !4112)
!4269 = !DILocation(line: 594, column: 29, scope: !4112)
!4270 = !DILocation(line: 595, column: 29, scope: !4112)
!4271 = !{!4195, !4196, i64 64}
!4272 = !DILocation(line: 595, column: 5, scope: !4112)
!4273 = !DILocation(line: 595, column: 8, scope: !4112)
!4274 = !DILocation(line: 595, column: 18, scope: !4112)
!4275 = !DILocation(line: 595, column: 23, scope: !4112)
!4276 = !{!4244, !4196, i64 16}
!4277 = !DILocation(line: 596, column: 32, scope: !4112)
!4278 = !DILocation(line: 596, column: 28, scope: !4112)
!4279 = !DILocation(line: 596, column: 5, scope: !4112)
!4280 = !DILocation(line: 596, column: 8, scope: !4112)
!4281 = !DILocation(line: 596, column: 18, scope: !4112)
!4282 = !DILocation(line: 596, column: 26, scope: !4112)
!4283 = !{!4244, !2281, i64 24}
!4284 = !DILocation(line: 598, column: 5, scope: !4112)
!4285 = !DILocation(line: 599, column: 1, scope: !4112)
!4286 = distinct !DISubprogram(name: "ngx_http_scgi_create_key", scope: !2, file: !2, line: 605, type: !1422, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4287)
!4287 = !{!4288, !4289, !4290}
!4288 = !DILocalVariable(name: "r", arg: 1, scope: !4286, file: !2, line: 605, type: !90)
!4289 = !DILocalVariable(name: "key", scope: !4286, file: !2, line: 607, type: !756)
!4290 = !DILocalVariable(name: "scf", scope: !4286, file: !2, line: 608, type: !2307)
!4291 = !DILocation(line: 605, column: 46, scope: !4286)
!4292 = !DILocation(line: 607, column: 5, scope: !4286)
!4293 = !DILocation(line: 607, column: 32, scope: !4286)
!4294 = !DILocation(line: 608, column: 5, scope: !4286)
!4295 = !DILocation(line: 608, column: 32, scope: !4286)
!4296 = !DILocation(line: 610, column: 27, scope: !4286)
!4297 = !DILocation(line: 610, column: 30, scope: !4286)
!4298 = !{!3402, !2271, i64 64}
!4299 = !DILocation(line: 610, column: 37, scope: !4286)
!4300 = !DILocation(line: 610, column: 11, scope: !4286)
!4301 = !DILocation(line: 610, column: 9, scope: !4286)
!4302 = !DILocation(line: 611, column: 9, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 611, column: 9)
!4304 = !DILocation(line: 611, column: 13, scope: !4303)
!4305 = !DILocation(line: 611, column: 9, scope: !4286)
!4306 = !DILocation(line: 612, column: 9, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !2, line: 611, column: 22)
!4308 = !DILocation(line: 615, column: 11, scope: !4286)
!4309 = !DILocation(line: 615, column: 9, scope: !4286)
!4310 = !DILocation(line: 617, column: 32, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 617, column: 9)
!4312 = !DILocation(line: 617, column: 36, scope: !4311)
!4313 = !DILocation(line: 617, column: 41, scope: !4311)
!4314 = !DILocation(line: 617, column: 52, scope: !4311)
!4315 = !DILocation(line: 617, column: 9, scope: !4311)
!4316 = !DILocation(line: 617, column: 57, scope: !4311)
!4317 = !DILocation(line: 617, column: 9, scope: !4286)
!4318 = !DILocation(line: 618, column: 9, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4311, file: !2, line: 617, column: 68)
!4320 = !DILocation(line: 621, column: 5, scope: !4286)
!4321 = !DILocation(line: 622, column: 1, scope: !4286)
!4322 = distinct !DISubprogram(name: "ngx_http_scgi_create_request", scope: !2, file: !2, line: 628, type: !1422, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4355}
!4324 = !DILocalVariable(name: "r", arg: 1, scope: !4322, file: !2, line: 628, type: !90)
!4325 = !DILocalVariable(name: "content_length_n", scope: !4322, file: !2, line: 630, type: !40)
!4326 = !DILocalVariable(name: "ch", scope: !4322, file: !2, line: 631, type: !24)
!4327 = !DILocalVariable(name: "key", scope: !4322, file: !2, line: 631, type: !23)
!4328 = !DILocalVariable(name: "val", scope: !4322, file: !2, line: 631, type: !23)
!4329 = !DILocalVariable(name: "lowcase_key", scope: !4322, file: !2, line: 631, type: !23)
!4330 = !DILocalVariable(name: "len", scope: !4322, file: !2, line: 632, type: !21)
!4331 = !DILocalVariable(name: "key_len", scope: !4322, file: !2, line: 632, type: !21)
!4332 = !DILocalVariable(name: "val_len", scope: !4322, file: !2, line: 632, type: !21)
!4333 = !DILocalVariable(name: "allocated", scope: !4322, file: !2, line: 632, type: !21)
!4334 = !DILocalVariable(name: "b", scope: !4322, file: !2, line: 633, type: !231)
!4335 = !DILocalVariable(name: "content_length", scope: !4322, file: !2, line: 634, type: !72)
!4336 = !DILocalVariable(name: "i", scope: !4322, file: !2, line: 635, type: !11)
!4337 = !DILocalVariable(name: "n", scope: !4322, file: !2, line: 635, type: !11)
!4338 = !DILocalVariable(name: "hash", scope: !4322, file: !2, line: 635, type: !11)
!4339 = !DILocalVariable(name: "skip_empty", scope: !4322, file: !2, line: 635, type: !11)
!4340 = !DILocalVariable(name: "header_params", scope: !4322, file: !2, line: 635, type: !11)
!4341 = !DILocalVariable(name: "cl", scope: !4322, file: !2, line: 636, type: !226)
!4342 = !DILocalVariable(name: "body", scope: !4322, file: !2, line: 636, type: !226)
!4343 = !DILocalVariable(name: "part", scope: !4322, file: !2, line: 637, type: !1020)
!4344 = !DILocalVariable(name: "header", scope: !4322, file: !2, line: 638, type: !1203)
!4345 = !DILocalVariable(name: "ignored", scope: !4322, file: !2, line: 638, type: !4346)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!4347 = !DILocalVariable(name: "params", scope: !4322, file: !2, line: 639, type: !3560)
!4348 = !DILocalVariable(name: "code", scope: !4322, file: !2, line: 640, type: !1911)
!4349 = !DILocalVariable(name: "e", scope: !4322, file: !2, line: 641, type: !51)
!4350 = !DILocalVariable(name: "le", scope: !4322, file: !2, line: 641, type: !51)
!4351 = !DILocalVariable(name: "scf", scope: !4322, file: !2, line: 642, type: !2307)
!4352 = !DILocalVariable(name: "lcode", scope: !4322, file: !2, line: 643, type: !45)
!4353 = !DILocalVariable(name: "buffer", scope: !4322, file: !2, line: 644, type: !4354)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !2009)
!4355 = !DILabel(scope: !4356, name: "next", file: !2, line: 896)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !2, line: 853, column: 38)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !2, line: 853, column: 9)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !2, line: 853, column: 9)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !2, line: 848, column: 45)
!4360 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 848, column: 9)
!4361 = !DILocation(line: 628, column: 50, scope: !4322)
!4362 = !DILocation(line: 630, column: 5, scope: !4322)
!4363 = !DILocation(line: 630, column: 35, scope: !4322)
!4364 = !DILocation(line: 631, column: 5, scope: !4322)
!4365 = !DILocation(line: 631, column: 35, scope: !4322)
!4366 = !DILocation(line: 631, column: 40, scope: !4322)
!4367 = !DILocation(line: 631, column: 46, scope: !4322)
!4368 = !DILocation(line: 631, column: 52, scope: !4322)
!4369 = !DILocation(line: 632, column: 5, scope: !4322)
!4370 = !DILocation(line: 632, column: 35, scope: !4322)
!4371 = !DILocation(line: 632, column: 40, scope: !4322)
!4372 = !DILocation(line: 632, column: 49, scope: !4322)
!4373 = !DILocation(line: 632, column: 58, scope: !4322)
!4374 = !DILocation(line: 633, column: 5, scope: !4322)
!4375 = !DILocation(line: 633, column: 35, scope: !4322)
!4376 = !DILocation(line: 634, column: 5, scope: !4322)
!4377 = !DILocation(line: 634, column: 35, scope: !4322)
!4378 = !DILocation(line: 635, column: 5, scope: !4322)
!4379 = !DILocation(line: 635, column: 35, scope: !4322)
!4380 = !DILocation(line: 635, column: 38, scope: !4322)
!4381 = !DILocation(line: 635, column: 41, scope: !4322)
!4382 = !DILocation(line: 635, column: 47, scope: !4322)
!4383 = !DILocation(line: 635, column: 59, scope: !4322)
!4384 = !DILocation(line: 636, column: 5, scope: !4322)
!4385 = !DILocation(line: 636, column: 35, scope: !4322)
!4386 = !DILocation(line: 636, column: 40, scope: !4322)
!4387 = !DILocation(line: 637, column: 5, scope: !4322)
!4388 = !DILocation(line: 637, column: 35, scope: !4322)
!4389 = !DILocation(line: 638, column: 5, scope: !4322)
!4390 = !DILocation(line: 638, column: 35, scope: !4322)
!4391 = !DILocation(line: 638, column: 45, scope: !4322)
!4392 = !DILocation(line: 639, column: 5, scope: !4322)
!4393 = !DILocation(line: 639, column: 35, scope: !4322)
!4394 = !DILocation(line: 640, column: 5, scope: !4322)
!4395 = !DILocation(line: 640, column: 35, scope: !4322)
!4396 = !DILocation(line: 641, column: 5, scope: !4322)
!4397 = !DILocation(line: 641, column: 35, scope: !4322)
!4398 = !DILocation(line: 641, column: 38, scope: !4322)
!4399 = !DILocation(line: 642, column: 5, scope: !4322)
!4400 = !DILocation(line: 642, column: 35, scope: !4322)
!4401 = !DILocation(line: 643, column: 5, scope: !4322)
!4402 = !DILocation(line: 643, column: 35, scope: !4322)
!4403 = !DILocation(line: 644, column: 5, scope: !4322)
!4404 = !DILocation(line: 644, column: 35, scope: !4322)
!4405 = !DILocation(line: 646, column: 22, scope: !4322)
!4406 = !DILocation(line: 647, column: 12, scope: !4322)
!4407 = !DILocation(line: 647, column: 15, scope: !4322)
!4408 = !DILocation(line: 647, column: 25, scope: !4322)
!4409 = !{!3440, !2271, i64 152}
!4410 = !DILocation(line: 647, column: 10, scope: !4322)
!4411 = !DILocation(line: 649, column: 5, scope: !4322)
!4412 = !DILocation(line: 649, column: 12, scope: !4322)
!4413 = !DILocation(line: 650, column: 29, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 649, column: 18)
!4415 = !{!4416, !2271, i64 0}
!4416 = !{!"ngx_chain_s", !2271, i64 0, !2271, i64 8}
!4417 = !{!3445, !2271, i64 8}
!4418 = !{!3445, !2271, i64 0}
!4419 = !{!3445, !2281, i64 24}
!4420 = !{!3445, !2281, i64 16}
!4421 = !DILocation(line: 650, column: 26, scope: !4414)
!4422 = !DILocation(line: 651, column: 16, scope: !4414)
!4423 = !DILocation(line: 651, column: 22, scope: !4414)
!4424 = !{!4416, !2271, i64 8}
!4425 = !DILocation(line: 651, column: 14, scope: !4414)
!4426 = distinct !{!4426, !4411, !4427, !3768}
!4427 = !DILocation(line: 652, column: 5, scope: !4322)
!4428 = !DILocation(line: 654, column: 27, scope: !4322)
!4429 = !DILocation(line: 654, column: 20, scope: !4322)
!4430 = !DILocation(line: 654, column: 25, scope: !4322)
!4431 = !{!2353, !2271, i64 8}
!4432 = !DILocation(line: 655, column: 38, scope: !4322)
!4433 = !DILocation(line: 655, column: 52, scope: !4322)
!4434 = !DILocation(line: 655, column: 26, scope: !4322)
!4435 = !DILocation(line: 655, column: 72, scope: !4322)
!4436 = !DILocation(line: 655, column: 70, scope: !4322)
!4437 = !DILocation(line: 655, column: 20, scope: !4322)
!4438 = !DILocation(line: 655, column: 24, scope: !4322)
!4439 = !{!2353, !2281, i64 0}
!4440 = !DILocation(line: 657, column: 53, scope: !4322)
!4441 = !DILocation(line: 657, column: 36, scope: !4322)
!4442 = !DILocation(line: 657, column: 57, scope: !4322)
!4443 = !DILocation(line: 657, column: 9, scope: !4322)
!4444 = !DILocation(line: 659, column: 19, scope: !4322)
!4445 = !DILocation(line: 660, column: 13, scope: !4322)
!4446 = !DILocation(line: 662, column: 11, scope: !4322)
!4447 = !DILocation(line: 662, column: 9, scope: !4322)
!4448 = !DILocation(line: 665, column: 14, scope: !4322)
!4449 = !DILocation(line: 665, column: 17, scope: !4322)
!4450 = !DILocation(line: 665, column: 27, scope: !4322)
!4451 = !DILocation(line: 665, column: 40, scope: !4322)
!4452 = !DILocation(line: 665, column: 45, scope: !4322)
!4453 = !DILocation(line: 665, column: 61, scope: !4322)
!4454 = !DILocation(line: 665, column: 66, scope: !4322)
!4455 = !DILocation(line: 665, column: 12, scope: !4322)
!4456 = !DILocation(line: 670, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 670, column: 9)
!4458 = !DILocation(line: 670, column: 17, scope: !4457)
!4459 = !DILocation(line: 670, column: 9, scope: !4322)
!4460 = !DILocation(line: 671, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !2, line: 670, column: 26)
!4462 = !DILocation(line: 673, column: 54, scope: !4461)
!4463 = !DILocation(line: 673, column: 57, scope: !4461)
!4464 = !DILocation(line: 673, column: 65, scope: !4461)
!4465 = !{!2354, !2271, i64 0}
!4466 = !DILocation(line: 673, column: 9, scope: !4461)
!4467 = !DILocation(line: 674, column: 12, scope: !4461)
!4468 = !DILocation(line: 674, column: 20, scope: !4461)
!4469 = !DILocation(line: 676, column: 17, scope: !4461)
!4470 = !DILocation(line: 676, column: 25, scope: !4461)
!4471 = !DILocation(line: 676, column: 34, scope: !4461)
!4472 = !DILocation(line: 676, column: 12, scope: !4461)
!4473 = !DILocation(line: 676, column: 15, scope: !4461)
!4474 = !{!4475, !2271, i64 0}
!4475 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2353, i64 24, !2353, i64 40, !2271, i64 56, !2352, i64 64, !2352, i64 64, !2352, i64 64, !2352, i64 64, !2352, i64 64, !2281, i64 72, !2271, i64 80}
!4476 = !DILocation(line: 677, column: 22, scope: !4461)
!4477 = !DILocation(line: 677, column: 12, scope: !4461)
!4478 = !DILocation(line: 677, column: 20, scope: !4461)
!4479 = !{!4475, !2271, i64 80}
!4480 = !DILocation(line: 679, column: 9, scope: !4461)
!4481 = !DILocation(line: 679, column: 34, scope: !4461)
!4482 = !DILocation(line: 679, column: 16, scope: !4461)
!4483 = !DILocation(line: 681, column: 57, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4461, file: !2, line: 679, column: 38)
!4485 = !DILocation(line: 681, column: 21, scope: !4484)
!4486 = !DILocation(line: 681, column: 19, scope: !4484)
!4487 = !DILocation(line: 682, column: 23, scope: !4484)
!4488 = !DILocation(line: 682, column: 21, scope: !4484)
!4489 = !DILocation(line: 684, column: 57, scope: !4484)
!4490 = !DILocation(line: 684, column: 21, scope: !4484)
!4491 = !DILocation(line: 684, column: 19, scope: !4484)
!4492 = !DILocation(line: 685, column: 26, scope: !4484)
!4493 = !DILocation(line: 685, column: 24, scope: !4484)
!4494 = !DILocation(line: 687, column: 26, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4484, file: !2, line: 687, column: 13)
!4496 = !DILocation(line: 687, column: 18, scope: !4495)
!4497 = !DILocation(line: 687, column: 49, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4495, file: !2, line: 687, column: 13)
!4499 = !DILocation(line: 687, column: 31, scope: !4498)
!4500 = !DILocation(line: 687, column: 13, scope: !4495)
!4501 = !DILocation(line: 688, column: 61, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !2, line: 687, column: 76)
!4503 = !DILocation(line: 688, column: 25, scope: !4502)
!4504 = !DILocation(line: 688, column: 23, scope: !4502)
!4505 = !DILocation(line: 689, column: 13, scope: !4502)
!4506 = !DILocation(line: 687, column: 64, scope: !4498)
!4507 = !DILocation(line: 687, column: 61, scope: !4498)
!4508 = !DILocation(line: 687, column: 13, scope: !4498)
!4509 = distinct !{!4509, !4500, !4510, !3768}
!4510 = !DILocation(line: 689, column: 13, scope: !4495)
!4511 = !DILocation(line: 690, column: 16, scope: !4484)
!4512 = !DILocation(line: 690, column: 19, scope: !4484)
!4513 = !DILocation(line: 692, column: 17, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4484, file: !2, line: 692, column: 17)
!4515 = !DILocation(line: 692, column: 28, scope: !4514)
!4516 = !DILocation(line: 692, column: 31, scope: !4514)
!4517 = !DILocation(line: 692, column: 39, scope: !4514)
!4518 = !DILocation(line: 692, column: 17, scope: !4484)
!4519 = !DILocation(line: 693, column: 17, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4514, file: !2, line: 692, column: 45)
!4521 = distinct !{!4521, !4480, !4522, !3768}
!4522 = !DILocation(line: 697, column: 9, scope: !4461)
!4523 = !DILocation(line: 696, column: 20, scope: !4484)
!4524 = !DILocation(line: 696, column: 30, scope: !4484)
!4525 = !DILocation(line: 696, column: 28, scope: !4484)
!4526 = !DILocation(line: 696, column: 38, scope: !4484)
!4527 = !DILocation(line: 696, column: 17, scope: !4484)
!4528 = !DILocation(line: 698, column: 5, scope: !4461)
!4529 = !DILocation(line: 700, column: 9, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 700, column: 9)
!4531 = !DILocation(line: 700, column: 14, scope: !4530)
!4532 = !DILocation(line: 700, column: 23, scope: !4530)
!4533 = !DILocation(line: 700, column: 9, scope: !4322)
!4534 = !DILocation(line: 702, column: 19, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4530, file: !2, line: 700, column: 45)
!4536 = !DILocation(line: 703, column: 21, scope: !4535)
!4537 = !DILocation(line: 705, column: 13, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4535, file: !2, line: 705, column: 13)
!4539 = !DILocation(line: 705, column: 21, scope: !4538)
!4540 = !DILocation(line: 705, column: 13, scope: !4535)
!4541 = !DILocation(line: 706, column: 15, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !2, line: 705, column: 29)
!4543 = !DILocation(line: 707, column: 21, scope: !4542)
!4544 = !DILocation(line: 707, column: 24, scope: !4542)
!4545 = !DILocation(line: 707, column: 35, scope: !4542)
!4546 = !DILocation(line: 707, column: 43, scope: !4542)
!4547 = !DILocation(line: 707, column: 18, scope: !4542)
!4548 = !DILocation(line: 709, column: 13, scope: !4542)
!4549 = !DILocation(line: 709, column: 20, scope: !4542)
!4550 = !DILocation(line: 710, column: 22, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4542, file: !2, line: 709, column: 26)
!4552 = !DILocation(line: 710, column: 28, scope: !4551)
!4553 = !{!3405, !2281, i64 8}
!4554 = !DILocation(line: 710, column: 19, scope: !4551)
!4555 = !DILocation(line: 711, column: 24, scope: !4551)
!4556 = !DILocation(line: 711, column: 30, scope: !4551)
!4557 = !{!3405, !2271, i64 16}
!4558 = !DILocation(line: 711, column: 22, scope: !4551)
!4559 = distinct !{!4559, !4548, !4560, !3768}
!4560 = !DILocation(line: 712, column: 13, scope: !4542)
!4561 = !DILocation(line: 714, column: 34, scope: !4542)
!4562 = !DILocation(line: 714, column: 37, scope: !4542)
!4563 = !DILocation(line: 714, column: 43, scope: !4542)
!4564 = !DILocation(line: 714, column: 45, scope: !4542)
!4565 = !DILocation(line: 714, column: 23, scope: !4542)
!4566 = !DILocation(line: 714, column: 21, scope: !4542)
!4567 = !DILocation(line: 715, column: 17, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4542, file: !2, line: 715, column: 17)
!4569 = !DILocation(line: 715, column: 25, scope: !4568)
!4570 = !DILocation(line: 715, column: 17, scope: !4542)
!4571 = !DILocation(line: 716, column: 17, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 715, column: 34)
!4573 = !DILocation(line: 718, column: 9, scope: !4542)
!4574 = !DILocation(line: 720, column: 17, scope: !4535)
!4575 = !DILocation(line: 720, column: 20, scope: !4535)
!4576 = !DILocation(line: 720, column: 31, scope: !4535)
!4577 = !DILocation(line: 720, column: 39, scope: !4535)
!4578 = !DILocation(line: 720, column: 14, scope: !4535)
!4579 = !DILocation(line: 721, column: 18, scope: !4535)
!4580 = !DILocation(line: 721, column: 24, scope: !4535)
!4581 = !{!3405, !2271, i64 0}
!4582 = !DILocation(line: 721, column: 16, scope: !4535)
!4583 = !DILocation(line: 723, column: 16, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4535, file: !2, line: 723, column: 9)
!4585 = !DILocation(line: 723, column: 14, scope: !4584)
!4586 = !DILocation(line: 725, column: 17, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 725, column: 17)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !2, line: 723, column: 38)
!4589 = distinct !DILexicalBlock(scope: !4584, file: !2, line: 723, column: 9)
!4590 = !DILocation(line: 725, column: 22, scope: !4587)
!4591 = !DILocation(line: 725, column: 28, scope: !4587)
!4592 = !DILocation(line: 725, column: 19, scope: !4587)
!4593 = !DILocation(line: 725, column: 17, scope: !4588)
!4594 = !DILocation(line: 726, column: 21, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !2, line: 726, column: 21)
!4596 = distinct !DILexicalBlock(scope: !4587, file: !2, line: 725, column: 35)
!4597 = !DILocation(line: 726, column: 27, scope: !4595)
!4598 = !DILocation(line: 726, column: 32, scope: !4595)
!4599 = !DILocation(line: 726, column: 21, scope: !4596)
!4600 = !DILocation(line: 727, column: 21, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4595, file: !2, line: 726, column: 41)
!4602 = !DILocation(line: 730, column: 24, scope: !4596)
!4603 = !DILocation(line: 730, column: 30, scope: !4596)
!4604 = !DILocation(line: 730, column: 22, scope: !4596)
!4605 = !DILocation(line: 731, column: 26, scope: !4596)
!4606 = !DILocation(line: 731, column: 32, scope: !4596)
!4607 = !DILocation(line: 731, column: 24, scope: !4596)
!4608 = !DILocation(line: 732, column: 19, scope: !4596)
!4609 = !DILocation(line: 733, column: 13, scope: !4596)
!4610 = !DILocation(line: 735, column: 17, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 735, column: 17)
!4612 = !DILocation(line: 735, column: 25, scope: !4611)
!4613 = !DILocation(line: 735, column: 17, scope: !4588)
!4614 = !DILocation(line: 736, column: 21, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !2, line: 736, column: 21)
!4616 = distinct !DILexicalBlock(scope: !4611, file: !2, line: 735, column: 33)
!4617 = !DILocation(line: 736, column: 33, scope: !4615)
!4618 = !DILocation(line: 736, column: 40, scope: !4615)
!4619 = !DILocation(line: 736, column: 43, scope: !4615)
!4620 = !DILocation(line: 736, column: 47, scope: !4615)
!4621 = !{!4622, !2281, i64 8}
!4622 = !{!"", !2281, i64 0, !2353, i64 8, !2353, i64 24, !2271, i64 40}
!4623 = !DILocation(line: 736, column: 31, scope: !4615)
!4624 = !DILocation(line: 736, column: 21, scope: !4616)
!4625 = !DILocation(line: 737, column: 33, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 736, column: 52)
!4627 = !DILocation(line: 737, column: 40, scope: !4626)
!4628 = !DILocation(line: 737, column: 43, scope: !4626)
!4629 = !DILocation(line: 737, column: 47, scope: !4626)
!4630 = !DILocation(line: 737, column: 51, scope: !4626)
!4631 = !DILocation(line: 737, column: 31, scope: !4626)
!4632 = !DILocation(line: 738, column: 47, scope: !4626)
!4633 = !DILocation(line: 738, column: 50, scope: !4626)
!4634 = !DILocation(line: 738, column: 56, scope: !4626)
!4635 = !DILocation(line: 738, column: 35, scope: !4626)
!4636 = !DILocation(line: 738, column: 33, scope: !4626)
!4637 = !DILocation(line: 739, column: 25, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4626, file: !2, line: 739, column: 25)
!4639 = !DILocation(line: 739, column: 37, scope: !4638)
!4640 = !DILocation(line: 739, column: 25, scope: !4626)
!4641 = !DILocation(line: 740, column: 25, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4638, file: !2, line: 739, column: 46)
!4643 = !DILocation(line: 742, column: 17, scope: !4626)
!4644 = !DILocation(line: 744, column: 22, scope: !4616)
!4645 = !DILocation(line: 746, column: 24, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4616, file: !2, line: 746, column: 17)
!4647 = !DILocation(line: 746, column: 22, scope: !4646)
!4648 = !DILocation(line: 746, column: 29, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4646, file: !2, line: 746, column: 17)
!4650 = !DILocation(line: 746, column: 33, scope: !4649)
!4651 = !DILocation(line: 746, column: 40, scope: !4649)
!4652 = !DILocation(line: 746, column: 43, scope: !4649)
!4653 = !DILocation(line: 746, column: 47, scope: !4649)
!4654 = !DILocation(line: 746, column: 31, scope: !4649)
!4655 = !DILocation(line: 746, column: 17, scope: !4646)
!4656 = !DILocation(line: 747, column: 26, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4649, file: !2, line: 746, column: 57)
!4658 = !DILocation(line: 747, column: 33, scope: !4657)
!4659 = !DILocation(line: 747, column: 36, scope: !4657)
!4660 = !DILocation(line: 747, column: 40, scope: !4657)
!4661 = !{!4622, !2271, i64 16}
!4662 = !DILocation(line: 747, column: 45, scope: !4657)
!4663 = !{!2272, !2272, i64 0}
!4664 = !DILocation(line: 747, column: 24, scope: !4657)
!4665 = !DILocation(line: 749, column: 25, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4657, file: !2, line: 749, column: 25)
!4667 = !DILocation(line: 749, column: 28, scope: !4666)
!4668 = !DILocation(line: 749, column: 35, scope: !4666)
!4669 = !DILocation(line: 749, column: 38, scope: !4666)
!4670 = !DILocation(line: 749, column: 41, scope: !4666)
!4671 = !DILocation(line: 749, column: 25, scope: !4657)
!4672 = !DILocation(line: 750, column: 28, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4666, file: !2, line: 749, column: 49)
!4674 = !DILocation(line: 752, column: 21, scope: !4673)
!4675 = !DILocation(line: 752, column: 32, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4666, file: !2, line: 752, column: 32)
!4677 = !DILocation(line: 752, column: 35, scope: !4676)
!4678 = !DILocation(line: 752, column: 32, scope: !4666)
!4679 = !DILocation(line: 753, column: 28, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !2, line: 752, column: 43)
!4681 = !DILocation(line: 754, column: 21, scope: !4680)
!4682 = !DILocation(line: 756, column: 28, scope: !4657)
!4683 = !DILocation(line: 756, column: 26, scope: !4657)
!4684 = !DILocation(line: 757, column: 38, scope: !4657)
!4685 = !DILocation(line: 757, column: 21, scope: !4657)
!4686 = !DILocation(line: 757, column: 33, scope: !4657)
!4687 = !DILocation(line: 757, column: 36, scope: !4657)
!4688 = !DILocation(line: 758, column: 17, scope: !4657)
!4689 = !DILocation(line: 746, column: 53, scope: !4649)
!4690 = !DILocation(line: 746, column: 17, scope: !4649)
!4691 = distinct !{!4691, !4655, !4692, !3768}
!4692 = !DILocation(line: 758, column: 17, scope: !4646)
!4693 = !DILocation(line: 760, column: 36, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4616, file: !2, line: 760, column: 21)
!4695 = !DILocation(line: 760, column: 44, scope: !4694)
!4696 = !DILocation(line: 760, column: 50, scope: !4694)
!4697 = !DILocation(line: 760, column: 56, scope: !4694)
!4698 = !DILocation(line: 760, column: 69, scope: !4694)
!4699 = !DILocation(line: 760, column: 21, scope: !4694)
!4700 = !DILocation(line: 760, column: 21, scope: !4616)
!4701 = !DILocation(line: 761, column: 49, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 760, column: 73)
!4703 = !DILocation(line: 761, column: 56, scope: !4702)
!4704 = !DILocation(line: 761, column: 21, scope: !4702)
!4705 = !DILocation(line: 761, column: 42, scope: !4702)
!4706 = !DILocation(line: 761, column: 46, scope: !4702)
!4707 = !DILocation(line: 762, column: 21, scope: !4702)
!4708 = !DILocation(line: 764, column: 13, scope: !4616)
!4709 = !DILocation(line: 766, column: 42, scope: !4588)
!4710 = !DILocation(line: 766, column: 49, scope: !4588)
!4711 = !DILocation(line: 766, column: 52, scope: !4588)
!4712 = !DILocation(line: 766, column: 56, scope: !4588)
!4713 = !DILocation(line: 766, column: 40, scope: !4588)
!4714 = !DILocation(line: 766, column: 60, scope: !4588)
!4715 = !DILocation(line: 767, column: 19, scope: !4588)
!4716 = !DILocation(line: 767, column: 26, scope: !4588)
!4717 = !DILocation(line: 767, column: 29, scope: !4588)
!4718 = !DILocation(line: 767, column: 35, scope: !4588)
!4719 = !{!4622, !2281, i64 24}
!4720 = !DILocation(line: 767, column: 17, scope: !4588)
!4721 = !DILocation(line: 767, column: 39, scope: !4588)
!4722 = !DILocation(line: 766, column: 17, scope: !4588)
!4723 = !DILocation(line: 768, column: 9, scope: !4588)
!4724 = !DILocation(line: 723, column: 34, scope: !4589)
!4725 = !DILocation(line: 723, column: 9, scope: !4589)
!4726 = distinct !{!4726, !4727, !4728}
!4727 = !DILocation(line: 723, column: 9, scope: !4584)
!4728 = !DILocation(line: 768, column: 9, scope: !4584)
!4729 = !DILocation(line: 769, column: 5, scope: !4535)
!4730 = !DILocation(line: 773, column: 29, scope: !4322)
!4731 = !DILocation(line: 773, column: 32, scope: !4322)
!4732 = !DILocation(line: 773, column: 59, scope: !4322)
!4733 = !DILocation(line: 773, column: 57, scope: !4322)
!4734 = !DILocation(line: 773, column: 63, scope: !4322)
!4735 = !DILocation(line: 773, column: 9, scope: !4322)
!4736 = !DILocation(line: 773, column: 7, scope: !4322)
!4737 = !DILocation(line: 774, column: 9, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 774, column: 9)
!4739 = !DILocation(line: 774, column: 11, scope: !4738)
!4740 = !DILocation(line: 774, column: 9, scope: !4322)
!4741 = !DILocation(line: 775, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4738, file: !2, line: 774, column: 20)
!4743 = !DILocation(line: 778, column: 31, scope: !4322)
!4744 = !DILocation(line: 778, column: 34, scope: !4322)
!4745 = !DILocation(line: 778, column: 10, scope: !4322)
!4746 = !DILocation(line: 778, column: 8, scope: !4322)
!4747 = !DILocation(line: 779, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 779, column: 9)
!4749 = !DILocation(line: 779, column: 12, scope: !4748)
!4750 = !DILocation(line: 779, column: 9, scope: !4322)
!4751 = !DILocation(line: 780, column: 9, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !2, line: 779, column: 21)
!4753 = !DILocation(line: 783, column: 15, scope: !4322)
!4754 = !DILocation(line: 783, column: 5, scope: !4322)
!4755 = !DILocation(line: 783, column: 9, scope: !4322)
!4756 = !DILocation(line: 783, column: 13, scope: !4322)
!4757 = !DILocation(line: 785, column: 27, scope: !4322)
!4758 = !DILocation(line: 785, column: 30, scope: !4322)
!4759 = !DILocation(line: 786, column: 27, scope: !4322)
!4760 = !DILocation(line: 785, column: 15, scope: !4322)
!4761 = !DILocation(line: 785, column: 5, scope: !4322)
!4762 = !DILocation(line: 785, column: 8, scope: !4322)
!4763 = !DILocation(line: 785, column: 13, scope: !4322)
!4764 = !DILocation(line: 788, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 788, column: 9)
!4766 = !DILocation(line: 788, column: 17, scope: !4765)
!4767 = !DILocation(line: 788, column: 9, scope: !4322)
!4768 = !DILocation(line: 789, column: 9, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !2, line: 788, column: 26)
!4770 = !DILocation(line: 791, column: 16, scope: !4769)
!4771 = !DILocation(line: 791, column: 24, scope: !4769)
!4772 = !DILocation(line: 791, column: 32, scope: !4769)
!4773 = !DILocation(line: 791, column: 11, scope: !4769)
!4774 = !DILocation(line: 791, column: 14, scope: !4769)
!4775 = !DILocation(line: 792, column: 17, scope: !4769)
!4776 = !DILocation(line: 792, column: 20, scope: !4769)
!4777 = !DILocation(line: 792, column: 11, scope: !4769)
!4778 = !DILocation(line: 792, column: 15, scope: !4769)
!4779 = !{!4475, !2271, i64 8}
!4780 = !DILocation(line: 793, column: 21, scope: !4769)
!4781 = !DILocation(line: 793, column: 11, scope: !4769)
!4782 = !DILocation(line: 793, column: 19, scope: !4769)
!4783 = !DILocation(line: 794, column: 11, scope: !4769)
!4784 = !DILocation(line: 794, column: 19, scope: !4769)
!4785 = !DILocation(line: 796, column: 17, scope: !4769)
!4786 = !DILocation(line: 796, column: 25, scope: !4769)
!4787 = !DILocation(line: 796, column: 34, scope: !4769)
!4788 = !DILocation(line: 796, column: 12, scope: !4769)
!4789 = !DILocation(line: 796, column: 15, scope: !4769)
!4790 = !DILocation(line: 798, column: 9, scope: !4769)
!4791 = !DILocation(line: 798, column: 34, scope: !4769)
!4792 = !DILocation(line: 798, column: 16, scope: !4769)
!4793 = !DILocation(line: 800, column: 57, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4769, file: !2, line: 798, column: 38)
!4795 = !DILocation(line: 800, column: 21, scope: !4794)
!4796 = !DILocation(line: 800, column: 19, scope: !4794)
!4797 = !DILocation(line: 801, column: 13, scope: !4794)
!4798 = !DILocation(line: 803, column: 57, scope: !4794)
!4799 = !DILocation(line: 803, column: 21, scope: !4794)
!4800 = !DILocation(line: 803, column: 19, scope: !4794)
!4801 = !DILocation(line: 804, column: 26, scope: !4794)
!4802 = !DILocation(line: 804, column: 24, scope: !4794)
!4803 = !DILocation(line: 806, column: 26, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4794, file: !2, line: 806, column: 13)
!4805 = !DILocation(line: 806, column: 18, scope: !4804)
!4806 = !DILocation(line: 806, column: 49, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !2, line: 806, column: 13)
!4808 = !DILocation(line: 806, column: 31, scope: !4807)
!4809 = !DILocation(line: 806, column: 13, scope: !4804)
!4810 = !DILocation(line: 807, column: 61, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !2, line: 806, column: 76)
!4812 = !DILocation(line: 807, column: 25, scope: !4811)
!4813 = !DILocation(line: 807, column: 23, scope: !4811)
!4814 = !DILocation(line: 808, column: 13, scope: !4811)
!4815 = !DILocation(line: 806, column: 64, scope: !4807)
!4816 = !DILocation(line: 806, column: 61, scope: !4807)
!4817 = !DILocation(line: 806, column: 13, scope: !4807)
!4818 = distinct !{!4818, !4809, !4819, !3768}
!4819 = !DILocation(line: 808, column: 13, scope: !4804)
!4820 = !DILocation(line: 809, column: 16, scope: !4794)
!4821 = !DILocation(line: 809, column: 19, scope: !4794)
!4822 = !DILocation(line: 811, column: 17, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4794, file: !2, line: 811, column: 17)
!4824 = !DILocation(line: 811, column: 28, scope: !4823)
!4825 = !DILocation(line: 811, column: 31, scope: !4823)
!4826 = !DILocation(line: 811, column: 39, scope: !4823)
!4827 = !DILocation(line: 811, column: 17, scope: !4794)
!4828 = !DILocation(line: 812, column: 19, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4823, file: !2, line: 811, column: 45)
!4830 = !DILocation(line: 812, column: 24, scope: !4829)
!4831 = !DILocation(line: 814, column: 17, scope: !4829)
!4832 = !DILocation(line: 814, column: 41, scope: !4829)
!4833 = !DILocation(line: 814, column: 24, scope: !4829)
!4834 = !DILocation(line: 815, column: 59, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4829, file: !2, line: 814, column: 45)
!4836 = !DILocation(line: 815, column: 28, scope: !4835)
!4837 = !DILocation(line: 815, column: 26, scope: !4835)
!4838 = !DILocation(line: 816, column: 21, scope: !4835)
!4839 = distinct !{!4839, !4831, !4840, !3768}
!4840 = !DILocation(line: 817, column: 17, scope: !4829)
!4841 = !DILocation(line: 818, column: 19, scope: !4829)
!4842 = !DILocation(line: 818, column: 22, scope: !4829)
!4843 = !DILocation(line: 820, column: 19, scope: !4829)
!4844 = !DILocation(line: 820, column: 24, scope: !4829)
!4845 = !DILocation(line: 822, column: 17, scope: !4829)
!4846 = distinct !{!4846, !4790, !4847, !3768}
!4847 = !DILocation(line: 843, column: 9, scope: !4769)
!4848 = !DILocation(line: 828, column: 51, scope: !4794)
!4849 = !DILocation(line: 828, column: 20, scope: !4794)
!4850 = !DILocation(line: 828, column: 18, scope: !4794)
!4851 = !DILocation(line: 829, column: 13, scope: !4794)
!4852 = !DILocation(line: 834, column: 13, scope: !4794)
!4853 = !DILocation(line: 834, column: 37, scope: !4794)
!4854 = !DILocation(line: 834, column: 20, scope: !4794)
!4855 = !DILocation(line: 835, column: 55, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4794, file: !2, line: 834, column: 41)
!4857 = !DILocation(line: 835, column: 24, scope: !4856)
!4858 = !DILocation(line: 835, column: 22, scope: !4856)
!4859 = !DILocation(line: 836, column: 17, scope: !4856)
!4860 = distinct !{!4860, !4852, !4861, !3768}
!4861 = !DILocation(line: 837, column: 13, scope: !4794)
!4862 = !DILocation(line: 838, column: 16, scope: !4794)
!4863 = !DILocation(line: 838, column: 19, scope: !4794)
!4864 = !DILocation(line: 838, column: 22, scope: !4794)
!4865 = !DILocation(line: 839, column: 15, scope: !4794)
!4866 = !DILocation(line: 839, column: 18, scope: !4794)
!4867 = !DILocation(line: 845, column: 21, scope: !4769)
!4868 = !DILocation(line: 845, column: 9, scope: !4769)
!4869 = !DILocation(line: 845, column: 12, scope: !4769)
!4870 = !DILocation(line: 845, column: 17, scope: !4769)
!4871 = !DILocation(line: 846, column: 5, scope: !4769)
!4872 = !DILocation(line: 848, column: 9, scope: !4360)
!4873 = !DILocation(line: 848, column: 14, scope: !4360)
!4874 = !DILocation(line: 848, column: 23, scope: !4360)
!4875 = !DILocation(line: 848, column: 9, scope: !4322)
!4876 = !DILocation(line: 850, column: 17, scope: !4359)
!4877 = !DILocation(line: 850, column: 20, scope: !4359)
!4878 = !DILocation(line: 850, column: 31, scope: !4359)
!4879 = !DILocation(line: 850, column: 39, scope: !4359)
!4880 = !DILocation(line: 850, column: 14, scope: !4359)
!4881 = !DILocation(line: 851, column: 18, scope: !4359)
!4882 = !DILocation(line: 851, column: 24, scope: !4359)
!4883 = !DILocation(line: 851, column: 16, scope: !4359)
!4884 = !DILocation(line: 853, column: 16, scope: !4358)
!4885 = !DILocation(line: 853, column: 14, scope: !4358)
!4886 = !DILocation(line: 855, column: 17, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 855, column: 17)
!4888 = !DILocation(line: 855, column: 22, scope: !4887)
!4889 = !DILocation(line: 855, column: 28, scope: !4887)
!4890 = !DILocation(line: 855, column: 19, scope: !4887)
!4891 = !DILocation(line: 855, column: 17, scope: !4356)
!4892 = !DILocation(line: 856, column: 21, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !2, line: 856, column: 21)
!4894 = distinct !DILexicalBlock(scope: !4887, file: !2, line: 855, column: 35)
!4895 = !DILocation(line: 856, column: 27, scope: !4893)
!4896 = !DILocation(line: 856, column: 32, scope: !4893)
!4897 = !DILocation(line: 856, column: 21, scope: !4894)
!4898 = !DILocation(line: 857, column: 21, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4893, file: !2, line: 856, column: 41)
!4900 = !DILocation(line: 860, column: 24, scope: !4894)
!4901 = !DILocation(line: 860, column: 30, scope: !4894)
!4902 = !DILocation(line: 860, column: 22, scope: !4894)
!4903 = !DILocation(line: 861, column: 26, scope: !4894)
!4904 = !DILocation(line: 861, column: 32, scope: !4894)
!4905 = !DILocation(line: 861, column: 24, scope: !4894)
!4906 = !DILocation(line: 862, column: 19, scope: !4894)
!4907 = !DILocation(line: 863, column: 13, scope: !4894)
!4908 = !DILocation(line: 865, column: 20, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 865, column: 13)
!4910 = !DILocation(line: 865, column: 18, scope: !4909)
!4911 = !DILocation(line: 865, column: 25, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 865, column: 13)
!4913 = !DILocation(line: 865, column: 29, scope: !4912)
!4914 = !DILocation(line: 865, column: 27, scope: !4912)
!4915 = !DILocation(line: 865, column: 13, scope: !4909)
!4916 = !DILocation(line: 866, column: 22, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !2, line: 866, column: 21)
!4918 = distinct !DILexicalBlock(scope: !4912, file: !2, line: 865, column: 49)
!4919 = !DILocation(line: 866, column: 29, scope: !4917)
!4920 = !DILocation(line: 866, column: 35, scope: !4917)
!4921 = !DILocation(line: 866, column: 43, scope: !4917)
!4922 = !DILocation(line: 866, column: 32, scope: !4917)
!4923 = !DILocation(line: 866, column: 21, scope: !4918)
!4924 = !DILocation(line: 867, column: 21, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4917, file: !2, line: 866, column: 47)
!4926 = !DILocation(line: 869, column: 13, scope: !4918)
!4927 = !DILocation(line: 865, column: 45, scope: !4912)
!4928 = !DILocation(line: 865, column: 13, scope: !4912)
!4929 = distinct !{!4929, !4915, !4930, !3768}
!4930 = !DILocation(line: 869, column: 13, scope: !4909)
!4931 = !DILocation(line: 871, column: 19, scope: !4356)
!4932 = !DILocation(line: 871, column: 22, scope: !4356)
!4933 = !DILocation(line: 871, column: 17, scope: !4356)
!4934 = !DILocation(line: 872, column: 23, scope: !4356)
!4935 = !DILocation(line: 872, column: 13, scope: !4356)
!4936 = !DILocation(line: 872, column: 16, scope: !4356)
!4937 = !DILocation(line: 872, column: 21, scope: !4356)
!4938 = !DILocation(line: 874, column: 20, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 874, column: 13)
!4940 = !DILocation(line: 874, column: 18, scope: !4939)
!4941 = !DILocation(line: 874, column: 25, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !2, line: 874, column: 13)
!4943 = !DILocation(line: 874, column: 29, scope: !4942)
!4944 = !DILocation(line: 874, column: 36, scope: !4942)
!4945 = !DILocation(line: 874, column: 39, scope: !4942)
!4946 = !DILocation(line: 874, column: 43, scope: !4942)
!4947 = !DILocation(line: 874, column: 27, scope: !4942)
!4948 = !DILocation(line: 874, column: 13, scope: !4939)
!4949 = !DILocation(line: 875, column: 22, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4942, file: !2, line: 874, column: 53)
!4951 = !DILocation(line: 875, column: 29, scope: !4950)
!4952 = !DILocation(line: 875, column: 32, scope: !4950)
!4953 = !DILocation(line: 875, column: 36, scope: !4950)
!4954 = !DILocation(line: 875, column: 41, scope: !4950)
!4955 = !DILocation(line: 875, column: 20, scope: !4950)
!4956 = !DILocation(line: 877, column: 21, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4950, file: !2, line: 877, column: 21)
!4958 = !DILocation(line: 877, column: 24, scope: !4957)
!4959 = !DILocation(line: 877, column: 31, scope: !4957)
!4960 = !DILocation(line: 877, column: 34, scope: !4957)
!4961 = !DILocation(line: 877, column: 37, scope: !4957)
!4962 = !DILocation(line: 877, column: 21, scope: !4950)
!4963 = !DILocation(line: 878, column: 24, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !2, line: 877, column: 45)
!4965 = !DILocation(line: 880, column: 17, scope: !4964)
!4966 = !DILocation(line: 880, column: 28, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4957, file: !2, line: 880, column: 28)
!4968 = !DILocation(line: 880, column: 31, scope: !4967)
!4969 = !DILocation(line: 880, column: 28, scope: !4957)
!4970 = !DILocation(line: 881, column: 24, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4967, file: !2, line: 880, column: 39)
!4972 = !DILocation(line: 882, column: 17, scope: !4971)
!4973 = !DILocation(line: 884, column: 30, scope: !4950)
!4974 = !DILocation(line: 884, column: 18, scope: !4950)
!4975 = !DILocation(line: 884, column: 21, scope: !4950)
!4976 = !DILocation(line: 884, column: 25, scope: !4950)
!4977 = !DILocation(line: 884, column: 28, scope: !4950)
!4978 = !DILocation(line: 885, column: 13, scope: !4950)
!4979 = !DILocation(line: 874, column: 49, scope: !4942)
!4980 = !DILocation(line: 874, column: 13, scope: !4942)
!4981 = distinct !{!4981, !4948, !4982, !3768}
!4982 = !DILocation(line: 885, column: 13, scope: !4939)
!4983 = !DILocation(line: 887, column: 14, scope: !4356)
!4984 = !DILocation(line: 887, column: 17, scope: !4356)
!4985 = !DILocation(line: 887, column: 21, scope: !4356)
!4986 = !DILocation(line: 887, column: 24, scope: !4356)
!4987 = !DILocation(line: 889, column: 19, scope: !4356)
!4988 = !DILocation(line: 889, column: 22, scope: !4356)
!4989 = !DILocation(line: 889, column: 17, scope: !4356)
!4990 = !DILocation(line: 890, column: 23, scope: !4356)
!4991 = !{!4622, !2271, i64 32}
!4992 = !DILocation(line: 890, column: 13, scope: !4356)
!4993 = !DILocation(line: 890, column: 16, scope: !4356)
!4994 = !DILocation(line: 890, column: 21, scope: !4356)
!4995 = !DILocation(line: 891, column: 14, scope: !4356)
!4996 = !DILocation(line: 891, column: 17, scope: !4356)
!4997 = !DILocation(line: 891, column: 21, scope: !4356)
!4998 = !DILocation(line: 891, column: 24, scope: !4356)
!4999 = !DILocation(line: 891, column: 13, scope: !4356)
!5000 = !DILocation(line: 896, column: 9, scope: !4356)
!5001 = !DILocation(line: 898, column: 13, scope: !4356)
!5002 = !DILocation(line: 853, column: 34, scope: !4357)
!5003 = !DILocation(line: 853, column: 9, scope: !4357)
!5004 = distinct !{!5004, !5005, !5006}
!5005 = !DILocation(line: 853, column: 9, scope: !4358)
!5006 = !DILocation(line: 899, column: 9, scope: !4358)
!5007 = !DILocation(line: 900, column: 5, scope: !4359)
!5008 = !DILocation(line: 902, column: 6, scope: !4322)
!5009 = !DILocation(line: 902, column: 9, scope: !4322)
!5010 = !DILocation(line: 902, column: 13, scope: !4322)
!5011 = !DILocation(line: 902, column: 16, scope: !4322)
!5012 = !DILocation(line: 904, column: 9, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 904, column: 9)
!5014 = !DILocation(line: 904, column: 12, scope: !5013)
!5015 = !DILocation(line: 904, column: 9, scope: !4322)
!5016 = !DILocation(line: 905, column: 37, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5013, file: !2, line: 904, column: 39)
!5018 = !DILocation(line: 905, column: 9, scope: !5017)
!5019 = !DILocation(line: 905, column: 12, scope: !5017)
!5020 = !DILocation(line: 905, column: 22, scope: !5017)
!5021 = !DILocation(line: 905, column: 35, scope: !5017)
!5022 = !DILocation(line: 907, column: 5, scope: !5017)
!5023 = !DILocation(line: 907, column: 16, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5013, file: !2, line: 907, column: 16)
!5025 = !DILocation(line: 907, column: 21, scope: !5024)
!5026 = !DILocation(line: 907, column: 30, scope: !5024)
!5027 = !DILocation(line: 907, column: 16, scope: !5013)
!5028 = !DILocation(line: 908, column: 16, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 907, column: 49)
!5030 = !DILocation(line: 908, column: 19, scope: !5029)
!5031 = !DILocation(line: 908, column: 29, scope: !5029)
!5032 = !DILocation(line: 908, column: 14, scope: !5029)
!5033 = !DILocation(line: 909, column: 37, scope: !5029)
!5034 = !DILocation(line: 909, column: 9, scope: !5029)
!5035 = !DILocation(line: 909, column: 12, scope: !5029)
!5036 = !DILocation(line: 909, column: 22, scope: !5029)
!5037 = !DILocation(line: 909, column: 35, scope: !5029)
!5038 = !DILocation(line: 911, column: 9, scope: !5029)
!5039 = !DILocation(line: 911, column: 16, scope: !5029)
!5040 = !DILocation(line: 912, column: 17, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5029, file: !2, line: 911, column: 22)
!5042 = !DILocation(line: 912, column: 15, scope: !5041)
!5043 = !DILocation(line: 913, column: 17, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 913, column: 17)
!5045 = !DILocation(line: 913, column: 19, scope: !5044)
!5046 = !DILocation(line: 913, column: 17, scope: !5041)
!5047 = !DILocation(line: 914, column: 17, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5044, file: !2, line: 913, column: 28)
!5049 = !DILocation(line: 917, column: 13, scope: !5041)
!5050 = !DILocation(line: 919, column: 45, scope: !5041)
!5051 = !DILocation(line: 919, column: 48, scope: !5041)
!5052 = !DILocation(line: 919, column: 24, scope: !5041)
!5053 = !DILocation(line: 919, column: 13, scope: !5041)
!5054 = !DILocation(line: 919, column: 17, scope: !5041)
!5055 = !DILocation(line: 919, column: 22, scope: !5041)
!5056 = !DILocation(line: 920, column: 17, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 920, column: 17)
!5058 = !DILocation(line: 920, column: 21, scope: !5057)
!5059 = !DILocation(line: 920, column: 26, scope: !5057)
!5060 = !DILocation(line: 920, column: 17, scope: !5041)
!5061 = !DILocation(line: 921, column: 17, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5057, file: !2, line: 920, column: 35)
!5063 = !DILocation(line: 924, column: 18, scope: !5041)
!5064 = !DILocation(line: 924, column: 22, scope: !5041)
!5065 = !DILocation(line: 924, column: 16, scope: !5041)
!5066 = !DILocation(line: 925, column: 23, scope: !5041)
!5067 = !DILocation(line: 925, column: 13, scope: !5041)
!5068 = !DILocation(line: 925, column: 17, scope: !5041)
!5069 = !DILocation(line: 925, column: 21, scope: !5041)
!5070 = !DILocation(line: 927, column: 20, scope: !5041)
!5071 = !DILocation(line: 927, column: 26, scope: !5041)
!5072 = !DILocation(line: 927, column: 18, scope: !5041)
!5073 = distinct !{!5073, !5038, !5074, !3768}
!5074 = !DILocation(line: 928, column: 9, scope: !5029)
!5075 = !DILocation(line: 930, column: 5, scope: !5029)
!5076 = !DILocation(line: 931, column: 37, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 930, column: 12)
!5078 = !DILocation(line: 931, column: 9, scope: !5077)
!5079 = !DILocation(line: 931, column: 12, scope: !5077)
!5080 = !DILocation(line: 931, column: 22, scope: !5077)
!5081 = !DILocation(line: 931, column: 35, scope: !5077)
!5082 = !DILocation(line: 934, column: 5, scope: !4322)
!5083 = !DILocation(line: 934, column: 9, scope: !4322)
!5084 = !DILocation(line: 934, column: 14, scope: !4322)
!5085 = !DILocation(line: 936, column: 5, scope: !4322)
!5086 = !DILocation(line: 937, column: 1, scope: !4322)
!5087 = distinct !DISubprogram(name: "ngx_http_scgi_reinit_request", scope: !2, file: !2, line: 941, type: !1422, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5088)
!5088 = !{!5089, !5090}
!5089 = !DILocalVariable(name: "r", arg: 1, scope: !5087, file: !2, line: 941, type: !90)
!5090 = !DILocalVariable(name: "status", scope: !5087, file: !2, line: 943, type: !3369)
!5091 = !DILocation(line: 941, column: 50, scope: !5087)
!5092 = !DILocation(line: 943, column: 5, scope: !5087)
!5093 = !DILocation(line: 943, column: 25, scope: !5087)
!5094 = !DILocation(line: 945, column: 14, scope: !5087)
!5095 = !DILocation(line: 945, column: 12, scope: !5087)
!5096 = !DILocation(line: 947, column: 9, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5087, file: !2, line: 947, column: 9)
!5098 = !DILocation(line: 947, column: 16, scope: !5097)
!5099 = !DILocation(line: 947, column: 9, scope: !5087)
!5100 = !DILocation(line: 948, column: 9, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5097, file: !2, line: 947, column: 25)
!5102 = !DILocation(line: 951, column: 5, scope: !5087)
!5103 = !DILocation(line: 951, column: 13, scope: !5087)
!5104 = !DILocation(line: 951, column: 18, scope: !5087)
!5105 = !{!5106, !2281, i64 8}
!5106 = !{!"", !2281, i64 0, !2281, i64 8, !2281, i64 16, !2271, i64 24, !2271, i64 32}
!5107 = !DILocation(line: 952, column: 5, scope: !5087)
!5108 = !DILocation(line: 952, column: 13, scope: !5087)
!5109 = !DILocation(line: 952, column: 19, scope: !5087)
!5110 = !{!5106, !2281, i64 16}
!5111 = !DILocation(line: 953, column: 5, scope: !5087)
!5112 = !DILocation(line: 953, column: 13, scope: !5087)
!5113 = !DILocation(line: 953, column: 19, scope: !5087)
!5114 = !{!5106, !2271, i64 24}
!5115 = !DILocation(line: 954, column: 5, scope: !5087)
!5116 = !DILocation(line: 954, column: 13, scope: !5087)
!5117 = !DILocation(line: 954, column: 17, scope: !5087)
!5118 = !{!5106, !2271, i64 32}
!5119 = !DILocation(line: 956, column: 5, scope: !5087)
!5120 = !DILocation(line: 956, column: 8, scope: !5087)
!5121 = !DILocation(line: 956, column: 18, scope: !5087)
!5122 = !DILocation(line: 956, column: 33, scope: !5087)
!5123 = !DILocation(line: 957, column: 5, scope: !5087)
!5124 = !DILocation(line: 957, column: 8, scope: !5087)
!5125 = !DILocation(line: 957, column: 14, scope: !5087)
!5126 = !DILocation(line: 959, column: 5, scope: !5087)
!5127 = !DILocation(line: 960, column: 1, scope: !5087)
!5128 = distinct !DISubprogram(name: "ngx_http_scgi_process_status_line", scope: !2, file: !2, line: 964, type: !1422, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5134}
!5130 = !DILocalVariable(name: "r", arg: 1, scope: !5128, file: !2, line: 964, type: !90)
!5131 = !DILocalVariable(name: "len", scope: !5128, file: !2, line: 966, type: !21)
!5132 = !DILocalVariable(name: "rc", scope: !5128, file: !2, line: 967, type: !85)
!5133 = !DILocalVariable(name: "status", scope: !5128, file: !2, line: 968, type: !3369)
!5134 = !DILocalVariable(name: "u", scope: !5128, file: !2, line: 969, type: !736)
!5135 = !DILocation(line: 964, column: 55, scope: !5128)
!5136 = !DILocation(line: 966, column: 5, scope: !5128)
!5137 = !DILocation(line: 966, column: 27, scope: !5128)
!5138 = !DILocation(line: 967, column: 5, scope: !5128)
!5139 = !DILocation(line: 967, column: 27, scope: !5128)
!5140 = !DILocation(line: 968, column: 5, scope: !5128)
!5141 = !DILocation(line: 968, column: 27, scope: !5128)
!5142 = !DILocation(line: 969, column: 5, scope: !5128)
!5143 = !DILocation(line: 969, column: 27, scope: !5128)
!5144 = !DILocation(line: 971, column: 14, scope: !5128)
!5145 = !DILocation(line: 971, column: 12, scope: !5128)
!5146 = !DILocation(line: 973, column: 9, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 973, column: 9)
!5148 = !DILocation(line: 973, column: 16, scope: !5147)
!5149 = !DILocation(line: 973, column: 9, scope: !5128)
!5150 = !DILocation(line: 974, column: 9, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 973, column: 25)
!5152 = !DILocation(line: 977, column: 9, scope: !5128)
!5153 = !DILocation(line: 977, column: 12, scope: !5128)
!5154 = !DILocation(line: 977, column: 7, scope: !5128)
!5155 = !DILocation(line: 979, column: 37, scope: !5128)
!5156 = !DILocation(line: 979, column: 41, scope: !5128)
!5157 = !DILocation(line: 979, column: 44, scope: !5128)
!5158 = !DILocation(line: 979, column: 52, scope: !5128)
!5159 = !DILocation(line: 979, column: 10, scope: !5128)
!5160 = !DILocation(line: 979, column: 8, scope: !5128)
!5161 = !DILocation(line: 981, column: 9, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 981, column: 9)
!5163 = !DILocation(line: 981, column: 12, scope: !5162)
!5164 = !DILocation(line: 981, column: 9, scope: !5128)
!5165 = !DILocation(line: 982, column: 16, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5162, file: !2, line: 981, column: 26)
!5167 = !DILocation(line: 982, column: 9, scope: !5166)
!5168 = !DILocation(line: 985, column: 9, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 985, column: 9)
!5170 = !DILocation(line: 985, column: 12, scope: !5169)
!5171 = !DILocation(line: 985, column: 9, scope: !5128)
!5172 = !DILocation(line: 986, column: 9, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5169, file: !2, line: 985, column: 26)
!5174 = !DILocation(line: 986, column: 12, scope: !5173)
!5175 = !DILocation(line: 986, column: 27, scope: !5173)
!5176 = !DILocation(line: 987, column: 45, scope: !5173)
!5177 = !DILocation(line: 987, column: 16, scope: !5173)
!5178 = !DILocation(line: 987, column: 9, scope: !5173)
!5179 = !DILocation(line: 990, column: 9, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 990, column: 9)
!5181 = !DILocation(line: 990, column: 12, scope: !5180)
!5182 = !{!3440, !2271, i64 1032}
!5183 = !DILocation(line: 990, column: 18, scope: !5180)
!5184 = !DILocation(line: 990, column: 21, scope: !5180)
!5185 = !DILocation(line: 990, column: 24, scope: !5180)
!5186 = !DILocation(line: 990, column: 31, scope: !5180)
!5187 = !{!5188, !2281, i64 0}
!5188 = !{!"", !2281, i64 0, !2281, i64 8, !2281, i64 16, !2281, i64 24, !2281, i64 32, !2281, i64 40, !2281, i64 48, !2281, i64 56, !2271, i64 64}
!5189 = !DILocation(line: 990, column: 38, scope: !5180)
!5190 = !DILocation(line: 990, column: 9, scope: !5128)
!5191 = !DILocation(line: 991, column: 28, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5180, file: !2, line: 990, column: 44)
!5193 = !DILocation(line: 991, column: 36, scope: !5192)
!5194 = !DILocation(line: 991, column: 9, scope: !5192)
!5195 = !DILocation(line: 991, column: 12, scope: !5192)
!5196 = !DILocation(line: 991, column: 19, scope: !5192)
!5197 = !DILocation(line: 991, column: 26, scope: !5192)
!5198 = !DILocation(line: 992, column: 5, scope: !5192)
!5199 = !DILocation(line: 994, column: 30, scope: !5128)
!5200 = !DILocation(line: 994, column: 38, scope: !5128)
!5201 = !DILocation(line: 994, column: 5, scope: !5128)
!5202 = !DILocation(line: 994, column: 8, scope: !5128)
!5203 = !DILocation(line: 994, column: 19, scope: !5128)
!5204 = !DILocation(line: 994, column: 28, scope: !5128)
!5205 = !{!3440, !2281, i64 464}
!5206 = !DILocation(line: 996, column: 11, scope: !5128)
!5207 = !DILocation(line: 996, column: 19, scope: !5128)
!5208 = !DILocation(line: 996, column: 25, scope: !5128)
!5209 = !DILocation(line: 996, column: 33, scope: !5128)
!5210 = !DILocation(line: 996, column: 23, scope: !5128)
!5211 = !DILocation(line: 996, column: 9, scope: !5128)
!5212 = !DILocation(line: 997, column: 37, scope: !5128)
!5213 = !DILocation(line: 997, column: 5, scope: !5128)
!5214 = !DILocation(line: 997, column: 8, scope: !5128)
!5215 = !DILocation(line: 997, column: 19, scope: !5128)
!5216 = !DILocation(line: 997, column: 31, scope: !5128)
!5217 = !DILocation(line: 997, column: 35, scope: !5128)
!5218 = !{!3440, !2281, i64 472}
!5219 = !DILocation(line: 999, column: 50, scope: !5128)
!5220 = !DILocation(line: 999, column: 53, scope: !5128)
!5221 = !DILocation(line: 999, column: 59, scope: !5128)
!5222 = !DILocation(line: 999, column: 38, scope: !5128)
!5223 = !DILocation(line: 999, column: 5, scope: !5128)
!5224 = !DILocation(line: 999, column: 8, scope: !5128)
!5225 = !DILocation(line: 999, column: 19, scope: !5128)
!5226 = !DILocation(line: 999, column: 31, scope: !5128)
!5227 = !DILocation(line: 999, column: 36, scope: !5128)
!5228 = !{!3440, !2271, i64 480}
!5229 = !DILocation(line: 1000, column: 9, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 1000, column: 9)
!5231 = !DILocation(line: 1000, column: 12, scope: !5230)
!5232 = !DILocation(line: 1000, column: 23, scope: !5230)
!5233 = !DILocation(line: 1000, column: 35, scope: !5230)
!5234 = !DILocation(line: 1000, column: 40, scope: !5230)
!5235 = !DILocation(line: 1000, column: 9, scope: !5128)
!5236 = !DILocation(line: 1001, column: 9, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5230, file: !2, line: 1000, column: 49)
!5238 = !DILocation(line: 1004, column: 5, scope: !5128)
!5239 = !DILocation(line: 1010, column: 5, scope: !5128)
!5240 = !DILocation(line: 1010, column: 8, scope: !5128)
!5241 = !DILocation(line: 1010, column: 23, scope: !5128)
!5242 = !DILocation(line: 1012, column: 41, scope: !5128)
!5243 = !DILocation(line: 1012, column: 12, scope: !5128)
!5244 = !DILocation(line: 1012, column: 5, scope: !5128)
!5245 = !DILocation(line: 1013, column: 1, scope: !5128)
!5246 = distinct !DISubprogram(name: "ngx_http_scgi_abort_request", scope: !2, file: !2, line: 1149, type: !506, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5247)
!5247 = !{!5248}
!5248 = !DILocalVariable(name: "r", arg: 1, scope: !5246, file: !2, line: 1149, type: !90)
!5249 = !DILocation(line: 1149, column: 49, scope: !5246)
!5250 = !DILocation(line: 1154, column: 5, scope: !5246)
!5251 = distinct !DISubprogram(name: "ngx_http_scgi_finalize_request", scope: !2, file: !2, line: 1159, type: !1430, scopeLine: 1160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5252)
!5252 = !{!5253, !5254}
!5253 = !DILocalVariable(name: "r", arg: 1, scope: !5251, file: !2, line: 1159, type: !90)
!5254 = !DILocalVariable(name: "rc", arg: 2, scope: !5251, file: !2, line: 1159, type: !85)
!5255 = !DILocation(line: 1159, column: 52, scope: !5251)
!5256 = !DILocation(line: 1159, column: 65, scope: !5251)
!5257 = !DILocation(line: 1164, column: 5, scope: !5251)
!5258 = !DISubprogram(name: "ngx_http_read_client_request_body", scope: !92, file: !92, line: 136, type: !5259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!85, !90, !1572}
!5261 = !DISubprogram(name: "ngx_http_script_run", scope: !46, file: !46, line: 222, type: !5262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!23, !90, !756, !16, !21, !16}
!5264 = !DISubprogram(name: "ngx_parse_url", scope: !783, file: !783, line: 122, type: !5265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!85, !391, !5267}
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!5268 = !DISubprogram(name: "ngx_log_error_core", scope: !147, file: !147, line: 90, type: !5269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !11, !144, !3353, !963, null}
!5271 = !DISubprogram(name: "ngx_array_push", scope: !518, file: !518, line: 27, type: !5272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!16, !932}
!5274 = !DISubprogram(name: "ngx_http_complex_value", scope: !46, file: !46, line: 208, type: !5275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!85, !90, !1141, !756}
!5277 = !DISubprogram(name: "ngx_sprintf", scope: !61, file: !61, line: 153, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!23, !23, !963, null}
!5280 = !DISubprogram(name: "ngx_http_script_flush_no_cacheable_variables", scope: !46, file: !46, line: 224, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !90, !932}
!5283 = !DISubprogram(name: "ngx_pnalloc", scope: !394, file: !394, line: 80, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5284 = !DISubprogram(name: "ngx_hash_find", scope: !1114, file: !1114, line: 100, type: !5285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!16, !2549, !11, !23, !21}
!5287 = !DISubprogram(name: "ngx_create_temp_buf", scope: !39, file: !39, line: 143, type: !5288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!231, !391, !21}
!5290 = !DISubprogram(name: "ngx_alloc_chain_link", scope: !39, file: !39, line: 150, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!226, !391}
!5293 = !DISubprogram(name: "ngx_http_parse_status_line", scope: !92, file: !92, line: 96, type: !5294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!85, !90, !231, !3369}
!5296 = distinct !DISubprogram(name: "ngx_http_scgi_process_header", scope: !2, file: !2, line: 1017, type: !1422, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5297)
!5297 = !{!5298, !5299, !5300, !5301, !5302, !5303, !5304, !5319, !5326}
!5298 = !DILocalVariable(name: "r", arg: 1, scope: !5296, file: !2, line: 1017, type: !90)
!5299 = !DILocalVariable(name: "status_line", scope: !5296, file: !2, line: 1019, type: !756)
!5300 = !DILocalVariable(name: "rc", scope: !5296, file: !2, line: 1020, type: !85)
!5301 = !DILocalVariable(name: "status", scope: !5296, file: !2, line: 1020, type: !85)
!5302 = !DILocalVariable(name: "h", scope: !5296, file: !2, line: 1021, type: !1203)
!5303 = !DILocalVariable(name: "u", scope: !5296, file: !2, line: 1022, type: !736)
!5304 = !DILocalVariable(name: "hh", scope: !5296, file: !2, line: 1023, type: !5305)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_header_t", file: !739, line: 253, baseType: !5307)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 246, size: 448, elements: !5308)
!5308 = !{!5309, !5310, !5315, !5316, !5317, !5318}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5307, file: !739, line: 247, baseType: !72, size: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5307, file: !739, line: 248, baseType: !5311, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_header_handler_pt", file: !92, line: 24, baseType: !5312)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!85, !90, !1203, !11}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5307, file: !739, line: 249, baseType: !11, size: 64, offset: 192)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "copy_handler", scope: !5307, file: !739, line: 250, baseType: !5311, size: 64, offset: 256)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !5307, file: !739, line: 251, baseType: !11, size: 64, offset: 320)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !5307, file: !739, line: 252, baseType: !11, size: 64, offset: 384)
!5319 = !DILocalVariable(name: "umcf", scope: !5296, file: !2, line: 1024, type: !5320)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_main_conf_t", file: !739, line: 77, baseType: !5322)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 73, size: 448, elements: !5323)
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in_hash", scope: !5322, file: !739, line: 74, baseType: !1113, size: 128)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "upstreams", scope: !5322, file: !739, line: 75, baseType: !517, size: 320, offset: 128)
!5326 = !DILabel(scope: !5327, name: "done", file: !2, line: 1123)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 1082, column: 47)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 1082, column: 13)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !2, line: 1028, column: 16)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !2, line: 1028, column: 5)
!5331 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 1028, column: 5)
!5332 = !DILocation(line: 1017, column: 50, scope: !5296)
!5333 = !DILocation(line: 1019, column: 5, scope: !5296)
!5334 = !DILocation(line: 1019, column: 37, scope: !5296)
!5335 = !DILocation(line: 1020, column: 5, scope: !5296)
!5336 = !DILocation(line: 1020, column: 37, scope: !5296)
!5337 = !DILocation(line: 1020, column: 41, scope: !5296)
!5338 = !DILocation(line: 1021, column: 5, scope: !5296)
!5339 = !DILocation(line: 1021, column: 37, scope: !5296)
!5340 = !DILocation(line: 1022, column: 5, scope: !5296)
!5341 = !DILocation(line: 1022, column: 37, scope: !5296)
!5342 = !DILocation(line: 1023, column: 5, scope: !5296)
!5343 = !DILocation(line: 1023, column: 37, scope: !5296)
!5344 = !DILocation(line: 1024, column: 5, scope: !5296)
!5345 = !DILocation(line: 1024, column: 37, scope: !5296)
!5346 = !DILocation(line: 1026, column: 12, scope: !5296)
!5347 = !DILocation(line: 1026, column: 10, scope: !5296)
!5348 = !DILocation(line: 1028, column: 5, scope: !5296)
!5349 = !DILocation(line: 1030, column: 41, scope: !5329)
!5350 = !DILocation(line: 1030, column: 45, scope: !5329)
!5351 = !DILocation(line: 1030, column: 48, scope: !5329)
!5352 = !DILocation(line: 1030, column: 58, scope: !5329)
!5353 = !DILocation(line: 1030, column: 14, scope: !5329)
!5354 = !DILocation(line: 1030, column: 12, scope: !5329)
!5355 = !DILocation(line: 1032, column: 13, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 1032, column: 13)
!5357 = !DILocation(line: 1032, column: 16, scope: !5356)
!5358 = !DILocation(line: 1032, column: 13, scope: !5329)
!5359 = !DILocation(line: 1036, column: 32, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5356, file: !2, line: 1032, column: 27)
!5361 = !DILocation(line: 1036, column: 35, scope: !5360)
!5362 = !DILocation(line: 1036, column: 45, scope: !5360)
!5363 = !DILocation(line: 1036, column: 56, scope: !5360)
!5364 = !DILocation(line: 1036, column: 17, scope: !5360)
!5365 = !DILocation(line: 1036, column: 15, scope: !5360)
!5366 = !DILocation(line: 1037, column: 17, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 1037, column: 17)
!5368 = !DILocation(line: 1037, column: 19, scope: !5367)
!5369 = !DILocation(line: 1037, column: 17, scope: !5360)
!5370 = !DILocation(line: 1038, column: 17, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5367, file: !2, line: 1037, column: 28)
!5372 = !DILocation(line: 1041, column: 23, scope: !5360)
!5373 = !DILocation(line: 1041, column: 26, scope: !5360)
!5374 = !{!3402, !2281, i64 1240}
!5375 = !DILocation(line: 1041, column: 13, scope: !5360)
!5376 = !DILocation(line: 1041, column: 16, scope: !5360)
!5377 = !DILocation(line: 1041, column: 21, scope: !5360)
!5378 = !{!4622, !2281, i64 0}
!5379 = !DILocation(line: 1043, column: 26, scope: !5360)
!5380 = !DILocation(line: 1043, column: 29, scope: !5360)
!5381 = !{!3402, !2271, i64 1296}
!5382 = !DILocation(line: 1043, column: 47, scope: !5360)
!5383 = !DILocation(line: 1043, column: 50, scope: !5360)
!5384 = !{!3402, !2271, i64 1288}
!5385 = !DILocation(line: 1043, column: 45, scope: !5360)
!5386 = !DILocation(line: 1043, column: 13, scope: !5360)
!5387 = !DILocation(line: 1043, column: 16, scope: !5360)
!5388 = !DILocation(line: 1043, column: 20, scope: !5360)
!5389 = !DILocation(line: 1043, column: 24, scope: !5360)
!5390 = !DILocation(line: 1044, column: 28, scope: !5360)
!5391 = !DILocation(line: 1044, column: 31, scope: !5360)
!5392 = !{!3402, !2271, i64 1312}
!5393 = !DILocation(line: 1044, column: 44, scope: !5360)
!5394 = !DILocation(line: 1044, column: 47, scope: !5360)
!5395 = !{!3402, !2271, i64 1304}
!5396 = !DILocation(line: 1044, column: 42, scope: !5360)
!5397 = !DILocation(line: 1044, column: 13, scope: !5360)
!5398 = !DILocation(line: 1044, column: 16, scope: !5360)
!5399 = !DILocation(line: 1044, column: 22, scope: !5360)
!5400 = !DILocation(line: 1044, column: 26, scope: !5360)
!5401 = !DILocation(line: 1046, column: 39, scope: !5360)
!5402 = !DILocation(line: 1046, column: 42, scope: !5360)
!5403 = !DILocation(line: 1047, column: 39, scope: !5360)
!5404 = !DILocation(line: 1047, column: 42, scope: !5360)
!5405 = !DILocation(line: 1047, column: 46, scope: !5360)
!5406 = !DILocation(line: 1047, column: 50, scope: !5360)
!5407 = !DILocation(line: 1047, column: 56, scope: !5360)
!5408 = !DILocation(line: 1047, column: 59, scope: !5360)
!5409 = !DILocation(line: 1047, column: 65, scope: !5360)
!5410 = !DILocation(line: 1047, column: 54, scope: !5360)
!5411 = !DILocation(line: 1047, column: 69, scope: !5360)
!5412 = !DILocation(line: 1048, column: 41, scope: !5360)
!5413 = !DILocation(line: 1048, column: 44, scope: !5360)
!5414 = !DILocation(line: 1048, column: 48, scope: !5360)
!5415 = !DILocation(line: 1048, column: 39, scope: !5360)
!5416 = !DILocation(line: 1046, column: 27, scope: !5360)
!5417 = !DILocation(line: 1046, column: 13, scope: !5360)
!5418 = !DILocation(line: 1046, column: 16, scope: !5360)
!5419 = !DILocation(line: 1046, column: 20, scope: !5360)
!5420 = !DILocation(line: 1046, column: 25, scope: !5360)
!5421 = !DILocation(line: 1049, column: 17, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 1049, column: 17)
!5423 = !DILocation(line: 1049, column: 20, scope: !5422)
!5424 = !DILocation(line: 1049, column: 24, scope: !5422)
!5425 = !DILocation(line: 1049, column: 29, scope: !5422)
!5426 = !DILocation(line: 1049, column: 17, scope: !5360)
!5427 = !DILocation(line: 1050, column: 17, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5422, file: !2, line: 1049, column: 38)
!5429 = !DILocation(line: 1050, column: 20, scope: !5428)
!5430 = !DILocation(line: 1050, column: 25, scope: !5428)
!5431 = !DILocation(line: 1051, column: 17, scope: !5428)
!5432 = !DILocation(line: 1054, column: 29, scope: !5360)
!5433 = !DILocation(line: 1054, column: 32, scope: !5360)
!5434 = !DILocation(line: 1054, column: 36, scope: !5360)
!5435 = !DILocation(line: 1054, column: 43, scope: !5360)
!5436 = !DILocation(line: 1054, column: 46, scope: !5360)
!5437 = !DILocation(line: 1054, column: 50, scope: !5360)
!5438 = !DILocation(line: 1054, column: 41, scope: !5360)
!5439 = !DILocation(line: 1054, column: 54, scope: !5360)
!5440 = !DILocation(line: 1054, column: 13, scope: !5360)
!5441 = !DILocation(line: 1054, column: 16, scope: !5360)
!5442 = !DILocation(line: 1054, column: 22, scope: !5360)
!5443 = !DILocation(line: 1054, column: 27, scope: !5360)
!5444 = !DILocation(line: 1055, column: 30, scope: !5360)
!5445 = !DILocation(line: 1055, column: 33, scope: !5360)
!5446 = !DILocation(line: 1055, column: 37, scope: !5360)
!5447 = !DILocation(line: 1055, column: 44, scope: !5360)
!5448 = !DILocation(line: 1055, column: 47, scope: !5360)
!5449 = !DILocation(line: 1055, column: 51, scope: !5360)
!5450 = !DILocation(line: 1055, column: 42, scope: !5360)
!5451 = !DILocation(line: 1055, column: 55, scope: !5360)
!5452 = !DILocation(line: 1055, column: 61, scope: !5360)
!5453 = !DILocation(line: 1055, column: 64, scope: !5360)
!5454 = !DILocation(line: 1055, column: 70, scope: !5360)
!5455 = !DILocation(line: 1055, column: 59, scope: !5360)
!5456 = !DILocation(line: 1055, column: 74, scope: !5360)
!5457 = !DILocation(line: 1055, column: 13, scope: !5360)
!5458 = !DILocation(line: 1055, column: 16, scope: !5360)
!5459 = !DILocation(line: 1055, column: 28, scope: !5360)
!5460 = !{!4622, !2271, i64 40}
!5461 = !DILocation(line: 1057, column: 13, scope: !5360)
!5462 = !DILocation(line: 1058, column: 13, scope: !5360)
!5463 = !DILocation(line: 1058, column: 16, scope: !5360)
!5464 = !DILocation(line: 1058, column: 20, scope: !5360)
!5465 = !DILocation(line: 1058, column: 25, scope: !5360)
!5466 = !DILocation(line: 1058, column: 28, scope: !5360)
!5467 = !DILocation(line: 1058, column: 32, scope: !5360)
!5468 = !DILocation(line: 1058, column: 37, scope: !5360)
!5469 = !DILocation(line: 1059, column: 13, scope: !5360)
!5470 = !DILocation(line: 1060, column: 13, scope: !5360)
!5471 = !DILocation(line: 1060, column: 16, scope: !5360)
!5472 = !DILocation(line: 1060, column: 22, scope: !5360)
!5473 = !DILocation(line: 1060, column: 27, scope: !5360)
!5474 = !DILocation(line: 1060, column: 30, scope: !5360)
!5475 = !DILocation(line: 1060, column: 36, scope: !5360)
!5476 = !DILocation(line: 1060, column: 41, scope: !5360)
!5477 = !DILocation(line: 1062, column: 17, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 1062, column: 17)
!5479 = !DILocation(line: 1062, column: 20, scope: !5478)
!5480 = !DILocation(line: 1062, column: 24, scope: !5478)
!5481 = !DILocation(line: 1062, column: 31, scope: !5478)
!5482 = !DILocation(line: 1062, column: 34, scope: !5478)
!5483 = !{!3402, !2281, i64 1248}
!5484 = !DILocation(line: 1062, column: 28, scope: !5478)
!5485 = !DILocation(line: 1062, column: 17, scope: !5360)
!5486 = !DILocation(line: 1063, column: 17, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5478, file: !2, line: 1062, column: 49)
!5488 = !DILocation(line: 1065, column: 13, scope: !5487)
!5489 = !DILocation(line: 1066, column: 28, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5478, file: !2, line: 1065, column: 20)
!5491 = !DILocation(line: 1066, column: 31, scope: !5490)
!5492 = !DILocation(line: 1066, column: 44, scope: !5490)
!5493 = !DILocation(line: 1066, column: 47, scope: !5490)
!5494 = !DILocation(line: 1066, column: 51, scope: !5490)
!5495 = !DILocation(line: 1066, column: 57, scope: !5490)
!5496 = !DILocation(line: 1066, column: 60, scope: !5490)
!5497 = !DILocation(line: 1066, column: 64, scope: !5490)
!5498 = !DILocation(line: 1066, column: 17, scope: !5490)
!5499 = !DILocation(line: 1069, column: 33, scope: !5360)
!5500 = !DILocation(line: 1069, column: 39, scope: !5360)
!5501 = !DILocation(line: 1069, column: 56, scope: !5360)
!5502 = !DILocation(line: 1069, column: 59, scope: !5360)
!5503 = !DILocation(line: 1070, column: 32, scope: !5360)
!5504 = !DILocation(line: 1070, column: 35, scope: !5360)
!5505 = !DILocation(line: 1070, column: 48, scope: !5360)
!5506 = !DILocation(line: 1070, column: 51, scope: !5360)
!5507 = !DILocation(line: 1070, column: 55, scope: !5360)
!5508 = !DILocation(line: 1069, column: 18, scope: !5360)
!5509 = !DILocation(line: 1069, column: 16, scope: !5360)
!5510 = !DILocation(line: 1072, column: 17, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5360, file: !2, line: 1072, column: 17)
!5512 = !DILocation(line: 1072, column: 20, scope: !5511)
!5513 = !DILocation(line: 1072, column: 23, scope: !5511)
!5514 = !DILocation(line: 1072, column: 27, scope: !5511)
!5515 = !{!5516, !2271, i64 16}
!5516 = !{!"", !2353, i64 0, !2271, i64 16, !2281, i64 24, !2271, i64 32, !2281, i64 40, !2281, i64 48}
!5517 = !DILocation(line: 1072, column: 35, scope: !5511)
!5518 = !DILocation(line: 1072, column: 38, scope: !5511)
!5519 = !DILocation(line: 1072, column: 41, scope: !5511)
!5520 = !DILocation(line: 1072, column: 45, scope: !5511)
!5521 = !{!5516, !2281, i64 24}
!5522 = !DILocation(line: 1072, column: 53, scope: !5511)
!5523 = !DILocation(line: 1072, column: 17, scope: !5360)
!5524 = !DILocation(line: 1073, column: 17, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5511, file: !2, line: 1072, column: 64)
!5526 = !DILocation(line: 1079, column: 13, scope: !5360)
!5527 = distinct !{!5527, !5528, !5529}
!5528 = !DILocation(line: 1028, column: 5, scope: !5331)
!5529 = !DILocation(line: 1144, column: 5, scope: !5331)
!5530 = !DILocation(line: 1082, column: 13, scope: !5328)
!5531 = !DILocation(line: 1082, column: 16, scope: !5328)
!5532 = !DILocation(line: 1082, column: 13, scope: !5329)
!5533 = !DILocation(line: 1089, column: 17, scope: !5327)
!5534 = !DILocation(line: 1089, column: 20, scope: !5327)
!5535 = !DILocation(line: 1089, column: 15, scope: !5327)
!5536 = !DILocation(line: 1091, column: 17, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5327, file: !2, line: 1091, column: 17)
!5538 = !DILocation(line: 1091, column: 20, scope: !5537)
!5539 = !DILocation(line: 1091, column: 31, scope: !5537)
!5540 = !DILocation(line: 1091, column: 17, scope: !5327)
!5541 = !DILocation(line: 1092, column: 17, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5537, file: !2, line: 1091, column: 41)
!5543 = !DILocation(line: 1095, column: 17, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5327, file: !2, line: 1095, column: 17)
!5545 = !DILocation(line: 1095, column: 20, scope: !5544)
!5546 = !DILocation(line: 1095, column: 31, scope: !5544)
!5547 = !{!3440, !2271, i64 488}
!5548 = !DILocation(line: 1095, column: 17, scope: !5327)
!5549 = !DILocation(line: 1096, column: 32, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5544, file: !2, line: 1095, column: 39)
!5551 = !DILocation(line: 1096, column: 35, scope: !5550)
!5552 = !DILocation(line: 1096, column: 46, scope: !5550)
!5553 = !DILocation(line: 1096, column: 54, scope: !5550)
!5554 = !DILocation(line: 1096, column: 29, scope: !5550)
!5555 = !DILocation(line: 1098, column: 35, scope: !5550)
!5556 = !DILocation(line: 1098, column: 48, scope: !5550)
!5557 = !DILocation(line: 1098, column: 26, scope: !5550)
!5558 = !DILocation(line: 1098, column: 24, scope: !5550)
!5559 = !DILocation(line: 1099, column: 21, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5550, file: !2, line: 1099, column: 21)
!5561 = !DILocation(line: 1099, column: 28, scope: !5560)
!5562 = !DILocation(line: 1099, column: 21, scope: !5550)
!5563 = !DILocation(line: 1100, column: 21, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 1100, column: 21)
!5565 = distinct !DILexicalBlock(scope: !5560, file: !2, line: 1099, column: 42)
!5566 = !DILocation(line: 1100, column: 21, scope: !5565)
!5567 = !DILocation(line: 1103, column: 21, scope: !5565)
!5568 = !DILocation(line: 1106, column: 42, scope: !5550)
!5569 = !DILocation(line: 1106, column: 17, scope: !5550)
!5570 = !DILocation(line: 1106, column: 20, scope: !5550)
!5571 = !DILocation(line: 1106, column: 31, scope: !5550)
!5572 = !DILocation(line: 1106, column: 40, scope: !5550)
!5573 = !DILocation(line: 1107, column: 17, scope: !5550)
!5574 = !DILocation(line: 1107, column: 20, scope: !5550)
!5575 = !DILocation(line: 1107, column: 31, scope: !5550)
!5576 = !DILocation(line: 1107, column: 46, scope: !5550)
!5577 = !DILocation(line: 1107, column: 45, scope: !5550)
!5578 = !DILocation(line: 1109, column: 13, scope: !5550)
!5579 = !DILocation(line: 1109, column: 24, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5544, file: !2, line: 1109, column: 24)
!5581 = !DILocation(line: 1109, column: 27, scope: !5580)
!5582 = !DILocation(line: 1109, column: 38, scope: !5580)
!5583 = !{!3440, !2271, i64 584}
!5584 = !DILocation(line: 1109, column: 24, scope: !5544)
!5585 = !DILocation(line: 1110, column: 17, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5580, file: !2, line: 1109, column: 48)
!5587 = !DILocation(line: 1110, column: 20, scope: !5586)
!5588 = !DILocation(line: 1110, column: 31, scope: !5586)
!5589 = !DILocation(line: 1110, column: 40, scope: !5586)
!5590 = !DILocation(line: 1111, column: 17, scope: !5586)
!5591 = !DILocation(line: 1114, column: 13, scope: !5586)
!5592 = !DILocation(line: 1115, column: 17, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5580, file: !2, line: 1114, column: 20)
!5594 = !DILocation(line: 1115, column: 20, scope: !5593)
!5595 = !DILocation(line: 1115, column: 31, scope: !5593)
!5596 = !DILocation(line: 1115, column: 40, scope: !5593)
!5597 = !DILocation(line: 1116, column: 17, scope: !5593)
!5598 = !DILocation(line: 1119, column: 17, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5327, file: !2, line: 1119, column: 17)
!5600 = !DILocation(line: 1119, column: 20, scope: !5599)
!5601 = !DILocation(line: 1119, column: 26, scope: !5599)
!5602 = !DILocation(line: 1119, column: 29, scope: !5599)
!5603 = !DILocation(line: 1119, column: 32, scope: !5599)
!5604 = !DILocation(line: 1119, column: 39, scope: !5599)
!5605 = !DILocation(line: 1119, column: 46, scope: !5599)
!5606 = !DILocation(line: 1119, column: 17, scope: !5327)
!5607 = !DILocation(line: 1120, column: 36, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5599, file: !2, line: 1119, column: 52)
!5609 = !DILocation(line: 1120, column: 39, scope: !5608)
!5610 = !DILocation(line: 1120, column: 50, scope: !5608)
!5611 = !DILocation(line: 1120, column: 17, scope: !5608)
!5612 = !DILocation(line: 1120, column: 20, scope: !5608)
!5613 = !DILocation(line: 1120, column: 27, scope: !5608)
!5614 = !DILocation(line: 1120, column: 34, scope: !5608)
!5615 = !DILocation(line: 1121, column: 13, scope: !5608)
!5616 = !DILocation(line: 1119, column: 49, scope: !5599)
!5617 = !DILocation(line: 1123, column: 9, scope: !5327)
!5618 = !DILocation(line: 1125, column: 17, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5327, file: !2, line: 1125, column: 17)
!5620 = !DILocation(line: 1125, column: 20, scope: !5619)
!5621 = !DILocation(line: 1125, column: 31, scope: !5619)
!5622 = !DILocation(line: 1125, column: 40, scope: !5619)
!5623 = !DILocation(line: 1126, column: 17, scope: !5619)
!5624 = !DILocation(line: 1126, column: 20, scope: !5619)
!5625 = !DILocation(line: 1126, column: 23, scope: !5619)
!5626 = !DILocation(line: 1126, column: 34, scope: !5619)
!5627 = !{!3402, !2271, i64 288}
!5628 = !DILocation(line: 1125, column: 17, scope: !5327)
!5629 = !DILocation(line: 1128, column: 17, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 1127, column: 13)
!5631 = !DILocation(line: 1128, column: 20, scope: !5630)
!5632 = !DILocation(line: 1128, column: 28, scope: !5630)
!5633 = !DILocation(line: 1129, column: 13, scope: !5630)
!5634 = !DILocation(line: 1131, column: 13, scope: !5327)
!5635 = !DILocation(line: 1134, column: 13, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 1134, column: 13)
!5637 = !DILocation(line: 1134, column: 16, scope: !5636)
!5638 = !DILocation(line: 1134, column: 13, scope: !5329)
!5639 = !DILocation(line: 1135, column: 13, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 1134, column: 30)
!5641 = !DILocation(line: 1140, column: 9, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 1140, column: 9)
!5643 = !DILocation(line: 1140, column: 9, scope: !5329)
!5644 = !DILocation(line: 1143, column: 9, scope: !5329)
!5645 = !DILocation(line: 1145, column: 1, scope: !5296)
!5646 = !DISubprogram(name: "ngx_http_parse_header_line", scope: !92, file: !92, line: 100, type: !5647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!85, !90, !231, !11}
!5649 = !DISubprogram(name: "ngx_list_push", scope: !1016, file: !1016, line: 80, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!16, !5652}
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!5653 = !DISubprogram(name: "ngx_strlow", scope: !61, file: !61, line: 50, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !23, !23, !21}
!5656 = !DISubprogram(name: "ngx_atoi", scope: !61, file: !61, line: 176, type: !5657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!85, !23, !21}
!5659 = !DISubprogram(name: "ngx_array_create", scope: !518, file: !518, line: 25, type: !5660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!932, !391, !11, !21}
!5662 = !DISubprogram(name: "ngx_strcasecmp", scope: !61, file: !61, line: 161, type: !5663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!85, !23, !23}
!5665 = !DISubprogram(name: "strncmp", scope: !5666, file: !5666, line: 159, type: !5667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5666 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!159, !963, !963, !5669}
!5669 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5670, line: 70, baseType: !15)
!5670 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!5671 = !DISubprogram(name: "ngx_hash_key_lc", scope: !1114, file: !1114, line: 113, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5672 = !DISubprogram(name: "ngx_array_push_n", scope: !518, file: !518, line: 28, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!16, !932, !11}
!5675 = !DISubprogram(name: "ngx_cpystrn", scope: !61, file: !61, line: 151, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!23, !23, !23, !21}
!5678 = !DISubprogram(name: "ngx_http_script_compile", scope: !46, file: !46, line: 221, type: !5679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!85, !5681}
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!5682 = !DISubprogram(name: "ngx_hash_init", scope: !1114, file: !1114, line: 106, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!85, !3363, !3576, !11}
!5685 = distinct !DISubprogram(name: "ngx_http_scgi_pass", scope: !2, file: !2, line: 1819, type: !975, scopeLine: 1820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5686)
!5686 = !{!5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696}
!5687 = !DILocalVariable(name: "cf", arg: 1, scope: !5685, file: !2, line: 1819, type: !926)
!5688 = !DILocalVariable(name: "cmd", arg: 2, scope: !5685, file: !2, line: 1819, type: !967)
!5689 = !DILocalVariable(name: "conf", arg: 3, scope: !5685, file: !2, line: 1819, type: !16)
!5690 = !DILocalVariable(name: "scf", scope: !5685, file: !2, line: 1821, type: !2307)
!5691 = !DILocalVariable(name: "u", scope: !5685, file: !2, line: 1823, type: !4119)
!5692 = !DILocalVariable(name: "value", scope: !5685, file: !2, line: 1824, type: !756)
!5693 = !DILocalVariable(name: "url", scope: !5685, file: !2, line: 1824, type: !756)
!5694 = !DILocalVariable(name: "n", scope: !5685, file: !2, line: 1825, type: !11)
!5695 = !DILocalVariable(name: "clcf", scope: !5685, file: !2, line: 1826, type: !1657)
!5696 = !DILocalVariable(name: "sc", scope: !5685, file: !2, line: 1827, type: !3594)
!5697 = !DILocation(line: 1819, column: 32, scope: !5685)
!5698 = !DILocation(line: 1819, column: 51, scope: !5685)
!5699 = !DILocation(line: 1819, column: 62, scope: !5685)
!5700 = !DILocation(line: 1821, column: 5, scope: !5685)
!5701 = !DILocation(line: 1821, column: 31, scope: !5685)
!5702 = !DILocation(line: 1821, column: 37, scope: !5685)
!5703 = !DILocation(line: 1823, column: 5, scope: !5685)
!5704 = !DILocation(line: 1823, column: 33, scope: !5685)
!5705 = !DILocation(line: 1824, column: 5, scope: !5685)
!5706 = !DILocation(line: 1824, column: 33, scope: !5685)
!5707 = !DILocation(line: 1824, column: 41, scope: !5685)
!5708 = !DILocation(line: 1825, column: 5, scope: !5685)
!5709 = !DILocation(line: 1825, column: 33, scope: !5685)
!5710 = !DILocation(line: 1826, column: 5, scope: !5685)
!5711 = !DILocation(line: 1826, column: 33, scope: !5685)
!5712 = !DILocation(line: 1827, column: 5, scope: !5685)
!5713 = !DILocation(line: 1827, column: 33, scope: !5685)
!5714 = !DILocation(line: 1829, column: 9, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 1829, column: 9)
!5716 = !DILocation(line: 1829, column: 14, scope: !5715)
!5717 = !DILocation(line: 1829, column: 23, scope: !5715)
!5718 = !DILocation(line: 1829, column: 32, scope: !5715)
!5719 = !DILocation(line: 1829, column: 35, scope: !5715)
!5720 = !DILocation(line: 1829, column: 40, scope: !5715)
!5721 = !DILocation(line: 1829, column: 9, scope: !5685)
!5722 = !DILocation(line: 1830, column: 9, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5715, file: !2, line: 1829, column: 54)
!5724 = !DILocation(line: 1833, column: 12, scope: !5685)
!5725 = !DILocation(line: 1833, column: 10, scope: !5685)
!5726 = !DILocation(line: 1834, column: 5, scope: !5685)
!5727 = !DILocation(line: 1834, column: 11, scope: !5685)
!5728 = !DILocation(line: 1834, column: 19, scope: !5685)
!5729 = !DILocation(line: 1836, column: 13, scope: !5685)
!5730 = !DILocation(line: 1836, column: 17, scope: !5685)
!5731 = !{!2280, !2271, i64 8}
!5732 = !DILocation(line: 1836, column: 23, scope: !5685)
!5733 = !DILocation(line: 1836, column: 11, scope: !5685)
!5734 = !DILocation(line: 1838, column: 12, scope: !5685)
!5735 = !DILocation(line: 1838, column: 9, scope: !5685)
!5736 = !DILocation(line: 1840, column: 41, scope: !5685)
!5737 = !DILocation(line: 1840, column: 9, scope: !5685)
!5738 = !DILocation(line: 1840, column: 7, scope: !5685)
!5739 = !DILocation(line: 1842, column: 9, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 1842, column: 9)
!5741 = !DILocation(line: 1842, column: 9, scope: !5685)
!5742 = !DILocation(line: 1844, column: 9, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 1842, column: 12)
!5744 = !DILocation(line: 1846, column: 17, scope: !5743)
!5745 = !DILocation(line: 1846, column: 12, scope: !5743)
!5746 = !DILocation(line: 1846, column: 15, scope: !5743)
!5747 = !DILocation(line: 1847, column: 21, scope: !5743)
!5748 = !DILocation(line: 1847, column: 12, scope: !5743)
!5749 = !DILocation(line: 1847, column: 19, scope: !5743)
!5750 = !DILocation(line: 1848, column: 23, scope: !5743)
!5751 = !DILocation(line: 1848, column: 28, scope: !5743)
!5752 = !DILocation(line: 1848, column: 12, scope: !5743)
!5753 = !DILocation(line: 1848, column: 20, scope: !5743)
!5754 = !DILocation(line: 1849, column: 22, scope: !5743)
!5755 = !DILocation(line: 1849, column: 27, scope: !5743)
!5756 = !DILocation(line: 1849, column: 12, scope: !5743)
!5757 = !DILocation(line: 1849, column: 19, scope: !5743)
!5758 = !DILocation(line: 1850, column: 24, scope: !5743)
!5759 = !DILocation(line: 1850, column: 12, scope: !5743)
!5760 = !DILocation(line: 1850, column: 22, scope: !5743)
!5761 = !{!4010, !2281, i64 40}
!5762 = !DILocation(line: 1851, column: 12, scope: !5743)
!5763 = !DILocation(line: 1851, column: 29, scope: !5743)
!5764 = !DILocation(line: 1852, column: 12, scope: !5743)
!5765 = !DILocation(line: 1852, column: 28, scope: !5743)
!5766 = !DILocation(line: 1854, column: 13, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5743, file: !2, line: 1854, column: 13)
!5768 = !DILocation(line: 1854, column: 42, scope: !5767)
!5769 = !DILocation(line: 1854, column: 13, scope: !5743)
!5770 = !DILocation(line: 1855, column: 13, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 1854, column: 53)
!5772 = !DILocation(line: 1858, column: 9, scope: !5743)
!5773 = !DILocation(line: 1861, column: 5, scope: !5685)
!5774 = !DILocation(line: 1863, column: 7, scope: !5685)
!5775 = !DILocation(line: 1863, column: 13, scope: !5685)
!5776 = !DILocation(line: 1864, column: 7, scope: !5685)
!5777 = !DILocation(line: 1864, column: 18, scope: !5685)
!5778 = !DILocation(line: 1866, column: 52, scope: !5685)
!5779 = !DILocation(line: 1866, column: 30, scope: !5685)
!5780 = !DILocation(line: 1866, column: 5, scope: !5685)
!5781 = !DILocation(line: 1866, column: 10, scope: !5685)
!5782 = !DILocation(line: 1866, column: 19, scope: !5685)
!5783 = !DILocation(line: 1866, column: 28, scope: !5685)
!5784 = !DILocation(line: 1867, column: 9, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 1867, column: 9)
!5786 = !DILocation(line: 1867, column: 14, scope: !5785)
!5787 = !DILocation(line: 1867, column: 23, scope: !5785)
!5788 = !DILocation(line: 1867, column: 32, scope: !5785)
!5789 = !DILocation(line: 1867, column: 9, scope: !5685)
!5790 = !DILocation(line: 1868, column: 9, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 1867, column: 41)
!5792 = !DILocation(line: 1871, column: 9, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 1871, column: 9)
!5794 = !DILocation(line: 1871, column: 15, scope: !5793)
!5795 = !DILocation(line: 1871, column: 20, scope: !5793)
!5796 = !{!3202, !2281, i64 0}
!5797 = !DILocation(line: 1871, column: 24, scope: !5793)
!5798 = !DILocation(line: 1871, column: 27, scope: !5793)
!5799 = !DILocation(line: 1871, column: 33, scope: !5793)
!5800 = !DILocation(line: 1871, column: 38, scope: !5793)
!5801 = !{!3202, !2271, i64 8}
!5802 = !DILocation(line: 1871, column: 43, scope: !5793)
!5803 = !DILocation(line: 1871, column: 49, scope: !5793)
!5804 = !DILocation(line: 1871, column: 54, scope: !5793)
!5805 = !DILocation(line: 1871, column: 58, scope: !5793)
!5806 = !DILocation(line: 1871, column: 63, scope: !5793)
!5807 = !DILocation(line: 1871, column: 9, scope: !5685)
!5808 = !DILocation(line: 1872, column: 9, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 1871, column: 71)
!5810 = !DILocation(line: 1872, column: 15, scope: !5809)
!5811 = !DILocation(line: 1872, column: 29, scope: !5809)
!5812 = !DILocation(line: 1873, column: 5, scope: !5809)
!5813 = !DILocation(line: 1875, column: 5, scope: !5685)
!5814 = !DILocation(line: 1876, column: 1, scope: !5685)
!5815 = distinct !DISubprogram(name: "ngx_http_scgi_store", scope: !2, file: !2, line: 1880, type: !975, scopeLine: 1881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5816)
!5816 = !{!5817, !5818, !5819, !5820, !5821, !5822}
!5817 = !DILocalVariable(name: "cf", arg: 1, scope: !5815, file: !2, line: 1880, type: !926)
!5818 = !DILocalVariable(name: "cmd", arg: 2, scope: !5815, file: !2, line: 1880, type: !967)
!5819 = !DILocalVariable(name: "conf", arg: 3, scope: !5815, file: !2, line: 1880, type: !16)
!5820 = !DILocalVariable(name: "scf", scope: !5815, file: !2, line: 1882, type: !2307)
!5821 = !DILocalVariable(name: "value", scope: !5815, file: !2, line: 1884, type: !756)
!5822 = !DILocalVariable(name: "sc", scope: !5815, file: !2, line: 1885, type: !3594)
!5823 = !DILocation(line: 1880, column: 33, scope: !5815)
!5824 = !DILocation(line: 1880, column: 52, scope: !5815)
!5825 = !DILocation(line: 1880, column: 63, scope: !5815)
!5826 = !DILocation(line: 1882, column: 5, scope: !5815)
!5827 = !DILocation(line: 1882, column: 31, scope: !5815)
!5828 = !DILocation(line: 1882, column: 37, scope: !5815)
!5829 = !DILocation(line: 1884, column: 5, scope: !5815)
!5830 = !DILocation(line: 1884, column: 33, scope: !5815)
!5831 = !DILocation(line: 1885, column: 5, scope: !5815)
!5832 = !DILocation(line: 1885, column: 33, scope: !5815)
!5833 = !DILocation(line: 1887, column: 9, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 1887, column: 9)
!5835 = !DILocation(line: 1887, column: 14, scope: !5834)
!5836 = !DILocation(line: 1887, column: 23, scope: !5834)
!5837 = !DILocation(line: 1887, column: 29, scope: !5834)
!5838 = !DILocation(line: 1887, column: 9, scope: !5815)
!5839 = !DILocation(line: 1888, column: 9, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5834, file: !2, line: 1887, column: 48)
!5841 = !DILocation(line: 1891, column: 13, scope: !5815)
!5842 = !DILocation(line: 1891, column: 17, scope: !5815)
!5843 = !DILocation(line: 1891, column: 23, scope: !5815)
!5844 = !DILocation(line: 1891, column: 11, scope: !5815)
!5845 = !DILocation(line: 1893, column: 9, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 1893, column: 9)
!5847 = !DILocation(line: 1893, column: 42, scope: !5846)
!5848 = !DILocation(line: 1893, column: 9, scope: !5815)
!5849 = !DILocation(line: 1894, column: 9, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5846, file: !2, line: 1893, column: 48)
!5851 = !DILocation(line: 1894, column: 14, scope: !5850)
!5852 = !DILocation(line: 1894, column: 23, scope: !5850)
!5853 = !DILocation(line: 1894, column: 29, scope: !5850)
!5854 = !DILocation(line: 1895, column: 9, scope: !5850)
!5855 = !DILocation(line: 1899, column: 9, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 1899, column: 9)
!5857 = !DILocation(line: 1899, column: 14, scope: !5856)
!5858 = !DILocation(line: 1899, column: 23, scope: !5856)
!5859 = !DILocation(line: 1899, column: 29, scope: !5856)
!5860 = !DILocation(line: 1899, column: 9, scope: !5815)
!5861 = !DILocation(line: 1900, column: 9, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5856, file: !2, line: 1899, column: 34)
!5863 = !DILocation(line: 1904, column: 5, scope: !5815)
!5864 = !DILocation(line: 1904, column: 10, scope: !5815)
!5865 = !DILocation(line: 1904, column: 19, scope: !5815)
!5866 = !DILocation(line: 1904, column: 25, scope: !5815)
!5867 = !DILocation(line: 1906, column: 9, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 1906, column: 9)
!5869 = !DILocation(line: 1906, column: 41, scope: !5868)
!5870 = !DILocation(line: 1906, column: 9, scope: !5815)
!5871 = !DILocation(line: 1907, column: 9, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5868, file: !2, line: 1906, column: 47)
!5873 = !DILocation(line: 1911, column: 5, scope: !5815)
!5874 = !DILocation(line: 1911, column: 14, scope: !5815)
!5875 = !DILocation(line: 1911, column: 17, scope: !5815)
!5876 = !DILocation(line: 1913, column: 5, scope: !5815)
!5877 = !DILocation(line: 1915, column: 13, scope: !5815)
!5878 = !DILocation(line: 1915, column: 8, scope: !5815)
!5879 = !DILocation(line: 1915, column: 11, scope: !5815)
!5880 = !DILocation(line: 1916, column: 18, scope: !5815)
!5881 = !DILocation(line: 1916, column: 8, scope: !5815)
!5882 = !DILocation(line: 1916, column: 15, scope: !5815)
!5883 = !DILocation(line: 1917, column: 19, scope: !5815)
!5884 = !DILocation(line: 1917, column: 24, scope: !5815)
!5885 = !DILocation(line: 1917, column: 33, scope: !5815)
!5886 = !DILocation(line: 1917, column: 8, scope: !5815)
!5887 = !DILocation(line: 1917, column: 16, scope: !5815)
!5888 = !DILocation(line: 1918, column: 18, scope: !5815)
!5889 = !DILocation(line: 1918, column: 23, scope: !5815)
!5890 = !DILocation(line: 1918, column: 32, scope: !5815)
!5891 = !DILocation(line: 1918, column: 8, scope: !5815)
!5892 = !DILocation(line: 1918, column: 15, scope: !5815)
!5893 = !DILocation(line: 1919, column: 53, scope: !5815)
!5894 = !DILocation(line: 1919, column: 20, scope: !5815)
!5895 = !DILocation(line: 1919, column: 8, scope: !5815)
!5896 = !DILocation(line: 1919, column: 18, scope: !5815)
!5897 = !DILocation(line: 1920, column: 8, scope: !5815)
!5898 = !DILocation(line: 1920, column: 25, scope: !5815)
!5899 = !DILocation(line: 1921, column: 8, scope: !5815)
!5900 = !DILocation(line: 1921, column: 24, scope: !5815)
!5901 = !DILocation(line: 1923, column: 9, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5815, file: !2, line: 1923, column: 9)
!5903 = !DILocation(line: 1923, column: 38, scope: !5902)
!5904 = !DILocation(line: 1923, column: 9, scope: !5815)
!5905 = !DILocation(line: 1924, column: 9, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 1923, column: 49)
!5907 = !DILocation(line: 1927, column: 5, scope: !5815)
!5908 = !DILocation(line: 1928, column: 1, scope: !5815)
!5909 = distinct !DISubprogram(name: "ngx_http_scgi_cache", scope: !2, file: !2, line: 1934, type: !975, scopeLine: 1935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5910)
!5910 = !{!5911, !5912, !5913, !5914, !5915, !5916, !5917}
!5911 = !DILocalVariable(name: "cf", arg: 1, scope: !5909, file: !2, line: 1934, type: !926)
!5912 = !DILocalVariable(name: "cmd", arg: 2, scope: !5909, file: !2, line: 1934, type: !967)
!5913 = !DILocalVariable(name: "conf", arg: 3, scope: !5909, file: !2, line: 1934, type: !16)
!5914 = !DILocalVariable(name: "scf", scope: !5909, file: !2, line: 1936, type: !2307)
!5915 = !DILocalVariable(name: "value", scope: !5909, file: !2, line: 1938, type: !756)
!5916 = !DILocalVariable(name: "cv", scope: !5909, file: !2, line: 1939, type: !1142)
!5917 = !DILocalVariable(name: "ccv", scope: !5909, file: !2, line: 1940, type: !5918)
!5918 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_compile_complex_value_t", file: !46, line: 82, baseType: !5919)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 74, size: 256, elements: !5920)
!5920 = !{!5921, !5922, !5923, !5924, !5925, !5926}
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !5919, file: !46, line: 75, baseType: !926, size: 64)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5919, file: !46, line: 76, baseType: !756, size: 64, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "complex_value", scope: !5919, file: !46, line: 77, baseType: !1141, size: 64, offset: 128)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !5919, file: !46, line: 79, baseType: !65, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !5919, file: !46, line: 80, baseType: !65, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "root_prefix", scope: !5919, file: !46, line: 81, baseType: !65, size: 1, offset: 194, flags: DIFlagBitField, extraData: i64 192)
!5927 = !DILocation(line: 1934, column: 33, scope: !5909)
!5928 = !DILocation(line: 1934, column: 52, scope: !5909)
!5929 = !DILocation(line: 1934, column: 63, scope: !5909)
!5930 = !DILocation(line: 1936, column: 5, scope: !5909)
!5931 = !DILocation(line: 1936, column: 31, scope: !5909)
!5932 = !DILocation(line: 1936, column: 37, scope: !5909)
!5933 = !DILocation(line: 1938, column: 5, scope: !5909)
!5934 = !DILocation(line: 1938, column: 40, scope: !5909)
!5935 = !DILocation(line: 1939, column: 5, scope: !5909)
!5936 = !DILocation(line: 1939, column: 40, scope: !5909)
!5937 = !DILocation(line: 1940, column: 5, scope: !5909)
!5938 = !DILocation(line: 1940, column: 40, scope: !5909)
!5939 = !DILocation(line: 1942, column: 13, scope: !5909)
!5940 = !DILocation(line: 1942, column: 17, scope: !5909)
!5941 = !DILocation(line: 1942, column: 23, scope: !5909)
!5942 = !DILocation(line: 1942, column: 11, scope: !5909)
!5943 = !DILocation(line: 1944, column: 9, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1944, column: 9)
!5945 = !DILocation(line: 1944, column: 14, scope: !5944)
!5946 = !DILocation(line: 1944, column: 23, scope: !5944)
!5947 = !DILocation(line: 1944, column: 29, scope: !5944)
!5948 = !DILocation(line: 1944, column: 9, scope: !5909)
!5949 = !DILocation(line: 1945, column: 9, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 1944, column: 48)
!5951 = !DILocation(line: 1948, column: 9, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1948, column: 9)
!5953 = !DILocation(line: 1948, column: 42, scope: !5952)
!5954 = !DILocation(line: 1948, column: 9, scope: !5909)
!5955 = !DILocation(line: 1949, column: 9, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5952, file: !2, line: 1948, column: 48)
!5957 = !DILocation(line: 1949, column: 14, scope: !5956)
!5958 = !DILocation(line: 1949, column: 23, scope: !5956)
!5959 = !DILocation(line: 1949, column: 29, scope: !5956)
!5960 = !DILocation(line: 1950, column: 9, scope: !5956)
!5961 = !DILocation(line: 1953, column: 9, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1953, column: 9)
!5963 = !DILocation(line: 1953, column: 14, scope: !5962)
!5964 = !DILocation(line: 1953, column: 23, scope: !5962)
!5965 = !DILocation(line: 1953, column: 29, scope: !5962)
!5966 = !DILocation(line: 1953, column: 9, scope: !5909)
!5967 = !DILocation(line: 1954, column: 9, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 1953, column: 34)
!5969 = !DILocation(line: 1957, column: 5, scope: !5909)
!5970 = !DILocation(line: 1957, column: 10, scope: !5909)
!5971 = !DILocation(line: 1957, column: 19, scope: !5909)
!5972 = !DILocation(line: 1957, column: 25, scope: !5909)
!5973 = !DILocation(line: 1959, column: 5, scope: !5909)
!5974 = !DILocation(line: 1961, column: 14, scope: !5909)
!5975 = !DILocation(line: 1961, column: 9, scope: !5909)
!5976 = !DILocation(line: 1961, column: 12, scope: !5909)
!5977 = !{!5978, !2271, i64 0}
!5978 = !{!"", !2271, i64 0, !2271, i64 8, !2271, i64 16, !2352, i64 24, !2352, i64 24, !2352, i64 24}
!5979 = !DILocation(line: 1962, column: 18, scope: !5909)
!5980 = !DILocation(line: 1962, column: 9, scope: !5909)
!5981 = !DILocation(line: 1962, column: 15, scope: !5909)
!5982 = !{!5978, !2271, i64 8}
!5983 = !DILocation(line: 1963, column: 9, scope: !5909)
!5984 = !DILocation(line: 1963, column: 23, scope: !5909)
!5985 = !{!5978, !2271, i64 16}
!5986 = !DILocation(line: 1965, column: 9, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1965, column: 9)
!5988 = !DILocation(line: 1965, column: 46, scope: !5987)
!5989 = !DILocation(line: 1965, column: 9, scope: !5909)
!5990 = !DILocation(line: 1966, column: 9, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5987, file: !2, line: 1965, column: 57)
!5992 = !DILocation(line: 1969, column: 12, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1969, column: 9)
!5994 = !{!2355, !2271, i64 24}
!5995 = !DILocation(line: 1969, column: 20, scope: !5993)
!5996 = !DILocation(line: 1969, column: 9, scope: !5909)
!5997 = !DILocation(line: 1971, column: 48, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !2, line: 1969, column: 29)
!5999 = !DILocation(line: 1971, column: 52, scope: !5998)
!6000 = !DILocation(line: 1971, column: 37, scope: !5998)
!6001 = !DILocation(line: 1971, column: 9, scope: !5998)
!6002 = !DILocation(line: 1971, column: 14, scope: !5998)
!6003 = !DILocation(line: 1971, column: 23, scope: !5998)
!6004 = !DILocation(line: 1971, column: 35, scope: !5998)
!6005 = !DILocation(line: 1973, column: 13, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5998, file: !2, line: 1973, column: 13)
!6007 = !DILocation(line: 1973, column: 18, scope: !6006)
!6008 = !DILocation(line: 1973, column: 27, scope: !6006)
!6009 = !DILocation(line: 1973, column: 39, scope: !6006)
!6010 = !DILocation(line: 1973, column: 13, scope: !5998)
!6011 = !DILocation(line: 1974, column: 13, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6006, file: !2, line: 1973, column: 48)
!6013 = !DILocation(line: 1977, column: 10, scope: !5998)
!6014 = !DILocation(line: 1977, column: 15, scope: !5998)
!6015 = !DILocation(line: 1977, column: 24, scope: !5998)
!6016 = !DILocation(line: 1977, column: 38, scope: !5998)
!6017 = !DILocation(line: 1979, column: 9, scope: !5998)
!6018 = !DILocation(line: 1982, column: 54, scope: !5909)
!6019 = !DILocation(line: 1982, column: 59, scope: !5909)
!6020 = !DILocation(line: 1982, column: 32, scope: !5909)
!6021 = !DILocation(line: 1982, column: 5, scope: !5909)
!6022 = !DILocation(line: 1982, column: 10, scope: !5909)
!6023 = !DILocation(line: 1982, column: 19, scope: !5909)
!6024 = !DILocation(line: 1982, column: 30, scope: !5909)
!6025 = !DILocation(line: 1984, column: 9, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 1984, column: 9)
!6027 = !DILocation(line: 1984, column: 14, scope: !6026)
!6028 = !DILocation(line: 1984, column: 23, scope: !6026)
!6029 = !DILocation(line: 1984, column: 34, scope: !6026)
!6030 = !DILocation(line: 1984, column: 9, scope: !5909)
!6031 = !DILocation(line: 1985, column: 9, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6026, file: !2, line: 1984, column: 43)
!6033 = !DILocation(line: 1988, column: 5, scope: !5909)
!6034 = !DILocation(line: 1989, column: 1, scope: !5909)
!6035 = distinct !DISubprogram(name: "ngx_http_scgi_cache_key", scope: !2, file: !2, line: 1993, type: !975, scopeLine: 1994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6036)
!6036 = !{!6037, !6038, !6039, !6040, !6041, !6042}
!6037 = !DILocalVariable(name: "cf", arg: 1, scope: !6035, file: !2, line: 1993, type: !926)
!6038 = !DILocalVariable(name: "cmd", arg: 2, scope: !6035, file: !2, line: 1993, type: !967)
!6039 = !DILocalVariable(name: "conf", arg: 3, scope: !6035, file: !2, line: 1993, type: !16)
!6040 = !DILocalVariable(name: "scf", scope: !6035, file: !2, line: 1995, type: !2307)
!6041 = !DILocalVariable(name: "value", scope: !6035, file: !2, line: 1997, type: !756)
!6042 = !DILocalVariable(name: "ccv", scope: !6035, file: !2, line: 1998, type: !5918)
!6043 = !DILocation(line: 1993, column: 37, scope: !6035)
!6044 = !DILocation(line: 1993, column: 56, scope: !6035)
!6045 = !DILocation(line: 1993, column: 67, scope: !6035)
!6046 = !DILocation(line: 1995, column: 5, scope: !6035)
!6047 = !DILocation(line: 1995, column: 31, scope: !6035)
!6048 = !DILocation(line: 1995, column: 37, scope: !6035)
!6049 = !DILocation(line: 1997, column: 5, scope: !6035)
!6050 = !DILocation(line: 1997, column: 40, scope: !6035)
!6051 = !DILocation(line: 1998, column: 5, scope: !6035)
!6052 = !DILocation(line: 1998, column: 40, scope: !6035)
!6053 = !DILocation(line: 2000, column: 13, scope: !6035)
!6054 = !DILocation(line: 2000, column: 17, scope: !6035)
!6055 = !DILocation(line: 2000, column: 23, scope: !6035)
!6056 = !DILocation(line: 2000, column: 11, scope: !6035)
!6057 = !DILocation(line: 2002, column: 9, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6035, file: !2, line: 2002, column: 9)
!6059 = !DILocation(line: 2002, column: 14, scope: !6058)
!6060 = !DILocation(line: 2002, column: 24, scope: !6058)
!6061 = !DILocation(line: 2002, column: 30, scope: !6058)
!6062 = !DILocation(line: 2002, column: 9, scope: !6035)
!6063 = !DILocation(line: 2003, column: 9, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6058, file: !2, line: 2002, column: 36)
!6065 = !DILocation(line: 2006, column: 5, scope: !6035)
!6066 = !DILocation(line: 2008, column: 14, scope: !6035)
!6067 = !DILocation(line: 2008, column: 9, scope: !6035)
!6068 = !DILocation(line: 2008, column: 12, scope: !6035)
!6069 = !DILocation(line: 2009, column: 18, scope: !6035)
!6070 = !DILocation(line: 2009, column: 9, scope: !6035)
!6071 = !DILocation(line: 2009, column: 15, scope: !6035)
!6072 = !DILocation(line: 2010, column: 26, scope: !6035)
!6073 = !DILocation(line: 2010, column: 31, scope: !6035)
!6074 = !DILocation(line: 2010, column: 9, scope: !6035)
!6075 = !DILocation(line: 2010, column: 23, scope: !6035)
!6076 = !DILocation(line: 2012, column: 9, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6035, file: !2, line: 2012, column: 9)
!6078 = !DILocation(line: 2012, column: 46, scope: !6077)
!6079 = !DILocation(line: 2012, column: 9, scope: !6035)
!6080 = !DILocation(line: 2013, column: 9, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !2, line: 2012, column: 57)
!6082 = !DILocation(line: 2016, column: 5, scope: !6035)
!6083 = !DILocation(line: 2017, column: 1, scope: !6035)
!6084 = !DISubprogram(name: "ngx_http_script_variables_count", scope: !46, file: !46, line: 220, type: !6085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!11, !756}
!6087 = !DISubprogram(name: "ngx_http_upstream_add", scope: !739, file: !739, line: 422, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!913, !926, !5267, !11}
!6090 = !DISubprogram(name: "strcmp", scope: !5666, file: !5666, line: 156, type: !6091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{!159, !963, !963}
!6093 = !DISubprogram(name: "ngx_http_compile_complex_value", scope: !46, file: !46, line: 210, type: !6094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!85, !6096}
!6096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5918, size: 64)
!6097 = !DISubprogram(name: "ngx_shared_memory_add", scope: !670, file: !670, line: 147, type: !6098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!668, !926, !756, !21, !16}
