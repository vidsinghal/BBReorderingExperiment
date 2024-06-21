; ModuleID = 'samples/600.bc'
source_filename = "src/http/modules/ngx_http_gzip_filter_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_conf_num_bounds_t = type { ptr, i64, i64 }
%struct.ngx_http_variable_s = type { %struct.ngx_str_t, ptr, ptr, i64, i64, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_http_gzip_conf_t = type { i64, i64, %struct.ngx_hash_t, %struct.ngx_bufs_t, i64, i64, i64, i64, i64, ptr }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_bufs_t = type { i64, i64 }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i112, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64 }
%struct.ngx_http_gzip_ctx_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i32, i32, i16, i64, i64, i32, %struct.z_stream_s, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.ngx_variable_value_t = type { i32, ptr }
%struct.ngx_table_elt_t = type { i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_chain_s = type { ptr, ptr }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i64, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_pool_data_t = type { ptr, ptr, ptr, i64 }
%struct.gztrailer = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110011111000110\00", align 1, !dbg !0
@ngx_http_gzip_filter_module_ctx = internal global %struct.ngx_http_module_t { ptr @ngx_http_gzip_add_variables, ptr @ngx_http_gzip_filter_init, ptr null, ptr null, ptr null, ptr null, ptr @ngx_http_gzip_create_conf, ptr @ngx_http_gzip_merge_conf }, align 8, !dbg !7
@ngx_http_gzip_filter_commands = internal global [10 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 4, ptr @.str.4 }, i64 1308623360, ptr @ngx_conf_set_flag_slot, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 12, ptr @.str.10 }, i64 234881028, ptr @ngx_conf_set_bufs_slot, i64 16, i64 32, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 10, ptr @.str.11 }, i64 234883072, ptr @ngx_http_types_slot, i64 16, i64 88, ptr @ngx_http_html_default_types }, %struct.ngx_command_s { %struct.ngx_str_t { i64 15, ptr @.str.12 }, i64 234881026, ptr @ngx_conf_set_num_slot, i64 16, i64 56, ptr @ngx_http_gzip_comp_level_bounds }, %struct.ngx_command_s { %struct.ngx_str_t { i64 11, ptr @.str.13 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 64, ptr @ngx_http_gzip_window_p }, %struct.ngx_command_s { %struct.ngx_str_t { i64 9, ptr @.str.14 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 72, ptr @ngx_http_gzip_hash_p }, %struct.ngx_command_s { %struct.ngx_str_t { i64 17, ptr @.str.15 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 48, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 14, ptr @.str.16 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 8, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 15, ptr @.str.17 }, i64 234881026, ptr @ngx_conf_set_size_slot, i64 16, i64 80, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !2059
@ngx_http_gzip_filter_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1015008, ptr @.str, ptr @ngx_http_gzip_filter_module_ctx, ptr @ngx_http_gzip_filter_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !41
@ngx_http_gzip_ratio = internal global %struct.ngx_str_t { i64 10, ptr @.str.1 }, align 8, !dbg !613
@.str.1 = private unnamed_addr constant [11 x i8] c"gzip_ratio\00", align 1, !dbg !608
@.str.2 = private unnamed_addr constant [10 x i8] c"%ui.%02ui\00", align 1, !dbg !615
@ngx_http_top_header_filter = external global ptr, align 8
@ngx_http_next_header_filter = internal global ptr null, align 8, !dbg !620
@ngx_http_top_body_filter = external global ptr, align 8
@ngx_http_next_body_filter = internal global ptr null, align 8, !dbg !1922
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1, !dbg !1910
@.str.4 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1, !dbg !1915
@ngx_http_gzip_assume_intel = internal global i64 0, align 8, !dbg !1920
@.str.5 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1, !dbg !1928
@.str.6 = private unnamed_addr constant [26 x i8] c"deflateInit2() failed: %d\00", align 1, !dbg !1933
@.str.7 = private unnamed_addr constant [58 x i8] c"gzip filter failed to use preallocated memory: %ud of %ui\00", align 1, !dbg !1938
@.str.8 = private unnamed_addr constant [25 x i8] c"deflate() failed: %d, %d\00", align 1, !dbg !1943
@.str.9 = private unnamed_addr constant [24 x i8] c"deflateEnd() failed: %d\00", align 1, !dbg !1948
@ngx_http_gzip_filter_gzheader.gzheader = internal global [10 x i8] c"\1F\8B\08\00\00\00\00\00\00\03", align 1, !dbg !1953
@ngx_pagesize = external global i64, align 8
@ngx_http_html_default_types = external global [0 x %struct.ngx_str_t], align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"gzip_buffers\00", align 1, !dbg !2030
@.str.11 = private unnamed_addr constant [11 x i8] c"gzip_types\00", align 1, !dbg !2035
@.str.12 = private unnamed_addr constant [16 x i8] c"gzip_comp_level\00", align 1, !dbg !2037
@ngx_http_gzip_comp_level_bounds = internal global %struct.ngx_conf_num_bounds_t { ptr @ngx_conf_check_num_bounds, i64 1, i64 9 }, align 8, !dbg !2062
@.str.13 = private unnamed_addr constant [12 x i8] c"gzip_window\00", align 1, !dbg !2040
@ngx_http_gzip_window_p = internal global ptr @ngx_http_gzip_window, align 8, !dbg !2074
@.str.14 = private unnamed_addr constant [10 x i8] c"gzip_hash\00", align 1, !dbg !2045
@ngx_http_gzip_hash_p = internal global ptr @ngx_http_gzip_hash, align 8, !dbg !2078
@.str.15 = private unnamed_addr constant [18 x i8] c"postpone_gzipping\00", align 1, !dbg !2047
@.str.16 = private unnamed_addr constant [15 x i8] c"gzip_no_buffer\00", align 1, !dbg !2052
@.str.17 = private unnamed_addr constant [16 x i8] c"gzip_min_length\00", align 1, !dbg !2057
@.str.18 = private unnamed_addr constant [41 x i8] c"must be 512, 1k, 2k, 4k, 8k, 16k, or 32k\00", align 1, !dbg !2076
@.str.19 = private unnamed_addr constant [52 x i8] c"must be 512, 1k, 2k, 4k, 8k, 16k, 32k, 64k, or 128k\00", align 1, !dbg !2080

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_add_variables(ptr noundef %cf) #0 !dbg !2112 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2114, metadata !DIExpression()), !dbg !2138
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #5, !dbg !2139
  tail call void @llvm.dbg.declare(metadata ptr %var, metadata !2115, metadata !DIExpression()), !dbg !2140
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2141, !tbaa !2134
  %call = call ptr @ngx_http_add_variable(ptr noundef %0, ptr noundef @ngx_http_gzip_ratio, i64 noundef 8), !dbg !2142
  store ptr %call, ptr %var, align 8, !dbg !2143, !tbaa !2134
  %1 = load ptr, ptr %var, align 8, !dbg !2144, !tbaa !2134
  %cmp = icmp eq ptr %1, null, !dbg !2146
  br i1 %cmp, label %if.then, label %if.end, !dbg !2147

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2148

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %var, align 8, !dbg !2150, !tbaa !2134
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s, ptr %2, i32 0, i32 2, !dbg !2151
  store ptr @ngx_http_gzip_ratio_variable, ptr %get_handler, align 8, !dbg !2152, !tbaa !2153
  store i64 0, ptr %retval, align 8, !dbg !2157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2157

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #5, !dbg !2158
  %3 = load i64, ptr %retval, align 8, !dbg !2158
  ret i64 %3, !dbg !2158
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_init(ptr noundef %cf) #0 !dbg !2159 {
entry:
  %cf.addr = alloca ptr, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = load ptr, ptr @ngx_http_top_header_filter, align 8, !dbg !2163, !tbaa !2134
  store ptr %0, ptr @ngx_http_next_header_filter, align 8, !dbg !2164, !tbaa !2134
  store ptr @ngx_http_gzip_header_filter, ptr @ngx_http_top_header_filter, align 8, !dbg !2165, !tbaa !2134
  %1 = load ptr, ptr @ngx_http_top_body_filter, align 8, !dbg !2166, !tbaa !2134
  store ptr %1, ptr @ngx_http_next_body_filter, align 8, !dbg !2167, !tbaa !2134
  store ptr @ngx_http_gzip_body_filter, ptr @ngx_http_top_body_filter, align 8, !dbg !2168, !tbaa !2134
  ret i64 0, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_gzip_create_conf(ptr noundef %cf) #0 !dbg !2170 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2172, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !2189
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2173, metadata !DIExpression()), !dbg !2190
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2191, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2192
  %1 = load ptr, ptr %pool, align 8, !dbg !2192, !tbaa !2193
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 96), !dbg !2195
  store ptr %call, ptr %conf, align 8, !dbg !2196, !tbaa !2134
  %2 = load ptr, ptr %conf, align 8, !dbg !2197, !tbaa !2134
  %cmp = icmp eq ptr %2, null, !dbg !2199
  br i1 %cmp, label %if.then, label %if.end, !dbg !2200

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2201

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !2203, !tbaa !2134
  %enable = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %3, i32 0, i32 0, !dbg !2204
  store i64 -1, ptr %enable, align 8, !dbg !2205, !tbaa !2206
  %4 = load ptr, ptr %conf, align 8, !dbg !2210, !tbaa !2134
  %no_buffer = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %4, i32 0, i32 1, !dbg !2211
  store i64 -1, ptr %no_buffer, align 8, !dbg !2212, !tbaa !2213
  %5 = load ptr, ptr %conf, align 8, !dbg !2214, !tbaa !2134
  %postpone_gzipping = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %5, i32 0, i32 4, !dbg !2215
  store i64 -1, ptr %postpone_gzipping, align 8, !dbg !2216, !tbaa !2217
  %6 = load ptr, ptr %conf, align 8, !dbg !2218, !tbaa !2134
  %level = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %6, i32 0, i32 5, !dbg !2219
  store i64 -1, ptr %level, align 8, !dbg !2220, !tbaa !2221
  %7 = load ptr, ptr %conf, align 8, !dbg !2222, !tbaa !2134
  %wbits = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %7, i32 0, i32 6, !dbg !2223
  store i64 -1, ptr %wbits, align 8, !dbg !2224, !tbaa !2225
  %8 = load ptr, ptr %conf, align 8, !dbg !2226, !tbaa !2134
  %memlevel = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %8, i32 0, i32 7, !dbg !2227
  store i64 -1, ptr %memlevel, align 8, !dbg !2228, !tbaa !2229
  %9 = load ptr, ptr %conf, align 8, !dbg !2230, !tbaa !2134
  %min_length = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %9, i32 0, i32 8, !dbg !2231
  store i64 -1, ptr %min_length, align 8, !dbg !2232, !tbaa !2233
  %10 = load ptr, ptr %conf, align 8, !dbg !2234, !tbaa !2134
  store ptr %10, ptr %retval, align 8, !dbg !2235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2235

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !2236
  %11 = load ptr, ptr %retval, align 8, !dbg !2236
  ret ptr %11, !dbg !2236
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_gzip_merge_conf(ptr noundef %cf, ptr noundef %parent, ptr noundef %child) #0 !dbg !2237 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2239, metadata !DIExpression()), !dbg !2244
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2240, metadata !DIExpression()), !dbg !2245
  store ptr %child, ptr %child.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !2241, metadata !DIExpression()), !dbg !2246
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #5, !dbg !2247
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !2242, metadata !DIExpression()), !dbg !2248
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2249, !tbaa !2134
  store ptr %0, ptr %prev, align 8, !dbg !2248, !tbaa !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !2250
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2243, metadata !DIExpression()), !dbg !2251
  %1 = load ptr, ptr %child.addr, align 8, !dbg !2252, !tbaa !2134
  store ptr %1, ptr %conf, align 8, !dbg !2251, !tbaa !2134
  %2 = load ptr, ptr %conf, align 8, !dbg !2253, !tbaa !2134
  %enable = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %2, i32 0, i32 0, !dbg !2253
  %3 = load i64, ptr %enable, align 8, !dbg !2253, !tbaa !2206
  %cmp = icmp eq i64 %3, -1, !dbg !2253
  br i1 %cmp, label %if.then, label %if.end, !dbg !2255

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %prev, align 8, !dbg !2256, !tbaa !2134
  %enable1 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %4, i32 0, i32 0, !dbg !2256
  %5 = load i64, ptr %enable1, align 8, !dbg !2256, !tbaa !2206
  %cmp2 = icmp eq i64 %5, -1, !dbg !2256
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !2256

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !2256

cond.false:                                       ; preds = %if.then
  %6 = load ptr, ptr %prev, align 8, !dbg !2256, !tbaa !2134
  %enable3 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %6, i32 0, i32 0, !dbg !2256
  %7 = load i64, ptr %enable3, align 8, !dbg !2256, !tbaa !2206
  br label %cond.end, !dbg !2256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %7, %cond.false ], !dbg !2256
  %8 = load ptr, ptr %conf, align 8, !dbg !2256, !tbaa !2134
  %enable4 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %8, i32 0, i32 0, !dbg !2256
  store i64 %cond, ptr %enable4, align 8, !dbg !2256, !tbaa !2206
  br label %if.end, !dbg !2256

if.end:                                           ; preds = %cond.end, %entry
  %9 = load ptr, ptr %conf, align 8, !dbg !2258, !tbaa !2134
  %no_buffer = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %9, i32 0, i32 1, !dbg !2258
  %10 = load i64, ptr %no_buffer, align 8, !dbg !2258, !tbaa !2213
  %cmp5 = icmp eq i64 %10, -1, !dbg !2258
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !2260

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %prev, align 8, !dbg !2261, !tbaa !2134
  %no_buffer7 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %11, i32 0, i32 1, !dbg !2261
  %12 = load i64, ptr %no_buffer7, align 8, !dbg !2261, !tbaa !2213
  %cmp8 = icmp eq i64 %12, -1, !dbg !2261
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !2261

cond.true9:                                       ; preds = %if.then6
  br label %cond.end12, !dbg !2261

cond.false10:                                     ; preds = %if.then6
  %13 = load ptr, ptr %prev, align 8, !dbg !2261, !tbaa !2134
  %no_buffer11 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %13, i32 0, i32 1, !dbg !2261
  %14 = load i64, ptr %no_buffer11, align 8, !dbg !2261, !tbaa !2213
  br label %cond.end12, !dbg !2261

cond.end12:                                       ; preds = %cond.false10, %cond.true9
  %cond13 = phi i64 [ 0, %cond.true9 ], [ %14, %cond.false10 ], !dbg !2261
  %15 = load ptr, ptr %conf, align 8, !dbg !2261, !tbaa !2134
  %no_buffer14 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %15, i32 0, i32 1, !dbg !2261
  store i64 %cond13, ptr %no_buffer14, align 8, !dbg !2261, !tbaa !2213
  br label %if.end15, !dbg !2261

if.end15:                                         ; preds = %cond.end12, %if.end
  %16 = load ptr, ptr %conf, align 8, !dbg !2263, !tbaa !2134
  %bufs = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %16, i32 0, i32 3, !dbg !2263
  %num = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs, i32 0, i32 0, !dbg !2263
  %17 = load i64, ptr %num, align 8, !dbg !2263, !tbaa !2265
  %cmp16 = icmp eq i64 %17, 0, !dbg !2263
  br i1 %cmp16, label %if.then17, label %if.end33, !dbg !2266

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %prev, align 8, !dbg !2267, !tbaa !2134
  %bufs18 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %18, i32 0, i32 3, !dbg !2267
  %num19 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs18, i32 0, i32 0, !dbg !2267
  %19 = load i64, ptr %num19, align 8, !dbg !2267, !tbaa !2265
  %tobool = icmp ne i64 %19, 0, !dbg !2267
  br i1 %tobool, label %if.then20, label %if.else, !dbg !2270

if.then20:                                        ; preds = %if.then17
  %20 = load ptr, ptr %prev, align 8, !dbg !2271, !tbaa !2134
  %bufs21 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %20, i32 0, i32 3, !dbg !2271
  %num22 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs21, i32 0, i32 0, !dbg !2271
  %21 = load i64, ptr %num22, align 8, !dbg !2271, !tbaa !2265
  %22 = load ptr, ptr %conf, align 8, !dbg !2271, !tbaa !2134
  %bufs23 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %22, i32 0, i32 3, !dbg !2271
  %num24 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs23, i32 0, i32 0, !dbg !2271
  store i64 %21, ptr %num24, align 8, !dbg !2271, !tbaa !2265
  %23 = load ptr, ptr %prev, align 8, !dbg !2271, !tbaa !2134
  %bufs25 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %23, i32 0, i32 3, !dbg !2271
  %size = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs25, i32 0, i32 1, !dbg !2271
  %24 = load i64, ptr %size, align 8, !dbg !2271, !tbaa !2273
  %25 = load ptr, ptr %conf, align 8, !dbg !2271, !tbaa !2134
  %bufs26 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %25, i32 0, i32 3, !dbg !2271
  %size27 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs26, i32 0, i32 1, !dbg !2271
  store i64 %24, ptr %size27, align 8, !dbg !2271, !tbaa !2273
  br label %if.end32, !dbg !2271

if.else:                                          ; preds = %if.then17
  %26 = load i64, ptr @ngx_pagesize, align 8, !dbg !2274, !tbaa !2276
  %div = udiv i64 131072, %26, !dbg !2274
  %27 = load ptr, ptr %conf, align 8, !dbg !2274, !tbaa !2134
  %bufs28 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %27, i32 0, i32 3, !dbg !2274
  %num29 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs28, i32 0, i32 0, !dbg !2274
  store i64 %div, ptr %num29, align 8, !dbg !2274, !tbaa !2265
  %28 = load i64, ptr @ngx_pagesize, align 8, !dbg !2274, !tbaa !2276
  %29 = load ptr, ptr %conf, align 8, !dbg !2274, !tbaa !2134
  %bufs30 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %29, i32 0, i32 3, !dbg !2274
  %size31 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs30, i32 0, i32 1, !dbg !2274
  store i64 %28, ptr %size31, align 8, !dbg !2274, !tbaa !2273
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then20
  br label %if.end33, !dbg !2270

if.end33:                                         ; preds = %if.end32, %if.end15
  %30 = load ptr, ptr %conf, align 8, !dbg !2277, !tbaa !2134
  %postpone_gzipping = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %30, i32 0, i32 4, !dbg !2277
  %31 = load i64, ptr %postpone_gzipping, align 8, !dbg !2277, !tbaa !2217
  %cmp34 = icmp eq i64 %31, -1, !dbg !2277
  br i1 %cmp34, label %if.then35, label %if.end44, !dbg !2279

if.then35:                                        ; preds = %if.end33
  %32 = load ptr, ptr %prev, align 8, !dbg !2280, !tbaa !2134
  %postpone_gzipping36 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %32, i32 0, i32 4, !dbg !2280
  %33 = load i64, ptr %postpone_gzipping36, align 8, !dbg !2280, !tbaa !2217
  %cmp37 = icmp eq i64 %33, -1, !dbg !2280
  br i1 %cmp37, label %cond.true38, label %cond.false39, !dbg !2280

cond.true38:                                      ; preds = %if.then35
  br label %cond.end41, !dbg !2280

cond.false39:                                     ; preds = %if.then35
  %34 = load ptr, ptr %prev, align 8, !dbg !2280, !tbaa !2134
  %postpone_gzipping40 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %34, i32 0, i32 4, !dbg !2280
  %35 = load i64, ptr %postpone_gzipping40, align 8, !dbg !2280, !tbaa !2217
  br label %cond.end41, !dbg !2280

cond.end41:                                       ; preds = %cond.false39, %cond.true38
  %cond42 = phi i64 [ 0, %cond.true38 ], [ %35, %cond.false39 ], !dbg !2280
  %36 = load ptr, ptr %conf, align 8, !dbg !2280, !tbaa !2134
  %postpone_gzipping43 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %36, i32 0, i32 4, !dbg !2280
  store i64 %cond42, ptr %postpone_gzipping43, align 8, !dbg !2280, !tbaa !2217
  br label %if.end44, !dbg !2280

if.end44:                                         ; preds = %cond.end41, %if.end33
  %37 = load ptr, ptr %conf, align 8, !dbg !2282, !tbaa !2134
  %level = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %37, i32 0, i32 5, !dbg !2282
  %38 = load i64, ptr %level, align 8, !dbg !2282, !tbaa !2221
  %cmp45 = icmp eq i64 %38, -1, !dbg !2282
  br i1 %cmp45, label %if.then46, label %if.end55, !dbg !2284

if.then46:                                        ; preds = %if.end44
  %39 = load ptr, ptr %prev, align 8, !dbg !2285, !tbaa !2134
  %level47 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %39, i32 0, i32 5, !dbg !2285
  %40 = load i64, ptr %level47, align 8, !dbg !2285, !tbaa !2221
  %cmp48 = icmp eq i64 %40, -1, !dbg !2285
  br i1 %cmp48, label %cond.true49, label %cond.false50, !dbg !2285

cond.true49:                                      ; preds = %if.then46
  br label %cond.end52, !dbg !2285

cond.false50:                                     ; preds = %if.then46
  %41 = load ptr, ptr %prev, align 8, !dbg !2285, !tbaa !2134
  %level51 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %41, i32 0, i32 5, !dbg !2285
  %42 = load i64, ptr %level51, align 8, !dbg !2285, !tbaa !2221
  br label %cond.end52, !dbg !2285

cond.end52:                                       ; preds = %cond.false50, %cond.true49
  %cond53 = phi i64 [ 1, %cond.true49 ], [ %42, %cond.false50 ], !dbg !2285
  %43 = load ptr, ptr %conf, align 8, !dbg !2285, !tbaa !2134
  %level54 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %43, i32 0, i32 5, !dbg !2285
  store i64 %cond53, ptr %level54, align 8, !dbg !2285, !tbaa !2221
  br label %if.end55, !dbg !2285

if.end55:                                         ; preds = %cond.end52, %if.end44
  %44 = load ptr, ptr %conf, align 8, !dbg !2287, !tbaa !2134
  %wbits = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %44, i32 0, i32 6, !dbg !2287
  %45 = load i64, ptr %wbits, align 8, !dbg !2287, !tbaa !2225
  %cmp56 = icmp eq i64 %45, -1, !dbg !2287
  br i1 %cmp56, label %if.then57, label %if.end66, !dbg !2289

if.then57:                                        ; preds = %if.end55
  %46 = load ptr, ptr %prev, align 8, !dbg !2290, !tbaa !2134
  %wbits58 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %46, i32 0, i32 6, !dbg !2290
  %47 = load i64, ptr %wbits58, align 8, !dbg !2290, !tbaa !2225
  %cmp59 = icmp eq i64 %47, -1, !dbg !2290
  br i1 %cmp59, label %cond.true60, label %cond.false61, !dbg !2290

cond.true60:                                      ; preds = %if.then57
  br label %cond.end63, !dbg !2290

cond.false61:                                     ; preds = %if.then57
  %48 = load ptr, ptr %prev, align 8, !dbg !2290, !tbaa !2134
  %wbits62 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %48, i32 0, i32 6, !dbg !2290
  %49 = load i64, ptr %wbits62, align 8, !dbg !2290, !tbaa !2225
  br label %cond.end63, !dbg !2290

cond.end63:                                       ; preds = %cond.false61, %cond.true60
  %cond64 = phi i64 [ 15, %cond.true60 ], [ %49, %cond.false61 ], !dbg !2290
  %50 = load ptr, ptr %conf, align 8, !dbg !2290, !tbaa !2134
  %wbits65 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %50, i32 0, i32 6, !dbg !2290
  store i64 %cond64, ptr %wbits65, align 8, !dbg !2290, !tbaa !2225
  br label %if.end66, !dbg !2290

if.end66:                                         ; preds = %cond.end63, %if.end55
  %51 = load ptr, ptr %conf, align 8, !dbg !2292, !tbaa !2134
  %memlevel = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %51, i32 0, i32 7, !dbg !2292
  %52 = load i64, ptr %memlevel, align 8, !dbg !2292, !tbaa !2229
  %cmp67 = icmp eq i64 %52, -1, !dbg !2292
  br i1 %cmp67, label %if.then68, label %if.end77, !dbg !2294

if.then68:                                        ; preds = %if.end66
  %53 = load ptr, ptr %prev, align 8, !dbg !2295, !tbaa !2134
  %memlevel69 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %53, i32 0, i32 7, !dbg !2295
  %54 = load i64, ptr %memlevel69, align 8, !dbg !2295, !tbaa !2229
  %cmp70 = icmp eq i64 %54, -1, !dbg !2295
  br i1 %cmp70, label %cond.true71, label %cond.false72, !dbg !2295

cond.true71:                                      ; preds = %if.then68
  br label %cond.end74, !dbg !2295

cond.false72:                                     ; preds = %if.then68
  %55 = load ptr, ptr %prev, align 8, !dbg !2295, !tbaa !2134
  %memlevel73 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %55, i32 0, i32 7, !dbg !2295
  %56 = load i64, ptr %memlevel73, align 8, !dbg !2295, !tbaa !2229
  br label %cond.end74, !dbg !2295

cond.end74:                                       ; preds = %cond.false72, %cond.true71
  %cond75 = phi i64 [ 8, %cond.true71 ], [ %56, %cond.false72 ], !dbg !2295
  %57 = load ptr, ptr %conf, align 8, !dbg !2295, !tbaa !2134
  %memlevel76 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %57, i32 0, i32 7, !dbg !2295
  store i64 %cond75, ptr %memlevel76, align 8, !dbg !2295, !tbaa !2229
  br label %if.end77, !dbg !2295

if.end77:                                         ; preds = %cond.end74, %if.end66
  %58 = load ptr, ptr %conf, align 8, !dbg !2297, !tbaa !2134
  %min_length = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %58, i32 0, i32 8, !dbg !2297
  %59 = load i64, ptr %min_length, align 8, !dbg !2297, !tbaa !2233
  %cmp78 = icmp eq i64 %59, -1, !dbg !2297
  br i1 %cmp78, label %if.then79, label %if.end88, !dbg !2299

if.then79:                                        ; preds = %if.end77
  %60 = load ptr, ptr %prev, align 8, !dbg !2300, !tbaa !2134
  %min_length80 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %60, i32 0, i32 8, !dbg !2300
  %61 = load i64, ptr %min_length80, align 8, !dbg !2300, !tbaa !2233
  %cmp81 = icmp eq i64 %61, -1, !dbg !2300
  br i1 %cmp81, label %cond.true82, label %cond.false83, !dbg !2300

cond.true82:                                      ; preds = %if.then79
  br label %cond.end85, !dbg !2300

cond.false83:                                     ; preds = %if.then79
  %62 = load ptr, ptr %prev, align 8, !dbg !2300, !tbaa !2134
  %min_length84 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %62, i32 0, i32 8, !dbg !2300
  %63 = load i64, ptr %min_length84, align 8, !dbg !2300, !tbaa !2233
  br label %cond.end85, !dbg !2300

cond.end85:                                       ; preds = %cond.false83, %cond.true82
  %cond86 = phi i64 [ 20, %cond.true82 ], [ %63, %cond.false83 ], !dbg !2300
  %64 = load ptr, ptr %conf, align 8, !dbg !2300, !tbaa !2134
  %min_length87 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %64, i32 0, i32 8, !dbg !2300
  store i64 %cond86, ptr %min_length87, align 8, !dbg !2300, !tbaa !2233
  br label %if.end88, !dbg !2300

if.end88:                                         ; preds = %cond.end85, %if.end77
  %65 = load ptr, ptr %cf.addr, align 8, !dbg !2302, !tbaa !2134
  %66 = load ptr, ptr %conf, align 8, !dbg !2304, !tbaa !2134
  %types_keys = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %66, i32 0, i32 9, !dbg !2305
  %67 = load ptr, ptr %conf, align 8, !dbg !2306, !tbaa !2134
  %types = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %67, i32 0, i32 2, !dbg !2307
  %68 = load ptr, ptr %prev, align 8, !dbg !2308, !tbaa !2134
  %types_keys89 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %68, i32 0, i32 9, !dbg !2309
  %69 = load ptr, ptr %prev, align 8, !dbg !2310, !tbaa !2134
  %types90 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %69, i32 0, i32 2, !dbg !2311
  %call = call ptr @ngx_http_merge_types(ptr noundef %65, ptr noundef %types_keys, ptr noundef %types, ptr noundef %types_keys89, ptr noundef %types90, ptr noundef @ngx_http_html_default_types), !dbg !2312
  %cmp91 = icmp ne ptr %call, null, !dbg !2313
  br i1 %cmp91, label %if.then92, label %if.end93, !dbg !2314

if.then92:                                        ; preds = %if.end88
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2315

if.end93:                                         ; preds = %if.end88
  store ptr null, ptr %retval, align 8, !dbg !2317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2317

cleanup:                                          ; preds = %if.end93, %if.then92
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !2318
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #5, !dbg !2318
  %70 = load ptr, ptr %retval, align 8, !dbg !2318
  ret ptr %70, !dbg !2318
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2319 ptr @ngx_http_add_variable(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_ratio_variable(ptr noundef %r, ptr noundef %v, i64 noundef %data) #0 !dbg !2322 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %data.addr = alloca i64, align 8
  %zint = alloca i64, align 8
  %zfrac = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2324, metadata !DIExpression()), !dbg !2330
  store ptr %v, ptr %v.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2325, metadata !DIExpression()), !dbg !2331
  store i64 %data, ptr %data.addr, align 8, !tbaa !2276
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2326, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.start.p0(i64 8, ptr %zint) #5, !dbg !2333
  tail call void @llvm.dbg.declare(metadata ptr %zint, metadata !2327, metadata !DIExpression()), !dbg !2334
  call void @llvm.lifetime.start.p0(i64 8, ptr %zfrac) #5, !dbg !2333
  tail call void @llvm.dbg.declare(metadata ptr %zfrac, metadata !2328, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5, !dbg !2336
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2329, metadata !DIExpression()), !dbg !2337
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2338, !tbaa !2134
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !2338
  %1 = load ptr, ptr %ctx1, align 8, !dbg !2338, !tbaa !2339
  %2 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !2338, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2338
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2338, !tbaa !2134
  store ptr %3, ptr %ctx, align 8, !dbg !2349, !tbaa !2134
  %4 = load ptr, ptr %ctx, align 8, !dbg !2350, !tbaa !2134
  %cmp = icmp eq ptr %4, null, !dbg !2352
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2353

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !2354, !tbaa !2134
  %zout = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %5, i32 0, i32 17, !dbg !2355
  %6 = load i64, ptr %zout, align 8, !dbg !2355, !tbaa !2356
  %cmp2 = icmp eq i64 %6, 0, !dbg !2359
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2360

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %v.addr, align 8, !dbg !2361, !tbaa !2134
  %bf.load = load i32, ptr %7, align 8, !dbg !2363
  %bf.clear = and i32 %bf.load, -1073741825, !dbg !2363
  %bf.set = or i32 %bf.clear, 1073741824, !dbg !2363
  store i32 %bf.set, ptr %7, align 8, !dbg !2363
  store i64 0, ptr %retval, align 8, !dbg !2364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2364

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %v.addr, align 8, !dbg !2365, !tbaa !2134
  %bf.load3 = load i32, ptr %8, align 8, !dbg !2366
  %bf.clear4 = and i32 %bf.load3, -268435457, !dbg !2366
  %bf.set5 = or i32 %bf.clear4, 268435456, !dbg !2366
  store i32 %bf.set5, ptr %8, align 8, !dbg !2366
  %9 = load ptr, ptr %v.addr, align 8, !dbg !2367, !tbaa !2134
  %bf.load6 = load i32, ptr %9, align 8, !dbg !2368
  %bf.clear7 = and i32 %bf.load6, -536870913, !dbg !2368
  %bf.set8 = or i32 %bf.clear7, 0, !dbg !2368
  store i32 %bf.set8, ptr %9, align 8, !dbg !2368
  %10 = load ptr, ptr %v.addr, align 8, !dbg !2369, !tbaa !2134
  %bf.load9 = load i32, ptr %10, align 8, !dbg !2370
  %bf.clear10 = and i32 %bf.load9, -1073741825, !dbg !2370
  %bf.set11 = or i32 %bf.clear10, 0, !dbg !2370
  store i32 %bf.set11, ptr %10, align 8, !dbg !2370
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2371, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 11, !dbg !2372
  %12 = load ptr, ptr %pool, align 8, !dbg !2372, !tbaa !2373
  %call = call ptr @ngx_pnalloc(ptr noundef %12, i64 noundef 14), !dbg !2374
  %13 = load ptr, ptr %v.addr, align 8, !dbg !2375, !tbaa !2134
  %data12 = getelementptr inbounds %struct.ngx_variable_value_t, ptr %13, i32 0, i32 1, !dbg !2376
  store ptr %call, ptr %data12, align 8, !dbg !2377, !tbaa !2378
  %14 = load ptr, ptr %v.addr, align 8, !dbg !2380, !tbaa !2134
  %data13 = getelementptr inbounds %struct.ngx_variable_value_t, ptr %14, i32 0, i32 1, !dbg !2382
  %15 = load ptr, ptr %data13, align 8, !dbg !2382, !tbaa !2378
  %cmp14 = icmp eq ptr %15, null, !dbg !2383
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2384

if.then15:                                        ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !2385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2385

if.end16:                                         ; preds = %if.end
  %16 = load ptr, ptr %ctx, align 8, !dbg !2387, !tbaa !2134
  %zin = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %16, i32 0, i32 16, !dbg !2388
  %17 = load i64, ptr %zin, align 8, !dbg !2388, !tbaa !2389
  %18 = load ptr, ptr %ctx, align 8, !dbg !2390, !tbaa !2134
  %zout17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 17, !dbg !2391
  %19 = load i64, ptr %zout17, align 8, !dbg !2391, !tbaa !2356
  %div = udiv i64 %17, %19, !dbg !2392
  store i64 %div, ptr %zint, align 8, !dbg !2393, !tbaa !2276
  %20 = load ptr, ptr %ctx, align 8, !dbg !2394, !tbaa !2134
  %zin18 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %20, i32 0, i32 16, !dbg !2395
  %21 = load i64, ptr %zin18, align 8, !dbg !2395, !tbaa !2389
  %mul = mul i64 %21, 100, !dbg !2396
  %22 = load ptr, ptr %ctx, align 8, !dbg !2397, !tbaa !2134
  %zout19 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %22, i32 0, i32 17, !dbg !2398
  %23 = load i64, ptr %zout19, align 8, !dbg !2398, !tbaa !2356
  %div20 = udiv i64 %mul, %23, !dbg !2399
  %rem = urem i64 %div20, 100, !dbg !2400
  store i64 %rem, ptr %zfrac, align 8, !dbg !2401, !tbaa !2276
  %24 = load ptr, ptr %ctx, align 8, !dbg !2402, !tbaa !2134
  %zin21 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %24, i32 0, i32 16, !dbg !2404
  %25 = load i64, ptr %zin21, align 8, !dbg !2404, !tbaa !2389
  %mul22 = mul i64 %25, 1000, !dbg !2405
  %26 = load ptr, ptr %ctx, align 8, !dbg !2406, !tbaa !2134
  %zout23 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %26, i32 0, i32 17, !dbg !2407
  %27 = load i64, ptr %zout23, align 8, !dbg !2407, !tbaa !2356
  %div24 = udiv i64 %mul22, %27, !dbg !2408
  %rem25 = urem i64 %div24, 10, !dbg !2409
  %cmp26 = icmp ugt i64 %rem25, 4, !dbg !2410
  br i1 %cmp26, label %if.then27, label %if.end32, !dbg !2411

if.then27:                                        ; preds = %if.end16
  %28 = load i64, ptr %zfrac, align 8, !dbg !2412, !tbaa !2276
  %inc = add i64 %28, 1, !dbg !2412
  store i64 %inc, ptr %zfrac, align 8, !dbg !2412, !tbaa !2276
  %29 = load i64, ptr %zfrac, align 8, !dbg !2414, !tbaa !2276
  %cmp28 = icmp ugt i64 %29, 99, !dbg !2416
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !2417

if.then29:                                        ; preds = %if.then27
  %30 = load i64, ptr %zint, align 8, !dbg !2418, !tbaa !2276
  %inc30 = add i64 %30, 1, !dbg !2418
  store i64 %inc30, ptr %zint, align 8, !dbg !2418, !tbaa !2276
  store i64 0, ptr %zfrac, align 8, !dbg !2420, !tbaa !2276
  br label %if.end31, !dbg !2421

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %if.end32, !dbg !2422

if.end32:                                         ; preds = %if.end31, %if.end16
  %31 = load ptr, ptr %v.addr, align 8, !dbg !2423, !tbaa !2134
  %data33 = getelementptr inbounds %struct.ngx_variable_value_t, ptr %31, i32 0, i32 1, !dbg !2424
  %32 = load ptr, ptr %data33, align 8, !dbg !2424, !tbaa !2378
  %33 = load i64, ptr %zint, align 8, !dbg !2425, !tbaa !2276
  %34 = load i64, ptr %zfrac, align 8, !dbg !2426, !tbaa !2276
  %call34 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %32, ptr noundef @.str.2, i64 noundef %33, i64 noundef %34), !dbg !2427
  %35 = load ptr, ptr %v.addr, align 8, !dbg !2428, !tbaa !2134
  %data35 = getelementptr inbounds %struct.ngx_variable_value_t, ptr %35, i32 0, i32 1, !dbg !2429
  %36 = load ptr, ptr %data35, align 8, !dbg !2429, !tbaa !2378
  %sub.ptr.lhs.cast = ptrtoint ptr %call34 to i64, !dbg !2430
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64, !dbg !2430
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2430
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2427
  %37 = load ptr, ptr %v.addr, align 8, !dbg !2431, !tbaa !2134
  %bf.load36 = load i32, ptr %37, align 8, !dbg !2432
  %bf.value = and i32 %conv, 268435455, !dbg !2432
  %bf.clear37 = and i32 %bf.load36, -268435456, !dbg !2432
  %bf.set38 = or i32 %bf.clear37, %bf.value, !dbg !2432
  store i32 %bf.set38, ptr %37, align 8, !dbg !2432
  store i64 0, ptr %retval, align 8, !dbg !2433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2433

cleanup:                                          ; preds = %if.end32, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5, !dbg !2434
  call void @llvm.lifetime.end.p0(i64 8, ptr %zfrac) #5, !dbg !2434
  call void @llvm.lifetime.end.p0(i64 8, ptr %zint) #5, !dbg !2434
  %38 = load i64, ptr %retval, align 8, !dbg !2434
  ret i64 %38, !dbg !2434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2435 ptr @ngx_pnalloc(ptr noundef, i64 noundef) #2

declare !dbg !2438 ptr @ngx_sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_header_filter(ptr noundef %r) #0 !dbg !2441 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %h = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2443, metadata !DIExpression()), !dbg !2447
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #5, !dbg !2448
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2444, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5, !dbg !2450
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2445, metadata !DIExpression()), !dbg !2451
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !2452
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2446, metadata !DIExpression()), !dbg !2453
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2454, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !2454
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !2454, !tbaa !2455
  %2 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !2454, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2454
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2454, !tbaa !2134
  store ptr %3, ptr %conf, align 8, !dbg !2456, !tbaa !2134
  %4 = load ptr, ptr %conf, align 8, !dbg !2457, !tbaa !2134
  %enable = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %4, i32 0, i32 0, !dbg !2459
  %5 = load i64, ptr %enable, align 8, !dbg !2459, !tbaa !2206
  %tobool = icmp ne i64 %5, 0, !dbg !2457
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2460

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2461, !tbaa !2134
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 14, !dbg !2462
  %status = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 2, !dbg !2463
  %7 = load i64, ptr %status, align 8, !dbg !2463, !tbaa !2464
  %cmp = icmp ne i64 %7, 200, !dbg !2465
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false8, !dbg !2466

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2467, !tbaa !2134
  %headers_out1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 14, !dbg !2468
  %status2 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out1, i32 0, i32 2, !dbg !2469
  %9 = load i64, ptr %status2, align 8, !dbg !2469, !tbaa !2464
  %cmp3 = icmp ne i64 %9, 403, !dbg !2470
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false8, !dbg !2471

land.lhs.true4:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !2134
  %headers_out5 = getelementptr inbounds %struct.ngx_http_request_s, ptr %10, i32 0, i32 14, !dbg !2473
  %status6 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out5, i32 0, i32 2, !dbg !2474
  %11 = load i64, ptr %status6, align 8, !dbg !2474, !tbaa !2464
  %cmp7 = icmp ne i64 %11, 404, !dbg !2475
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !2476

lor.lhs.false8:                                   ; preds = %land.lhs.true4, %land.lhs.true, %lor.lhs.false
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2477, !tbaa !2134
  %headers_out9 = getelementptr inbounds %struct.ngx_http_request_s, ptr %12, i32 0, i32 14, !dbg !2478
  %content_encoding = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out9, i32 0, i32 7, !dbg !2479
  %13 = load ptr, ptr %content_encoding, align 8, !dbg !2479, !tbaa !2480
  %tobool10 = icmp ne ptr %13, null, !dbg !2477
  br i1 %tobool10, label %land.lhs.true11, label %lor.lhs.false15, !dbg !2481

land.lhs.true11:                                  ; preds = %lor.lhs.false8
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2482, !tbaa !2134
  %headers_out12 = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 14, !dbg !2483
  %content_encoding13 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out12, i32 0, i32 7, !dbg !2484
  %15 = load ptr, ptr %content_encoding13, align 8, !dbg !2484, !tbaa !2480
  %value = getelementptr inbounds %struct.ngx_table_elt_t, ptr %15, i32 0, i32 2, !dbg !2485
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 0, !dbg !2486
  %16 = load i64, ptr %len, align 8, !dbg !2486, !tbaa !2487
  %tobool14 = icmp ne i64 %16, 0, !dbg !2482
  br i1 %tobool14, label %if.then, label %lor.lhs.false15, !dbg !2489

lor.lhs.false15:                                  ; preds = %land.lhs.true11, %lor.lhs.false8
  %17 = load ptr, ptr %r.addr, align 8, !dbg !2490, !tbaa !2134
  %headers_out16 = getelementptr inbounds %struct.ngx_http_request_s, ptr %17, i32 0, i32 14, !dbg !2491
  %content_length_n = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out16, i32 0, i32 24, !dbg !2492
  %18 = load i64, ptr %content_length_n, align 8, !dbg !2492, !tbaa !2493
  %cmp17 = icmp ne i64 %18, -1, !dbg !2494
  br i1 %cmp17, label %land.lhs.true18, label %lor.lhs.false22, !dbg !2495

land.lhs.true18:                                  ; preds = %lor.lhs.false15
  %19 = load ptr, ptr %r.addr, align 8, !dbg !2496, !tbaa !2134
  %headers_out19 = getelementptr inbounds %struct.ngx_http_request_s, ptr %19, i32 0, i32 14, !dbg !2497
  %content_length_n20 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out19, i32 0, i32 24, !dbg !2498
  %20 = load i64, ptr %content_length_n20, align 8, !dbg !2498, !tbaa !2493
  %21 = load ptr, ptr %conf, align 8, !dbg !2499, !tbaa !2134
  %min_length = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %21, i32 0, i32 8, !dbg !2500
  %22 = load i64, ptr %min_length, align 8, !dbg !2500, !tbaa !2233
  %cmp21 = icmp slt i64 %20, %22, !dbg !2501
  br i1 %cmp21, label %if.then, label %lor.lhs.false22, !dbg !2502

lor.lhs.false22:                                  ; preds = %land.lhs.true18, %lor.lhs.false15
  %23 = load ptr, ptr %r.addr, align 8, !dbg !2503, !tbaa !2134
  %24 = load ptr, ptr %conf, align 8, !dbg !2504, !tbaa !2134
  %types = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %24, i32 0, i32 2, !dbg !2505
  %call = call ptr @ngx_http_test_content_type(ptr noundef %23, ptr noundef %types), !dbg !2506
  %cmp23 = icmp eq ptr %call, null, !dbg !2507
  br i1 %cmp23, label %if.then, label %lor.lhs.false24, !dbg !2508

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %25 = load ptr, ptr %r.addr, align 8, !dbg !2509, !tbaa !2134
  %header_only = getelementptr inbounds %struct.ngx_http_request_s, ptr %25, i32 0, i32 48, !dbg !2510
  %bf.load = load i128, ptr %header_only, align 8, !dbg !2510
  %bf.lshr = lshr i128 %bf.load, 72, !dbg !2510
  %bf.clear = and i128 %bf.lshr, 1, !dbg !2510
  %bf.cast = trunc i128 %bf.clear to i32, !dbg !2510
  %tobool25 = icmp ne i32 %bf.cast, 0, !dbg !2509
  br i1 %tobool25, label %if.then, label %if.end, !dbg !2511

if.then:                                          ; preds = %lor.lhs.false24, %lor.lhs.false22, %land.lhs.true18, %land.lhs.true11, %land.lhs.true4, %entry
  %26 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2512, !tbaa !2134
  %27 = load ptr, ptr %r.addr, align 8, !dbg !2514, !tbaa !2134
  %call26 = call i64 %26(ptr noundef %27), !dbg !2512
  store i64 %call26, ptr %retval, align 8, !dbg !2515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2515

if.end:                                           ; preds = %lor.lhs.false24
  %28 = load ptr, ptr %r.addr, align 8, !dbg !2516, !tbaa !2134
  %gzip_vary = getelementptr inbounds %struct.ngx_http_request_s, ptr %28, i32 0, i32 48, !dbg !2517
  %bf.load27 = load i128, ptr %gzip_vary, align 8, !dbg !2518
  %bf.clear28 = and i128 %bf.load27, -18446744073709551617, !dbg !2518
  %bf.set = or i128 %bf.clear28, 18446744073709551616, !dbg !2518
  store i128 %bf.set, ptr %gzip_vary, align 8, !dbg !2518
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2519, !tbaa !2134
  %gzip_tested = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 48, !dbg !2521
  %bf.load29 = load i128, ptr %gzip_tested, align 8, !dbg !2521
  %bf.lshr30 = lshr i128 %bf.load29, 62, !dbg !2521
  %bf.clear31 = and i128 %bf.lshr30, 1, !dbg !2521
  %bf.cast32 = trunc i128 %bf.clear31 to i32, !dbg !2521
  %tobool33 = icmp ne i32 %bf.cast32, 0, !dbg !2519
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !2522

if.then34:                                        ; preds = %if.end
  %30 = load ptr, ptr %r.addr, align 8, !dbg !2523, !tbaa !2134
  %call35 = call i64 @ngx_http_gzip_ok(ptr noundef %30), !dbg !2526
  %cmp36 = icmp ne i64 %call35, 0, !dbg !2527
  br i1 %cmp36, label %if.then37, label %if.end39, !dbg !2528

if.then37:                                        ; preds = %if.then34
  %31 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2529, !tbaa !2134
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2531, !tbaa !2134
  %call38 = call i64 %31(ptr noundef %32), !dbg !2529
  store i64 %call38, ptr %retval, align 8, !dbg !2532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2532

if.end39:                                         ; preds = %if.then34
  br label %if.end48, !dbg !2533

if.else:                                          ; preds = %if.end
  %33 = load ptr, ptr %r.addr, align 8, !dbg !2534, !tbaa !2134
  %gzip_ok = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 48, !dbg !2536
  %bf.load40 = load i128, ptr %gzip_ok, align 8, !dbg !2536
  %bf.lshr41 = lshr i128 %bf.load40, 63, !dbg !2536
  %bf.clear42 = and i128 %bf.lshr41, 1, !dbg !2536
  %bf.cast43 = trunc i128 %bf.clear42 to i32, !dbg !2536
  %tobool44 = icmp ne i32 %bf.cast43, 0, !dbg !2534
  br i1 %tobool44, label %if.end47, label %if.then45, !dbg !2537

if.then45:                                        ; preds = %if.else
  %34 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2538, !tbaa !2134
  %35 = load ptr, ptr %r.addr, align 8, !dbg !2540, !tbaa !2134
  %call46 = call i64 %34(ptr noundef %35), !dbg !2538
  store i64 %call46, ptr %retval, align 8, !dbg !2541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2541

if.end47:                                         ; preds = %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end39
  %36 = load ptr, ptr %r.addr, align 8, !dbg !2542, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %36, i32 0, i32 11, !dbg !2543
  %37 = load ptr, ptr %pool, align 8, !dbg !2543, !tbaa !2373
  %call49 = call ptr @ngx_pcalloc(ptr noundef %37, i64 noundef 264), !dbg !2544
  store ptr %call49, ptr %ctx, align 8, !dbg !2545, !tbaa !2134
  %38 = load ptr, ptr %ctx, align 8, !dbg !2546, !tbaa !2134
  %cmp50 = icmp eq ptr %38, null, !dbg !2548
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !2549

if.then51:                                        ; preds = %if.end48
  store i64 -1, ptr %retval, align 8, !dbg !2550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2550

if.end52:                                         ; preds = %if.end48
  %39 = load ptr, ptr %ctx, align 8, !dbg !2552, !tbaa !2134
  %40 = load ptr, ptr %r.addr, align 8, !dbg !2552, !tbaa !2134
  %ctx53 = getelementptr inbounds %struct.ngx_http_request_s, ptr %40, i32 0, i32 2, !dbg !2552
  %41 = load ptr, ptr %ctx53, align 8, !dbg !2552, !tbaa !2339
  %42 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !2552, !tbaa !2347
  %arrayidx54 = getelementptr inbounds ptr, ptr %41, i64 %42, !dbg !2552
  store ptr %39, ptr %arrayidx54, align 8, !dbg !2552, !tbaa !2134
  %43 = load ptr, ptr %r.addr, align 8, !dbg !2553, !tbaa !2134
  %44 = load ptr, ptr %ctx, align 8, !dbg !2554, !tbaa !2134
  %request = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %44, i32 0, i32 20, !dbg !2555
  store ptr %43, ptr %request, align 8, !dbg !2556, !tbaa !2557
  %45 = load ptr, ptr %conf, align 8, !dbg !2558, !tbaa !2134
  %postpone_gzipping = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %45, i32 0, i32 4, !dbg !2559
  %46 = load i64, ptr %postpone_gzipping, align 8, !dbg !2559, !tbaa !2217
  %cmp55 = icmp ne i64 %46, 0, !dbg !2560
  %conv = zext i1 %cmp55 to i32, !dbg !2560
  %47 = load ptr, ptr %ctx, align 8, !dbg !2561, !tbaa !2134
  %buffering = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %47, i32 0, i32 15, !dbg !2562
  %48 = trunc i32 %conv to i16, !dbg !2563
  %bf.load56 = load i16, ptr %buffering, align 8, !dbg !2563
  %bf.value = and i16 %48, 1, !dbg !2563
  %bf.shl = shl i16 %bf.value, 8, !dbg !2563
  %bf.clear57 = and i16 %bf.load56, -257, !dbg !2563
  %bf.set58 = or i16 %bf.clear57, %bf.shl, !dbg !2563
  store i16 %bf.set58, ptr %buffering, align 8, !dbg !2563
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !2563
  %49 = load ptr, ptr %r.addr, align 8, !dbg !2564, !tbaa !2134
  %50 = load ptr, ptr %ctx, align 8, !dbg !2565, !tbaa !2134
  call void @ngx_http_gzip_filter_memory(ptr noundef %49, ptr noundef %50), !dbg !2566
  %51 = load ptr, ptr %r.addr, align 8, !dbg !2567, !tbaa !2134
  %headers_out59 = getelementptr inbounds %struct.ngx_http_request_s, ptr %51, i32 0, i32 14, !dbg !2568
  %headers = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out59, i32 0, i32 0, !dbg !2569
  %call60 = call ptr @ngx_list_push(ptr noundef %headers), !dbg !2570
  store ptr %call60, ptr %h, align 8, !dbg !2571, !tbaa !2134
  %52 = load ptr, ptr %h, align 8, !dbg !2572, !tbaa !2134
  %cmp61 = icmp eq ptr %52, null, !dbg !2574
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !2575

if.then63:                                        ; preds = %if.end52
  store i64 -1, ptr %retval, align 8, !dbg !2576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2576

if.end64:                                         ; preds = %if.end52
  %53 = load ptr, ptr %h, align 8, !dbg !2578, !tbaa !2134
  %hash = getelementptr inbounds %struct.ngx_table_elt_t, ptr %53, i32 0, i32 0, !dbg !2579
  store i64 1, ptr %hash, align 8, !dbg !2580, !tbaa !2581
  %54 = load ptr, ptr %h, align 8, !dbg !2582, !tbaa !2134
  %key = getelementptr inbounds %struct.ngx_table_elt_t, ptr %54, i32 0, i32 1, !dbg !2582
  %len65 = getelementptr inbounds %struct.ngx_str_t, ptr %key, i32 0, i32 0, !dbg !2582
  store i64 16, ptr %len65, align 8, !dbg !2582, !tbaa !2583
  %55 = load ptr, ptr %h, align 8, !dbg !2582, !tbaa !2134
  %key66 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %55, i32 0, i32 1, !dbg !2582
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %key66, i32 0, i32 1, !dbg !2582
  store ptr @.str.3, ptr %data, align 8, !dbg !2582, !tbaa !2584
  %56 = load ptr, ptr %h, align 8, !dbg !2585, !tbaa !2134
  %value67 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %56, i32 0, i32 2, !dbg !2585
  %len68 = getelementptr inbounds %struct.ngx_str_t, ptr %value67, i32 0, i32 0, !dbg !2585
  store i64 4, ptr %len68, align 8, !dbg !2585, !tbaa !2487
  %57 = load ptr, ptr %h, align 8, !dbg !2585, !tbaa !2134
  %value69 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %57, i32 0, i32 2, !dbg !2585
  %data70 = getelementptr inbounds %struct.ngx_str_t, ptr %value69, i32 0, i32 1, !dbg !2585
  store ptr @.str.4, ptr %data70, align 8, !dbg !2585, !tbaa !2586
  %58 = load ptr, ptr %h, align 8, !dbg !2587, !tbaa !2134
  %59 = load ptr, ptr %r.addr, align 8, !dbg !2588, !tbaa !2134
  %headers_out71 = getelementptr inbounds %struct.ngx_http_request_s, ptr %59, i32 0, i32 14, !dbg !2589
  %content_encoding72 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out71, i32 0, i32 7, !dbg !2590
  store ptr %58, ptr %content_encoding72, align 8, !dbg !2591, !tbaa !2480
  %60 = load ptr, ptr %r.addr, align 8, !dbg !2592, !tbaa !2134
  %main_filter_need_in_memory = getelementptr inbounds %struct.ngx_http_request_s, ptr %60, i32 0, i32 48, !dbg !2593
  %bf.load73 = load i128, ptr %main_filter_need_in_memory, align 8, !dbg !2594
  %bf.clear74 = and i128 %bf.load73, -9903520314283042199192993793, !dbg !2594
  %bf.set75 = or i128 %bf.clear74, 9903520314283042199192993792, !dbg !2594
  store i128 %bf.set75, ptr %main_filter_need_in_memory, align 8, !dbg !2594
  %61 = load ptr, ptr %r.addr, align 8, !dbg !2595, !tbaa !2134
  %headers_out76 = getelementptr inbounds %struct.ngx_http_request_s, ptr %61, i32 0, i32 14, !dbg !2595
  %content_length_n77 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out76, i32 0, i32 24, !dbg !2595
  store i64 -1, ptr %content_length_n77, align 8, !dbg !2595, !tbaa !2493
  %62 = load ptr, ptr %r.addr, align 8, !dbg !2596, !tbaa !2134
  %headers_out78 = getelementptr inbounds %struct.ngx_http_request_s, ptr %62, i32 0, i32 14, !dbg !2596
  %content_length = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out78, i32 0, i32 6, !dbg !2596
  %63 = load ptr, ptr %content_length, align 8, !dbg !2596, !tbaa !2598
  %tobool79 = icmp ne ptr %63, null, !dbg !2596
  br i1 %tobool79, label %if.then80, label %if.end86, !dbg !2595

if.then80:                                        ; preds = %if.end64
  %64 = load ptr, ptr %r.addr, align 8, !dbg !2599, !tbaa !2134
  %headers_out81 = getelementptr inbounds %struct.ngx_http_request_s, ptr %64, i32 0, i32 14, !dbg !2599
  %content_length82 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out81, i32 0, i32 6, !dbg !2599
  %65 = load ptr, ptr %content_length82, align 8, !dbg !2599, !tbaa !2598
  %hash83 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %65, i32 0, i32 0, !dbg !2599
  store i64 0, ptr %hash83, align 8, !dbg !2599, !tbaa !2581
  %66 = load ptr, ptr %r.addr, align 8, !dbg !2599, !tbaa !2134
  %headers_out84 = getelementptr inbounds %struct.ngx_http_request_s, ptr %66, i32 0, i32 14, !dbg !2599
  %content_length85 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out84, i32 0, i32 6, !dbg !2599
  store ptr null, ptr %content_length85, align 8, !dbg !2599, !tbaa !2598
  br label %if.end86, !dbg !2599

if.end86:                                         ; preds = %if.then80, %if.end64
  %67 = load ptr, ptr %r.addr, align 8, !dbg !2601, !tbaa !2134
  %allow_ranges = getelementptr inbounds %struct.ngx_http_request_s, ptr %67, i32 0, i32 48, !dbg !2601
  %bf.load87 = load i128, ptr %allow_ranges, align 8, !dbg !2601
  %bf.clear88 = and i128 %bf.load87, -158456325028528675187087900673, !dbg !2601
  %bf.set89 = or i128 %bf.clear88, 0, !dbg !2601
  store i128 %bf.set89, ptr %allow_ranges, align 8, !dbg !2601
  %68 = load ptr, ptr %r.addr, align 8, !dbg !2602, !tbaa !2134
  %headers_out90 = getelementptr inbounds %struct.ngx_http_request_s, ptr %68, i32 0, i32 14, !dbg !2602
  %accept_ranges = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out90, i32 0, i32 12, !dbg !2602
  %69 = load ptr, ptr %accept_ranges, align 8, !dbg !2602, !tbaa !2604
  %tobool91 = icmp ne ptr %69, null, !dbg !2602
  br i1 %tobool91, label %if.then92, label %if.end98, !dbg !2601

if.then92:                                        ; preds = %if.end86
  %70 = load ptr, ptr %r.addr, align 8, !dbg !2605, !tbaa !2134
  %headers_out93 = getelementptr inbounds %struct.ngx_http_request_s, ptr %70, i32 0, i32 14, !dbg !2605
  %accept_ranges94 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out93, i32 0, i32 12, !dbg !2605
  %71 = load ptr, ptr %accept_ranges94, align 8, !dbg !2605, !tbaa !2604
  %hash95 = getelementptr inbounds %struct.ngx_table_elt_t, ptr %71, i32 0, i32 0, !dbg !2605
  store i64 0, ptr %hash95, align 8, !dbg !2605, !tbaa !2581
  %72 = load ptr, ptr %r.addr, align 8, !dbg !2605, !tbaa !2134
  %headers_out96 = getelementptr inbounds %struct.ngx_http_request_s, ptr %72, i32 0, i32 14, !dbg !2605
  %accept_ranges97 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out96, i32 0, i32 12, !dbg !2605
  store ptr null, ptr %accept_ranges97, align 8, !dbg !2605, !tbaa !2604
  br label %if.end98, !dbg !2605

if.end98:                                         ; preds = %if.then92, %if.end86
  %73 = load ptr, ptr %r.addr, align 8, !dbg !2607, !tbaa !2134
  call void @ngx_http_weak_etag(ptr noundef %73), !dbg !2608
  %74 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2609, !tbaa !2134
  %75 = load ptr, ptr %r.addr, align 8, !dbg !2610, !tbaa !2134
  %call99 = call i64 %74(ptr noundef %75), !dbg !2609
  store i64 %call99, ptr %retval, align 8, !dbg !2611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2611

cleanup:                                          ; preds = %if.end98, %if.then63, %if.then51, %if.then45, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #5, !dbg !2612
  %76 = load i64, ptr %retval, align 8, !dbg !2612
  ret i64 %76, !dbg !2612
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_body_filter(ptr noundef %r, ptr noundef %in) #0 !dbg !2613 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %flush = alloca i64, align 8
  %cl = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2615, metadata !DIExpression()), !dbg !2622
  store ptr %in, ptr %in.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !2624
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %flush) #5, !dbg !2626
  tail call void @llvm.dbg.declare(metadata ptr %flush, metadata !2618, metadata !DIExpression()), !dbg !2627
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !2628
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !2619, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5, !dbg !2630
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2620, metadata !DIExpression()), !dbg !2631
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2632, !tbaa !2134
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !2632
  %1 = load ptr, ptr %ctx1, align 8, !dbg !2632, !tbaa !2339
  %2 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !2632, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2632
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2632, !tbaa !2134
  store ptr %3, ptr %ctx, align 8, !dbg !2633, !tbaa !2134
  %4 = load ptr, ptr %ctx, align 8, !dbg !2634, !tbaa !2134
  %cmp = icmp eq ptr %4, null, !dbg !2636
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2637

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !2638, !tbaa !2134
  %done = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %5, i32 0, i32 15, !dbg !2639
  %bf.load = load i16, ptr %done, align 8, !dbg !2639
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !2639
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2639
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2639
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2638
  br i1 %tobool, label %if.then, label %lor.lhs.false2, !dbg !2640

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2641, !tbaa !2134
  %header_only = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 48, !dbg !2642
  %bf.load3 = load i128, ptr %header_only, align 8, !dbg !2642
  %bf.lshr4 = lshr i128 %bf.load3, 72, !dbg !2642
  %bf.clear5 = and i128 %bf.lshr4, 1, !dbg !2642
  %bf.cast6 = trunc i128 %bf.clear5 to i32, !dbg !2642
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !2641
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2643

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %7 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2644, !tbaa !2134
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2646, !tbaa !2134
  %9 = load ptr, ptr %in.addr, align 8, !dbg !2647, !tbaa !2134
  %call = call i64 %7(ptr noundef %8, ptr noundef %9), !dbg !2644
  store i64 %call, ptr %retval, align 8, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

if.end:                                           ; preds = %lor.lhs.false2
  %10 = load ptr, ptr %ctx, align 8, !dbg !2649, !tbaa !2134
  %buffering = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %10, i32 0, i32 15, !dbg !2651
  %bf.load8 = load i16, ptr %buffering, align 8, !dbg !2651
  %bf.lshr9 = lshr i16 %bf.load8, 8, !dbg !2651
  %bf.clear10 = and i16 %bf.lshr9, 1, !dbg !2651
  %bf.cast11 = zext i16 %bf.clear10 to i32, !dbg !2651
  %tobool12 = icmp ne i32 %bf.cast11, 0, !dbg !2649
  br i1 %tobool12, label %if.then13, label %if.end22, !dbg !2652

if.then13:                                        ; preds = %if.end
  %11 = load ptr, ptr %in.addr, align 8, !dbg !2653, !tbaa !2134
  %tobool14 = icmp ne ptr %11, null, !dbg !2653
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !2656

if.then15:                                        ; preds = %if.then13
  %12 = load ptr, ptr %ctx, align 8, !dbg !2657, !tbaa !2134
  %13 = load ptr, ptr %in.addr, align 8, !dbg !2659, !tbaa !2134
  %call16 = call i64 @ngx_http_gzip_filter_buffer(ptr noundef %12, ptr noundef %13), !dbg !2660
  switch i64 %call16, label %sw.default [
    i64 0, label %sw.bb
    i64 -4, label %sw.bb17
  ], !dbg !2661

sw.bb:                                            ; preds = %if.then15
  store i64 0, ptr %retval, align 8, !dbg !2662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2662

sw.bb17:                                          ; preds = %if.then15
  store ptr null, ptr %in.addr, align 8, !dbg !2664, !tbaa !2134
  br label %sw.epilog, !dbg !2665

sw.default:                                       ; preds = %if.then15
  br label %failed, !dbg !2666

sw.epilog:                                        ; preds = %sw.bb17
  br label %if.end21, !dbg !2667

if.else:                                          ; preds = %if.then13
  %14 = load ptr, ptr %ctx, align 8, !dbg !2668, !tbaa !2134
  %buffering18 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %14, i32 0, i32 15, !dbg !2670
  %bf.load19 = load i16, ptr %buffering18, align 8, !dbg !2671
  %bf.clear20 = and i16 %bf.load19, -257, !dbg !2671
  %bf.set = or i16 %bf.clear20, 0, !dbg !2671
  store i16 %bf.set, ptr %buffering18, align 8, !dbg !2671
  br label %if.end21

if.end21:                                         ; preds = %if.else, %sw.epilog
  br label %if.end22, !dbg !2672

if.end22:                                         ; preds = %if.end21, %if.end
  %15 = load ptr, ptr %ctx, align 8, !dbg !2673, !tbaa !2134
  %preallocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %15, i32 0, i32 10, !dbg !2675
  %16 = load ptr, ptr %preallocated, align 8, !dbg !2675, !tbaa !2676
  %cmp23 = icmp eq ptr %16, null, !dbg !2677
  br i1 %cmp23, label %if.then24, label %if.end29, !dbg !2678

if.then24:                                        ; preds = %if.end22
  %17 = load ptr, ptr %r.addr, align 8, !dbg !2679, !tbaa !2134
  %18 = load ptr, ptr %ctx, align 8, !dbg !2682, !tbaa !2134
  %call25 = call i64 @ngx_http_gzip_filter_deflate_start(ptr noundef %17, ptr noundef %18), !dbg !2683
  %cmp26 = icmp ne i64 %call25, 0, !dbg !2684
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !2685

if.then27:                                        ; preds = %if.then24
  br label %failed, !dbg !2686

if.end28:                                         ; preds = %if.then24
  br label %if.end29, !dbg !2688

if.end29:                                         ; preds = %if.end28, %if.end22
  %19 = load ptr, ptr %in.addr, align 8, !dbg !2689, !tbaa !2134
  %tobool30 = icmp ne ptr %19, null, !dbg !2689
  br i1 %tobool30, label %if.then31, label %if.end42, !dbg !2691

if.then31:                                        ; preds = %if.end29
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2692, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 11, !dbg !2695
  %21 = load ptr, ptr %pool, align 8, !dbg !2695, !tbaa !2373
  %22 = load ptr, ptr %ctx, align 8, !dbg !2696, !tbaa !2134
  %in32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %22, i32 0, i32 0, !dbg !2697
  %23 = load ptr, ptr %in.addr, align 8, !dbg !2698, !tbaa !2134
  %call33 = call i64 @ngx_chain_add_copy(ptr noundef %21, ptr noundef %in32, ptr noundef %23), !dbg !2699
  %cmp34 = icmp ne i64 %call33, 0, !dbg !2700
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !2701

if.then35:                                        ; preds = %if.then31
  br label %failed, !dbg !2702

if.end36:                                         ; preds = %if.then31
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2704, !tbaa !2134
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %24, i32 0, i32 1, !dbg !2705
  %25 = load ptr, ptr %connection, align 8, !dbg !2705, !tbaa !2706
  %buffered = getelementptr inbounds %struct.ngx_connection_s, ptr %25, i32 0, i32 26, !dbg !2707
  %bf.load37 = load i32, ptr %buffered, align 8, !dbg !2708
  %bf.clear38 = and i32 %bf.load37, 255, !dbg !2708
  %or = or i32 %bf.clear38, 32, !dbg !2708
  %bf.load39 = load i32, ptr %buffered, align 8, !dbg !2708
  %bf.value = and i32 %or, 255, !dbg !2708
  %bf.clear40 = and i32 %bf.load39, -256, !dbg !2708
  %bf.set41 = or i32 %bf.clear40, %bf.value, !dbg !2708
  store i32 %bf.set41, ptr %buffered, align 8, !dbg !2708
  br label %if.end42, !dbg !2709

if.end42:                                         ; preds = %if.end36, %if.end29
  %26 = load ptr, ptr %ctx, align 8, !dbg !2710, !tbaa !2134
  %nomem = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %26, i32 0, i32 15, !dbg !2712
  %bf.load43 = load i16, ptr %nomem, align 8, !dbg !2712
  %bf.lshr44 = lshr i16 %bf.load43, 6, !dbg !2712
  %bf.clear45 = and i16 %bf.lshr44, 1, !dbg !2712
  %bf.cast46 = zext i16 %bf.clear45 to i32, !dbg !2712
  %tobool47 = icmp ne i32 %bf.cast46, 0, !dbg !2710
  br i1 %tobool47, label %if.then48, label %if.else58, !dbg !2713

if.then48:                                        ; preds = %if.end42
  %27 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2714, !tbaa !2134
  %28 = load ptr, ptr %r.addr, align 8, !dbg !2717, !tbaa !2134
  %call49 = call i64 %27(ptr noundef %28, ptr noundef null), !dbg !2714
  %cmp50 = icmp eq i64 %call49, -1, !dbg !2718
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !2719

if.then51:                                        ; preds = %if.then48
  br label %failed, !dbg !2720

if.end52:                                         ; preds = %if.then48
  store ptr null, ptr %cl, align 8, !dbg !2722, !tbaa !2134
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2723, !tbaa !2134
  %pool53 = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 11, !dbg !2724
  %30 = load ptr, ptr %pool53, align 8, !dbg !2724, !tbaa !2373
  %31 = load ptr, ptr %ctx, align 8, !dbg !2725, !tbaa !2134
  %free = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %31, i32 0, i32 1, !dbg !2726
  %32 = load ptr, ptr %ctx, align 8, !dbg !2727, !tbaa !2134
  %busy = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 2, !dbg !2728
  call void @ngx_chain_update_chains(ptr noundef %30, ptr noundef %free, ptr noundef %busy, ptr noundef %cl, ptr noundef @ngx_http_gzip_filter_module), !dbg !2729
  %33 = load ptr, ptr %ctx, align 8, !dbg !2730, !tbaa !2134
  %nomem54 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %33, i32 0, i32 15, !dbg !2731
  %bf.load55 = load i16, ptr %nomem54, align 8, !dbg !2732
  %bf.clear56 = and i16 %bf.load55, -65, !dbg !2732
  %bf.set57 = or i16 %bf.clear56, 0, !dbg !2732
  store i16 %bf.set57, ptr %nomem54, align 8, !dbg !2732
  store i64 0, ptr %flush, align 8, !dbg !2733, !tbaa !2276
  br label %if.end61, !dbg !2734

if.else58:                                        ; preds = %if.end42
  %34 = load ptr, ptr %ctx, align 8, !dbg !2735, !tbaa !2134
  %busy59 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %34, i32 0, i32 2, !dbg !2737
  %35 = load ptr, ptr %busy59, align 8, !dbg !2737, !tbaa !2738
  %tobool60 = icmp ne ptr %35, null, !dbg !2735
  %36 = zext i1 %tobool60 to i64, !dbg !2735
  %cond = select i1 %tobool60, i32 1, i32 0, !dbg !2735
  %conv = sext i32 %cond to i64, !dbg !2735
  store i64 %conv, ptr %flush, align 8, !dbg !2739, !tbaa !2276
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end52
  br label %for.cond, !dbg !2740

for.cond:                                         ; preds = %if.end138, %if.end61
  br label %for.cond62, !dbg !2741

for.cond62:                                       ; preds = %if.end92, %if.then71, %for.cond
  %37 = load ptr, ptr %r.addr, align 8, !dbg !2745, !tbaa !2134
  %38 = load ptr, ptr %ctx, align 8, !dbg !2749, !tbaa !2134
  %call63 = call i64 @ngx_http_gzip_filter_add_data(ptr noundef %37, ptr noundef %38), !dbg !2750
  %conv64 = trunc i64 %call63 to i32, !dbg !2750
  store i32 %conv64, ptr %rc, align 4, !dbg !2751, !tbaa !2752
  %39 = load i32, ptr %rc, align 4, !dbg !2753, !tbaa !2752
  %cmp65 = icmp eq i32 %39, -5, !dbg !2755
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2756

if.then67:                                        ; preds = %for.cond62
  br label %for.end, !dbg !2757

if.end68:                                         ; preds = %for.cond62
  %40 = load i32, ptr %rc, align 4, !dbg !2759, !tbaa !2752
  %cmp69 = icmp eq i32 %40, -2, !dbg !2761
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !2762

if.then71:                                        ; preds = %if.end68
  br label %for.cond62, !dbg !2763, !llvm.loop !2765

if.end72:                                         ; preds = %if.end68
  %41 = load ptr, ptr %r.addr, align 8, !dbg !2768, !tbaa !2134
  %42 = load ptr, ptr %ctx, align 8, !dbg !2769, !tbaa !2134
  %call73 = call i64 @ngx_http_gzip_filter_get_buf(ptr noundef %41, ptr noundef %42), !dbg !2770
  %conv74 = trunc i64 %call73 to i32, !dbg !2770
  store i32 %conv74, ptr %rc, align 4, !dbg !2771, !tbaa !2752
  %43 = load i32, ptr %rc, align 4, !dbg !2772, !tbaa !2752
  %cmp75 = icmp eq i32 %43, -5, !dbg !2774
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !2775

if.then77:                                        ; preds = %if.end72
  br label %for.end, !dbg !2776

if.end78:                                         ; preds = %if.end72
  %44 = load i32, ptr %rc, align 4, !dbg !2778, !tbaa !2752
  %cmp79 = icmp eq i32 %44, -1, !dbg !2780
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !2781

if.then81:                                        ; preds = %if.end78
  br label %failed, !dbg !2782

if.end82:                                         ; preds = %if.end78
  %45 = load ptr, ptr %r.addr, align 8, !dbg !2784, !tbaa !2134
  %46 = load ptr, ptr %ctx, align 8, !dbg !2785, !tbaa !2134
  %call83 = call i64 @ngx_http_gzip_filter_deflate(ptr noundef %45, ptr noundef %46), !dbg !2786
  %conv84 = trunc i64 %call83 to i32, !dbg !2786
  store i32 %conv84, ptr %rc, align 4, !dbg !2787, !tbaa !2752
  %47 = load i32, ptr %rc, align 4, !dbg !2788, !tbaa !2752
  %cmp85 = icmp eq i32 %47, 0, !dbg !2790
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !2791

if.then87:                                        ; preds = %if.end82
  br label %for.end, !dbg !2792

if.end88:                                         ; preds = %if.end82
  %48 = load i32, ptr %rc, align 4, !dbg !2794, !tbaa !2752
  %cmp89 = icmp eq i32 %48, -1, !dbg !2796
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !2797

if.then91:                                        ; preds = %if.end88
  br label %failed, !dbg !2798

if.end92:                                         ; preds = %if.end88
  br label %for.cond62, !dbg !2800, !llvm.loop !2765

for.end:                                          ; preds = %if.then87, %if.then77, %if.then67
  %49 = load ptr, ptr %ctx, align 8, !dbg !2801, !tbaa !2134
  %out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %49, i32 0, i32 3, !dbg !2803
  %50 = load ptr, ptr %out, align 8, !dbg !2803, !tbaa !2804
  %cmp93 = icmp eq ptr %50, null, !dbg !2805
  br i1 %cmp93, label %land.lhs.true, label %if.end101, !dbg !2806

land.lhs.true:                                    ; preds = %for.end
  %51 = load i64, ptr %flush, align 8, !dbg !2807, !tbaa !2276
  %tobool95 = icmp ne i64 %51, 0, !dbg !2807
  br i1 %tobool95, label %if.end101, label %if.then96, !dbg !2808

if.then96:                                        ; preds = %land.lhs.true
  %52 = load ptr, ptr %r.addr, align 8, !dbg !2809, !tbaa !2134
  %53 = load ptr, ptr %ctx, align 8, !dbg !2811, !tbaa !2134
  call void @ngx_http_gzip_filter_free_copy_buf(ptr noundef %52, ptr noundef %53), !dbg !2812
  %54 = load ptr, ptr %ctx, align 8, !dbg !2813, !tbaa !2134
  %busy97 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %54, i32 0, i32 2, !dbg !2814
  %55 = load ptr, ptr %busy97, align 8, !dbg !2814, !tbaa !2738
  %tobool98 = icmp ne ptr %55, null, !dbg !2813
  %56 = zext i1 %tobool98 to i64, !dbg !2813
  %cond99 = select i1 %tobool98, i32 -2, i32 0, !dbg !2813
  %conv100 = sext i32 %cond99 to i64, !dbg !2813
  store i64 %conv100, ptr %retval, align 8, !dbg !2815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2815

if.end101:                                        ; preds = %land.lhs.true, %for.end
  %57 = load ptr, ptr %ctx, align 8, !dbg !2816, !tbaa !2134
  %gzheader = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %57, i32 0, i32 15, !dbg !2818
  %bf.load102 = load i16, ptr %gzheader, align 8, !dbg !2818
  %bf.lshr103 = lshr i16 %bf.load102, 7, !dbg !2818
  %bf.clear104 = and i16 %bf.lshr103, 1, !dbg !2818
  %bf.cast105 = zext i16 %bf.clear104 to i32, !dbg !2818
  %tobool106 = icmp ne i32 %bf.cast105, 0, !dbg !2816
  br i1 %tobool106, label %if.end113, label %if.then107, !dbg !2819

if.then107:                                       ; preds = %if.end101
  %58 = load ptr, ptr %r.addr, align 8, !dbg !2820, !tbaa !2134
  %59 = load ptr, ptr %ctx, align 8, !dbg !2823, !tbaa !2134
  %call108 = call i64 @ngx_http_gzip_filter_gzheader(ptr noundef %58, ptr noundef %59), !dbg !2824
  %cmp109 = icmp ne i64 %call108, 0, !dbg !2825
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !2826

if.then111:                                       ; preds = %if.then107
  br label %failed, !dbg !2827

if.end112:                                        ; preds = %if.then107
  br label %if.end113, !dbg !2829

if.end113:                                        ; preds = %if.end112, %if.end101
  %60 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2830, !tbaa !2134
  %61 = load ptr, ptr %r.addr, align 8, !dbg !2831, !tbaa !2134
  %62 = load ptr, ptr %ctx, align 8, !dbg !2832, !tbaa !2134
  %out114 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %62, i32 0, i32 3, !dbg !2833
  %63 = load ptr, ptr %out114, align 8, !dbg !2833, !tbaa !2804
  %call115 = call i64 %60(ptr noundef %61, ptr noundef %63), !dbg !2830
  %conv116 = trunc i64 %call115 to i32, !dbg !2830
  store i32 %conv116, ptr %rc, align 4, !dbg !2834, !tbaa !2752
  %64 = load i32, ptr %rc, align 4, !dbg !2835, !tbaa !2752
  %cmp117 = icmp eq i32 %64, -1, !dbg !2837
  br i1 %cmp117, label %if.then119, label %if.end120, !dbg !2838

if.then119:                                       ; preds = %if.end113
  br label %failed, !dbg !2839

if.end120:                                        ; preds = %if.end113
  %65 = load ptr, ptr %r.addr, align 8, !dbg !2841, !tbaa !2134
  %66 = load ptr, ptr %ctx, align 8, !dbg !2842, !tbaa !2134
  call void @ngx_http_gzip_filter_free_copy_buf(ptr noundef %65, ptr noundef %66), !dbg !2843
  %67 = load ptr, ptr %r.addr, align 8, !dbg !2844, !tbaa !2134
  %pool121 = getelementptr inbounds %struct.ngx_http_request_s, ptr %67, i32 0, i32 11, !dbg !2845
  %68 = load ptr, ptr %pool121, align 8, !dbg !2845, !tbaa !2373
  %69 = load ptr, ptr %ctx, align 8, !dbg !2846, !tbaa !2134
  %free122 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %69, i32 0, i32 1, !dbg !2847
  %70 = load ptr, ptr %ctx, align 8, !dbg !2848, !tbaa !2134
  %busy123 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %70, i32 0, i32 2, !dbg !2849
  %71 = load ptr, ptr %ctx, align 8, !dbg !2850, !tbaa !2134
  %out124 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %71, i32 0, i32 3, !dbg !2851
  call void @ngx_chain_update_chains(ptr noundef %68, ptr noundef %free122, ptr noundef %busy123, ptr noundef %out124, ptr noundef @ngx_http_gzip_filter_module), !dbg !2852
  %72 = load ptr, ptr %ctx, align 8, !dbg !2853, !tbaa !2134
  %out125 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %72, i32 0, i32 3, !dbg !2854
  %73 = load ptr, ptr %ctx, align 8, !dbg !2855, !tbaa !2134
  %last_out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %73, i32 0, i32 4, !dbg !2856
  store ptr %out125, ptr %last_out, align 8, !dbg !2857, !tbaa !2858
  %74 = load ptr, ptr %ctx, align 8, !dbg !2859, !tbaa !2134
  %nomem126 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %74, i32 0, i32 15, !dbg !2860
  %bf.load127 = load i16, ptr %nomem126, align 8, !dbg !2861
  %bf.clear128 = and i16 %bf.load127, -65, !dbg !2861
  %bf.set129 = or i16 %bf.clear128, 0, !dbg !2861
  store i16 %bf.set129, ptr %nomem126, align 8, !dbg !2861
  store i64 0, ptr %flush, align 8, !dbg !2862, !tbaa !2276
  %75 = load ptr, ptr %ctx, align 8, !dbg !2863, !tbaa !2134
  %done130 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %75, i32 0, i32 15, !dbg !2865
  %bf.load131 = load i16, ptr %done130, align 8, !dbg !2865
  %bf.lshr132 = lshr i16 %bf.load131, 5, !dbg !2865
  %bf.clear133 = and i16 %bf.lshr132, 1, !dbg !2865
  %bf.cast134 = zext i16 %bf.clear133 to i32, !dbg !2865
  %tobool135 = icmp ne i32 %bf.cast134, 0, !dbg !2863
  br i1 %tobool135, label %if.then136, label %if.end138, !dbg !2866

if.then136:                                       ; preds = %if.end120
  %76 = load i32, ptr %rc, align 4, !dbg !2867, !tbaa !2752
  %conv137 = sext i32 %76 to i64, !dbg !2867
  store i64 %conv137, ptr %retval, align 8, !dbg !2869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2869

if.end138:                                        ; preds = %if.end120
  br label %for.cond, !dbg !2870, !llvm.loop !2871

failed:                                           ; preds = %if.then119, %if.then111, %if.then91, %if.then81, %if.then51, %if.then35, %if.then27, %sw.default
  tail call void @llvm.dbg.label(metadata !2621), !dbg !2874
  %77 = load ptr, ptr %ctx, align 8, !dbg !2875, !tbaa !2134
  %done139 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %77, i32 0, i32 15, !dbg !2876
  %bf.load140 = load i16, ptr %done139, align 8, !dbg !2877
  %bf.clear141 = and i16 %bf.load140, -33, !dbg !2877
  %bf.set142 = or i16 %bf.clear141, 32, !dbg !2877
  store i16 %bf.set142, ptr %done139, align 8, !dbg !2877
  %78 = load ptr, ptr %ctx, align 8, !dbg !2878, !tbaa !2134
  %preallocated143 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %78, i32 0, i32 10, !dbg !2880
  %79 = load ptr, ptr %preallocated143, align 8, !dbg !2880, !tbaa !2676
  %tobool144 = icmp ne ptr %79, null, !dbg !2878
  br i1 %tobool144, label %if.then145, label %if.end150, !dbg !2881

if.then145:                                       ; preds = %failed
  %80 = load ptr, ptr %ctx, align 8, !dbg !2882, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %80, i32 0, i32 19, !dbg !2884
  %call146 = call i32 @deflateEnd(ptr noundef %zstream), !dbg !2885
  %81 = load ptr, ptr %r.addr, align 8, !dbg !2886, !tbaa !2134
  %pool147 = getelementptr inbounds %struct.ngx_http_request_s, ptr %81, i32 0, i32 11, !dbg !2887
  %82 = load ptr, ptr %pool147, align 8, !dbg !2887, !tbaa !2373
  %83 = load ptr, ptr %ctx, align 8, !dbg !2888, !tbaa !2134
  %preallocated148 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %83, i32 0, i32 10, !dbg !2889
  %84 = load ptr, ptr %preallocated148, align 8, !dbg !2889, !tbaa !2676
  %call149 = call i64 @ngx_pfree(ptr noundef %82, ptr noundef %84), !dbg !2890
  br label %if.end150, !dbg !2891

if.end150:                                        ; preds = %if.then145, %failed
  %85 = load ptr, ptr %r.addr, align 8, !dbg !2892, !tbaa !2134
  %86 = load ptr, ptr %ctx, align 8, !dbg !2893, !tbaa !2134
  call void @ngx_http_gzip_filter_free_copy_buf(ptr noundef %85, ptr noundef %86), !dbg !2894
  store i64 -1, ptr %retval, align 8, !dbg !2895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2895

cleanup:                                          ; preds = %if.end150, %if.then136, %if.then96, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 8, ptr %flush) #5, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !2896
  %87 = load i64, ptr %retval, align 8, !dbg !2896
  ret i64 %87, !dbg !2896
}

declare !dbg !2897 ptr @ngx_http_test_content_type(ptr noundef, ptr noundef) #2

declare !dbg !2901 i64 @ngx_http_gzip_ok(ptr noundef) #2

declare !dbg !2902 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @ngx_http_gzip_filter_memory(ptr noundef %r, ptr noundef %ctx) #0 !dbg !2903 {
entry:
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %wbits = alloca i32, align 4
  %memlevel = alloca i32, align 4
  %conf = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2907, metadata !DIExpression()), !dbg !2912
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2908, metadata !DIExpression()), !dbg !2913
  call void @llvm.lifetime.start.p0(i64 4, ptr %wbits) #5, !dbg !2914
  tail call void @llvm.dbg.declare(metadata ptr %wbits, metadata !2909, metadata !DIExpression()), !dbg !2915
  call void @llvm.lifetime.start.p0(i64 4, ptr %memlevel) #5, !dbg !2914
  tail call void @llvm.dbg.declare(metadata ptr %memlevel, metadata !2910, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !2917
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2911, metadata !DIExpression()), !dbg !2918
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2919, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !2919
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !2919, !tbaa !2455
  %2 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !2919, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2919
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2919, !tbaa !2134
  store ptr %3, ptr %conf, align 8, !dbg !2920, !tbaa !2134
  %4 = load ptr, ptr %conf, align 8, !dbg !2921, !tbaa !2134
  %wbits1 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %4, i32 0, i32 6, !dbg !2922
  %5 = load i64, ptr %wbits1, align 8, !dbg !2922, !tbaa !2225
  %conv = trunc i64 %5 to i32, !dbg !2921
  store i32 %conv, ptr %wbits, align 4, !dbg !2923, !tbaa !2752
  %6 = load ptr, ptr %conf, align 8, !dbg !2924, !tbaa !2134
  %memlevel2 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %6, i32 0, i32 7, !dbg !2925
  %7 = load i64, ptr %memlevel2, align 8, !dbg !2925, !tbaa !2229
  %conv3 = trunc i64 %7 to i32, !dbg !2924
  store i32 %conv3, ptr %memlevel, align 4, !dbg !2926, !tbaa !2752
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2927, !tbaa !2134
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 14, !dbg !2929
  %content_length_n = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 24, !dbg !2930
  %9 = load i64, ptr %content_length_n, align 8, !dbg !2930, !tbaa !2493
  %cmp = icmp sgt i64 %9, 0, !dbg !2931
  br i1 %cmp, label %if.then, label %if.end15, !dbg !2932

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !2933

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2935, !tbaa !2134
  %headers_out5 = getelementptr inbounds %struct.ngx_http_request_s, ptr %10, i32 0, i32 14, !dbg !2936
  %content_length_n6 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out5, i32 0, i32 24, !dbg !2937
  %11 = load i64, ptr %content_length_n6, align 8, !dbg !2937, !tbaa !2493
  %12 = load i32, ptr %wbits, align 4, !dbg !2938, !tbaa !2752
  %sub = sub nsw i32 %12, 1, !dbg !2939
  %shl = shl i32 1, %sub, !dbg !2940
  %sub7 = sub nsw i32 %shl, 262, !dbg !2941
  %conv8 = sext i32 %sub7 to i64, !dbg !2942
  %cmp9 = icmp slt i64 %11, %conv8, !dbg !2943
  br i1 %cmp9, label %while.body, label %while.end, !dbg !2933

while.body:                                       ; preds = %while.cond
  %13 = load i32, ptr %wbits, align 4, !dbg !2944, !tbaa !2752
  %dec = add nsw i32 %13, -1, !dbg !2944
  store i32 %dec, ptr %wbits, align 4, !dbg !2944, !tbaa !2752
  %14 = load i32, ptr %memlevel, align 4, !dbg !2946, !tbaa !2752
  %dec11 = add nsw i32 %14, -1, !dbg !2946
  store i32 %dec11, ptr %memlevel, align 4, !dbg !2946, !tbaa !2752
  br label %while.cond, !dbg !2933, !llvm.loop !2947

while.end:                                        ; preds = %while.cond
  %15 = load i32, ptr %memlevel, align 4, !dbg !2950, !tbaa !2752
  %cmp12 = icmp slt i32 %15, 1, !dbg !2952
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !2953

if.then14:                                        ; preds = %while.end
  store i32 1, ptr %memlevel, align 4, !dbg !2954, !tbaa !2752
  br label %if.end, !dbg !2956

if.end:                                           ; preds = %if.then14, %while.end
  br label %if.end15, !dbg !2957

if.end15:                                         ; preds = %if.end, %entry
  %16 = load i32, ptr %wbits, align 4, !dbg !2958, !tbaa !2752
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !2959, !tbaa !2134
  %wbits16 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %17, i32 0, i32 13, !dbg !2960
  store i32 %16, ptr %wbits16, align 8, !dbg !2961, !tbaa !2962
  %18 = load i32, ptr %memlevel, align 4, !dbg !2963, !tbaa !2752
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !2964, !tbaa !2134
  %memlevel17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %19, i32 0, i32 14, !dbg !2965
  store i32 %18, ptr %memlevel17, align 4, !dbg !2966, !tbaa !2967
  %20 = load i64, ptr @ngx_http_gzip_assume_intel, align 8, !dbg !2968, !tbaa !2276
  %tobool = icmp ne i64 %20, 0, !dbg !2968
  br i1 %tobool, label %if.else, label %if.then18, !dbg !2970

if.then18:                                        ; preds = %if.end15
  %21 = load i32, ptr %wbits, align 4, !dbg !2971, !tbaa !2752
  %add = add nsw i32 %21, 2, !dbg !2973
  %shl19 = shl i32 1, %add, !dbg !2974
  %add20 = add nsw i32 8192, %shl19, !dbg !2975
  %22 = load i32, ptr %memlevel, align 4, !dbg !2976, !tbaa !2752
  %add21 = add nsw i32 %22, 9, !dbg !2977
  %shl22 = shl i32 1, %add21, !dbg !2978
  %add23 = add nsw i32 %add20, %shl22, !dbg !2979
  %conv24 = sext i32 %add23 to i64, !dbg !2980
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !2981, !tbaa !2134
  %allocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 12, !dbg !2982
  store i64 %conv24, ptr %allocated, align 8, !dbg !2983, !tbaa !2984
  br label %if.end48, !dbg !2985

if.else:                                          ; preds = %if.end15
  %24 = load ptr, ptr %conf, align 8, !dbg !2986, !tbaa !2134
  %level = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %24, i32 0, i32 5, !dbg !2989
  %25 = load i64, ptr %level, align 8, !dbg !2989, !tbaa !2221
  %cmp25 = icmp eq i64 %25, 1, !dbg !2990
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !2991

if.then27:                                        ; preds = %if.else
  %26 = load i32, ptr %wbits, align 4, !dbg !2992, !tbaa !2752
  %cmp28 = icmp slt i32 %26, 13, !dbg !2992
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !2992

cond.true:                                        ; preds = %if.then27
  br label %cond.end, !dbg !2992

cond.false:                                       ; preds = %if.then27
  %27 = load i32, ptr %wbits, align 4, !dbg !2992, !tbaa !2752
  br label %cond.end, !dbg !2992

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 13, %cond.true ], [ %27, %cond.false ], !dbg !2992
  store i32 %cond, ptr %wbits, align 4, !dbg !2994, !tbaa !2752
  br label %if.end30, !dbg !2995

if.end30:                                         ; preds = %cond.end, %if.else
  %28 = load i32, ptr %wbits, align 4, !dbg !2996, !tbaa !2752
  %add31 = add nsw i32 %28, 2, !dbg !2997
  %shl32 = shl i32 1, %add31, !dbg !2998
  %add33 = add nsw i32 8208, %shl32, !dbg !2999
  %29 = load i32, ptr %memlevel, align 4, !dbg !3000, !tbaa !2752
  %cmp34 = icmp slt i32 %29, 8, !dbg !3000
  br i1 %cmp34, label %cond.true36, label %cond.false37, !dbg !3000

cond.true36:                                      ; preds = %if.end30
  br label %cond.end38, !dbg !3000

cond.false37:                                     ; preds = %if.end30
  %30 = load i32, ptr %memlevel, align 4, !dbg !3000, !tbaa !2752
  br label %cond.end38, !dbg !3000

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ 8, %cond.true36 ], [ %30, %cond.false37 ], !dbg !3000
  %add40 = add nsw i32 %cond39, 8, !dbg !3001
  %shl41 = shl i32 1, %add40, !dbg !3002
  %add42 = add nsw i32 %add33, %shl41, !dbg !3003
  %31 = load i32, ptr %memlevel, align 4, !dbg !3004, !tbaa !2752
  %add43 = add nsw i32 %31, 8, !dbg !3005
  %shl44 = shl i32 1, %add43, !dbg !3006
  %add45 = add nsw i32 %add42, %shl44, !dbg !3007
  %conv46 = sext i32 %add45 to i64, !dbg !3008
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !3009, !tbaa !2134
  %allocated47 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 12, !dbg !3010
  store i64 %conv46, ptr %allocated47, align 8, !dbg !3011, !tbaa !2984
  %33 = load ptr, ptr %ctx.addr, align 8, !dbg !3012, !tbaa !2134
  %intel = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %33, i32 0, i32 15, !dbg !3013
  %bf.load = load i16, ptr %intel, align 8, !dbg !3014
  %bf.clear = and i16 %bf.load, -513, !dbg !3014
  %bf.set = or i16 %bf.clear, 512, !dbg !3014
  store i16 %bf.set, ptr %intel, align 8, !dbg !3014
  br label %if.end48

if.end48:                                         ; preds = %cond.end38, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 4, ptr %memlevel) #5, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 4, ptr %wbits) #5, !dbg !3015
  ret void, !dbg !3015
}

declare !dbg !3016 ptr @ngx_list_push(ptr noundef) #2

declare !dbg !3020 void @ngx_http_weak_etag(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_buffer(ptr noundef %ctx, ptr noundef %in) #0 !dbg !3021 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %buffered = alloca i64, align 8
  %b = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %r = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3025, metadata !DIExpression()), !dbg !3035
  store ptr %in, ptr %in.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3026, metadata !DIExpression()), !dbg !3036
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5, !dbg !3037
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3027, metadata !DIExpression()), !dbg !3038
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffered) #5, !dbg !3037
  tail call void @llvm.dbg.declare(metadata ptr %buffered, metadata !3028, metadata !DIExpression()), !dbg !3039
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5, !dbg !3040
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3029, metadata !DIExpression()), !dbg !3041
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #5, !dbg !3040
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !3030, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3043
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #5, !dbg !3043
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !3032, metadata !DIExpression()), !dbg !3045
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5, !dbg !3046
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !3033, metadata !DIExpression()), !dbg !3047
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !3048
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !3034, metadata !DIExpression()), !dbg !3049
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3050, !tbaa !2134
  %request = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 20, !dbg !3051
  %1 = load ptr, ptr %request, align 8, !dbg !3051, !tbaa !2557
  store ptr %1, ptr %r, align 8, !dbg !3052, !tbaa !2134
  %2 = load ptr, ptr %r, align 8, !dbg !3053, !tbaa !2134
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %2, i32 0, i32 1, !dbg !3054
  %3 = load ptr, ptr %connection, align 8, !dbg !3054, !tbaa !2706
  %buffered1 = getelementptr inbounds %struct.ngx_connection_s, ptr %3, i32 0, i32 26, !dbg !3055
  %bf.load = load i32, ptr %buffered1, align 8, !dbg !3056
  %bf.clear = and i32 %bf.load, 255, !dbg !3056
  %or = or i32 %bf.clear, 32, !dbg !3056
  %bf.load2 = load i32, ptr %buffered1, align 8, !dbg !3056
  %bf.value = and i32 %or, 255, !dbg !3056
  %bf.clear3 = and i32 %bf.load2, -256, !dbg !3056
  %bf.set = or i32 %bf.clear3, %bf.value, !dbg !3056
  store i32 %bf.set, ptr %buffered1, align 8, !dbg !3056
  store i64 0, ptr %buffered, align 8, !dbg !3057, !tbaa !2276
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !3058, !tbaa !2134
  %in4 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %4, i32 0, i32 0, !dbg !3059
  store ptr %in4, ptr %ll, align 8, !dbg !3060, !tbaa !2134
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !3061, !tbaa !2134
  %in5 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %5, i32 0, i32 0, !dbg !3063
  %6 = load ptr, ptr %in5, align 8, !dbg !3063, !tbaa !3064
  store ptr %6, ptr %cl, align 8, !dbg !3065, !tbaa !2134
  br label %for.cond, !dbg !3066

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %cl, align 8, !dbg !3067, !tbaa !2134
  %tobool = icmp ne ptr %7, null, !dbg !3069
  br i1 %tobool, label %for.body, label %for.end, !dbg !3069

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cl, align 8, !dbg !3070, !tbaa !2134
  %buf6 = getelementptr inbounds %struct.ngx_chain_s, ptr %8, i32 0, i32 0, !dbg !3072
  %9 = load ptr, ptr %buf6, align 8, !dbg !3072, !tbaa !3073
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %9, i32 0, i32 1, !dbg !3075
  %10 = load ptr, ptr %last, align 8, !dbg !3075, !tbaa !3076
  %11 = load ptr, ptr %cl, align 8, !dbg !3078, !tbaa !2134
  %buf7 = getelementptr inbounds %struct.ngx_chain_s, ptr %11, i32 0, i32 0, !dbg !3079
  %12 = load ptr, ptr %buf7, align 8, !dbg !3079, !tbaa !3073
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %12, i32 0, i32 0, !dbg !3080
  %13 = load ptr, ptr %pos, align 8, !dbg !3080, !tbaa !3081
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !3082
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !3082
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3082
  %14 = load i64, ptr %buffered, align 8, !dbg !3083, !tbaa !2276
  %add = add i64 %14, %sub.ptr.sub, !dbg !3083
  store i64 %add, ptr %buffered, align 8, !dbg !3083, !tbaa !2276
  %15 = load ptr, ptr %cl, align 8, !dbg !3084, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %15, i32 0, i32 1, !dbg !3085
  store ptr %next, ptr %ll, align 8, !dbg !3086, !tbaa !2134
  br label %for.inc, !dbg !3087

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %cl, align 8, !dbg !3088, !tbaa !2134
  %next8 = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 1, !dbg !3089
  %17 = load ptr, ptr %next8, align 8, !dbg !3089, !tbaa !3090
  store ptr %17, ptr %cl, align 8, !dbg !3091, !tbaa !2134
  br label %for.cond, !dbg !3092, !llvm.loop !3093

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %r, align 8, !dbg !3095, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 5, !dbg !3095
  %19 = load ptr, ptr %loc_conf, align 8, !dbg !3095, !tbaa !2455
  %20 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !3095, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !3095
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !3095, !tbaa !2134
  store ptr %21, ptr %conf, align 8, !dbg !3096, !tbaa !2134
  br label %while.cond, !dbg !3097

while.cond:                                       ; preds = %if.end62, %for.end
  %22 = load ptr, ptr %in.addr, align 8, !dbg !3098, !tbaa !2134
  %tobool9 = icmp ne ptr %22, null, !dbg !3097
  br i1 %tobool9, label %while.body, label %while.end, !dbg !3097

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %r, align 8, !dbg !3099, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %23, i32 0, i32 11, !dbg !3101
  %24 = load ptr, ptr %pool, align 8, !dbg !3101, !tbaa !2373
  %call = call ptr @ngx_alloc_chain_link(ptr noundef %24), !dbg !3102
  store ptr %call, ptr %cl, align 8, !dbg !3103, !tbaa !2134
  %25 = load ptr, ptr %cl, align 8, !dbg !3104, !tbaa !2134
  %cmp = icmp eq ptr %25, null, !dbg !3106
  br i1 %cmp, label %if.then, label %if.end, !dbg !3107

if.then:                                          ; preds = %while.body
  store i64 -1, ptr %retval, align 8, !dbg !3108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3108

if.end:                                           ; preds = %while.body
  %26 = load ptr, ptr %in.addr, align 8, !dbg !3110, !tbaa !2134
  %buf10 = getelementptr inbounds %struct.ngx_chain_s, ptr %26, i32 0, i32 0, !dbg !3111
  %27 = load ptr, ptr %buf10, align 8, !dbg !3111, !tbaa !3073
  store ptr %27, ptr %b, align 8, !dbg !3112, !tbaa !2134
  %28 = load ptr, ptr %b, align 8, !dbg !3113, !tbaa !2134
  %last11 = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 1, !dbg !3114
  %29 = load ptr, ptr %last11, align 8, !dbg !3114, !tbaa !3076
  %30 = load ptr, ptr %b, align 8, !dbg !3115, !tbaa !2134
  %pos12 = getelementptr inbounds %struct.ngx_buf_s, ptr %30, i32 0, i32 0, !dbg !3116
  %31 = load ptr, ptr %pos12, align 8, !dbg !3116, !tbaa !3081
  %sub.ptr.lhs.cast13 = ptrtoint ptr %29 to i64, !dbg !3117
  %sub.ptr.rhs.cast14 = ptrtoint ptr %31 to i64, !dbg !3117
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !3117
  store i64 %sub.ptr.sub15, ptr %size, align 8, !dbg !3118, !tbaa !2276
  %32 = load i64, ptr %size, align 8, !dbg !3119, !tbaa !2276
  %33 = load i64, ptr %buffered, align 8, !dbg !3120, !tbaa !2276
  %add16 = add i64 %33, %32, !dbg !3120
  store i64 %add16, ptr %buffered, align 8, !dbg !3120, !tbaa !2276
  %34 = load ptr, ptr %b, align 8, !dbg !3121, !tbaa !2134
  %flush = getelementptr inbounds %struct.ngx_buf_s, ptr %34, i32 0, i32 9, !dbg !3123
  %bf.load17 = load i16, ptr %flush, align 8, !dbg !3123
  %bf.lshr = lshr i16 %bf.load17, 5, !dbg !3123
  %bf.clear18 = and i16 %bf.lshr, 1, !dbg !3123
  %bf.cast = zext i16 %bf.clear18 to i32, !dbg !3123
  %tobool19 = icmp ne i32 %bf.cast, 0, !dbg !3121
  br i1 %tobool19, label %if.then27, label %lor.lhs.false, !dbg !3124

lor.lhs.false:                                    ; preds = %if.end
  %35 = load ptr, ptr %b, align 8, !dbg !3125, !tbaa !2134
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 9, !dbg !3126
  %bf.load20 = load i16, ptr %last_buf, align 8, !dbg !3126
  %bf.lshr21 = lshr i16 %bf.load20, 7, !dbg !3126
  %bf.clear22 = and i16 %bf.lshr21, 1, !dbg !3126
  %bf.cast23 = zext i16 %bf.clear22 to i32, !dbg !3126
  %tobool24 = icmp ne i32 %bf.cast23, 0, !dbg !3125
  br i1 %tobool24, label %if.then27, label %lor.lhs.false25, !dbg !3127

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %36 = load i64, ptr %buffered, align 8, !dbg !3128, !tbaa !2276
  %37 = load ptr, ptr %conf, align 8, !dbg !3129, !tbaa !2134
  %postpone_gzipping = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %37, i32 0, i32 4, !dbg !3130
  %38 = load i64, ptr %postpone_gzipping, align 8, !dbg !3130, !tbaa !2217
  %cmp26 = icmp ugt i64 %36, %38, !dbg !3131
  br i1 %cmp26, label %if.then27, label %if.end31, !dbg !3132

if.then27:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %if.end
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !3133, !tbaa !2134
  %buffering = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %39, i32 0, i32 15, !dbg !3135
  %bf.load28 = load i16, ptr %buffering, align 8, !dbg !3136
  %bf.clear29 = and i16 %bf.load28, -257, !dbg !3136
  %bf.set30 = or i16 %bf.clear29, 0, !dbg !3136
  store i16 %bf.set30, ptr %buffering, align 8, !dbg !3136
  br label %if.end31, !dbg !3137

if.end31:                                         ; preds = %if.then27, %lor.lhs.false25
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !3138, !tbaa !2134
  %buffering32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %40, i32 0, i32 15, !dbg !3140
  %bf.load33 = load i16, ptr %buffering32, align 8, !dbg !3140
  %bf.lshr34 = lshr i16 %bf.load33, 8, !dbg !3140
  %bf.clear35 = and i16 %bf.lshr34, 1, !dbg !3140
  %bf.cast36 = zext i16 %bf.clear35 to i32, !dbg !3140
  %tobool37 = icmp ne i32 %bf.cast36, 0, !dbg !3138
  br i1 %tobool37, label %land.lhs.true, label %if.else, !dbg !3141

land.lhs.true:                                    ; preds = %if.end31
  %41 = load i64, ptr %size, align 8, !dbg !3142, !tbaa !2276
  %tobool38 = icmp ne i64 %41, 0, !dbg !3142
  br i1 %tobool38, label %if.then39, label %if.else, !dbg !3143

if.then39:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %r, align 8, !dbg !3144, !tbaa !2134
  %pool40 = getelementptr inbounds %struct.ngx_http_request_s, ptr %42, i32 0, i32 11, !dbg !3146
  %43 = load ptr, ptr %pool40, align 8, !dbg !3146, !tbaa !2373
  %44 = load i64, ptr %size, align 8, !dbg !3147, !tbaa !2276
  %call41 = call ptr @ngx_create_temp_buf(ptr noundef %43, i64 noundef %44), !dbg !3148
  store ptr %call41, ptr %buf, align 8, !dbg !3149, !tbaa !2134
  %45 = load ptr, ptr %buf, align 8, !dbg !3150, !tbaa !2134
  %cmp42 = icmp eq ptr %45, null, !dbg !3152
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3153

if.then43:                                        ; preds = %if.then39
  store i64 -1, ptr %retval, align 8, !dbg !3154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3154

if.end44:                                         ; preds = %if.then39
  %46 = load ptr, ptr %buf, align 8, !dbg !3156, !tbaa !2134
  %pos45 = getelementptr inbounds %struct.ngx_buf_s, ptr %46, i32 0, i32 0, !dbg !3156
  %47 = load ptr, ptr %pos45, align 8, !dbg !3156, !tbaa !3081
  %48 = load ptr, ptr %b, align 8, !dbg !3156, !tbaa !2134
  %pos46 = getelementptr inbounds %struct.ngx_buf_s, ptr %48, i32 0, i32 0, !dbg !3156
  %49 = load ptr, ptr %pos46, align 8, !dbg !3156, !tbaa !3081
  %50 = load i64, ptr %size, align 8, !dbg !3156, !tbaa !2276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %49, i64 %50, i1 false), !dbg !3156
  %51 = load i64, ptr %size, align 8, !dbg !3156, !tbaa !2276
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %51, !dbg !3156
  %52 = load ptr, ptr %buf, align 8, !dbg !3157, !tbaa !2134
  %last47 = getelementptr inbounds %struct.ngx_buf_s, ptr %52, i32 0, i32 1, !dbg !3158
  store ptr %add.ptr, ptr %last47, align 8, !dbg !3159, !tbaa !3076
  %53 = load ptr, ptr %b, align 8, !dbg !3160, !tbaa !2134
  %last48 = getelementptr inbounds %struct.ngx_buf_s, ptr %53, i32 0, i32 1, !dbg !3161
  %54 = load ptr, ptr %last48, align 8, !dbg !3161, !tbaa !3076
  %55 = load ptr, ptr %b, align 8, !dbg !3162, !tbaa !2134
  %pos49 = getelementptr inbounds %struct.ngx_buf_s, ptr %55, i32 0, i32 0, !dbg !3163
  store ptr %54, ptr %pos49, align 8, !dbg !3164, !tbaa !3081
  %56 = load ptr, ptr %b, align 8, !dbg !3165, !tbaa !2134
  %last_buf50 = getelementptr inbounds %struct.ngx_buf_s, ptr %56, i32 0, i32 9, !dbg !3166
  %bf.load51 = load i16, ptr %last_buf50, align 8, !dbg !3166
  %bf.lshr52 = lshr i16 %bf.load51, 7, !dbg !3166
  %bf.clear53 = and i16 %bf.lshr52, 1, !dbg !3166
  %bf.cast54 = zext i16 %bf.clear53 to i32, !dbg !3166
  %57 = load ptr, ptr %buf, align 8, !dbg !3167, !tbaa !2134
  %last_buf55 = getelementptr inbounds %struct.ngx_buf_s, ptr %57, i32 0, i32 9, !dbg !3168
  %58 = trunc i32 %bf.cast54 to i16, !dbg !3169
  %bf.load56 = load i16, ptr %last_buf55, align 8, !dbg !3169
  %bf.value57 = and i16 %58, 1, !dbg !3169
  %bf.shl = shl i16 %bf.value57, 7, !dbg !3169
  %bf.clear58 = and i16 %bf.load56, -129, !dbg !3169
  %bf.set59 = or i16 %bf.clear58, %bf.shl, !dbg !3169
  store i16 %bf.set59, ptr %last_buf55, align 8, !dbg !3169
  %bf.result.cast = zext i16 %bf.value57 to i32, !dbg !3169
  %59 = load ptr, ptr %buf, align 8, !dbg !3170, !tbaa !2134
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %59, i32 0, i32 6, !dbg !3171
  store ptr @ngx_http_gzip_filter_module, ptr %tag, align 8, !dbg !3172, !tbaa !3173
  %60 = load ptr, ptr %buf, align 8, !dbg !3174, !tbaa !2134
  %61 = load ptr, ptr %cl, align 8, !dbg !3175, !tbaa !2134
  %buf60 = getelementptr inbounds %struct.ngx_chain_s, ptr %61, i32 0, i32 0, !dbg !3176
  store ptr %60, ptr %buf60, align 8, !dbg !3177, !tbaa !3073
  br label %if.end62, !dbg !3178

if.else:                                          ; preds = %land.lhs.true, %if.end31
  %62 = load ptr, ptr %b, align 8, !dbg !3179, !tbaa !2134
  %63 = load ptr, ptr %cl, align 8, !dbg !3181, !tbaa !2134
  %buf61 = getelementptr inbounds %struct.ngx_chain_s, ptr %63, i32 0, i32 0, !dbg !3182
  store ptr %62, ptr %buf61, align 8, !dbg !3183, !tbaa !3073
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end44
  %64 = load ptr, ptr %cl, align 8, !dbg !3184, !tbaa !2134
  %65 = load ptr, ptr %ll, align 8, !dbg !3185, !tbaa !2134
  store ptr %64, ptr %65, align 8, !dbg !3186, !tbaa !2134
  %66 = load ptr, ptr %cl, align 8, !dbg !3187, !tbaa !2134
  %next63 = getelementptr inbounds %struct.ngx_chain_s, ptr %66, i32 0, i32 1, !dbg !3188
  store ptr %next63, ptr %ll, align 8, !dbg !3189, !tbaa !2134
  %67 = load ptr, ptr %in.addr, align 8, !dbg !3190, !tbaa !2134
  %next64 = getelementptr inbounds %struct.ngx_chain_s, ptr %67, i32 0, i32 1, !dbg !3191
  %68 = load ptr, ptr %next64, align 8, !dbg !3191, !tbaa !3090
  store ptr %68, ptr %in.addr, align 8, !dbg !3192, !tbaa !2134
  br label %while.cond, !dbg !3097, !llvm.loop !3193

while.end:                                        ; preds = %while.cond
  %69 = load ptr, ptr %ll, align 8, !dbg !3195, !tbaa !2134
  store ptr null, ptr %69, align 8, !dbg !3196, !tbaa !2134
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !3197, !tbaa !2134
  %buffering65 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %70, i32 0, i32 15, !dbg !3198
  %bf.load66 = load i16, ptr %buffering65, align 8, !dbg !3198
  %bf.lshr67 = lshr i16 %bf.load66, 8, !dbg !3198
  %bf.clear68 = and i16 %bf.lshr67, 1, !dbg !3198
  %bf.cast69 = zext i16 %bf.clear68 to i32, !dbg !3198
  %tobool70 = icmp ne i32 %bf.cast69, 0, !dbg !3197
  %71 = zext i1 %tobool70 to i64, !dbg !3197
  %cond = select i1 %tobool70, i32 0, i32 -4, !dbg !3197
  %conv = sext i32 %cond to i64, !dbg !3197
  store i64 %conv, ptr %retval, align 8, !dbg !3199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3199

cleanup:                                          ; preds = %while.end, %if.then43, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffered) #5, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5, !dbg !3200
  %72 = load i64, ptr %retval, align 8, !dbg !3200
  ret i64 %72, !dbg !3200
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_deflate_start(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3201 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3203, metadata !DIExpression()), !dbg !3207
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !3209
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3205, metadata !DIExpression()), !dbg !3210
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !3211
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !3206, metadata !DIExpression()), !dbg !3212
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3213, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !3213
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !3213, !tbaa !2455
  %2 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !3213, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !3213
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !3213, !tbaa !2134
  store ptr %3, ptr %conf, align 8, !dbg !3214, !tbaa !2134
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3215, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %4, i32 0, i32 11, !dbg !3216
  %5 = load ptr, ptr %pool, align 8, !dbg !3216, !tbaa !2373
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !3217, !tbaa !2134
  %allocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %6, i32 0, i32 12, !dbg !3218
  %7 = load i64, ptr %allocated, align 8, !dbg !3218, !tbaa !2984
  %call = call ptr @ngx_palloc(ptr noundef %5, i64 noundef %7), !dbg !3219
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !3220, !tbaa !2134
  %preallocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %8, i32 0, i32 10, !dbg !3221
  store ptr %call, ptr %preallocated, align 8, !dbg !3222, !tbaa !2676
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !3223, !tbaa !2134
  %preallocated1 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %9, i32 0, i32 10, !dbg !3225
  %10 = load ptr, ptr %preallocated1, align 8, !dbg !3225, !tbaa !2676
  %cmp = icmp eq ptr %10, null, !dbg !3226
  br i1 %cmp, label %if.then, label %if.end, !dbg !3227

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !3228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3228

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !3230, !tbaa !2134
  %preallocated2 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %11, i32 0, i32 10, !dbg !3231
  %12 = load ptr, ptr %preallocated2, align 8, !dbg !3231, !tbaa !2676
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !3232, !tbaa !2134
  %free_mem = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %13, i32 0, i32 11, !dbg !3233
  store ptr %12, ptr %free_mem, align 8, !dbg !3234, !tbaa !3235
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !3236, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %14, i32 0, i32 19, !dbg !3237
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %zstream, i32 0, i32 8, !dbg !3238
  store ptr @ngx_http_gzip_filter_alloc, ptr %zalloc, align 8, !dbg !3239, !tbaa !3240
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !3241, !tbaa !2134
  %zstream3 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %15, i32 0, i32 19, !dbg !3242
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %zstream3, i32 0, i32 9, !dbg !3243
  store ptr @ngx_http_gzip_filter_free, ptr %zfree, align 8, !dbg !3244, !tbaa !3245
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !3246, !tbaa !2134
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !3247, !tbaa !2134
  %zstream4 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %17, i32 0, i32 19, !dbg !3248
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %zstream4, i32 0, i32 10, !dbg !3249
  store ptr %16, ptr %opaque, align 8, !dbg !3250, !tbaa !3251
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !3252, !tbaa !2134
  %zstream5 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 19, !dbg !3252
  %19 = load ptr, ptr %conf, align 8, !dbg !3252, !tbaa !2134
  %level = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %19, i32 0, i32 5, !dbg !3252
  %20 = load i64, ptr %level, align 8, !dbg !3252, !tbaa !2221
  %conv = trunc i64 %20 to i32, !dbg !3252
  %21 = load ptr, ptr %ctx.addr, align 8, !dbg !3252, !tbaa !2134
  %wbits = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %21, i32 0, i32 13, !dbg !3252
  %22 = load i32, ptr %wbits, align 8, !dbg !3252, !tbaa !2962
  %sub = sub nsw i32 0, %22, !dbg !3252
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !3252, !tbaa !2134
  %memlevel = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 14, !dbg !3252
  %24 = load i32, ptr %memlevel, align 4, !dbg !3252, !tbaa !2967
  %call6 = call i32 @deflateInit2_(ptr noundef %zstream5, i32 noundef %conv, i32 noundef 8, i32 noundef %sub, i32 noundef %24, i32 noundef 0, ptr noundef @.str.5, i32 noundef 112), !dbg !3252
  store i32 %call6, ptr %rc, align 4, !dbg !3253, !tbaa !2752
  %25 = load i32, ptr %rc, align 4, !dbg !3254, !tbaa !2752
  %cmp7 = icmp ne i32 %25, 0, !dbg !3256
  br i1 %cmp7, label %if.then9, label %if.end16, !dbg !3257

if.then9:                                         ; preds = %if.end
  %26 = load ptr, ptr %r.addr, align 8, !dbg !3258, !tbaa !2134
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %26, i32 0, i32 1, !dbg !3258
  %27 = load ptr, ptr %connection, align 8, !dbg !3258, !tbaa !2706
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %27, i32 0, i32 10, !dbg !3258
  %28 = load ptr, ptr %log, align 8, !dbg !3258, !tbaa !3261
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %28, i32 0, i32 0, !dbg !3258
  %29 = load i64, ptr %log_level, align 8, !dbg !3258, !tbaa !3265
  %cmp10 = icmp uge i64 %29, 2, !dbg !3258
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !3267

if.then12:                                        ; preds = %if.then9
  %30 = load ptr, ptr %r.addr, align 8, !dbg !3258, !tbaa !2134
  %connection13 = getelementptr inbounds %struct.ngx_http_request_s, ptr %30, i32 0, i32 1, !dbg !3258
  %31 = load ptr, ptr %connection13, align 8, !dbg !3258, !tbaa !2706
  %log14 = getelementptr inbounds %struct.ngx_connection_s, ptr %31, i32 0, i32 10, !dbg !3258
  %32 = load ptr, ptr %log14, align 8, !dbg !3258, !tbaa !3261
  %33 = load i32, ptr %rc, align 4, !dbg !3258, !tbaa !2752
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %32, i32 noundef 0, ptr noundef @.str.6, i32 noundef %33), !dbg !3258
  br label %if.end15, !dbg !3258

if.end15:                                         ; preds = %if.then12, %if.then9
  store i64 -1, ptr %retval, align 8, !dbg !3268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3268

if.end16:                                         ; preds = %if.end
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !3269, !tbaa !2134
  %out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %34, i32 0, i32 3, !dbg !3270
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !3271, !tbaa !2134
  %last_out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %35, i32 0, i32 4, !dbg !3272
  store ptr %out, ptr %last_out, align 8, !dbg !3273, !tbaa !2858
  %call17 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !3274
  %conv18 = trunc i64 %call17 to i32, !dbg !3274
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !3275, !tbaa !2134
  %crc32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %36, i32 0, i32 18, !dbg !3276
  store i32 %conv18, ptr %crc32, align 8, !dbg !3277, !tbaa !3278
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !3279, !tbaa !2134
  %flush = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %37, i32 0, i32 15, !dbg !3280
  %bf.load = load i16, ptr %flush, align 8, !dbg !3281
  %bf.clear = and i16 %bf.load, -16, !dbg !3281
  %bf.set = or i16 %bf.clear, 0, !dbg !3281
  store i16 %bf.set, ptr %flush, align 8, !dbg !3281
  store i64 0, ptr %retval, align 8, !dbg !3282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3282

cleanup:                                          ; preds = %if.end16, %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !3283
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !3283
  %38 = load i64, ptr %retval, align 8, !dbg !3283
  ret i64 %38, !dbg !3283
}

declare !dbg !3284 i64 @ngx_chain_add_copy(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3287 void @ngx_chain_update_chains(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_add_data(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3290 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3292, metadata !DIExpression()), !dbg !3295
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3297
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3294, metadata !DIExpression()), !dbg !3298
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3299, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 19, !dbg !3301
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream, i32 0, i32 1, !dbg !3302
  %1 = load i32, ptr %avail_in, align 8, !dbg !3302, !tbaa !3303
  %tobool = icmp ne i32 %1, 0, !dbg !3299
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3304

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !3305, !tbaa !2134
  %flush = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %2, i32 0, i32 15, !dbg !3306
  %bf.load = load i16, ptr %flush, align 8, !dbg !3306
  %bf.clear = and i16 %bf.load, 15, !dbg !3306
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3306
  %cmp = icmp ne i32 %bf.cast, 0, !dbg !3307
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !3308

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3309, !tbaa !2134
  %redo = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %3, i32 0, i32 15, !dbg !3310
  %bf.load2 = load i16, ptr %redo, align 8, !dbg !3310
  %bf.lshr = lshr i16 %bf.load2, 4, !dbg !3310
  %bf.clear3 = and i16 %bf.lshr, 1, !dbg !3310
  %bf.cast4 = zext i16 %bf.clear3 to i32, !dbg !3310
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !3309
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3311

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !3312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3312

if.end:                                           ; preds = %lor.lhs.false1
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !3314, !tbaa !2134
  %in = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %4, i32 0, i32 0, !dbg !3316
  %5 = load ptr, ptr %in, align 8, !dbg !3316, !tbaa !3064
  %cmp6 = icmp eq ptr %5, null, !dbg !3317
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3318

if.then7:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !3319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3319

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !3321, !tbaa !2134
  %copy_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %6, i32 0, i32 6, !dbg !3323
  %7 = load ptr, ptr %copy_buf, align 8, !dbg !3323, !tbaa !3324
  %tobool9 = icmp ne ptr %7, null, !dbg !3321
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !3325

if.then10:                                        ; preds = %if.end8
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !3326, !tbaa !2134
  %copied = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %8, i32 0, i32 5, !dbg !3328
  %9 = load ptr, ptr %copied, align 8, !dbg !3328, !tbaa !3329
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !3330, !tbaa !2134
  %copy_buf11 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %10, i32 0, i32 6, !dbg !3331
  %11 = load ptr, ptr %copy_buf11, align 8, !dbg !3331, !tbaa !3324
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %11, i32 0, i32 1, !dbg !3332
  store ptr %9, ptr %next, align 8, !dbg !3333, !tbaa !3090
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !3334, !tbaa !2134
  %copy_buf12 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %12, i32 0, i32 6, !dbg !3335
  %13 = load ptr, ptr %copy_buf12, align 8, !dbg !3335, !tbaa !3324
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !3336, !tbaa !2134
  %copied13 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %14, i32 0, i32 5, !dbg !3337
  store ptr %13, ptr %copied13, align 8, !dbg !3338, !tbaa !3329
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !3339, !tbaa !2134
  %copy_buf14 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %15, i32 0, i32 6, !dbg !3340
  store ptr null, ptr %copy_buf14, align 8, !dbg !3341, !tbaa !3324
  br label %if.end15, !dbg !3342

if.end15:                                         ; preds = %if.then10, %if.end8
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !3343, !tbaa !2134
  %in16 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %16, i32 0, i32 0, !dbg !3344
  %17 = load ptr, ptr %in16, align 8, !dbg !3344, !tbaa !3064
  store ptr %17, ptr %cl, align 8, !dbg !3345, !tbaa !2134
  %18 = load ptr, ptr %cl, align 8, !dbg !3346, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %18, i32 0, i32 0, !dbg !3347
  %19 = load ptr, ptr %buf, align 8, !dbg !3347, !tbaa !3073
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !3348, !tbaa !2134
  %in_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %20, i32 0, i32 7, !dbg !3349
  store ptr %19, ptr %in_buf, align 8, !dbg !3350, !tbaa !3351
  %21 = load ptr, ptr %cl, align 8, !dbg !3352, !tbaa !2134
  %next17 = getelementptr inbounds %struct.ngx_chain_s, ptr %21, i32 0, i32 1, !dbg !3353
  %22 = load ptr, ptr %next17, align 8, !dbg !3353, !tbaa !3090
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !3354, !tbaa !2134
  %in18 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 0, !dbg !3355
  store ptr %22, ptr %in18, align 8, !dbg !3356, !tbaa !3064
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !3357, !tbaa !2134
  %in_buf19 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %24, i32 0, i32 7, !dbg !3359
  %25 = load ptr, ptr %in_buf19, align 8, !dbg !3359, !tbaa !3351
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %25, i32 0, i32 6, !dbg !3360
  %26 = load ptr, ptr %tag, align 8, !dbg !3360, !tbaa !3173
  %cmp20 = icmp eq ptr %26, @ngx_http_gzip_filter_module, !dbg !3361
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !3362

if.then21:                                        ; preds = %if.end15
  %27 = load ptr, ptr %cl, align 8, !dbg !3363, !tbaa !2134
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !3365, !tbaa !2134
  %copy_buf22 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %28, i32 0, i32 6, !dbg !3366
  store ptr %27, ptr %copy_buf22, align 8, !dbg !3367, !tbaa !3324
  br label %if.end26, !dbg !3368

if.else:                                          ; preds = %if.end15
  %29 = load ptr, ptr %r.addr, align 8, !dbg !3369, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 11, !dbg !3369
  %30 = load ptr, ptr %pool, align 8, !dbg !3369, !tbaa !2373
  %chain = getelementptr inbounds %struct.ngx_pool_s, ptr %30, i32 0, i32 3, !dbg !3369
  %31 = load ptr, ptr %chain, align 8, !dbg !3369, !tbaa !3371
  %32 = load ptr, ptr %cl, align 8, !dbg !3369, !tbaa !2134
  %next23 = getelementptr inbounds %struct.ngx_chain_s, ptr %32, i32 0, i32 1, !dbg !3369
  store ptr %31, ptr %next23, align 8, !dbg !3369, !tbaa !3090
  %33 = load ptr, ptr %cl, align 8, !dbg !3369, !tbaa !2134
  %34 = load ptr, ptr %r.addr, align 8, !dbg !3369, !tbaa !2134
  %pool24 = getelementptr inbounds %struct.ngx_http_request_s, ptr %34, i32 0, i32 11, !dbg !3369
  %35 = load ptr, ptr %pool24, align 8, !dbg !3369, !tbaa !2373
  %chain25 = getelementptr inbounds %struct.ngx_pool_s, ptr %35, i32 0, i32 3, !dbg !3369
  store ptr %33, ptr %chain25, align 8, !dbg !3369, !tbaa !3371
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then21
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !3374, !tbaa !2134
  %in_buf27 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %36, i32 0, i32 7, !dbg !3375
  %37 = load ptr, ptr %in_buf27, align 8, !dbg !3375, !tbaa !3351
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %37, i32 0, i32 0, !dbg !3376
  %38 = load ptr, ptr %pos, align 8, !dbg !3376, !tbaa !3081
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !3377, !tbaa !2134
  %zstream28 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %39, i32 0, i32 19, !dbg !3378
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream28, i32 0, i32 0, !dbg !3379
  store ptr %38, ptr %next_in, align 8, !dbg !3380, !tbaa !3381
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !3382, !tbaa !2134
  %in_buf29 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %40, i32 0, i32 7, !dbg !3383
  %41 = load ptr, ptr %in_buf29, align 8, !dbg !3383, !tbaa !3351
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %41, i32 0, i32 1, !dbg !3384
  %42 = load ptr, ptr %last, align 8, !dbg !3384, !tbaa !3076
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !3385, !tbaa !2134
  %in_buf30 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %43, i32 0, i32 7, !dbg !3386
  %44 = load ptr, ptr %in_buf30, align 8, !dbg !3386, !tbaa !3351
  %pos31 = getelementptr inbounds %struct.ngx_buf_s, ptr %44, i32 0, i32 0, !dbg !3387
  %45 = load ptr, ptr %pos31, align 8, !dbg !3387, !tbaa !3081
  %sub.ptr.lhs.cast = ptrtoint ptr %42 to i64, !dbg !3388
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i64, !dbg !3388
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3388
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !3382
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !3389, !tbaa !2134
  %zstream32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %46, i32 0, i32 19, !dbg !3390
  %avail_in33 = getelementptr inbounds %struct.z_stream_s, ptr %zstream32, i32 0, i32 1, !dbg !3391
  store i32 %conv, ptr %avail_in33, align 8, !dbg !3392, !tbaa !3303
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !3393, !tbaa !2134
  %in_buf34 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %47, i32 0, i32 7, !dbg !3395
  %48 = load ptr, ptr %in_buf34, align 8, !dbg !3395, !tbaa !3351
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %48, i32 0, i32 9, !dbg !3396
  %bf.load35 = load i16, ptr %last_buf, align 8, !dbg !3396
  %bf.lshr36 = lshr i16 %bf.load35, 7, !dbg !3396
  %bf.clear37 = and i16 %bf.lshr36, 1, !dbg !3396
  %bf.cast38 = zext i16 %bf.clear37 to i32, !dbg !3396
  %tobool39 = icmp ne i32 %bf.cast38, 0, !dbg !3393
  br i1 %tobool39, label %if.then40, label %if.else44, !dbg !3397

if.then40:                                        ; preds = %if.end26
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !3398, !tbaa !2134
  %flush41 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %49, i32 0, i32 15, !dbg !3400
  %bf.load42 = load i16, ptr %flush41, align 8, !dbg !3401
  %bf.clear43 = and i16 %bf.load42, -16, !dbg !3401
  %bf.set = or i16 %bf.clear43, 4, !dbg !3401
  store i16 %bf.set, ptr %flush41, align 8, !dbg !3401
  br label %if.end58, !dbg !3402

if.else44:                                        ; preds = %if.end26
  %50 = load ptr, ptr %ctx.addr, align 8, !dbg !3403, !tbaa !2134
  %in_buf45 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %50, i32 0, i32 7, !dbg !3405
  %51 = load ptr, ptr %in_buf45, align 8, !dbg !3405, !tbaa !3351
  %flush46 = getelementptr inbounds %struct.ngx_buf_s, ptr %51, i32 0, i32 9, !dbg !3406
  %bf.load47 = load i16, ptr %flush46, align 8, !dbg !3406
  %bf.lshr48 = lshr i16 %bf.load47, 5, !dbg !3406
  %bf.clear49 = and i16 %bf.lshr48, 1, !dbg !3406
  %bf.cast50 = zext i16 %bf.clear49 to i32, !dbg !3406
  %tobool51 = icmp ne i32 %bf.cast50, 0, !dbg !3403
  br i1 %tobool51, label %if.then52, label %if.end57, !dbg !3407

if.then52:                                        ; preds = %if.else44
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !3408, !tbaa !2134
  %flush53 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %52, i32 0, i32 15, !dbg !3410
  %bf.load54 = load i16, ptr %flush53, align 8, !dbg !3411
  %bf.clear55 = and i16 %bf.load54, -16, !dbg !3411
  %bf.set56 = or i16 %bf.clear55, 2, !dbg !3411
  store i16 %bf.set56, ptr %flush53, align 8, !dbg !3411
  br label %if.end57, !dbg !3412

if.end57:                                         ; preds = %if.then52, %if.else44
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then40
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !3413, !tbaa !2134
  %zstream59 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %53, i32 0, i32 19, !dbg !3415
  %avail_in60 = getelementptr inbounds %struct.z_stream_s, ptr %zstream59, i32 0, i32 1, !dbg !3416
  %54 = load i32, ptr %avail_in60, align 8, !dbg !3416, !tbaa !3303
  %tobool61 = icmp ne i32 %54, 0, !dbg !3413
  br i1 %tobool61, label %if.then62, label %if.else70, !dbg !3417

if.then62:                                        ; preds = %if.end58
  %55 = load ptr, ptr %ctx.addr, align 8, !dbg !3418, !tbaa !2134
  %crc32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %55, i32 0, i32 18, !dbg !3420
  %56 = load i32, ptr %crc32, align 8, !dbg !3420, !tbaa !3278
  %conv63 = zext i32 %56 to i64, !dbg !3418
  %57 = load ptr, ptr %ctx.addr, align 8, !dbg !3421, !tbaa !2134
  %zstream64 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %57, i32 0, i32 19, !dbg !3422
  %next_in65 = getelementptr inbounds %struct.z_stream_s, ptr %zstream64, i32 0, i32 0, !dbg !3423
  %58 = load ptr, ptr %next_in65, align 8, !dbg !3423, !tbaa !3381
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !3424, !tbaa !2134
  %zstream66 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %59, i32 0, i32 19, !dbg !3425
  %avail_in67 = getelementptr inbounds %struct.z_stream_s, ptr %zstream66, i32 0, i32 1, !dbg !3426
  %60 = load i32, ptr %avail_in67, align 8, !dbg !3426, !tbaa !3303
  %call = call i64 @crc32(i64 noundef %conv63, ptr noundef %58, i32 noundef %60), !dbg !3427
  %conv68 = trunc i64 %call to i32, !dbg !3427
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !3428, !tbaa !2134
  %crc3269 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %61, i32 0, i32 18, !dbg !3429
  store i32 %conv68, ptr %crc3269, align 8, !dbg !3430, !tbaa !3278
  br label %if.end79, !dbg !3431

if.else70:                                        ; preds = %if.end58
  %62 = load ptr, ptr %ctx.addr, align 8, !dbg !3432, !tbaa !2134
  %flush71 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %62, i32 0, i32 15, !dbg !3434
  %bf.load72 = load i16, ptr %flush71, align 8, !dbg !3434
  %bf.clear73 = and i16 %bf.load72, 15, !dbg !3434
  %bf.cast74 = zext i16 %bf.clear73 to i32, !dbg !3434
  %cmp75 = icmp eq i32 %bf.cast74, 0, !dbg !3435
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !3436

if.then77:                                        ; preds = %if.else70
  store i64 -2, ptr %retval, align 8, !dbg !3437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3437

if.end78:                                         ; preds = %if.else70
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then62
  store i64 0, ptr %retval, align 8, !dbg !3439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3439

cleanup:                                          ; preds = %if.end79, %if.then77, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3440
  %63 = load i64, ptr %retval, align 8, !dbg !3440
  ret i64 %63, !dbg !3440
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_get_buf(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3441 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3443, metadata !DIExpression()), !dbg !3447
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3444, metadata !DIExpression()), !dbg !3448
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3449
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !3451
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !3446, metadata !DIExpression()), !dbg !3452
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3453, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 19, !dbg !3455
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream, i32 0, i32 4, !dbg !3456
  %1 = load i32, ptr %avail_out, align 8, !dbg !3456, !tbaa !3457
  %tobool = icmp ne i32 %1, 0, !dbg !3453
  br i1 %tobool, label %if.then, label %if.end, !dbg !3458

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3459

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !3461, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %2, i32 0, i32 5, !dbg !3461
  %3 = load ptr, ptr %loc_conf, align 8, !dbg !3461, !tbaa !2455
  %4 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !3461, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4, !dbg !3461
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !3461, !tbaa !2134
  store ptr %5, ptr %conf, align 8, !dbg !3462, !tbaa !2134
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !3463, !tbaa !2134
  %free = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %6, i32 0, i32 1, !dbg !3465
  %7 = load ptr, ptr %free, align 8, !dbg !3465, !tbaa !3466
  %tobool1 = icmp ne ptr %7, null, !dbg !3463
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3467

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !3468, !tbaa !2134
  %free3 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %8, i32 0, i32 1, !dbg !3470
  %9 = load ptr, ptr %free3, align 8, !dbg !3470, !tbaa !3466
  store ptr %9, ptr %cl, align 8, !dbg !3471, !tbaa !2134
  %10 = load ptr, ptr %cl, align 8, !dbg !3472, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %10, i32 0, i32 0, !dbg !3473
  %11 = load ptr, ptr %buf, align 8, !dbg !3473, !tbaa !3073
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !3474, !tbaa !2134
  %out_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %12, i32 0, i32 8, !dbg !3475
  store ptr %11, ptr %out_buf, align 8, !dbg !3476, !tbaa !3477
  %13 = load ptr, ptr %cl, align 8, !dbg !3478, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %13, i32 0, i32 1, !dbg !3479
  %14 = load ptr, ptr %next, align 8, !dbg !3479, !tbaa !3090
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !3480, !tbaa !2134
  %free4 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %15, i32 0, i32 1, !dbg !3481
  store ptr %14, ptr %free4, align 8, !dbg !3482, !tbaa !3466
  %16 = load ptr, ptr %r.addr, align 8, !dbg !3483, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 11, !dbg !3483
  %17 = load ptr, ptr %pool, align 8, !dbg !3483, !tbaa !2373
  %chain = getelementptr inbounds %struct.ngx_pool_s, ptr %17, i32 0, i32 3, !dbg !3483
  %18 = load ptr, ptr %chain, align 8, !dbg !3483, !tbaa !3371
  %19 = load ptr, ptr %cl, align 8, !dbg !3483, !tbaa !2134
  %next5 = getelementptr inbounds %struct.ngx_chain_s, ptr %19, i32 0, i32 1, !dbg !3483
  store ptr %18, ptr %next5, align 8, !dbg !3483, !tbaa !3090
  %20 = load ptr, ptr %cl, align 8, !dbg !3483, !tbaa !2134
  %21 = load ptr, ptr %r.addr, align 8, !dbg !3483, !tbaa !2134
  %pool6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %21, i32 0, i32 11, !dbg !3483
  %22 = load ptr, ptr %pool6, align 8, !dbg !3483, !tbaa !2373
  %chain7 = getelementptr inbounds %struct.ngx_pool_s, ptr %22, i32 0, i32 3, !dbg !3483
  store ptr %20, ptr %chain7, align 8, !dbg !3483, !tbaa !3371
  br label %if.end25, !dbg !3484

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !3485, !tbaa !2134
  %bufs = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 9, !dbg !3487
  %24 = load i64, ptr %bufs, align 8, !dbg !3487, !tbaa !3488
  %25 = load ptr, ptr %conf, align 8, !dbg !3489, !tbaa !2134
  %bufs8 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %25, i32 0, i32 3, !dbg !3490
  %num = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs8, i32 0, i32 0, !dbg !3491
  %26 = load i64, ptr %num, align 8, !dbg !3491, !tbaa !2265
  %cmp = icmp slt i64 %24, %26, !dbg !3492
  br i1 %cmp, label %if.then9, label %if.else20, !dbg !3493

if.then9:                                         ; preds = %if.else
  %27 = load ptr, ptr %r.addr, align 8, !dbg !3494, !tbaa !2134
  %pool10 = getelementptr inbounds %struct.ngx_http_request_s, ptr %27, i32 0, i32 11, !dbg !3496
  %28 = load ptr, ptr %pool10, align 8, !dbg !3496, !tbaa !2373
  %29 = load ptr, ptr %conf, align 8, !dbg !3497, !tbaa !2134
  %bufs11 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %29, i32 0, i32 3, !dbg !3498
  %size = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs11, i32 0, i32 1, !dbg !3499
  %30 = load i64, ptr %size, align 8, !dbg !3499, !tbaa !2273
  %call = call ptr @ngx_create_temp_buf(ptr noundef %28, i64 noundef %30), !dbg !3500
  %31 = load ptr, ptr %ctx.addr, align 8, !dbg !3501, !tbaa !2134
  %out_buf12 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %31, i32 0, i32 8, !dbg !3502
  store ptr %call, ptr %out_buf12, align 8, !dbg !3503, !tbaa !3477
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !3504, !tbaa !2134
  %out_buf13 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 8, !dbg !3506
  %33 = load ptr, ptr %out_buf13, align 8, !dbg !3506, !tbaa !3477
  %cmp14 = icmp eq ptr %33, null, !dbg !3507
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3508

if.then15:                                        ; preds = %if.then9
  store i64 -1, ptr %retval, align 8, !dbg !3509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3509

if.end16:                                         ; preds = %if.then9
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !3511, !tbaa !2134
  %out_buf17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %34, i32 0, i32 8, !dbg !3512
  %35 = load ptr, ptr %out_buf17, align 8, !dbg !3512, !tbaa !3477
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 6, !dbg !3513
  store ptr @ngx_http_gzip_filter_module, ptr %tag, align 8, !dbg !3514, !tbaa !3173
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !3515, !tbaa !2134
  %out_buf18 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %36, i32 0, i32 8, !dbg !3516
  %37 = load ptr, ptr %out_buf18, align 8, !dbg !3516, !tbaa !3477
  %recycled = getelementptr inbounds %struct.ngx_buf_s, ptr %37, i32 0, i32 9, !dbg !3517
  %bf.load = load i16, ptr %recycled, align 8, !dbg !3518
  %bf.clear = and i16 %bf.load, -9, !dbg !3518
  %bf.set = or i16 %bf.clear, 8, !dbg !3518
  store i16 %bf.set, ptr %recycled, align 8, !dbg !3518
  %38 = load ptr, ptr %ctx.addr, align 8, !dbg !3519, !tbaa !2134
  %bufs19 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %38, i32 0, i32 9, !dbg !3520
  %39 = load i64, ptr %bufs19, align 8, !dbg !3521, !tbaa !3488
  %inc = add nsw i64 %39, 1, !dbg !3521
  store i64 %inc, ptr %bufs19, align 8, !dbg !3521, !tbaa !3488
  br label %if.end24, !dbg !3522

if.else20:                                        ; preds = %if.else
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !3523, !tbaa !2134
  %nomem = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %40, i32 0, i32 15, !dbg !3525
  %bf.load21 = load i16, ptr %nomem, align 8, !dbg !3526
  %bf.clear22 = and i16 %bf.load21, -65, !dbg !3526
  %bf.set23 = or i16 %bf.clear22, 64, !dbg !3526
  store i16 %bf.set23, ptr %nomem, align 8, !dbg !3526
  store i64 -5, ptr %retval, align 8, !dbg !3527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3527

if.end24:                                         ; preds = %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then2
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !3528, !tbaa !2134
  %out_buf26 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %41, i32 0, i32 8, !dbg !3529
  %42 = load ptr, ptr %out_buf26, align 8, !dbg !3529, !tbaa !3477
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %42, i32 0, i32 0, !dbg !3530
  %43 = load ptr, ptr %pos, align 8, !dbg !3530, !tbaa !3081
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !3531, !tbaa !2134
  %zstream27 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %44, i32 0, i32 19, !dbg !3532
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream27, i32 0, i32 3, !dbg !3533
  store ptr %43, ptr %next_out, align 8, !dbg !3534, !tbaa !3535
  %45 = load ptr, ptr %conf, align 8, !dbg !3536, !tbaa !2134
  %bufs28 = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %45, i32 0, i32 3, !dbg !3537
  %size29 = getelementptr inbounds %struct.ngx_bufs_t, ptr %bufs28, i32 0, i32 1, !dbg !3538
  %46 = load i64, ptr %size29, align 8, !dbg !3538, !tbaa !2273
  %conv = trunc i64 %46 to i32, !dbg !3536
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !3539, !tbaa !2134
  %zstream30 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %47, i32 0, i32 19, !dbg !3540
  %avail_out31 = getelementptr inbounds %struct.z_stream_s, ptr %zstream30, i32 0, i32 4, !dbg !3541
  store i32 %conv, ptr %avail_out31, align 8, !dbg !3542, !tbaa !3457
  store i64 0, ptr %retval, align 8, !dbg !3543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3543

cleanup:                                          ; preds = %if.end25, %if.else20, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !3544
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3544
  %48 = load i64, ptr %retval, align 8, !dbg !3544
  ret i64 %48, !dbg !3544
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_deflate(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3545 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3547, metadata !DIExpression()), !dbg !3553
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3548, metadata !DIExpression()), !dbg !3554
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !3555
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3549, metadata !DIExpression()), !dbg !3556
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5, !dbg !3557
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3550, metadata !DIExpression()), !dbg !3558
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3559
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3551, metadata !DIExpression()), !dbg !3560
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #5, !dbg !3561
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !3552, metadata !DIExpression()), !dbg !3562
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3563, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 19, !dbg !3564
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !3565, !tbaa !2134
  %flush = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %1, i32 0, i32 15, !dbg !3566
  %bf.load = load i16, ptr %flush, align 8, !dbg !3566
  %bf.clear = and i16 %bf.load, 15, !dbg !3566
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3566
  %call = call i32 @deflate(ptr noundef %zstream, i32 noundef %bf.cast), !dbg !3567
  store i32 %call, ptr %rc, align 4, !dbg !3568, !tbaa !2752
  %2 = load i32, ptr %rc, align 4, !dbg !3569, !tbaa !2752
  %cmp = icmp ne i32 %2, 0, !dbg !3571
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !3572

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !3573, !tbaa !2752
  %cmp1 = icmp ne i32 %3, 1, !dbg !3574
  br i1 %cmp1, label %land.lhs.true2, label %if.end12, !dbg !3575

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %rc, align 4, !dbg !3576, !tbaa !2752
  %cmp3 = icmp ne i32 %4, -5, !dbg !3577
  br i1 %cmp3, label %if.then, label %if.end12, !dbg !3578

if.then:                                          ; preds = %land.lhs.true2
  %5 = load ptr, ptr %r.addr, align 8, !dbg !3579, !tbaa !2134
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 1, !dbg !3579
  %6 = load ptr, ptr %connection, align 8, !dbg !3579, !tbaa !2706
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 10, !dbg !3579
  %7 = load ptr, ptr %log, align 8, !dbg !3579, !tbaa !3261
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %7, i32 0, i32 0, !dbg !3579
  %8 = load i64, ptr %log_level, align 8, !dbg !3579, !tbaa !3265
  %cmp4 = icmp uge i64 %8, 2, !dbg !3579
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !3582

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %r.addr, align 8, !dbg !3579, !tbaa !2134
  %connection6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %9, i32 0, i32 1, !dbg !3579
  %10 = load ptr, ptr %connection6, align 8, !dbg !3579, !tbaa !2706
  %log7 = getelementptr inbounds %struct.ngx_connection_s, ptr %10, i32 0, i32 10, !dbg !3579
  %11 = load ptr, ptr %log7, align 8, !dbg !3579, !tbaa !3261
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !3579, !tbaa !2134
  %flush8 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %12, i32 0, i32 15, !dbg !3579
  %bf.load9 = load i16, ptr %flush8, align 8, !dbg !3579
  %bf.clear10 = and i16 %bf.load9, 15, !dbg !3579
  %bf.cast11 = zext i16 %bf.clear10 to i32, !dbg !3579
  %13 = load i32, ptr %rc, align 4, !dbg !3579, !tbaa !2752
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %11, i32 noundef 0, ptr noundef @.str.8, i32 noundef %bf.cast11, i32 noundef %13), !dbg !3579
  br label %if.end, !dbg !3579

if.end:                                           ; preds = %if.then5, %if.then
  store i64 -1, ptr %retval, align 8, !dbg !3583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3583

if.end12:                                         ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !3584, !tbaa !2134
  %zstream13 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %14, i32 0, i32 19, !dbg !3586
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream13, i32 0, i32 0, !dbg !3587
  %15 = load ptr, ptr %next_in, align 8, !dbg !3587, !tbaa !3381
  %tobool = icmp ne ptr %15, null, !dbg !3584
  br i1 %tobool, label %if.then14, label %if.end23, !dbg !3588

if.then14:                                        ; preds = %if.end12
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !3589, !tbaa !2134
  %zstream15 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %16, i32 0, i32 19, !dbg !3591
  %next_in16 = getelementptr inbounds %struct.z_stream_s, ptr %zstream15, i32 0, i32 0, !dbg !3592
  %17 = load ptr, ptr %next_in16, align 8, !dbg !3592, !tbaa !3381
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !3593, !tbaa !2134
  %in_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 7, !dbg !3594
  %19 = load ptr, ptr %in_buf, align 8, !dbg !3594, !tbaa !3351
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 0, !dbg !3595
  store ptr %17, ptr %pos, align 8, !dbg !3596, !tbaa !3081
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !3597, !tbaa !2134
  %zstream17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %20, i32 0, i32 19, !dbg !3599
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream17, i32 0, i32 1, !dbg !3600
  %21 = load i32, ptr %avail_in, align 8, !dbg !3600, !tbaa !3303
  %cmp18 = icmp eq i32 %21, 0, !dbg !3601
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !3602

if.then19:                                        ; preds = %if.then14
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !3603, !tbaa !2134
  %zstream20 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %22, i32 0, i32 19, !dbg !3605
  %next_in21 = getelementptr inbounds %struct.z_stream_s, ptr %zstream20, i32 0, i32 0, !dbg !3606
  store ptr null, ptr %next_in21, align 8, !dbg !3607, !tbaa !3381
  br label %if.end22, !dbg !3608

if.end22:                                         ; preds = %if.then19, %if.then14
  br label %if.end23, !dbg !3609

if.end23:                                         ; preds = %if.end22, %if.end12
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !3610, !tbaa !2134
  %zstream24 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 19, !dbg !3611
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream24, i32 0, i32 3, !dbg !3612
  %24 = load ptr, ptr %next_out, align 8, !dbg !3612, !tbaa !3535
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !3613, !tbaa !2134
  %out_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %25, i32 0, i32 8, !dbg !3614
  %26 = load ptr, ptr %out_buf, align 8, !dbg !3614, !tbaa !3477
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %26, i32 0, i32 1, !dbg !3615
  store ptr %24, ptr %last, align 8, !dbg !3616, !tbaa !3076
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !3617, !tbaa !2134
  %zstream25 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %27, i32 0, i32 19, !dbg !3619
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream25, i32 0, i32 4, !dbg !3620
  %28 = load i32, ptr %avail_out, align 8, !dbg !3620, !tbaa !3457
  %cmp26 = icmp eq i32 %28, 0, !dbg !3621
  br i1 %cmp26, label %if.then27, label %if.end37, !dbg !3622

if.then27:                                        ; preds = %if.end23
  %29 = load ptr, ptr %r.addr, align 8, !dbg !3623, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 11, !dbg !3625
  %30 = load ptr, ptr %pool, align 8, !dbg !3625, !tbaa !2373
  %call28 = call ptr @ngx_alloc_chain_link(ptr noundef %30), !dbg !3626
  store ptr %call28, ptr %cl, align 8, !dbg !3627, !tbaa !2134
  %31 = load ptr, ptr %cl, align 8, !dbg !3628, !tbaa !2134
  %cmp29 = icmp eq ptr %31, null, !dbg !3630
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !3631

if.then30:                                        ; preds = %if.then27
  store i64 -1, ptr %retval, align 8, !dbg !3632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3632

if.end31:                                         ; preds = %if.then27
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !3634, !tbaa !2134
  %out_buf32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 8, !dbg !3635
  %33 = load ptr, ptr %out_buf32, align 8, !dbg !3635, !tbaa !3477
  %34 = load ptr, ptr %cl, align 8, !dbg !3636, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %34, i32 0, i32 0, !dbg !3637
  store ptr %33, ptr %buf, align 8, !dbg !3638, !tbaa !3073
  %35 = load ptr, ptr %cl, align 8, !dbg !3639, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %35, i32 0, i32 1, !dbg !3640
  store ptr null, ptr %next, align 8, !dbg !3641, !tbaa !3090
  %36 = load ptr, ptr %cl, align 8, !dbg !3642, !tbaa !2134
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !3643, !tbaa !2134
  %last_out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %37, i32 0, i32 4, !dbg !3644
  %38 = load ptr, ptr %last_out, align 8, !dbg !3644, !tbaa !2858
  store ptr %36, ptr %38, align 8, !dbg !3645, !tbaa !2134
  %39 = load ptr, ptr %cl, align 8, !dbg !3646, !tbaa !2134
  %next33 = getelementptr inbounds %struct.ngx_chain_s, ptr %39, i32 0, i32 1, !dbg !3647
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !3648, !tbaa !2134
  %last_out34 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %40, i32 0, i32 4, !dbg !3649
  store ptr %next33, ptr %last_out34, align 8, !dbg !3650, !tbaa !2858
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !3651, !tbaa !2134
  %redo = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %41, i32 0, i32 15, !dbg !3652
  %bf.load35 = load i16, ptr %redo, align 8, !dbg !3653
  %bf.clear36 = and i16 %bf.load35, -17, !dbg !3653
  %bf.set = or i16 %bf.clear36, 16, !dbg !3653
  store i16 %bf.set, ptr %redo, align 8, !dbg !3653
  store i64 -2, ptr %retval, align 8, !dbg !3654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3654

if.end37:                                         ; preds = %if.end23
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !3655, !tbaa !2134
  %redo38 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %42, i32 0, i32 15, !dbg !3656
  %bf.load39 = load i16, ptr %redo38, align 8, !dbg !3657
  %bf.clear40 = and i16 %bf.load39, -17, !dbg !3657
  %bf.set41 = or i16 %bf.clear40, 0, !dbg !3657
  store i16 %bf.set41, ptr %redo38, align 8, !dbg !3657
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !3658, !tbaa !2134
  %flush42 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %43, i32 0, i32 15, !dbg !3660
  %bf.load43 = load i16, ptr %flush42, align 8, !dbg !3660
  %bf.clear44 = and i16 %bf.load43, 15, !dbg !3660
  %bf.cast45 = zext i16 %bf.clear44 to i32, !dbg !3660
  %cmp46 = icmp eq i32 %bf.cast45, 2, !dbg !3661
  br i1 %cmp46, label %if.then47, label %if.end99, !dbg !3662

if.then47:                                        ; preds = %if.end37
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !3663, !tbaa !2134
  %flush48 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %44, i32 0, i32 15, !dbg !3665
  %bf.load49 = load i16, ptr %flush48, align 8, !dbg !3666
  %bf.clear50 = and i16 %bf.load49, -16, !dbg !3666
  %bf.set51 = or i16 %bf.clear50, 0, !dbg !3666
  store i16 %bf.set51, ptr %flush48, align 8, !dbg !3666
  %45 = load ptr, ptr %r.addr, align 8, !dbg !3667, !tbaa !2134
  %pool52 = getelementptr inbounds %struct.ngx_http_request_s, ptr %45, i32 0, i32 11, !dbg !3668
  %46 = load ptr, ptr %pool52, align 8, !dbg !3668, !tbaa !2373
  %call53 = call ptr @ngx_alloc_chain_link(ptr noundef %46), !dbg !3669
  store ptr %call53, ptr %cl, align 8, !dbg !3670, !tbaa !2134
  %47 = load ptr, ptr %cl, align 8, !dbg !3671, !tbaa !2134
  %cmp54 = icmp eq ptr %47, null, !dbg !3673
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3674

if.then55:                                        ; preds = %if.then47
  store i64 -1, ptr %retval, align 8, !dbg !3675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3675

if.end56:                                         ; preds = %if.then47
  %48 = load ptr, ptr %ctx.addr, align 8, !dbg !3677, !tbaa !2134
  %out_buf57 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %48, i32 0, i32 8, !dbg !3678
  %49 = load ptr, ptr %out_buf57, align 8, !dbg !3678, !tbaa !3477
  store ptr %49, ptr %b, align 8, !dbg !3679, !tbaa !2134
  %50 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %50, i32 0, i32 9, !dbg !3680
  %bf.load58 = load i16, ptr %temporary, align 8, !dbg !3680
  %bf.clear59 = and i16 %bf.load58, 1, !dbg !3680
  %bf.cast60 = zext i16 %bf.clear59 to i32, !dbg !3680
  %tobool61 = icmp ne i32 %bf.cast60, 0, !dbg !3680
  br i1 %tobool61, label %cond.true, label %lor.lhs.false, !dbg !3680

lor.lhs.false:                                    ; preds = %if.end56
  %51 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %51, i32 0, i32 9, !dbg !3680
  %bf.load62 = load i16, ptr %memory, align 8, !dbg !3680
  %bf.lshr = lshr i16 %bf.load62, 1, !dbg !3680
  %bf.clear63 = and i16 %bf.lshr, 1, !dbg !3680
  %bf.cast64 = zext i16 %bf.clear63 to i32, !dbg !3680
  %tobool65 = icmp ne i32 %bf.cast64, 0, !dbg !3680
  br i1 %tobool65, label %cond.true, label %lor.lhs.false66, !dbg !3680

lor.lhs.false66:                                  ; preds = %lor.lhs.false
  %52 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %52, i32 0, i32 9, !dbg !3680
  %bf.load67 = load i16, ptr %mmap, align 8, !dbg !3680
  %bf.lshr68 = lshr i16 %bf.load67, 2, !dbg !3680
  %bf.clear69 = and i16 %bf.lshr68, 1, !dbg !3680
  %bf.cast70 = zext i16 %bf.clear69 to i32, !dbg !3680
  %tobool71 = icmp ne i32 %bf.cast70, 0, !dbg !3680
  br i1 %tobool71, label %cond.true, label %cond.false, !dbg !3680

cond.true:                                        ; preds = %lor.lhs.false66, %lor.lhs.false, %if.end56
  %53 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %last72 = getelementptr inbounds %struct.ngx_buf_s, ptr %53, i32 0, i32 1, !dbg !3680
  %54 = load ptr, ptr %last72, align 8, !dbg !3680, !tbaa !3076
  %55 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %pos73 = getelementptr inbounds %struct.ngx_buf_s, ptr %55, i32 0, i32 0, !dbg !3680
  %56 = load ptr, ptr %pos73, align 8, !dbg !3680, !tbaa !3081
  %sub.ptr.lhs.cast = ptrtoint ptr %54 to i64, !dbg !3680
  %sub.ptr.rhs.cast = ptrtoint ptr %56 to i64, !dbg !3680
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3680
  br label %cond.end, !dbg !3680

cond.false:                                       ; preds = %lor.lhs.false66
  %57 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %file_last = getelementptr inbounds %struct.ngx_buf_s, ptr %57, i32 0, i32 3, !dbg !3680
  %58 = load i64, ptr %file_last, align 8, !dbg !3680, !tbaa !3682
  %59 = load ptr, ptr %b, align 8, !dbg !3680, !tbaa !2134
  %file_pos = getelementptr inbounds %struct.ngx_buf_s, ptr %59, i32 0, i32 2, !dbg !3680
  %60 = load i64, ptr %file_pos, align 8, !dbg !3680, !tbaa !3683
  %sub = sub nsw i64 %58, %60, !dbg !3680
  br label %cond.end, !dbg !3680

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub, %cond.false ], !dbg !3680
  %cmp74 = icmp eq i64 %cond, 0, !dbg !3684
  br i1 %cmp74, label %if.then75, label %if.else, !dbg !3685

if.then75:                                        ; preds = %cond.end
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !3686, !tbaa !2134
  %request = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %61, i32 0, i32 20, !dbg !3686
  %62 = load ptr, ptr %request, align 8, !dbg !3686, !tbaa !2557
  %pool76 = getelementptr inbounds %struct.ngx_http_request_s, ptr %62, i32 0, i32 11, !dbg !3686
  %63 = load ptr, ptr %pool76, align 8, !dbg !3686, !tbaa !2373
  %call77 = call ptr @ngx_pcalloc(ptr noundef %63, i64 noundef 80), !dbg !3686
  store ptr %call77, ptr %b, align 8, !dbg !3688, !tbaa !2134
  %64 = load ptr, ptr %b, align 8, !dbg !3689, !tbaa !2134
  %cmp78 = icmp eq ptr %64, null, !dbg !3691
  br i1 %cmp78, label %if.then79, label %if.end80, !dbg !3692

if.then79:                                        ; preds = %if.then75
  store i64 -1, ptr %retval, align 8, !dbg !3693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3693

if.end80:                                         ; preds = %if.then75
  br label %if.end83, !dbg !3695

if.else:                                          ; preds = %cond.end
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !3696, !tbaa !2134
  %zstream81 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %65, i32 0, i32 19, !dbg !3698
  %avail_out82 = getelementptr inbounds %struct.z_stream_s, ptr %zstream81, i32 0, i32 4, !dbg !3699
  store i32 0, ptr %avail_out82, align 8, !dbg !3700, !tbaa !3457
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.end80
  %66 = load ptr, ptr %b, align 8, !dbg !3701, !tbaa !2134
  %flush84 = getelementptr inbounds %struct.ngx_buf_s, ptr %66, i32 0, i32 9, !dbg !3702
  %bf.load85 = load i16, ptr %flush84, align 8, !dbg !3703
  %bf.clear86 = and i16 %bf.load85, -33, !dbg !3703
  %bf.set87 = or i16 %bf.clear86, 32, !dbg !3703
  store i16 %bf.set87, ptr %flush84, align 8, !dbg !3703
  %67 = load ptr, ptr %b, align 8, !dbg !3704, !tbaa !2134
  %68 = load ptr, ptr %cl, align 8, !dbg !3705, !tbaa !2134
  %buf88 = getelementptr inbounds %struct.ngx_chain_s, ptr %68, i32 0, i32 0, !dbg !3706
  store ptr %67, ptr %buf88, align 8, !dbg !3707, !tbaa !3073
  %69 = load ptr, ptr %cl, align 8, !dbg !3708, !tbaa !2134
  %next89 = getelementptr inbounds %struct.ngx_chain_s, ptr %69, i32 0, i32 1, !dbg !3709
  store ptr null, ptr %next89, align 8, !dbg !3710, !tbaa !3090
  %70 = load ptr, ptr %cl, align 8, !dbg !3711, !tbaa !2134
  %71 = load ptr, ptr %ctx.addr, align 8, !dbg !3712, !tbaa !2134
  %last_out90 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %71, i32 0, i32 4, !dbg !3713
  %72 = load ptr, ptr %last_out90, align 8, !dbg !3713, !tbaa !2858
  store ptr %70, ptr %72, align 8, !dbg !3714, !tbaa !2134
  %73 = load ptr, ptr %cl, align 8, !dbg !3715, !tbaa !2134
  %next91 = getelementptr inbounds %struct.ngx_chain_s, ptr %73, i32 0, i32 1, !dbg !3716
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !3717, !tbaa !2134
  %last_out92 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %74, i32 0, i32 4, !dbg !3718
  store ptr %next91, ptr %last_out92, align 8, !dbg !3719, !tbaa !2858
  %75 = load ptr, ptr %r.addr, align 8, !dbg !3720, !tbaa !2134
  %connection93 = getelementptr inbounds %struct.ngx_http_request_s, ptr %75, i32 0, i32 1, !dbg !3721
  %76 = load ptr, ptr %connection93, align 8, !dbg !3721, !tbaa !2706
  %buffered = getelementptr inbounds %struct.ngx_connection_s, ptr %76, i32 0, i32 26, !dbg !3722
  %bf.load94 = load i32, ptr %buffered, align 8, !dbg !3723
  %bf.clear95 = and i32 %bf.load94, 255, !dbg !3723
  %and = and i32 %bf.clear95, -33, !dbg !3723
  %bf.load96 = load i32, ptr %buffered, align 8, !dbg !3723
  %bf.value = and i32 %and, 255, !dbg !3723
  %bf.clear97 = and i32 %bf.load96, -256, !dbg !3723
  %bf.set98 = or i32 %bf.clear97, %bf.value, !dbg !3723
  store i32 %bf.set98, ptr %buffered, align 8, !dbg !3723
  store i64 0, ptr %retval, align 8, !dbg !3724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3724

if.end99:                                         ; preds = %if.end37
  %77 = load i32, ptr %rc, align 4, !dbg !3725, !tbaa !2752
  %cmp100 = icmp eq i32 %77, 1, !dbg !3727
  br i1 %cmp100, label %if.then101, label %if.end106, !dbg !3728

if.then101:                                       ; preds = %if.end99
  %78 = load ptr, ptr %r.addr, align 8, !dbg !3729, !tbaa !2134
  %79 = load ptr, ptr %ctx.addr, align 8, !dbg !3732, !tbaa !2134
  %call102 = call i64 @ngx_http_gzip_filter_deflate_end(ptr noundef %78, ptr noundef %79), !dbg !3733
  %cmp103 = icmp ne i64 %call102, 0, !dbg !3734
  br i1 %cmp103, label %if.then104, label %if.end105, !dbg !3735

if.then104:                                       ; preds = %if.then101
  store i64 -1, ptr %retval, align 8, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

if.end105:                                        ; preds = %if.then101
  store i64 0, ptr %retval, align 8, !dbg !3738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3738

if.end106:                                        ; preds = %if.end99
  %80 = load ptr, ptr %r.addr, align 8, !dbg !3739, !tbaa !2134
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %80, i32 0, i32 5, !dbg !3739
  %81 = load ptr, ptr %loc_conf, align 8, !dbg !3739, !tbaa !2455
  %82 = load i64, ptr @ngx_http_gzip_filter_module, align 8, !dbg !3739, !tbaa !2347
  %arrayidx = getelementptr inbounds ptr, ptr %81, i64 %82, !dbg !3739
  %83 = load ptr, ptr %arrayidx, align 8, !dbg !3739, !tbaa !2134
  store ptr %83, ptr %conf, align 8, !dbg !3740, !tbaa !2134
  %84 = load ptr, ptr %conf, align 8, !dbg !3741, !tbaa !2134
  %no_buffer = getelementptr inbounds %struct.ngx_http_gzip_conf_t, ptr %84, i32 0, i32 1, !dbg !3743
  %85 = load i64, ptr %no_buffer, align 8, !dbg !3743, !tbaa !2213
  %tobool107 = icmp ne i64 %85, 0, !dbg !3741
  br i1 %tobool107, label %land.lhs.true108, label %if.end122, !dbg !3744

land.lhs.true108:                                 ; preds = %if.end106
  %86 = load ptr, ptr %ctx.addr, align 8, !dbg !3745, !tbaa !2134
  %in = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %86, i32 0, i32 0, !dbg !3746
  %87 = load ptr, ptr %in, align 8, !dbg !3746, !tbaa !3064
  %cmp109 = icmp eq ptr %87, null, !dbg !3747
  br i1 %cmp109, label %if.then110, label %if.end122, !dbg !3748

if.then110:                                       ; preds = %land.lhs.true108
  %88 = load ptr, ptr %r.addr, align 8, !dbg !3749, !tbaa !2134
  %pool111 = getelementptr inbounds %struct.ngx_http_request_s, ptr %88, i32 0, i32 11, !dbg !3751
  %89 = load ptr, ptr %pool111, align 8, !dbg !3751, !tbaa !2373
  %call112 = call ptr @ngx_alloc_chain_link(ptr noundef %89), !dbg !3752
  store ptr %call112, ptr %cl, align 8, !dbg !3753, !tbaa !2134
  %90 = load ptr, ptr %cl, align 8, !dbg !3754, !tbaa !2134
  %cmp113 = icmp eq ptr %90, null, !dbg !3756
  br i1 %cmp113, label %if.then114, label %if.end115, !dbg !3757

if.then114:                                       ; preds = %if.then110
  store i64 -1, ptr %retval, align 8, !dbg !3758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3758

if.end115:                                        ; preds = %if.then110
  %91 = load ptr, ptr %ctx.addr, align 8, !dbg !3760, !tbaa !2134
  %out_buf116 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %91, i32 0, i32 8, !dbg !3761
  %92 = load ptr, ptr %out_buf116, align 8, !dbg !3761, !tbaa !3477
  %93 = load ptr, ptr %cl, align 8, !dbg !3762, !tbaa !2134
  %buf117 = getelementptr inbounds %struct.ngx_chain_s, ptr %93, i32 0, i32 0, !dbg !3763
  store ptr %92, ptr %buf117, align 8, !dbg !3764, !tbaa !3073
  %94 = load ptr, ptr %cl, align 8, !dbg !3765, !tbaa !2134
  %next118 = getelementptr inbounds %struct.ngx_chain_s, ptr %94, i32 0, i32 1, !dbg !3766
  store ptr null, ptr %next118, align 8, !dbg !3767, !tbaa !3090
  %95 = load ptr, ptr %cl, align 8, !dbg !3768, !tbaa !2134
  %96 = load ptr, ptr %ctx.addr, align 8, !dbg !3769, !tbaa !2134
  %last_out119 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %96, i32 0, i32 4, !dbg !3770
  %97 = load ptr, ptr %last_out119, align 8, !dbg !3770, !tbaa !2858
  store ptr %95, ptr %97, align 8, !dbg !3771, !tbaa !2134
  %98 = load ptr, ptr %cl, align 8, !dbg !3772, !tbaa !2134
  %next120 = getelementptr inbounds %struct.ngx_chain_s, ptr %98, i32 0, i32 1, !dbg !3773
  %99 = load ptr, ptr %ctx.addr, align 8, !dbg !3774, !tbaa !2134
  %last_out121 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %99, i32 0, i32 4, !dbg !3775
  store ptr %next120, ptr %last_out121, align 8, !dbg !3776, !tbaa !2858
  store i64 0, ptr %retval, align 8, !dbg !3777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3777

if.end122:                                        ; preds = %land.lhs.true108, %if.end106
  store i64 -2, ptr %retval, align 8, !dbg !3778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3778

cleanup:                                          ; preds = %if.end122, %if.end115, %if.then114, %if.end105, %if.then104, %if.end83, %if.then79, %if.then55, %if.end31, %if.then30, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #5, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !3779
  %100 = load i64, ptr %retval, align 8, !dbg !3779
  ret i64 %100, !dbg !3779
}

; Function Attrs: nounwind uwtable
define internal void @ngx_http_gzip_filter_free_copy_buf(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3780 {
entry:
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cl = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3782, metadata !DIExpression()), !dbg !3785
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3783, metadata !DIExpression()), !dbg !3786
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3787
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3784, metadata !DIExpression()), !dbg !3788
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3789, !tbaa !2134
  %copied = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 5, !dbg !3791
  %1 = load ptr, ptr %copied, align 8, !dbg !3791, !tbaa !3329
  store ptr %1, ptr %cl, align 8, !dbg !3792, !tbaa !2134
  br label %for.cond, !dbg !3793

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cl, align 8, !dbg !3794, !tbaa !2134
  %tobool = icmp ne ptr %2, null, !dbg !3796
  br i1 %tobool, label %for.body, label %for.end, !dbg !3796

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3797, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %3, i32 0, i32 11, !dbg !3799
  %4 = load ptr, ptr %pool, align 8, !dbg !3799, !tbaa !2373
  %5 = load ptr, ptr %cl, align 8, !dbg !3800, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %5, i32 0, i32 0, !dbg !3801
  %6 = load ptr, ptr %buf, align 8, !dbg !3801, !tbaa !3073
  %start = getelementptr inbounds %struct.ngx_buf_s, ptr %6, i32 0, i32 4, !dbg !3802
  %7 = load ptr, ptr %start, align 8, !dbg !3802, !tbaa !3803
  %call = call i64 @ngx_pfree(ptr noundef %4, ptr noundef %7), !dbg !3804
  br label %for.inc, !dbg !3805

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %cl, align 8, !dbg !3806, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %8, i32 0, i32 1, !dbg !3807
  %9 = load ptr, ptr %next, align 8, !dbg !3807, !tbaa !3090
  store ptr %9, ptr %cl, align 8, !dbg !3808, !tbaa !2134
  br label %for.cond, !dbg !3809, !llvm.loop !3810

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !3812, !tbaa !2134
  %copied1 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %10, i32 0, i32 5, !dbg !3813
  store ptr null, ptr %copied1, align 8, !dbg !3814, !tbaa !3329
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3815
  ret void, !dbg !3815
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_gzheader(ptr noundef %r, ptr noundef %ctx) #0 !dbg !1955 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2025, metadata !DIExpression()), !dbg !3816
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2026, metadata !DIExpression()), !dbg !3817
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5, !dbg !3818
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2027, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !3820
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !2028, metadata !DIExpression()), !dbg !3821
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3822, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 11, !dbg !3822
  %1 = load ptr, ptr %pool, align 8, !dbg !3822, !tbaa !2373
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 80), !dbg !3822
  store ptr %call, ptr %b, align 8, !dbg !3823, !tbaa !2134
  %2 = load ptr, ptr %b, align 8, !dbg !3824, !tbaa !2134
  %cmp = icmp eq ptr %2, null, !dbg !3826
  br i1 %cmp, label %if.then, label %if.end, !dbg !3827

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !3828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3828

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %b, align 8, !dbg !3830, !tbaa !2134
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %3, i32 0, i32 9, !dbg !3831
  %bf.load = load i16, ptr %memory, align 8, !dbg !3832
  %bf.clear = and i16 %bf.load, -3, !dbg !3832
  %bf.set = or i16 %bf.clear, 2, !dbg !3832
  store i16 %bf.set, ptr %memory, align 8, !dbg !3832
  %4 = load ptr, ptr %b, align 8, !dbg !3833, !tbaa !2134
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %4, i32 0, i32 0, !dbg !3834
  store ptr @ngx_http_gzip_filter_gzheader.gzheader, ptr %pos, align 8, !dbg !3835, !tbaa !3081
  %5 = load ptr, ptr %b, align 8, !dbg !3836, !tbaa !2134
  %pos1 = getelementptr inbounds %struct.ngx_buf_s, ptr %5, i32 0, i32 0, !dbg !3837
  %6 = load ptr, ptr %pos1, align 8, !dbg !3837, !tbaa !3081
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 10, !dbg !3838
  %7 = load ptr, ptr %b, align 8, !dbg !3839, !tbaa !2134
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %7, i32 0, i32 1, !dbg !3840
  store ptr %add.ptr, ptr %last, align 8, !dbg !3841, !tbaa !3076
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3842, !tbaa !2134
  %pool2 = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 11, !dbg !3843
  %9 = load ptr, ptr %pool2, align 8, !dbg !3843, !tbaa !2373
  %call3 = call ptr @ngx_alloc_chain_link(ptr noundef %9), !dbg !3844
  store ptr %call3, ptr %cl, align 8, !dbg !3845, !tbaa !2134
  %10 = load ptr, ptr %cl, align 8, !dbg !3846, !tbaa !2134
  %cmp4 = icmp eq ptr %10, null, !dbg !3848
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3849

if.then5:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !3850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3850

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %b, align 8, !dbg !3852, !tbaa !2134
  %12 = load ptr, ptr %cl, align 8, !dbg !3853, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %12, i32 0, i32 0, !dbg !3854
  store ptr %11, ptr %buf, align 8, !dbg !3855, !tbaa !3073
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !3856, !tbaa !2134
  %out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %13, i32 0, i32 3, !dbg !3857
  %14 = load ptr, ptr %out, align 8, !dbg !3857, !tbaa !2804
  %15 = load ptr, ptr %cl, align 8, !dbg !3858, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %15, i32 0, i32 1, !dbg !3859
  store ptr %14, ptr %next, align 8, !dbg !3860, !tbaa !3090
  %16 = load ptr, ptr %cl, align 8, !dbg !3861, !tbaa !2134
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !3862, !tbaa !2134
  %out7 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %17, i32 0, i32 3, !dbg !3863
  store ptr %16, ptr %out7, align 8, !dbg !3864, !tbaa !2804
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !3865, !tbaa !2134
  %gzheader = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 15, !dbg !3866
  %bf.load8 = load i16, ptr %gzheader, align 8, !dbg !3867
  %bf.clear9 = and i16 %bf.load8, -129, !dbg !3867
  %bf.set10 = or i16 %bf.clear9, 128, !dbg !3867
  store i16 %bf.set10, ptr %gzheader, align 8, !dbg !3867
  store i64 0, ptr %retval, align 8, !dbg !3868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3868

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !3869
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5, !dbg !3869
  %19 = load i64, ptr %retval, align 8, !dbg !3869
  ret i64 %19, !dbg !3869
}

declare !dbg !3870 i32 @deflateEnd(ptr noundef) #2

declare !dbg !3875 i64 @ngx_pfree(ptr noundef, ptr noundef) #2

declare !dbg !3878 ptr @ngx_alloc_chain_link(ptr noundef) #2

declare !dbg !3881 ptr @ngx_create_temp_buf(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !3884 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_gzip_filter_alloc(ptr noundef %opaque, i32 noundef %items, i32 noundef %size) #0 !dbg !3885 {
entry:
  %retval = alloca ptr, align 8
  %opaque.addr = alloca ptr, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %p = alloca ptr, align 8
  %alloc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %opaque, ptr %opaque.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !3891, metadata !DIExpression()), !dbg !3897
  store i32 %items, ptr %items.addr, align 4, !tbaa !2752
  tail call void @llvm.dbg.declare(metadata ptr %items.addr, metadata !3892, metadata !DIExpression()), !dbg !3898
  store i32 %size, ptr %size.addr, align 4, !tbaa !2752
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3893, metadata !DIExpression()), !dbg !3899
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5, !dbg !3900
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !3894, metadata !DIExpression()), !dbg !3901
  %0 = load ptr, ptr %opaque.addr, align 8, !dbg !3902, !tbaa !2134
  store ptr %0, ptr %ctx, align 8, !dbg !3901, !tbaa !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5, !dbg !3903
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3895, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc) #5, !dbg !3905
  tail call void @llvm.dbg.declare(metadata ptr %alloc, metadata !3896, metadata !DIExpression()), !dbg !3906
  %1 = load i32, ptr %items.addr, align 4, !dbg !3907, !tbaa !2752
  %2 = load i32, ptr %size.addr, align 4, !dbg !3908, !tbaa !2752
  %mul = mul i32 %1, %2, !dbg !3909
  %conv = zext i32 %mul to i64, !dbg !3907
  store i64 %conv, ptr %alloc, align 8, !dbg !3910, !tbaa !2276
  %3 = load i32, ptr %items.addr, align 4, !dbg !3911, !tbaa !2752
  %cmp = icmp eq i32 %3, 1, !dbg !3913
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3914

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, ptr %alloc, align 8, !dbg !3915, !tbaa !2276
  %rem = urem i64 %4, 512, !dbg !3916
  %cmp2 = icmp ne i64 %rem, 0, !dbg !3917
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !3918

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i64, ptr %alloc, align 8, !dbg !3919, !tbaa !2276
  %cmp5 = icmp ult i64 %5, 8192, !dbg !3920
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3921

if.then:                                          ; preds = %land.lhs.true4
  store i64 8192, ptr %alloc, align 8, !dbg !3922, !tbaa !2276
  br label %if.end, !dbg !3924

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %entry
  %6 = load i64, ptr %alloc, align 8, !dbg !3925, !tbaa !2276
  %7 = load ptr, ptr %ctx, align 8, !dbg !3927, !tbaa !2134
  %allocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %7, i32 0, i32 12, !dbg !3928
  %8 = load i64, ptr %allocated, align 8, !dbg !3928, !tbaa !2984
  %cmp7 = icmp ule i64 %6, %8, !dbg !3929
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !3930

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %ctx, align 8, !dbg !3931, !tbaa !2134
  %free_mem = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %9, i32 0, i32 11, !dbg !3933
  %10 = load ptr, ptr %free_mem, align 8, !dbg !3933, !tbaa !3235
  store ptr %10, ptr %p, align 8, !dbg !3934, !tbaa !2134
  %11 = load i64, ptr %alloc, align 8, !dbg !3935, !tbaa !2276
  %12 = load ptr, ptr %ctx, align 8, !dbg !3936, !tbaa !2134
  %free_mem10 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %12, i32 0, i32 11, !dbg !3937
  %13 = load ptr, ptr %free_mem10, align 8, !dbg !3938, !tbaa !3235
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %11, !dbg !3938
  store ptr %add.ptr, ptr %free_mem10, align 8, !dbg !3938, !tbaa !3235
  %14 = load i64, ptr %alloc, align 8, !dbg !3939, !tbaa !2276
  %15 = load ptr, ptr %ctx, align 8, !dbg !3940, !tbaa !2134
  %allocated11 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %15, i32 0, i32 12, !dbg !3941
  %16 = load i64, ptr %allocated11, align 8, !dbg !3942, !tbaa !2984
  %sub = sub i64 %16, %14, !dbg !3942
  store i64 %sub, ptr %allocated11, align 8, !dbg !3942, !tbaa !2984
  %17 = load ptr, ptr %p, align 8, !dbg !3943, !tbaa !2134
  store ptr %17, ptr %retval, align 8, !dbg !3944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3944

if.end12:                                         ; preds = %if.end
  %18 = load ptr, ptr %ctx, align 8, !dbg !3945, !tbaa !2134
  %intel = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 15, !dbg !3947
  %bf.load = load i16, ptr %intel, align 8, !dbg !3947
  %bf.lshr = lshr i16 %bf.load, 9, !dbg !3947
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3947
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3947
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !3945
  br i1 %tobool, label %if.then13, label %if.else, !dbg !3948

if.then13:                                        ; preds = %if.end12
  %19 = load ptr, ptr %ctx, align 8, !dbg !3949, !tbaa !2134
  %request = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %19, i32 0, i32 20, !dbg !3949
  %20 = load ptr, ptr %request, align 8, !dbg !3949, !tbaa !2557
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 1, !dbg !3949
  %21 = load ptr, ptr %connection, align 8, !dbg !3949, !tbaa !2706
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %21, i32 0, i32 10, !dbg !3949
  %22 = load ptr, ptr %log, align 8, !dbg !3949, !tbaa !3261
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %22, i32 0, i32 0, !dbg !3949
  %23 = load i64, ptr %log_level, align 8, !dbg !3949, !tbaa !3265
  %cmp14 = icmp uge i64 %23, 2, !dbg !3949
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !3952

if.then16:                                        ; preds = %if.then13
  %24 = load ptr, ptr %ctx, align 8, !dbg !3949, !tbaa !2134
  %request17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %24, i32 0, i32 20, !dbg !3949
  %25 = load ptr, ptr %request17, align 8, !dbg !3949, !tbaa !2557
  %connection18 = getelementptr inbounds %struct.ngx_http_request_s, ptr %25, i32 0, i32 1, !dbg !3949
  %26 = load ptr, ptr %connection18, align 8, !dbg !3949, !tbaa !2706
  %log19 = getelementptr inbounds %struct.ngx_connection_s, ptr %26, i32 0, i32 10, !dbg !3949
  %27 = load ptr, ptr %log19, align 8, !dbg !3949, !tbaa !3261
  %28 = load i32, ptr %items.addr, align 4, !dbg !3949, !tbaa !2752
  %29 = load i32, ptr %size.addr, align 4, !dbg !3949, !tbaa !2752
  %mul20 = mul i32 %28, %29, !dbg !3949
  %30 = load ptr, ptr %ctx, align 8, !dbg !3949, !tbaa !2134
  %allocated21 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %30, i32 0, i32 12, !dbg !3949
  %31 = load i64, ptr %allocated21, align 8, !dbg !3949, !tbaa !2984
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %27, i32 noundef 0, ptr noundef @.str.7, i32 noundef %mul20, i64 noundef %31), !dbg !3949
  br label %if.end22, !dbg !3949

if.end22:                                         ; preds = %if.then16, %if.then13
  br label %if.end23, !dbg !3953

if.else:                                          ; preds = %if.end12
  store i64 1, ptr @ngx_http_gzip_assume_intel, align 8, !dbg !3954, !tbaa !2276
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end22
  %32 = load ptr, ptr %ctx, align 8, !dbg !3956, !tbaa !2134
  %request24 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 20, !dbg !3957
  %33 = load ptr, ptr %request24, align 8, !dbg !3957, !tbaa !2557
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 11, !dbg !3958
  %34 = load ptr, ptr %pool, align 8, !dbg !3958, !tbaa !2373
  %35 = load i32, ptr %items.addr, align 4, !dbg !3959, !tbaa !2752
  %36 = load i32, ptr %size.addr, align 4, !dbg !3960, !tbaa !2752
  %mul25 = mul i32 %35, %36, !dbg !3961
  %conv26 = zext i32 %mul25 to i64, !dbg !3959
  %call = call ptr @ngx_palloc(ptr noundef %34, i64 noundef %conv26), !dbg !3962
  store ptr %call, ptr %p, align 8, !dbg !3963, !tbaa !2134
  %37 = load ptr, ptr %p, align 8, !dbg !3964, !tbaa !2134
  store ptr %37, ptr %retval, align 8, !dbg !3965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3965

cleanup:                                          ; preds = %if.end23, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc) #5, !dbg !3966
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5, !dbg !3966
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5, !dbg !3966
  %38 = load ptr, ptr %retval, align 8, !dbg !3966
  ret ptr %38, !dbg !3966
}

; Function Attrs: nounwind uwtable
define internal void @ngx_http_gzip_filter_free(ptr noundef %opaque, ptr noundef %address) #0 !dbg !3967 {
entry:
  %opaque.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  store ptr %opaque, ptr %opaque.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !3971, metadata !DIExpression()), !dbg !3973
  store ptr %address, ptr %address.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3972, metadata !DIExpression()), !dbg !3974
  ret void, !dbg !3975
}

declare !dbg !3976 i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !3979 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !3984 i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !3989 i32 @deflate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_gzip_filter_deflate_end(ptr noundef %r, ptr noundef %ctx) #0 !dbg !3992 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %trailer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3994, metadata !DIExpression()), !dbg !4000
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3995, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !4002
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3996, metadata !DIExpression()), !dbg !4003
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5, !dbg !4004
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3997, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #5, !dbg !4006
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3998, metadata !DIExpression()), !dbg !4007
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer) #5, !dbg !4008
  tail call void @llvm.dbg.declare(metadata ptr %trailer, metadata !3999, metadata !DIExpression()), !dbg !4009
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4010, !tbaa !2134
  %zstream = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %0, i32 0, i32 19, !dbg !4011
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream, i32 0, i32 2, !dbg !4012
  %1 = load i64, ptr %total_in, align 8, !dbg !4012, !tbaa !4013
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !4014, !tbaa !2134
  %zin = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %2, i32 0, i32 16, !dbg !4015
  store i64 %1, ptr %zin, align 8, !dbg !4016, !tbaa !2389
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !4017, !tbaa !2134
  %zstream1 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %3, i32 0, i32 19, !dbg !4018
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream1, i32 0, i32 5, !dbg !4019
  %4 = load i64, ptr %total_out, align 8, !dbg !4019, !tbaa !4020
  %add = add i64 10, %4, !dbg !4021
  %add2 = add i64 %add, 8, !dbg !4022
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !4023, !tbaa !2134
  %zout = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %5, i32 0, i32 17, !dbg !4024
  store i64 %add2, ptr %zout, align 8, !dbg !4025, !tbaa !2356
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !4026, !tbaa !2134
  %zstream3 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %6, i32 0, i32 19, !dbg !4027
  %call = call i32 @deflateEnd(ptr noundef %zstream3), !dbg !4028
  store i32 %call, ptr %rc, align 4, !dbg !4029, !tbaa !2752
  %7 = load i32, ptr %rc, align 4, !dbg !4030, !tbaa !2752
  %cmp = icmp ne i32 %7, 0, !dbg !4032
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4033

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %r.addr, align 8, !dbg !4034, !tbaa !2134
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 1, !dbg !4034
  %9 = load ptr, ptr %connection, align 8, !dbg !4034, !tbaa !2706
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %9, i32 0, i32 10, !dbg !4034
  %10 = load ptr, ptr %log, align 8, !dbg !4034, !tbaa !3261
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %10, i32 0, i32 0, !dbg !4034
  %11 = load i64, ptr %log_level, align 8, !dbg !4034, !tbaa !3265
  %cmp4 = icmp uge i64 %11, 2, !dbg !4034
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !4037

if.then5:                                         ; preds = %if.then
  %12 = load ptr, ptr %r.addr, align 8, !dbg !4034, !tbaa !2134
  %connection6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %12, i32 0, i32 1, !dbg !4034
  %13 = load ptr, ptr %connection6, align 8, !dbg !4034, !tbaa !2706
  %log7 = getelementptr inbounds %struct.ngx_connection_s, ptr %13, i32 0, i32 10, !dbg !4034
  %14 = load ptr, ptr %log7, align 8, !dbg !4034, !tbaa !3261
  %15 = load i32, ptr %rc, align 4, !dbg !4034, !tbaa !2752
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %14, i32 noundef 0, ptr noundef @.str.9, i32 noundef %15), !dbg !4034
  br label %if.end, !dbg !4034

if.end:                                           ; preds = %if.then5, %if.then
  store i64 -1, ptr %retval, align 8, !dbg !4038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4038

if.end8:                                          ; preds = %entry
  %16 = load ptr, ptr %r.addr, align 8, !dbg !4039, !tbaa !2134
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 11, !dbg !4040
  %17 = load ptr, ptr %pool, align 8, !dbg !4040, !tbaa !2373
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !4041, !tbaa !2134
  %preallocated = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %18, i32 0, i32 10, !dbg !4042
  %19 = load ptr, ptr %preallocated, align 8, !dbg !4042, !tbaa !2676
  %call9 = call i64 @ngx_pfree(ptr noundef %17, ptr noundef %19), !dbg !4043
  %20 = load ptr, ptr %r.addr, align 8, !dbg !4044, !tbaa !2134
  %pool10 = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 11, !dbg !4045
  %21 = load ptr, ptr %pool10, align 8, !dbg !4045, !tbaa !2373
  %call11 = call ptr @ngx_alloc_chain_link(ptr noundef %21), !dbg !4046
  store ptr %call11, ptr %cl, align 8, !dbg !4047, !tbaa !2134
  %22 = load ptr, ptr %cl, align 8, !dbg !4048, !tbaa !2134
  %cmp12 = icmp eq ptr %22, null, !dbg !4050
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4051

if.then13:                                        ; preds = %if.end8
  store i64 -1, ptr %retval, align 8, !dbg !4052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4052

if.end14:                                         ; preds = %if.end8
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !4054, !tbaa !2134
  %out_buf = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %23, i32 0, i32 8, !dbg !4055
  %24 = load ptr, ptr %out_buf, align 8, !dbg !4055, !tbaa !3477
  %25 = load ptr, ptr %cl, align 8, !dbg !4056, !tbaa !2134
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %25, i32 0, i32 0, !dbg !4057
  store ptr %24, ptr %buf, align 8, !dbg !4058, !tbaa !3073
  %26 = load ptr, ptr %cl, align 8, !dbg !4059, !tbaa !2134
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %26, i32 0, i32 1, !dbg !4060
  store ptr null, ptr %next, align 8, !dbg !4061, !tbaa !3090
  %27 = load ptr, ptr %cl, align 8, !dbg !4062, !tbaa !2134
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !4063, !tbaa !2134
  %last_out = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %28, i32 0, i32 4, !dbg !4064
  %29 = load ptr, ptr %last_out, align 8, !dbg !4064, !tbaa !2858
  store ptr %27, ptr %29, align 8, !dbg !4065, !tbaa !2134
  %30 = load ptr, ptr %cl, align 8, !dbg !4066, !tbaa !2134
  %next15 = getelementptr inbounds %struct.ngx_chain_s, ptr %30, i32 0, i32 1, !dbg !4067
  %31 = load ptr, ptr %ctx.addr, align 8, !dbg !4068, !tbaa !2134
  %last_out16 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %31, i32 0, i32 4, !dbg !4069
  store ptr %next15, ptr %last_out16, align 8, !dbg !4070, !tbaa !2858
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !4071, !tbaa !2134
  %zstream17 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %32, i32 0, i32 19, !dbg !4073
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %zstream17, i32 0, i32 4, !dbg !4074
  %33 = load i32, ptr %avail_out, align 8, !dbg !4074, !tbaa !3457
  %cmp18 = icmp uge i32 %33, 8, !dbg !4075
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !4076

if.then19:                                        ; preds = %if.end14
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !4077, !tbaa !2134
  %out_buf20 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %34, i32 0, i32 8, !dbg !4079
  %35 = load ptr, ptr %out_buf20, align 8, !dbg !4079, !tbaa !3477
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 1, !dbg !4080
  %36 = load ptr, ptr %last, align 8, !dbg !4080, !tbaa !3076
  store ptr %36, ptr %trailer, align 8, !dbg !4081, !tbaa !2134
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !4082, !tbaa !2134
  %out_buf21 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %37, i32 0, i32 8, !dbg !4083
  %38 = load ptr, ptr %out_buf21, align 8, !dbg !4083, !tbaa !3477
  %last22 = getelementptr inbounds %struct.ngx_buf_s, ptr %38, i32 0, i32 1, !dbg !4084
  %39 = load ptr, ptr %last22, align 8, !dbg !4085, !tbaa !3076
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 8, !dbg !4085
  store ptr %add.ptr, ptr %last22, align 8, !dbg !4085, !tbaa !3076
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !4086, !tbaa !2134
  %out_buf23 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %40, i32 0, i32 8, !dbg !4087
  %41 = load ptr, ptr %out_buf23, align 8, !dbg !4087, !tbaa !3477
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %41, i32 0, i32 9, !dbg !4088
  %bf.load = load i16, ptr %last_buf, align 8, !dbg !4089
  %bf.clear = and i16 %bf.load, -129, !dbg !4089
  %bf.set = or i16 %bf.clear, 128, !dbg !4089
  store i16 %bf.set, ptr %last_buf, align 8, !dbg !4089
  br label %if.end45, !dbg !4090

if.else:                                          ; preds = %if.end14
  %42 = load ptr, ptr %r.addr, align 8, !dbg !4091, !tbaa !2134
  %pool24 = getelementptr inbounds %struct.ngx_http_request_s, ptr %42, i32 0, i32 11, !dbg !4093
  %43 = load ptr, ptr %pool24, align 8, !dbg !4093, !tbaa !2373
  %call25 = call ptr @ngx_create_temp_buf(ptr noundef %43, i64 noundef 8), !dbg !4094
  store ptr %call25, ptr %b, align 8, !dbg !4095, !tbaa !2134
  %44 = load ptr, ptr %b, align 8, !dbg !4096, !tbaa !2134
  %cmp26 = icmp eq ptr %44, null, !dbg !4098
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !4099

if.then27:                                        ; preds = %if.else
  store i64 -1, ptr %retval, align 8, !dbg !4100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4100

if.end28:                                         ; preds = %if.else
  %45 = load ptr, ptr %b, align 8, !dbg !4102, !tbaa !2134
  %last_buf29 = getelementptr inbounds %struct.ngx_buf_s, ptr %45, i32 0, i32 9, !dbg !4103
  %bf.load30 = load i16, ptr %last_buf29, align 8, !dbg !4104
  %bf.clear31 = and i16 %bf.load30, -129, !dbg !4104
  %bf.set32 = or i16 %bf.clear31, 128, !dbg !4104
  store i16 %bf.set32, ptr %last_buf29, align 8, !dbg !4104
  %46 = load ptr, ptr %r.addr, align 8, !dbg !4105, !tbaa !2134
  %pool33 = getelementptr inbounds %struct.ngx_http_request_s, ptr %46, i32 0, i32 11, !dbg !4106
  %47 = load ptr, ptr %pool33, align 8, !dbg !4106, !tbaa !2373
  %call34 = call ptr @ngx_alloc_chain_link(ptr noundef %47), !dbg !4107
  store ptr %call34, ptr %cl, align 8, !dbg !4108, !tbaa !2134
  %48 = load ptr, ptr %cl, align 8, !dbg !4109, !tbaa !2134
  %cmp35 = icmp eq ptr %48, null, !dbg !4111
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !4112

if.then36:                                        ; preds = %if.end28
  store i64 -1, ptr %retval, align 8, !dbg !4113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4113

if.end37:                                         ; preds = %if.end28
  %49 = load ptr, ptr %b, align 8, !dbg !4115, !tbaa !2134
  %50 = load ptr, ptr %cl, align 8, !dbg !4116, !tbaa !2134
  %buf38 = getelementptr inbounds %struct.ngx_chain_s, ptr %50, i32 0, i32 0, !dbg !4117
  store ptr %49, ptr %buf38, align 8, !dbg !4118, !tbaa !3073
  %51 = load ptr, ptr %cl, align 8, !dbg !4119, !tbaa !2134
  %next39 = getelementptr inbounds %struct.ngx_chain_s, ptr %51, i32 0, i32 1, !dbg !4120
  store ptr null, ptr %next39, align 8, !dbg !4121, !tbaa !3090
  %52 = load ptr, ptr %cl, align 8, !dbg !4122, !tbaa !2134
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !4123, !tbaa !2134
  %last_out40 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %53, i32 0, i32 4, !dbg !4124
  %54 = load ptr, ptr %last_out40, align 8, !dbg !4124, !tbaa !2858
  store ptr %52, ptr %54, align 8, !dbg !4125, !tbaa !2134
  %55 = load ptr, ptr %cl, align 8, !dbg !4126, !tbaa !2134
  %next41 = getelementptr inbounds %struct.ngx_chain_s, ptr %55, i32 0, i32 1, !dbg !4127
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !4128, !tbaa !2134
  %last_out42 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %56, i32 0, i32 4, !dbg !4129
  store ptr %next41, ptr %last_out42, align 8, !dbg !4130, !tbaa !2858
  %57 = load ptr, ptr %b, align 8, !dbg !4131, !tbaa !2134
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %57, i32 0, i32 0, !dbg !4132
  %58 = load ptr, ptr %pos, align 8, !dbg !4132, !tbaa !3081
  store ptr %58, ptr %trailer, align 8, !dbg !4133, !tbaa !2134
  %59 = load ptr, ptr %b, align 8, !dbg !4134, !tbaa !2134
  %last43 = getelementptr inbounds %struct.ngx_buf_s, ptr %59, i32 0, i32 1, !dbg !4135
  %60 = load ptr, ptr %last43, align 8, !dbg !4136, !tbaa !3076
  %add.ptr44 = getelementptr inbounds i8, ptr %60, i64 8, !dbg !4136
  store ptr %add.ptr44, ptr %last43, align 8, !dbg !4136, !tbaa !3076
  br label %if.end45

if.end45:                                         ; preds = %if.end37, %if.then19
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !4137, !tbaa !2134
  %crc32 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %61, i32 0, i32 18, !dbg !4138
  %62 = load i32, ptr %crc32, align 8, !dbg !4138, !tbaa !3278
  %63 = load ptr, ptr %trailer, align 8, !dbg !4139, !tbaa !2134
  %crc3246 = getelementptr inbounds %struct.gztrailer, ptr %63, i32 0, i32 0, !dbg !4140
  store i32 %62, ptr %crc3246, align 4, !dbg !4141, !tbaa !4142
  %64 = load ptr, ptr %ctx.addr, align 8, !dbg !4144, !tbaa !2134
  %zin47 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %64, i32 0, i32 16, !dbg !4145
  %65 = load i64, ptr %zin47, align 8, !dbg !4145, !tbaa !2389
  %conv = trunc i64 %65 to i32, !dbg !4144
  %66 = load ptr, ptr %trailer, align 8, !dbg !4146, !tbaa !2134
  %zlen = getelementptr inbounds %struct.gztrailer, ptr %66, i32 0, i32 1, !dbg !4147
  store i32 %conv, ptr %zlen, align 4, !dbg !4148, !tbaa !4149
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !4150, !tbaa !2134
  %zstream48 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %67, i32 0, i32 19, !dbg !4151
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %zstream48, i32 0, i32 1, !dbg !4152
  store i32 0, ptr %avail_in, align 8, !dbg !4153, !tbaa !3303
  %68 = load ptr, ptr %ctx.addr, align 8, !dbg !4154, !tbaa !2134
  %zstream49 = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %68, i32 0, i32 19, !dbg !4155
  %avail_out50 = getelementptr inbounds %struct.z_stream_s, ptr %zstream49, i32 0, i32 4, !dbg !4156
  store i32 0, ptr %avail_out50, align 8, !dbg !4157, !tbaa !3457
  %69 = load ptr, ptr %ctx.addr, align 8, !dbg !4158, !tbaa !2134
  %done = getelementptr inbounds %struct.ngx_http_gzip_ctx_t, ptr %69, i32 0, i32 15, !dbg !4159
  %bf.load51 = load i16, ptr %done, align 8, !dbg !4160
  %bf.clear52 = and i16 %bf.load51, -33, !dbg !4160
  %bf.set53 = or i16 %bf.clear52, 32, !dbg !4160
  store i16 %bf.set53, ptr %done, align 8, !dbg !4160
  %70 = load ptr, ptr %r.addr, align 8, !dbg !4161, !tbaa !2134
  %connection54 = getelementptr inbounds %struct.ngx_http_request_s, ptr %70, i32 0, i32 1, !dbg !4162
  %71 = load ptr, ptr %connection54, align 8, !dbg !4162, !tbaa !2706
  %buffered = getelementptr inbounds %struct.ngx_connection_s, ptr %71, i32 0, i32 26, !dbg !4163
  %bf.load55 = load i32, ptr %buffered, align 8, !dbg !4164
  %bf.clear56 = and i32 %bf.load55, 255, !dbg !4164
  %and = and i32 %bf.clear56, -33, !dbg !4164
  %bf.load57 = load i32, ptr %buffered, align 8, !dbg !4164
  %bf.value = and i32 %and, 255, !dbg !4164
  %bf.clear58 = and i32 %bf.load57, -256, !dbg !4164
  %bf.set59 = or i32 %bf.clear58, %bf.value, !dbg !4164
  store i32 %bf.set59, ptr %buffered, align 8, !dbg !4164
  store i64 0, ptr %retval, align 8, !dbg !4165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4165

cleanup:                                          ; preds = %if.end45, %if.then36, %if.then27, %if.then13, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer) #5, !dbg !4166
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #5, !dbg !4166
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5, !dbg !4166
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !4166
  %72 = load i64, ptr %retval, align 8, !dbg !4166
  ret i64 %72, !dbg !4166
}

declare !dbg !4167 ptr @ngx_http_merge_types(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_flag_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_bufs_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_types_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_num_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_set_size_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_conf_check_num_bounds(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_gzip_window(ptr noundef %cf, ptr noundef %post, ptr noundef %data) #0 !dbg !4171 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %post.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %np = alloca ptr, align 8
  %wbits = alloca i64, align 8
  %wsize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !4173, metadata !DIExpression()), !dbg !4180
  store ptr %post, ptr %post.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %post.addr, metadata !4174, metadata !DIExpression()), !dbg !4181
  store ptr %data, ptr %data.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4175, metadata !DIExpression()), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #5, !dbg !4183
  tail call void @llvm.dbg.declare(metadata ptr %np, metadata !4176, metadata !DIExpression()), !dbg !4184
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4185, !tbaa !2134
  store ptr %0, ptr %np, align 8, !dbg !4184, !tbaa !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %wbits) #5, !dbg !4186
  tail call void @llvm.dbg.declare(metadata ptr %wbits, metadata !4178, metadata !DIExpression()), !dbg !4187
  call void @llvm.lifetime.start.p0(i64 8, ptr %wsize) #5, !dbg !4186
  tail call void @llvm.dbg.declare(metadata ptr %wsize, metadata !4179, metadata !DIExpression()), !dbg !4188
  store i64 15, ptr %wbits, align 8, !dbg !4189, !tbaa !2276
  store i64 32768, ptr %wsize, align 8, !dbg !4190, !tbaa !2276
  br label %for.cond, !dbg !4192

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %wsize, align 8, !dbg !4193, !tbaa !2276
  %cmp = icmp ugt i64 %1, 256, !dbg !4195
  br i1 %cmp, label %for.body, label %for.end, !dbg !4196

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %wsize, align 8, !dbg !4197, !tbaa !2276
  %3 = load ptr, ptr %np, align 8, !dbg !4200, !tbaa !2134
  %4 = load i64, ptr %3, align 8, !dbg !4201, !tbaa !2276
  %cmp1 = icmp eq i64 %2, %4, !dbg !4202
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4203

if.then:                                          ; preds = %for.body
  %5 = load i64, ptr %wbits, align 8, !dbg !4204, !tbaa !2276
  %6 = load ptr, ptr %np, align 8, !dbg !4206, !tbaa !2134
  store i64 %5, ptr %6, align 8, !dbg !4207, !tbaa !2276
  store ptr null, ptr %retval, align 8, !dbg !4208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4208

if.end:                                           ; preds = %for.body
  %7 = load i64, ptr %wbits, align 8, !dbg !4209, !tbaa !2276
  %dec = add i64 %7, -1, !dbg !4209
  store i64 %dec, ptr %wbits, align 8, !dbg !4209, !tbaa !2276
  br label %for.inc, !dbg !4210

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %wsize, align 8, !dbg !4211, !tbaa !2276
  %shr = lshr i64 %8, 1, !dbg !4211
  store i64 %shr, ptr %wsize, align 8, !dbg !4211, !tbaa !2276
  br label %for.cond, !dbg !4212, !llvm.loop !4213

for.end:                                          ; preds = %for.cond
  store ptr @.str.18, ptr %retval, align 8, !dbg !4215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4215

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wsize) #5, !dbg !4216
  call void @llvm.lifetime.end.p0(i64 8, ptr %wbits) #5, !dbg !4216
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #5, !dbg !4216
  %9 = load ptr, ptr %retval, align 8, !dbg !4216
  ret ptr %9, !dbg !4216
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_gzip_hash(ptr noundef %cf, ptr noundef %post, ptr noundef %data) #0 !dbg !4217 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %post.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %np = alloca ptr, align 8
  %memlevel = alloca i64, align 8
  %hsize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !4219, metadata !DIExpression()), !dbg !4225
  store ptr %post, ptr %post.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %post.addr, metadata !4220, metadata !DIExpression()), !dbg !4226
  store ptr %data, ptr %data.addr, align 8, !tbaa !2134
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4221, metadata !DIExpression()), !dbg !4227
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #5, !dbg !4228
  tail call void @llvm.dbg.declare(metadata ptr %np, metadata !4222, metadata !DIExpression()), !dbg !4229
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4230, !tbaa !2134
  store ptr %0, ptr %np, align 8, !dbg !4229, !tbaa !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %memlevel) #5, !dbg !4231
  tail call void @llvm.dbg.declare(metadata ptr %memlevel, metadata !4223, metadata !DIExpression()), !dbg !4232
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsize) #5, !dbg !4231
  tail call void @llvm.dbg.declare(metadata ptr %hsize, metadata !4224, metadata !DIExpression()), !dbg !4233
  store i64 9, ptr %memlevel, align 8, !dbg !4234, !tbaa !2276
  store i64 131072, ptr %hsize, align 8, !dbg !4235, !tbaa !2276
  br label %for.cond, !dbg !4237

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %hsize, align 8, !dbg !4238, !tbaa !2276
  %cmp = icmp ugt i64 %1, 256, !dbg !4240
  br i1 %cmp, label %for.body, label %for.end, !dbg !4241

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %hsize, align 8, !dbg !4242, !tbaa !2276
  %3 = load ptr, ptr %np, align 8, !dbg !4245, !tbaa !2134
  %4 = load i64, ptr %3, align 8, !dbg !4246, !tbaa !2276
  %cmp1 = icmp eq i64 %2, %4, !dbg !4247
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4248

if.then:                                          ; preds = %for.body
  %5 = load i64, ptr %memlevel, align 8, !dbg !4249, !tbaa !2276
  %6 = load ptr, ptr %np, align 8, !dbg !4251, !tbaa !2134
  store i64 %5, ptr %6, align 8, !dbg !4252, !tbaa !2276
  store ptr null, ptr %retval, align 8, !dbg !4253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4253

if.end:                                           ; preds = %for.body
  %7 = load i64, ptr %memlevel, align 8, !dbg !4254, !tbaa !2276
  %dec = add i64 %7, -1, !dbg !4254
  store i64 %dec, ptr %memlevel, align 8, !dbg !4254, !tbaa !2276
  br label %for.inc, !dbg !4255

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %hsize, align 8, !dbg !4256, !tbaa !2276
  %shr = lshr i64 %8, 1, !dbg !4256
  store i64 %shr, ptr %hsize, align 8, !dbg !4256, !tbaa !2276
  br label %for.cond, !dbg !4257, !llvm.loop !4258

for.end:                                          ; preds = %for.cond
  store ptr @.str.19, ptr %retval, align 8, !dbg !4260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4260

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsize) #5, !dbg !4261
  call void @llvm.lifetime.end.p0(i64 8, ptr %memlevel) #5, !dbg !4261
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #5, !dbg !4261
  %9 = load ptr, ptr %retval, align 8, !dbg !4261
  ret ptr %9, !dbg !4261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2105, !2106, !2107, !2108, !2109, !2110}
!llvm.ident = !{!2111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_gzip_filter_module.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2f427a9b07eb11e9c0c610c808cb0ba4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_gzip_filter_module_ctx", scope: !9, file: !2, line: 201, type: !2085, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !40, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !17, !23, !25, !26, !29, !38}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 90, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !19, line: 33, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !21, line: 31, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !24, line: 16, baseType: !16)
!24 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !19, line: 87, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 153, baseType: !28)
!28 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gztrailer", file: !2, line: 73, size: 64, elements: !31)
!31 = !{!32, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !30, file: !2, line: 74, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 42, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "zlen", scope: !30, file: !2, line: 75, baseType: !33, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 29, baseType: !15)
!39 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!40 = !{!0, !41, !7, !608, !613, !615, !620, !1910, !1915, !1920, !1922, !1928, !1933, !1938, !1943, !1948, !1953, !2030, !2035, !2037, !2040, !2045, !2047, !2052, !2057, !2059, !2062, !2074, !2076, !2078, !2080}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "ngx_http_gzip_filter_module", scope: !9, file: !2, line: 216, type: !43, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !44, line: 15, baseType: !45)
!44 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !46, line: 222, size: 1600, elements: !47)
!46 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!47 = !{!48, !49, !50, !52, !53, !54, !55, !58, !59, !583, !584, !588, !592, !593, !594, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !45, file: !46, line: 223, baseType: !11, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !45, file: !46, line: 224, baseType: !11, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !46, line: 226, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !45, file: !46, line: 228, baseType: !11, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !45, file: !46, line: 229, baseType: !11, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !45, file: !46, line: 231, baseType: !11, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !45, file: !46, line: 232, baseType: !56, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !45, file: !46, line: 234, baseType: !16, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !45, file: !46, line: 235, baseType: !60, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !44, line: 22, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !63, line: 77, size: 448, elements: !64)
!63 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!64 = !{!65, !72, !73, !580, !581, !582}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !63, line: 78, baseType: !66, size: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !67, line: 19, baseType: !68)
!67 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 16, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !68, file: !67, line: 17, baseType: !38, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !67, line: 18, baseType: !17, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !63, line: 79, baseType: !11, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !62, file: !63, line: 80, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!51, !77, !60, !16}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !44, line: 16, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !63, line: 116, size: 768, elements: !80)
!80 = !{!81, !82, !251, !562, !563, !564, !573, !574, !575, !576, !577, !579}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !63, line: 117, baseType: !51, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !79, file: !63, line: 118, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !85, line: 22, baseType: !86)
!85 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 16, size: 320, elements: !87)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !86, file: !85, line: 17, baseType: !16, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !86, file: !85, line: 18, baseType: !11, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !86, file: !85, line: 19, baseType: !38, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !86, file: !85, line: 20, baseType: !11, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !86, file: !85, line: 21, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !44, line: 18, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !96, line: 57, size: 640, elements: !97)
!96 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!97 = !{!98, !106, !107, !108, !231, !238, !250}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !95, file: !96, line: 58, baseType: !99, size: 256)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !96, line: 54, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 49, size: 256, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !100, file: !96, line: 50, baseType: !17, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !100, file: !96, line: 51, baseType: !17, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !96, line: 52, baseType: !93, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !100, file: !96, line: 53, baseType: !11, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !95, file: !96, line: 59, baseType: !38, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !95, file: !96, line: 60, baseType: !93, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !95, file: !96, line: 61, baseType: !109, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !44, line: 19, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !24, line: 59, size: 128, elements: !112)
!112 = !{!113, !230}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !111, file: !24, line: 60, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !24, line: 18, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !24, line: 20, size: 640, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !116, file: !24, line: 21, baseType: !17, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !116, file: !24, line: 22, baseType: !17, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !116, file: !24, line: 23, baseType: !26, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !116, file: !24, line: 24, baseType: !26, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !116, file: !24, line: 26, baseType: !17, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !116, file: !24, line: 27, baseType: !17, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !116, file: !24, line: 28, baseType: !23, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !116, file: !24, line: 29, baseType: !126, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !44, line: 23, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !129, line: 16, size: 1600, elements: !130)
!129 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!130 = !{!131, !134, !135, !174, !175, !176, !215, !216}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !128, file: !129, line: 17, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !133, line: 16, baseType: !25)
!133 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !129, line: 18, baseType: !66, size: 128, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !128, file: !129, line: 19, baseType: !136, size: 1152, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !133, line: 17, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !138, line: 26, size: 1152, elements: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!139 = !{!140, !142, !144, !146, !148, !150, !152, !153, !154, !156, !158, !160, !168, !169, !170}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !137, file: !138, line: 31, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !21, line: 145, baseType: !15)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !137, file: !138, line: 36, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !21, line: 148, baseType: !15)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !137, file: !138, line: 44, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !21, line: 151, baseType: !15)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !137, file: !138, line: 45, baseType: !147, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !21, line: 150, baseType: !36)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !137, file: !138, line: 47, baseType: !149, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !21, line: 146, baseType: !36)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !137, file: !138, line: 48, baseType: !151, size: 32, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !21, line: 147, baseType: !36)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !137, file: !138, line: 50, baseType: !25, size: 32, offset: 288)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !137, file: !138, line: 52, baseType: !141, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !137, file: !138, line: 57, baseType: !155, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 152, baseType: !28)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !137, file: !138, line: 61, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !21, line: 175, baseType: !28)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !137, file: !138, line: 63, baseType: !159, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !21, line: 180, baseType: !28)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !137, file: !138, line: 74, baseType: !161, size: 128, offset: 576)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !162, line: 11, size: 128, elements: !163)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!163 = !{!164, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !161, file: !162, line: 16, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !21, line: 160, baseType: !28)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !161, file: !162, line: 21, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !21, line: 197, baseType: !28)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !137, file: !138, line: 75, baseType: !161, size: 128, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !137, file: !138, line: 76, baseType: !161, size: 128, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !137, file: !138, line: 89, baseType: !171, size: 192, offset: 960)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 192, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 3)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !128, file: !129, line: 21, baseType: !26, size: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !128, file: !129, line: 22, baseType: !26, size: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !128, file: !129, line: 24, baseType: !177, size: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !44, line: 20, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !180, line: 50, size: 640, elements: !181)
!180 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!181 = !{!182, !183, !195, !198, !201, !206, !207, !212, !213, !214}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !179, file: !180, line: 51, baseType: !11, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !179, file: !180, line: 52, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !44, line: 21, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !63, line: 89, size: 320, elements: !187)
!187 = !{!188, !189, !190, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !186, file: !63, line: 90, baseType: !132, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !63, line: 91, baseType: !66, size: 128, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !186, file: !63, line: 93, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !184, !177}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !63, line: 94, baseType: !16, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !179, file: !180, line: 54, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !197, line: 98, baseType: !15)
!197 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !179, file: !180, line: 56, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !200, line: 10, baseType: !165)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!201 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !179, file: !180, line: 58, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !180, line: 45, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!17, !177, !17, !38}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !179, file: !180, line: 59, baseType: !16, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !179, file: !180, line: 61, baseType: !208, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !180, line: 46, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !177, !11, !17, !38}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !179, file: !180, line: 62, baseType: !16, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !179, file: !180, line: 70, baseType: !51, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !180, line: 72, baseType: !177, size: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !128, file: !129, line: 37, baseType: !36, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !128, file: !129, line: 38, baseType: !36, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !116, file: !24, line: 30, baseType: !114, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !116, file: !24, line: 34, baseType: !36, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !116, file: !24, line: 40, baseType: !36, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !116, file: !24, line: 43, baseType: !36, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !116, file: !24, line: 45, baseType: !36, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !116, file: !24, line: 46, baseType: !36, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !116, file: !24, line: 47, baseType: !36, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !116, file: !24, line: 48, baseType: !36, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !116, file: !24, line: 49, baseType: !36, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !116, file: !24, line: 50, baseType: !36, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !116, file: !24, line: 52, baseType: !36, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !116, file: !24, line: 53, baseType: !36, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !116, file: !24, line: 55, baseType: !25, size: 32, offset: 608)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !24, line: 61, baseType: !109, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !95, file: !96, line: 62, baseType: !232, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !96, line: 41, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !96, line: 43, size: 128, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !96, line: 44, baseType: !232, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !234, file: !96, line: 45, baseType: !16, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !95, file: !96, line: 63, baseType: !239, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !96, line: 32, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !96, line: 34, size: 192, elements: !242)
!242 = !{!243, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !241, file: !96, line: 35, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !96, line: 30, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !16}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !241, file: !96, line: 36, baseType: !16, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !96, line: 37, baseType: !239, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !95, file: !96, line: 64, baseType: !177, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !79, file: !63, line: 120, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !44, line: 17, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !255, line: 47, size: 5184, elements: !256)
!255 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!256 = !{!257, !261, !262, !263, !264, !265, !511, !512, !513, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !560, !561}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !254, file: !255, line: 48, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !254, file: !255, line: 49, baseType: !93, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !254, file: !255, line: 51, baseType: !177, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !254, file: !255, line: 52, baseType: !178, size: 640, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !254, file: !255, line: 54, baseType: !11, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !254, file: !255, line: 56, baseType: !266, size: 64, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !44, line: 26, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !270, line: 124, size: 1920, elements: !271)
!270 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!271 = !{!272, !273, !330, !331, !334, !342, !344, !349, !354, !433, !434, !435, !436, !437, !438, !439, !440, !441, !446, !487, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !269, file: !270, line: 125, baseType: !16, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !269, file: !270, line: 126, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !44, line: 24, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !277, line: 30, size: 768, elements: !278)
!277 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !307, !308, !309, !322}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !276, file: !277, line: 31, baseType: !16, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !276, file: !277, line: 33, baseType: !36, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !276, file: !277, line: 35, baseType: !36, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !276, file: !277, line: 38, baseType: !36, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !276, file: !277, line: 44, baseType: !36, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !276, file: !277, line: 46, baseType: !36, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !276, file: !277, line: 49, baseType: !36, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !276, file: !277, line: 51, baseType: !36, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !276, file: !277, line: 54, baseType: !36, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !276, file: !277, line: 56, baseType: !36, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !276, file: !277, line: 57, baseType: !36, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !276, file: !277, line: 59, baseType: !36, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !276, file: !277, line: 60, baseType: !36, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !276, file: !277, line: 62, baseType: !36, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !276, file: !277, line: 64, baseType: !36, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !276, file: !277, line: 67, baseType: !36, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !276, file: !277, line: 69, baseType: !36, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !276, file: !277, line: 71, baseType: !36, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !276, file: !277, line: 74, baseType: !36, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !276, file: !277, line: 75, baseType: !36, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !276, file: !277, line: 77, baseType: !36, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !276, file: !277, line: 80, baseType: !36, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !276, file: !277, line: 110, baseType: !36, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !276, file: !277, line: 113, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !44, line: 32, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !274}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !276, file: !277, line: 120, baseType: !11, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !276, file: !277, line: 122, baseType: !177, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !276, file: !277, line: 124, baseType: !310, size: 320, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !311, line: 20, baseType: !312)
!311 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !311, line: 22, size: 320, elements: !313)
!313 = !{!314, !316, !318, !319, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !312, file: !311, line: 23, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !311, line: 16, baseType: !11)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !312, file: !311, line: 24, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !312, file: !311, line: 25, baseType: !317, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !312, file: !311, line: 26, baseType: !317, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !312, file: !311, line: 27, baseType: !18, size: 8, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !312, file: !311, line: 28, baseType: !18, size: 8, offset: 264)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !276, file: !277, line: 127, baseType: !323, size: 128, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !324, line: 16, baseType: !325)
!324 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !324, line: 18, size: 128, elements: !326)
!326 = !{!327, !329}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !325, file: !324, line: 19, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !324, line: 20, baseType: !328, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !269, file: !270, line: 127, baseType: !274, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !269, file: !270, line: 129, baseType: !332, size: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !333, line: 17, baseType: !25)
!333 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !269, file: !270, line: 131, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !336, line: 19, baseType: !337)
!336 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !267, !17, !38}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 108, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 194, baseType: !28)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !269, file: !270, line: 132, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !336, line: 22, baseType: !337)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !269, file: !270, line: 133, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !336, line: 20, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!340, !267, !109, !26}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !269, file: !270, line: 134, baseType: !350, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !336, line: 23, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!109, !267, !109, !26}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !269, file: !270, line: 136, baseType: !355, size: 64, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !270, line: 16, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !270, line: 18, size: 2432, elements: !358)
!358 = !{!359, !360, !373, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !391, !392, !393, !394, !395, !396, !399, !400, !401, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !357, file: !270, line: 19, baseType: !332, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !357, file: !270, line: 21, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !363, line: 180, size: 128, elements: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!364 = !{!365, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !362, file: !363, line: 182, baseType: !366, size: 16)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !367, line: 28, baseType: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!368 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !362, file: !363, line: 183, baseType: !370, size: 112, offset: 16)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 14)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !357, file: !270, line: 22, baseType: !374, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !375, line: 274, baseType: !376)
!375 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !21, line: 210, baseType: !36)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !357, file: !270, line: 23, baseType: !38, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !357, file: !270, line: 24, baseType: !66, size: 128, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !357, file: !270, line: 26, baseType: !25, size: 32, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !357, file: !270, line: 28, baseType: !25, size: 32, offset: 416)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !357, file: !270, line: 29, baseType: !25, size: 32, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !357, file: !270, line: 30, baseType: !25, size: 32, offset: 480)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !357, file: !270, line: 32, baseType: !25, size: 32, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !357, file: !270, line: 33, baseType: !25, size: 32, offset: 544)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !357, file: !270, line: 34, baseType: !25, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !357, file: !270, line: 38, baseType: !387, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !44, line: 33, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !267}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !357, file: !270, line: 40, baseType: !16, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !357, file: !270, line: 42, baseType: !178, size: 640, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !357, file: !270, line: 43, baseType: !177, size: 64, offset: 1408)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !357, file: !270, line: 45, baseType: !38, size: 64, offset: 1472)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !357, file: !270, line: 47, baseType: !38, size: 64, offset: 1536)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !357, file: !270, line: 49, baseType: !397, size: 64, offset: 1600)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !398, line: 16, baseType: !315)
!398 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !357, file: !270, line: 51, baseType: !355, size: 64, offset: 1664)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !357, file: !270, line: 52, baseType: !267, size: 64, offset: 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !357, file: !270, line: 54, baseType: !402, size: 192, offset: 1792)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !311, line: 32, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !311, line: 37, size: 192, elements: !404)
!404 = !{!405, !406, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !403, file: !311, line: 38, baseType: !317, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !403, file: !311, line: 39, baseType: !317, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !403, file: !311, line: 40, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !311, line: 34, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !317, !317, !317}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !357, file: !270, line: 55, baseType: !310, size: 320, offset: 1984)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !357, file: !270, line: 57, baseType: !11, size: 64, offset: 2304)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !357, file: !270, line: 59, baseType: !36, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !357, file: !270, line: 60, baseType: !36, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !357, file: !270, line: 61, baseType: !36, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !357, file: !270, line: 63, baseType: !36, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !357, file: !270, line: 64, baseType: !36, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !357, file: !270, line: 65, baseType: !36, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !357, file: !270, line: 66, baseType: !36, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !357, file: !270, line: 67, baseType: !36, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !357, file: !270, line: 68, baseType: !36, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !357, file: !270, line: 69, baseType: !36, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !357, file: !270, line: 70, baseType: !36, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !357, file: !270, line: 73, baseType: !36, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !357, file: !270, line: 75, baseType: !36, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !357, file: !270, line: 76, baseType: !36, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !357, file: !270, line: 77, baseType: !36, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !357, file: !270, line: 79, baseType: !36, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !357, file: !270, line: 80, baseType: !36, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !357, file: !270, line: 81, baseType: !36, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !357, file: !270, line: 90, baseType: !25, size: 32, offset: 2400)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !269, file: !270, line: 138, baseType: !26, size: 64, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !269, file: !270, line: 140, baseType: !177, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !269, file: !270, line: 142, baseType: !93, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !269, file: !270, line: 144, baseType: !25, size: 32, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !269, file: !270, line: 146, baseType: !361, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !269, file: !270, line: 147, baseType: !374, size: 32, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !269, file: !270, line: 148, baseType: !66, size: 128, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !269, file: !270, line: 150, baseType: !66, size: 128, offset: 1088)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !269, file: !270, line: 151, baseType: !442, size: 16, offset: 1216)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !443, line: 123, baseType: !444)
!443 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !34, line: 25, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 40, baseType: !368)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !269, file: !270, line: 154, baseType: !447, size: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !44, line: 29, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !450, line: 74, size: 704, elements: !451)
!450 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!451 = !{!452, !457, !461, !465, !466, !467, !468, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !449, file: !450, line: 75, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !455, line: 184, baseType: !456)
!455 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !455, line: 184, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !449, file: !450, line: 76, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !455, line: 185, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !455, line: 185, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !449, file: !450, line: 78, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !12, line: 78, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !375, line: 267, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !21, line: 207, baseType: !28)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !449, file: !450, line: 79, baseType: !114, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !449, file: !450, line: 80, baseType: !38, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !449, file: !450, line: 82, baseType: !387, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !449, file: !450, line: 84, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !471, line: 231, baseType: !472)
!471 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !471, line: 231, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !449, file: !450, line: 85, baseType: !387, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !449, file: !450, line: 87, baseType: !303, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !449, file: !450, line: 88, baseType: !303, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !449, file: !450, line: 90, baseType: !18, size: 8, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !449, file: !450, line: 92, baseType: !36, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !449, file: !450, line: 93, baseType: !36, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !449, file: !450, line: 94, baseType: !36, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !449, file: !450, line: 95, baseType: !36, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !449, file: !450, line: 96, baseType: !36, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !449, file: !450, line: 97, baseType: !36, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !449, file: !450, line: 98, baseType: !36, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !449, file: !450, line: 99, baseType: !36, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !449, file: !450, line: 100, baseType: !36, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !449, file: !450, line: 101, baseType: !36, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !269, file: !270, line: 157, baseType: !488, size: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !44, line: 30, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !44, line: 30, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !269, file: !270, line: 159, baseType: !361, size: 64, offset: 1408)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !269, file: !270, line: 160, baseType: !374, size: 32, offset: 1472)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !269, file: !270, line: 162, baseType: !114, size: 64, offset: 1536)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !269, file: !270, line: 164, baseType: !323, size: 128, offset: 1600)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !269, file: !270, line: 166, baseType: !196, size: 64, offset: 1728)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !269, file: !270, line: 168, baseType: !11, size: 64, offset: 1792)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !269, file: !270, line: 170, baseType: !36, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !269, file: !270, line: 172, baseType: !36, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !269, file: !270, line: 174, baseType: !36, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !269, file: !270, line: 175, baseType: !36, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !269, file: !270, line: 176, baseType: !36, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !269, file: !270, line: 178, baseType: !36, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !269, file: !270, line: 179, baseType: !36, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !269, file: !270, line: 180, baseType: !36, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !269, file: !270, line: 181, baseType: !36, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !269, file: !270, line: 183, baseType: !36, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !269, file: !270, line: 184, baseType: !36, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !269, file: !270, line: 185, baseType: !36, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !269, file: !270, line: 186, baseType: !36, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !269, file: !270, line: 188, baseType: !36, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !254, file: !255, line: 57, baseType: !267, size: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !254, file: !255, line: 58, baseType: !11, size: 64, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !254, file: !255, line: 60, baseType: !514, size: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !254, file: !255, line: 61, baseType: !11, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !254, file: !255, line: 62, baseType: !11, size: 64, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !254, file: !255, line: 64, baseType: !323, size: 128, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !254, file: !255, line: 65, baseType: !11, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !254, file: !255, line: 67, baseType: !84, size: 320, offset: 1472)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !254, file: !255, line: 68, baseType: !84, size: 320, offset: 1792)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !254, file: !255, line: 70, baseType: !84, size: 320, offset: 2112)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !254, file: !255, line: 71, baseType: !402, size: 192, offset: 2432)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !254, file: !255, line: 72, baseType: !310, size: 320, offset: 2624)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !254, file: !255, line: 74, baseType: !526, size: 448, offset: 2944)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !527, line: 31, baseType: !528)
!527 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 25, size: 448, elements: !529)
!529 = !{!530, !538, !539, !540, !541}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !528, file: !527, line: 26, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !527, line: 16, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !527, line: 18, size: 192, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !533, file: !527, line: 19, baseType: !16, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !533, file: !527, line: 20, baseType: !11, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !527, line: 21, baseType: !531, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !528, file: !527, line: 27, baseType: !532, size: 192, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !528, file: !527, line: 28, baseType: !38, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !528, file: !527, line: 29, baseType: !11, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !528, file: !527, line: 30, baseType: !93, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !254, file: !255, line: 75, baseType: !526, size: 448, offset: 3392)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !254, file: !255, line: 77, baseType: !11, size: 64, offset: 3840)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !254, file: !255, line: 78, baseType: !11, size: 64, offset: 3904)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !254, file: !255, line: 80, baseType: !267, size: 64, offset: 3968)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !254, file: !255, line: 81, baseType: !274, size: 64, offset: 4032)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !254, file: !255, line: 82, baseType: !274, size: 64, offset: 4096)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !254, file: !255, line: 84, baseType: !252, size: 64, offset: 4160)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !254, file: !255, line: 86, baseType: !66, size: 128, offset: 4224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !254, file: !255, line: 87, baseType: !66, size: 128, offset: 4352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !254, file: !255, line: 88, baseType: !66, size: 128, offset: 4480)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !254, file: !255, line: 89, baseType: !66, size: 128, offset: 4608)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !254, file: !255, line: 90, baseType: !66, size: 128, offset: 4736)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !254, file: !255, line: 91, baseType: !66, size: 128, offset: 4864)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !254, file: !255, line: 93, baseType: !556, size: 64, offset: 4992)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !255, line: 34, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!462, !177, !11, !17, !38}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !254, file: !255, line: 94, baseType: !16, size: 64, offset: 5056)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !254, file: !255, line: 95, baseType: !36, size: 32, offset: 5120)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !79, file: !63, line: 121, baseType: !93, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !79, file: !63, line: 122, baseType: !93, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !79, file: !63, line: 123, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !63, line: 103, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 98, size: 1792, elements: !568)
!568 = !{!569, !570, !571, !572}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !567, file: !63, line: 99, baseType: !127, size: 1600)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !567, file: !63, line: 100, baseType: !114, size: 64, offset: 1600)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !567, file: !63, line: 101, baseType: !114, size: 64, offset: 1664)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !567, file: !63, line: 102, baseType: !11, size: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !79, file: !63, line: 124, baseType: !177, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !79, file: !63, line: 126, baseType: !16, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !79, file: !63, line: 127, baseType: !11, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !79, file: !63, line: 128, baseType: !11, size: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !79, file: !63, line: 130, baseType: !578, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !63, line: 112, baseType: !74)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !79, file: !63, line: 131, baseType: !16, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !62, file: !63, line: 81, baseType: !11, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !62, file: !63, line: 82, baseType: !11, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !62, file: !63, line: 83, baseType: !16, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !45, file: !46, line: 236, baseType: !11, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !45, file: !46, line: 238, baseType: !585, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!462, !177}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !45, file: !46, line: 240, baseType: !589, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!462, !252}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !45, file: !46, line: 242, baseType: !589, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !45, file: !46, line: 243, baseType: !589, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !45, file: !46, line: 244, baseType: !595, size: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !252}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !45, file: !46, line: 245, baseType: !595, size: 64, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !45, file: !46, line: 247, baseType: !595, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !45, file: !46, line: 249, baseType: !13, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !45, file: !46, line: 250, baseType: !13, size: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !45, file: !46, line: 251, baseType: !13, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !45, file: !46, line: 252, baseType: !13, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !45, file: !46, line: 253, baseType: !13, size: 64, offset: 1344)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !45, file: !46, line: 254, baseType: !13, size: 64, offset: 1408)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !45, file: !46, line: 255, baseType: !13, size: 64, offset: 1472)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !45, file: !46, line: 256, baseType: !13, size: 64, offset: 1536)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 11)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "ngx_http_gzip_ratio", scope: !9, file: !2, line: 232, type: !66, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1146, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 10)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "ngx_http_next_header_filter", scope: !9, file: !2, line: 234, type: !622, isLocal: true, isDefinition: true)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_header_filter_pt", file: !623, line: 512, baseType: !624)
!623 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!462, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !629, line: 16, baseType: !630)
!629 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !631, line: 371, size: 11456, elements: !632)
!631 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!632 = !{!633, !634, !635, !636, !637, !638, !639, !644, !645, !861, !1455, !1456, !1457, !1458, !1500, !1532, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1578, !1589, !1596, !1597, !1599, !1600, !1613, !1614, !1615, !1616, !1617, !1618, !1803, !1807, !1812, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !630, file: !631, line: 372, baseType: !33, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !630, file: !631, line: 374, baseType: !267, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !630, file: !631, line: 376, baseType: !260, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !630, file: !631, line: 377, baseType: !260, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !630, file: !631, line: 378, baseType: !260, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !630, file: !631, line: 379, baseType: !260, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !630, file: !631, line: 381, baseType: !640, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !631, line: 368, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !627}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !630, file: !631, line: 382, baseType: !640, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !630, file: !631, line: 385, baseType: !646, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !629, line: 18, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !649, line: 65, size: 4800, elements: !650)
!649 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!650 = !{!651, !652, !653, !654, !658, !659, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !819, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !648, file: !649, line: 66, baseType: !127, size: 1600)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !648, file: !649, line: 67, baseType: !84, size: 320, offset: 1600)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !648, file: !649, line: 68, baseType: !33, size: 32, offset: 1920)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !648, file: !649, line: 69, baseType: !655, size: 128, offset: 1952)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 16)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !648, file: !649, line: 70, baseType: !655, size: 128, offset: 2080)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !648, file: !649, line: 72, baseType: !660, size: 64, offset: 2240)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !133, line: 18, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !19, line: 49, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !21, line: 149, baseType: !15)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !648, file: !649, line: 73, baseType: !199, size: 64, offset: 2304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !648, file: !649, line: 74, baseType: !199, size: 64, offset: 2368)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !648, file: !649, line: 75, baseType: !199, size: 64, offset: 2432)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !648, file: !649, line: 76, baseType: !199, size: 64, offset: 2496)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !648, file: !649, line: 77, baseType: !199, size: 64, offset: 2560)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !648, file: !649, line: 79, baseType: !66, size: 128, offset: 2624)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !648, file: !649, line: 80, baseType: !66, size: 128, offset: 2752)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !648, file: !649, line: 81, baseType: !655, size: 128, offset: 2880)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !648, file: !649, line: 83, baseType: !38, size: 64, offset: 3008)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !648, file: !649, line: 84, baseType: !38, size: 64, offset: 3072)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !648, file: !649, line: 85, baseType: !26, size: 64, offset: 3136)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !648, file: !649, line: 86, baseType: !26, size: 64, offset: 3200)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !648, file: !649, line: 88, baseType: !11, size: 64, offset: 3264)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !648, file: !649, line: 89, baseType: !11, size: 64, offset: 3328)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !648, file: !649, line: 90, baseType: !11, size: 64, offset: 3392)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !648, file: !649, line: 91, baseType: !11, size: 64, offset: 3456)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !648, file: !649, line: 93, baseType: !114, size: 64, offset: 3520)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !648, file: !649, line: 95, baseType: !681, size: 64, offset: 3584)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !629, line: 19, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !649, line: 157, size: 1088, elements: !684)
!684 = !{!685, !700, !761, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !818}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !683, file: !649, line: 158, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !649, line: 154, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 145, size: 960, elements: !689)
!689 = !{!690, !691, !692, !693, !696, !697, !698, !699}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !688, file: !649, line: 146, baseType: !402, size: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !688, file: !649, line: 147, baseType: !310, size: 320, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !688, file: !649, line: 148, baseType: !323, size: 128, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !688, file: !649, line: 149, baseType: !694, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !197, line: 106, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !688, file: !649, line: 150, baseType: !694, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !688, file: !649, line: 151, baseType: !26, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !649, line: 152, baseType: !11, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !688, file: !649, line: 153, baseType: !11, size: 64, offset: 896)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !683, file: !649, line: 159, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !703, line: 59, baseType: !704)
!703 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 34, size: 1600, elements: !705)
!705 = !{!706, !713, !714, !715, !723, !724, !725, !734, !735, !736, !737, !756, !757, !758, !759, !760}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !703, line: 35, baseType: !707, size: 128)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !708, line: 21, baseType: !709)
!708 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 16, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !708, line: 17, baseType: !694, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !709, file: !708, line: 19, baseType: !694, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !704, file: !703, line: 37, baseType: !38, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !704, file: !703, line: 38, baseType: !38, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !704, file: !703, line: 40, baseType: !716, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !703, line: 16, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !703, line: 18, size: 192, elements: !719)
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !718, file: !703, line: 19, baseType: !13, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !703, line: 20, baseType: !716, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !718, file: !703, line: 21, baseType: !13, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !704, file: !703, line: 41, baseType: !716, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !704, file: !703, line: 42, baseType: !717, size: 192, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !704, file: !703, line: 44, baseType: !726, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !703, line: 31, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 25, size: 256, elements: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !728, file: !703, line: 26, baseType: !11, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !728, file: !703, line: 27, baseType: !11, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !728, file: !703, line: 29, baseType: !11, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !728, file: !703, line: 30, baseType: !11, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !704, file: !703, line: 45, baseType: !11, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !704, file: !703, line: 47, baseType: !17, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !704, file: !703, line: 48, baseType: !17, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !704, file: !703, line: 50, baseType: !738, size: 512, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !708, line: 37, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 24, size: 512, elements: !740)
!740 = !{!741, !743, !744, !745, !755}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !708, line: 26, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !739, file: !708, line: 28, baseType: !742, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !739, file: !708, line: 29, baseType: !11, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !739, file: !708, line: 30, baseType: !746, size: 256, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !747, line: 39, baseType: !748)
!747 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !747, line: 35, size: 256, elements: !749)
!749 = !{!750, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !748, file: !747, line: 37, baseType: !751, size: 256)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !748, file: !747, line: 38, baseType: !28, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !739, file: !708, line: 36, baseType: !11, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !704, file: !703, line: 52, baseType: !17, size: 64, offset: 1344)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !704, file: !703, line: 53, baseType: !18, size: 8, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !704, file: !703, line: 55, baseType: !36, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !704, file: !703, line: 57, baseType: !16, size: 64, offset: 1472)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !704, file: !703, line: 58, baseType: !16, size: 64, offset: 1536)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !683, file: !649, line: 161, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !129, line: 62, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 50, size: 768, elements: !765)
!765 = !{!766, !767, !768, !770, !775, !777, !779, !780, !781}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !764, file: !129, line: 51, baseType: !66, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !764, file: !129, line: 52, baseType: !38, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !764, file: !129, line: 53, baseType: !769, size: 192, offset: 192)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, elements: !172)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !764, file: !129, line: 55, baseType: !771, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !129, line: 45, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!397, !16}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !764, file: !129, line: 56, baseType: !776, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !129, line: 46, baseType: !772)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !764, file: !129, line: 57, baseType: !778, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !129, line: 47, baseType: !245)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !764, file: !129, line: 58, baseType: !16, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !764, file: !129, line: 60, baseType: !17, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !764, file: !129, line: 61, baseType: !11, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !683, file: !649, line: 163, baseType: !26, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !683, file: !649, line: 164, baseType: !38, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !683, file: !649, line: 166, baseType: !199, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !683, file: !649, line: 168, baseType: !199, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !683, file: !649, line: 170, baseType: !11, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !683, file: !649, line: 171, baseType: !11, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !683, file: !649, line: 172, baseType: !397, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !683, file: !649, line: 173, baseType: !397, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !683, file: !649, line: 174, baseType: !397, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !683, file: !649, line: 176, baseType: !11, size: 64, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !683, file: !649, line: 177, baseType: !397, size: 64, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !683, file: !649, line: 178, baseType: !397, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !683, file: !649, line: 180, baseType: !795, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !255, line: 31, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !255, line: 37, size: 704, elements: !798)
!798 = !{!799, !800, !810, !815, !816, !817}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !797, file: !255, line: 38, baseType: !16, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !797, file: !255, line: 39, baseType: !801, size: 384, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !802, line: 22, baseType: !803)
!802 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 16, size: 384, elements: !804)
!804 = !{!805, !806, !807, !808, !809}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !803, file: !802, line: 17, baseType: !17, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !803, file: !802, line: 18, baseType: !38, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !802, line: 19, baseType: !66, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !803, file: !802, line: 20, baseType: !177, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !803, file: !802, line: 21, baseType: !11, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !797, file: !255, line: 40, baseType: !811, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !255, line: 33, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!462, !795, !16}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !797, file: !255, line: 41, baseType: !16, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !797, file: !255, line: 42, baseType: !16, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !797, file: !255, line: 43, baseType: !11, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !683, file: !649, line: 182, baseType: !11, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !649, line: 96, baseType: !820, size: 64, offset: 3648)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !649, line: 62, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 39, size: 960, elements: !823)
!823 = !{!824, !825, !826, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !822, file: !649, line: 40, baseType: !310, size: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !822, file: !649, line: 41, baseType: !323, size: 128, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !822, file: !649, line: 43, baseType: !827, size: 64, offset: 448)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 8)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !649, line: 46, baseType: !36, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !822, file: !649, line: 47, baseType: !36, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !822, file: !649, line: 48, baseType: !36, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !822, file: !649, line: 49, baseType: !36, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !822, file: !649, line: 50, baseType: !36, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !822, file: !649, line: 51, baseType: !36, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !822, file: !649, line: 52, baseType: !36, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !822, file: !649, line: 53, baseType: !36, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !822, file: !649, line: 56, baseType: !660, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !822, file: !649, line: 57, baseType: !199, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !822, file: !649, line: 58, baseType: !199, size: 64, offset: 704)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !822, file: !649, line: 59, baseType: !38, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !822, file: !649, line: 60, baseType: !26, size: 64, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !822, file: !649, line: 61, baseType: !397, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !648, file: !649, line: 102, baseType: !397, size: 64, offset: 3712)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !648, file: !649, line: 103, baseType: !397, size: 64, offset: 3776)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !648, file: !649, line: 104, baseType: !397, size: 64, offset: 3840)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !648, file: !649, line: 105, baseType: !397, size: 64, offset: 3904)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !648, file: !649, line: 107, baseType: !275, size: 768, offset: 3968)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !648, file: !649, line: 109, baseType: !36, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !648, file: !649, line: 110, baseType: !36, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !648, file: !649, line: 112, baseType: !36, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !648, file: !649, line: 113, baseType: !36, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !648, file: !649, line: 114, baseType: !36, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !648, file: !649, line: 115, baseType: !36, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !648, file: !649, line: 116, baseType: !36, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !648, file: !649, line: 117, baseType: !36, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !648, file: !649, line: 118, baseType: !36, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !648, file: !649, line: 119, baseType: !36, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !648, file: !649, line: 121, baseType: !36, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !648, file: !649, line: 122, baseType: !36, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !630, file: !631, line: 388, baseType: !862, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !629, line: 17, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !865, line: 319, size: 8960, elements: !866)
!865 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!866 = !{!867, !872, !873, !922, !1001, !1002, !1024, !1033, !1173, !1174, !1175, !1176, !1177, !1178, !1218, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1399, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1413, !1417, !1421, !1422, !1436, !1437, !1438, !1439, !1440, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !864, file: !865, line: 320, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !865, line: 315, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !627, !862}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !864, file: !865, line: 321, baseType: !868, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !864, file: !865, line: 323, baseType: !874, size: 1024, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !875, line: 22, baseType: !876)
!875 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !875, line: 36, size: 1024, elements: !877)
!877 = !{!878, !879, !880, !881, !883, !884, !885, !891, !896, !898, !899, !901, !906, !915, !916, !917, !918, !919, !920, !921}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !876, file: !875, line: 37, baseType: !267, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !876, file: !875, line: 39, baseType: !361, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !876, file: !875, line: 40, baseType: !374, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !875, line: 41, baseType: !882, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !876, file: !875, line: 43, baseType: !11, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !876, file: !875, line: 44, baseType: !397, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !876, file: !875, line: 46, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !875, line: 24, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!462, !890, !16}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !876, file: !875, line: 47, baseType: !892, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !875, line: 26, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !890, !16, !11}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !876, file: !875, line: 48, baseType: !897, size: 64, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !875, line: 28, baseType: !893)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !876, file: !875, line: 49, baseType: !16, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !876, file: !875, line: 52, baseType: !900, size: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !875, line: 30, baseType: !887)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !876, file: !875, line: 53, baseType: !902, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !875, line: 32, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !890, !16}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !876, file: !875, line: 56, baseType: !907, size: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !909, line: 78, baseType: !910)
!909 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !909, line: 74, size: 256, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !910, file: !909, line: 75, baseType: !361, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !910, file: !909, line: 76, baseType: !374, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !910, file: !909, line: 77, baseType: !66, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !875, line: 58, baseType: !25, size: 32, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !876, file: !875, line: 59, baseType: !25, size: 32, offset: 864)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !876, file: !875, line: 61, baseType: !177, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !876, file: !875, line: 63, baseType: !36, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !876, file: !875, line: 64, baseType: !36, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !876, file: !875, line: 65, baseType: !36, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !876, file: !875, line: 68, baseType: !36, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !864, file: !865, line: 325, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !925, line: 17, baseType: !926)
!925 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !925, line: 25, size: 2240, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !934, !935, !936, !937, !938, !943, !944, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !1000}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !926, file: !925, line: 26, baseType: !267, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !926, file: !925, line: 27, baseType: !267, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !926, file: !925, line: 29, baseType: !109, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !926, file: !925, line: 30, baseType: !109, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !926, file: !925, line: 31, baseType: !933, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !926, file: !925, line: 33, baseType: !109, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !926, file: !925, line: 35, baseType: !109, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !926, file: !925, line: 36, baseType: !109, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !926, file: !925, line: 37, baseType: !109, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !926, file: !925, line: 44, baseType: !939, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !925, line: 19, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!462, !923, !114}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !926, file: !925, line: 45, baseType: !16, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !926, file: !925, line: 47, baseType: !945, size: 64, offset: 704)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !925, line: 21, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!462, !16, !109}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !926, file: !925, line: 48, baseType: !16, size: 64, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !926, file: !925, line: 57, baseType: !36, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !926, file: !925, line: 58, baseType: !36, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !926, file: !925, line: 59, baseType: !36, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !926, file: !925, line: 60, baseType: !36, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !926, file: !925, line: 61, baseType: !36, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !926, file: !925, line: 62, baseType: !36, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !926, file: !925, line: 63, baseType: !36, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !926, file: !925, line: 64, baseType: !36, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !926, file: !925, line: 65, baseType: !36, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !926, file: !925, line: 66, baseType: !36, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !926, file: !925, line: 67, baseType: !36, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !926, file: !925, line: 68, baseType: !36, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !926, file: !925, line: 70, baseType: !462, size: 64, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !926, file: !925, line: 71, baseType: !964, size: 128, offset: 960)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !24, line: 68, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 65, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !965, file: !24, line: 66, baseType: !462, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !24, line: 67, baseType: !38, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !926, file: !925, line: 72, baseType: !23, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !926, file: !925, line: 74, baseType: !340, size: 64, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !926, file: !925, line: 76, baseType: !26, size: 64, offset: 1216)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !926, file: !925, line: 77, baseType: !26, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !926, file: !925, line: 79, baseType: !26, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !926, file: !925, line: 80, baseType: !340, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !926, file: !925, line: 82, baseType: !397, size: 64, offset: 1472)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !926, file: !925, line: 83, baseType: !397, size: 64, offset: 1536)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !926, file: !925, line: 84, baseType: !340, size: 64, offset: 1600)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !926, file: !925, line: 86, baseType: !93, size: 64, offset: 1664)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !926, file: !925, line: 87, baseType: !177, size: 64, offset: 1728)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !926, file: !925, line: 89, baseType: !109, size: 64, offset: 1792)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !926, file: !925, line: 90, baseType: !38, size: 64, offset: 1856)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !926, file: !925, line: 91, baseType: !114, size: 64, offset: 1920)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !926, file: !925, line: 93, baseType: !38, size: 64, offset: 1984)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !926, file: !925, line: 94, baseType: !199, size: 64, offset: 2048)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !926, file: !925, line: 96, baseType: !986, size: 64, offset: 2112)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !129, line: 84, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 71, size: 1984, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !988, file: !129, line: 72, baseType: !127, size: 1600)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !988, file: !129, line: 73, baseType: !26, size: 64, offset: 1600)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !988, file: !129, line: 74, baseType: !762, size: 64, offset: 1664)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !988, file: !129, line: 75, baseType: !93, size: 64, offset: 1728)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !988, file: !129, line: 76, baseType: !51, size: 64, offset: 1792)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !988, file: !129, line: 78, baseType: !11, size: 64, offset: 1856)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !988, file: !129, line: 80, baseType: !36, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !988, file: !129, line: 81, baseType: !36, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !988, file: !129, line: 82, baseType: !36, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !988, file: !129, line: 83, baseType: !36, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !926, file: !925, line: 98, baseType: !25, size: 32, offset: 2176)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !864, file: !865, line: 327, baseType: !109, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !864, file: !865, line: 329, baseType: !1003, size: 832, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !24, line: 71, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !24, line: 78, size: 832, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1023}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1004, file: !24, line: 79, baseType: !114, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1004, file: !24, line: 80, baseType: !109, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1004, file: !24, line: 81, baseType: !109, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1004, file: !24, line: 82, baseType: !109, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1004, file: !24, line: 84, baseType: !36, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1004, file: !24, line: 85, baseType: !36, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !1004, file: !24, line: 86, baseType: !36, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !1004, file: !24, line: 87, baseType: !36, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !1004, file: !24, line: 88, baseType: !36, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1004, file: !24, line: 89, baseType: !36, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1004, file: !24, line: 104, baseType: !26, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1004, file: !24, line: 106, baseType: !93, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1004, file: !24, line: 107, baseType: !462, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1004, file: !24, line: 108, baseType: !964, size: 128, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1004, file: !24, line: 109, baseType: !23, size: 64, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !1004, file: !24, line: 111, baseType: !1022, size: 64, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !24, line: 73, baseType: !946)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !1004, file: !24, line: 112, baseType: !16, size: 64, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !864, file: !865, line: 330, baseType: !1025, size: 320, offset: 2112)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !24, line: 122, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 116, size: 320, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1026, file: !24, line: 117, baseType: !109, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1026, file: !24, line: 118, baseType: !933, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1026, file: !24, line: 119, baseType: !267, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1026, file: !24, line: 120, baseType: !93, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1026, file: !24, line: 121, baseType: !26, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !864, file: !865, line: 332, baseType: !1034, size: 64, offset: 2432)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !865, line: 243, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 149, size: 3904, elements: !1037)
!1037 = !{!1038, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1115, !1116, !1117, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1168, !1169, !1170, !1171, !1172}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !1036, file: !865, line: 150, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !865, line: 79, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !865, line: 121, size: 832, elements: !1042)
!1042 = !{!1043, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1041, file: !865, line: 122, baseType: !1044, size: 192)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !865, line: 91, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 87, size: 192, elements: !1046)
!1046 = !{!1047, !1052, !1057}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !1045, file: !865, line: 88, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !865, line: 81, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!462, !77, !1039}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1045, file: !865, line: 89, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !865, line: 83, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!462, !627, !1039}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1045, file: !865, line: 90, baseType: !16, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1041, file: !865, line: 123, baseType: !260, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !1041, file: !865, line: 125, baseType: !83, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !865, line: 127, baseType: !11, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1041, file: !865, line: 128, baseType: !66, size: 128, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1041, file: !865, line: 129, baseType: !17, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1041, file: !865, line: 130, baseType: !11, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1041, file: !865, line: 131, baseType: !442, size: 16, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1041, file: !865, line: 132, baseType: !11, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !1041, file: !865, line: 135, baseType: !795, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !1036, file: !865, line: 152, baseType: !397, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1036, file: !865, line: 153, baseType: !397, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1036, file: !865, line: 154, baseType: !397, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !1036, file: !865, line: 155, baseType: !397, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1036, file: !865, line: 157, baseType: !38, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1036, file: !865, line: 158, baseType: !38, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1036, file: !865, line: 159, baseType: !38, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !1036, file: !865, line: 161, baseType: !38, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !1036, file: !865, line: 162, baseType: !38, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !1036, file: !865, line: 163, baseType: !38, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !1036, file: !865, line: 165, baseType: !38, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !1036, file: !865, line: 166, baseType: !38, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !1036, file: !865, line: 167, baseType: !38, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1036, file: !865, line: 169, baseType: !964, size: 128, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !1036, file: !865, line: 171, baseType: !11, size: 64, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !1036, file: !865, line: 172, baseType: !11, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !1036, file: !865, line: 173, baseType: !11, size: 64, offset: 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !1036, file: !865, line: 174, baseType: !11, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !1036, file: !865, line: 175, baseType: !1086, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !12, line: 80, baseType: !463)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !1036, file: !865, line: 176, baseType: !1086, size: 64, offset: 1344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !1036, file: !865, line: 177, baseType: !1086, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !1036, file: !865, line: 178, baseType: !1086, size: 64, offset: 1472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !1036, file: !865, line: 180, baseType: !1086, size: 64, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !1036, file: !865, line: 181, baseType: !1086, size: 64, offset: 1600)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !1036, file: !865, line: 182, baseType: !1086, size: 64, offset: 1664)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !1036, file: !865, line: 183, baseType: !1086, size: 64, offset: 1728)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !1036, file: !865, line: 185, baseType: !762, size: 64, offset: 1792)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !1036, file: !865, line: 187, baseType: !1096, size: 128, offset: 1856)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1097, line: 26, baseType: !1098)
!1097 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 23, size: 128, elements: !1099)
!1099 = !{!1100, !1114}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1098, file: !1097, line: 24, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1097, line: 20, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 16, size: 128, elements: !1105)
!1105 = !{!1106, !1107, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1104, file: !1097, line: 17, baseType: !16, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1104, file: !1097, line: 18, baseType: !1108, size: 16, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !19, line: 34, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !21, line: 32, baseType: !368)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1104, file: !1097, line: 19, baseType: !1111, size: 8, offset: 80)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 1)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1098, file: !1097, line: 25, baseType: !11, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !1036, file: !865, line: 188, baseType: !83, size: 64, offset: 1984)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !1036, file: !865, line: 189, baseType: !83, size: 64, offset: 2048)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1036, file: !865, line: 191, baseType: !1118, size: 64, offset: 2112)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !865, line: 146, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 140, size: 192, elements: !1121)
!1121 = !{!1122, !1123, !1134}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1120, file: !865, line: 141, baseType: !907, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1120, file: !865, line: 142, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1126, line: 71, baseType: !1127)
!1126 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1126, line: 66, size: 320, elements: !1128)
!1128 = !{!1129, !1130, !1132, !1133}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1127, file: !1126, line: 67, baseType: !66, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1127, file: !1126, line: 68, baseType: !1131, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1127, file: !1126, line: 69, baseType: !16, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1127, file: !1126, line: 70, baseType: !16, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1120, file: !865, line: 144, baseType: !11, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !1036, file: !865, line: 192, baseType: !1086, size: 64, offset: 2176)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !1036, file: !865, line: 195, baseType: !795, size: 64, offset: 2240)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !1036, file: !865, line: 196, baseType: !1124, size: 64, offset: 2304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !1036, file: !865, line: 198, baseType: !11, size: 64, offset: 2368)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !1036, file: !865, line: 199, baseType: !11, size: 64, offset: 2432)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !1036, file: !865, line: 200, baseType: !11, size: 64, offset: 2496)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !1036, file: !865, line: 202, baseType: !26, size: 64, offset: 2560)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !1036, file: !865, line: 204, baseType: !1086, size: 64, offset: 2624)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !1036, file: !865, line: 205, baseType: !397, size: 64, offset: 2688)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !1036, file: !865, line: 206, baseType: !397, size: 64, offset: 2752)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !1036, file: !865, line: 208, baseType: !1086, size: 64, offset: 2816)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !1036, file: !865, line: 209, baseType: !1086, size: 64, offset: 2880)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !1036, file: !865, line: 210, baseType: !1086, size: 64, offset: 2944)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !1036, file: !865, line: 212, baseType: !83, size: 64, offset: 3008)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !1036, file: !865, line: 213, baseType: !83, size: 64, offset: 3072)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !1036, file: !865, line: 214, baseType: !83, size: 64, offset: 3136)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1036, file: !865, line: 215, baseType: !83, size: 64, offset: 3200)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !1036, file: !865, line: 218, baseType: !83, size: 64, offset: 3264)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !1036, file: !865, line: 219, baseType: !83, size: 64, offset: 3328)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1036, file: !865, line: 222, baseType: !25, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1036, file: !865, line: 224, baseType: !25, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !1036, file: !865, line: 225, baseType: !36, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !1036, file: !865, line: 226, baseType: !36, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !1036, file: !865, line: 227, baseType: !36, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !1036, file: !865, line: 228, baseType: !36, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1036, file: !865, line: 231, baseType: !1161, size: 64, offset: 3456)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !44, line: 28, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !450, line: 67, size: 192, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1163, file: !450, line: 68, baseType: !458, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1163, file: !450, line: 69, baseType: !177, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1163, file: !450, line: 70, baseType: !38, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !1036, file: !865, line: 232, baseType: !1086, size: 64, offset: 3520)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !1036, file: !865, line: 234, baseType: !1124, size: 64, offset: 3584)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !1036, file: !865, line: 235, baseType: !1086, size: 64, offset: 3648)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !1036, file: !865, line: 236, baseType: !1086, size: 64, offset: 3712)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1036, file: !865, line: 239, baseType: !66, size: 128, offset: 3776)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !864, file: !865, line: 333, baseType: !1039, size: 64, offset: 2496)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !864, file: !865, line: 335, baseType: !83, size: 64, offset: 2560)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !864, file: !865, line: 339, baseType: !397, size: 64, offset: 2624)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !864, file: !865, line: 340, baseType: !397, size: 64, offset: 2688)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !864, file: !865, line: 341, baseType: !397, size: 64, offset: 2752)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !864, file: !865, line: 343, baseType: !1179, size: 3072, offset: 2816)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !865, line: 296, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 256, size: 3072, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1180, file: !865, line: 257, baseType: !526, size: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1180, file: !865, line: 258, baseType: !526, size: 448, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1180, file: !865, line: 260, baseType: !11, size: 64, offset: 896)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1180, file: !865, line: 261, baseType: !66, size: 128, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1180, file: !865, line: 263, baseType: !1187, size: 64, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1097, line: 97, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 92, size: 384, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1189, file: !1097, line: 93, baseType: !11, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1189, file: !1097, line: 94, baseType: !66, size: 128, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1189, file: !1097, line: 95, baseType: !66, size: 128, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1189, file: !1097, line: 96, baseType: !17, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1180, file: !865, line: 264, baseType: !1187, size: 64, offset: 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1180, file: !865, line: 265, baseType: !1187, size: 64, offset: 1216)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1180, file: !865, line: 266, baseType: !1187, size: 64, offset: 1280)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1180, file: !865, line: 268, baseType: !1187, size: 64, offset: 1344)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1180, file: !865, line: 269, baseType: !1187, size: 64, offset: 1408)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1180, file: !865, line: 270, baseType: !1187, size: 64, offset: 1472)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1180, file: !865, line: 271, baseType: !1187, size: 64, offset: 1536)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1180, file: !865, line: 272, baseType: !1187, size: 64, offset: 1600)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1180, file: !865, line: 274, baseType: !1187, size: 64, offset: 1664)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1180, file: !865, line: 275, baseType: !1187, size: 64, offset: 1728)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1180, file: !865, line: 277, baseType: !1187, size: 64, offset: 1792)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1180, file: !865, line: 278, baseType: !1187, size: 64, offset: 1856)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1180, file: !865, line: 279, baseType: !1187, size: 64, offset: 1920)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1180, file: !865, line: 280, baseType: !1187, size: 64, offset: 1984)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1180, file: !865, line: 281, baseType: !1187, size: 64, offset: 2048)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1180, file: !865, line: 282, baseType: !1187, size: 64, offset: 2112)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1180, file: !865, line: 285, baseType: !1187, size: 64, offset: 2176)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1180, file: !865, line: 288, baseType: !84, size: 320, offset: 2240)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1180, file: !865, line: 289, baseType: !84, size: 320, offset: 2560)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1180, file: !865, line: 291, baseType: !26, size: 64, offset: 2880)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1180, file: !865, line: 292, baseType: !199, size: 64, offset: 2944)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1180, file: !865, line: 294, baseType: !36, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1180, file: !865, line: 295, baseType: !36, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !864, file: !865, line: 345, baseType: !1219, size: 64, offset: 5888)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !865, line: 312, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 299, size: 704, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1238, !1239, !1240, !1241}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1221, file: !865, line: 300, baseType: !66, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1221, file: !865, line: 301, baseType: !442, size: 16, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1221, file: !865, line: 302, baseType: !11, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1221, file: !865, line: 304, baseType: !11, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1221, file: !865, line: 305, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1230, line: 67, baseType: !1231)
!1230 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 61, size: 320, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1231, file: !1230, line: 62, baseType: !361, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1231, file: !1230, line: 63, baseType: !374, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1231, file: !1230, line: 64, baseType: !66, size: 128, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1231, file: !1230, line: 65, baseType: !1108, size: 16, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1231, file: !1230, line: 66, baseType: !1108, size: 16, offset: 272)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1221, file: !865, line: 307, baseType: !361, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1221, file: !865, line: 308, baseType: !374, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1221, file: !865, line: 309, baseType: !66, size: 128, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1221, file: !865, line: 311, baseType: !1242, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1230, line: 56, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1230, line: 195, size: 1792, elements: !1245)
!1245 = !{!1246, !1247, !1280, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1362, !1363, !1364, !1377, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1244, file: !1230, line: 196, baseType: !1242, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1244, file: !1230, line: 197, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1230, line: 40, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1230, line: 148, size: 4096, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1250, file: !1230, line: 150, baseType: !274, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1250, file: !1230, line: 151, baseType: !16, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1250, file: !1230, line: 152, baseType: !177, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1250, file: !1230, line: 155, baseType: !462, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1250, file: !1230, line: 158, baseType: !84, size: 320, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1250, file: !1230, line: 159, baseType: !11, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1250, file: !1230, line: 161, baseType: !402, size: 192, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1250, file: !1230, line: 162, baseType: !310, size: 320, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1250, file: !1230, line: 164, baseType: !402, size: 192, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1250, file: !1230, line: 165, baseType: !310, size: 320, offset: 1344)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1250, file: !1230, line: 167, baseType: !402, size: 192, offset: 1664)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1250, file: !1230, line: 168, baseType: !310, size: 320, offset: 1856)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1250, file: !1230, line: 170, baseType: !323, size: 128, offset: 2176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1250, file: !1230, line: 171, baseType: !323, size: 128, offset: 2304)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1250, file: !1230, line: 172, baseType: !323, size: 128, offset: 2432)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1250, file: !1230, line: 174, baseType: !323, size: 128, offset: 2560)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1250, file: !1230, line: 175, baseType: !323, size: 128, offset: 2688)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1250, file: !1230, line: 176, baseType: !323, size: 128, offset: 2816)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1250, file: !1230, line: 179, baseType: !11, size: 64, offset: 2944)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1250, file: !1230, line: 180, baseType: !402, size: 192, offset: 3008)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1250, file: !1230, line: 181, baseType: !310, size: 320, offset: 3200)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1250, file: !1230, line: 182, baseType: !323, size: 128, offset: 3520)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1250, file: !1230, line: 183, baseType: !323, size: 128, offset: 3648)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1250, file: !1230, line: 186, baseType: !199, size: 64, offset: 3776)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1250, file: !1230, line: 187, baseType: !199, size: 64, offset: 3840)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1250, file: !1230, line: 188, baseType: !199, size: 64, offset: 3904)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1250, file: !1230, line: 189, baseType: !199, size: 64, offset: 3968)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1250, file: !1230, line: 191, baseType: !11, size: 64, offset: 4032)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1244, file: !1230, line: 198, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1230, line: 145, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 92, size: 1472, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1304, !1305, !1306, !1307, !1308, !1325, !1326, !1327, !1328, !1329, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1283, file: !1230, line: 93, baseType: !310, size: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1283, file: !1230, line: 94, baseType: !323, size: 128, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1283, file: !1230, line: 97, baseType: !17, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1283, file: !1230, line: 101, baseType: !1289, size: 128, offset: 512)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !443, line: 219, size: 128, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1289, file: !443, line: 226, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !443, line: 221, size: 128, elements: !1293)
!1293 = !{!1294, !1298, !1300}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1292, file: !443, line: 223, baseType: !1295, size: 128)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, size: 128, elements: !656)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 38, baseType: !22)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1292, file: !443, line: 224, baseType: !1299, size: 128)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 128, elements: !828)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1292, file: !443, line: 225, baseType: !1301, size: 128)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 4)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1283, file: !1230, line: 104, baseType: !1108, size: 16, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1283, file: !1230, line: 105, baseType: !1108, size: 16, offset: 656)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1283, file: !1230, line: 107, baseType: !17, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1283, file: !1230, line: 109, baseType: !17, size: 64, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1283, file: !1230, line: 117, baseType: !1309, size: 64, offset: 832)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !1230, line: 112, size: 64, elements: !1310)
!1310 = !{!1311, !1313, !1315, !1316}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1309, file: !1230, line: 113, baseType: !1312, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !443, line: 30, baseType: !33)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1309, file: !1230, line: 114, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1309, file: !1230, line: 115, baseType: !17, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1309, file: !1230, line: 116, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1230, line: 75, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 70, size: 192, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1319, file: !1230, line: 71, baseType: !66, size: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1319, file: !1230, line: 72, baseType: !1108, size: 16, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1319, file: !1230, line: 73, baseType: !1108, size: 16, offset: 144)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1319, file: !1230, line: 74, baseType: !1108, size: 16, offset: 160)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1283, file: !1230, line: 119, baseType: !18, size: 8, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1283, file: !1230, line: 120, baseType: !1108, size: 16, offset: 912)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1283, file: !1230, line: 121, baseType: !1108, size: 16, offset: 928)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1283, file: !1230, line: 122, baseType: !1108, size: 16, offset: 944)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1283, file: !1230, line: 128, baseType: !1330, size: 128, offset: 960)
!1330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !1230, line: 125, size: 128, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1330, file: !1230, line: 126, baseType: !1289, size: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1330, file: !1230, line: 127, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1283, file: !1230, line: 130, baseType: !1108, size: 16, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1283, file: !1230, line: 133, baseType: !199, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1283, file: !1230, line: 134, baseType: !199, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1283, file: !1230, line: 135, baseType: !33, size: 32, offset: 1280)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1283, file: !1230, line: 137, baseType: !36, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1283, file: !1230, line: 139, baseType: !36, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1283, file: !1230, line: 142, baseType: !11, size: 64, offset: 1344)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1283, file: !1230, line: 144, baseType: !1242, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1244, file: !1230, line: 201, baseType: !462, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1244, file: !1230, line: 203, baseType: !462, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1244, file: !1230, line: 204, baseType: !66, size: 128, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1244, file: !1230, line: 205, baseType: !66, size: 128, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1244, file: !1230, line: 207, baseType: !199, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1244, file: !1230, line: 208, baseType: !11, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1244, file: !1230, line: 209, baseType: !1228, size: 64, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1244, file: !1230, line: 210, baseType: !1229, size: 320, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1244, file: !1230, line: 211, baseType: !1352, size: 128, offset: 1088)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !443, line: 245, size: 128, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1360}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1352, file: !443, line: 247, baseType: !366, size: 16)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1352, file: !443, line: 248, baseType: !442, size: 16, offset: 16)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1352, file: !443, line: 249, baseType: !1357, size: 32, offset: 32)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !443, line: 31, size: 32, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1357, file: !443, line: 33, baseType: !1312, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1352, file: !443, line: 252, baseType: !1361, size: 64, offset: 64)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !828)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1244, file: !1230, line: 213, baseType: !11, size: 64, offset: 1216)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1244, file: !1230, line: 214, baseType: !11, size: 64, offset: 1280)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1244, file: !1230, line: 215, baseType: !1365, size: 64, offset: 1344)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1230, line: 89, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 78, size: 448, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1367, file: !1230, line: 79, baseType: !66, size: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1367, file: !1230, line: 80, baseType: !1108, size: 16, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1367, file: !1230, line: 81, baseType: !1108, size: 16, offset: 144)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1367, file: !1230, line: 82, baseType: !1108, size: 16, offset: 160)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1367, file: !1230, line: 84, baseType: !1242, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1367, file: !1230, line: 85, baseType: !462, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1367, file: !1230, line: 87, baseType: !11, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1367, file: !1230, line: 88, baseType: !907, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1244, file: !1230, line: 217, baseType: !1378, size: 64, offset: 1408)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1230, line: 58, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1242}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1244, file: !1230, line: 218, baseType: !16, size: 64, offset: 1472)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1244, file: !1230, line: 219, baseType: !397, size: 64, offset: 1536)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1244, file: !1230, line: 221, baseType: !36, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1244, file: !1230, line: 222, baseType: !36, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1244, file: !1230, line: 223, baseType: !36, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1244, file: !1230, line: 224, baseType: !11, size: 64, offset: 1664)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1244, file: !1230, line: 225, baseType: !274, size: 64, offset: 1728)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !864, file: !865, line: 347, baseType: !115, size: 640, offset: 5952)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !864, file: !865, line: 349, baseType: !115, size: 640, offset: 6592)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !864, file: !865, line: 350, baseType: !26, size: 64, offset: 7232)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !864, file: !865, line: 352, baseType: !109, size: 64, offset: 7296)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !864, file: !865, line: 353, baseType: !109, size: 64, offset: 7360)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !864, file: !865, line: 354, baseType: !109, size: 64, offset: 7424)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !864, file: !865, line: 356, baseType: !1396, size: 64, offset: 7488)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!462, !16}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !864, file: !865, line: 357, baseType: !1400, size: 64, offset: 7552)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!462, !16, !340}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !864, file: !865, line: 358, baseType: !16, size: 64, offset: 7616)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !864, file: !865, line: 361, baseType: !624, size: 64, offset: 7680)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !864, file: !865, line: 363, baseType: !624, size: 64, offset: 7744)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !864, file: !865, line: 364, baseType: !624, size: 64, offset: 7808)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !864, file: !865, line: 365, baseType: !624, size: 64, offset: 7872)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !864, file: !865, line: 366, baseType: !641, size: 64, offset: 7936)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !864, file: !865, line: 367, baseType: !1410, size: 64, offset: 8000)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !627, !462}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !864, file: !865, line: 369, baseType: !1414, size: 64, offset: 8064)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!462, !627, !1187, !38}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !864, file: !865, line: 371, baseType: !1418, size: 64, offset: 8128)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!462, !627, !1187}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !864, file: !865, line: 374, baseType: !397, size: 64, offset: 8192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !865, line: 376, baseType: !1423, size: 64, offset: 8256)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !865, line: 70, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 59, size: 576, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1425, file: !865, line: 60, baseType: !11, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1425, file: !865, line: 61, baseType: !397, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1425, file: !865, line: 62, baseType: !397, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1425, file: !865, line: 63, baseType: !397, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1425, file: !865, line: 64, baseType: !397, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1425, file: !865, line: 65, baseType: !26, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1425, file: !865, line: 66, baseType: !26, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1425, file: !865, line: 67, baseType: !26, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1425, file: !865, line: 69, baseType: !882, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !864, file: !865, line: 378, baseType: !66, size: 128, offset: 8320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !864, file: !865, line: 379, baseType: !66, size: 128, offset: 8448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !864, file: !865, line: 380, baseType: !66, size: 128, offset: 8576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !864, file: !865, line: 383, baseType: !66, size: 128, offset: 8704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !864, file: !865, line: 386, baseType: !1441, size: 64, offset: 8832)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !631, line: 330, baseType: !245)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !864, file: !865, line: 388, baseType: !36, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !864, file: !865, line: 389, baseType: !36, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !864, file: !865, line: 390, baseType: !36, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !864, file: !865, line: 391, baseType: !36, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !864, file: !865, line: 393, baseType: !36, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !864, file: !865, line: 396, baseType: !36, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !864, file: !865, line: 397, baseType: !36, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !864, file: !865, line: 398, baseType: !36, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !864, file: !865, line: 400, baseType: !36, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !864, file: !865, line: 401, baseType: !36, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !864, file: !865, line: 402, baseType: !36, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !864, file: !865, line: 403, baseType: !36, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !630, file: !631, line: 389, baseType: !83, size: 64, offset: 640)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !630, file: !631, line: 392, baseType: !93, size: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !630, file: !631, line: 393, baseType: !114, size: 64, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !630, file: !631, line: 395, baseType: !1459, size: 3008, offset: 832)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !631, line: 251, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 181, size: 3008, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1460, file: !631, line: 182, baseType: !526, size: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1460, file: !631, line: 184, baseType: !1187, size: 64, offset: 448)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1460, file: !631, line: 185, baseType: !1187, size: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1460, file: !631, line: 186, baseType: !1187, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1460, file: !631, line: 187, baseType: !1187, size: 64, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1460, file: !631, line: 188, baseType: !1187, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1460, file: !631, line: 189, baseType: !1187, size: 64, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1460, file: !631, line: 190, baseType: !1187, size: 64, offset: 832)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1460, file: !631, line: 191, baseType: !1187, size: 64, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1460, file: !631, line: 192, baseType: !1187, size: 64, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1460, file: !631, line: 193, baseType: !1187, size: 64, offset: 1024)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1460, file: !631, line: 194, baseType: !1187, size: 64, offset: 1088)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1460, file: !631, line: 196, baseType: !1187, size: 64, offset: 1152)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1460, file: !631, line: 197, baseType: !1187, size: 64, offset: 1216)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1460, file: !631, line: 199, baseType: !1187, size: 64, offset: 1280)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1460, file: !631, line: 200, baseType: !1187, size: 64, offset: 1344)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1460, file: !631, line: 201, baseType: !1187, size: 64, offset: 1408)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1460, file: !631, line: 202, baseType: !1187, size: 64, offset: 1472)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1460, file: !631, line: 205, baseType: !1187, size: 64, offset: 1536)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1460, file: !631, line: 206, baseType: !1187, size: 64, offset: 1600)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1460, file: !631, line: 209, baseType: !1187, size: 64, offset: 1664)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1460, file: !631, line: 211, baseType: !1187, size: 64, offset: 1728)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1460, file: !631, line: 214, baseType: !84, size: 320, offset: 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1460, file: !631, line: 233, baseType: !66, size: 128, offset: 2112)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1460, file: !631, line: 234, baseType: !66, size: 128, offset: 2240)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1460, file: !631, line: 236, baseType: !84, size: 320, offset: 2368)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1460, file: !631, line: 238, baseType: !66, size: 128, offset: 2688)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1460, file: !631, line: 239, baseType: !26, size: 64, offset: 2816)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1460, file: !631, line: 240, baseType: !199, size: 64, offset: 2880)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1460, file: !631, line: 242, baseType: !36, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1460, file: !631, line: 243, baseType: !36, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1460, file: !631, line: 244, baseType: !36, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1460, file: !631, line: 245, baseType: !36, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1460, file: !631, line: 246, baseType: !36, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1460, file: !631, line: 247, baseType: !36, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1460, file: !631, line: 248, baseType: !36, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1460, file: !631, line: 249, baseType: !36, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1460, file: !631, line: 250, baseType: !36, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !630, file: !631, line: 396, baseType: !1501, size: 3264, offset: 3840)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !631, line: 289, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 254, size: 3264, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1502, file: !631, line: 255, baseType: !526, size: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1502, file: !631, line: 256, baseType: !526, size: 448, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1502, file: !631, line: 258, baseType: !11, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1502, file: !631, line: 259, baseType: !66, size: 128, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1502, file: !631, line: 261, baseType: !1187, size: 64, offset: 1088)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1502, file: !631, line: 262, baseType: !1187, size: 64, offset: 1152)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1502, file: !631, line: 263, baseType: !1187, size: 64, offset: 1216)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1502, file: !631, line: 264, baseType: !1187, size: 64, offset: 1280)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1502, file: !631, line: 265, baseType: !1187, size: 64, offset: 1344)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1502, file: !631, line: 266, baseType: !1187, size: 64, offset: 1408)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1502, file: !631, line: 267, baseType: !1187, size: 64, offset: 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1502, file: !631, line: 268, baseType: !1187, size: 64, offset: 1536)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1502, file: !631, line: 269, baseType: !1187, size: 64, offset: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1502, file: !631, line: 270, baseType: !1187, size: 64, offset: 1664)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1502, file: !631, line: 271, baseType: !1187, size: 64, offset: 1728)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1502, file: !631, line: 272, baseType: !1187, size: 64, offset: 1792)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1502, file: !631, line: 274, baseType: !882, size: 64, offset: 1856)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1502, file: !631, line: 276, baseType: !38, size: 64, offset: 1920)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1502, file: !631, line: 277, baseType: !66, size: 128, offset: 1984)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1502, file: !631, line: 278, baseType: !66, size: 128, offset: 2112)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1502, file: !631, line: 279, baseType: !17, size: 64, offset: 2240)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1502, file: !631, line: 280, baseType: !11, size: 64, offset: 2304)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1502, file: !631, line: 282, baseType: !84, size: 320, offset: 2368)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1502, file: !631, line: 283, baseType: !84, size: 320, offset: 2688)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1502, file: !631, line: 285, baseType: !26, size: 64, offset: 3008)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1502, file: !631, line: 286, baseType: !26, size: 64, offset: 3072)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1502, file: !631, line: 287, baseType: !199, size: 64, offset: 3136)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1502, file: !631, line: 288, baseType: !199, size: 64, offset: 3200)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !630, file: !631, line: 398, baseType: !1533, size: 64, offset: 7104)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !631, line: 304, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 294, size: 576, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1552}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1535, file: !631, line: 295, baseType: !986, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1535, file: !631, line: 296, baseType: !109, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1535, file: !631, line: 297, baseType: !114, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1535, file: !631, line: 298, baseType: !26, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1535, file: !631, line: 299, baseType: !26, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1535, file: !631, line: 300, baseType: !109, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1535, file: !631, line: 301, baseType: !109, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1535, file: !631, line: 302, baseType: !1545, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !629, line: 21, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !629, line: 59, size: 192, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !629, line: 60, baseType: !11, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1547, file: !629, line: 61, baseType: !26, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1547, file: !629, line: 62, baseType: !26, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1535, file: !631, line: 303, baseType: !1553, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !631, line: 292, baseType: !641)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !630, file: !631, line: 400, baseType: !199, size: 64, offset: 7168)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !630, file: !631, line: 401, baseType: !199, size: 64, offset: 7232)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !630, file: !631, line: 402, baseType: !397, size: 64, offset: 7296)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !630, file: !631, line: 404, baseType: !11, size: 64, offset: 7360)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !630, file: !631, line: 405, baseType: !11, size: 64, offset: 7424)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !630, file: !631, line: 407, baseType: !66, size: 128, offset: 7488)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !630, file: !631, line: 408, baseType: !66, size: 128, offset: 7616)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !630, file: !631, line: 409, baseType: !66, size: 128, offset: 7744)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !630, file: !631, line: 410, baseType: !66, size: 128, offset: 7872)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !630, file: !631, line: 411, baseType: !66, size: 128, offset: 8000)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !630, file: !631, line: 413, baseType: !66, size: 128, offset: 8128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !630, file: !631, line: 414, baseType: !66, size: 128, offset: 8256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !630, file: !631, line: 415, baseType: !66, size: 128, offset: 8384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !630, file: !631, line: 417, baseType: !109, size: 64, offset: 8512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !630, file: !631, line: 418, baseType: !627, size: 64, offset: 8576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !630, file: !631, line: 419, baseType: !627, size: 64, offset: 8640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !630, file: !631, line: 420, baseType: !1571, size: 64, offset: 8704)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !631, line: 350, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !631, line: 352, size: 192, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1573, file: !631, line: 353, baseType: !627, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1573, file: !631, line: 354, baseType: !109, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1573, file: !631, line: 355, baseType: !1571, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !630, file: !631, line: 421, baseType: !1579, size: 64, offset: 8768)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !631, line: 347, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 344, size: 128, elements: !1582)
!1582 = !{!1583, !1588}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1581, file: !631, line: 345, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !631, line: 341, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!462, !627, !16, !462}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1581, file: !631, line: 346, baseType: !16, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !630, file: !631, line: 422, baseType: !1590, size: 64, offset: 8832)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !631, line: 359, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !631, line: 361, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1592, file: !631, line: 362, baseType: !627, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1592, file: !631, line: 363, baseType: !1590, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !630, file: !631, line: 424, baseType: !462, size: 64, offset: 8896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !630, file: !631, line: 425, baseType: !1598, size: 64, offset: 8960)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !631, line: 367, baseType: !624)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !630, file: !631, line: 426, baseType: !11, size: 64, offset: 9024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !630, file: !631, line: 428, baseType: !1601, size: 64, offset: 9088)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1603, line: 17, baseType: !1604)
!1603 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !67, line: 37, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 28, size: 128, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1605, file: !67, line: 29, baseType: !36, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1605, file: !67, line: 31, baseType: !36, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1605, file: !67, line: 32, baseType: !36, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1605, file: !67, line: 33, baseType: !36, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1605, file: !67, line: 34, baseType: !36, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1605, file: !67, line: 36, baseType: !17, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !630, file: !631, line: 436, baseType: !38, size: 64, offset: 9152)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !630, file: !631, line: 437, baseType: !38, size: 64, offset: 9216)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !630, file: !631, line: 440, baseType: !38, size: 64, offset: 9280)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !630, file: !631, line: 442, baseType: !26, size: 64, offset: 9344)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !630, file: !631, line: 444, baseType: !11, size: 64, offset: 9408)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !630, file: !631, line: 446, baseType: !1619, size: 64, offset: 9472)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !631, line: 327, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 309, size: 448, elements: !1622)
!1622 = !{!1623, !1796, !1797, !1798, !1799, !1800, !1801, !1802}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1621, file: !631, line: 310, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !631, line: 307, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !623, line: 233, size: 192, elements: !1627)
!1627 = !{!1628, !1767, !1793, !1794, !1795}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1626, file: !623, line: 235, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !623, line: 210, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 180, size: 1344, elements: !1632)
!1632 = !{!1633, !1634, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1631, file: !623, line: 182, baseType: !84, size: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1631, file: !623, line: 185, baseType: !1635, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !1637, line: 21, baseType: !1638)
!1637 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1637, line: 17, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !1638, file: !1637, line: 18, baseType: !260, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1638, file: !1637, line: 19, baseType: !260, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1638, file: !1637, line: 20, baseType: !260, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1631, file: !623, line: 187, baseType: !17, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1631, file: !623, line: 188, baseType: !11, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1631, file: !623, line: 190, baseType: !66, size: 128, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1631, file: !623, line: 192, baseType: !38, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1631, file: !623, line: 193, baseType: !38, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1631, file: !623, line: 194, baseType: !38, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1631, file: !623, line: 196, baseType: !964, size: 128, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1631, file: !623, line: 198, baseType: !397, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1631, file: !623, line: 200, baseType: !1086, size: 64, offset: 1024)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1631, file: !623, line: 201, baseType: !1086, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1631, file: !623, line: 202, baseType: !1086, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1631, file: !623, line: 204, baseType: !36, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1631, file: !623, line: 209, baseType: !1656, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !623, line: 64, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !623, line: 301, size: 5184, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !623, line: 302, baseType: !66, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1659, file: !623, line: 308, baseType: !36, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1659, file: !623, line: 309, baseType: !36, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1659, file: !623, line: 310, baseType: !36, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1659, file: !623, line: 312, baseType: !36, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1659, file: !623, line: 313, baseType: !36, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1659, file: !623, line: 315, baseType: !36, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1659, file: !623, line: 317, baseType: !36, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1659, file: !623, line: 318, baseType: !36, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1659, file: !623, line: 321, baseType: !1671, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !623, line: 63, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !623, line: 455, size: 384, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1673, file: !623, line: 456, baseType: !1671, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1673, file: !623, line: 457, baseType: !1671, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1673, file: !623, line: 458, baseType: !1671, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1673, file: !623, line: 460, baseType: !1657, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1673, file: !623, line: 461, baseType: !1657, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1673, file: !623, line: 463, baseType: !18, size: 8, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1673, file: !623, line: 464, baseType: !18, size: 8, offset: 328)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !623, line: 465, baseType: !1111, size: 8, offset: 336)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1659, file: !623, line: 327, baseType: !260, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1659, file: !623, line: 329, baseType: !33, size: 32, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1659, file: !623, line: 330, baseType: !260, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1659, file: !623, line: 332, baseType: !1598, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1659, file: !623, line: 335, baseType: !38, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1659, file: !623, line: 336, baseType: !66, size: 128, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1659, file: !623, line: 337, baseType: !66, size: 128, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1659, file: !623, line: 339, baseType: !83, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1659, file: !623, line: 340, baseType: !83, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1659, file: !623, line: 342, baseType: !83, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1659, file: !623, line: 343, baseType: !1096, size: 128, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1659, file: !623, line: 344, baseType: !66, size: 128, offset: 1152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1659, file: !623, line: 346, baseType: !26, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1659, file: !623, line: 347, baseType: !26, size: 64, offset: 1344)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1659, file: !623, line: 348, baseType: !26, size: 64, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1659, file: !623, line: 350, baseType: !38, size: 64, offset: 1472)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1659, file: !623, line: 351, baseType: !38, size: 64, offset: 1536)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1659, file: !623, line: 352, baseType: !38, size: 64, offset: 1600)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1659, file: !623, line: 353, baseType: !38, size: 64, offset: 1664)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1659, file: !623, line: 354, baseType: !38, size: 64, offset: 1728)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1659, file: !623, line: 355, baseType: !38, size: 64, offset: 1792)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1659, file: !623, line: 356, baseType: !38, size: 64, offset: 1856)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1659, file: !623, line: 357, baseType: !38, size: 64, offset: 1920)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1659, file: !623, line: 360, baseType: !397, size: 64, offset: 1984)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1659, file: !623, line: 361, baseType: !397, size: 64, offset: 2048)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1659, file: !623, line: 362, baseType: !397, size: 64, offset: 2112)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1659, file: !623, line: 363, baseType: !397, size: 64, offset: 2176)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1659, file: !623, line: 364, baseType: !397, size: 64, offset: 2240)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1659, file: !623, line: 365, baseType: !397, size: 64, offset: 2304)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1659, file: !623, line: 367, baseType: !1248, size: 64, offset: 2368)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1659, file: !623, line: 369, baseType: !199, size: 64, offset: 2432)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1659, file: !623, line: 371, baseType: !11, size: 64, offset: 2496)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1659, file: !623, line: 372, baseType: !11, size: 64, offset: 2560)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1659, file: !623, line: 373, baseType: !11, size: 64, offset: 2624)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1659, file: !623, line: 374, baseType: !11, size: 64, offset: 2688)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1659, file: !623, line: 375, baseType: !11, size: 64, offset: 2752)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1659, file: !623, line: 376, baseType: !11, size: 64, offset: 2816)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1659, file: !623, line: 377, baseType: !11, size: 64, offset: 2880)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1659, file: !623, line: 379, baseType: !1086, size: 64, offset: 2944)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1659, file: !623, line: 381, baseType: !1086, size: 64, offset: 3008)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1659, file: !623, line: 382, baseType: !1086, size: 64, offset: 3072)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1659, file: !623, line: 383, baseType: !1086, size: 64, offset: 3136)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1659, file: !623, line: 384, baseType: !1086, size: 64, offset: 3200)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1659, file: !623, line: 385, baseType: !1086, size: 64, offset: 3264)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1659, file: !623, line: 386, baseType: !1086, size: 64, offset: 3328)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1659, file: !623, line: 387, baseType: !1086, size: 64, offset: 3392)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1659, file: !623, line: 388, baseType: !1086, size: 64, offset: 3456)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1659, file: !623, line: 389, baseType: !1086, size: 64, offset: 3520)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1659, file: !623, line: 390, baseType: !1086, size: 64, offset: 3584)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1659, file: !623, line: 391, baseType: !1086, size: 64, offset: 3648)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1659, file: !623, line: 392, baseType: !1086, size: 64, offset: 3712)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1659, file: !623, line: 393, baseType: !1086, size: 64, offset: 3776)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1659, file: !623, line: 394, baseType: !1086, size: 64, offset: 3840)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1659, file: !623, line: 395, baseType: !1086, size: 64, offset: 3904)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1659, file: !623, line: 396, baseType: !11, size: 64, offset: 3968)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1659, file: !623, line: 397, baseType: !1086, size: 64, offset: 4032)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1659, file: !623, line: 398, baseType: !1086, size: 64, offset: 4096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1659, file: !623, line: 401, baseType: !1086, size: 64, offset: 4160)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1659, file: !623, line: 403, baseType: !11, size: 64, offset: 4224)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1659, file: !623, line: 404, baseType: !11, size: 64, offset: 4288)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1659, file: !623, line: 417, baseType: !11, size: 64, offset: 4352)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1659, file: !623, line: 418, baseType: !1124, size: 64, offset: 4416)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1659, file: !623, line: 421, baseType: !83, size: 64, offset: 4480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1659, file: !623, line: 423, baseType: !762, size: 64, offset: 4544)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1659, file: !623, line: 425, baseType: !1748, size: 64, offset: 4608)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1750, line: 99, baseType: !1751)
!1750 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1750, line: 91, size: 832, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1751, file: !1750, line: 92, baseType: !402, size: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1751, file: !1750, line: 93, baseType: !310, size: 320, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1751, file: !1750, line: 94, baseType: !323, size: 128, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1751, file: !1750, line: 96, baseType: !11, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1751, file: !1750, line: 97, baseType: !11, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1751, file: !1750, line: 98, baseType: !199, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1659, file: !623, line: 426, baseType: !199, size: 64, offset: 4672)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1659, file: !623, line: 427, baseType: !11, size: 64, offset: 4736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1659, file: !623, line: 428, baseType: !1086, size: 64, offset: 4800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1659, file: !623, line: 429, baseType: !1086, size: 64, offset: 4864)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1659, file: !623, line: 431, baseType: !177, size: 64, offset: 4928)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1659, file: !623, line: 433, baseType: !11, size: 64, offset: 4992)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1659, file: !623, line: 434, baseType: !11, size: 64, offset: 5056)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1659, file: !623, line: 436, baseType: !328, size: 64, offset: 5120)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1626, file: !623, line: 237, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !623, line: 230, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 225, size: 384, elements: !1771)
!1771 = !{!1772, !1785, !1786}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1770, file: !623, line: 226, baseType: !1773, size: 256)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1097, line: 49, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 45, size: 256, elements: !1775)
!1775 = !{!1776, !1777, !1784}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1774, file: !1097, line: 46, baseType: !1096, size: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1774, file: !1097, line: 47, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1097, line: 32, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 29, size: 192, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1780, file: !1097, line: 30, baseType: !1096, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1780, file: !1097, line: 31, baseType: !16, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1774, file: !1097, line: 48, baseType: !1778, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1770, file: !623, line: 228, baseType: !11, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1770, file: !623, line: 229, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !623, line: 222, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 216, size: 192, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1789, file: !623, line: 220, baseType: !1629, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1789, file: !623, line: 221, baseType: !66, size: 128, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1626, file: !623, line: 239, baseType: !36, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1626, file: !623, line: 240, baseType: !36, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1626, file: !623, line: 241, baseType: !36, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1621, file: !631, line: 311, baseType: !1635, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1621, file: !631, line: 314, baseType: !882, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1621, file: !631, line: 320, baseType: !109, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1621, file: !631, line: 321, baseType: !462, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1621, file: !631, line: 323, baseType: !109, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1621, file: !631, line: 325, baseType: !36, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1621, file: !631, line: 326, baseType: !36, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !630, file: !631, line: 447, baseType: !1804, size: 64, offset: 9536)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !629, line: 22, baseType: !1806)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !629, line: 22, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !630, file: !631, line: 449, baseType: !1808, size: 64, offset: 9600)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !629, line: 26, baseType: !1809)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!17, !627, !627, !17, !38}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !630, file: !631, line: 451, baseType: !1813, size: 64, offset: 9664)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !631, line: 332, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !631, line: 334, size: 192, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1815, file: !631, line: 335, baseType: !1442, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1815, file: !631, line: 336, baseType: !16, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1815, file: !631, line: 337, baseType: !1813, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !630, file: !631, line: 453, baseType: !36, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !630, file: !631, line: 454, baseType: !36, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !630, file: !631, line: 455, baseType: !36, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !630, file: !631, line: 457, baseType: !36, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !630, file: !631, line: 459, baseType: !36, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !630, file: !631, line: 462, baseType: !36, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !630, file: !631, line: 465, baseType: !36, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !630, file: !631, line: 468, baseType: !36, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !630, file: !631, line: 471, baseType: !36, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !630, file: !631, line: 473, baseType: !36, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !630, file: !631, line: 475, baseType: !36, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !630, file: !631, line: 476, baseType: !36, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !630, file: !631, line: 477, baseType: !36, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !630, file: !631, line: 478, baseType: !36, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !630, file: !631, line: 479, baseType: !36, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !630, file: !631, line: 481, baseType: !36, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !630, file: !631, line: 482, baseType: !36, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !630, file: !631, line: 483, baseType: !36, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !630, file: !631, line: 484, baseType: !36, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !630, file: !631, line: 485, baseType: !36, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !630, file: !631, line: 486, baseType: !36, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !630, file: !631, line: 487, baseType: !36, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !630, file: !631, line: 489, baseType: !36, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !630, file: !631, line: 490, baseType: !36, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !630, file: !631, line: 493, baseType: !36, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !630, file: !631, line: 497, baseType: !36, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !630, file: !631, line: 498, baseType: !36, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !630, file: !631, line: 499, baseType: !36, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !630, file: !631, line: 506, baseType: !36, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !630, file: !631, line: 507, baseType: !36, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !630, file: !631, line: 508, baseType: !36, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !630, file: !631, line: 515, baseType: !36, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !630, file: !631, line: 516, baseType: !36, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !630, file: !631, line: 522, baseType: !36, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !630, file: !631, line: 523, baseType: !36, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !630, file: !631, line: 524, baseType: !36, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !630, file: !631, line: 525, baseType: !36, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !630, file: !631, line: 526, baseType: !36, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !630, file: !631, line: 527, baseType: !36, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !630, file: !631, line: 528, baseType: !36, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !630, file: !631, line: 529, baseType: !36, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !630, file: !631, line: 530, baseType: !36, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !630, file: !631, line: 531, baseType: !36, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !630, file: !631, line: 532, baseType: !36, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !630, file: !631, line: 533, baseType: !36, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !630, file: !631, line: 534, baseType: !36, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !630, file: !631, line: 535, baseType: !36, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !630, file: !631, line: 536, baseType: !36, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !630, file: !631, line: 537, baseType: !36, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !630, file: !631, line: 538, baseType: !36, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !630, file: !631, line: 539, baseType: !36, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !630, file: !631, line: 540, baseType: !36, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !630, file: !631, line: 542, baseType: !36, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !630, file: !631, line: 544, baseType: !36, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !630, file: !631, line: 545, baseType: !36, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !630, file: !631, line: 546, baseType: !36, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !630, file: !631, line: 547, baseType: !36, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !630, file: !631, line: 548, baseType: !36, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !630, file: !631, line: 549, baseType: !36, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !630, file: !631, line: 550, baseType: !36, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !630, file: !631, line: 551, baseType: !36, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !630, file: !631, line: 552, baseType: !36, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !630, file: !631, line: 553, baseType: !36, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !630, file: !631, line: 554, baseType: !36, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !630, file: !631, line: 556, baseType: !36, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !630, file: !631, line: 557, baseType: !36, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !630, file: !631, line: 561, baseType: !11, size: 64, offset: 9856)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !630, file: !631, line: 563, baseType: !11, size: 64, offset: 9920)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !630, file: !631, line: 564, baseType: !11, size: 64, offset: 9984)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !630, file: !631, line: 565, baseType: !1890, size: 256, offset: 10048)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !752)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !630, file: !631, line: 567, baseType: !17, size: 64, offset: 10304)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !630, file: !631, line: 568, baseType: !17, size: 64, offset: 10368)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !630, file: !631, line: 569, baseType: !17, size: 64, offset: 10432)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !630, file: !631, line: 570, baseType: !17, size: 64, offset: 10496)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !630, file: !631, line: 577, baseType: !17, size: 64, offset: 10560)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !630, file: !631, line: 578, baseType: !17, size: 64, offset: 10624)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !630, file: !631, line: 579, baseType: !17, size: 64, offset: 10688)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !630, file: !631, line: 580, baseType: !17, size: 64, offset: 10752)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !630, file: !631, line: 581, baseType: !17, size: 64, offset: 10816)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !630, file: !631, line: 582, baseType: !17, size: 64, offset: 10880)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !630, file: !631, line: 583, baseType: !17, size: 64, offset: 10944)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !630, file: !631, line: 584, baseType: !17, size: 64, offset: 11008)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !630, file: !631, line: 585, baseType: !17, size: 64, offset: 11072)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !630, file: !631, line: 586, baseType: !17, size: 64, offset: 11136)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !630, file: !631, line: 587, baseType: !17, size: 64, offset: 11200)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !630, file: !631, line: 588, baseType: !17, size: 64, offset: 11264)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !630, file: !631, line: 589, baseType: !17, size: 64, offset: 11328)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !630, file: !631, line: 591, baseType: !36, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !630, file: !631, line: 592, baseType: !36, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !1912, isLocal: true, isDefinition: true)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 17)
!1915 = !DIGlobalVariableExpression(var: !1916, expr: !DIExpression())
!1916 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !1917, isLocal: true, isDefinition: true)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 5)
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(name: "ngx_http_gzip_assume_intel", scope: !9, file: !2, line: 237, type: !11, isLocal: true, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(name: "ngx_http_next_body_filter", scope: !9, file: !2, line: 235, type: !1924, isLocal: true, isDefinition: true)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_body_filter_pt", file: !623, line: 513, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!462, !627, !109}
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !1930, isLocal: true, isDefinition: true)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 7)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(scope: null, file: !2, line: 649, type: !1935, isLocal: true, isDefinition: true)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 26)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1052, type: !1940, isLocal: true, isDefinition: true)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 58)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !1945, isLocal: true, isDefinition: true)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 25)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(scope: null, file: !2, line: 946, type: !1950, isLocal: true, isDefinition: true)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 24)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(name: "gzheader", scope: !1955, file: !2, line: 667, type: !2029, isLocal: true, isDefinition: true)
!1955 = distinct !DISubprogram(name: "ngx_http_gzip_filter_gzheader", scope: !2, file: !2, line: 663, type: !1956, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2024)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!462, !627, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_gzip_ctx_t", file: !2, line: 68, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 33, size: 2112, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !2023}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1960, file: !2, line: 34, baseType: !109, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1960, file: !2, line: 35, baseType: !109, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1960, file: !2, line: 36, baseType: !109, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1960, file: !2, line: 37, baseType: !109, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "last_out", scope: !1960, file: !2, line: 38, baseType: !933, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !1960, file: !2, line: 40, baseType: !109, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "copy_buf", scope: !1960, file: !2, line: 41, baseType: !109, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !1960, file: !2, line: 43, baseType: !114, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !1960, file: !2, line: 44, baseType: !114, size: 64, offset: 512)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1960, file: !2, line: 45, baseType: !462, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "preallocated", scope: !1960, file: !2, line: 47, baseType: !16, size: 64, offset: 640)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "free_mem", scope: !1960, file: !2, line: 48, baseType: !51, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1960, file: !2, line: 49, baseType: !11, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "wbits", scope: !1960, file: !2, line: 51, baseType: !25, size: 32, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "memlevel", scope: !1960, file: !2, line: 52, baseType: !25, size: 32, offset: 864)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1960, file: !2, line: 54, baseType: !36, size: 4, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1960, file: !2, line: 55, baseType: !36, size: 1, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1960, file: !2, line: 56, baseType: !36, size: 1, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nomem", scope: !1960, file: !2, line: 57, baseType: !36, size: 1, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "gzheader", scope: !1960, file: !2, line: 58, baseType: !36, size: 1, offset: 903, flags: DIFlagBitField, extraData: i64 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !1960, file: !2, line: 59, baseType: !36, size: 1, offset: 904, flags: DIFlagBitField, extraData: i64 896)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "intel", scope: !1960, file: !2, line: 60, baseType: !36, size: 1, offset: 905, flags: DIFlagBitField, extraData: i64 896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "zin", scope: !1960, file: !2, line: 62, baseType: !38, size: 64, offset: 960)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "zout", scope: !1960, file: !2, line: 63, baseType: !38, size: 64, offset: 1024)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !1960, file: !2, line: 65, baseType: !33, size: 32, offset: 1088)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "zstream", scope: !1960, file: !2, line: 66, baseType: !1988, size: 896, offset: 1152)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !1989, line: 106, baseType: !1990)
!1989 = !DIFile(filename: "/usr/include/zlib.h", directory: "", checksumkind: CSK_MD5, checksum: "69c0882c2071430ea4822b4f6c1edd30")
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !1989, line: 86, size: 896, elements: !1991)
!1991 = !{!1992, !1997, !1999, !2001, !2002, !2003, !2004, !2005, !2008, !2014, !2019, !2020, !2021, !2022}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !1990, file: !1989, line: 87, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !1995, line: 400, baseType: !1996)
!1995 = !DIFile(filename: "/usr/include/zconf.h", directory: "", checksumkind: CSK_MD5, checksum: "95e83c46958f6395f746c80cc6799e76")
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !1995, line: 391, baseType: !22)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !1990, file: !1989, line: 88, baseType: !1998, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !1995, line: 393, baseType: !36)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !1990, file: !1989, line: 89, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !1995, line: 394, baseType: !15)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !1990, file: !1989, line: 91, baseType: !1993, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !1990, file: !1989, line: 92, baseType: !1998, size: 32, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !1990, file: !1989, line: 93, baseType: !2000, size: 64, offset: 320)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1990, file: !1989, line: 95, baseType: !51, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1990, file: !1989, line: 96, baseType: !2006, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !1989, line: 84, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !1990, file: !1989, line: 98, baseType: !2009, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !1989, line: 81, baseType: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!2013, !2013, !1998, !1998}
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !1995, line: 409, baseType: !16)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !1990, file: !1989, line: 99, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !1989, line: 82, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !2013, !2013}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1990, file: !1989, line: 100, baseType: !2013, size: 64, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !1990, file: !1989, line: 102, baseType: !25, size: 32, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !1990, file: !1989, line: 104, baseType: !2000, size: 64, offset: 768)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1990, file: !1989, line: 105, baseType: !2000, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1960, file: !2, line: 67, baseType: !627, size: 64, offset: 2048)
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "r", arg: 1, scope: !1955, file: !2, line: 663, type: !627)
!2026 = !DILocalVariable(name: "ctx", arg: 2, scope: !1955, file: !2, line: 663, type: !1958)
!2027 = !DILocalVariable(name: "b", scope: !1955, file: !2, line: 665, type: !114)
!2028 = !DILocalVariable(name: "cl", scope: !1955, file: !2, line: 666, type: !109)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 80, elements: !618)
!2030 = !DIGlobalVariableExpression(var: !2031, expr: !DIExpression())
!2031 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !2032, isLocal: true, isDefinition: true)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 13)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !610, isLocal: true, isDefinition: true)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !2039, isLocal: true, isDefinition: true)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !656)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !2042, isLocal: true, isDefinition: true)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 12)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !617, isLocal: true, isDefinition: true)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !2049, isLocal: true, isDefinition: true)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 18)
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !2054, isLocal: true, isDefinition: true)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 15)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !2039, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(name: "ngx_http_gzip_filter_commands", scope: !9, file: !2, line: 131, type: !2061, isLocal: true, isDefinition: true)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 4480, elements: !618)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "ngx_http_gzip_comp_level_bounds", scope: !9, file: !2, line: 123, type: !2064, isLocal: true, isDefinition: true)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_num_bounds_t", file: !63, line: 154, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 150, size: 192, elements: !2066)
!2066 = !{!2067, !2072, !2073}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !2065, file: !63, line: 151, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_post_handler_pt", file: !63, line: 135, baseType: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!51, !77, !16, !16}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !2065, file: !63, line: 152, baseType: !462, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !2065, file: !63, line: 153, baseType: !462, size: 64, offset: 128)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(name: "ngx_http_gzip_window_p", scope: !9, file: !2, line: 127, type: !2068, isLocal: true, isDefinition: true)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1248, type: !3, isLocal: true, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "ngx_http_gzip_hash_p", scope: !9, file: !2, line: 128, type: !2068, isLocal: true, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1272, type: !2082, isLocal: true, isDefinition: true)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 52)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !1637, line: 36, baseType: !2086)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1637, line: 24, size: 512, elements: !2087)
!2087 = !{!2088, !2092, !2093, !2097, !2101, !2102, !2103, !2104}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !2086, file: !1637, line: 25, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!462, !77}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !2086, file: !1637, line: 26, baseType: !2089, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !2086, file: !1637, line: 28, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!16, !77}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !2086, file: !1637, line: 29, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!51, !77, !16}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !2086, file: !1637, line: 31, baseType: !2094, size: 64, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !2086, file: !1637, line: 32, baseType: !2069, size: 64, offset: 320)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !2086, file: !1637, line: 34, baseType: !2094, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !2086, file: !1637, line: 35, baseType: !2069, size: 64, offset: 448)
!2105 = !{i32 7, !"Dwarf Version", i32 5}
!2106 = !{i32 2, !"Debug Info Version", i32 3}
!2107 = !{i32 1, !"wchar_size", i32 4}
!2108 = !{i32 8, !"PIC Level", i32 2}
!2109 = !{i32 7, !"PIE Level", i32 2}
!2110 = !{i32 7, !"uwtable", i32 2}
!2111 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2112 = distinct !DISubprogram(name: "ngx_http_gzip_add_variables", scope: !2, file: !2, line: 1093, type: !2090, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2113)
!2113 = !{!2114, !2115}
!2114 = !DILocalVariable(name: "cf", arg: 1, scope: !2112, file: !2, line: 1093, type: !77)
!2115 = !DILocalVariable(name: "var", scope: !2112, file: !2, line: 1095, type: !2116)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_t", file: !1603, line: 21, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_variable_s", file: !1603, line: 37, size: 448, elements: !2119)
!2119 = !{!2120, !2121, !2126, !2131, !2132, !2133}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2118, file: !1603, line: 38, baseType: !66, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "set_handler", scope: !2118, file: !1603, line: 39, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_set_variable_pt", file: !1603, line: 23, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !627, !1601, !13}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_handler", scope: !2118, file: !1603, line: 40, baseType: !2127, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_get_variable_pt", file: !1603, line: 25, baseType: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!462, !627, !1601, !13}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2118, file: !1603, line: 41, baseType: !13, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !1603, line: 42, baseType: !11, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2118, file: !1603, line: 43, baseType: !11, size: 64, offset: 384)
!2134 = !{!2135, !2135, i64 0}
!2135 = !{!"any pointer", !2136, i64 0}
!2136 = !{!"omnipotent char", !2137, i64 0}
!2137 = !{!"Simple C/C++ TBAA"}
!2138 = !DILocation(line: 1093, column: 41, scope: !2112)
!2139 = !DILocation(line: 1095, column: 5, scope: !2112)
!2140 = !DILocation(line: 1095, column: 27, scope: !2112)
!2141 = !DILocation(line: 1097, column: 33, scope: !2112)
!2142 = !DILocation(line: 1097, column: 11, scope: !2112)
!2143 = !DILocation(line: 1097, column: 9, scope: !2112)
!2144 = !DILocation(line: 1098, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 1098, column: 9)
!2146 = !DILocation(line: 1098, column: 13, scope: !2145)
!2147 = !DILocation(line: 1098, column: 9, scope: !2112)
!2148 = !DILocation(line: 1099, column: 9, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 1098, column: 22)
!2150 = !DILocation(line: 1102, column: 5, scope: !2112)
!2151 = !DILocation(line: 1102, column: 10, scope: !2112)
!2152 = !DILocation(line: 1102, column: 22, scope: !2112)
!2153 = !{!2154, !2135, i64 24}
!2154 = !{!"ngx_http_variable_s", !2155, i64 0, !2135, i64 16, !2135, i64 24, !2156, i64 32, !2156, i64 40, !2156, i64 48}
!2155 = !{!"", !2156, i64 0, !2135, i64 8}
!2156 = !{!"long", !2136, i64 0}
!2157 = !DILocation(line: 1104, column: 5, scope: !2112)
!2158 = !DILocation(line: 1105, column: 1, scope: !2112)
!2159 = distinct !DISubprogram(name: "ngx_http_gzip_filter_init", scope: !2, file: !2, line: 1216, type: !2090, scopeLine: 1217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2160)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "cf", arg: 1, scope: !2159, file: !2, line: 1216, type: !77)
!2162 = !DILocation(line: 1216, column: 39, scope: !2159)
!2163 = !DILocation(line: 1218, column: 35, scope: !2159)
!2164 = !DILocation(line: 1218, column: 33, scope: !2159)
!2165 = !DILocation(line: 1219, column: 32, scope: !2159)
!2166 = !DILocation(line: 1221, column: 33, scope: !2159)
!2167 = !DILocation(line: 1221, column: 31, scope: !2159)
!2168 = !DILocation(line: 1222, column: 30, scope: !2159)
!2169 = !DILocation(line: 1224, column: 5, scope: !2159)
!2170 = distinct !DISubprogram(name: "ngx_http_gzip_create_conf", scope: !2, file: !2, line: 1153, type: !2095, scopeLine: 1154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2171)
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "cf", arg: 1, scope: !2170, file: !2, line: 1153, type: !77)
!2173 = !DILocalVariable(name: "conf", scope: !2170, file: !2, line: 1155, type: !2174)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_gzip_conf_t", file: !2, line: 30, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 15, size: 768, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2176, file: !2, line: 16, baseType: !1086, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "no_buffer", scope: !2176, file: !2, line: 17, baseType: !1086, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2176, file: !2, line: 19, baseType: !1096, size: 128, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !2176, file: !2, line: 21, baseType: !964, size: 128, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_gzipping", scope: !2176, file: !2, line: 23, baseType: !38, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2176, file: !2, line: 24, baseType: !462, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "wbits", scope: !2176, file: !2, line: 25, baseType: !38, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "memlevel", scope: !2176, file: !2, line: 26, baseType: !38, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !2176, file: !2, line: 27, baseType: !340, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "types_keys", scope: !2176, file: !2, line: 29, baseType: !83, size: 64, offset: 704)
!2188 = !DILocation(line: 1153, column: 39, scope: !2170)
!2189 = !DILocation(line: 1155, column: 5, scope: !2170)
!2190 = !DILocation(line: 1155, column: 28, scope: !2170)
!2191 = !DILocation(line: 1157, column: 24, scope: !2170)
!2192 = !DILocation(line: 1157, column: 28, scope: !2170)
!2193 = !{!2194, !2135, i64 24}
!2194 = !{!"ngx_conf_s", !2135, i64 0, !2135, i64 8, !2135, i64 16, !2135, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2156, i64 64, !2156, i64 72, !2135, i64 80, !2135, i64 88}
!2195 = !DILocation(line: 1157, column: 12, scope: !2170)
!2196 = !DILocation(line: 1157, column: 10, scope: !2170)
!2197 = !DILocation(line: 1158, column: 9, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 1158, column: 9)
!2199 = !DILocation(line: 1158, column: 14, scope: !2198)
!2200 = !DILocation(line: 1158, column: 9, scope: !2170)
!2201 = !DILocation(line: 1159, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 1158, column: 23)
!2203 = !DILocation(line: 1170, column: 5, scope: !2170)
!2204 = !DILocation(line: 1170, column: 11, scope: !2170)
!2205 = !DILocation(line: 1170, column: 18, scope: !2170)
!2206 = !{!2207, !2156, i64 0}
!2207 = !{!"", !2156, i64 0, !2156, i64 8, !2208, i64 16, !2209, i64 32, !2156, i64 48, !2156, i64 56, !2156, i64 64, !2156, i64 72, !2156, i64 80, !2135, i64 88}
!2208 = !{!"", !2135, i64 0, !2156, i64 8}
!2209 = !{!"", !2156, i64 0, !2156, i64 8}
!2210 = !DILocation(line: 1171, column: 5, scope: !2170)
!2211 = !DILocation(line: 1171, column: 11, scope: !2170)
!2212 = !DILocation(line: 1171, column: 21, scope: !2170)
!2213 = !{!2207, !2156, i64 8}
!2214 = !DILocation(line: 1173, column: 5, scope: !2170)
!2215 = !DILocation(line: 1173, column: 11, scope: !2170)
!2216 = !DILocation(line: 1173, column: 29, scope: !2170)
!2217 = !{!2207, !2156, i64 48}
!2218 = !DILocation(line: 1174, column: 5, scope: !2170)
!2219 = !DILocation(line: 1174, column: 11, scope: !2170)
!2220 = !DILocation(line: 1174, column: 17, scope: !2170)
!2221 = !{!2207, !2156, i64 56}
!2222 = !DILocation(line: 1175, column: 5, scope: !2170)
!2223 = !DILocation(line: 1175, column: 11, scope: !2170)
!2224 = !DILocation(line: 1175, column: 17, scope: !2170)
!2225 = !{!2207, !2156, i64 64}
!2226 = !DILocation(line: 1176, column: 5, scope: !2170)
!2227 = !DILocation(line: 1176, column: 11, scope: !2170)
!2228 = !DILocation(line: 1176, column: 20, scope: !2170)
!2229 = !{!2207, !2156, i64 72}
!2230 = !DILocation(line: 1177, column: 5, scope: !2170)
!2231 = !DILocation(line: 1177, column: 11, scope: !2170)
!2232 = !DILocation(line: 1177, column: 22, scope: !2170)
!2233 = !{!2207, !2156, i64 80}
!2234 = !DILocation(line: 1179, column: 12, scope: !2170)
!2235 = !DILocation(line: 1179, column: 5, scope: !2170)
!2236 = !DILocation(line: 1180, column: 1, scope: !2170)
!2237 = distinct !DISubprogram(name: "ngx_http_gzip_merge_conf", scope: !2, file: !2, line: 1184, type: !2070, scopeLine: 1185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243}
!2239 = !DILocalVariable(name: "cf", arg: 1, scope: !2237, file: !2, line: 1184, type: !77)
!2240 = !DILocalVariable(name: "parent", arg: 2, scope: !2237, file: !2, line: 1184, type: !16)
!2241 = !DILocalVariable(name: "child", arg: 3, scope: !2237, file: !2, line: 1184, type: !16)
!2242 = !DILocalVariable(name: "prev", scope: !2237, file: !2, line: 1186, type: !2174)
!2243 = !DILocalVariable(name: "conf", scope: !2237, file: !2, line: 1187, type: !2174)
!2244 = !DILocation(line: 1184, column: 38, scope: !2237)
!2245 = !DILocation(line: 1184, column: 48, scope: !2237)
!2246 = !DILocation(line: 1184, column: 62, scope: !2237)
!2247 = !DILocation(line: 1186, column: 5, scope: !2237)
!2248 = !DILocation(line: 1186, column: 27, scope: !2237)
!2249 = !DILocation(line: 1186, column: 34, scope: !2237)
!2250 = !DILocation(line: 1187, column: 5, scope: !2237)
!2251 = !DILocation(line: 1187, column: 27, scope: !2237)
!2252 = !DILocation(line: 1187, column: 34, scope: !2237)
!2253 = !DILocation(line: 1189, column: 5, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1189, column: 5)
!2255 = !DILocation(line: 1189, column: 5, scope: !2237)
!2256 = !DILocation(line: 1189, column: 5, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 1189, column: 5)
!2258 = !DILocation(line: 1190, column: 5, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1190, column: 5)
!2260 = !DILocation(line: 1190, column: 5, scope: !2237)
!2261 = !DILocation(line: 1190, column: 5, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1190, column: 5)
!2263 = !DILocation(line: 1192, column: 5, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1192, column: 5)
!2265 = !{!2207, !2156, i64 32}
!2266 = !DILocation(line: 1192, column: 5, scope: !2237)
!2267 = !DILocation(line: 1192, column: 5, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 1192, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 1192, column: 5)
!2270 = !DILocation(line: 1192, column: 5, scope: !2269)
!2271 = !DILocation(line: 1192, column: 5, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 1192, column: 5)
!2273 = !{!2207, !2156, i64 40}
!2274 = !DILocation(line: 1192, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 1192, column: 5)
!2276 = !{!2156, !2156, i64 0}
!2277 = !DILocation(line: 1195, column: 5, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1195, column: 5)
!2279 = !DILocation(line: 1195, column: 5, scope: !2237)
!2280 = !DILocation(line: 1195, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 1195, column: 5)
!2282 = !DILocation(line: 1197, column: 5, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1197, column: 5)
!2284 = !DILocation(line: 1197, column: 5, scope: !2237)
!2285 = !DILocation(line: 1197, column: 5, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1197, column: 5)
!2287 = !DILocation(line: 1198, column: 5, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1198, column: 5)
!2289 = !DILocation(line: 1198, column: 5, scope: !2237)
!2290 = !DILocation(line: 1198, column: 5, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 1198, column: 5)
!2292 = !DILocation(line: 1199, column: 5, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1199, column: 5)
!2294 = !DILocation(line: 1199, column: 5, scope: !2237)
!2295 = !DILocation(line: 1199, column: 5, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 1199, column: 5)
!2297 = !DILocation(line: 1201, column: 5, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1201, column: 5)
!2299 = !DILocation(line: 1201, column: 5, scope: !2237)
!2300 = !DILocation(line: 1201, column: 5, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 1201, column: 5)
!2302 = !DILocation(line: 1203, column: 30, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1203, column: 9)
!2304 = !DILocation(line: 1203, column: 35, scope: !2303)
!2305 = !DILocation(line: 1203, column: 41, scope: !2303)
!2306 = !DILocation(line: 1203, column: 54, scope: !2303)
!2307 = !DILocation(line: 1203, column: 60, scope: !2303)
!2308 = !DILocation(line: 1204, column: 31, scope: !2303)
!2309 = !DILocation(line: 1204, column: 37, scope: !2303)
!2310 = !DILocation(line: 1204, column: 50, scope: !2303)
!2311 = !DILocation(line: 1204, column: 56, scope: !2303)
!2312 = !DILocation(line: 1203, column: 9, scope: !2303)
!2313 = !DILocation(line: 1206, column: 9, scope: !2303)
!2314 = !DILocation(line: 1203, column: 9, scope: !2237)
!2315 = !DILocation(line: 1208, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 1207, column: 5)
!2317 = !DILocation(line: 1211, column: 5, scope: !2237)
!2318 = !DILocation(line: 1212, column: 1, scope: !2237)
!2319 = !DISubprogram(name: "ngx_http_add_variable", scope: !1603, file: !1603, line: 49, type: !2320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2116, !77, !882, !11}
!2322 = distinct !DISubprogram(name: "ngx_http_gzip_ratio_variable", scope: !2, file: !2, line: 1109, type: !2129, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2323)
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329}
!2324 = !DILocalVariable(name: "r", arg: 1, scope: !2322, file: !2, line: 1109, type: !627)
!2325 = !DILocalVariable(name: "v", arg: 2, scope: !2322, file: !2, line: 1110, type: !1601)
!2326 = !DILocalVariable(name: "data", arg: 3, scope: !2322, file: !2, line: 1110, type: !13)
!2327 = !DILocalVariable(name: "zint", scope: !2322, file: !2, line: 1112, type: !11)
!2328 = !DILocalVariable(name: "zfrac", scope: !2322, file: !2, line: 1112, type: !11)
!2329 = !DILocalVariable(name: "ctx", scope: !2322, file: !2, line: 1113, type: !1958)
!2330 = !DILocation(line: 1109, column: 50, scope: !2322)
!2331 = !DILocation(line: 1110, column: 32, scope: !2322)
!2332 = !DILocation(line: 1110, column: 45, scope: !2322)
!2333 = !DILocation(line: 1112, column: 5, scope: !2322)
!2334 = !DILocation(line: 1112, column: 27, scope: !2322)
!2335 = !DILocation(line: 1112, column: 33, scope: !2322)
!2336 = !DILocation(line: 1113, column: 5, scope: !2322)
!2337 = !DILocation(line: 1113, column: 27, scope: !2322)
!2338 = !DILocation(line: 1115, column: 11, scope: !2322)
!2339 = !{!2340, !2135, i64 16}
!2340 = !{!"ngx_http_request_s", !2341, i64 0, !2135, i64 8, !2135, i64 16, !2135, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2135, i64 72, !2135, i64 80, !2135, i64 88, !2135, i64 96, !2342, i64 104, !2346, i64 480, !2135, i64 888, !2156, i64 896, !2156, i64 904, !2156, i64 912, !2156, i64 920, !2156, i64 928, !2155, i64 936, !2155, i64 952, !2155, i64 968, !2155, i64 984, !2155, i64 1000, !2155, i64 1016, !2155, i64 1032, !2155, i64 1048, !2135, i64 1064, !2135, i64 1072, !2135, i64 1080, !2135, i64 1088, !2135, i64 1096, !2135, i64 1104, !2156, i64 1112, !2135, i64 1120, !2156, i64 1128, !2135, i64 1136, !2156, i64 1144, !2156, i64 1152, !2156, i64 1160, !2156, i64 1168, !2156, i64 1176, !2135, i64 1184, !2135, i64 1192, !2135, i64 1200, !2135, i64 1208, !2341, i64 1216, !2341, i64 1218, !2341, i64 1219, !2341, i64 1220, !2341, i64 1220, !2341, i64 1220, !2341, i64 1220, !2341, i64 1220, !2341, i64 1221, !2341, i64 1221, !2341, i64 1221, !2341, i64 1221, !2341, i64 1221, !2341, i64 1221, !2341, i64 1221, !2341, i64 1222, !2341, i64 1222, !2341, i64 1222, !2341, i64 1222, !2341, i64 1222, !2341, i64 1222, !2341, i64 1223, !2341, i64 1223, !2341, i64 1223, !2341, i64 1223, !2341, i64 1223, !2341, i64 1223, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1224, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1225, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1226, !2341, i64 1227, !2341, i64 1227, !2341, i64 1227, !2341, i64 1227, !2341, i64 1227, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1228, !2341, i64 1229, !2341, i64 1229, !2156, i64 1232, !2156, i64 1240, !2156, i64 1248, !2136, i64 1256, !2135, i64 1288, !2135, i64 1296, !2135, i64 1304, !2135, i64 1312, !2135, i64 1320, !2135, i64 1328, !2135, i64 1336, !2135, i64 1344, !2135, i64 1352, !2135, i64 1360, !2135, i64 1368, !2135, i64 1376, !2135, i64 1384, !2135, i64 1392, !2135, i64 1400, !2135, i64 1408, !2135, i64 1416, !2341, i64 1424, !2341, i64 1426}
!2341 = !{!"int", !2136, i64 0}
!2342 = !{!"", !2343, i64 0, !2135, i64 56, !2135, i64 64, !2135, i64 72, !2135, i64 80, !2135, i64 88, !2135, i64 96, !2135, i64 104, !2135, i64 112, !2135, i64 120, !2135, i64 128, !2135, i64 136, !2135, i64 144, !2135, i64 152, !2135, i64 160, !2135, i64 168, !2135, i64 176, !2135, i64 184, !2135, i64 192, !2135, i64 200, !2135, i64 208, !2135, i64 216, !2345, i64 224, !2155, i64 264, !2155, i64 280, !2345, i64 296, !2155, i64 336, !2156, i64 352, !2156, i64 360, !2341, i64 368, !2341, i64 368, !2341, i64 368, !2341, i64 368, !2341, i64 368, !2341, i64 368, !2341, i64 368, !2341, i64 369, !2341, i64 369}
!2343 = !{!"", !2135, i64 0, !2344, i64 8, !2156, i64 32, !2156, i64 40, !2135, i64 48}
!2344 = !{!"ngx_list_part_s", !2135, i64 0, !2156, i64 8, !2135, i64 16}
!2345 = !{!"", !2135, i64 0, !2156, i64 8, !2156, i64 16, !2156, i64 24, !2135, i64 32}
!2346 = !{!"", !2343, i64 0, !2343, i64 56, !2156, i64 112, !2155, i64 120, !2135, i64 136, !2135, i64 144, !2135, i64 152, !2135, i64 160, !2135, i64 168, !2135, i64 176, !2135, i64 184, !2135, i64 192, !2135, i64 200, !2135, i64 208, !2135, i64 216, !2135, i64 224, !2135, i64 232, !2156, i64 240, !2155, i64 248, !2155, i64 264, !2135, i64 280, !2156, i64 288, !2345, i64 296, !2345, i64 336, !2156, i64 376, !2156, i64 384, !2156, i64 392, !2156, i64 400}
!2347 = !{!2348, !2156, i64 0}
!2348 = !{!"ngx_module_s", !2156, i64 0, !2156, i64 8, !2135, i64 16, !2156, i64 24, !2156, i64 32, !2156, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2156, i64 72, !2135, i64 80, !2135, i64 88, !2135, i64 96, !2135, i64 104, !2135, i64 112, !2135, i64 120, !2135, i64 128, !2156, i64 136, !2156, i64 144, !2156, i64 152, !2156, i64 160, !2156, i64 168, !2156, i64 176, !2156, i64 184, !2156, i64 192}
!2349 = !DILocation(line: 1115, column: 9, scope: !2322)
!2350 = !DILocation(line: 1117, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1117, column: 9)
!2352 = !DILocation(line: 1117, column: 13, scope: !2351)
!2353 = !DILocation(line: 1117, column: 21, scope: !2351)
!2354 = !DILocation(line: 1117, column: 24, scope: !2351)
!2355 = !DILocation(line: 1117, column: 29, scope: !2351)
!2356 = !{!2357, !2156, i64 128}
!2357 = !{!"", !2135, i64 0, !2135, i64 8, !2135, i64 16, !2135, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2156, i64 72, !2135, i64 80, !2135, i64 88, !2156, i64 96, !2341, i64 104, !2341, i64 108, !2341, i64 112, !2341, i64 112, !2341, i64 112, !2341, i64 112, !2341, i64 112, !2341, i64 113, !2341, i64 113, !2156, i64 120, !2156, i64 128, !2341, i64 136, !2358, i64 144, !2135, i64 256}
!2358 = !{!"z_stream_s", !2135, i64 0, !2341, i64 8, !2156, i64 16, !2135, i64 24, !2341, i64 32, !2156, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2135, i64 72, !2135, i64 80, !2341, i64 88, !2156, i64 96, !2156, i64 104}
!2359 = !DILocation(line: 1117, column: 34, scope: !2351)
!2360 = !DILocation(line: 1117, column: 9, scope: !2322)
!2361 = !DILocation(line: 1118, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 1117, column: 40)
!2363 = !DILocation(line: 1118, column: 22, scope: !2362)
!2364 = !DILocation(line: 1119, column: 9, scope: !2362)
!2365 = !DILocation(line: 1122, column: 5, scope: !2322)
!2366 = !DILocation(line: 1122, column: 14, scope: !2322)
!2367 = !DILocation(line: 1123, column: 5, scope: !2322)
!2368 = !DILocation(line: 1123, column: 21, scope: !2322)
!2369 = !DILocation(line: 1124, column: 5, scope: !2322)
!2370 = !DILocation(line: 1124, column: 18, scope: !2322)
!2371 = !DILocation(line: 1126, column: 27, scope: !2322)
!2372 = !DILocation(line: 1126, column: 30, scope: !2322)
!2373 = !{!2340, !2135, i64 88}
!2374 = !DILocation(line: 1126, column: 15, scope: !2322)
!2375 = !DILocation(line: 1126, column: 5, scope: !2322)
!2376 = !DILocation(line: 1126, column: 8, scope: !2322)
!2377 = !DILocation(line: 1126, column: 13, scope: !2322)
!2378 = !{!2379, !2135, i64 8}
!2379 = !{!"", !2341, i64 0, !2341, i64 3, !2341, i64 3, !2341, i64 3, !2341, i64 3, !2135, i64 8}
!2380 = !DILocation(line: 1127, column: 9, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1127, column: 9)
!2382 = !DILocation(line: 1127, column: 12, scope: !2381)
!2383 = !DILocation(line: 1127, column: 17, scope: !2381)
!2384 = !DILocation(line: 1127, column: 9, scope: !2322)
!2385 = !DILocation(line: 1128, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 1127, column: 26)
!2387 = !DILocation(line: 1131, column: 26, scope: !2322)
!2388 = !DILocation(line: 1131, column: 31, scope: !2322)
!2389 = !{!2357, !2156, i64 120}
!2390 = !DILocation(line: 1131, column: 37, scope: !2322)
!2391 = !DILocation(line: 1131, column: 42, scope: !2322)
!2392 = !DILocation(line: 1131, column: 35, scope: !2322)
!2393 = !DILocation(line: 1131, column: 10, scope: !2322)
!2394 = !DILocation(line: 1132, column: 28, scope: !2322)
!2395 = !DILocation(line: 1132, column: 33, scope: !2322)
!2396 = !DILocation(line: 1132, column: 37, scope: !2322)
!2397 = !DILocation(line: 1132, column: 45, scope: !2322)
!2398 = !DILocation(line: 1132, column: 50, scope: !2322)
!2399 = !DILocation(line: 1132, column: 43, scope: !2322)
!2400 = !DILocation(line: 1132, column: 56, scope: !2322)
!2401 = !DILocation(line: 1132, column: 11, scope: !2322)
!2402 = !DILocation(line: 1134, column: 10, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1134, column: 9)
!2404 = !DILocation(line: 1134, column: 15, scope: !2403)
!2405 = !DILocation(line: 1134, column: 19, scope: !2403)
!2406 = !DILocation(line: 1134, column: 28, scope: !2403)
!2407 = !DILocation(line: 1134, column: 33, scope: !2403)
!2408 = !DILocation(line: 1134, column: 26, scope: !2403)
!2409 = !DILocation(line: 1134, column: 39, scope: !2403)
!2410 = !DILocation(line: 1134, column: 44, scope: !2403)
!2411 = !DILocation(line: 1134, column: 9, scope: !2322)
!2412 = !DILocation(line: 1138, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !2, line: 1134, column: 49)
!2414 = !DILocation(line: 1140, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2413, file: !2, line: 1140, column: 13)
!2416 = !DILocation(line: 1140, column: 19, scope: !2415)
!2417 = !DILocation(line: 1140, column: 13, scope: !2413)
!2418 = !DILocation(line: 1141, column: 17, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 1140, column: 25)
!2420 = !DILocation(line: 1142, column: 19, scope: !2419)
!2421 = !DILocation(line: 1143, column: 9, scope: !2419)
!2422 = !DILocation(line: 1144, column: 5, scope: !2413)
!2423 = !DILocation(line: 1146, column: 26, scope: !2322)
!2424 = !DILocation(line: 1146, column: 29, scope: !2322)
!2425 = !DILocation(line: 1146, column: 48, scope: !2322)
!2426 = !DILocation(line: 1146, column: 54, scope: !2322)
!2427 = !DILocation(line: 1146, column: 14, scope: !2322)
!2428 = !DILocation(line: 1146, column: 63, scope: !2322)
!2429 = !DILocation(line: 1146, column: 66, scope: !2322)
!2430 = !DILocation(line: 1146, column: 61, scope: !2322)
!2431 = !DILocation(line: 1146, column: 5, scope: !2322)
!2432 = !DILocation(line: 1146, column: 12, scope: !2322)
!2433 = !DILocation(line: 1148, column: 5, scope: !2322)
!2434 = !DILocation(line: 1149, column: 1, scope: !2322)
!2435 = !DISubprogram(name: "ngx_pnalloc", scope: !96, file: !96, line: 80, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!16, !93, !38}
!2438 = !DISubprogram(name: "ngx_sprintf", scope: !67, file: !67, line: 153, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!17, !17, !56, null}
!2441 = distinct !DISubprogram(name: "ngx_http_gzip_header_filter", scope: !2, file: !2, line: 241, type: !625, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2442)
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DILocalVariable(name: "r", arg: 1, scope: !2441, file: !2, line: 241, type: !627)
!2444 = !DILocalVariable(name: "h", scope: !2441, file: !2, line: 243, type: !1187)
!2445 = !DILocalVariable(name: "ctx", scope: !2441, file: !2, line: 244, type: !1958)
!2446 = !DILocalVariable(name: "conf", scope: !2441, file: !2, line: 245, type: !2174)
!2447 = !DILocation(line: 241, column: 49, scope: !2441)
!2448 = !DILocation(line: 243, column: 5, scope: !2441)
!2449 = !DILocation(line: 243, column: 28, scope: !2441)
!2450 = !DILocation(line: 244, column: 5, scope: !2441)
!2451 = !DILocation(line: 244, column: 28, scope: !2441)
!2452 = !DILocation(line: 245, column: 5, scope: !2441)
!2453 = !DILocation(line: 245, column: 28, scope: !2441)
!2454 = !DILocation(line: 247, column: 12, scope: !2441)
!2455 = !{!2340, !2135, i64 40}
!2456 = !DILocation(line: 247, column: 10, scope: !2441)
!2457 = !DILocation(line: 249, column: 10, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 249, column: 9)
!2459 = !DILocation(line: 249, column: 16, scope: !2458)
!2460 = !DILocation(line: 250, column: 9, scope: !2458)
!2461 = !DILocation(line: 250, column: 13, scope: !2458)
!2462 = !DILocation(line: 250, column: 16, scope: !2458)
!2463 = !DILocation(line: 250, column: 28, scope: !2458)
!2464 = !{!2340, !2156, i64 592}
!2465 = !DILocation(line: 250, column: 35, scope: !2458)
!2466 = !DILocation(line: 251, column: 13, scope: !2458)
!2467 = !DILocation(line: 251, column: 16, scope: !2458)
!2468 = !DILocation(line: 251, column: 19, scope: !2458)
!2469 = !DILocation(line: 251, column: 31, scope: !2458)
!2470 = !DILocation(line: 251, column: 38, scope: !2458)
!2471 = !DILocation(line: 252, column: 13, scope: !2458)
!2472 = !DILocation(line: 252, column: 16, scope: !2458)
!2473 = !DILocation(line: 252, column: 19, scope: !2458)
!2474 = !DILocation(line: 252, column: 31, scope: !2458)
!2475 = !DILocation(line: 252, column: 38, scope: !2458)
!2476 = !DILocation(line: 253, column: 9, scope: !2458)
!2477 = !DILocation(line: 253, column: 13, scope: !2458)
!2478 = !DILocation(line: 253, column: 16, scope: !2458)
!2479 = !DILocation(line: 253, column: 28, scope: !2458)
!2480 = !{!2340, !2135, i64 640}
!2481 = !DILocation(line: 254, column: 13, scope: !2458)
!2482 = !DILocation(line: 254, column: 16, scope: !2458)
!2483 = !DILocation(line: 254, column: 19, scope: !2458)
!2484 = !DILocation(line: 254, column: 31, scope: !2458)
!2485 = !DILocation(line: 254, column: 49, scope: !2458)
!2486 = !DILocation(line: 254, column: 55, scope: !2458)
!2487 = !{!2488, !2156, i64 24}
!2488 = !{!"", !2156, i64 0, !2155, i64 8, !2155, i64 24, !2135, i64 40}
!2489 = !DILocation(line: 255, column: 9, scope: !2458)
!2490 = !DILocation(line: 255, column: 13, scope: !2458)
!2491 = !DILocation(line: 255, column: 16, scope: !2458)
!2492 = !DILocation(line: 255, column: 28, scope: !2458)
!2493 = !{!2340, !2156, i64 856}
!2494 = !DILocation(line: 255, column: 45, scope: !2458)
!2495 = !DILocation(line: 256, column: 13, scope: !2458)
!2496 = !DILocation(line: 256, column: 16, scope: !2458)
!2497 = !DILocation(line: 256, column: 19, scope: !2458)
!2498 = !DILocation(line: 256, column: 31, scope: !2458)
!2499 = !DILocation(line: 256, column: 50, scope: !2458)
!2500 = !DILocation(line: 256, column: 56, scope: !2458)
!2501 = !DILocation(line: 256, column: 48, scope: !2458)
!2502 = !DILocation(line: 257, column: 9, scope: !2458)
!2503 = !DILocation(line: 257, column: 39, scope: !2458)
!2504 = !DILocation(line: 257, column: 43, scope: !2458)
!2505 = !DILocation(line: 257, column: 49, scope: !2458)
!2506 = !DILocation(line: 257, column: 12, scope: !2458)
!2507 = !DILocation(line: 257, column: 56, scope: !2458)
!2508 = !DILocation(line: 258, column: 9, scope: !2458)
!2509 = !DILocation(line: 258, column: 12, scope: !2458)
!2510 = !DILocation(line: 258, column: 15, scope: !2458)
!2511 = !DILocation(line: 249, column: 9, scope: !2441)
!2512 = !DILocation(line: 260, column: 16, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2458, file: !2, line: 259, column: 5)
!2514 = !DILocation(line: 260, column: 44, scope: !2513)
!2515 = !DILocation(line: 260, column: 9, scope: !2513)
!2516 = !DILocation(line: 263, column: 5, scope: !2441)
!2517 = !DILocation(line: 263, column: 8, scope: !2441)
!2518 = !DILocation(line: 263, column: 18, scope: !2441)
!2519 = !DILocation(line: 277, column: 10, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 277, column: 9)
!2521 = !DILocation(line: 277, column: 13, scope: !2520)
!2522 = !DILocation(line: 277, column: 9, scope: !2441)
!2523 = !DILocation(line: 278, column: 30, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 278, column: 13)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 277, column: 26)
!2526 = !DILocation(line: 278, column: 13, scope: !2524)
!2527 = !DILocation(line: 278, column: 33, scope: !2524)
!2528 = !DILocation(line: 278, column: 13, scope: !2525)
!2529 = !DILocation(line: 279, column: 20, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 278, column: 44)
!2531 = !DILocation(line: 279, column: 48, scope: !2530)
!2532 = !DILocation(line: 279, column: 13, scope: !2530)
!2533 = !DILocation(line: 282, column: 5, scope: !2525)
!2534 = !DILocation(line: 282, column: 17, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 282, column: 16)
!2536 = !DILocation(line: 282, column: 20, scope: !2535)
!2537 = !DILocation(line: 282, column: 16, scope: !2520)
!2538 = !DILocation(line: 283, column: 16, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 282, column: 29)
!2540 = !DILocation(line: 283, column: 44, scope: !2539)
!2541 = !DILocation(line: 283, column: 9, scope: !2539)
!2542 = !DILocation(line: 286, column: 23, scope: !2441)
!2543 = !DILocation(line: 286, column: 26, scope: !2441)
!2544 = !DILocation(line: 286, column: 11, scope: !2441)
!2545 = !DILocation(line: 286, column: 9, scope: !2441)
!2546 = !DILocation(line: 287, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 287, column: 9)
!2548 = !DILocation(line: 287, column: 13, scope: !2547)
!2549 = !DILocation(line: 287, column: 9, scope: !2441)
!2550 = !DILocation(line: 288, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 287, column: 22)
!2552 = !DILocation(line: 291, column: 5, scope: !2441)
!2553 = !DILocation(line: 293, column: 20, scope: !2441)
!2554 = !DILocation(line: 293, column: 5, scope: !2441)
!2555 = !DILocation(line: 293, column: 10, scope: !2441)
!2556 = !DILocation(line: 293, column: 18, scope: !2441)
!2557 = !{!2357, !2135, i64 256}
!2558 = !DILocation(line: 294, column: 23, scope: !2441)
!2559 = !DILocation(line: 294, column: 29, scope: !2441)
!2560 = !DILocation(line: 294, column: 47, scope: !2441)
!2561 = !DILocation(line: 294, column: 5, scope: !2441)
!2562 = !DILocation(line: 294, column: 10, scope: !2441)
!2563 = !DILocation(line: 294, column: 20, scope: !2441)
!2564 = !DILocation(line: 296, column: 33, scope: !2441)
!2565 = !DILocation(line: 296, column: 36, scope: !2441)
!2566 = !DILocation(line: 296, column: 5, scope: !2441)
!2567 = !DILocation(line: 298, column: 24, scope: !2441)
!2568 = !DILocation(line: 298, column: 27, scope: !2441)
!2569 = !DILocation(line: 298, column: 39, scope: !2441)
!2570 = !DILocation(line: 298, column: 9, scope: !2441)
!2571 = !DILocation(line: 298, column: 7, scope: !2441)
!2572 = !DILocation(line: 299, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 299, column: 9)
!2574 = !DILocation(line: 299, column: 11, scope: !2573)
!2575 = !DILocation(line: 299, column: 9, scope: !2441)
!2576 = !DILocation(line: 300, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 299, column: 20)
!2578 = !DILocation(line: 303, column: 5, scope: !2441)
!2579 = !DILocation(line: 303, column: 8, scope: !2441)
!2580 = !DILocation(line: 303, column: 13, scope: !2441)
!2581 = !{!2488, !2156, i64 0}
!2582 = !DILocation(line: 304, column: 5, scope: !2441)
!2583 = !{!2488, !2156, i64 8}
!2584 = !{!2488, !2135, i64 16}
!2585 = !DILocation(line: 305, column: 5, scope: !2441)
!2586 = !{!2488, !2135, i64 32}
!2587 = !DILocation(line: 306, column: 39, scope: !2441)
!2588 = !DILocation(line: 306, column: 5, scope: !2441)
!2589 = !DILocation(line: 306, column: 8, scope: !2441)
!2590 = !DILocation(line: 306, column: 20, scope: !2441)
!2591 = !DILocation(line: 306, column: 37, scope: !2441)
!2592 = !DILocation(line: 308, column: 5, scope: !2441)
!2593 = !DILocation(line: 308, column: 8, scope: !2441)
!2594 = !DILocation(line: 308, column: 35, scope: !2441)
!2595 = !DILocation(line: 310, column: 5, scope: !2441)
!2596 = !DILocation(line: 310, column: 5, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 310, column: 5)
!2598 = !{!2340, !2135, i64 632}
!2599 = !DILocation(line: 310, column: 5, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 310, column: 5)
!2601 = !DILocation(line: 311, column: 5, scope: !2441)
!2602 = !DILocation(line: 311, column: 5, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 311, column: 5)
!2604 = !{!2340, !2135, i64 680}
!2605 = !DILocation(line: 311, column: 5, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 311, column: 5)
!2607 = !DILocation(line: 312, column: 24, scope: !2441)
!2608 = !DILocation(line: 312, column: 5, scope: !2441)
!2609 = !DILocation(line: 314, column: 12, scope: !2441)
!2610 = !DILocation(line: 314, column: 40, scope: !2441)
!2611 = !DILocation(line: 314, column: 5, scope: !2441)
!2612 = !DILocation(line: 315, column: 1, scope: !2441)
!2613 = distinct !DISubprogram(name: "ngx_http_gzip_body_filter", scope: !2, file: !2, line: 319, type: !1926, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2615 = !DILocalVariable(name: "r", arg: 1, scope: !2613, file: !2, line: 319, type: !627)
!2616 = !DILocalVariable(name: "in", arg: 2, scope: !2613, file: !2, line: 319, type: !109)
!2617 = !DILocalVariable(name: "rc", scope: !2613, file: !2, line: 321, type: !25)
!2618 = !DILocalVariable(name: "flush", scope: !2613, file: !2, line: 322, type: !11)
!2619 = !DILocalVariable(name: "cl", scope: !2613, file: !2, line: 323, type: !109)
!2620 = !DILocalVariable(name: "ctx", scope: !2613, file: !2, line: 324, type: !1958)
!2621 = !DILabel(scope: !2613, name: "failed", file: !2, line: 477)
!2622 = !DILocation(line: 319, column: 47, scope: !2613)
!2623 = !DILocation(line: 319, column: 63, scope: !2613)
!2624 = !DILocation(line: 321, column: 5, scope: !2613)
!2625 = !DILocation(line: 321, column: 27, scope: !2613)
!2626 = !DILocation(line: 322, column: 5, scope: !2613)
!2627 = !DILocation(line: 322, column: 27, scope: !2613)
!2628 = !DILocation(line: 323, column: 5, scope: !2613)
!2629 = !DILocation(line: 323, column: 27, scope: !2613)
!2630 = !DILocation(line: 324, column: 5, scope: !2613)
!2631 = !DILocation(line: 324, column: 27, scope: !2613)
!2632 = !DILocation(line: 326, column: 11, scope: !2613)
!2633 = !DILocation(line: 326, column: 9, scope: !2613)
!2634 = !DILocation(line: 328, column: 9, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 328, column: 9)
!2636 = !DILocation(line: 328, column: 13, scope: !2635)
!2637 = !DILocation(line: 328, column: 21, scope: !2635)
!2638 = !DILocation(line: 328, column: 24, scope: !2635)
!2639 = !DILocation(line: 328, column: 29, scope: !2635)
!2640 = !DILocation(line: 328, column: 34, scope: !2635)
!2641 = !DILocation(line: 328, column: 37, scope: !2635)
!2642 = !DILocation(line: 328, column: 40, scope: !2635)
!2643 = !DILocation(line: 328, column: 9, scope: !2613)
!2644 = !DILocation(line: 329, column: 16, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 328, column: 53)
!2646 = !DILocation(line: 329, column: 42, scope: !2645)
!2647 = !DILocation(line: 329, column: 45, scope: !2645)
!2648 = !DILocation(line: 329, column: 9, scope: !2645)
!2649 = !DILocation(line: 335, column: 9, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 335, column: 9)
!2651 = !DILocation(line: 335, column: 14, scope: !2650)
!2652 = !DILocation(line: 335, column: 9, scope: !2613)
!2653 = !DILocation(line: 346, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 346, column: 13)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 335, column: 25)
!2656 = !DILocation(line: 346, column: 13, scope: !2655)
!2657 = !DILocation(line: 347, column: 49, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 346, column: 17)
!2659 = !DILocation(line: 347, column: 54, scope: !2658)
!2660 = !DILocation(line: 347, column: 21, scope: !2658)
!2661 = !DILocation(line: 347, column: 13, scope: !2658)
!2662 = !DILocation(line: 350, column: 17, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 347, column: 59)
!2664 = !DILocation(line: 353, column: 20, scope: !2663)
!2665 = !DILocation(line: 354, column: 17, scope: !2663)
!2666 = !DILocation(line: 357, column: 17, scope: !2663)
!2667 = !DILocation(line: 360, column: 9, scope: !2658)
!2668 = !DILocation(line: 361, column: 13, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 360, column: 16)
!2670 = !DILocation(line: 361, column: 18, scope: !2669)
!2671 = !DILocation(line: 361, column: 28, scope: !2669)
!2672 = !DILocation(line: 363, column: 5, scope: !2655)
!2673 = !DILocation(line: 365, column: 9, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 365, column: 9)
!2675 = !DILocation(line: 365, column: 14, scope: !2674)
!2676 = !{!2357, !2135, i64 80}
!2677 = !DILocation(line: 365, column: 27, scope: !2674)
!2678 = !DILocation(line: 365, column: 9, scope: !2613)
!2679 = !DILocation(line: 366, column: 48, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 366, column: 13)
!2681 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 365, column: 36)
!2682 = !DILocation(line: 366, column: 51, scope: !2680)
!2683 = !DILocation(line: 366, column: 13, scope: !2680)
!2684 = !DILocation(line: 366, column: 56, scope: !2680)
!2685 = !DILocation(line: 366, column: 13, scope: !2681)
!2686 = !DILocation(line: 367, column: 13, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 366, column: 67)
!2688 = !DILocation(line: 369, column: 5, scope: !2681)
!2689 = !DILocation(line: 371, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 371, column: 9)
!2691 = !DILocation(line: 371, column: 9, scope: !2613)
!2692 = !DILocation(line: 372, column: 32, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !2, line: 372, column: 13)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 371, column: 13)
!2695 = !DILocation(line: 372, column: 35, scope: !2693)
!2696 = !DILocation(line: 372, column: 42, scope: !2693)
!2697 = !DILocation(line: 372, column: 47, scope: !2693)
!2698 = !DILocation(line: 372, column: 51, scope: !2693)
!2699 = !DILocation(line: 372, column: 13, scope: !2693)
!2700 = !DILocation(line: 372, column: 55, scope: !2693)
!2701 = !DILocation(line: 372, column: 13, scope: !2694)
!2702 = !DILocation(line: 373, column: 13, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 372, column: 66)
!2704 = !DILocation(line: 376, column: 9, scope: !2694)
!2705 = !DILocation(line: 376, column: 12, scope: !2694)
!2706 = !{!2340, !2135, i64 8}
!2707 = !DILocation(line: 376, column: 24, scope: !2694)
!2708 = !DILocation(line: 376, column: 33, scope: !2694)
!2709 = !DILocation(line: 377, column: 5, scope: !2694)
!2710 = !DILocation(line: 379, column: 9, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 379, column: 9)
!2712 = !DILocation(line: 379, column: 14, scope: !2711)
!2713 = !DILocation(line: 379, column: 9, scope: !2613)
!2714 = !DILocation(line: 383, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 383, column: 13)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 379, column: 21)
!2717 = !DILocation(line: 383, column: 39, scope: !2715)
!2718 = !DILocation(line: 383, column: 48, scope: !2715)
!2719 = !DILocation(line: 383, column: 13, scope: !2716)
!2720 = !DILocation(line: 384, column: 13, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 383, column: 62)
!2722 = !DILocation(line: 387, column: 12, scope: !2716)
!2723 = !DILocation(line: 389, column: 33, scope: !2716)
!2724 = !DILocation(line: 389, column: 36, scope: !2716)
!2725 = !DILocation(line: 389, column: 43, scope: !2716)
!2726 = !DILocation(line: 389, column: 48, scope: !2716)
!2727 = !DILocation(line: 389, column: 55, scope: !2716)
!2728 = !DILocation(line: 389, column: 60, scope: !2716)
!2729 = !DILocation(line: 389, column: 9, scope: !2716)
!2730 = !DILocation(line: 391, column: 9, scope: !2716)
!2731 = !DILocation(line: 391, column: 14, scope: !2716)
!2732 = !DILocation(line: 391, column: 20, scope: !2716)
!2733 = !DILocation(line: 392, column: 15, scope: !2716)
!2734 = !DILocation(line: 394, column: 5, scope: !2716)
!2735 = !DILocation(line: 395, column: 17, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 394, column: 12)
!2737 = !DILocation(line: 395, column: 22, scope: !2736)
!2738 = !{!2357, !2135, i64 16}
!2739 = !DILocation(line: 395, column: 15, scope: !2736)
!2740 = !DILocation(line: 398, column: 5, scope: !2613)
!2741 = !DILocation(line: 402, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2, line: 398, column: 16)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !2, line: 398, column: 5)
!2744 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 398, column: 5)
!2745 = !DILocation(line: 406, column: 48, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 402, column: 20)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 402, column: 9)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 402, column: 9)
!2749 = !DILocation(line: 406, column: 51, scope: !2746)
!2750 = !DILocation(line: 406, column: 18, scope: !2746)
!2751 = !DILocation(line: 406, column: 16, scope: !2746)
!2752 = !{!2341, !2341, i64 0}
!2753 = !DILocation(line: 408, column: 17, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 408, column: 17)
!2755 = !DILocation(line: 408, column: 20, scope: !2754)
!2756 = !DILocation(line: 408, column: 17, scope: !2746)
!2757 = !DILocation(line: 409, column: 17, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !2, line: 408, column: 37)
!2759 = !DILocation(line: 412, column: 17, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 412, column: 17)
!2761 = !DILocation(line: 412, column: 20, scope: !2760)
!2762 = !DILocation(line: 412, column: 17, scope: !2746)
!2763 = !DILocation(line: 413, column: 17, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 412, column: 34)
!2765 = distinct !{!2765, !2766, !2767}
!2766 = !DILocation(line: 402, column: 9, scope: !2748)
!2767 = !DILocation(line: 441, column: 9, scope: !2748)
!2768 = !DILocation(line: 419, column: 47, scope: !2746)
!2769 = !DILocation(line: 419, column: 50, scope: !2746)
!2770 = !DILocation(line: 419, column: 18, scope: !2746)
!2771 = !DILocation(line: 419, column: 16, scope: !2746)
!2772 = !DILocation(line: 421, column: 17, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 421, column: 17)
!2774 = !DILocation(line: 421, column: 20, scope: !2773)
!2775 = !DILocation(line: 421, column: 17, scope: !2746)
!2776 = !DILocation(line: 422, column: 17, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 421, column: 37)
!2778 = !DILocation(line: 425, column: 17, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 425, column: 17)
!2780 = !DILocation(line: 425, column: 20, scope: !2779)
!2781 = !DILocation(line: 425, column: 17, scope: !2746)
!2782 = !DILocation(line: 426, column: 17, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 425, column: 34)
!2784 = !DILocation(line: 430, column: 47, scope: !2746)
!2785 = !DILocation(line: 430, column: 50, scope: !2746)
!2786 = !DILocation(line: 430, column: 18, scope: !2746)
!2787 = !DILocation(line: 430, column: 16, scope: !2746)
!2788 = !DILocation(line: 432, column: 17, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 432, column: 17)
!2790 = !DILocation(line: 432, column: 20, scope: !2789)
!2791 = !DILocation(line: 432, column: 17, scope: !2746)
!2792 = !DILocation(line: 433, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 432, column: 31)
!2794 = !DILocation(line: 436, column: 17, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 436, column: 17)
!2796 = !DILocation(line: 436, column: 20, scope: !2795)
!2797 = !DILocation(line: 436, column: 17, scope: !2746)
!2798 = !DILocation(line: 437, column: 17, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 436, column: 34)
!2800 = !DILocation(line: 402, column: 9, scope: !2747)
!2801 = !DILocation(line: 443, column: 13, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 443, column: 13)
!2803 = !DILocation(line: 443, column: 18, scope: !2802)
!2804 = !{!2357, !2135, i64 24}
!2805 = !DILocation(line: 443, column: 22, scope: !2802)
!2806 = !DILocation(line: 443, column: 30, scope: !2802)
!2807 = !DILocation(line: 443, column: 34, scope: !2802)
!2808 = !DILocation(line: 443, column: 13, scope: !2742)
!2809 = !DILocation(line: 444, column: 48, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 443, column: 41)
!2811 = !DILocation(line: 444, column: 51, scope: !2810)
!2812 = !DILocation(line: 444, column: 13, scope: !2810)
!2813 = !DILocation(line: 446, column: 20, scope: !2810)
!2814 = !DILocation(line: 446, column: 25, scope: !2810)
!2815 = !DILocation(line: 446, column: 13, scope: !2810)
!2816 = !DILocation(line: 449, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 449, column: 13)
!2818 = !DILocation(line: 449, column: 19, scope: !2817)
!2819 = !DILocation(line: 449, column: 13, scope: !2742)
!2820 = !DILocation(line: 450, column: 47, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 450, column: 17)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 449, column: 29)
!2823 = !DILocation(line: 450, column: 50, scope: !2821)
!2824 = !DILocation(line: 450, column: 17, scope: !2821)
!2825 = !DILocation(line: 450, column: 55, scope: !2821)
!2826 = !DILocation(line: 450, column: 17, scope: !2822)
!2827 = !DILocation(line: 451, column: 17, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2821, file: !2, line: 450, column: 66)
!2829 = !DILocation(line: 453, column: 9, scope: !2822)
!2830 = !DILocation(line: 455, column: 14, scope: !2742)
!2831 = !DILocation(line: 455, column: 40, scope: !2742)
!2832 = !DILocation(line: 455, column: 43, scope: !2742)
!2833 = !DILocation(line: 455, column: 48, scope: !2742)
!2834 = !DILocation(line: 455, column: 12, scope: !2742)
!2835 = !DILocation(line: 457, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 457, column: 13)
!2837 = !DILocation(line: 457, column: 16, scope: !2836)
!2838 = !DILocation(line: 457, column: 13, scope: !2742)
!2839 = !DILocation(line: 458, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !2, line: 457, column: 30)
!2841 = !DILocation(line: 461, column: 44, scope: !2742)
!2842 = !DILocation(line: 461, column: 47, scope: !2742)
!2843 = !DILocation(line: 461, column: 9, scope: !2742)
!2844 = !DILocation(line: 463, column: 33, scope: !2742)
!2845 = !DILocation(line: 463, column: 36, scope: !2742)
!2846 = !DILocation(line: 463, column: 43, scope: !2742)
!2847 = !DILocation(line: 463, column: 48, scope: !2742)
!2848 = !DILocation(line: 463, column: 55, scope: !2742)
!2849 = !DILocation(line: 463, column: 60, scope: !2742)
!2850 = !DILocation(line: 463, column: 67, scope: !2742)
!2851 = !DILocation(line: 463, column: 72, scope: !2742)
!2852 = !DILocation(line: 463, column: 9, scope: !2742)
!2853 = !DILocation(line: 465, column: 26, scope: !2742)
!2854 = !DILocation(line: 465, column: 31, scope: !2742)
!2855 = !DILocation(line: 465, column: 9, scope: !2742)
!2856 = !DILocation(line: 465, column: 14, scope: !2742)
!2857 = !DILocation(line: 465, column: 23, scope: !2742)
!2858 = !{!2357, !2135, i64 32}
!2859 = !DILocation(line: 467, column: 9, scope: !2742)
!2860 = !DILocation(line: 467, column: 14, scope: !2742)
!2861 = !DILocation(line: 467, column: 20, scope: !2742)
!2862 = !DILocation(line: 468, column: 15, scope: !2742)
!2863 = !DILocation(line: 470, column: 13, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 470, column: 13)
!2865 = !DILocation(line: 470, column: 18, scope: !2864)
!2866 = !DILocation(line: 470, column: 13, scope: !2742)
!2867 = !DILocation(line: 471, column: 20, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !2, line: 470, column: 24)
!2869 = !DILocation(line: 471, column: 13, scope: !2868)
!2870 = !DILocation(line: 398, column: 5, scope: !2743)
!2871 = distinct !{!2871, !2872, !2873}
!2872 = !DILocation(line: 398, column: 5, scope: !2744)
!2873 = !DILocation(line: 473, column: 5, scope: !2744)
!2874 = !DILocation(line: 477, column: 1, scope: !2613)
!2875 = !DILocation(line: 479, column: 5, scope: !2613)
!2876 = !DILocation(line: 479, column: 10, scope: !2613)
!2877 = !DILocation(line: 479, column: 15, scope: !2613)
!2878 = !DILocation(line: 481, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 481, column: 9)
!2880 = !DILocation(line: 481, column: 14, scope: !2879)
!2881 = !DILocation(line: 481, column: 9, scope: !2613)
!2882 = !DILocation(line: 482, column: 21, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 481, column: 28)
!2884 = !DILocation(line: 482, column: 26, scope: !2883)
!2885 = !DILocation(line: 482, column: 9, scope: !2883)
!2886 = !DILocation(line: 484, column: 19, scope: !2883)
!2887 = !DILocation(line: 484, column: 22, scope: !2883)
!2888 = !DILocation(line: 484, column: 28, scope: !2883)
!2889 = !DILocation(line: 484, column: 33, scope: !2883)
!2890 = !DILocation(line: 484, column: 9, scope: !2883)
!2891 = !DILocation(line: 485, column: 5, scope: !2883)
!2892 = !DILocation(line: 487, column: 40, scope: !2613)
!2893 = !DILocation(line: 487, column: 43, scope: !2613)
!2894 = !DILocation(line: 487, column: 5, scope: !2613)
!2895 = !DILocation(line: 489, column: 5, scope: !2613)
!2896 = !DILocation(line: 490, column: 1, scope: !2613)
!2897 = !DISubprogram(name: "ngx_http_test_content_type", scope: !623, file: !623, line: 486, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!16, !627, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!2901 = !DISubprogram(name: "ngx_http_gzip_ok", scope: !623, file: !623, line: 497, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2902 = !DISubprogram(name: "ngx_pcalloc", scope: !96, file: !96, line: 81, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2903 = distinct !DISubprogram(name: "ngx_http_gzip_filter_memory", scope: !2, file: !2, line: 494, type: !2904, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !627, !1958}
!2906 = !{!2907, !2908, !2909, !2910, !2911}
!2907 = !DILocalVariable(name: "r", arg: 1, scope: !2903, file: !2, line: 494, type: !627)
!2908 = !DILocalVariable(name: "ctx", arg: 2, scope: !2903, file: !2, line: 494, type: !1958)
!2909 = !DILocalVariable(name: "wbits", scope: !2903, file: !2, line: 496, type: !25)
!2910 = !DILocalVariable(name: "memlevel", scope: !2903, file: !2, line: 496, type: !25)
!2911 = !DILocalVariable(name: "conf", scope: !2903, file: !2, line: 497, type: !2174)
!2912 = !DILocation(line: 494, column: 49, scope: !2903)
!2913 = !DILocation(line: 494, column: 73, scope: !2903)
!2914 = !DILocation(line: 496, column: 5, scope: !2903)
!2915 = !DILocation(line: 496, column: 28, scope: !2903)
!2916 = !DILocation(line: 496, column: 35, scope: !2903)
!2917 = !DILocation(line: 497, column: 5, scope: !2903)
!2918 = !DILocation(line: 497, column: 28, scope: !2903)
!2919 = !DILocation(line: 499, column: 12, scope: !2903)
!2920 = !DILocation(line: 499, column: 10, scope: !2903)
!2921 = !DILocation(line: 501, column: 13, scope: !2903)
!2922 = !DILocation(line: 501, column: 19, scope: !2903)
!2923 = !DILocation(line: 501, column: 11, scope: !2903)
!2924 = !DILocation(line: 502, column: 16, scope: !2903)
!2925 = !DILocation(line: 502, column: 22, scope: !2903)
!2926 = !DILocation(line: 502, column: 14, scope: !2903)
!2927 = !DILocation(line: 504, column: 9, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 504, column: 9)
!2929 = !DILocation(line: 504, column: 12, scope: !2928)
!2930 = !DILocation(line: 504, column: 24, scope: !2928)
!2931 = !DILocation(line: 504, column: 41, scope: !2928)
!2932 = !DILocation(line: 504, column: 9, scope: !2903)
!2933 = !DILocation(line: 508, column: 9, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2928, file: !2, line: 504, column: 46)
!2935 = !DILocation(line: 508, column: 16, scope: !2934)
!2936 = !DILocation(line: 508, column: 19, scope: !2934)
!2937 = !DILocation(line: 508, column: 31, scope: !2934)
!2938 = !DILocation(line: 508, column: 58, scope: !2934)
!2939 = !DILocation(line: 508, column: 64, scope: !2934)
!2940 = !DILocation(line: 508, column: 54, scope: !2934)
!2941 = !DILocation(line: 508, column: 70, scope: !2934)
!2942 = !DILocation(line: 508, column: 50, scope: !2934)
!2943 = !DILocation(line: 508, column: 48, scope: !2934)
!2944 = !DILocation(line: 509, column: 18, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 508, column: 78)
!2946 = !DILocation(line: 510, column: 21, scope: !2945)
!2947 = distinct !{!2947, !2933, !2948, !2949}
!2948 = !DILocation(line: 511, column: 9, scope: !2934)
!2949 = !{!"llvm.loop.mustprogress"}
!2950 = !DILocation(line: 513, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 513, column: 13)
!2952 = !DILocation(line: 513, column: 22, scope: !2951)
!2953 = !DILocation(line: 513, column: 13, scope: !2934)
!2954 = !DILocation(line: 514, column: 22, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 513, column: 27)
!2956 = !DILocation(line: 515, column: 9, scope: !2955)
!2957 = !DILocation(line: 516, column: 5, scope: !2934)
!2958 = !DILocation(line: 518, column: 18, scope: !2903)
!2959 = !DILocation(line: 518, column: 5, scope: !2903)
!2960 = !DILocation(line: 518, column: 10, scope: !2903)
!2961 = !DILocation(line: 518, column: 16, scope: !2903)
!2962 = !{!2357, !2341, i64 104}
!2963 = !DILocation(line: 519, column: 21, scope: !2903)
!2964 = !DILocation(line: 519, column: 5, scope: !2903)
!2965 = !DILocation(line: 519, column: 10, scope: !2903)
!2966 = !DILocation(line: 519, column: 19, scope: !2903)
!2967 = !{!2357, !2341, i64 108}
!2968 = !DILocation(line: 533, column: 10, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 533, column: 9)
!2970 = !DILocation(line: 533, column: 9, scope: !2903)
!2971 = !DILocation(line: 534, column: 40, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 533, column: 38)
!2973 = !DILocation(line: 534, column: 46, scope: !2972)
!2974 = !DILocation(line: 534, column: 36, scope: !2972)
!2975 = !DILocation(line: 534, column: 31, scope: !2972)
!2976 = !DILocation(line: 534, column: 61, scope: !2972)
!2977 = !DILocation(line: 534, column: 70, scope: !2972)
!2978 = !DILocation(line: 534, column: 57, scope: !2972)
!2979 = !DILocation(line: 534, column: 52, scope: !2972)
!2980 = !DILocation(line: 534, column: 26, scope: !2972)
!2981 = !DILocation(line: 534, column: 9, scope: !2972)
!2982 = !DILocation(line: 534, column: 14, scope: !2972)
!2983 = !DILocation(line: 534, column: 24, scope: !2972)
!2984 = !{!2357, !2156, i64 96}
!2985 = !DILocation(line: 536, column: 5, scope: !2972)
!2986 = !DILocation(line: 545, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 545, column: 13)
!2988 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 536, column: 12)
!2989 = !DILocation(line: 545, column: 19, scope: !2987)
!2990 = !DILocation(line: 545, column: 25, scope: !2987)
!2991 = !DILocation(line: 545, column: 13, scope: !2988)
!2992 = !DILocation(line: 546, column: 21, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 545, column: 31)
!2994 = !DILocation(line: 546, column: 19, scope: !2993)
!2995 = !DILocation(line: 547, column: 9, scope: !2993)
!2996 = !DILocation(line: 549, column: 45, scope: !2988)
!2997 = !DILocation(line: 549, column: 51, scope: !2988)
!2998 = !DILocation(line: 549, column: 41, scope: !2988)
!2999 = !DILocation(line: 549, column: 36, scope: !2988)
!3000 = !DILocation(line: 550, column: 35, scope: !2988)
!3001 = !DILocation(line: 550, column: 56, scope: !2988)
!3002 = !DILocation(line: 550, column: 31, scope: !2988)
!3003 = !DILocation(line: 550, column: 26, scope: !2988)
!3004 = !DILocation(line: 551, column: 35, scope: !2988)
!3005 = !DILocation(line: 551, column: 44, scope: !2988)
!3006 = !DILocation(line: 551, column: 31, scope: !2988)
!3007 = !DILocation(line: 551, column: 26, scope: !2988)
!3008 = !DILocation(line: 549, column: 26, scope: !2988)
!3009 = !DILocation(line: 549, column: 9, scope: !2988)
!3010 = !DILocation(line: 549, column: 14, scope: !2988)
!3011 = !DILocation(line: 549, column: 24, scope: !2988)
!3012 = !DILocation(line: 552, column: 9, scope: !2988)
!3013 = !DILocation(line: 552, column: 14, scope: !2988)
!3014 = !DILocation(line: 552, column: 20, scope: !2988)
!3015 = !DILocation(line: 554, column: 1, scope: !2903)
!3016 = !DISubprogram(name: "ngx_list_push", scope: !527, file: !527, line: 80, type: !3017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!16, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!3020 = !DISubprogram(name: "ngx_http_weak_etag", scope: !623, file: !623, line: 490, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3021 = distinct !DISubprogram(name: "ngx_http_gzip_filter_buffer", scope: !2, file: !2, line: 558, type: !3022, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!462, !1958, !109}
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034}
!3025 = !DILocalVariable(name: "ctx", arg: 1, scope: !3021, file: !2, line: 558, type: !1958)
!3026 = !DILocalVariable(name: "in", arg: 2, scope: !3021, file: !2, line: 558, type: !109)
!3027 = !DILocalVariable(name: "size", scope: !3021, file: !2, line: 560, type: !38)
!3028 = !DILocalVariable(name: "buffered", scope: !3021, file: !2, line: 560, type: !38)
!3029 = !DILocalVariable(name: "b", scope: !3021, file: !2, line: 561, type: !114)
!3030 = !DILocalVariable(name: "buf", scope: !3021, file: !2, line: 561, type: !114)
!3031 = !DILocalVariable(name: "cl", scope: !3021, file: !2, line: 562, type: !109)
!3032 = !DILocalVariable(name: "ll", scope: !3021, file: !2, line: 562, type: !933)
!3033 = !DILocalVariable(name: "r", scope: !3021, file: !2, line: 563, type: !627)
!3034 = !DILocalVariable(name: "conf", scope: !3021, file: !2, line: 564, type: !2174)
!3035 = !DILocation(line: 558, column: 50, scope: !3021)
!3036 = !DILocation(line: 558, column: 68, scope: !3021)
!3037 = !DILocation(line: 560, column: 5, scope: !3021)
!3038 = !DILocation(line: 560, column: 28, scope: !3021)
!3039 = !DILocation(line: 560, column: 34, scope: !3021)
!3040 = !DILocation(line: 561, column: 5, scope: !3021)
!3041 = !DILocation(line: 561, column: 28, scope: !3021)
!3042 = !DILocation(line: 561, column: 32, scope: !3021)
!3043 = !DILocation(line: 562, column: 5, scope: !3021)
!3044 = !DILocation(line: 562, column: 28, scope: !3021)
!3045 = !DILocation(line: 562, column: 34, scope: !3021)
!3046 = !DILocation(line: 563, column: 5, scope: !3021)
!3047 = !DILocation(line: 563, column: 28, scope: !3021)
!3048 = !DILocation(line: 564, column: 5, scope: !3021)
!3049 = !DILocation(line: 564, column: 28, scope: !3021)
!3050 = !DILocation(line: 566, column: 9, scope: !3021)
!3051 = !DILocation(line: 566, column: 14, scope: !3021)
!3052 = !DILocation(line: 566, column: 7, scope: !3021)
!3053 = !DILocation(line: 568, column: 5, scope: !3021)
!3054 = !DILocation(line: 568, column: 8, scope: !3021)
!3055 = !DILocation(line: 568, column: 20, scope: !3021)
!3056 = !DILocation(line: 568, column: 29, scope: !3021)
!3057 = !DILocation(line: 570, column: 14, scope: !3021)
!3058 = !DILocation(line: 571, column: 11, scope: !3021)
!3059 = !DILocation(line: 571, column: 16, scope: !3021)
!3060 = !DILocation(line: 571, column: 8, scope: !3021)
!3061 = !DILocation(line: 573, column: 15, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 573, column: 5)
!3063 = !DILocation(line: 573, column: 20, scope: !3062)
!3064 = !{!2357, !2135, i64 0}
!3065 = !DILocation(line: 573, column: 13, scope: !3062)
!3066 = !DILocation(line: 573, column: 10, scope: !3062)
!3067 = !DILocation(line: 573, column: 24, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !2, line: 573, column: 5)
!3069 = !DILocation(line: 573, column: 5, scope: !3062)
!3070 = !DILocation(line: 574, column: 21, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 573, column: 43)
!3072 = !DILocation(line: 574, column: 25, scope: !3071)
!3073 = !{!3074, !2135, i64 0}
!3074 = !{!"ngx_chain_s", !2135, i64 0, !2135, i64 8}
!3075 = !DILocation(line: 574, column: 30, scope: !3071)
!3076 = !{!3077, !2135, i64 8}
!3077 = !{!"ngx_buf_s", !2135, i64 0, !2135, i64 8, !2156, i64 16, !2156, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 72, !2341, i64 73, !2341, i64 73, !2341, i64 73, !2341, i64 76}
!3078 = !DILocation(line: 574, column: 37, scope: !3071)
!3079 = !DILocation(line: 574, column: 41, scope: !3071)
!3080 = !DILocation(line: 574, column: 46, scope: !3071)
!3081 = !{!3077, !2135, i64 0}
!3082 = !DILocation(line: 574, column: 35, scope: !3071)
!3083 = !DILocation(line: 574, column: 18, scope: !3071)
!3084 = !DILocation(line: 575, column: 15, scope: !3071)
!3085 = !DILocation(line: 575, column: 19, scope: !3071)
!3086 = !DILocation(line: 575, column: 12, scope: !3071)
!3087 = !DILocation(line: 576, column: 5, scope: !3071)
!3088 = !DILocation(line: 573, column: 33, scope: !3068)
!3089 = !DILocation(line: 573, column: 37, scope: !3068)
!3090 = !{!3074, !2135, i64 8}
!3091 = !DILocation(line: 573, column: 31, scope: !3068)
!3092 = !DILocation(line: 573, column: 5, scope: !3068)
!3093 = distinct !{!3093, !3069, !3094, !2949}
!3094 = !DILocation(line: 576, column: 5, scope: !3062)
!3095 = !DILocation(line: 578, column: 12, scope: !3021)
!3096 = !DILocation(line: 578, column: 10, scope: !3021)
!3097 = !DILocation(line: 580, column: 5, scope: !3021)
!3098 = !DILocation(line: 580, column: 12, scope: !3021)
!3099 = !DILocation(line: 581, column: 35, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 580, column: 16)
!3101 = !DILocation(line: 581, column: 38, scope: !3100)
!3102 = !DILocation(line: 581, column: 14, scope: !3100)
!3103 = !DILocation(line: 581, column: 12, scope: !3100)
!3104 = !DILocation(line: 582, column: 13, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 582, column: 13)
!3106 = !DILocation(line: 582, column: 16, scope: !3105)
!3107 = !DILocation(line: 582, column: 13, scope: !3100)
!3108 = !DILocation(line: 583, column: 13, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 582, column: 25)
!3110 = !DILocation(line: 586, column: 13, scope: !3100)
!3111 = !DILocation(line: 586, column: 17, scope: !3100)
!3112 = !DILocation(line: 586, column: 11, scope: !3100)
!3113 = !DILocation(line: 588, column: 16, scope: !3100)
!3114 = !DILocation(line: 588, column: 19, scope: !3100)
!3115 = !DILocation(line: 588, column: 26, scope: !3100)
!3116 = !DILocation(line: 588, column: 29, scope: !3100)
!3117 = !DILocation(line: 588, column: 24, scope: !3100)
!3118 = !DILocation(line: 588, column: 14, scope: !3100)
!3119 = !DILocation(line: 589, column: 21, scope: !3100)
!3120 = !DILocation(line: 589, column: 18, scope: !3100)
!3121 = !DILocation(line: 591, column: 13, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 591, column: 13)
!3123 = !DILocation(line: 591, column: 16, scope: !3122)
!3124 = !DILocation(line: 591, column: 22, scope: !3122)
!3125 = !DILocation(line: 591, column: 25, scope: !3122)
!3126 = !DILocation(line: 591, column: 28, scope: !3122)
!3127 = !DILocation(line: 591, column: 37, scope: !3122)
!3128 = !DILocation(line: 591, column: 40, scope: !3122)
!3129 = !DILocation(line: 591, column: 51, scope: !3122)
!3130 = !DILocation(line: 591, column: 57, scope: !3122)
!3131 = !DILocation(line: 591, column: 49, scope: !3122)
!3132 = !DILocation(line: 591, column: 13, scope: !3100)
!3133 = !DILocation(line: 592, column: 13, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3122, file: !2, line: 591, column: 76)
!3135 = !DILocation(line: 592, column: 18, scope: !3134)
!3136 = !DILocation(line: 592, column: 28, scope: !3134)
!3137 = !DILocation(line: 593, column: 9, scope: !3134)
!3138 = !DILocation(line: 595, column: 13, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 595, column: 13)
!3140 = !DILocation(line: 595, column: 18, scope: !3139)
!3141 = !DILocation(line: 595, column: 28, scope: !3139)
!3142 = !DILocation(line: 595, column: 31, scope: !3139)
!3143 = !DILocation(line: 595, column: 13, scope: !3100)
!3144 = !DILocation(line: 597, column: 39, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 595, column: 37)
!3146 = !DILocation(line: 597, column: 42, scope: !3145)
!3147 = !DILocation(line: 597, column: 48, scope: !3145)
!3148 = !DILocation(line: 597, column: 19, scope: !3145)
!3149 = !DILocation(line: 597, column: 17, scope: !3145)
!3150 = !DILocation(line: 598, column: 17, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 598, column: 17)
!3152 = !DILocation(line: 598, column: 21, scope: !3151)
!3153 = !DILocation(line: 598, column: 17, scope: !3145)
!3154 = !DILocation(line: 599, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 598, column: 30)
!3156 = !DILocation(line: 602, column: 25, scope: !3145)
!3157 = !DILocation(line: 602, column: 13, scope: !3145)
!3158 = !DILocation(line: 602, column: 18, scope: !3145)
!3159 = !DILocation(line: 602, column: 23, scope: !3145)
!3160 = !DILocation(line: 603, column: 22, scope: !3145)
!3161 = !DILocation(line: 603, column: 25, scope: !3145)
!3162 = !DILocation(line: 603, column: 13, scope: !3145)
!3163 = !DILocation(line: 603, column: 16, scope: !3145)
!3164 = !DILocation(line: 603, column: 20, scope: !3145)
!3165 = !DILocation(line: 605, column: 29, scope: !3145)
!3166 = !DILocation(line: 605, column: 32, scope: !3145)
!3167 = !DILocation(line: 605, column: 13, scope: !3145)
!3168 = !DILocation(line: 605, column: 18, scope: !3145)
!3169 = !DILocation(line: 605, column: 27, scope: !3145)
!3170 = !DILocation(line: 606, column: 13, scope: !3145)
!3171 = !DILocation(line: 606, column: 18, scope: !3145)
!3172 = !DILocation(line: 606, column: 22, scope: !3145)
!3173 = !{!3077, !2135, i64 48}
!3174 = !DILocation(line: 608, column: 23, scope: !3145)
!3175 = !DILocation(line: 608, column: 13, scope: !3145)
!3176 = !DILocation(line: 608, column: 17, scope: !3145)
!3177 = !DILocation(line: 608, column: 21, scope: !3145)
!3178 = !DILocation(line: 610, column: 9, scope: !3145)
!3179 = !DILocation(line: 611, column: 23, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 610, column: 16)
!3181 = !DILocation(line: 611, column: 13, scope: !3180)
!3182 = !DILocation(line: 611, column: 17, scope: !3180)
!3183 = !DILocation(line: 611, column: 21, scope: !3180)
!3184 = !DILocation(line: 614, column: 15, scope: !3100)
!3185 = !DILocation(line: 614, column: 10, scope: !3100)
!3186 = !DILocation(line: 614, column: 13, scope: !3100)
!3187 = !DILocation(line: 615, column: 15, scope: !3100)
!3188 = !DILocation(line: 615, column: 19, scope: !3100)
!3189 = !DILocation(line: 615, column: 12, scope: !3100)
!3190 = !DILocation(line: 616, column: 14, scope: !3100)
!3191 = !DILocation(line: 616, column: 18, scope: !3100)
!3192 = !DILocation(line: 616, column: 12, scope: !3100)
!3193 = distinct !{!3193, !3097, !3194, !2949}
!3194 = !DILocation(line: 617, column: 5, scope: !3021)
!3195 = !DILocation(line: 619, column: 6, scope: !3021)
!3196 = !DILocation(line: 619, column: 9, scope: !3021)
!3197 = !DILocation(line: 621, column: 12, scope: !3021)
!3198 = !DILocation(line: 621, column: 17, scope: !3021)
!3199 = !DILocation(line: 621, column: 5, scope: !3021)
!3200 = !DILocation(line: 622, column: 1, scope: !3021)
!3201 = distinct !DISubprogram(name: "ngx_http_gzip_filter_deflate_start", scope: !2, file: !2, line: 626, type: !1956, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3202)
!3202 = !{!3203, !3204, !3205, !3206}
!3203 = !DILocalVariable(name: "r", arg: 1, scope: !3201, file: !2, line: 626, type: !627)
!3204 = !DILocalVariable(name: "ctx", arg: 2, scope: !3201, file: !2, line: 627, type: !1958)
!3205 = !DILocalVariable(name: "rc", scope: !3201, file: !2, line: 629, type: !25)
!3206 = !DILocalVariable(name: "conf", scope: !3201, file: !2, line: 630, type: !2174)
!3207 = !DILocation(line: 626, column: 56, scope: !3201)
!3208 = !DILocation(line: 627, column: 26, scope: !3201)
!3209 = !DILocation(line: 629, column: 5, scope: !3201)
!3210 = !DILocation(line: 629, column: 28, scope: !3201)
!3211 = !DILocation(line: 630, column: 5, scope: !3201)
!3212 = !DILocation(line: 630, column: 28, scope: !3201)
!3213 = !DILocation(line: 632, column: 12, scope: !3201)
!3214 = !DILocation(line: 632, column: 10, scope: !3201)
!3215 = !DILocation(line: 634, column: 36, scope: !3201)
!3216 = !DILocation(line: 634, column: 39, scope: !3201)
!3217 = !DILocation(line: 634, column: 45, scope: !3201)
!3218 = !DILocation(line: 634, column: 50, scope: !3201)
!3219 = !DILocation(line: 634, column: 25, scope: !3201)
!3220 = !DILocation(line: 634, column: 5, scope: !3201)
!3221 = !DILocation(line: 634, column: 10, scope: !3201)
!3222 = !DILocation(line: 634, column: 23, scope: !3201)
!3223 = !DILocation(line: 635, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 635, column: 9)
!3225 = !DILocation(line: 635, column: 14, scope: !3224)
!3226 = !DILocation(line: 635, column: 27, scope: !3224)
!3227 = !DILocation(line: 635, column: 9, scope: !3201)
!3228 = !DILocation(line: 636, column: 9, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3224, file: !2, line: 635, column: 36)
!3230 = !DILocation(line: 639, column: 21, scope: !3201)
!3231 = !DILocation(line: 639, column: 26, scope: !3201)
!3232 = !DILocation(line: 639, column: 5, scope: !3201)
!3233 = !DILocation(line: 639, column: 10, scope: !3201)
!3234 = !DILocation(line: 639, column: 19, scope: !3201)
!3235 = !{!2357, !2135, i64 88}
!3236 = !DILocation(line: 641, column: 5, scope: !3201)
!3237 = !DILocation(line: 641, column: 10, scope: !3201)
!3238 = !DILocation(line: 641, column: 18, scope: !3201)
!3239 = !DILocation(line: 641, column: 25, scope: !3201)
!3240 = !{!2357, !2135, i64 208}
!3241 = !DILocation(line: 642, column: 5, scope: !3201)
!3242 = !DILocation(line: 642, column: 10, scope: !3201)
!3243 = !DILocation(line: 642, column: 18, scope: !3201)
!3244 = !DILocation(line: 642, column: 24, scope: !3201)
!3245 = !{!2357, !2135, i64 216}
!3246 = !DILocation(line: 643, column: 27, scope: !3201)
!3247 = !DILocation(line: 643, column: 5, scope: !3201)
!3248 = !DILocation(line: 643, column: 10, scope: !3201)
!3249 = !DILocation(line: 643, column: 18, scope: !3201)
!3250 = !DILocation(line: 643, column: 25, scope: !3201)
!3251 = !{!2357, !2135, i64 224}
!3252 = !DILocation(line: 645, column: 10, scope: !3201)
!3253 = !DILocation(line: 645, column: 8, scope: !3201)
!3254 = !DILocation(line: 648, column: 9, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 648, column: 9)
!3256 = !DILocation(line: 648, column: 12, scope: !3255)
!3257 = !DILocation(line: 648, column: 9, scope: !3201)
!3258 = !DILocation(line: 649, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !2, line: 649, column: 9)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !2, line: 648, column: 21)
!3261 = !{!3262, !2135, i64 80}
!3262 = !{!"ngx_connection_s", !2135, i64 0, !2135, i64 8, !2135, i64 16, !2341, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2156, i64 72, !2135, i64 80, !2135, i64 88, !2341, i64 96, !2135, i64 104, !2341, i64 112, !2155, i64 120, !2155, i64 136, !3263, i64 152, !2135, i64 160, !2135, i64 168, !2135, i64 176, !2341, i64 184, !2135, i64 192, !3264, i64 200, !2156, i64 216, !2156, i64 224, !2341, i64 232, !2341, i64 233, !2341, i64 233, !2341, i64 233, !2341, i64 233, !2341, i64 233, !2341, i64 233, !2341, i64 234, !2341, i64 234, !2341, i64 234, !2341, i64 234, !2341, i64 234, !2341, i64 234, !2341, i64 235}
!3263 = !{!"short", !2136, i64 0}
!3264 = !{!"ngx_queue_s", !2135, i64 0, !2135, i64 8}
!3265 = !{!3266, !2156, i64 0}
!3266 = !{!"ngx_log_s", !2156, i64 0, !2135, i64 8, !2156, i64 16, !2156, i64 24, !2135, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2135, i64 72}
!3267 = !DILocation(line: 649, column: 9, scope: !3260)
!3268 = !DILocation(line: 651, column: 9, scope: !3260)
!3269 = !DILocation(line: 654, column: 22, scope: !3201)
!3270 = !DILocation(line: 654, column: 27, scope: !3201)
!3271 = !DILocation(line: 654, column: 5, scope: !3201)
!3272 = !DILocation(line: 654, column: 10, scope: !3201)
!3273 = !DILocation(line: 654, column: 19, scope: !3201)
!3274 = !DILocation(line: 655, column: 18, scope: !3201)
!3275 = !DILocation(line: 655, column: 5, scope: !3201)
!3276 = !DILocation(line: 655, column: 10, scope: !3201)
!3277 = !DILocation(line: 655, column: 16, scope: !3201)
!3278 = !{!2357, !2341, i64 136}
!3279 = !DILocation(line: 656, column: 5, scope: !3201)
!3280 = !DILocation(line: 656, column: 10, scope: !3201)
!3281 = !DILocation(line: 656, column: 16, scope: !3201)
!3282 = !DILocation(line: 658, column: 5, scope: !3201)
!3283 = !DILocation(line: 659, column: 1, scope: !3201)
!3284 = !DISubprogram(name: "ngx_chain_add_copy", scope: !24, file: !24, line: 160, type: !3285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!462, !93, !933, !109}
!3287 = !DISubprogram(name: "ngx_chain_update_chains", scope: !24, file: !24, line: 163, type: !3288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !93, !933, !933, !933, !23}
!3290 = distinct !DISubprogram(name: "ngx_http_gzip_filter_add_data", scope: !2, file: !2, line: 695, type: !1956, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3291)
!3291 = !{!3292, !3293, !3294}
!3292 = !DILocalVariable(name: "r", arg: 1, scope: !3290, file: !2, line: 695, type: !627)
!3293 = !DILocalVariable(name: "ctx", arg: 2, scope: !3290, file: !2, line: 695, type: !1958)
!3294 = !DILocalVariable(name: "cl", scope: !3290, file: !2, line: 697, type: !109)
!3295 = !DILocation(line: 695, column: 51, scope: !3290)
!3296 = !DILocation(line: 695, column: 75, scope: !3290)
!3297 = !DILocation(line: 697, column: 5, scope: !3290)
!3298 = !DILocation(line: 697, column: 19, scope: !3290)
!3299 = !DILocation(line: 699, column: 9, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 699, column: 9)
!3301 = !DILocation(line: 699, column: 14, scope: !3300)
!3302 = !DILocation(line: 699, column: 22, scope: !3300)
!3303 = !{!2357, !2341, i64 152}
!3304 = !DILocation(line: 699, column: 31, scope: !3300)
!3305 = !DILocation(line: 699, column: 34, scope: !3300)
!3306 = !DILocation(line: 699, column: 39, scope: !3300)
!3307 = !DILocation(line: 699, column: 45, scope: !3300)
!3308 = !DILocation(line: 699, column: 59, scope: !3300)
!3309 = !DILocation(line: 699, column: 62, scope: !3300)
!3310 = !DILocation(line: 699, column: 67, scope: !3300)
!3311 = !DILocation(line: 699, column: 9, scope: !3290)
!3312 = !DILocation(line: 700, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 699, column: 73)
!3314 = !DILocation(line: 706, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 706, column: 9)
!3316 = !DILocation(line: 706, column: 14, scope: !3315)
!3317 = !DILocation(line: 706, column: 17, scope: !3315)
!3318 = !DILocation(line: 706, column: 9, scope: !3290)
!3319 = !DILocation(line: 707, column: 9, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3315, file: !2, line: 706, column: 26)
!3321 = !DILocation(line: 710, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 710, column: 9)
!3323 = !DILocation(line: 710, column: 14, scope: !3322)
!3324 = !{!2357, !2135, i64 48}
!3325 = !DILocation(line: 710, column: 9, scope: !3290)
!3326 = !DILocation(line: 717, column: 31, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !2, line: 710, column: 24)
!3328 = !DILocation(line: 717, column: 36, scope: !3327)
!3329 = !{!2357, !2135, i64 40}
!3330 = !DILocation(line: 717, column: 9, scope: !3327)
!3331 = !DILocation(line: 717, column: 14, scope: !3327)
!3332 = !DILocation(line: 717, column: 24, scope: !3327)
!3333 = !DILocation(line: 717, column: 29, scope: !3327)
!3334 = !DILocation(line: 718, column: 23, scope: !3327)
!3335 = !DILocation(line: 718, column: 28, scope: !3327)
!3336 = !DILocation(line: 718, column: 9, scope: !3327)
!3337 = !DILocation(line: 718, column: 14, scope: !3327)
!3338 = !DILocation(line: 718, column: 21, scope: !3327)
!3339 = !DILocation(line: 719, column: 9, scope: !3327)
!3340 = !DILocation(line: 719, column: 14, scope: !3327)
!3341 = !DILocation(line: 719, column: 23, scope: !3327)
!3342 = !DILocation(line: 720, column: 5, scope: !3327)
!3343 = !DILocation(line: 722, column: 10, scope: !3290)
!3344 = !DILocation(line: 722, column: 15, scope: !3290)
!3345 = !DILocation(line: 722, column: 8, scope: !3290)
!3346 = !DILocation(line: 723, column: 19, scope: !3290)
!3347 = !DILocation(line: 723, column: 23, scope: !3290)
!3348 = !DILocation(line: 723, column: 5, scope: !3290)
!3349 = !DILocation(line: 723, column: 10, scope: !3290)
!3350 = !DILocation(line: 723, column: 17, scope: !3290)
!3351 = !{!2357, !2135, i64 56}
!3352 = !DILocation(line: 724, column: 15, scope: !3290)
!3353 = !DILocation(line: 724, column: 19, scope: !3290)
!3354 = !DILocation(line: 724, column: 5, scope: !3290)
!3355 = !DILocation(line: 724, column: 10, scope: !3290)
!3356 = !DILocation(line: 724, column: 13, scope: !3290)
!3357 = !DILocation(line: 726, column: 9, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 726, column: 9)
!3359 = !DILocation(line: 726, column: 14, scope: !3358)
!3360 = !DILocation(line: 726, column: 22, scope: !3358)
!3361 = !DILocation(line: 726, column: 26, scope: !3358)
!3362 = !DILocation(line: 726, column: 9, scope: !3290)
!3363 = !DILocation(line: 727, column: 25, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3358, file: !2, line: 726, column: 75)
!3365 = !DILocation(line: 727, column: 9, scope: !3364)
!3366 = !DILocation(line: 727, column: 14, scope: !3364)
!3367 = !DILocation(line: 727, column: 23, scope: !3364)
!3368 = !DILocation(line: 729, column: 5, scope: !3364)
!3369 = !DILocation(line: 730, column: 9, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3358, file: !2, line: 729, column: 12)
!3371 = !{!3372, !2135, i64 48}
!3372 = !{!"ngx_pool_s", !3373, i64 0, !2156, i64 32, !2135, i64 40, !2135, i64 48, !2135, i64 56, !2135, i64 64, !2135, i64 72}
!3373 = !{!"", !2135, i64 0, !2135, i64 8, !2135, i64 16, !2156, i64 24}
!3374 = !DILocation(line: 733, column: 28, scope: !3290)
!3375 = !DILocation(line: 733, column: 33, scope: !3290)
!3376 = !DILocation(line: 733, column: 41, scope: !3290)
!3377 = !DILocation(line: 733, column: 5, scope: !3290)
!3378 = !DILocation(line: 733, column: 10, scope: !3290)
!3379 = !DILocation(line: 733, column: 18, scope: !3290)
!3380 = !DILocation(line: 733, column: 26, scope: !3290)
!3381 = !{!2357, !2135, i64 144}
!3382 = !DILocation(line: 734, column: 29, scope: !3290)
!3383 = !DILocation(line: 734, column: 34, scope: !3290)
!3384 = !DILocation(line: 734, column: 42, scope: !3290)
!3385 = !DILocation(line: 734, column: 49, scope: !3290)
!3386 = !DILocation(line: 734, column: 54, scope: !3290)
!3387 = !DILocation(line: 734, column: 62, scope: !3290)
!3388 = !DILocation(line: 734, column: 47, scope: !3290)
!3389 = !DILocation(line: 734, column: 5, scope: !3290)
!3390 = !DILocation(line: 734, column: 10, scope: !3290)
!3391 = !DILocation(line: 734, column: 18, scope: !3290)
!3392 = !DILocation(line: 734, column: 27, scope: !3290)
!3393 = !DILocation(line: 741, column: 9, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 741, column: 9)
!3395 = !DILocation(line: 741, column: 14, scope: !3394)
!3396 = !DILocation(line: 741, column: 22, scope: !3394)
!3397 = !DILocation(line: 741, column: 9, scope: !3290)
!3398 = !DILocation(line: 742, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 741, column: 32)
!3400 = !DILocation(line: 742, column: 14, scope: !3399)
!3401 = !DILocation(line: 742, column: 20, scope: !3399)
!3402 = !DILocation(line: 744, column: 5, scope: !3399)
!3403 = !DILocation(line: 744, column: 16, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 744, column: 16)
!3405 = !DILocation(line: 744, column: 21, scope: !3404)
!3406 = !DILocation(line: 744, column: 29, scope: !3404)
!3407 = !DILocation(line: 744, column: 16, scope: !3394)
!3408 = !DILocation(line: 745, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 744, column: 36)
!3410 = !DILocation(line: 745, column: 14, scope: !3409)
!3411 = !DILocation(line: 745, column: 20, scope: !3409)
!3412 = !DILocation(line: 746, column: 5, scope: !3409)
!3413 = !DILocation(line: 748, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 748, column: 9)
!3415 = !DILocation(line: 748, column: 14, scope: !3414)
!3416 = !DILocation(line: 748, column: 22, scope: !3414)
!3417 = !DILocation(line: 748, column: 9, scope: !3290)
!3418 = !DILocation(line: 750, column: 28, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 748, column: 32)
!3420 = !DILocation(line: 750, column: 33, scope: !3419)
!3421 = !DILocation(line: 750, column: 40, scope: !3419)
!3422 = !DILocation(line: 750, column: 45, scope: !3419)
!3423 = !DILocation(line: 750, column: 53, scope: !3419)
!3424 = !DILocation(line: 751, column: 28, scope: !3419)
!3425 = !DILocation(line: 751, column: 33, scope: !3419)
!3426 = !DILocation(line: 751, column: 41, scope: !3419)
!3427 = !DILocation(line: 750, column: 22, scope: !3419)
!3428 = !DILocation(line: 750, column: 9, scope: !3419)
!3429 = !DILocation(line: 750, column: 14, scope: !3419)
!3430 = !DILocation(line: 750, column: 20, scope: !3419)
!3431 = !DILocation(line: 753, column: 5, scope: !3419)
!3432 = !DILocation(line: 753, column: 16, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 753, column: 16)
!3434 = !DILocation(line: 753, column: 21, scope: !3433)
!3435 = !DILocation(line: 753, column: 27, scope: !3433)
!3436 = !DILocation(line: 753, column: 16, scope: !3414)
!3437 = !DILocation(line: 754, column: 9, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !2, line: 753, column: 42)
!3439 = !DILocation(line: 757, column: 5, scope: !3290)
!3440 = !DILocation(line: 758, column: 1, scope: !3290)
!3441 = distinct !DISubprogram(name: "ngx_http_gzip_filter_get_buf", scope: !2, file: !2, line: 762, type: !1956, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3442)
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DILocalVariable(name: "r", arg: 1, scope: !3441, file: !2, line: 762, type: !627)
!3444 = !DILocalVariable(name: "ctx", arg: 2, scope: !3441, file: !2, line: 762, type: !1958)
!3445 = !DILocalVariable(name: "cl", scope: !3441, file: !2, line: 764, type: !109)
!3446 = !DILocalVariable(name: "conf", scope: !3441, file: !2, line: 765, type: !2174)
!3447 = !DILocation(line: 762, column: 50, scope: !3441)
!3448 = !DILocation(line: 762, column: 74, scope: !3441)
!3449 = !DILocation(line: 764, column: 5, scope: !3441)
!3450 = !DILocation(line: 764, column: 28, scope: !3441)
!3451 = !DILocation(line: 765, column: 5, scope: !3441)
!3452 = !DILocation(line: 765, column: 28, scope: !3441)
!3453 = !DILocation(line: 767, column: 9, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3441, file: !2, line: 767, column: 9)
!3455 = !DILocation(line: 767, column: 14, scope: !3454)
!3456 = !DILocation(line: 767, column: 22, scope: !3454)
!3457 = !{!2357, !2341, i64 176}
!3458 = !DILocation(line: 767, column: 9, scope: !3441)
!3459 = !DILocation(line: 768, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !2, line: 767, column: 33)
!3461 = !DILocation(line: 771, column: 12, scope: !3441)
!3462 = !DILocation(line: 771, column: 10, scope: !3441)
!3463 = !DILocation(line: 773, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3441, file: !2, line: 773, column: 9)
!3465 = !DILocation(line: 773, column: 14, scope: !3464)
!3466 = !{!2357, !2135, i64 8}
!3467 = !DILocation(line: 773, column: 9, scope: !3441)
!3468 = !DILocation(line: 775, column: 14, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3464, file: !2, line: 773, column: 20)
!3470 = !DILocation(line: 775, column: 19, scope: !3469)
!3471 = !DILocation(line: 775, column: 12, scope: !3469)
!3472 = !DILocation(line: 776, column: 24, scope: !3469)
!3473 = !DILocation(line: 776, column: 28, scope: !3469)
!3474 = !DILocation(line: 776, column: 9, scope: !3469)
!3475 = !DILocation(line: 776, column: 14, scope: !3469)
!3476 = !DILocation(line: 776, column: 22, scope: !3469)
!3477 = !{!2357, !2135, i64 64}
!3478 = !DILocation(line: 777, column: 21, scope: !3469)
!3479 = !DILocation(line: 777, column: 25, scope: !3469)
!3480 = !DILocation(line: 777, column: 9, scope: !3469)
!3481 = !DILocation(line: 777, column: 14, scope: !3469)
!3482 = !DILocation(line: 777, column: 19, scope: !3469)
!3483 = !DILocation(line: 779, column: 9, scope: !3469)
!3484 = !DILocation(line: 781, column: 5, scope: !3469)
!3485 = !DILocation(line: 781, column: 16, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3464, file: !2, line: 781, column: 16)
!3487 = !DILocation(line: 781, column: 21, scope: !3486)
!3488 = !{!2357, !2156, i64 72}
!3489 = !DILocation(line: 781, column: 28, scope: !3486)
!3490 = !DILocation(line: 781, column: 34, scope: !3486)
!3491 = !DILocation(line: 781, column: 39, scope: !3486)
!3492 = !DILocation(line: 781, column: 26, scope: !3486)
!3493 = !DILocation(line: 781, column: 16, scope: !3464)
!3494 = !DILocation(line: 783, column: 44, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 781, column: 44)
!3496 = !DILocation(line: 783, column: 47, scope: !3495)
!3497 = !DILocation(line: 783, column: 53, scope: !3495)
!3498 = !DILocation(line: 783, column: 59, scope: !3495)
!3499 = !DILocation(line: 783, column: 64, scope: !3495)
!3500 = !DILocation(line: 783, column: 24, scope: !3495)
!3501 = !DILocation(line: 783, column: 9, scope: !3495)
!3502 = !DILocation(line: 783, column: 14, scope: !3495)
!3503 = !DILocation(line: 783, column: 22, scope: !3495)
!3504 = !DILocation(line: 784, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3495, file: !2, line: 784, column: 13)
!3506 = !DILocation(line: 784, column: 18, scope: !3505)
!3507 = !DILocation(line: 784, column: 26, scope: !3505)
!3508 = !DILocation(line: 784, column: 13, scope: !3495)
!3509 = !DILocation(line: 785, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !2, line: 784, column: 35)
!3511 = !DILocation(line: 788, column: 9, scope: !3495)
!3512 = !DILocation(line: 788, column: 14, scope: !3495)
!3513 = !DILocation(line: 788, column: 23, scope: !3495)
!3514 = !DILocation(line: 788, column: 27, scope: !3495)
!3515 = !DILocation(line: 789, column: 9, scope: !3495)
!3516 = !DILocation(line: 789, column: 14, scope: !3495)
!3517 = !DILocation(line: 789, column: 23, scope: !3495)
!3518 = !DILocation(line: 789, column: 32, scope: !3495)
!3519 = !DILocation(line: 790, column: 9, scope: !3495)
!3520 = !DILocation(line: 790, column: 14, scope: !3495)
!3521 = !DILocation(line: 790, column: 18, scope: !3495)
!3522 = !DILocation(line: 792, column: 5, scope: !3495)
!3523 = !DILocation(line: 793, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 792, column: 12)
!3525 = !DILocation(line: 793, column: 14, scope: !3524)
!3526 = !DILocation(line: 793, column: 20, scope: !3524)
!3527 = !DILocation(line: 794, column: 9, scope: !3524)
!3528 = !DILocation(line: 797, column: 29, scope: !3441)
!3529 = !DILocation(line: 797, column: 34, scope: !3441)
!3530 = !DILocation(line: 797, column: 43, scope: !3441)
!3531 = !DILocation(line: 797, column: 5, scope: !3441)
!3532 = !DILocation(line: 797, column: 10, scope: !3441)
!3533 = !DILocation(line: 797, column: 18, scope: !3441)
!3534 = !DILocation(line: 797, column: 27, scope: !3441)
!3535 = !{!2357, !2135, i64 168}
!3536 = !DILocation(line: 798, column: 30, scope: !3441)
!3537 = !DILocation(line: 798, column: 36, scope: !3441)
!3538 = !DILocation(line: 798, column: 41, scope: !3441)
!3539 = !DILocation(line: 798, column: 5, scope: !3441)
!3540 = !DILocation(line: 798, column: 10, scope: !3441)
!3541 = !DILocation(line: 798, column: 18, scope: !3441)
!3542 = !DILocation(line: 798, column: 28, scope: !3441)
!3543 = !DILocation(line: 800, column: 5, scope: !3441)
!3544 = !DILocation(line: 801, column: 1, scope: !3441)
!3545 = distinct !DISubprogram(name: "ngx_http_gzip_filter_deflate", scope: !2, file: !2, line: 805, type: !1956, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552}
!3547 = !DILocalVariable(name: "r", arg: 1, scope: !3545, file: !2, line: 805, type: !627)
!3548 = !DILocalVariable(name: "ctx", arg: 2, scope: !3545, file: !2, line: 805, type: !1958)
!3549 = !DILocalVariable(name: "rc", scope: !3545, file: !2, line: 807, type: !25)
!3550 = !DILocalVariable(name: "b", scope: !3545, file: !2, line: 808, type: !114)
!3551 = !DILocalVariable(name: "cl", scope: !3545, file: !2, line: 809, type: !109)
!3552 = !DILocalVariable(name: "conf", scope: !3545, file: !2, line: 810, type: !2174)
!3553 = !DILocation(line: 805, column: 50, scope: !3545)
!3554 = !DILocation(line: 805, column: 74, scope: !3545)
!3555 = !DILocation(line: 807, column: 5, scope: !3545)
!3556 = !DILocation(line: 807, column: 28, scope: !3545)
!3557 = !DILocation(line: 808, column: 5, scope: !3545)
!3558 = !DILocation(line: 808, column: 28, scope: !3545)
!3559 = !DILocation(line: 809, column: 5, scope: !3545)
!3560 = !DILocation(line: 809, column: 28, scope: !3545)
!3561 = !DILocation(line: 810, column: 5, scope: !3545)
!3562 = !DILocation(line: 810, column: 28, scope: !3545)
!3563 = !DILocation(line: 818, column: 19, scope: !3545)
!3564 = !DILocation(line: 818, column: 24, scope: !3545)
!3565 = !DILocation(line: 818, column: 33, scope: !3545)
!3566 = !DILocation(line: 818, column: 38, scope: !3545)
!3567 = !DILocation(line: 818, column: 10, scope: !3545)
!3568 = !DILocation(line: 818, column: 8, scope: !3545)
!3569 = !DILocation(line: 820, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 820, column: 9)
!3571 = !DILocation(line: 820, column: 12, scope: !3570)
!3572 = !DILocation(line: 820, column: 20, scope: !3570)
!3573 = !DILocation(line: 820, column: 23, scope: !3570)
!3574 = !DILocation(line: 820, column: 26, scope: !3570)
!3575 = !DILocation(line: 820, column: 42, scope: !3570)
!3576 = !DILocation(line: 820, column: 45, scope: !3570)
!3577 = !DILocation(line: 820, column: 48, scope: !3570)
!3578 = !DILocation(line: 820, column: 9, scope: !3545)
!3579 = !DILocation(line: 821, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !2, line: 821, column: 9)
!3581 = distinct !DILexicalBlock(scope: !3570, file: !2, line: 820, column: 64)
!3582 = !DILocation(line: 821, column: 9, scope: !3581)
!3583 = !DILocation(line: 823, column: 9, scope: !3581)
!3584 = !DILocation(line: 836, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 836, column: 9)
!3586 = !DILocation(line: 836, column: 14, scope: !3585)
!3587 = !DILocation(line: 836, column: 22, scope: !3585)
!3588 = !DILocation(line: 836, column: 9, scope: !3545)
!3589 = !DILocation(line: 837, column: 28, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !2, line: 836, column: 31)
!3591 = !DILocation(line: 837, column: 33, scope: !3590)
!3592 = !DILocation(line: 837, column: 41, scope: !3590)
!3593 = !DILocation(line: 837, column: 9, scope: !3590)
!3594 = !DILocation(line: 837, column: 14, scope: !3590)
!3595 = !DILocation(line: 837, column: 22, scope: !3590)
!3596 = !DILocation(line: 837, column: 26, scope: !3590)
!3597 = !DILocation(line: 839, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3590, file: !2, line: 839, column: 13)
!3599 = !DILocation(line: 839, column: 18, scope: !3598)
!3600 = !DILocation(line: 839, column: 26, scope: !3598)
!3601 = !DILocation(line: 839, column: 35, scope: !3598)
!3602 = !DILocation(line: 839, column: 13, scope: !3590)
!3603 = !DILocation(line: 840, column: 13, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !2, line: 839, column: 41)
!3605 = !DILocation(line: 840, column: 18, scope: !3604)
!3606 = !DILocation(line: 840, column: 26, scope: !3604)
!3607 = !DILocation(line: 840, column: 34, scope: !3604)
!3608 = !DILocation(line: 841, column: 9, scope: !3604)
!3609 = !DILocation(line: 842, column: 5, scope: !3590)
!3610 = !DILocation(line: 844, column: 26, scope: !3545)
!3611 = !DILocation(line: 844, column: 31, scope: !3545)
!3612 = !DILocation(line: 844, column: 39, scope: !3545)
!3613 = !DILocation(line: 844, column: 5, scope: !3545)
!3614 = !DILocation(line: 844, column: 10, scope: !3545)
!3615 = !DILocation(line: 844, column: 19, scope: !3545)
!3616 = !DILocation(line: 844, column: 24, scope: !3545)
!3617 = !DILocation(line: 846, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 846, column: 9)
!3619 = !DILocation(line: 846, column: 14, scope: !3618)
!3620 = !DILocation(line: 846, column: 22, scope: !3618)
!3621 = !DILocation(line: 846, column: 32, scope: !3618)
!3622 = !DILocation(line: 846, column: 9, scope: !3545)
!3623 = !DILocation(line: 850, column: 35, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 846, column: 38)
!3625 = !DILocation(line: 850, column: 38, scope: !3624)
!3626 = !DILocation(line: 850, column: 14, scope: !3624)
!3627 = !DILocation(line: 850, column: 12, scope: !3624)
!3628 = !DILocation(line: 851, column: 13, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 851, column: 13)
!3630 = !DILocation(line: 851, column: 16, scope: !3629)
!3631 = !DILocation(line: 851, column: 13, scope: !3624)
!3632 = !DILocation(line: 852, column: 13, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !2, line: 851, column: 25)
!3634 = !DILocation(line: 855, column: 19, scope: !3624)
!3635 = !DILocation(line: 855, column: 24, scope: !3624)
!3636 = !DILocation(line: 855, column: 9, scope: !3624)
!3637 = !DILocation(line: 855, column: 13, scope: !3624)
!3638 = !DILocation(line: 855, column: 17, scope: !3624)
!3639 = !DILocation(line: 856, column: 9, scope: !3624)
!3640 = !DILocation(line: 856, column: 13, scope: !3624)
!3641 = !DILocation(line: 856, column: 18, scope: !3624)
!3642 = !DILocation(line: 857, column: 26, scope: !3624)
!3643 = !DILocation(line: 857, column: 10, scope: !3624)
!3644 = !DILocation(line: 857, column: 15, scope: !3624)
!3645 = !DILocation(line: 857, column: 24, scope: !3624)
!3646 = !DILocation(line: 858, column: 26, scope: !3624)
!3647 = !DILocation(line: 858, column: 30, scope: !3624)
!3648 = !DILocation(line: 858, column: 9, scope: !3624)
!3649 = !DILocation(line: 858, column: 14, scope: !3624)
!3650 = !DILocation(line: 858, column: 23, scope: !3624)
!3651 = !DILocation(line: 860, column: 9, scope: !3624)
!3652 = !DILocation(line: 860, column: 14, scope: !3624)
!3653 = !DILocation(line: 860, column: 19, scope: !3624)
!3654 = !DILocation(line: 862, column: 9, scope: !3624)
!3655 = !DILocation(line: 865, column: 5, scope: !3545)
!3656 = !DILocation(line: 865, column: 10, scope: !3545)
!3657 = !DILocation(line: 865, column: 15, scope: !3545)
!3658 = !DILocation(line: 867, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 867, column: 9)
!3660 = !DILocation(line: 867, column: 14, scope: !3659)
!3661 = !DILocation(line: 867, column: 20, scope: !3659)
!3662 = !DILocation(line: 867, column: 9, scope: !3545)
!3663 = !DILocation(line: 869, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !2, line: 867, column: 37)
!3665 = !DILocation(line: 869, column: 14, scope: !3664)
!3666 = !DILocation(line: 869, column: 20, scope: !3664)
!3667 = !DILocation(line: 871, column: 35, scope: !3664)
!3668 = !DILocation(line: 871, column: 38, scope: !3664)
!3669 = !DILocation(line: 871, column: 14, scope: !3664)
!3670 = !DILocation(line: 871, column: 12, scope: !3664)
!3671 = !DILocation(line: 872, column: 13, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 872, column: 13)
!3673 = !DILocation(line: 872, column: 16, scope: !3672)
!3674 = !DILocation(line: 872, column: 13, scope: !3664)
!3675 = !DILocation(line: 873, column: 13, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !2, line: 872, column: 25)
!3677 = !DILocation(line: 876, column: 13, scope: !3664)
!3678 = !DILocation(line: 876, column: 18, scope: !3664)
!3679 = !DILocation(line: 876, column: 11, scope: !3664)
!3680 = !DILocation(line: 878, column: 13, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 878, column: 13)
!3682 = !{!3077, !2156, i64 24}
!3683 = !{!3077, !2156, i64 16}
!3684 = !DILocation(line: 878, column: 29, scope: !3681)
!3685 = !DILocation(line: 878, column: 13, scope: !3664)
!3686 = !DILocation(line: 880, column: 17, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3681, file: !2, line: 878, column: 35)
!3688 = !DILocation(line: 880, column: 15, scope: !3687)
!3689 = !DILocation(line: 881, column: 17, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !2, line: 881, column: 17)
!3691 = !DILocation(line: 881, column: 19, scope: !3690)
!3692 = !DILocation(line: 881, column: 17, scope: !3687)
!3693 = !DILocation(line: 882, column: 17, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !2, line: 881, column: 28)
!3695 = !DILocation(line: 885, column: 9, scope: !3687)
!3696 = !DILocation(line: 886, column: 13, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3681, file: !2, line: 885, column: 16)
!3698 = !DILocation(line: 886, column: 18, scope: !3697)
!3699 = !DILocation(line: 886, column: 26, scope: !3697)
!3700 = !DILocation(line: 886, column: 36, scope: !3697)
!3701 = !DILocation(line: 889, column: 9, scope: !3664)
!3702 = !DILocation(line: 889, column: 12, scope: !3664)
!3703 = !DILocation(line: 889, column: 18, scope: !3664)
!3704 = !DILocation(line: 891, column: 19, scope: !3664)
!3705 = !DILocation(line: 891, column: 9, scope: !3664)
!3706 = !DILocation(line: 891, column: 13, scope: !3664)
!3707 = !DILocation(line: 891, column: 17, scope: !3664)
!3708 = !DILocation(line: 892, column: 9, scope: !3664)
!3709 = !DILocation(line: 892, column: 13, scope: !3664)
!3710 = !DILocation(line: 892, column: 18, scope: !3664)
!3711 = !DILocation(line: 893, column: 26, scope: !3664)
!3712 = !DILocation(line: 893, column: 10, scope: !3664)
!3713 = !DILocation(line: 893, column: 15, scope: !3664)
!3714 = !DILocation(line: 893, column: 24, scope: !3664)
!3715 = !DILocation(line: 894, column: 26, scope: !3664)
!3716 = !DILocation(line: 894, column: 30, scope: !3664)
!3717 = !DILocation(line: 894, column: 9, scope: !3664)
!3718 = !DILocation(line: 894, column: 14, scope: !3664)
!3719 = !DILocation(line: 894, column: 23, scope: !3664)
!3720 = !DILocation(line: 896, column: 9, scope: !3664)
!3721 = !DILocation(line: 896, column: 12, scope: !3664)
!3722 = !DILocation(line: 896, column: 24, scope: !3664)
!3723 = !DILocation(line: 896, column: 33, scope: !3664)
!3724 = !DILocation(line: 898, column: 9, scope: !3664)
!3725 = !DILocation(line: 901, column: 9, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 901, column: 9)
!3727 = !DILocation(line: 901, column: 12, scope: !3726)
!3728 = !DILocation(line: 901, column: 9, scope: !3545)
!3729 = !DILocation(line: 903, column: 46, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !2, line: 903, column: 13)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !2, line: 901, column: 29)
!3732 = !DILocation(line: 903, column: 49, scope: !3730)
!3733 = !DILocation(line: 903, column: 13, scope: !3730)
!3734 = !DILocation(line: 903, column: 54, scope: !3730)
!3735 = !DILocation(line: 903, column: 13, scope: !3731)
!3736 = !DILocation(line: 904, column: 13, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3730, file: !2, line: 903, column: 65)
!3738 = !DILocation(line: 907, column: 9, scope: !3731)
!3739 = !DILocation(line: 910, column: 12, scope: !3545)
!3740 = !DILocation(line: 910, column: 10, scope: !3545)
!3741 = !DILocation(line: 912, column: 9, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 912, column: 9)
!3743 = !DILocation(line: 912, column: 15, scope: !3742)
!3744 = !DILocation(line: 912, column: 25, scope: !3742)
!3745 = !DILocation(line: 912, column: 28, scope: !3742)
!3746 = !DILocation(line: 912, column: 33, scope: !3742)
!3747 = !DILocation(line: 912, column: 36, scope: !3742)
!3748 = !DILocation(line: 912, column: 9, scope: !3545)
!3749 = !DILocation(line: 914, column: 35, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3742, file: !2, line: 912, column: 45)
!3751 = !DILocation(line: 914, column: 38, scope: !3750)
!3752 = !DILocation(line: 914, column: 14, scope: !3750)
!3753 = !DILocation(line: 914, column: 12, scope: !3750)
!3754 = !DILocation(line: 915, column: 13, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3750, file: !2, line: 915, column: 13)
!3756 = !DILocation(line: 915, column: 16, scope: !3755)
!3757 = !DILocation(line: 915, column: 13, scope: !3750)
!3758 = !DILocation(line: 916, column: 13, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !2, line: 915, column: 25)
!3760 = !DILocation(line: 919, column: 19, scope: !3750)
!3761 = !DILocation(line: 919, column: 24, scope: !3750)
!3762 = !DILocation(line: 919, column: 9, scope: !3750)
!3763 = !DILocation(line: 919, column: 13, scope: !3750)
!3764 = !DILocation(line: 919, column: 17, scope: !3750)
!3765 = !DILocation(line: 920, column: 9, scope: !3750)
!3766 = !DILocation(line: 920, column: 13, scope: !3750)
!3767 = !DILocation(line: 920, column: 18, scope: !3750)
!3768 = !DILocation(line: 921, column: 26, scope: !3750)
!3769 = !DILocation(line: 921, column: 10, scope: !3750)
!3770 = !DILocation(line: 921, column: 15, scope: !3750)
!3771 = !DILocation(line: 921, column: 24, scope: !3750)
!3772 = !DILocation(line: 922, column: 26, scope: !3750)
!3773 = !DILocation(line: 922, column: 30, scope: !3750)
!3774 = !DILocation(line: 922, column: 9, scope: !3750)
!3775 = !DILocation(line: 922, column: 14, scope: !3750)
!3776 = !DILocation(line: 922, column: 23, scope: !3750)
!3777 = !DILocation(line: 924, column: 9, scope: !3750)
!3778 = !DILocation(line: 927, column: 5, scope: !3545)
!3779 = !DILocation(line: 928, column: 1, scope: !3545)
!3780 = distinct !DISubprogram(name: "ngx_http_gzip_filter_free_copy_buf", scope: !2, file: !2, line: 1079, type: !2904, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "r", arg: 1, scope: !3780, file: !2, line: 1079, type: !627)
!3783 = !DILocalVariable(name: "ctx", arg: 2, scope: !3780, file: !2, line: 1080, type: !1958)
!3784 = !DILocalVariable(name: "cl", scope: !3780, file: !2, line: 1082, type: !109)
!3785 = !DILocation(line: 1079, column: 56, scope: !3780)
!3786 = !DILocation(line: 1080, column: 26, scope: !3780)
!3787 = !DILocation(line: 1082, column: 5, scope: !3780)
!3788 = !DILocation(line: 1082, column: 19, scope: !3780)
!3789 = !DILocation(line: 1084, column: 15, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 1084, column: 5)
!3791 = !DILocation(line: 1084, column: 20, scope: !3790)
!3792 = !DILocation(line: 1084, column: 13, scope: !3790)
!3793 = !DILocation(line: 1084, column: 10, scope: !3790)
!3794 = !DILocation(line: 1084, column: 28, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !2, line: 1084, column: 5)
!3796 = !DILocation(line: 1084, column: 5, scope: !3790)
!3797 = !DILocation(line: 1085, column: 19, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !2, line: 1084, column: 47)
!3799 = !DILocation(line: 1085, column: 22, scope: !3798)
!3800 = !DILocation(line: 1085, column: 28, scope: !3798)
!3801 = !DILocation(line: 1085, column: 32, scope: !3798)
!3802 = !DILocation(line: 1085, column: 37, scope: !3798)
!3803 = !{!3077, !2135, i64 32}
!3804 = !DILocation(line: 1085, column: 9, scope: !3798)
!3805 = !DILocation(line: 1086, column: 5, scope: !3798)
!3806 = !DILocation(line: 1084, column: 37, scope: !3795)
!3807 = !DILocation(line: 1084, column: 41, scope: !3795)
!3808 = !DILocation(line: 1084, column: 35, scope: !3795)
!3809 = !DILocation(line: 1084, column: 5, scope: !3795)
!3810 = distinct !{!3810, !3796, !3811, !2949}
!3811 = !DILocation(line: 1086, column: 5, scope: !3790)
!3812 = !DILocation(line: 1088, column: 5, scope: !3780)
!3813 = !DILocation(line: 1088, column: 10, scope: !3780)
!3814 = !DILocation(line: 1088, column: 17, scope: !3780)
!3815 = !DILocation(line: 1089, column: 1, scope: !3780)
!3816 = !DILocation(line: 663, column: 51, scope: !1955)
!3817 = !DILocation(line: 663, column: 75, scope: !1955)
!3818 = !DILocation(line: 665, column: 5, scope: !1955)
!3819 = !DILocation(line: 665, column: 21, scope: !1955)
!3820 = !DILocation(line: 666, column: 5, scope: !1955)
!3821 = !DILocation(line: 666, column: 21, scope: !1955)
!3822 = !DILocation(line: 670, column: 9, scope: !1955)
!3823 = !DILocation(line: 670, column: 7, scope: !1955)
!3824 = !DILocation(line: 671, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 671, column: 9)
!3826 = !DILocation(line: 671, column: 11, scope: !3825)
!3827 = !DILocation(line: 671, column: 9, scope: !1955)
!3828 = !DILocation(line: 672, column: 9, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !2, line: 671, column: 20)
!3830 = !DILocation(line: 675, column: 5, scope: !1955)
!3831 = !DILocation(line: 675, column: 8, scope: !1955)
!3832 = !DILocation(line: 675, column: 15, scope: !1955)
!3833 = !DILocation(line: 676, column: 5, scope: !1955)
!3834 = !DILocation(line: 676, column: 8, scope: !1955)
!3835 = !DILocation(line: 676, column: 12, scope: !1955)
!3836 = !DILocation(line: 677, column: 15, scope: !1955)
!3837 = !DILocation(line: 677, column: 18, scope: !1955)
!3838 = !DILocation(line: 677, column: 22, scope: !1955)
!3839 = !DILocation(line: 677, column: 5, scope: !1955)
!3840 = !DILocation(line: 677, column: 8, scope: !1955)
!3841 = !DILocation(line: 677, column: 13, scope: !1955)
!3842 = !DILocation(line: 679, column: 31, scope: !1955)
!3843 = !DILocation(line: 679, column: 34, scope: !1955)
!3844 = !DILocation(line: 679, column: 10, scope: !1955)
!3845 = !DILocation(line: 679, column: 8, scope: !1955)
!3846 = !DILocation(line: 680, column: 9, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 680, column: 9)
!3848 = !DILocation(line: 680, column: 12, scope: !3847)
!3849 = !DILocation(line: 680, column: 9, scope: !1955)
!3850 = !DILocation(line: 681, column: 9, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 680, column: 21)
!3852 = !DILocation(line: 684, column: 15, scope: !1955)
!3853 = !DILocation(line: 684, column: 5, scope: !1955)
!3854 = !DILocation(line: 684, column: 9, scope: !1955)
!3855 = !DILocation(line: 684, column: 13, scope: !1955)
!3856 = !DILocation(line: 685, column: 16, scope: !1955)
!3857 = !DILocation(line: 685, column: 21, scope: !1955)
!3858 = !DILocation(line: 685, column: 5, scope: !1955)
!3859 = !DILocation(line: 685, column: 9, scope: !1955)
!3860 = !DILocation(line: 685, column: 14, scope: !1955)
!3861 = !DILocation(line: 686, column: 16, scope: !1955)
!3862 = !DILocation(line: 686, column: 5, scope: !1955)
!3863 = !DILocation(line: 686, column: 10, scope: !1955)
!3864 = !DILocation(line: 686, column: 14, scope: !1955)
!3865 = !DILocation(line: 688, column: 5, scope: !1955)
!3866 = !DILocation(line: 688, column: 10, scope: !1955)
!3867 = !DILocation(line: 688, column: 19, scope: !1955)
!3868 = !DILocation(line: 690, column: 5, scope: !1955)
!3869 = !DILocation(line: 691, column: 1, scope: !1955)
!3870 = !DISubprogram(name: "deflateEnd", scope: !1989, file: !1989, line: 363, type: !3871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!25, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !1989, line: 108, baseType: !3874)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!3875 = !DISubprogram(name: "ngx_pfree", scope: !96, file: !96, line: 83, type: !3876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!462, !93, !16}
!3878 = !DISubprogram(name: "ngx_alloc_chain_link", scope: !24, file: !24, line: 150, type: !3879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!109, !93}
!3881 = !DISubprogram(name: "ngx_create_temp_buf", scope: !24, file: !24, line: 143, type: !3882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!114, !93, !38}
!3884 = !DISubprogram(name: "ngx_palloc", scope: !96, file: !96, line: 79, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3885 = distinct !DISubprogram(name: "ngx_http_gzip_filter_alloc", scope: !2, file: !2, line: 1020, type: !3886, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3890)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!16, !16, !3888, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !19, line: 35, baseType: !3889)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !21, line: 33, baseType: !36)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896}
!3891 = !DILocalVariable(name: "opaque", arg: 1, scope: !3885, file: !2, line: 1020, type: !16)
!3892 = !DILocalVariable(name: "items", arg: 2, scope: !3885, file: !2, line: 1020, type: !3888)
!3893 = !DILocalVariable(name: "size", arg: 3, scope: !3885, file: !2, line: 1020, type: !3888)
!3894 = !DILocalVariable(name: "ctx", scope: !3885, file: !2, line: 1022, type: !1958)
!3895 = !DILocalVariable(name: "p", scope: !3885, file: !2, line: 1024, type: !16)
!3896 = !DILocalVariable(name: "alloc", scope: !3885, file: !2, line: 1025, type: !11)
!3897 = !DILocation(line: 1020, column: 34, scope: !3885)
!3898 = !DILocation(line: 1020, column: 48, scope: !3885)
!3899 = !DILocation(line: 1020, column: 61, scope: !3885)
!3900 = !DILocation(line: 1022, column: 5, scope: !3885)
!3901 = !DILocation(line: 1022, column: 26, scope: !3885)
!3902 = !DILocation(line: 1022, column: 32, scope: !3885)
!3903 = !DILocation(line: 1024, column: 5, scope: !3885)
!3904 = !DILocation(line: 1024, column: 18, scope: !3885)
!3905 = !DILocation(line: 1025, column: 5, scope: !3885)
!3906 = !DILocation(line: 1025, column: 18, scope: !3885)
!3907 = !DILocation(line: 1027, column: 13, scope: !3885)
!3908 = !DILocation(line: 1027, column: 21, scope: !3885)
!3909 = !DILocation(line: 1027, column: 19, scope: !3885)
!3910 = !DILocation(line: 1027, column: 11, scope: !3885)
!3911 = !DILocation(line: 1029, column: 9, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3885, file: !2, line: 1029, column: 9)
!3913 = !DILocation(line: 1029, column: 15, scope: !3912)
!3914 = !DILocation(line: 1029, column: 20, scope: !3912)
!3915 = !DILocation(line: 1029, column: 23, scope: !3912)
!3916 = !DILocation(line: 1029, column: 29, scope: !3912)
!3917 = !DILocation(line: 1029, column: 35, scope: !3912)
!3918 = !DILocation(line: 1029, column: 40, scope: !3912)
!3919 = !DILocation(line: 1029, column: 43, scope: !3912)
!3920 = !DILocation(line: 1029, column: 49, scope: !3912)
!3921 = !DILocation(line: 1029, column: 9, scope: !3885)
!3922 = !DILocation(line: 1036, column: 15, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 1029, column: 57)
!3924 = !DILocation(line: 1037, column: 5, scope: !3923)
!3925 = !DILocation(line: 1039, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3885, file: !2, line: 1039, column: 9)
!3927 = !DILocation(line: 1039, column: 18, scope: !3926)
!3928 = !DILocation(line: 1039, column: 23, scope: !3926)
!3929 = !DILocation(line: 1039, column: 15, scope: !3926)
!3930 = !DILocation(line: 1039, column: 9, scope: !3885)
!3931 = !DILocation(line: 1040, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3926, file: !2, line: 1039, column: 34)
!3933 = !DILocation(line: 1040, column: 18, scope: !3932)
!3934 = !DILocation(line: 1040, column: 11, scope: !3932)
!3935 = !DILocation(line: 1041, column: 26, scope: !3932)
!3936 = !DILocation(line: 1041, column: 9, scope: !3932)
!3937 = !DILocation(line: 1041, column: 14, scope: !3932)
!3938 = !DILocation(line: 1041, column: 23, scope: !3932)
!3939 = !DILocation(line: 1042, column: 27, scope: !3932)
!3940 = !DILocation(line: 1042, column: 9, scope: !3932)
!3941 = !DILocation(line: 1042, column: 14, scope: !3932)
!3942 = !DILocation(line: 1042, column: 24, scope: !3932)
!3943 = !DILocation(line: 1048, column: 16, scope: !3932)
!3944 = !DILocation(line: 1048, column: 9, scope: !3932)
!3945 = !DILocation(line: 1051, column: 9, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3885, file: !2, line: 1051, column: 9)
!3947 = !DILocation(line: 1051, column: 14, scope: !3946)
!3948 = !DILocation(line: 1051, column: 9, scope: !3885)
!3949 = !DILocation(line: 1052, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !2, line: 1052, column: 9)
!3951 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 1051, column: 21)
!3952 = !DILocation(line: 1052, column: 9, scope: !3951)
!3953 = !DILocation(line: 1056, column: 5, scope: !3951)
!3954 = !DILocation(line: 1057, column: 36, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 1056, column: 12)
!3956 = !DILocation(line: 1060, column: 20, scope: !3885)
!3957 = !DILocation(line: 1060, column: 25, scope: !3885)
!3958 = !DILocation(line: 1060, column: 34, scope: !3885)
!3959 = !DILocation(line: 1060, column: 40, scope: !3885)
!3960 = !DILocation(line: 1060, column: 48, scope: !3885)
!3961 = !DILocation(line: 1060, column: 46, scope: !3885)
!3962 = !DILocation(line: 1060, column: 9, scope: !3885)
!3963 = !DILocation(line: 1060, column: 7, scope: !3885)
!3964 = !DILocation(line: 1062, column: 12, scope: !3885)
!3965 = !DILocation(line: 1062, column: 5, scope: !3885)
!3966 = !DILocation(line: 1063, column: 1, scope: !3885)
!3967 = distinct !DISubprogram(name: "ngx_http_gzip_filter_free", scope: !2, file: !2, line: 1067, type: !3968, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !16, !16}
!3970 = !{!3971, !3972}
!3971 = !DILocalVariable(name: "opaque", arg: 1, scope: !3967, file: !2, line: 1067, type: !16)
!3972 = !DILocalVariable(name: "address", arg: 2, scope: !3967, file: !2, line: 1067, type: !16)
!3973 = !DILocation(line: 1067, column: 33, scope: !3967)
!3974 = !DILocation(line: 1067, column: 47, scope: !3967)
!3975 = !DILocation(line: 1075, column: 1, scope: !3967)
!3976 = !DISubprogram(name: "deflateInit2_", scope: !1989, file: !1989, line: 1769, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!25, !3873, !25, !25, !25, !25, !25, !56, !25}
!3979 = !DISubprogram(name: "ngx_log_error_core", scope: !180, file: !180, line: 90, type: !3980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !11, !177, !3982, !56, null}
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !3983, line: 16, baseType: !25)
!3983 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!3984 = !DISubprogram(name: "crc32", scope: !1989, file: !1989, line: 1726, type: !3985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!2000, !2000, !3987, !1998}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!3989 = !DISubprogram(name: "deflate", scope: !1989, file: !1989, line: 250, type: !3990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!25, !3873, !25}
!3992 = distinct !DISubprogram(name: "ngx_http_gzip_filter_deflate_end", scope: !2, file: !2, line: 932, type: !1956, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999}
!3994 = !DILocalVariable(name: "r", arg: 1, scope: !3992, file: !2, line: 932, type: !627)
!3995 = !DILocalVariable(name: "ctx", arg: 2, scope: !3992, file: !2, line: 933, type: !1958)
!3996 = !DILocalVariable(name: "rc", scope: !3992, file: !2, line: 935, type: !25)
!3997 = !DILocalVariable(name: "b", scope: !3992, file: !2, line: 936, type: !114)
!3998 = !DILocalVariable(name: "cl", scope: !3992, file: !2, line: 937, type: !109)
!3999 = !DILocalVariable(name: "trailer", scope: !3992, file: !2, line: 938, type: !29)
!4000 = !DILocation(line: 932, column: 54, scope: !3992)
!4001 = !DILocation(line: 933, column: 26, scope: !3992)
!4002 = !DILocation(line: 935, column: 5, scope: !3992)
!4003 = !DILocation(line: 935, column: 24, scope: !3992)
!4004 = !DILocation(line: 936, column: 5, scope: !3992)
!4005 = !DILocation(line: 936, column: 24, scope: !3992)
!4006 = !DILocation(line: 937, column: 5, scope: !3992)
!4007 = !DILocation(line: 937, column: 24, scope: !3992)
!4008 = !DILocation(line: 938, column: 5, scope: !3992)
!4009 = !DILocation(line: 938, column: 24, scope: !3992)
!4010 = !DILocation(line: 940, column: 16, scope: !3992)
!4011 = !DILocation(line: 940, column: 21, scope: !3992)
!4012 = !DILocation(line: 940, column: 29, scope: !3992)
!4013 = !{!2357, !2156, i64 160}
!4014 = !DILocation(line: 940, column: 5, scope: !3992)
!4015 = !DILocation(line: 940, column: 10, scope: !3992)
!4016 = !DILocation(line: 940, column: 14, scope: !3992)
!4017 = !DILocation(line: 941, column: 22, scope: !3992)
!4018 = !DILocation(line: 941, column: 27, scope: !3992)
!4019 = !DILocation(line: 941, column: 35, scope: !3992)
!4020 = !{!2357, !2156, i64 184}
!4021 = !DILocation(line: 941, column: 20, scope: !3992)
!4022 = !DILocation(line: 941, column: 45, scope: !3992)
!4023 = !DILocation(line: 941, column: 5, scope: !3992)
!4024 = !DILocation(line: 941, column: 10, scope: !3992)
!4025 = !DILocation(line: 941, column: 15, scope: !3992)
!4026 = !DILocation(line: 943, column: 22, scope: !3992)
!4027 = !DILocation(line: 943, column: 27, scope: !3992)
!4028 = !DILocation(line: 943, column: 10, scope: !3992)
!4029 = !DILocation(line: 943, column: 8, scope: !3992)
!4030 = !DILocation(line: 945, column: 9, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3992, file: !2, line: 945, column: 9)
!4032 = !DILocation(line: 945, column: 12, scope: !4031)
!4033 = !DILocation(line: 945, column: 9, scope: !3992)
!4034 = !DILocation(line: 946, column: 9, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !2, line: 946, column: 9)
!4036 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 945, column: 21)
!4037 = !DILocation(line: 946, column: 9, scope: !4036)
!4038 = !DILocation(line: 948, column: 9, scope: !4036)
!4039 = !DILocation(line: 951, column: 15, scope: !3992)
!4040 = !DILocation(line: 951, column: 18, scope: !3992)
!4041 = !DILocation(line: 951, column: 24, scope: !3992)
!4042 = !DILocation(line: 951, column: 29, scope: !3992)
!4043 = !DILocation(line: 951, column: 5, scope: !3992)
!4044 = !DILocation(line: 953, column: 31, scope: !3992)
!4045 = !DILocation(line: 953, column: 34, scope: !3992)
!4046 = !DILocation(line: 953, column: 10, scope: !3992)
!4047 = !DILocation(line: 953, column: 8, scope: !3992)
!4048 = !DILocation(line: 954, column: 9, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3992, file: !2, line: 954, column: 9)
!4050 = !DILocation(line: 954, column: 12, scope: !4049)
!4051 = !DILocation(line: 954, column: 9, scope: !3992)
!4052 = !DILocation(line: 955, column: 9, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4049, file: !2, line: 954, column: 21)
!4054 = !DILocation(line: 958, column: 15, scope: !3992)
!4055 = !DILocation(line: 958, column: 20, scope: !3992)
!4056 = !DILocation(line: 958, column: 5, scope: !3992)
!4057 = !DILocation(line: 958, column: 9, scope: !3992)
!4058 = !DILocation(line: 958, column: 13, scope: !3992)
!4059 = !DILocation(line: 959, column: 5, scope: !3992)
!4060 = !DILocation(line: 959, column: 9, scope: !3992)
!4061 = !DILocation(line: 959, column: 14, scope: !3992)
!4062 = !DILocation(line: 960, column: 22, scope: !3992)
!4063 = !DILocation(line: 960, column: 6, scope: !3992)
!4064 = !DILocation(line: 960, column: 11, scope: !3992)
!4065 = !DILocation(line: 960, column: 20, scope: !3992)
!4066 = !DILocation(line: 961, column: 22, scope: !3992)
!4067 = !DILocation(line: 961, column: 26, scope: !3992)
!4068 = !DILocation(line: 961, column: 5, scope: !3992)
!4069 = !DILocation(line: 961, column: 10, scope: !3992)
!4070 = !DILocation(line: 961, column: 19, scope: !3992)
!4071 = !DILocation(line: 963, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3992, file: !2, line: 963, column: 9)
!4073 = !DILocation(line: 963, column: 14, scope: !4072)
!4074 = !DILocation(line: 963, column: 22, scope: !4072)
!4075 = !DILocation(line: 963, column: 32, scope: !4072)
!4076 = !DILocation(line: 963, column: 9, scope: !3992)
!4077 = !DILocation(line: 964, column: 40, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 963, column: 38)
!4079 = !DILocation(line: 964, column: 45, scope: !4078)
!4080 = !DILocation(line: 964, column: 54, scope: !4078)
!4081 = !DILocation(line: 964, column: 17, scope: !4078)
!4082 = !DILocation(line: 965, column: 9, scope: !4078)
!4083 = !DILocation(line: 965, column: 14, scope: !4078)
!4084 = !DILocation(line: 965, column: 23, scope: !4078)
!4085 = !DILocation(line: 965, column: 28, scope: !4078)
!4086 = !DILocation(line: 966, column: 9, scope: !4078)
!4087 = !DILocation(line: 966, column: 14, scope: !4078)
!4088 = !DILocation(line: 966, column: 23, scope: !4078)
!4089 = !DILocation(line: 966, column: 32, scope: !4078)
!4090 = !DILocation(line: 968, column: 5, scope: !4078)
!4091 = !DILocation(line: 969, column: 33, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4072, file: !2, line: 968, column: 12)
!4093 = !DILocation(line: 969, column: 36, scope: !4092)
!4094 = !DILocation(line: 969, column: 13, scope: !4092)
!4095 = !DILocation(line: 969, column: 11, scope: !4092)
!4096 = !DILocation(line: 970, column: 13, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !2, line: 970, column: 13)
!4098 = !DILocation(line: 970, column: 15, scope: !4097)
!4099 = !DILocation(line: 970, column: 13, scope: !4092)
!4100 = !DILocation(line: 971, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4097, file: !2, line: 970, column: 24)
!4102 = !DILocation(line: 974, column: 9, scope: !4092)
!4103 = !DILocation(line: 974, column: 12, scope: !4092)
!4104 = !DILocation(line: 974, column: 21, scope: !4092)
!4105 = !DILocation(line: 976, column: 35, scope: !4092)
!4106 = !DILocation(line: 976, column: 38, scope: !4092)
!4107 = !DILocation(line: 976, column: 14, scope: !4092)
!4108 = !DILocation(line: 976, column: 12, scope: !4092)
!4109 = !DILocation(line: 977, column: 13, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4092, file: !2, line: 977, column: 13)
!4111 = !DILocation(line: 977, column: 16, scope: !4110)
!4112 = !DILocation(line: 977, column: 13, scope: !4092)
!4113 = !DILocation(line: 978, column: 13, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !2, line: 977, column: 25)
!4115 = !DILocation(line: 981, column: 19, scope: !4092)
!4116 = !DILocation(line: 981, column: 9, scope: !4092)
!4117 = !DILocation(line: 981, column: 13, scope: !4092)
!4118 = !DILocation(line: 981, column: 17, scope: !4092)
!4119 = !DILocation(line: 982, column: 9, scope: !4092)
!4120 = !DILocation(line: 982, column: 13, scope: !4092)
!4121 = !DILocation(line: 982, column: 18, scope: !4092)
!4122 = !DILocation(line: 983, column: 26, scope: !4092)
!4123 = !DILocation(line: 983, column: 10, scope: !4092)
!4124 = !DILocation(line: 983, column: 15, scope: !4092)
!4125 = !DILocation(line: 983, column: 24, scope: !4092)
!4126 = !DILocation(line: 984, column: 26, scope: !4092)
!4127 = !DILocation(line: 984, column: 30, scope: !4092)
!4128 = !DILocation(line: 984, column: 9, scope: !4092)
!4129 = !DILocation(line: 984, column: 14, scope: !4092)
!4130 = !DILocation(line: 984, column: 23, scope: !4092)
!4131 = !DILocation(line: 985, column: 40, scope: !4092)
!4132 = !DILocation(line: 985, column: 43, scope: !4092)
!4133 = !DILocation(line: 985, column: 17, scope: !4092)
!4134 = !DILocation(line: 986, column: 9, scope: !4092)
!4135 = !DILocation(line: 986, column: 12, scope: !4092)
!4136 = !DILocation(line: 986, column: 17, scope: !4092)
!4137 = !DILocation(line: 991, column: 22, scope: !3992)
!4138 = !DILocation(line: 991, column: 27, scope: !3992)
!4139 = !DILocation(line: 991, column: 5, scope: !3992)
!4140 = !DILocation(line: 991, column: 14, scope: !3992)
!4141 = !DILocation(line: 991, column: 20, scope: !3992)
!4142 = !{!4143, !2341, i64 0}
!4143 = !{!"gztrailer", !2341, i64 0, !2341, i64 4}
!4144 = !DILocation(line: 992, column: 21, scope: !3992)
!4145 = !DILocation(line: 992, column: 26, scope: !3992)
!4146 = !DILocation(line: 992, column: 5, scope: !3992)
!4147 = !DILocation(line: 992, column: 14, scope: !3992)
!4148 = !DILocation(line: 992, column: 19, scope: !3992)
!4149 = !{!4143, !2341, i64 4}
!4150 = !DILocation(line: 1008, column: 5, scope: !3992)
!4151 = !DILocation(line: 1008, column: 10, scope: !3992)
!4152 = !DILocation(line: 1008, column: 18, scope: !3992)
!4153 = !DILocation(line: 1008, column: 27, scope: !3992)
!4154 = !DILocation(line: 1009, column: 5, scope: !3992)
!4155 = !DILocation(line: 1009, column: 10, scope: !3992)
!4156 = !DILocation(line: 1009, column: 18, scope: !3992)
!4157 = !DILocation(line: 1009, column: 28, scope: !3992)
!4158 = !DILocation(line: 1011, column: 5, scope: !3992)
!4159 = !DILocation(line: 1011, column: 10, scope: !3992)
!4160 = !DILocation(line: 1011, column: 15, scope: !3992)
!4161 = !DILocation(line: 1013, column: 5, scope: !3992)
!4162 = !DILocation(line: 1013, column: 8, scope: !3992)
!4163 = !DILocation(line: 1013, column: 20, scope: !3992)
!4164 = !DILocation(line: 1013, column: 29, scope: !3992)
!4165 = !DILocation(line: 1015, column: 5, scope: !3992)
!4166 = !DILocation(line: 1016, column: 1, scope: !3992)
!4167 = !DISubprogram(name: "ngx_http_merge_types", scope: !629, file: !629, line: 155, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!51, !77, !4170, !2900, !4170, !2900, !882}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!4171 = distinct !DISubprogram(name: "ngx_http_gzip_window", scope: !2, file: !2, line: 1229, type: !2070, scopeLine: 1230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4178, !4179}
!4173 = !DILocalVariable(name: "cf", arg: 1, scope: !4171, file: !2, line: 1229, type: !77)
!4174 = !DILocalVariable(name: "post", arg: 2, scope: !4171, file: !2, line: 1229, type: !16)
!4175 = !DILocalVariable(name: "data", arg: 3, scope: !4171, file: !2, line: 1229, type: !16)
!4176 = !DILocalVariable(name: "np", scope: !4171, file: !2, line: 1231, type: !4177)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!4178 = !DILocalVariable(name: "wbits", scope: !4171, file: !2, line: 1233, type: !38)
!4179 = !DILocalVariable(name: "wsize", scope: !4171, file: !2, line: 1233, type: !38)
!4180 = !DILocation(line: 1229, column: 34, scope: !4171)
!4181 = !DILocation(line: 1229, column: 44, scope: !4171)
!4182 = !DILocation(line: 1229, column: 56, scope: !4171)
!4183 = !DILocation(line: 1231, column: 5, scope: !4171)
!4184 = !DILocation(line: 1231, column: 13, scope: !4171)
!4185 = !DILocation(line: 1231, column: 18, scope: !4171)
!4186 = !DILocation(line: 1233, column: 5, scope: !4171)
!4187 = !DILocation(line: 1233, column: 13, scope: !4171)
!4188 = !DILocation(line: 1233, column: 20, scope: !4171)
!4189 = !DILocation(line: 1235, column: 11, scope: !4171)
!4190 = !DILocation(line: 1237, column: 16, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4171, file: !2, line: 1237, column: 5)
!4192 = !DILocation(line: 1237, column: 10, scope: !4191)
!4193 = !DILocation(line: 1237, column: 29, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !2, line: 1237, column: 5)
!4195 = !DILocation(line: 1237, column: 35, scope: !4194)
!4196 = !DILocation(line: 1237, column: 5, scope: !4191)
!4197 = !DILocation(line: 1239, column: 13, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 1239, column: 13)
!4199 = distinct !DILexicalBlock(scope: !4194, file: !2, line: 1237, column: 55)
!4200 = !DILocation(line: 1239, column: 23, scope: !4198)
!4201 = !DILocation(line: 1239, column: 22, scope: !4198)
!4202 = !DILocation(line: 1239, column: 19, scope: !4198)
!4203 = !DILocation(line: 1239, column: 13, scope: !4199)
!4204 = !DILocation(line: 1240, column: 19, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4198, file: !2, line: 1239, column: 27)
!4206 = !DILocation(line: 1240, column: 14, scope: !4205)
!4207 = !DILocation(line: 1240, column: 17, scope: !4205)
!4208 = !DILocation(line: 1242, column: 13, scope: !4205)
!4209 = !DILocation(line: 1245, column: 14, scope: !4199)
!4210 = !DILocation(line: 1246, column: 5, scope: !4199)
!4211 = !DILocation(line: 1237, column: 48, scope: !4194)
!4212 = !DILocation(line: 1237, column: 5, scope: !4194)
!4213 = distinct !{!4213, !4196, !4214, !2949}
!4214 = !DILocation(line: 1246, column: 5, scope: !4191)
!4215 = !DILocation(line: 1248, column: 5, scope: !4171)
!4216 = !DILocation(line: 1249, column: 1, scope: !4171)
!4217 = distinct !DISubprogram(name: "ngx_http_gzip_hash", scope: !2, file: !2, line: 1253, type: !2070, scopeLine: 1254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224}
!4219 = !DILocalVariable(name: "cf", arg: 1, scope: !4217, file: !2, line: 1253, type: !77)
!4220 = !DILocalVariable(name: "post", arg: 2, scope: !4217, file: !2, line: 1253, type: !16)
!4221 = !DILocalVariable(name: "data", arg: 3, scope: !4217, file: !2, line: 1253, type: !16)
!4222 = !DILocalVariable(name: "np", scope: !4217, file: !2, line: 1255, type: !4177)
!4223 = !DILocalVariable(name: "memlevel", scope: !4217, file: !2, line: 1257, type: !38)
!4224 = !DILocalVariable(name: "hsize", scope: !4217, file: !2, line: 1257, type: !38)
!4225 = !DILocation(line: 1253, column: 32, scope: !4217)
!4226 = !DILocation(line: 1253, column: 42, scope: !4217)
!4227 = !DILocation(line: 1253, column: 54, scope: !4217)
!4228 = !DILocation(line: 1255, column: 5, scope: !4217)
!4229 = !DILocation(line: 1255, column: 13, scope: !4217)
!4230 = !DILocation(line: 1255, column: 18, scope: !4217)
!4231 = !DILocation(line: 1257, column: 5, scope: !4217)
!4232 = !DILocation(line: 1257, column: 13, scope: !4217)
!4233 = !DILocation(line: 1257, column: 23, scope: !4217)
!4234 = !DILocation(line: 1259, column: 14, scope: !4217)
!4235 = !DILocation(line: 1261, column: 16, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4217, file: !2, line: 1261, column: 5)
!4237 = !DILocation(line: 1261, column: 10, scope: !4236)
!4238 = !DILocation(line: 1261, column: 30, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4236, file: !2, line: 1261, column: 5)
!4240 = !DILocation(line: 1261, column: 36, scope: !4239)
!4241 = !DILocation(line: 1261, column: 5, scope: !4236)
!4242 = !DILocation(line: 1263, column: 13, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !2, line: 1263, column: 13)
!4244 = distinct !DILexicalBlock(scope: !4239, file: !2, line: 1261, column: 56)
!4245 = !DILocation(line: 1263, column: 23, scope: !4243)
!4246 = !DILocation(line: 1263, column: 22, scope: !4243)
!4247 = !DILocation(line: 1263, column: 19, scope: !4243)
!4248 = !DILocation(line: 1263, column: 13, scope: !4244)
!4249 = !DILocation(line: 1264, column: 19, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4243, file: !2, line: 1263, column: 27)
!4251 = !DILocation(line: 1264, column: 14, scope: !4250)
!4252 = !DILocation(line: 1264, column: 17, scope: !4250)
!4253 = !DILocation(line: 1266, column: 13, scope: !4250)
!4254 = !DILocation(line: 1269, column: 17, scope: !4244)
!4255 = !DILocation(line: 1270, column: 5, scope: !4244)
!4256 = !DILocation(line: 1261, column: 49, scope: !4239)
!4257 = !DILocation(line: 1261, column: 5, scope: !4239)
!4258 = distinct !{!4258, !4241, !4259, !2949}
!4259 = !DILocation(line: 1270, column: 5, scope: !4236)
!4260 = !DILocation(line: 1272, column: 5, scope: !4217)
!4261 = !DILocation(line: 1273, column: 1, scope: !4217)
