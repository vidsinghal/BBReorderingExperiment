; ModuleID = 'samples/925.bc'
source_filename = "src/http/modules/ngx_http_index_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_http_conf_ctx_t = type { ptr, ptr, ptr }
%struct.ngx_http_core_main_conf_t = type { %struct.ngx_array_t, %struct.ngx_http_phase_engine_t, %struct.ngx_hash_t, %struct.ngx_hash_t, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64, i64, ptr, ptr, [11 x %struct.ngx_http_phase_t] }
%struct.ngx_http_phase_engine_t = type { ptr, i64, i64 }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_phase_t = type { %struct.ngx_array_t }
%struct.ngx_http_index_loc_conf_t = type { ptr, i64 }
%struct.ngx_http_index_t = type { %struct.ngx_str_t, ptr, ptr }
%struct.ngx_open_file_info_t = type { i32, i64, i64, i64, i64, i64, i64, i32, ptr, i64, i64, i64, i16 }
%struct.ngx_http_script_engine_t = type { ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i8, i64, ptr }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, [12 x i8], i24, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, i64, i64, i64, i64 }
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_str_t, ptr, i16, ptr, ptr, ptr, i32, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64, ptr }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, ptr, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_http_script_compile_t = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, i8 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110111111000110\00", align 1, !dbg !0
@ngx_http_index_module_ctx = internal global %struct.ngx_http_module_t { ptr null, ptr @ngx_http_index_init, ptr null, ptr null, ptr null, ptr null, ptr @ngx_http_index_create_loc_conf, ptr @ngx_http_index_merge_loc_conf }, align 8, !dbg !7
@ngx_http_index_commands = internal global [2 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 5, ptr @.str.6 }, i64 234883072, ptr @ngx_http_index_set_index, i64 16, i64 0, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !2027
@ngx_http_index_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1024000, ptr @.str, ptr @ngx_http_index_module_ctx, ptr @ngx_http_index_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !1998
@ngx_http_core_module = external global %struct.ngx_module_s, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1, !dbg !2000
@.str.2 = private unnamed_addr constant [18 x i8] c"\22%s\22 is forbidden\00", align 1, !dbg !2005
@.str.3 = private unnamed_addr constant [18 x i8] c"\22%s\22 is not found\00", align 1, !dbg !2010
@.str.4 = private unnamed_addr constant [24 x i8] c"\22%s\22 is not a directory\00", align 1, !dbg !2012
@.str.5 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1, !dbg !2017
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1, !dbg !2022
@.str.7 = private unnamed_addr constant [60 x i8] c"only the last index in \22index\22 directive should be absolute\00", align 1, !dbg !2032
@.str.8 = private unnamed_addr constant [43 x i8] c"index \22%V\22 in \22index\22 directive is invalid\00", align 1, !dbg !2037

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_index_init(ptr noundef %cf) #0 !dbg !2072 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %h = alloca ptr, align 8
  %cmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2074, metadata !DIExpression()), !dbg !2135
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6, !dbg !2136
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2075, metadata !DIExpression()), !dbg !2137
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmcf) #6, !dbg !2138
  tail call void @llvm.dbg.declare(metadata ptr %cmcf, metadata !2077, metadata !DIExpression()), !dbg !2139
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2140, !tbaa !2131
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 7, !dbg !2140
  %1 = load ptr, ptr %ctx, align 8, !dbg !2140, !tbaa !2141
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %1, i32 0, i32 0, !dbg !2140
  %2 = load ptr, ptr %main_conf, align 8, !dbg !2140, !tbaa !2144
  %3 = load i64, ptr @ngx_http_core_module, align 8, !dbg !2140, !tbaa !2146
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2140
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2140, !tbaa !2131
  store ptr %4, ptr %cmcf, align 8, !dbg !2148, !tbaa !2131
  %5 = load ptr, ptr %cmcf, align 8, !dbg !2149, !tbaa !2131
  %phases = getelementptr inbounds %struct.ngx_http_core_main_conf_t, ptr %5, i32 0, i32 13, !dbg !2150
  %arrayidx1 = getelementptr inbounds [11 x %struct.ngx_http_phase_t], ptr %phases, i64 0, i64 9, !dbg !2149
  %handlers = getelementptr inbounds %struct.ngx_http_phase_t, ptr %arrayidx1, i32 0, i32 0, !dbg !2151
  %call = call ptr @ngx_array_push(ptr noundef %handlers), !dbg !2152
  store ptr %call, ptr %h, align 8, !dbg !2153, !tbaa !2131
  %6 = load ptr, ptr %h, align 8, !dbg !2154, !tbaa !2131
  %cmp = icmp eq ptr %6, null, !dbg !2156
  br i1 %cmp, label %if.then, label %if.end, !dbg !2157

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2158

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %h, align 8, !dbg !2160, !tbaa !2131
  store ptr @ngx_http_index_handler, ptr %7, align 8, !dbg !2161, !tbaa !2131
  store i64 0, ptr %retval, align 8, !dbg !2162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2162

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmcf) #6, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6, !dbg !2163
  %8 = load i64, ptr %retval, align 8, !dbg !2163
  ret i64 %8, !dbg !2163
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_index_create_loc_conf(ptr noundef %cf) #0 !dbg !2164 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2166, metadata !DIExpression()), !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2175
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2167, metadata !DIExpression()), !dbg !2176
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2177, !tbaa !2131
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2178
  %1 = load ptr, ptr %pool, align 8, !dbg !2178, !tbaa !2179
  %call = call ptr @ngx_palloc(ptr noundef %1, i64 noundef 16), !dbg !2180
  store ptr %call, ptr %conf, align 8, !dbg !2181, !tbaa !2131
  %2 = load ptr, ptr %conf, align 8, !dbg !2182, !tbaa !2131
  %cmp = icmp eq ptr %2, null, !dbg !2184
  br i1 %cmp, label %if.then, label %if.end, !dbg !2185

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2186

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %conf, align 8, !dbg !2188, !tbaa !2131
  %indices = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %3, i32 0, i32 0, !dbg !2189
  store ptr null, ptr %indices, align 8, !dbg !2190, !tbaa !2191
  %4 = load ptr, ptr %conf, align 8, !dbg !2193, !tbaa !2131
  %max_index_len = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %4, i32 0, i32 1, !dbg !2194
  store i64 0, ptr %max_index_len, align 8, !dbg !2195, !tbaa !2196
  %5 = load ptr, ptr %conf, align 8, !dbg !2197, !tbaa !2131
  store ptr %5, ptr %retval, align 8, !dbg !2198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2198

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2199
  %6 = load ptr, ptr %retval, align 8, !dbg !2199
  ret ptr %6, !dbg !2199
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_index_merge_loc_conf(ptr noundef %cf, ptr noundef %parent, ptr noundef %child) #0 !dbg !2200 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %index = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2202, metadata !DIExpression()), !dbg !2215
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2203, metadata !DIExpression()), !dbg !2216
  store ptr %child, ptr %child.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !2204, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !2218
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !2205, metadata !DIExpression()), !dbg !2219
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2220, !tbaa !2131
  store ptr %0, ptr %prev, align 8, !dbg !2219, !tbaa !2131
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2221
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2206, metadata !DIExpression()), !dbg !2222
  %1 = load ptr, ptr %child.addr, align 8, !dbg !2223, !tbaa !2131
  store ptr %1, ptr %conf, align 8, !dbg !2222, !tbaa !2131
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #6, !dbg !2224
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !2207, metadata !DIExpression()), !dbg !2225
  %2 = load ptr, ptr %conf, align 8, !dbg !2226, !tbaa !2131
  %indices = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %2, i32 0, i32 0, !dbg !2228
  %3 = load ptr, ptr %indices, align 8, !dbg !2228, !tbaa !2191
  %cmp = icmp eq ptr %3, null, !dbg !2229
  br i1 %cmp, label %if.then, label %if.end, !dbg !2230

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %prev, align 8, !dbg !2231, !tbaa !2131
  %indices1 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !2233
  %5 = load ptr, ptr %indices1, align 8, !dbg !2233, !tbaa !2191
  %6 = load ptr, ptr %conf, align 8, !dbg !2234, !tbaa !2131
  %indices2 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !2235
  store ptr %5, ptr %indices2, align 8, !dbg !2236, !tbaa !2191
  %7 = load ptr, ptr %prev, align 8, !dbg !2237, !tbaa !2131
  %max_index_len = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %7, i32 0, i32 1, !dbg !2238
  %8 = load i64, ptr %max_index_len, align 8, !dbg !2238, !tbaa !2196
  %9 = load ptr, ptr %conf, align 8, !dbg !2239, !tbaa !2131
  %max_index_len3 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %9, i32 0, i32 1, !dbg !2240
  store i64 %8, ptr %max_index_len3, align 8, !dbg !2241, !tbaa !2196
  br label %if.end, !dbg !2242

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %conf, align 8, !dbg !2243, !tbaa !2131
  %indices4 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %10, i32 0, i32 0, !dbg !2245
  %11 = load ptr, ptr %indices4, align 8, !dbg !2245, !tbaa !2191
  %cmp5 = icmp eq ptr %11, null, !dbg !2246
  br i1 %cmp5, label %if.then6, label %if.end19, !dbg !2247

if.then6:                                         ; preds = %if.end
  %12 = load ptr, ptr %cf.addr, align 8, !dbg !2248, !tbaa !2131
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %12, i32 0, i32 3, !dbg !2250
  %13 = load ptr, ptr %pool, align 8, !dbg !2250, !tbaa !2179
  %call = call ptr @ngx_array_create(ptr noundef %13, i64 noundef 1, i64 noundef 32), !dbg !2251
  %14 = load ptr, ptr %conf, align 8, !dbg !2252, !tbaa !2131
  %indices7 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %14, i32 0, i32 0, !dbg !2253
  store ptr %call, ptr %indices7, align 8, !dbg !2254, !tbaa !2191
  %15 = load ptr, ptr %conf, align 8, !dbg !2255, !tbaa !2131
  %indices8 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !2257
  %16 = load ptr, ptr %indices8, align 8, !dbg !2257, !tbaa !2191
  %cmp9 = icmp eq ptr %16, null, !dbg !2258
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2259

if.then10:                                        ; preds = %if.then6
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2260

if.end11:                                         ; preds = %if.then6
  %17 = load ptr, ptr %conf, align 8, !dbg !2262, !tbaa !2131
  %indices12 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %17, i32 0, i32 0, !dbg !2263
  %18 = load ptr, ptr %indices12, align 8, !dbg !2263, !tbaa !2191
  %call13 = call ptr @ngx_array_push(ptr noundef %18), !dbg !2264
  store ptr %call13, ptr %index, align 8, !dbg !2265, !tbaa !2131
  %19 = load ptr, ptr %index, align 8, !dbg !2266, !tbaa !2131
  %cmp14 = icmp eq ptr %19, null, !dbg !2268
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2269

if.then15:                                        ; preds = %if.end11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

if.end16:                                         ; preds = %if.end11
  %20 = load ptr, ptr %index, align 8, !dbg !2272, !tbaa !2131
  %name = getelementptr inbounds %struct.ngx_http_index_t, ptr %20, i32 0, i32 0, !dbg !2273
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !2274
  store i64 11, ptr %len, align 8, !dbg !2275, !tbaa !2276
  %21 = load ptr, ptr %index, align 8, !dbg !2279, !tbaa !2131
  %name17 = getelementptr inbounds %struct.ngx_http_index_t, ptr %21, i32 0, i32 0, !dbg !2280
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name17, i32 0, i32 1, !dbg !2281
  store ptr @.str.5, ptr %data, align 8, !dbg !2282, !tbaa !2283
  %22 = load ptr, ptr %index, align 8, !dbg !2284, !tbaa !2131
  %lengths = getelementptr inbounds %struct.ngx_http_index_t, ptr %22, i32 0, i32 1, !dbg !2285
  store ptr null, ptr %lengths, align 8, !dbg !2286, !tbaa !2287
  %23 = load ptr, ptr %index, align 8, !dbg !2288, !tbaa !2131
  %values = getelementptr inbounds %struct.ngx_http_index_t, ptr %23, i32 0, i32 2, !dbg !2289
  store ptr null, ptr %values, align 8, !dbg !2290, !tbaa !2291
  %24 = load ptr, ptr %conf, align 8, !dbg !2292, !tbaa !2131
  %max_index_len18 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %24, i32 0, i32 1, !dbg !2293
  store i64 11, ptr %max_index_len18, align 8, !dbg !2294, !tbaa !2196
  store ptr null, ptr %retval, align 8, !dbg !2295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2295

if.end19:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2296

cleanup:                                          ; preds = %if.end19, %if.end16, %if.then15, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #6, !dbg !2297
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2297
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !2297
  %25 = load ptr, ptr %retval, align 8, !dbg !2297
  ret ptr %25, !dbg !2297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2298 ptr @ngx_array_push(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_index_handler(ptr noundef %r) #0 !dbg !2301 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %name = alloca ptr, align 8
  %len = alloca i64, align 8
  %root = alloca i64, align 8
  %reserve = alloca i64, align 8
  %allocated = alloca i64, align 8
  %rc = alloca i64, align 8
  %path = alloca %struct.ngx_str_t, align 8
  %uri = alloca %struct.ngx_str_t, align 8
  %i = alloca i64, align 8
  %dir_tested = alloca i64, align 8
  %index = alloca ptr, align 8
  %of = alloca %struct.ngx_open_file_info_t, align 8
  %code = alloca ptr, align 8
  %e = alloca %struct.ngx_http_script_engine_t, align 8
  %clcf = alloca ptr, align 8
  %ilcf = alloca ptr, align 8
  %lcode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2303, metadata !DIExpression()), !dbg !2350
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !2351
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2304, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !2351
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2305, metadata !DIExpression()), !dbg !2353
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !2354
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2306, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #6, !dbg !2354
  tail call void @llvm.dbg.declare(metadata ptr %root, metadata !2307, metadata !DIExpression()), !dbg !2356
  call void @llvm.lifetime.start.p0(i64 8, ptr %reserve) #6, !dbg !2354
  tail call void @llvm.dbg.declare(metadata ptr %reserve, metadata !2308, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocated) #6, !dbg !2354
  tail call void @llvm.dbg.declare(metadata ptr %allocated, metadata !2309, metadata !DIExpression()), !dbg !2358
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !2359
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2310, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #6, !dbg !2361
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !2311, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 16, ptr %uri) #6, !dbg !2361
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !2312, metadata !DIExpression()), !dbg !2363
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !2364
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2313, metadata !DIExpression()), !dbg !2365
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir_tested) #6, !dbg !2364
  tail call void @llvm.dbg.declare(metadata ptr %dir_tested, metadata !2314, metadata !DIExpression()), !dbg !2366
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #6, !dbg !2367
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !2315, metadata !DIExpression()), !dbg !2368
  call void @llvm.lifetime.start.p0(i64 104, ptr %of) #6, !dbg !2369
  tail call void @llvm.dbg.declare(metadata ptr %of, metadata !2316, metadata !DIExpression()), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #6, !dbg !2371
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !2345, metadata !DIExpression()), !dbg !2372
  call void @llvm.lifetime.start.p0(i64 88, ptr %e) #6, !dbg !2373
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !2346, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 8, ptr %clcf) #6, !dbg !2375
  tail call void @llvm.dbg.declare(metadata ptr %clcf, metadata !2347, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 8, ptr %ilcf) #6, !dbg !2377
  tail call void @llvm.dbg.declare(metadata ptr %ilcf, metadata !2348, metadata !DIExpression()), !dbg !2378
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcode) #6, !dbg !2379
  tail call void @llvm.dbg.declare(metadata ptr %lcode, metadata !2349, metadata !DIExpression()), !dbg !2380
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2381, !tbaa !2131
  %uri1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 22, !dbg !2383
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %uri1, i32 0, i32 1, !dbg !2384
  %1 = load ptr, ptr %data, align 8, !dbg !2384, !tbaa !2385
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2392, !tbaa !2131
  %uri2 = getelementptr inbounds %struct.ngx_http_request_s, ptr %2, i32 0, i32 22, !dbg !2393
  %len3 = getelementptr inbounds %struct.ngx_str_t, ptr %uri2, i32 0, i32 0, !dbg !2394
  %3 = load i64, ptr %len3, align 8, !dbg !2394, !tbaa !2395
  %sub = sub i64 %3, 1, !dbg !2396
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub, !dbg !2381
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2381, !tbaa !2397
  %conv = zext i8 %4 to i32, !dbg !2381
  %cmp = icmp ne i32 %conv, 47, !dbg !2398
  br i1 %cmp, label %if.then, label %if.end, !dbg !2399

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !2400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2400

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2402, !tbaa !2131
  %method = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 19, !dbg !2404
  %6 = load i64, ptr %method, align 8, !dbg !2404, !tbaa !2405
  %and = and i64 %6, 14, !dbg !2406
  %tobool = icmp ne i64 %and, 0, !dbg !2406
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !2407

if.then5:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !2408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2408

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2410, !tbaa !2131
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %7, i32 0, i32 5, !dbg !2410
  %8 = load ptr, ptr %loc_conf, align 8, !dbg !2410, !tbaa !2411
  %9 = load i64, ptr @ngx_http_index_module, align 8, !dbg !2410, !tbaa !2146
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 %9, !dbg !2410
  %10 = load ptr, ptr %arrayidx7, align 8, !dbg !2410, !tbaa !2131
  store ptr %10, ptr %ilcf, align 8, !dbg !2412, !tbaa !2131
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2413, !tbaa !2131
  %loc_conf8 = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 5, !dbg !2413
  %12 = load ptr, ptr %loc_conf8, align 8, !dbg !2413, !tbaa !2411
  %13 = load i64, ptr @ngx_http_core_module, align 8, !dbg !2413, !tbaa !2146
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !2413
  %14 = load ptr, ptr %arrayidx9, align 8, !dbg !2413, !tbaa !2131
  store ptr %14, ptr %clcf, align 8, !dbg !2414, !tbaa !2131
  store i64 0, ptr %allocated, align 8, !dbg !2415, !tbaa !2416
  store i64 0, ptr %root, align 8, !dbg !2417, !tbaa !2416
  store i64 0, ptr %dir_tested, align 8, !dbg !2418, !tbaa !2416
  store ptr null, ptr %name, align 8, !dbg !2419, !tbaa !2131
  %data10 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2420
  store ptr null, ptr %data10, align 8, !dbg !2421, !tbaa !2422
  %15 = load ptr, ptr %ilcf, align 8, !dbg !2423, !tbaa !2131
  %indices = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !2424
  %16 = load ptr, ptr %indices, align 8, !dbg !2424, !tbaa !2191
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %16, i32 0, i32 0, !dbg !2425
  %17 = load ptr, ptr %elts, align 8, !dbg !2425, !tbaa !2426
  store ptr %17, ptr %index, align 8, !dbg !2428, !tbaa !2131
  store i64 0, ptr %i, align 8, !dbg !2429, !tbaa !2416
  br label %for.cond, !dbg !2431

for.cond:                                         ; preds = %for.inc, %if.end6
  %18 = load i64, ptr %i, align 8, !dbg !2432, !tbaa !2416
  %19 = load ptr, ptr %ilcf, align 8, !dbg !2434, !tbaa !2131
  %indices11 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %19, i32 0, i32 0, !dbg !2435
  %20 = load ptr, ptr %indices11, align 8, !dbg !2435, !tbaa !2191
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %20, i32 0, i32 1, !dbg !2436
  %21 = load i64, ptr %nelts, align 8, !dbg !2436, !tbaa !2437
  %cmp12 = icmp ult i64 %18, %21, !dbg !2438
  br i1 %cmp12, label %for.body, label %for.end, !dbg !2439

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %index, align 8, !dbg !2440, !tbaa !2131
  %23 = load i64, ptr %i, align 8, !dbg !2443, !tbaa !2416
  %arrayidx14 = getelementptr inbounds %struct.ngx_http_index_t, ptr %22, i64 %23, !dbg !2440
  %lengths = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx14, i32 0, i32 1, !dbg !2444
  %24 = load ptr, ptr %lengths, align 8, !dbg !2444, !tbaa !2287
  %cmp15 = icmp eq ptr %24, null, !dbg !2445
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !2446

if.then17:                                        ; preds = %for.body
  %25 = load ptr, ptr %index, align 8, !dbg !2447, !tbaa !2131
  %26 = load i64, ptr %i, align 8, !dbg !2450, !tbaa !2416
  %arrayidx18 = getelementptr inbounds %struct.ngx_http_index_t, ptr %25, i64 %26, !dbg !2447
  %name19 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx18, i32 0, i32 0, !dbg !2451
  %data20 = getelementptr inbounds %struct.ngx_str_t, ptr %name19, i32 0, i32 1, !dbg !2452
  %27 = load ptr, ptr %data20, align 8, !dbg !2452, !tbaa !2283
  %arrayidx21 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !2447
  %28 = load i8, ptr %arrayidx21, align 1, !dbg !2447, !tbaa !2397
  %conv22 = zext i8 %28 to i32, !dbg !2447
  %cmp23 = icmp eq i32 %conv22, 47, !dbg !2453
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !2454

if.then25:                                        ; preds = %if.then17
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2455, !tbaa !2131
  %30 = load ptr, ptr %index, align 8, !dbg !2457, !tbaa !2131
  %31 = load i64, ptr %i, align 8, !dbg !2458, !tbaa !2416
  %arrayidx26 = getelementptr inbounds %struct.ngx_http_index_t, ptr %30, i64 %31, !dbg !2457
  %name27 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx26, i32 0, i32 0, !dbg !2459
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2460, !tbaa !2131
  %args = getelementptr inbounds %struct.ngx_http_request_s, ptr %32, i32 0, i32 23, !dbg !2461
  %call = call i64 @ngx_http_internal_redirect(ptr noundef %29, ptr noundef %name27, ptr noundef %args), !dbg !2462
  store i64 %call, ptr %retval, align 8, !dbg !2463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2463

if.end28:                                         ; preds = %if.then17
  %33 = load ptr, ptr %ilcf, align 8, !dbg !2464, !tbaa !2131
  %max_index_len = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %33, i32 0, i32 1, !dbg !2465
  %34 = load i64, ptr %max_index_len, align 8, !dbg !2465, !tbaa !2196
  store i64 %34, ptr %reserve, align 8, !dbg !2466, !tbaa !2416
  %35 = load ptr, ptr %index, align 8, !dbg !2467, !tbaa !2131
  %36 = load i64, ptr %i, align 8, !dbg !2468, !tbaa !2416
  %arrayidx29 = getelementptr inbounds %struct.ngx_http_index_t, ptr %35, i64 %36, !dbg !2467
  %name30 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx29, i32 0, i32 0, !dbg !2469
  %len31 = getelementptr inbounds %struct.ngx_str_t, ptr %name30, i32 0, i32 0, !dbg !2470
  %37 = load i64, ptr %len31, align 8, !dbg !2470, !tbaa !2276
  store i64 %37, ptr %len, align 8, !dbg !2471, !tbaa !2416
  br label %if.end40, !dbg !2472

if.else:                                          ; preds = %for.body
  call void @llvm.memset.p0.i64(ptr align 8 %e, i8 0, i64 88, i1 false), !dbg !2473
  %38 = load ptr, ptr %index, align 8, !dbg !2475, !tbaa !2131
  %39 = load i64, ptr %i, align 8, !dbg !2476, !tbaa !2416
  %arrayidx32 = getelementptr inbounds %struct.ngx_http_index_t, ptr %38, i64 %39, !dbg !2475
  %lengths33 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx32, i32 0, i32 1, !dbg !2477
  %40 = load ptr, ptr %lengths33, align 8, !dbg !2477, !tbaa !2287
  %elts34 = getelementptr inbounds %struct.ngx_array_t, ptr %40, i32 0, i32 0, !dbg !2478
  %41 = load ptr, ptr %elts34, align 8, !dbg !2478, !tbaa !2426
  %ip = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2479
  store ptr %41, ptr %ip, align 8, !dbg !2480, !tbaa !2481
  %42 = load ptr, ptr %r.addr, align 8, !dbg !2483, !tbaa !2131
  %request = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 8, !dbg !2484
  store ptr %42, ptr %request, align 8, !dbg !2485, !tbaa !2486
  %flushed = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 6, !dbg !2487
  %bf.load = load i8, ptr %flushed, align 8, !dbg !2488
  %bf.clear = and i8 %bf.load, -2, !dbg !2488
  %bf.set = or i8 %bf.clear, 1, !dbg !2488
  store i8 %bf.set, ptr %flushed, align 8, !dbg !2488
  store i64 1, ptr %len, align 8, !dbg !2489, !tbaa !2416
  br label %while.cond, !dbg !2490

while.cond:                                       ; preds = %while.body, %if.else
  %ip35 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2491
  %43 = load ptr, ptr %ip35, align 8, !dbg !2491, !tbaa !2481
  %44 = load i64, ptr %43, align 8, !dbg !2492, !tbaa !2416
  %tobool36 = icmp ne i64 %44, 0, !dbg !2490
  br i1 %tobool36, label %while.body, label %while.end, !dbg !2490

while.body:                                       ; preds = %while.cond
  %ip37 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2493
  %45 = load ptr, ptr %ip37, align 8, !dbg !2493, !tbaa !2481
  %46 = load ptr, ptr %45, align 8, !dbg !2495, !tbaa !2131
  store ptr %46, ptr %lcode, align 8, !dbg !2496, !tbaa !2131
  %47 = load ptr, ptr %lcode, align 8, !dbg !2497, !tbaa !2131
  %call38 = call i64 %47(ptr noundef %e), !dbg !2497
  %48 = load i64, ptr %len, align 8, !dbg !2498, !tbaa !2416
  %add = add i64 %48, %call38, !dbg !2498
  store i64 %add, ptr %len, align 8, !dbg !2498, !tbaa !2416
  br label %while.cond, !dbg !2490, !llvm.loop !2499

while.end:                                        ; preds = %while.cond
  %49 = load i64, ptr %len, align 8, !dbg !2503, !tbaa !2416
  %add39 = add i64 %49, 16, !dbg !2504
  store i64 %add39, ptr %reserve, align 8, !dbg !2505, !tbaa !2416
  br label %if.end40

if.end40:                                         ; preds = %while.end, %if.end28
  %50 = load i64, ptr %reserve, align 8, !dbg !2506, !tbaa !2416
  %51 = load i64, ptr %allocated, align 8, !dbg !2508, !tbaa !2416
  %cmp41 = icmp ugt i64 %50, %51, !dbg !2509
  br i1 %cmp41, label %if.then43, label %if.end51, !dbg !2510

if.then43:                                        ; preds = %if.end40
  %52 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !2131
  %53 = load i64, ptr %reserve, align 8, !dbg !2513, !tbaa !2416
  %call44 = call ptr @ngx_http_map_uri_to_path(ptr noundef %52, ptr noundef %path, ptr noundef %root, i64 noundef %53), !dbg !2514
  store ptr %call44, ptr %name, align 8, !dbg !2515, !tbaa !2131
  %54 = load ptr, ptr %name, align 8, !dbg !2516, !tbaa !2131
  %cmp45 = icmp eq ptr %54, null, !dbg !2518
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2519

if.then47:                                        ; preds = %if.then43
  store i64 500, ptr %retval, align 8, !dbg !2520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2520

if.end48:                                         ; preds = %if.then43
  %data49 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2522
  %55 = load ptr, ptr %data49, align 8, !dbg !2522, !tbaa !2422
  %len50 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 0, !dbg !2523
  %56 = load i64, ptr %len50, align 8, !dbg !2523, !tbaa !2524
  %add.ptr = getelementptr inbounds i8, ptr %55, i64 %56, !dbg !2525
  %57 = load ptr, ptr %name, align 8, !dbg !2526, !tbaa !2131
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2527
  %sub.ptr.rhs.cast = ptrtoint ptr %57 to i64, !dbg !2527
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2527
  store i64 %sub.ptr.sub, ptr %allocated, align 8, !dbg !2528, !tbaa !2416
  br label %if.end51, !dbg !2529

if.end51:                                         ; preds = %if.end48, %if.end40
  %58 = load ptr, ptr %index, align 8, !dbg !2530, !tbaa !2131
  %59 = load i64, ptr %i, align 8, !dbg !2532, !tbaa !2416
  %arrayidx52 = getelementptr inbounds %struct.ngx_http_index_t, ptr %58, i64 %59, !dbg !2530
  %values = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx52, i32 0, i32 2, !dbg !2533
  %60 = load ptr, ptr %values, align 8, !dbg !2533, !tbaa !2291
  %cmp53 = icmp eq ptr %60, null, !dbg !2534
  br i1 %cmp53, label %if.then55, label %if.else72, !dbg !2535

if.then55:                                        ; preds = %if.end51
  %61 = load ptr, ptr %name, align 8, !dbg !2536, !tbaa !2131
  %62 = load ptr, ptr %index, align 8, !dbg !2536, !tbaa !2131
  %63 = load i64, ptr %i, align 8, !dbg !2536, !tbaa !2416
  %arrayidx56 = getelementptr inbounds %struct.ngx_http_index_t, ptr %62, i64 %63, !dbg !2536
  %name57 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx56, i32 0, i32 0, !dbg !2536
  %data58 = getelementptr inbounds %struct.ngx_str_t, ptr %name57, i32 0, i32 1, !dbg !2536
  %64 = load ptr, ptr %data58, align 8, !dbg !2536, !tbaa !2283
  %65 = load ptr, ptr %index, align 8, !dbg !2536, !tbaa !2131
  %66 = load i64, ptr %i, align 8, !dbg !2536, !tbaa !2416
  %arrayidx59 = getelementptr inbounds %struct.ngx_http_index_t, ptr %65, i64 %66, !dbg !2536
  %name60 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx59, i32 0, i32 0, !dbg !2536
  %len61 = getelementptr inbounds %struct.ngx_str_t, ptr %name60, i32 0, i32 0, !dbg !2536
  %67 = load i64, ptr %len61, align 8, !dbg !2536, !tbaa !2276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %64, i64 %67, i1 false), !dbg !2536
  %68 = load ptr, ptr %name, align 8, !dbg !2538, !tbaa !2131
  %69 = load ptr, ptr %index, align 8, !dbg !2539, !tbaa !2131
  %70 = load i64, ptr %i, align 8, !dbg !2540, !tbaa !2416
  %arrayidx62 = getelementptr inbounds %struct.ngx_http_index_t, ptr %69, i64 %70, !dbg !2539
  %name63 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx62, i32 0, i32 0, !dbg !2541
  %len64 = getelementptr inbounds %struct.ngx_str_t, ptr %name63, i32 0, i32 0, !dbg !2542
  %71 = load i64, ptr %len64, align 8, !dbg !2542, !tbaa !2276
  %add.ptr65 = getelementptr inbounds i8, ptr %68, i64 %71, !dbg !2543
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr65, i64 -1, !dbg !2544
  %data67 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2545
  %72 = load ptr, ptr %data67, align 8, !dbg !2545, !tbaa !2422
  %sub.ptr.lhs.cast68 = ptrtoint ptr %add.ptr66 to i64, !dbg !2546
  %sub.ptr.rhs.cast69 = ptrtoint ptr %72 to i64, !dbg !2546
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69, !dbg !2546
  %len71 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 0, !dbg !2547
  store i64 %sub.ptr.sub70, ptr %len71, align 8, !dbg !2548, !tbaa !2524
  br label %if.end100, !dbg !2549

if.else72:                                        ; preds = %if.end51
  %73 = load ptr, ptr %index, align 8, !dbg !2550, !tbaa !2131
  %74 = load i64, ptr %i, align 8, !dbg !2552, !tbaa !2416
  %arrayidx73 = getelementptr inbounds %struct.ngx_http_index_t, ptr %73, i64 %74, !dbg !2550
  %values74 = getelementptr inbounds %struct.ngx_http_index_t, ptr %arrayidx73, i32 0, i32 2, !dbg !2553
  %75 = load ptr, ptr %values74, align 8, !dbg !2553, !tbaa !2291
  %elts75 = getelementptr inbounds %struct.ngx_array_t, ptr %75, i32 0, i32 0, !dbg !2554
  %76 = load ptr, ptr %elts75, align 8, !dbg !2554, !tbaa !2426
  %ip76 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2555
  store ptr %76, ptr %ip76, align 8, !dbg !2556, !tbaa !2481
  %77 = load ptr, ptr %name, align 8, !dbg !2557, !tbaa !2131
  %pos = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !2558
  store ptr %77, ptr %pos, align 8, !dbg !2559, !tbaa !2560
  br label %while.cond77, !dbg !2561

while.cond77:                                     ; preds = %while.body80, %if.else72
  %ip78 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2562
  %78 = load ptr, ptr %ip78, align 8, !dbg !2562, !tbaa !2481
  %79 = load i64, ptr %78, align 8, !dbg !2563, !tbaa !2416
  %tobool79 = icmp ne i64 %79, 0, !dbg !2561
  br i1 %tobool79, label %while.body80, label %while.end82, !dbg !2561

while.body80:                                     ; preds = %while.cond77
  %ip81 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 0, !dbg !2564
  %80 = load ptr, ptr %ip81, align 8, !dbg !2564, !tbaa !2481
  %81 = load ptr, ptr %80, align 8, !dbg !2566, !tbaa !2131
  store ptr %81, ptr %code, align 8, !dbg !2567, !tbaa !2131
  %82 = load ptr, ptr %code, align 8, !dbg !2568, !tbaa !2131
  call void %82(ptr noundef %e), !dbg !2568
  br label %while.cond77, !dbg !2561, !llvm.loop !2569

while.end82:                                      ; preds = %while.cond77
  %83 = load ptr, ptr %name, align 8, !dbg !2571, !tbaa !2131
  %84 = load i8, ptr %83, align 1, !dbg !2573, !tbaa !2397
  %conv83 = zext i8 %84 to i32, !dbg !2573
  %cmp84 = icmp eq i32 %conv83, 47, !dbg !2574
  br i1 %cmp84, label %if.then86, label %if.end92, !dbg !2575

if.then86:                                        ; preds = %while.end82
  %85 = load i64, ptr %len, align 8, !dbg !2576, !tbaa !2416
  %sub87 = sub i64 %85, 1, !dbg !2578
  %len88 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 0, !dbg !2579
  store i64 %sub87, ptr %len88, align 8, !dbg !2580, !tbaa !2524
  %86 = load ptr, ptr %name, align 8, !dbg !2581, !tbaa !2131
  %data89 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 1, !dbg !2582
  store ptr %86, ptr %data89, align 8, !dbg !2583, !tbaa !2422
  %87 = load ptr, ptr %r.addr, align 8, !dbg !2584, !tbaa !2131
  %88 = load ptr, ptr %r.addr, align 8, !dbg !2585, !tbaa !2131
  %args90 = getelementptr inbounds %struct.ngx_http_request_s, ptr %88, i32 0, i32 23, !dbg !2586
  %call91 = call i64 @ngx_http_internal_redirect(ptr noundef %87, ptr noundef %uri, ptr noundef %args90), !dbg !2587
  store i64 %call91, ptr %retval, align 8, !dbg !2588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2588

if.end92:                                         ; preds = %while.end82
  %pos93 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !2589
  %89 = load ptr, ptr %pos93, align 8, !dbg !2589, !tbaa !2560
  %data94 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2590
  %90 = load ptr, ptr %data94, align 8, !dbg !2590, !tbaa !2422
  %sub.ptr.lhs.cast95 = ptrtoint ptr %89 to i64, !dbg !2591
  %sub.ptr.rhs.cast96 = ptrtoint ptr %90 to i64, !dbg !2591
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96, !dbg !2591
  %len98 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 0, !dbg !2592
  store i64 %sub.ptr.sub97, ptr %len98, align 8, !dbg !2593, !tbaa !2524
  %pos99 = getelementptr inbounds %struct.ngx_http_script_engine_t, ptr %e, i32 0, i32 1, !dbg !2594
  %91 = load ptr, ptr %pos99, align 8, !dbg !2594, !tbaa !2560
  store i8 0, ptr %91, align 1, !dbg !2595, !tbaa !2397
  br label %if.end100

if.end100:                                        ; preds = %if.end92, %if.then55
  call void @llvm.memset.p0.i64(ptr align 8 %of, i8 0, i64 104, i1 false), !dbg !2596
  %92 = load ptr, ptr %clcf, align 8, !dbg !2597, !tbaa !2131
  %read_ahead = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %92, i32 0, i32 25, !dbg !2598
  %93 = load i64, ptr %read_ahead, align 8, !dbg !2598, !tbaa !2599
  %read_ahead101 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 6, !dbg !2601
  store i64 %93, ptr %read_ahead101, align 8, !dbg !2602, !tbaa !2603
  %94 = load ptr, ptr %clcf, align 8, !dbg !2605, !tbaa !2131
  %directio = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %94, i32 0, i32 19, !dbg !2606
  %95 = load i64, ptr %directio, align 8, !dbg !2606, !tbaa !2607
  %directio102 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 5, !dbg !2608
  store i64 %95, ptr %directio102, align 8, !dbg !2609, !tbaa !2610
  %96 = load ptr, ptr %clcf, align 8, !dbg !2611, !tbaa !2131
  %open_file_cache_valid = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %96, i32 0, i32 74, !dbg !2612
  %97 = load i64, ptr %open_file_cache_valid, align 8, !dbg !2612, !tbaa !2613
  %valid = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 9, !dbg !2614
  store i64 %97, ptr %valid, align 8, !dbg !2615, !tbaa !2616
  %98 = load ptr, ptr %clcf, align 8, !dbg !2617, !tbaa !2131
  %open_file_cache_min_uses = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %98, i32 0, i32 75, !dbg !2618
  %99 = load i64, ptr %open_file_cache_min_uses, align 8, !dbg !2618, !tbaa !2619
  %min_uses = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 10, !dbg !2620
  store i64 %99, ptr %min_uses, align 8, !dbg !2621, !tbaa !2622
  %test_only = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2623
  %bf.load103 = load i16, ptr %test_only, align 8, !dbg !2624
  %bf.clear104 = and i16 %bf.load103, -9, !dbg !2624
  %bf.set105 = or i16 %bf.clear104, 8, !dbg !2624
  store i16 %bf.set105, ptr %test_only, align 8, !dbg !2624
  %100 = load ptr, ptr %clcf, align 8, !dbg !2625, !tbaa !2131
  %open_file_cache_errors = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %100, i32 0, i32 76, !dbg !2626
  %101 = load i64, ptr %open_file_cache_errors, align 8, !dbg !2626, !tbaa !2627
  %conv106 = trunc i64 %101 to i32, !dbg !2625
  %errors = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2628
  %102 = trunc i32 %conv106 to i16, !dbg !2629
  %bf.load107 = load i16, ptr %errors, align 8, !dbg !2629
  %bf.value = and i16 %102, 1, !dbg !2629
  %bf.shl = shl i16 %bf.value, 5, !dbg !2629
  %bf.clear108 = and i16 %bf.load107, -33, !dbg !2629
  %bf.set109 = or i16 %bf.clear108, %bf.shl, !dbg !2629
  store i16 %bf.set109, ptr %errors, align 8, !dbg !2629
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !2629
  %103 = load ptr, ptr %clcf, align 8, !dbg !2630, !tbaa !2131
  %open_file_cache_events = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %103, i32 0, i32 77, !dbg !2631
  %104 = load i64, ptr %open_file_cache_events, align 8, !dbg !2631, !tbaa !2632
  %conv110 = trunc i64 %104 to i32, !dbg !2630
  %events = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2633
  %105 = trunc i32 %conv110 to i16, !dbg !2634
  %bf.load111 = load i16, ptr %events, align 8, !dbg !2634
  %bf.value112 = and i16 %105, 1, !dbg !2634
  %bf.shl113 = shl i16 %bf.value112, 6, !dbg !2634
  %bf.clear114 = and i16 %bf.load111, -65, !dbg !2634
  %bf.set115 = or i16 %bf.clear114, %bf.shl113, !dbg !2634
  store i16 %bf.set115, ptr %events, align 8, !dbg !2634
  %bf.result.cast116 = zext i16 %bf.value112 to i32, !dbg !2634
  %106 = load ptr, ptr %r.addr, align 8, !dbg !2635, !tbaa !2131
  %107 = load ptr, ptr %clcf, align 8, !dbg !2637, !tbaa !2131
  %call117 = call i64 @ngx_http_set_disable_symlinks(ptr noundef %106, ptr noundef %107, ptr noundef %path, ptr noundef %of), !dbg !2638
  %cmp118 = icmp ne i64 %call117, 0, !dbg !2639
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !2640

if.then120:                                       ; preds = %if.end100
  store i64 500, ptr %retval, align 8, !dbg !2641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2641

if.end121:                                        ; preds = %if.end100
  %108 = load ptr, ptr %clcf, align 8, !dbg !2643, !tbaa !2131
  %open_file_cache = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %108, i32 0, i32 73, !dbg !2645
  %109 = load ptr, ptr %open_file_cache, align 8, !dbg !2645, !tbaa !2646
  %110 = load ptr, ptr %r.addr, align 8, !dbg !2647, !tbaa !2131
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %110, i32 0, i32 11, !dbg !2648
  %111 = load ptr, ptr %pool, align 8, !dbg !2648, !tbaa !2649
  %call122 = call i64 @ngx_open_cached_file(ptr noundef %109, ptr noundef %path, ptr noundef %of, ptr noundef %111), !dbg !2650
  %cmp123 = icmp ne i64 %call122, 0, !dbg !2651
  br i1 %cmp123, label %if.then125, label %if.end177, !dbg !2652

if.then125:                                       ; preds = %if.end121
  %err = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2653
  %112 = load i32, ptr %err, align 8, !dbg !2653, !tbaa !2656
  %cmp126 = icmp eq i32 %112, 0, !dbg !2657
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !2658

if.then128:                                       ; preds = %if.then125
  store i64 500, ptr %retval, align 8, !dbg !2659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2659

if.end129:                                        ; preds = %if.then125
  %err130 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2661
  %113 = load i32, ptr %err130, align 8, !dbg !2661, !tbaa !2656
  %cmp131 = icmp eq i32 %113, 31, !dbg !2663
  br i1 %cmp131, label %if.then136, label %lor.lhs.false, !dbg !2664

lor.lhs.false:                                    ; preds = %if.end129
  %err133 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2665
  %114 = load i32, ptr %err133, align 8, !dbg !2665, !tbaa !2656
  %cmp134 = icmp eq i32 %114, 40, !dbg !2666
  br i1 %cmp134, label %if.then136, label %if.end137, !dbg !2667

if.then136:                                       ; preds = %lor.lhs.false, %if.end129
  store i64 403, ptr %retval, align 8, !dbg !2668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2668

if.end137:                                        ; preds = %lor.lhs.false
  %err138 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2670
  %115 = load i32, ptr %err138, align 8, !dbg !2670, !tbaa !2656
  %cmp139 = icmp eq i32 %115, 20, !dbg !2672
  br i1 %cmp139, label %if.then149, label %lor.lhs.false141, !dbg !2673

lor.lhs.false141:                                 ; preds = %if.end137
  %err142 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2674
  %116 = load i32, ptr %err142, align 8, !dbg !2674, !tbaa !2656
  %cmp143 = icmp eq i32 %116, 36, !dbg !2675
  br i1 %cmp143, label %if.then149, label %lor.lhs.false145, !dbg !2676

lor.lhs.false145:                                 ; preds = %lor.lhs.false141
  %err146 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2677
  %117 = load i32, ptr %err146, align 8, !dbg !2677, !tbaa !2656
  %cmp147 = icmp eq i32 %117, 13, !dbg !2678
  br i1 %cmp147, label %if.then149, label %if.end153, !dbg !2679

if.then149:                                       ; preds = %lor.lhs.false145, %lor.lhs.false141, %if.end137
  %118 = load ptr, ptr %r.addr, align 8, !dbg !2680, !tbaa !2131
  %119 = load ptr, ptr %clcf, align 8, !dbg !2682, !tbaa !2131
  %data150 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2683
  %120 = load ptr, ptr %data150, align 8, !dbg !2683, !tbaa !2422
  %err151 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2684
  %121 = load i32, ptr %err151, align 8, !dbg !2684, !tbaa !2656
  %call152 = call i64 @ngx_http_index_error(ptr noundef %118, ptr noundef %119, ptr noundef %120, i32 noundef %121), !dbg !2685
  store i64 %call152, ptr %retval, align 8, !dbg !2686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2686

if.end153:                                        ; preds = %lor.lhs.false145
  %122 = load i64, ptr %dir_tested, align 8, !dbg !2687, !tbaa !2416
  %tobool154 = icmp ne i64 %122, 0, !dbg !2687
  br i1 %tobool154, label %if.end163, label %if.then155, !dbg !2689

if.then155:                                       ; preds = %if.end153
  %123 = load ptr, ptr %r.addr, align 8, !dbg !2690, !tbaa !2131
  %124 = load ptr, ptr %clcf, align 8, !dbg !2692, !tbaa !2131
  %data156 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2693
  %125 = load ptr, ptr %data156, align 8, !dbg !2693, !tbaa !2422
  %126 = load ptr, ptr %name, align 8, !dbg !2694, !tbaa !2131
  %add.ptr157 = getelementptr inbounds i8, ptr %126, i64 -1, !dbg !2695
  %call158 = call i64 @ngx_http_index_test_dir(ptr noundef %123, ptr noundef %124, ptr noundef %125, ptr noundef %add.ptr157), !dbg !2696
  store i64 %call158, ptr %rc, align 8, !dbg !2697, !tbaa !2416
  %127 = load i64, ptr %rc, align 8, !dbg !2698, !tbaa !2416
  %cmp159 = icmp ne i64 %127, 0, !dbg !2700
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !2701

if.then161:                                       ; preds = %if.then155
  %128 = load i64, ptr %rc, align 8, !dbg !2702, !tbaa !2416
  store i64 %128, ptr %retval, align 8, !dbg !2704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2704

if.end162:                                        ; preds = %if.then155
  store i64 1, ptr %dir_tested, align 8, !dbg !2705, !tbaa !2416
  br label %if.end163, !dbg !2706

if.end163:                                        ; preds = %if.end162, %if.end153
  %err164 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2707
  %129 = load i32, ptr %err164, align 8, !dbg !2707, !tbaa !2656
  %cmp165 = icmp eq i32 %129, 2, !dbg !2709
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !2710

if.then167:                                       ; preds = %if.end163
  br label %for.inc, !dbg !2711

if.end168:                                        ; preds = %if.end163
  %130 = load ptr, ptr %r.addr, align 8, !dbg !2713, !tbaa !2131
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %130, i32 0, i32 1, !dbg !2713
  %131 = load ptr, ptr %connection, align 8, !dbg !2713, !tbaa !2715
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %131, i32 0, i32 10, !dbg !2713
  %132 = load ptr, ptr %log, align 8, !dbg !2713, !tbaa !2716
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %132, i32 0, i32 0, !dbg !2713
  %133 = load i64, ptr %log_level, align 8, !dbg !2713, !tbaa !2719
  %cmp169 = icmp uge i64 %133, 3, !dbg !2713
  br i1 %cmp169, label %if.then171, label %if.end176, !dbg !2721

if.then171:                                       ; preds = %if.end168
  %134 = load ptr, ptr %r.addr, align 8, !dbg !2713, !tbaa !2131
  %connection172 = getelementptr inbounds %struct.ngx_http_request_s, ptr %134, i32 0, i32 1, !dbg !2713
  %135 = load ptr, ptr %connection172, align 8, !dbg !2713, !tbaa !2715
  %log173 = getelementptr inbounds %struct.ngx_connection_s, ptr %135, i32 0, i32 10, !dbg !2713
  %136 = load ptr, ptr %log173, align 8, !dbg !2713, !tbaa !2716
  %err174 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2713
  %137 = load i32, ptr %err174, align 8, !dbg !2713, !tbaa !2656
  %failed = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 8, !dbg !2713
  %138 = load ptr, ptr %failed, align 8, !dbg !2713, !tbaa !2722
  %data175 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2713
  %139 = load ptr, ptr %data175, align 8, !dbg !2713, !tbaa !2422
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %136, i32 noundef %137, ptr noundef @.str.1, ptr noundef %138, ptr noundef %139), !dbg !2713
  br label %if.end176, !dbg !2713

if.end176:                                        ; preds = %if.then171, %if.end168
  store i64 500, ptr %retval, align 8, !dbg !2723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2723

if.end177:                                        ; preds = %if.end121
  %140 = load ptr, ptr %r.addr, align 8, !dbg !2724, !tbaa !2131
  %uri178 = getelementptr inbounds %struct.ngx_http_request_s, ptr %140, i32 0, i32 22, !dbg !2725
  %len179 = getelementptr inbounds %struct.ngx_str_t, ptr %uri178, i32 0, i32 0, !dbg !2726
  %141 = load i64, ptr %len179, align 8, !dbg !2726, !tbaa !2395
  %142 = load i64, ptr %len, align 8, !dbg !2727, !tbaa !2416
  %add180 = add i64 %141, %142, !dbg !2728
  %sub181 = sub i64 %add180, 1, !dbg !2729
  %len182 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 0, !dbg !2730
  store i64 %sub181, ptr %len182, align 8, !dbg !2731, !tbaa !2524
  %143 = load ptr, ptr %clcf, align 8, !dbg !2732, !tbaa !2131
  %alias = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %143, i32 0, i32 10, !dbg !2734
  %144 = load i64, ptr %alias, align 8, !dbg !2734, !tbaa !2735
  %tobool183 = icmp ne i64 %144, 0, !dbg !2732
  br i1 %tobool183, label %if.else188, label %if.then184, !dbg !2736

if.then184:                                       ; preds = %if.end177
  %data185 = getelementptr inbounds %struct.ngx_str_t, ptr %path, i32 0, i32 1, !dbg !2737
  %145 = load ptr, ptr %data185, align 8, !dbg !2737, !tbaa !2422
  %146 = load i64, ptr %root, align 8, !dbg !2739, !tbaa !2416
  %add.ptr186 = getelementptr inbounds i8, ptr %145, i64 %146, !dbg !2740
  %data187 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 1, !dbg !2741
  store ptr %add.ptr186, ptr %data187, align 8, !dbg !2742, !tbaa !2422
  br label %if.end207, !dbg !2743

if.else188:                                       ; preds = %if.end177
  %147 = load ptr, ptr %r.addr, align 8, !dbg !2744, !tbaa !2131
  %pool189 = getelementptr inbounds %struct.ngx_http_request_s, ptr %147, i32 0, i32 11, !dbg !2746
  %148 = load ptr, ptr %pool189, align 8, !dbg !2746, !tbaa !2649
  %len190 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 0, !dbg !2747
  %149 = load i64, ptr %len190, align 8, !dbg !2747, !tbaa !2524
  %call191 = call ptr @ngx_pnalloc(ptr noundef %148, i64 noundef %149), !dbg !2748
  %data192 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 1, !dbg !2749
  store ptr %call191, ptr %data192, align 8, !dbg !2750, !tbaa !2422
  %data193 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 1, !dbg !2751
  %150 = load ptr, ptr %data193, align 8, !dbg !2751, !tbaa !2422
  %cmp194 = icmp eq ptr %150, null, !dbg !2753
  br i1 %cmp194, label %if.then196, label %if.end197, !dbg !2754

if.then196:                                       ; preds = %if.else188
  store i64 500, ptr %retval, align 8, !dbg !2755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2755

if.end197:                                        ; preds = %if.else188
  %data198 = getelementptr inbounds %struct.ngx_str_t, ptr %uri, i32 0, i32 1, !dbg !2757
  %151 = load ptr, ptr %data198, align 8, !dbg !2757, !tbaa !2422
  %152 = load ptr, ptr %r.addr, align 8, !dbg !2757, !tbaa !2131
  %uri199 = getelementptr inbounds %struct.ngx_http_request_s, ptr %152, i32 0, i32 22, !dbg !2757
  %data200 = getelementptr inbounds %struct.ngx_str_t, ptr %uri199, i32 0, i32 1, !dbg !2757
  %153 = load ptr, ptr %data200, align 8, !dbg !2757, !tbaa !2385
  %154 = load ptr, ptr %r.addr, align 8, !dbg !2757, !tbaa !2131
  %uri201 = getelementptr inbounds %struct.ngx_http_request_s, ptr %154, i32 0, i32 22, !dbg !2757
  %len202 = getelementptr inbounds %struct.ngx_str_t, ptr %uri201, i32 0, i32 0, !dbg !2757
  %155 = load i64, ptr %len202, align 8, !dbg !2757, !tbaa !2395
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %153, i64 %155, i1 false), !dbg !2757
  %156 = load ptr, ptr %r.addr, align 8, !dbg !2757, !tbaa !2131
  %uri203 = getelementptr inbounds %struct.ngx_http_request_s, ptr %156, i32 0, i32 22, !dbg !2757
  %len204 = getelementptr inbounds %struct.ngx_str_t, ptr %uri203, i32 0, i32 0, !dbg !2757
  %157 = load i64, ptr %len204, align 8, !dbg !2757, !tbaa !2395
  %add.ptr205 = getelementptr inbounds i8, ptr %151, i64 %157, !dbg !2757
  store ptr %add.ptr205, ptr %p, align 8, !dbg !2758, !tbaa !2131
  %158 = load ptr, ptr %p, align 8, !dbg !2759, !tbaa !2131
  %159 = load ptr, ptr %name, align 8, !dbg !2759, !tbaa !2131
  %160 = load i64, ptr %len, align 8, !dbg !2759, !tbaa !2416
  %sub206 = sub i64 %160, 1, !dbg !2759
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %158, ptr align 1 %159, i64 %sub206, i1 false), !dbg !2759
  br label %if.end207

if.end207:                                        ; preds = %if.end197, %if.then184
  %161 = load ptr, ptr %r.addr, align 8, !dbg !2760, !tbaa !2131
  %162 = load ptr, ptr %r.addr, align 8, !dbg !2761, !tbaa !2131
  %args208 = getelementptr inbounds %struct.ngx_http_request_s, ptr %162, i32 0, i32 23, !dbg !2762
  %call209 = call i64 @ngx_http_internal_redirect(ptr noundef %161, ptr noundef %uri, ptr noundef %args208), !dbg !2763
  store i64 %call209, ptr %retval, align 8, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

for.inc:                                          ; preds = %if.then167
  %163 = load i64, ptr %i, align 8, !dbg !2765, !tbaa !2416
  %inc = add i64 %163, 1, !dbg !2765
  store i64 %inc, ptr %i, align 8, !dbg !2765, !tbaa !2416
  br label %for.cond, !dbg !2766, !llvm.loop !2767

for.end:                                          ; preds = %for.cond
  store i64 -5, ptr %retval, align 8, !dbg !2769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2769

cleanup:                                          ; preds = %for.end, %if.end207, %if.then196, %if.end176, %if.then161, %if.then149, %if.then136, %if.then128, %if.then120, %if.then86, %if.then47, %if.then25, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcode) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %ilcf) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %clcf) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 88, ptr %e) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 104, ptr %of) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir_tested) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 16, ptr %uri) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocated) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %reserve) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !2770
  %164 = load i64, ptr %retval, align 8, !dbg !2770
  ret i64 %164, !dbg !2770
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2771 i64 @ngx_http_internal_redirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !2774 ptr @ngx_http_map_uri_to_path(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !2778 i64 @ngx_http_set_disable_symlinks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2782 i64 @ngx_open_cached_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_index_error(ptr noundef %r, ptr noundef %clcf, ptr noundef %file, i32 noundef %err) #0 !dbg !2785 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %clcf.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2789, metadata !DIExpression()), !dbg !2793
  store ptr %clcf, ptr %clcf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %clcf.addr, metadata !2790, metadata !DIExpression()), !dbg !2794
  store ptr %file, ptr %file.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2791, metadata !DIExpression()), !dbg !2795
  store i32 %err, ptr %err.addr, align 4, !tbaa !2796
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2792, metadata !DIExpression()), !dbg !2797
  %0 = load i32, ptr %err.addr, align 4, !dbg !2798, !tbaa !2796
  %cmp = icmp eq i32 %0, 13, !dbg !2800
  br i1 %cmp, label %if.then, label %if.end5, !dbg !2801

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2802, !tbaa !2131
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 1, !dbg !2802
  %2 = load ptr, ptr %connection, align 8, !dbg !2802, !tbaa !2715
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %2, i32 0, i32 10, !dbg !2802
  %3 = load ptr, ptr %log, align 8, !dbg !2802, !tbaa !2716
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %3, i32 0, i32 0, !dbg !2802
  %4 = load i64, ptr %log_level, align 8, !dbg !2802, !tbaa !2719
  %cmp1 = icmp uge i64 %4, 4, !dbg !2802
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2805

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2802, !tbaa !2131
  %connection3 = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 1, !dbg !2802
  %6 = load ptr, ptr %connection3, align 8, !dbg !2802, !tbaa !2715
  %log4 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 10, !dbg !2802
  %7 = load ptr, ptr %log4, align 8, !dbg !2802, !tbaa !2716
  %8 = load i32, ptr %err.addr, align 4, !dbg !2802, !tbaa !2796
  %9 = load ptr, ptr %file.addr, align 8, !dbg !2802, !tbaa !2131
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %7, i32 noundef %8, ptr noundef @.str.2, ptr noundef %9), !dbg !2802
  br label %if.end, !dbg !2802

if.end:                                           ; preds = %if.then2, %if.then
  store i64 403, ptr %retval, align 8, !dbg !2806
  br label %return, !dbg !2806

if.end5:                                          ; preds = %entry
  %10 = load ptr, ptr %clcf.addr, align 8, !dbg !2807, !tbaa !2131
  %log_not_found = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %10, i32 0, i32 59, !dbg !2809
  %11 = load i64, ptr %log_not_found, align 8, !dbg !2809, !tbaa !2810
  %tobool = icmp ne i64 %11, 0, !dbg !2807
  br i1 %tobool, label %if.then6, label %if.end15, !dbg !2811

if.then6:                                         ; preds = %if.end5
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2812, !tbaa !2131
  %connection7 = getelementptr inbounds %struct.ngx_http_request_s, ptr %12, i32 0, i32 1, !dbg !2812
  %13 = load ptr, ptr %connection7, align 8, !dbg !2812, !tbaa !2715
  %log8 = getelementptr inbounds %struct.ngx_connection_s, ptr %13, i32 0, i32 10, !dbg !2812
  %14 = load ptr, ptr %log8, align 8, !dbg !2812, !tbaa !2716
  %log_level9 = getelementptr inbounds %struct.ngx_log_s, ptr %14, i32 0, i32 0, !dbg !2812
  %15 = load i64, ptr %log_level9, align 8, !dbg !2812, !tbaa !2719
  %cmp10 = icmp uge i64 %15, 4, !dbg !2812
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !2815

if.then11:                                        ; preds = %if.then6
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2812, !tbaa !2131
  %connection12 = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 1, !dbg !2812
  %17 = load ptr, ptr %connection12, align 8, !dbg !2812, !tbaa !2715
  %log13 = getelementptr inbounds %struct.ngx_connection_s, ptr %17, i32 0, i32 10, !dbg !2812
  %18 = load ptr, ptr %log13, align 8, !dbg !2812, !tbaa !2716
  %19 = load i32, ptr %err.addr, align 4, !dbg !2812, !tbaa !2796
  %20 = load ptr, ptr %file.addr, align 8, !dbg !2812, !tbaa !2131
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %18, i32 noundef %19, ptr noundef @.str.3, ptr noundef %20), !dbg !2812
  br label %if.end14, !dbg !2812

if.end14:                                         ; preds = %if.then11, %if.then6
  br label %if.end15, !dbg !2816

if.end15:                                         ; preds = %if.end14, %if.end5
  store i64 404, ptr %retval, align 8, !dbg !2817
  br label %return, !dbg !2817

return:                                           ; preds = %if.end15, %if.end
  %21 = load i64, ptr %retval, align 8, !dbg !2818
  ret i64 %21, !dbg !2818
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_index_test_dir(ptr noundef %r, ptr noundef %clcf, ptr noundef %path, ptr noundef %last) #0 !dbg !2819 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %clcf.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %dir = alloca %struct.ngx_str_t, align 8
  %of = alloca %struct.ngx_open_file_info_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2823, metadata !DIExpression()), !dbg !2830
  store ptr %clcf, ptr %clcf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %clcf.addr, metadata !2824, metadata !DIExpression()), !dbg !2831
  store ptr %path, ptr %path.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !2825, metadata !DIExpression()), !dbg !2832
  store ptr %last, ptr %last.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !2826, metadata !DIExpression()), !dbg !2833
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6, !dbg !2834
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2827, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 16, ptr %dir) #6, !dbg !2836
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !2828, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 104, ptr %of) #6, !dbg !2838
  tail call void @llvm.dbg.declare(metadata ptr %of, metadata !2829, metadata !DIExpression()), !dbg !2839
  %0 = load ptr, ptr %last.addr, align 8, !dbg !2840, !tbaa !2131
  %1 = load i8, ptr %0, align 1, !dbg !2841, !tbaa !2397
  store i8 %1, ptr %c, align 1, !dbg !2842, !tbaa !2397
  %2 = load i8, ptr %c, align 1, !dbg !2843, !tbaa !2397
  %conv = zext i8 %2 to i32, !dbg !2843
  %cmp = icmp ne i32 %conv, 47, !dbg !2845
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2846

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !dbg !2847, !tbaa !2131
  %4 = load ptr, ptr %last.addr, align 8, !dbg !2848, !tbaa !2131
  %cmp2 = icmp eq ptr %3, %4, !dbg !2849
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2850

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %last.addr, align 8, !dbg !2851, !tbaa !2131
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !2851
  store ptr %incdec.ptr, ptr %last.addr, align 8, !dbg !2851, !tbaa !2131
  %6 = load i8, ptr %incdec.ptr, align 1, !dbg !2853, !tbaa !2397
  store i8 %6, ptr %c, align 1, !dbg !2854, !tbaa !2397
  br label %if.end, !dbg !2855

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load ptr, ptr %last.addr, align 8, !dbg !2856, !tbaa !2131
  store i8 0, ptr %7, align 1, !dbg !2857, !tbaa !2397
  %8 = load ptr, ptr %last.addr, align 8, !dbg !2858, !tbaa !2131
  %9 = load ptr, ptr %path.addr, align 8, !dbg !2859, !tbaa !2131
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !2860
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !2860
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2860
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %dir, i32 0, i32 0, !dbg !2861
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !2862, !tbaa !2524
  %10 = load ptr, ptr %path.addr, align 8, !dbg !2863, !tbaa !2131
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %dir, i32 0, i32 1, !dbg !2864
  store ptr %10, ptr %data, align 8, !dbg !2865, !tbaa !2422
  call void @llvm.memset.p0.i64(ptr align 8 %of, i8 0, i64 104, i1 false), !dbg !2866
  %test_dir = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2867
  %bf.load = load i16, ptr %test_dir, align 8, !dbg !2868
  %bf.clear = and i16 %bf.load, -5, !dbg !2868
  %bf.set = or i16 %bf.clear, 4, !dbg !2868
  store i16 %bf.set, ptr %test_dir, align 8, !dbg !2868
  %test_only = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2869
  %bf.load4 = load i16, ptr %test_only, align 8, !dbg !2870
  %bf.clear5 = and i16 %bf.load4, -9, !dbg !2870
  %bf.set6 = or i16 %bf.clear5, 8, !dbg !2870
  store i16 %bf.set6, ptr %test_only, align 8, !dbg !2870
  %11 = load ptr, ptr %clcf.addr, align 8, !dbg !2871, !tbaa !2131
  %open_file_cache_valid = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %11, i32 0, i32 74, !dbg !2872
  %12 = load i64, ptr %open_file_cache_valid, align 8, !dbg !2872, !tbaa !2613
  %valid = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 9, !dbg !2873
  store i64 %12, ptr %valid, align 8, !dbg !2874, !tbaa !2616
  %13 = load ptr, ptr %clcf.addr, align 8, !dbg !2875, !tbaa !2131
  %open_file_cache_errors = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %13, i32 0, i32 76, !dbg !2876
  %14 = load i64, ptr %open_file_cache_errors, align 8, !dbg !2876, !tbaa !2627
  %conv7 = trunc i64 %14 to i32, !dbg !2875
  %errors = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2877
  %15 = trunc i32 %conv7 to i16, !dbg !2878
  %bf.load8 = load i16, ptr %errors, align 8, !dbg !2878
  %bf.value = and i16 %15, 1, !dbg !2878
  %bf.shl = shl i16 %bf.value, 5, !dbg !2878
  %bf.clear9 = and i16 %bf.load8, -33, !dbg !2878
  %bf.set10 = or i16 %bf.clear9, %bf.shl, !dbg !2878
  store i16 %bf.set10, ptr %errors, align 8, !dbg !2878
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !2878
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2879, !tbaa !2131
  %17 = load ptr, ptr %clcf.addr, align 8, !dbg !2881, !tbaa !2131
  %call = call i64 @ngx_http_set_disable_symlinks(ptr noundef %16, ptr noundef %17, ptr noundef %dir, ptr noundef %of), !dbg !2882
  %cmp11 = icmp ne i64 %call, 0, !dbg !2883
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2884

if.then13:                                        ; preds = %if.end
  store i64 500, ptr %retval, align 8, !dbg !2885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2885

if.end14:                                         ; preds = %if.end
  %18 = load ptr, ptr %clcf.addr, align 8, !dbg !2887, !tbaa !2131
  %open_file_cache = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %18, i32 0, i32 73, !dbg !2889
  %19 = load ptr, ptr %open_file_cache, align 8, !dbg !2889, !tbaa !2646
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2890, !tbaa !2131
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 11, !dbg !2891
  %21 = load ptr, ptr %pool, align 8, !dbg !2891, !tbaa !2649
  %call15 = call i64 @ngx_open_cached_file(ptr noundef %19, ptr noundef %dir, ptr noundef %of, ptr noundef %21), !dbg !2892
  %cmp16 = icmp ne i64 %call15, 0, !dbg !2893
  br i1 %cmp16, label %if.then18, label %if.end50, !dbg !2894

if.then18:                                        ; preds = %if.end14
  %err = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2895
  %22 = load i32, ptr %err, align 8, !dbg !2895, !tbaa !2656
  %tobool = icmp ne i32 %22, 0, !dbg !2898
  br i1 %tobool, label %if.then19, label %if.end49, !dbg !2899

if.then19:                                        ; preds = %if.then18
  %err20 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2900
  %23 = load i32, ptr %err20, align 8, !dbg !2900, !tbaa !2656
  %cmp21 = icmp eq i32 %23, 31, !dbg !2903
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23, !dbg !2904

lor.lhs.false23:                                  ; preds = %if.then19
  %err24 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2905
  %24 = load i32, ptr %err24, align 8, !dbg !2905, !tbaa !2656
  %cmp25 = icmp eq i32 %24, 40, !dbg !2906
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !2907

if.then27:                                        ; preds = %lor.lhs.false23, %if.then19
  store i64 403, ptr %retval, align 8, !dbg !2908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2908

if.end28:                                         ; preds = %lor.lhs.false23
  %err29 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2910
  %25 = load i32, ptr %err29, align 8, !dbg !2910, !tbaa !2656
  %cmp30 = icmp eq i32 %25, 2, !dbg !2912
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !2913

if.then32:                                        ; preds = %if.end28
  %26 = load i8, ptr %c, align 1, !dbg !2914, !tbaa !2397
  %27 = load ptr, ptr %last.addr, align 8, !dbg !2916, !tbaa !2131
  store i8 %26, ptr %27, align 1, !dbg !2917, !tbaa !2397
  %28 = load ptr, ptr %r.addr, align 8, !dbg !2918, !tbaa !2131
  %29 = load ptr, ptr %clcf.addr, align 8, !dbg !2919, !tbaa !2131
  %data33 = getelementptr inbounds %struct.ngx_str_t, ptr %dir, i32 0, i32 1, !dbg !2920
  %30 = load ptr, ptr %data33, align 8, !dbg !2920, !tbaa !2422
  %call34 = call i64 @ngx_http_index_error(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef 2), !dbg !2921
  store i64 %call34, ptr %retval, align 8, !dbg !2922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2922

if.end35:                                         ; preds = %if.end28
  %err36 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2923
  %31 = load i32, ptr %err36, align 8, !dbg !2923, !tbaa !2656
  %cmp37 = icmp eq i32 %31, 13, !dbg !2925
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !2926

if.then39:                                        ; preds = %if.end35
  %32 = load i8, ptr %c, align 1, !dbg !2927, !tbaa !2397
  %33 = load ptr, ptr %last.addr, align 8, !dbg !2929, !tbaa !2131
  store i8 %32, ptr %33, align 1, !dbg !2930, !tbaa !2397
  store i64 0, ptr %retval, align 8, !dbg !2931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2931

if.end40:                                         ; preds = %if.end35
  %34 = load ptr, ptr %r.addr, align 8, !dbg !2932, !tbaa !2131
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %34, i32 0, i32 1, !dbg !2932
  %35 = load ptr, ptr %connection, align 8, !dbg !2932, !tbaa !2715
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %35, i32 0, i32 10, !dbg !2932
  %36 = load ptr, ptr %log, align 8, !dbg !2932, !tbaa !2716
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %36, i32 0, i32 0, !dbg !2932
  %37 = load i64, ptr %log_level, align 8, !dbg !2932, !tbaa !2719
  %cmp41 = icmp uge i64 %37, 3, !dbg !2932
  br i1 %cmp41, label %if.then43, label %if.end48, !dbg !2934

if.then43:                                        ; preds = %if.end40
  %38 = load ptr, ptr %r.addr, align 8, !dbg !2932, !tbaa !2131
  %connection44 = getelementptr inbounds %struct.ngx_http_request_s, ptr %38, i32 0, i32 1, !dbg !2932
  %39 = load ptr, ptr %connection44, align 8, !dbg !2932, !tbaa !2715
  %log45 = getelementptr inbounds %struct.ngx_connection_s, ptr %39, i32 0, i32 10, !dbg !2932
  %40 = load ptr, ptr %log45, align 8, !dbg !2932, !tbaa !2716
  %err46 = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 7, !dbg !2932
  %41 = load i32, ptr %err46, align 8, !dbg !2932, !tbaa !2656
  %failed = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 8, !dbg !2932
  %42 = load ptr, ptr %failed, align 8, !dbg !2932, !tbaa !2722
  %data47 = getelementptr inbounds %struct.ngx_str_t, ptr %dir, i32 0, i32 1, !dbg !2932
  %43 = load ptr, ptr %data47, align 8, !dbg !2932, !tbaa !2422
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %40, i32 noundef %41, ptr noundef @.str.1, ptr noundef %42, ptr noundef %43), !dbg !2932
  br label %if.end48, !dbg !2932

if.end48:                                         ; preds = %if.then43, %if.end40
  br label %if.end49, !dbg !2935

if.end49:                                         ; preds = %if.end48, %if.then18
  store i64 500, ptr %retval, align 8, !dbg !2936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2936

if.end50:                                         ; preds = %if.end14
  %44 = load i8, ptr %c, align 1, !dbg !2937, !tbaa !2397
  %45 = load ptr, ptr %last.addr, align 8, !dbg !2938, !tbaa !2131
  store i8 %44, ptr %45, align 1, !dbg !2939, !tbaa !2397
  %is_dir = getelementptr inbounds %struct.ngx_open_file_info_t, ptr %of, i32 0, i32 12, !dbg !2940
  %bf.load51 = load i16, ptr %is_dir, align 8, !dbg !2940
  %bf.lshr = lshr i16 %bf.load51, 7, !dbg !2940
  %bf.clear52 = and i16 %bf.lshr, 1, !dbg !2940
  %bf.cast = zext i16 %bf.clear52 to i32, !dbg !2940
  %tobool53 = icmp ne i32 %bf.cast, 0, !dbg !2942
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !2943

if.then54:                                        ; preds = %if.end50
  store i64 0, ptr %retval, align 8, !dbg !2944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2944

if.end55:                                         ; preds = %if.end50
  %46 = load ptr, ptr %r.addr, align 8, !dbg !2946, !tbaa !2131
  %connection56 = getelementptr inbounds %struct.ngx_http_request_s, ptr %46, i32 0, i32 1, !dbg !2946
  %47 = load ptr, ptr %connection56, align 8, !dbg !2946, !tbaa !2715
  %log57 = getelementptr inbounds %struct.ngx_connection_s, ptr %47, i32 0, i32 10, !dbg !2946
  %48 = load ptr, ptr %log57, align 8, !dbg !2946, !tbaa !2716
  %log_level58 = getelementptr inbounds %struct.ngx_log_s, ptr %48, i32 0, i32 0, !dbg !2946
  %49 = load i64, ptr %log_level58, align 8, !dbg !2946, !tbaa !2719
  %cmp59 = icmp uge i64 %49, 2, !dbg !2946
  br i1 %cmp59, label %if.then61, label %if.end65, !dbg !2948

if.then61:                                        ; preds = %if.end55
  %50 = load ptr, ptr %r.addr, align 8, !dbg !2946, !tbaa !2131
  %connection62 = getelementptr inbounds %struct.ngx_http_request_s, ptr %50, i32 0, i32 1, !dbg !2946
  %51 = load ptr, ptr %connection62, align 8, !dbg !2946, !tbaa !2715
  %log63 = getelementptr inbounds %struct.ngx_connection_s, ptr %51, i32 0, i32 10, !dbg !2946
  %52 = load ptr, ptr %log63, align 8, !dbg !2946, !tbaa !2716
  %data64 = getelementptr inbounds %struct.ngx_str_t, ptr %dir, i32 0, i32 1, !dbg !2946
  %53 = load ptr, ptr %data64, align 8, !dbg !2946, !tbaa !2422
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %52, i32 noundef 0, ptr noundef @.str.4, ptr noundef %53), !dbg !2946
  br label %if.end65, !dbg !2946

if.end65:                                         ; preds = %if.then61, %if.end55
  store i64 500, ptr %retval, align 8, !dbg !2949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2949

cleanup:                                          ; preds = %if.end65, %if.then54, %if.end49, %if.then39, %if.then32, %if.then27, %if.then13
  call void @llvm.lifetime.end.p0(i64 104, ptr %of) #6, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 16, ptr %dir) #6, !dbg !2950
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6, !dbg !2950
  %54 = load i64, ptr %retval, align 8, !dbg !2950
  ret i64 %54, !dbg !2950
}

declare !dbg !2951 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !2954 ptr @ngx_pnalloc(ptr noundef, i64 noundef) #2

declare !dbg !2957 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

declare !dbg !2958 ptr @ngx_array_create(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_index_set_index(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2961 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %ilcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %index = alloca ptr, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2963, metadata !DIExpression()), !dbg !2994
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2964, metadata !DIExpression()), !dbg !2995
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2131
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2965, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 8, ptr %ilcf) #6, !dbg !2997
  tail call void @llvm.dbg.declare(metadata ptr %ilcf, metadata !2966, metadata !DIExpression()), !dbg !2998
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2999, !tbaa !2131
  store ptr %0, ptr %ilcf, align 8, !dbg !2998, !tbaa !2131
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #6, !dbg !3000
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2967, metadata !DIExpression()), !dbg !3001
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !3002
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2968, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6, !dbg !3002
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2969, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #6, !dbg !3005
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !2970, metadata !DIExpression()), !dbg !3006
  call void @llvm.lifetime.start.p0(i64 88, ptr %sc) #6, !dbg !3007
  tail call void @llvm.dbg.declare(metadata ptr %sc, metadata !2971, metadata !DIExpression()), !dbg !3008
  %1 = load ptr, ptr %ilcf, align 8, !dbg !3009, !tbaa !2131
  %indices = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %1, i32 0, i32 0, !dbg !3011
  %2 = load ptr, ptr %indices, align 8, !dbg !3011, !tbaa !2191
  %cmp = icmp eq ptr %2, null, !dbg !3012
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3013

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !3014, !tbaa !2131
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 3, !dbg !3016
  %4 = load ptr, ptr %pool, align 8, !dbg !3016, !tbaa !2179
  %call = call ptr @ngx_array_create(ptr noundef %4, i64 noundef 2, i64 noundef 32), !dbg !3017
  %5 = load ptr, ptr %ilcf, align 8, !dbg !3018, !tbaa !2131
  %indices1 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %5, i32 0, i32 0, !dbg !3019
  store ptr %call, ptr %indices1, align 8, !dbg !3020, !tbaa !2191
  %6 = load ptr, ptr %ilcf, align 8, !dbg !3021, !tbaa !2131
  %indices2 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !3023
  %7 = load ptr, ptr %indices2, align 8, !dbg !3023, !tbaa !2191
  %cmp3 = icmp eq ptr %7, null, !dbg !3024
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !3025

if.then4:                                         ; preds = %if.then
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3026

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !3028

if.end5:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %cf.addr, align 8, !dbg !3029, !tbaa !2131
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %8, i32 0, i32 1, !dbg !3030
  %9 = load ptr, ptr %args, align 8, !dbg !3030, !tbaa !3031
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %9, i32 0, i32 0, !dbg !3032
  %10 = load ptr, ptr %elts, align 8, !dbg !3032, !tbaa !2426
  store ptr %10, ptr %value, align 8, !dbg !3033, !tbaa !2131
  store i64 1, ptr %i, align 8, !dbg !3034, !tbaa !2416
  br label %for.cond, !dbg !3036

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load i64, ptr %i, align 8, !dbg !3037, !tbaa !2416
  %12 = load ptr, ptr %cf.addr, align 8, !dbg !3039, !tbaa !2131
  %args6 = getelementptr inbounds %struct.ngx_conf_s, ptr %12, i32 0, i32 1, !dbg !3040
  %13 = load ptr, ptr %args6, align 8, !dbg !3040, !tbaa !3031
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %13, i32 0, i32 1, !dbg !3041
  %14 = load i64, ptr %nelts, align 8, !dbg !3041, !tbaa !2437
  %cmp7 = icmp ult i64 %11, %14, !dbg !3042
  br i1 %cmp7, label %for.body, label %for.end, !dbg !3043

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %value, align 8, !dbg !3044, !tbaa !2131
  %16 = load i64, ptr %i, align 8, !dbg !3047, !tbaa !2416
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %15, i64 %16, !dbg !3044
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !3048
  %17 = load ptr, ptr %data, align 8, !dbg !3048, !tbaa !2422
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !3044
  %18 = load i8, ptr %arrayidx8, align 1, !dbg !3044, !tbaa !2397
  %conv = zext i8 %18 to i32, !dbg !3044
  %cmp9 = icmp eq i32 %conv, 47, !dbg !3049
  br i1 %cmp9, label %land.lhs.true, label %if.end16, !dbg !3050

land.lhs.true:                                    ; preds = %for.body
  %19 = load i64, ptr %i, align 8, !dbg !3051, !tbaa !2416
  %20 = load ptr, ptr %cf.addr, align 8, !dbg !3052, !tbaa !2131
  %args11 = getelementptr inbounds %struct.ngx_conf_s, ptr %20, i32 0, i32 1, !dbg !3053
  %21 = load ptr, ptr %args11, align 8, !dbg !3053, !tbaa !3031
  %nelts12 = getelementptr inbounds %struct.ngx_array_t, ptr %21, i32 0, i32 1, !dbg !3054
  %22 = load i64, ptr %nelts12, align 8, !dbg !3054, !tbaa !2437
  %sub = sub i64 %22, 1, !dbg !3055
  %cmp13 = icmp ne i64 %19, %sub, !dbg !3056
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !3057

if.then15:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %cf.addr, align 8, !dbg !3058, !tbaa !2131
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 5, ptr noundef %23, i32 noundef 0, ptr noundef @.str.7), !dbg !3060
  br label %if.end16, !dbg !3061

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %for.body
  %24 = load ptr, ptr %value, align 8, !dbg !3062, !tbaa !2131
  %25 = load i64, ptr %i, align 8, !dbg !3064, !tbaa !2416
  %arrayidx17 = getelementptr inbounds %struct.ngx_str_t, ptr %24, i64 %25, !dbg !3062
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx17, i32 0, i32 0, !dbg !3065
  %26 = load i64, ptr %len, align 8, !dbg !3065, !tbaa !2524
  %cmp18 = icmp eq i64 %26, 0, !dbg !3066
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !3067

if.then20:                                        ; preds = %if.end16
  %27 = load ptr, ptr %cf.addr, align 8, !dbg !3068, !tbaa !2131
  %28 = load ptr, ptr %value, align 8, !dbg !3070, !tbaa !2131
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %28, i64 1, !dbg !3070
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %27, i32 noundef 0, ptr noundef @.str.8, ptr noundef %arrayidx21), !dbg !3071
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3072

if.end22:                                         ; preds = %if.end16
  %29 = load ptr, ptr %ilcf, align 8, !dbg !3073, !tbaa !2131
  %indices23 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %29, i32 0, i32 0, !dbg !3074
  %30 = load ptr, ptr %indices23, align 8, !dbg !3074, !tbaa !2191
  %call24 = call ptr @ngx_array_push(ptr noundef %30), !dbg !3075
  store ptr %call24, ptr %index, align 8, !dbg !3076, !tbaa !2131
  %31 = load ptr, ptr %index, align 8, !dbg !3077, !tbaa !2131
  %cmp25 = icmp eq ptr %31, null, !dbg !3079
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !3080

if.then27:                                        ; preds = %if.end22
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3081

if.end28:                                         ; preds = %if.end22
  %32 = load ptr, ptr %value, align 8, !dbg !3083, !tbaa !2131
  %33 = load i64, ptr %i, align 8, !dbg !3084, !tbaa !2416
  %arrayidx29 = getelementptr inbounds %struct.ngx_str_t, ptr %32, i64 %33, !dbg !3083
  %len30 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx29, i32 0, i32 0, !dbg !3085
  %34 = load i64, ptr %len30, align 8, !dbg !3085, !tbaa !2524
  %35 = load ptr, ptr %index, align 8, !dbg !3086, !tbaa !2131
  %name = getelementptr inbounds %struct.ngx_http_index_t, ptr %35, i32 0, i32 0, !dbg !3087
  %len31 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !3088
  store i64 %34, ptr %len31, align 8, !dbg !3089, !tbaa !2276
  %36 = load ptr, ptr %value, align 8, !dbg !3090, !tbaa !2131
  %37 = load i64, ptr %i, align 8, !dbg !3091, !tbaa !2416
  %arrayidx32 = getelementptr inbounds %struct.ngx_str_t, ptr %36, i64 %37, !dbg !3090
  %data33 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx32, i32 0, i32 1, !dbg !3092
  %38 = load ptr, ptr %data33, align 8, !dbg !3092, !tbaa !2422
  %39 = load ptr, ptr %index, align 8, !dbg !3093, !tbaa !2131
  %name34 = getelementptr inbounds %struct.ngx_http_index_t, ptr %39, i32 0, i32 0, !dbg !3094
  %data35 = getelementptr inbounds %struct.ngx_str_t, ptr %name34, i32 0, i32 1, !dbg !3095
  store ptr %38, ptr %data35, align 8, !dbg !3096, !tbaa !2283
  %40 = load ptr, ptr %index, align 8, !dbg !3097, !tbaa !2131
  %lengths = getelementptr inbounds %struct.ngx_http_index_t, ptr %40, i32 0, i32 1, !dbg !3098
  store ptr null, ptr %lengths, align 8, !dbg !3099, !tbaa !2287
  %41 = load ptr, ptr %index, align 8, !dbg !3100, !tbaa !2131
  %values = getelementptr inbounds %struct.ngx_http_index_t, ptr %41, i32 0, i32 2, !dbg !3101
  store ptr null, ptr %values, align 8, !dbg !3102, !tbaa !2291
  %42 = load ptr, ptr %value, align 8, !dbg !3103, !tbaa !2131
  %43 = load i64, ptr %i, align 8, !dbg !3104, !tbaa !2416
  %arrayidx36 = getelementptr inbounds %struct.ngx_str_t, ptr %42, i64 %43, !dbg !3103
  %call37 = call i64 @ngx_http_script_variables_count(ptr noundef %arrayidx36), !dbg !3105
  store i64 %call37, ptr %n, align 8, !dbg !3106, !tbaa !2416
  %44 = load i64, ptr %n, align 8, !dbg !3107, !tbaa !2416
  %cmp38 = icmp eq i64 %44, 0, !dbg !3109
  br i1 %cmp38, label %if.then40, label %if.end60, !dbg !3110

if.then40:                                        ; preds = %if.end28
  %45 = load ptr, ptr %ilcf, align 8, !dbg !3111, !tbaa !2131
  %max_index_len = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %45, i32 0, i32 1, !dbg !3114
  %46 = load i64, ptr %max_index_len, align 8, !dbg !3114, !tbaa !2196
  %47 = load ptr, ptr %index, align 8, !dbg !3115, !tbaa !2131
  %name41 = getelementptr inbounds %struct.ngx_http_index_t, ptr %47, i32 0, i32 0, !dbg !3116
  %len42 = getelementptr inbounds %struct.ngx_str_t, ptr %name41, i32 0, i32 0, !dbg !3117
  %48 = load i64, ptr %len42, align 8, !dbg !3117, !tbaa !2276
  %cmp43 = icmp ult i64 %46, %48, !dbg !3118
  br i1 %cmp43, label %if.then45, label %if.end49, !dbg !3119

if.then45:                                        ; preds = %if.then40
  %49 = load ptr, ptr %index, align 8, !dbg !3120, !tbaa !2131
  %name46 = getelementptr inbounds %struct.ngx_http_index_t, ptr %49, i32 0, i32 0, !dbg !3122
  %len47 = getelementptr inbounds %struct.ngx_str_t, ptr %name46, i32 0, i32 0, !dbg !3123
  %50 = load i64, ptr %len47, align 8, !dbg !3123, !tbaa !2276
  %51 = load ptr, ptr %ilcf, align 8, !dbg !3124, !tbaa !2131
  %max_index_len48 = getelementptr inbounds %struct.ngx_http_index_loc_conf_t, ptr %51, i32 0, i32 1, !dbg !3125
  store i64 %50, ptr %max_index_len48, align 8, !dbg !3126, !tbaa !2196
  br label %if.end49, !dbg !3127

if.end49:                                         ; preds = %if.then45, %if.then40
  %52 = load ptr, ptr %index, align 8, !dbg !3128, !tbaa !2131
  %name50 = getelementptr inbounds %struct.ngx_http_index_t, ptr %52, i32 0, i32 0, !dbg !3130
  %data51 = getelementptr inbounds %struct.ngx_str_t, ptr %name50, i32 0, i32 1, !dbg !3131
  %53 = load ptr, ptr %data51, align 8, !dbg !3131, !tbaa !2283
  %arrayidx52 = getelementptr inbounds i8, ptr %53, i64 0, !dbg !3128
  %54 = load i8, ptr %arrayidx52, align 1, !dbg !3128, !tbaa !2397
  %conv53 = zext i8 %54 to i32, !dbg !3128
  %cmp54 = icmp eq i32 %conv53, 47, !dbg !3132
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !3133

if.then56:                                        ; preds = %if.end49
  br label %for.inc, !dbg !3134

if.end57:                                         ; preds = %if.end49
  %55 = load ptr, ptr %index, align 8, !dbg !3136, !tbaa !2131
  %name58 = getelementptr inbounds %struct.ngx_http_index_t, ptr %55, i32 0, i32 0, !dbg !3137
  %len59 = getelementptr inbounds %struct.ngx_str_t, ptr %name58, i32 0, i32 0, !dbg !3138
  %56 = load i64, ptr %len59, align 8, !dbg !3139, !tbaa !2276
  %inc = add i64 %56, 1, !dbg !3139
  store i64 %inc, ptr %len59, align 8, !dbg !3139, !tbaa !2276
  br label %for.inc, !dbg !3140

if.end60:                                         ; preds = %if.end28
  call void @llvm.memset.p0.i64(ptr align 8 %sc, i8 0, i64 88, i1 false), !dbg !3141
  %57 = load ptr, ptr %cf.addr, align 8, !dbg !3142, !tbaa !2131
  %cf61 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 0, !dbg !3143
  store ptr %57, ptr %cf61, align 8, !dbg !3144, !tbaa !3145
  %58 = load ptr, ptr %value, align 8, !dbg !3147, !tbaa !2131
  %59 = load i64, ptr %i, align 8, !dbg !3148, !tbaa !2416
  %arrayidx62 = getelementptr inbounds %struct.ngx_str_t, ptr %58, i64 %59, !dbg !3147
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 1, !dbg !3149
  store ptr %arrayidx62, ptr %source, align 8, !dbg !3150, !tbaa !3151
  %60 = load ptr, ptr %index, align 8, !dbg !3152, !tbaa !2131
  %lengths63 = getelementptr inbounds %struct.ngx_http_index_t, ptr %60, i32 0, i32 1, !dbg !3153
  %lengths64 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 3, !dbg !3154
  store ptr %lengths63, ptr %lengths64, align 8, !dbg !3155, !tbaa !3156
  %61 = load ptr, ptr %index, align 8, !dbg !3157, !tbaa !2131
  %values65 = getelementptr inbounds %struct.ngx_http_index_t, ptr %61, i32 0, i32 2, !dbg !3158
  %values66 = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 4, !dbg !3159
  store ptr %values65, ptr %values66, align 8, !dbg !3160, !tbaa !3161
  %62 = load i64, ptr %n, align 8, !dbg !3162, !tbaa !2416
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 5, !dbg !3163
  store i64 %62, ptr %variables, align 8, !dbg !3164, !tbaa !3165
  %complete_lengths = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !3166
  %bf.load = load i8, ptr %complete_lengths, align 8, !dbg !3167
  %bf.clear = and i8 %bf.load, -3, !dbg !3167
  %bf.set = or i8 %bf.clear, 2, !dbg !3167
  store i8 %bf.set, ptr %complete_lengths, align 8, !dbg !3167
  %complete_values = getelementptr inbounds %struct.ngx_http_script_compile_t, ptr %sc, i32 0, i32 10, !dbg !3168
  %bf.load67 = load i8, ptr %complete_values, align 8, !dbg !3169
  %bf.clear68 = and i8 %bf.load67, -5, !dbg !3169
  %bf.set69 = or i8 %bf.clear68, 4, !dbg !3169
  store i8 %bf.set69, ptr %complete_values, align 8, !dbg !3169
  %call70 = call i64 @ngx_http_script_compile(ptr noundef %sc), !dbg !3170
  %cmp71 = icmp ne i64 %call70, 0, !dbg !3172
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !3173

if.then73:                                        ; preds = %if.end60
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3174

if.end74:                                         ; preds = %if.end60
  br label %for.inc, !dbg !3176

for.inc:                                          ; preds = %if.end74, %if.end57, %if.then56
  %63 = load i64, ptr %i, align 8, !dbg !3177, !tbaa !2416
  %inc75 = add i64 %63, 1, !dbg !3177
  store i64 %inc75, ptr %i, align 8, !dbg !3177, !tbaa !2416
  br label %for.cond, !dbg !3178, !llvm.loop !3179

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !3181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3181

cleanup:                                          ; preds = %for.end, %if.then73, %if.then27, %if.then20, %if.then4
  call void @llvm.lifetime.end.p0(i64 88, ptr %sc) #6, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #6, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #6, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %ilcf) #6, !dbg !3182
  %64 = load ptr, ptr %retval, align 8, !dbg !3182
  ret ptr %64, !dbg !3182
}

declare !dbg !3183 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !3186 i64 @ngx_http_script_variables_count(ptr noundef) #2

declare !dbg !3189 i64 @ngx_http_script_compile(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2065, !2066, !2067, !2068, !2069, !2070}
!llvm.ident = !{!2071}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_index_module.c", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "fbd6e50423e9545c946a0be1b2f43c74")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_index_module_ctx", scope: !9, file: !2, line: 55, type: !2042, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !26, globals: !1997, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 107, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "986bd9deaafaed2b6d3cae2ecc572d0b")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "NGX_HTTP_POST_READ_PHASE", value: 0)
!16 = !DIEnumerator(name: "NGX_HTTP_SERVER_REWRITE_PHASE", value: 1)
!17 = !DIEnumerator(name: "NGX_HTTP_FIND_CONFIG_PHASE", value: 2)
!18 = !DIEnumerator(name: "NGX_HTTP_REWRITE_PHASE", value: 3)
!19 = !DIEnumerator(name: "NGX_HTTP_POST_REWRITE_PHASE", value: 4)
!20 = !DIEnumerator(name: "NGX_HTTP_PREACCESS_PHASE", value: 5)
!21 = !DIEnumerator(name: "NGX_HTTP_ACCESS_PHASE", value: 6)
!22 = !DIEnumerator(name: "NGX_HTTP_POST_ACCESS_PHASE", value: 7)
!23 = !DIEnumerator(name: "NGX_HTTP_PRECONTENT_PHASE", value: 8)
!24 = !DIEnumerator(name: "NGX_HTTP_CONTENT_PHASE", value: 9)
!25 = !DIEnumerator(name: "NGX_HTTP_LOG_PHASE", value: 10)
!26 = !{!27, !32, !33, !42, !43, !1992, !51, !56}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !28, line: 79, baseType: !29)
!28 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !30, line: 90, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !35, line: 21, baseType: !36)
!35 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 17, size: 192, elements: !37)
!37 = !{!38, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !36, file: !35, line: 18, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !36, file: !35, line: 19, baseType: !39, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !36, file: !35, line: 20, baseType: !39, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_len_code_pt", file: !45, line: 90, baseType: !46)
!45 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "c6267aff67e650adcd8c4290fd2f4626")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 29, baseType: !31)
!50 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_engine_t", file: !45, line: 36, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 17, size: 704, elements: !54)
!54 = !{!55, !62, !63, !77, !83, !84, !85, !86, !87, !88, !89, !90, !96}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !53, file: !45, line: 18, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !58, line: 33, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !60, line: 31, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !53, file: !45, line: 19, baseType: !56, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !53, file: !45, line: 20, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !66, line: 17, baseType: !67)
!66 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "282b3527419dfe56984107919878b418")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !68, line: 37, baseType: !69)
!68 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2f3ab61eca09df707b083ffd5eafea4f")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 28, size: 128, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !69, file: !68, line: 29, baseType: !13, size: 28, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !69, file: !68, line: 31, baseType: !13, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !69, file: !68, line: 32, baseType: !13, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !69, file: !68, line: 33, baseType: !13, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !69, file: !68, line: 34, baseType: !13, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !69, file: !68, line: 36, baseType: !56, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !53, file: !45, line: 22, baseType: !78, size: 128, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !68, line: 19, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 16, size: 128, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !79, file: !68, line: 17, baseType: !49, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !68, line: 18, baseType: !56, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !53, file: !45, line: 23, baseType: !78, size: 128, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !53, file: !45, line: 26, baseType: !56, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flushed", scope: !53, file: !45, line: 28, baseType: !13, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !53, file: !45, line: 29, baseType: !13, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !53, file: !45, line: 30, baseType: !13, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "is_args", scope: !53, file: !45, line: 31, baseType: !13, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !53, file: !45, line: 32, baseType: !13, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !53, file: !45, line: 34, baseType: !91, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !28, line: 78, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !93, line: 267, baseType: !94)
!93 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !60, line: 207, baseType: !95)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !53, file: !45, line: 35, baseType: !97, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !99, line: 16, baseType: !100)
!99 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "7164149d4c2473091a4e1c4f6baa1b7e")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !101, line: 377, size: 10624, elements: !102)
!101 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2bd9fa6c0840df2506a27db4121d9c74")
!102 = !{!103, !107, !533, !534, !535, !536, !537, !542, !543, !772, !1515, !1516, !1517, !1518, !1562, !1594, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1643, !1654, !1661, !1662, !1664, !1665, !1666, !1667, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1882, !1886, !1891, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !100, file: !101, line: 378, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 26, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !60, line: 42, baseType: !13)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !100, file: !101, line: 380, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !110, line: 26, baseType: !111)
!110 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "20a149d22b95b5c7a0a8830d485b97ae")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !112, line: 122, size: 1856, elements: !113)
!112 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "212f2f4879dcb10799877db6a93ee4ed")
!113 = !{!114, !115, !215, !216, !219, !227, !229, !319, !324, !399, !400, !401, !438, !439, !440, !441, !442, !457, !504, !508, !509, !510, !511, !512, !513, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !112, line: 123, baseType: !32, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !111, file: !112, line: 124, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !110, line: 24, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !119, line: 30, size: 768, elements: !120)
!119 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "37d7d908a1a7ebec5ff5673dd5f89a52")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !149, !150, !194, !207}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !118, file: !119, line: 31, baseType: !32, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !118, file: !119, line: 33, baseType: !13, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !118, file: !119, line: 35, baseType: !13, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !118, file: !119, line: 38, baseType: !13, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !118, file: !119, line: 44, baseType: !13, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !118, file: !119, line: 46, baseType: !13, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !118, file: !119, line: 49, baseType: !13, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !118, file: !119, line: 51, baseType: !13, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !118, file: !119, line: 54, baseType: !13, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !118, file: !119, line: 56, baseType: !13, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !118, file: !119, line: 57, baseType: !13, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !118, file: !119, line: 59, baseType: !13, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !118, file: !119, line: 60, baseType: !13, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !118, file: !119, line: 62, baseType: !13, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !118, file: !119, line: 64, baseType: !13, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !118, file: !119, line: 67, baseType: !13, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !118, file: !119, line: 69, baseType: !13, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !118, file: !119, line: 71, baseType: !13, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !118, file: !119, line: 74, baseType: !13, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !118, file: !119, line: 75, baseType: !13, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !118, file: !119, line: 77, baseType: !13, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !118, file: !119, line: 101, baseType: !143, size: 32, offset: 96)
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !118, file: !119, line: 103, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !110, line: 33, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !116}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !118, file: !119, line: 110, baseType: !27, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !118, file: !119, line: 112, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !110, line: 20, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !154, line: 50, size: 640, elements: !155)
!154 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "81257099415bdc5e18cdef9b4461d934")
!155 = !{!156, !157, !172, !175, !179, !184, !185, !190, !191, !193}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !153, file: !154, line: 51, baseType: !27, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !153, file: !154, line: 52, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !110, line: 21, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !161, line: 89, size: 320, elements: !162)
!161 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "b737d189253ca17c55f83e424debf52b")
!162 = !{!163, !166, !167, !171}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !160, file: !161, line: 90, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !165, line: 16, baseType: !143)
!165 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5c6995d5f659dd97ea6d10eff0ad0f12")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 91, baseType: !78, size: 128, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !160, file: !161, line: 93, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !158, !151}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !160, file: !161, line: 94, baseType: !32, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !153, file: !154, line: 54, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !174, line: 48, baseType: !31)
!174 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5d14beceab1860bcc051d3b7a146b2a2")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !153, file: !154, line: 56, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !177, line: 10, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !60, line: 160, baseType: !95)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !154, line: 58, baseType: !180, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !154, line: 45, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!56, !151, !56, !49}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !153, file: !154, line: 59, baseType: !32, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !153, file: !154, line: 61, baseType: !186, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !154, line: 46, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !151, !27, !56, !49}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !153, file: !154, line: 62, baseType: !32, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !153, file: !154, line: 70, baseType: !192, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !154, line: 72, baseType: !151, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !118, file: !119, line: 114, baseType: !195, size: 320, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !196, line: 20, baseType: !197)
!196 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3e0aca9b19636f12ab4dbc16c3f8a0a1")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !196, line: 22, size: 320, elements: !198)
!198 = !{!199, !201, !203, !204, !205, !206}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !197, file: !196, line: 23, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !196, line: 16, baseType: !27)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !197, file: !196, line: 24, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !197, file: !196, line: 25, baseType: !202, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !196, line: 26, baseType: !202, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !197, file: !196, line: 27, baseType: !57, size: 8, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !197, file: !196, line: 28, baseType: !57, size: 8, offset: 264)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !118, file: !119, line: 117, baseType: !208, size: 128, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !209, line: 16, baseType: !210)
!209 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !209, line: 18, size: 128, elements: !211)
!211 = !{!212, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !209, line: 19, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !209, line: 20, baseType: !213, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !111, file: !112, line: 125, baseType: !116, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !111, file: !112, line: 127, baseType: !217, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !218, line: 17, baseType: !143)
!218 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3294ca407f098b2e2906f1b2d90752a2")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !111, file: !112, line: 129, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !221, line: 19, baseType: !222)
!221 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !108, !56, !49}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !58, line: 108, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !60, line: 194, baseType: !95)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !111, file: !112, line: 130, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !221, line: 22, baseType: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !111, file: !112, line: 131, baseType: !230, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !221, line: 20, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!225, !108, !234, !247}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !110, line: 19, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !237, line: 59, size: 128, elements: !238)
!237 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6333220b53b7706731e71ee9d0416317")
!238 = !{!239, !318}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !236, file: !237, line: 60, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !237, line: 18, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !237, line: 20, size: 640, elements: !243)
!243 = !{!244, !245, !246, !249, !250, !251, !252, !254, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !242, file: !237, line: 21, baseType: !56, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !242, file: !237, line: 22, baseType: !56, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !242, file: !237, line: 23, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !58, line: 87, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !95)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !242, file: !237, line: 24, baseType: !247, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !242, file: !237, line: 26, baseType: !56, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !242, file: !237, line: 27, baseType: !56, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !242, file: !237, line: 28, baseType: !253, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !237, line: 16, baseType: !32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !242, file: !237, line: 29, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !110, line: 23, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !258, line: 16, size: 1600, elements: !259)
!258 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!259 = !{!260, !261, !262, !300, !301, !302, !303, !304}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !257, file: !258, line: 17, baseType: !164, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !258, line: 18, baseType: !78, size: 128, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !257, file: !258, line: 19, baseType: !263, size: 1152, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !165, line: 17, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !265, line: 26, size: 1152, elements: !266)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!266 = !{!267, !269, !271, !273, !275, !277, !279, !280, !281, !283, !285, !287, !294, !295, !296}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !264, file: !265, line: 31, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !60, line: 145, baseType: !31)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !264, file: !265, line: 36, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !60, line: 148, baseType: !31)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !264, file: !265, line: 44, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !60, line: 151, baseType: !31)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !264, file: !265, line: 45, baseType: !274, size: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !60, line: 150, baseType: !13)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !264, file: !265, line: 47, baseType: !276, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !60, line: 146, baseType: !13)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !264, file: !265, line: 48, baseType: !278, size: 32, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !60, line: 147, baseType: !13)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !264, file: !265, line: 50, baseType: !143, size: 32, offset: 288)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !264, file: !265, line: 52, baseType: !268, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !264, file: !265, line: 57, baseType: !282, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !95)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !264, file: !265, line: 61, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !60, line: 175, baseType: !95)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !264, file: !265, line: 63, baseType: !286, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !60, line: 180, baseType: !95)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !264, file: !265, line: 74, baseType: !288, size: 128, offset: 576)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !289, line: 11, size: 128, elements: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !288, file: !289, line: 16, baseType: !178, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !288, file: !289, line: 21, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !60, line: 197, baseType: !95)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !264, file: !265, line: 75, baseType: !288, size: 128, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !264, file: !265, line: 76, baseType: !288, size: 128, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !264, file: !265, line: 89, baseType: !297, size: 192, offset: 960)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 3)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !257, file: !258, line: 21, baseType: !247, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !257, file: !258, line: 22, baseType: !247, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !257, file: !258, line: 24, baseType: !151, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !257, file: !258, line: 37, baseType: !13, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !257, file: !258, line: 38, baseType: !13, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !242, file: !237, line: 30, baseType: !240, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !242, file: !237, line: 34, baseType: !13, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !242, file: !237, line: 40, baseType: !13, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !242, file: !237, line: 43, baseType: !13, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !242, file: !237, line: 45, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !242, file: !237, line: 46, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !242, file: !237, line: 47, baseType: !13, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !242, file: !237, line: 48, baseType: !13, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !242, file: !237, line: 49, baseType: !13, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !242, file: !237, line: 50, baseType: !13, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !242, file: !237, line: 52, baseType: !13, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !242, file: !237, line: 53, baseType: !13, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !242, file: !237, line: 55, baseType: !143, size: 32, offset: 608)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !237, line: 61, baseType: !234, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !111, file: !112, line: 132, baseType: !320, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !221, line: 23, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!234, !108, !234, !247}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !111, file: !112, line: 134, baseType: !325, size: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !112, line: 16, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !112, line: 18, size: 2368, elements: !328)
!328 = !{!329, !330, !343, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !360, !361, !362, !363, !364, !365, !366, !367, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !327, file: !112, line: 19, baseType: !217, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !327, file: !112, line: 21, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !333, line: 180, size: 128, elements: !334)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!334 = !{!335, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !332, file: !333, line: 182, baseType: !336, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !337, line: 28, baseType: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!338 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !332, file: !333, line: 183, baseType: !340, size: 112, offset: 16)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 14)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !327, file: !112, line: 22, baseType: !344, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !93, line: 274, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !60, line: 210, baseType: !13)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !327, file: !112, line: 23, baseType: !49, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !327, file: !112, line: 24, baseType: !78, size: 128, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !327, file: !112, line: 26, baseType: !143, size: 32, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !327, file: !112, line: 28, baseType: !143, size: 32, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !327, file: !112, line: 29, baseType: !143, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !327, file: !112, line: 30, baseType: !143, size: 32, offset: 480)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !327, file: !112, line: 32, baseType: !143, size: 32, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !327, file: !112, line: 33, baseType: !143, size: 32, offset: 544)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !327, file: !112, line: 34, baseType: !143, size: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !327, file: !112, line: 38, baseType: !356, size: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !110, line: 34, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !108}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !327, file: !112, line: 40, baseType: !32, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !327, file: !112, line: 42, baseType: !152, size: 640, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !327, file: !112, line: 43, baseType: !151, size: 64, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !327, file: !112, line: 45, baseType: !49, size: 64, offset: 1472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !327, file: !112, line: 47, baseType: !49, size: 64, offset: 1536)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !327, file: !112, line: 49, baseType: !325, size: 64, offset: 1600)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !327, file: !112, line: 50, baseType: !108, size: 64, offset: 1664)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !327, file: !112, line: 52, baseType: !368, size: 192, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !196, line: 32, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !196, line: 37, size: 192, elements: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !369, file: !196, line: 38, baseType: !202, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !369, file: !196, line: 39, baseType: !202, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !369, file: !196, line: 40, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !196, line: 34, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !202, !202, !202}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !327, file: !112, line: 53, baseType: !195, size: 320, offset: 1920)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !327, file: !112, line: 55, baseType: !27, size: 64, offset: 2240)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !327, file: !112, line: 57, baseType: !13, size: 1, offset: 2304, flags: DIFlagBitField, extraData: i64 2304)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !327, file: !112, line: 58, baseType: !13, size: 1, offset: 2305, flags: DIFlagBitField, extraData: i64 2304)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !327, file: !112, line: 59, baseType: !13, size: 1, offset: 2306, flags: DIFlagBitField, extraData: i64 2304)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !327, file: !112, line: 61, baseType: !13, size: 1, offset: 2307, flags: DIFlagBitField, extraData: i64 2304)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !327, file: !112, line: 62, baseType: !13, size: 1, offset: 2308, flags: DIFlagBitField, extraData: i64 2304)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !327, file: !112, line: 63, baseType: !13, size: 1, offset: 2309, flags: DIFlagBitField, extraData: i64 2304)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !327, file: !112, line: 64, baseType: !13, size: 1, offset: 2310, flags: DIFlagBitField, extraData: i64 2304)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !327, file: !112, line: 65, baseType: !13, size: 1, offset: 2311, flags: DIFlagBitField, extraData: i64 2304)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !327, file: !112, line: 66, baseType: !13, size: 1, offset: 2312, flags: DIFlagBitField, extraData: i64 2304)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !327, file: !112, line: 67, baseType: !13, size: 1, offset: 2313, flags: DIFlagBitField, extraData: i64 2304)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !327, file: !112, line: 68, baseType: !13, size: 1, offset: 2314, flags: DIFlagBitField, extraData: i64 2304)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !327, file: !112, line: 71, baseType: !13, size: 1, offset: 2315, flags: DIFlagBitField, extraData: i64 2304)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !327, file: !112, line: 73, baseType: !13, size: 1, offset: 2316, flags: DIFlagBitField, extraData: i64 2304)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !327, file: !112, line: 74, baseType: !13, size: 1, offset: 2317, flags: DIFlagBitField, extraData: i64 2304)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !327, file: !112, line: 75, baseType: !13, size: 2, offset: 2318, flags: DIFlagBitField, extraData: i64 2304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !327, file: !112, line: 77, baseType: !13, size: 1, offset: 2320, flags: DIFlagBitField, extraData: i64 2304)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !327, file: !112, line: 78, baseType: !13, size: 1, offset: 2321, flags: DIFlagBitField, extraData: i64 2304)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !327, file: !112, line: 79, baseType: !13, size: 1, offset: 2322, flags: DIFlagBitField, extraData: i64 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !327, file: !112, line: 88, baseType: !143, size: 32, offset: 2336)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !111, file: !112, line: 136, baseType: !247, size: 64, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !111, file: !112, line: 138, baseType: !151, size: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !111, file: !112, line: 140, baseType: !402, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !110, line: 18, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !405, line: 57, size: 640, elements: !406)
!405 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!406 = !{!407, !415, !416, !417, !418, !425, !437}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !404, file: !405, line: 58, baseType: !408, size: 256)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !405, line: 54, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 49, size: 256, elements: !410)
!410 = !{!411, !412, !413, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !409, file: !405, line: 50, baseType: !56, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !409, file: !405, line: 51, baseType: !56, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !405, line: 52, baseType: !402, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !409, file: !405, line: 53, baseType: !27, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !404, file: !405, line: 59, baseType: !49, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !404, file: !405, line: 60, baseType: !402, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !404, file: !405, line: 61, baseType: !234, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !404, file: !405, line: 62, baseType: !419, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !405, line: 41, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !405, line: 43, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !405, line: 44, baseType: !419, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !421, file: !405, line: 45, baseType: !32, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !404, file: !405, line: 63, baseType: !426, size: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !405, line: 32, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !405, line: 34, size: 192, elements: !429)
!429 = !{!430, !435, !436}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !428, file: !405, line: 35, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !405, line: 30, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !32}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !428, file: !405, line: 36, baseType: !32, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !405, line: 37, baseType: !426, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !404, file: !405, line: 64, baseType: !151, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !112, line: 142, baseType: !143, size: 32, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !111, file: !112, line: 144, baseType: !331, size: 64, offset: 832)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !111, file: !112, line: 145, baseType: !344, size: 32, offset: 896)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !111, file: !112, line: 146, baseType: !78, size: 128, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !111, file: !112, line: 148, baseType: !443, size: 64, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_proxy_protocol_t", file: !110, line: 29, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_proxy_protocol_s", file: !446, line: 20, size: 448, elements: !447)
!446 = !DIFile(filename: "src/core/ngx_proxy_protocol.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2f709b54741e3446706b44243689209d")
!447 = !{!448, !449, !450, !455, !456}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !445, file: !446, line: 21, baseType: !78, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !445, file: !446, line: 22, baseType: !78, size: 128, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !445, file: !446, line: 23, baseType: !451, size: 16, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !452, line: 123, baseType: !453)
!452 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !105, line: 25, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !60, line: 40, baseType: !338)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !445, file: !446, line: 24, baseType: !451, size: 16, offset: 272)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tlvs", scope: !445, file: !446, line: 25, baseType: !78, size: 128, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !111, file: !112, line: 151, baseType: !458, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !110, line: 30, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !461, line: 88, size: 768, elements: !462)
!461 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3af21306d729871437c56397859c5d10")
!462 = !{!463, !468, !472, !473, !474, !475, !476, !481, !482, !483, !484, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !460, file: !461, line: 89, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !466, line: 187, baseType: !467)
!466 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/types.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build", checksumkind: CSK_MD5, checksum: "b6649ae9fb159d98e26ef5156a06b00d")
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !466, line: 187, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !460, file: !461, line: 90, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !466, line: 188, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !466, line: 188, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !460, file: !461, line: 92, baseType: !91, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !460, file: !461, line: 93, baseType: !240, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !460, file: !461, line: 94, baseType: !49, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !461, line: 96, baseType: !356, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !460, file: !461, line: 98, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !479, line: 234, baseType: !480)
!479 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/ssl.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build", checksumkind: CSK_MD5, checksum: "b3965e72168556c434721fcea95f586f")
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !479, line: 234, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !460, file: !461, line: 99, baseType: !356, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !460, file: !461, line: 101, baseType: !145, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !460, file: !461, line: 102, baseType: !145, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ocsp", scope: !460, file: !461, line: 104, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_ocsp_t", file: !461, line: 78, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_ocsp_s", file: !461, line: 78, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !460, file: !461, line: 106, baseType: !57, size: 8, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !460, file: !461, line: 108, baseType: !13, size: 1, offset: 712, flags: DIFlagBitField, extraData: i64 712)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_rejected", scope: !460, file: !461, line: 109, baseType: !13, size: 1, offset: 713, flags: DIFlagBitField, extraData: i64 712)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !460, file: !461, line: 110, baseType: !13, size: 1, offset: 714, flags: DIFlagBitField, extraData: i64 712)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !460, file: !461, line: 111, baseType: !13, size: 1, offset: 715, flags: DIFlagBitField, extraData: i64 712)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !460, file: !461, line: 112, baseType: !13, size: 1, offset: 716, flags: DIFlagBitField, extraData: i64 712)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !460, file: !461, line: 113, baseType: !13, size: 1, offset: 717, flags: DIFlagBitField, extraData: i64 712)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !460, file: !461, line: 114, baseType: !13, size: 1, offset: 718, flags: DIFlagBitField, extraData: i64 712)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_without_free", scope: !460, file: !461, line: 115, baseType: !13, size: 1, offset: 719, flags: DIFlagBitField, extraData: i64 712)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !460, file: !461, line: 116, baseType: !13, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 712)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout_set", scope: !460, file: !461, line: 117, baseType: !13, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 712)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !460, file: !461, line: 118, baseType: !13, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 712)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !460, file: !461, line: 119, baseType: !13, size: 1, offset: 723, flags: DIFlagBitField, extraData: i64 712)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "in_ocsp", scope: !460, file: !461, line: 120, baseType: !13, size: 1, offset: 724, flags: DIFlagBitField, extraData: i64 712)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !460, file: !461, line: 121, baseType: !13, size: 1, offset: 725, flags: DIFlagBitField, extraData: i64 712)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !460, file: !461, line: 122, baseType: !13, size: 1, offset: 726, flags: DIFlagBitField, extraData: i64 712)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !111, file: !112, line: 154, baseType: !505, size: 64, offset: 1216)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !110, line: 31, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !110, line: 31, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !111, file: !112, line: 156, baseType: !331, size: 64, offset: 1280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !111, file: !112, line: 157, baseType: !344, size: 32, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !111, file: !112, line: 159, baseType: !240, size: 64, offset: 1408)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !111, file: !112, line: 161, baseType: !208, size: 128, offset: 1472)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !111, file: !112, line: 163, baseType: !173, size: 64, offset: 1600)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !111, file: !112, line: 165, baseType: !514, size: 64, offset: 1664)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !515, line: 16, baseType: !200)
!515 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !111, file: !112, line: 166, baseType: !27, size: 64, offset: 1728)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !111, file: !112, line: 168, baseType: !13, size: 8, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !111, file: !112, line: 170, baseType: !13, size: 3, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !111, file: !112, line: 172, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !111, file: !112, line: 173, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !111, file: !112, line: 174, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !111, file: !112, line: 175, baseType: !13, size: 1, offset: 1806, flags: DIFlagBitField, extraData: i64 1792)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !111, file: !112, line: 177, baseType: !13, size: 1, offset: 1807, flags: DIFlagBitField, extraData: i64 1792)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !111, file: !112, line: 178, baseType: !13, size: 1, offset: 1808, flags: DIFlagBitField, extraData: i64 1792)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !111, file: !112, line: 179, baseType: !13, size: 1, offset: 1809, flags: DIFlagBitField, extraData: i64 1792)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !111, file: !112, line: 180, baseType: !13, size: 1, offset: 1810, flags: DIFlagBitField, extraData: i64 1792)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !111, file: !112, line: 182, baseType: !13, size: 1, offset: 1811, flags: DIFlagBitField, extraData: i64 1792)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !111, file: !112, line: 183, baseType: !13, size: 1, offset: 1812, flags: DIFlagBitField, extraData: i64 1792)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !111, file: !112, line: 184, baseType: !13, size: 2, offset: 1813, flags: DIFlagBitField, extraData: i64 1792)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !111, file: !112, line: 185, baseType: !13, size: 2, offset: 1815, flags: DIFlagBitField, extraData: i64 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !111, file: !112, line: 187, baseType: !13, size: 1, offset: 1817, flags: DIFlagBitField, extraData: i64 1792)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "need_flush_buf", scope: !111, file: !112, line: 188, baseType: !13, size: 1, offset: 1818, flags: DIFlagBitField, extraData: i64 1792)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !100, file: !101, line: 382, baseType: !39, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !100, file: !101, line: 383, baseType: !39, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !100, file: !101, line: 384, baseType: !39, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !100, file: !101, line: 385, baseType: !39, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !100, file: !101, line: 387, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !101, line: 374, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !97}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !100, file: !101, line: 388, baseType: !538, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !100, file: !101, line: 391, baseType: !544, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !99, line: 18, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !547, line: 65, size: 4864, elements: !548)
!547 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f29cd7dd14e04d7d4af9197bf6cdb9bb")
!548 = !{!549, !550, !560, !561, !565, !566, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !729, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !546, file: !547, line: 66, baseType: !256, size: 1600)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !546, file: !547, line: 67, baseType: !551, size: 320, offset: 1600)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !552, line: 22, baseType: !553)
!552 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 16, size: 320, elements: !554)
!554 = !{!555, !556, !557, !558, !559}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !553, file: !552, line: 17, baseType: !32, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !553, file: !552, line: 18, baseType: !27, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !553, file: !552, line: 19, baseType: !49, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !553, file: !552, line: 20, baseType: !27, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !553, file: !552, line: 21, baseType: !402, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !546, file: !547, line: 68, baseType: !104, size: 32, offset: 1920)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !546, file: !547, line: 69, baseType: !562, size: 128, offset: 1952)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 16)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !546, file: !547, line: 70, baseType: !562, size: 128, offset: 2080)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !546, file: !547, line: 72, baseType: !567, size: 64, offset: 2240)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !165, line: 18, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !58, line: 49, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !60, line: 149, baseType: !31)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !546, file: !547, line: 73, baseType: !176, size: 64, offset: 2304)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !546, file: !547, line: 74, baseType: !176, size: 64, offset: 2368)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !546, file: !547, line: 75, baseType: !176, size: 64, offset: 2432)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !546, file: !547, line: 76, baseType: !176, size: 64, offset: 2496)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !546, file: !547, line: 77, baseType: !176, size: 64, offset: 2560)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !546, file: !547, line: 79, baseType: !78, size: 128, offset: 2624)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !546, file: !547, line: 80, baseType: !78, size: 128, offset: 2752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !546, file: !547, line: 81, baseType: !562, size: 128, offset: 2880)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !546, file: !547, line: 83, baseType: !49, size: 64, offset: 3008)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !546, file: !547, line: 84, baseType: !49, size: 64, offset: 3072)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !546, file: !547, line: 85, baseType: !49, size: 64, offset: 3136)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !546, file: !547, line: 86, baseType: !247, size: 64, offset: 3200)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !546, file: !547, line: 87, baseType: !247, size: 64, offset: 3264)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !546, file: !547, line: 89, baseType: !27, size: 64, offset: 3328)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !546, file: !547, line: 90, baseType: !27, size: 64, offset: 3392)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !546, file: !547, line: 91, baseType: !27, size: 64, offset: 3456)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !546, file: !547, line: 92, baseType: !27, size: 64, offset: 3520)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !546, file: !547, line: 94, baseType: !240, size: 64, offset: 3584)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !546, file: !547, line: 96, baseType: !589, size: 64, offset: 3648)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !99, line: 19, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !547, line: 159, size: 1152, elements: !592)
!592 = !{!593, !608, !669, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !728}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !591, file: !547, line: 160, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !547, line: 156, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 147, size: 960, elements: !597)
!597 = !{!598, !599, !600, !601, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !596, file: !547, line: 148, baseType: !368, size: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !596, file: !547, line: 149, baseType: !195, size: 320, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !596, file: !547, line: 150, baseType: !208, size: 128, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !596, file: !547, line: 151, baseType: !602, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !174, line: 56, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !596, file: !547, line: 152, baseType: !602, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !547, line: 153, baseType: !247, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !547, line: 154, baseType: !27, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !596, file: !547, line: 155, baseType: !27, size: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !591, file: !547, line: 161, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !611, line: 59, baseType: !612)
!611 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 34, size: 1600, elements: !613)
!613 = !{!614, !621, !622, !623, !631, !632, !633, !642, !643, !644, !645, !664, !665, !666, !667, !668}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !611, line: 35, baseType: !615, size: 128)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !616, line: 21, baseType: !617)
!616 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 16, size: 128, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !617, file: !616, line: 17, baseType: !602, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !617, file: !616, line: 19, baseType: !602, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !612, file: !611, line: 37, baseType: !49, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !612, file: !611, line: 38, baseType: !49, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !612, file: !611, line: 40, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !611, line: 16, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !611, line: 18, size: 192, elements: !627)
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !626, file: !611, line: 19, baseType: !29, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !611, line: 20, baseType: !624, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !626, file: !611, line: 21, baseType: !29, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !612, file: !611, line: 41, baseType: !624, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !612, file: !611, line: 42, baseType: !625, size: 192, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !612, file: !611, line: 44, baseType: !634, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !611, line: 31, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 25, size: 256, elements: !637)
!637 = !{!638, !639, !640, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !636, file: !611, line: 26, baseType: !27, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !636, file: !611, line: 27, baseType: !27, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !636, file: !611, line: 29, baseType: !27, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !636, file: !611, line: 30, baseType: !27, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !612, file: !611, line: 45, baseType: !27, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !612, file: !611, line: 47, baseType: !56, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !612, file: !611, line: 48, baseType: !56, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !612, file: !611, line: 50, baseType: !646, size: 512, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !616, line: 37, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 24, size: 512, elements: !648)
!648 = !{!649, !651, !652, !653, !663}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !616, line: 26, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !647, file: !616, line: 28, baseType: !650, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !647, file: !616, line: 29, baseType: !27, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !647, file: !616, line: 30, baseType: !654, size: 256, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !655, line: 39, baseType: !656)
!655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !655, line: 35, size: 256, elements: !657)
!657 = !{!658, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !656, file: !655, line: 37, baseType: !659, size: 256)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !656, file: !655, line: 38, baseType: !95, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !647, file: !616, line: 36, baseType: !27, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !612, file: !611, line: 52, baseType: !56, size: 64, offset: 1344)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !612, file: !611, line: 53, baseType: !57, size: 8, offset: 1408)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !612, file: !611, line: 55, baseType: !13, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !612, file: !611, line: 57, baseType: !32, size: 64, offset: 1472)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !612, file: !611, line: 58, baseType: !32, size: 64, offset: 1536)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !591, file: !547, line: 163, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !258, line: 62, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 50, size: 768, elements: !673)
!673 = !{!674, !675, !676, !678, !683, !685, !687, !688, !689}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !258, line: 51, baseType: !78, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !672, file: !258, line: 52, baseType: !49, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !672, file: !258, line: 53, baseType: !677, size: 192, offset: 192)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !298)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !672, file: !258, line: 55, baseType: !679, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !258, line: 45, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!514, !32}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !672, file: !258, line: 56, baseType: !684, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !258, line: 46, baseType: !680)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !672, file: !258, line: 57, baseType: !686, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !258, line: 47, baseType: !432)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !672, file: !258, line: 58, baseType: !32, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !672, file: !258, line: 60, baseType: !56, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !672, file: !258, line: 61, baseType: !27, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "min_free", scope: !591, file: !547, line: 165, baseType: !247, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !591, file: !547, line: 166, baseType: !247, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !591, file: !547, line: 167, baseType: !49, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !591, file: !547, line: 169, baseType: !176, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !591, file: !547, line: 171, baseType: !176, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !591, file: !547, line: 173, baseType: !27, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !591, file: !547, line: 174, baseType: !27, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !591, file: !547, line: 175, baseType: !514, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !591, file: !547, line: 176, baseType: !514, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !591, file: !547, line: 177, baseType: !514, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !591, file: !547, line: 179, baseType: !27, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !591, file: !547, line: 180, baseType: !514, size: 64, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !591, file: !547, line: 181, baseType: !514, size: 64, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !591, file: !547, line: 183, baseType: !704, size: 64, offset: 1024)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !706, line: 25, baseType: !707)
!706 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "44a673836137b8263e2cfd875033292f")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !706, line: 29, size: 704, elements: !708)
!708 = !{!709, !710, !720, !725, !726, !727}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !707, file: !706, line: 30, baseType: !32, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !707, file: !706, line: 31, baseType: !711, size: 384, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !712, line: 22, baseType: !713)
!712 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 16, size: 384, elements: !714)
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !713, file: !712, line: 17, baseType: !56, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !713, file: !712, line: 18, baseType: !49, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !713, file: !712, line: 19, baseType: !78, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !713, file: !712, line: 20, baseType: !151, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !713, file: !712, line: 21, baseType: !27, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !707, file: !706, line: 32, baseType: !721, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !706, line: 27, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!91, !704, !32}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !707, file: !706, line: 33, baseType: !32, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !707, file: !706, line: 34, baseType: !32, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !707, file: !706, line: 35, baseType: !27, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !591, file: !547, line: 185, baseType: !27, size: 64, offset: 1088)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !546, file: !547, line: 97, baseType: !730, size: 64, offset: 3712)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !547, line: 62, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 39, size: 960, elements: !733)
!733 = !{!734, !735, !736, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !547, line: 40, baseType: !195, size: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !732, file: !547, line: 41, baseType: !208, size: 128, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !732, file: !547, line: 43, baseType: !737, size: 64, offset: 448)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !547, line: 46, baseType: !13, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !732, file: !547, line: 47, baseType: !13, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !732, file: !547, line: 48, baseType: !13, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !732, file: !547, line: 49, baseType: !13, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !732, file: !547, line: 50, baseType: !13, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !732, file: !547, line: 51, baseType: !13, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !732, file: !547, line: 52, baseType: !13, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !732, file: !547, line: 53, baseType: !13, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !732, file: !547, line: 56, baseType: !567, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !732, file: !547, line: 57, baseType: !176, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !732, file: !547, line: 58, baseType: !176, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !732, file: !547, line: 59, baseType: !49, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !732, file: !547, line: 60, baseType: !247, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !732, file: !547, line: 61, baseType: !514, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !546, file: !547, line: 103, baseType: !514, size: 64, offset: 3776)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !546, file: !547, line: 104, baseType: !514, size: 64, offset: 3840)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !546, file: !547, line: 105, baseType: !514, size: 64, offset: 3904)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !546, file: !547, line: 106, baseType: !514, size: 64, offset: 3968)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !546, file: !547, line: 108, baseType: !117, size: 768, offset: 4032)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !546, file: !547, line: 110, baseType: !13, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !546, file: !547, line: 111, baseType: !13, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !546, file: !547, line: 113, baseType: !13, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !546, file: !547, line: 114, baseType: !13, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !546, file: !547, line: 115, baseType: !13, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !546, file: !547, line: 116, baseType: !13, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !546, file: !547, line: 117, baseType: !13, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !546, file: !547, line: 118, baseType: !13, size: 1, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !546, file: !547, line: 119, baseType: !13, size: 1, offset: 4808, flags: DIFlagBitField, extraData: i64 4800)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "update_variant", scope: !546, file: !547, line: 120, baseType: !13, size: 1, offset: 4809, flags: DIFlagBitField, extraData: i64 4800)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !546, file: !547, line: 121, baseType: !13, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !546, file: !547, line: 123, baseType: !13, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !546, file: !547, line: 124, baseType: !13, size: 1, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !100, file: !101, line: 394, baseType: !773, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !99, line: 17, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !776, line: 321, size: 8192, elements: !777)
!776 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "bad45a65b84155e2cd31779ca946a5e9")
!777 = !{!778, !783, !784, !834, !913, !914, !936, !945, !1229, !1230, !1231, !1273, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1455, !1459, !1460, !1464, !1465, !1466, !1467, !1468, !1472, !1476, !1480, !1481, !1495, !1496, !1497, !1498, !1499, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !775, file: !776, line: 322, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !776, line: 317, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !97, !773}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !775, file: !776, line: 323, baseType: !779, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !775, file: !776, line: 325, baseType: !785, size: 1024, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !786, line: 22, baseType: !787)
!786 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "c9faf532d824f6e2b5c6cc29ff3a0dbe")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !786, line: 36, size: 1024, elements: !788)
!788 = !{!789, !790, !791, !792, !794, !795, !796, !802, !807, !809, !810, !812, !817, !826, !827, !828, !829, !830, !831, !832, !833}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !787, file: !786, line: 37, baseType: !108, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !787, file: !786, line: 39, baseType: !331, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !787, file: !786, line: 40, baseType: !344, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !787, file: !786, line: 41, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !787, file: !786, line: 43, baseType: !27, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !787, file: !786, line: 44, baseType: !514, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !787, file: !786, line: 46, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !786, line: 24, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!91, !801, !32}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !787, file: !786, line: 47, baseType: !803, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !786, line: 26, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !801, !32, !27}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !787, file: !786, line: 48, baseType: !808, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !786, line: 28, baseType: !804)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !787, file: !786, line: 49, baseType: !32, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !787, file: !786, line: 52, baseType: !811, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !786, line: 30, baseType: !798)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !787, file: !786, line: 53, baseType: !813, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !786, line: 32, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !801, !32}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !787, file: !786, line: 56, baseType: !818, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !820, line: 78, baseType: !821)
!820 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "d5616ec7561796f9244bc380e7991704")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !820, line: 74, size: 256, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !821, file: !820, line: 75, baseType: !331, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !821, file: !820, line: 76, baseType: !344, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !820, line: 77, baseType: !78, size: 128, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !786, line: 58, baseType: !143, size: 32, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !787, file: !786, line: 59, baseType: !143, size: 32, offset: 864)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !787, file: !786, line: 61, baseType: !151, size: 64, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !787, file: !786, line: 63, baseType: !13, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !787, file: !786, line: 64, baseType: !13, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !787, file: !786, line: 65, baseType: !13, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !787, file: !786, line: 66, baseType: !13, size: 1, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !787, file: !786, line: 69, baseType: !13, size: 2, offset: 964, flags: DIFlagBitField, extraData: i64 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !775, file: !776, line: 327, baseType: !835, size: 64, offset: 1152)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !837, line: 17, baseType: !838)
!837 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !837, line: 25, size: 2240, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !846, !847, !848, !849, !850, !855, !856, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !912}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !838, file: !837, line: 26, baseType: !108, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !838, file: !837, line: 27, baseType: !108, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !838, file: !837, line: 29, baseType: !234, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !838, file: !837, line: 30, baseType: !234, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !838, file: !837, line: 31, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !838, file: !837, line: 33, baseType: !234, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !838, file: !837, line: 35, baseType: !234, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !838, file: !837, line: 36, baseType: !234, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !838, file: !837, line: 37, baseType: !234, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !838, file: !837, line: 44, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !837, line: 19, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!91, !835, !240}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !838, file: !837, line: 45, baseType: !32, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !838, file: !837, line: 47, baseType: !857, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !837, line: 21, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!91, !32, !234}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !838, file: !837, line: 48, baseType: !32, size: 64, offset: 768)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !838, file: !837, line: 57, baseType: !13, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !838, file: !837, line: 58, baseType: !13, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !838, file: !837, line: 59, baseType: !13, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !838, file: !837, line: 60, baseType: !13, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !838, file: !837, line: 61, baseType: !13, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !838, file: !837, line: 62, baseType: !13, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !838, file: !837, line: 63, baseType: !13, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !838, file: !837, line: 64, baseType: !13, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !838, file: !837, line: 65, baseType: !13, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !838, file: !837, line: 66, baseType: !13, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !838, file: !837, line: 67, baseType: !13, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !838, file: !837, line: 68, baseType: !13, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !838, file: !837, line: 70, baseType: !91, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !838, file: !837, line: 71, baseType: !876, size: 128, offset: 960)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !237, line: 68, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 65, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !877, file: !237, line: 66, baseType: !91, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !877, file: !237, line: 67, baseType: !49, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !838, file: !837, line: 72, baseType: !253, size: 64, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !838, file: !837, line: 74, baseType: !225, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !838, file: !837, line: 76, baseType: !247, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !838, file: !837, line: 77, baseType: !247, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !838, file: !837, line: 79, baseType: !247, size: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !838, file: !837, line: 80, baseType: !225, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !838, file: !837, line: 82, baseType: !514, size: 64, offset: 1472)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !838, file: !837, line: 83, baseType: !514, size: 64, offset: 1536)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !838, file: !837, line: 84, baseType: !225, size: 64, offset: 1600)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !838, file: !837, line: 86, baseType: !402, size: 64, offset: 1664)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !838, file: !837, line: 87, baseType: !151, size: 64, offset: 1728)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !838, file: !837, line: 89, baseType: !234, size: 64, offset: 1792)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !838, file: !837, line: 90, baseType: !49, size: 64, offset: 1856)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !838, file: !837, line: 91, baseType: !240, size: 64, offset: 1920)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !838, file: !837, line: 93, baseType: !49, size: 64, offset: 1984)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !838, file: !837, line: 94, baseType: !176, size: 64, offset: 2048)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !838, file: !837, line: 96, baseType: !898, size: 64, offset: 2112)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !258, line: 84, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 71, size: 1984, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !900, file: !258, line: 72, baseType: !256, size: 1600)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !900, file: !258, line: 73, baseType: !247, size: 64, offset: 1600)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !900, file: !258, line: 74, baseType: !670, size: 64, offset: 1664)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !900, file: !258, line: 75, baseType: !402, size: 64, offset: 1728)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !900, file: !258, line: 76, baseType: !192, size: 64, offset: 1792)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !900, file: !258, line: 78, baseType: !27, size: 64, offset: 1856)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !900, file: !258, line: 80, baseType: !13, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !900, file: !258, line: 81, baseType: !13, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !900, file: !258, line: 82, baseType: !13, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !900, file: !258, line: 83, baseType: !13, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !838, file: !837, line: 98, baseType: !143, size: 32, offset: 2176)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !775, file: !776, line: 329, baseType: !234, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !775, file: !776, line: 331, baseType: !915, size: 832, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !237, line: 71, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !237, line: 78, size: 832, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !935}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !916, file: !237, line: 79, baseType: !240, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !916, file: !237, line: 80, baseType: !234, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !916, file: !237, line: 81, baseType: !234, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !916, file: !237, line: 82, baseType: !234, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !916, file: !237, line: 84, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !916, file: !237, line: 85, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !916, file: !237, line: 86, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !916, file: !237, line: 87, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !916, file: !237, line: 88, baseType: !13, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !916, file: !237, line: 89, baseType: !13, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !916, file: !237, line: 101, baseType: !247, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !916, file: !237, line: 103, baseType: !402, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !916, file: !237, line: 104, baseType: !91, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !916, file: !237, line: 105, baseType: !876, size: 128, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !916, file: !237, line: 106, baseType: !253, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !916, file: !237, line: 108, baseType: !934, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !237, line: 73, baseType: !858)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !916, file: !237, line: 109, baseType: !32, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !775, file: !776, line: 332, baseType: !937, size: 320, offset: 2112)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !237, line: 119, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 113, size: 320, elements: !939)
!939 = !{!940, !941, !942, !943, !944}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !938, file: !237, line: 114, baseType: !234, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !938, file: !237, line: 115, baseType: !845, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !938, file: !237, line: 116, baseType: !108, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !938, file: !237, line: 117, baseType: !402, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !938, file: !237, line: 118, baseType: !247, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !775, file: !776, line: 334, baseType: !946, size: 64, offset: 2432)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !776, line: 247, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 149, size: 4096, elements: !949)
!949 = !{!950, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1165, !1166, !1167, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !948, file: !776, line: 150, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !776, line: 79, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !776, line: 121, size: 832, elements: !954)
!954 = !{!955, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !953, file: !776, line: 122, baseType: !956, size: 192)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !776, line: 91, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 87, size: 192, elements: !958)
!958 = !{!959, !1102, !1107}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !957, file: !776, line: 88, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !776, line: 81, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!91, !964, !951}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !110, line: 16, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !161, line: 116, size: 768, elements: !967)
!967 = !{!968, !969, !971, !1084, !1085, !1086, !1095, !1096, !1097, !1098, !1099, !1101}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !966, file: !161, line: 117, baseType: !192, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !966, file: !161, line: 118, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !966, file: !161, line: 120, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !110, line: 17, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !706, line: 39, size: 5184, elements: !975)
!975 = !{!976, !979, !980, !981, !982, !983, !985, !986, !987, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !974, file: !706, line: 40, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !974, file: !706, line: 41, baseType: !402, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !974, file: !706, line: 43, baseType: !151, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !974, file: !706, line: 44, baseType: !152, size: 640, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !974, file: !706, line: 46, baseType: !27, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !974, file: !706, line: 48, baseType: !984, size: 64, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !974, file: !706, line: 49, baseType: !108, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !974, file: !706, line: 50, baseType: !27, size: 64, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !974, file: !706, line: 52, baseType: !988, size: 64, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !110, line: 15, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !992, line: 222, size: 1600, elements: !993)
!992 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "9061a5345279c977548e41d1c550ac28")
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1003, !1004, !1018, !1019, !1023, !1027, !1028, !1029, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !991, file: !992, line: 223, baseType: !27, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !991, file: !992, line: 224, baseType: !27, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !991, file: !992, line: 226, baseType: !192, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !991, file: !992, line: 228, baseType: !27, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !991, file: !992, line: 229, baseType: !27, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !991, file: !992, line: 231, baseType: !27, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !991, file: !992, line: 232, baseType: !1001, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !991, file: !992, line: 234, baseType: !32, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !991, file: !992, line: 235, baseType: !1005, size: 64, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !110, line: 22, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !161, line: 77, size: 448, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1015, !1016, !1017}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1007, file: !161, line: 78, baseType: !78, size: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1007, file: !161, line: 79, baseType: !27, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1007, file: !161, line: 80, baseType: !1012, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!192, !964, !1005, !32}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !1007, file: !161, line: 81, baseType: !27, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1007, file: !161, line: 82, baseType: !27, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !1007, file: !161, line: 83, baseType: !32, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !991, file: !992, line: 236, baseType: !27, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !991, file: !992, line: 238, baseType: !1020, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!91, !151}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !991, file: !992, line: 240, baseType: !1024, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!91, !972}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !991, file: !992, line: 242, baseType: !1024, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !991, file: !992, line: 243, baseType: !1024, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !991, file: !992, line: 244, baseType: !1030, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !972}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !991, file: !992, line: 245, baseType: !1030, size: 64, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !991, file: !992, line: 247, baseType: !1030, size: 64, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !991, file: !992, line: 249, baseType: !29, size: 64, offset: 1088)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !991, file: !992, line: 250, baseType: !29, size: 64, offset: 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !991, file: !992, line: 251, baseType: !29, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !991, file: !992, line: 252, baseType: !29, size: 64, offset: 1280)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !991, file: !992, line: 253, baseType: !29, size: 64, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !991, file: !992, line: 254, baseType: !29, size: 64, offset: 1408)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !991, file: !992, line: 255, baseType: !29, size: 64, offset: 1472)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !991, file: !992, line: 256, baseType: !29, size: 64, offset: 1536)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !974, file: !706, line: 53, baseType: !27, size: 64, offset: 1152)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !974, file: !706, line: 54, baseType: !27, size: 64, offset: 1216)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !974, file: !706, line: 56, baseType: !208, size: 128, offset: 1280)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !974, file: !706, line: 57, baseType: !27, size: 64, offset: 1408)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "connections_reuse_time", scope: !974, file: !706, line: 58, baseType: !176, size: 64, offset: 1472)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !974, file: !706, line: 60, baseType: !551, size: 320, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !974, file: !706, line: 61, baseType: !551, size: 320, offset: 1856)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !974, file: !706, line: 63, baseType: !551, size: 320, offset: 2176)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !974, file: !706, line: 64, baseType: !368, size: 192, offset: 2496)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !974, file: !706, line: 65, baseType: !195, size: 320, offset: 2688)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !974, file: !706, line: 67, baseType: !1054, size: 448, offset: 3008)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !1055, line: 31, baseType: !1056)
!1055 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1055, line: 25, size: 448, elements: !1057)
!1057 = !{!1058, !1066, !1067, !1068, !1069}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1056, file: !1055, line: 26, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !1055, line: 16, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !1055, line: 18, size: 192, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1061, file: !1055, line: 19, baseType: !32, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !1061, file: !1055, line: 20, baseType: !27, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1061, file: !1055, line: 21, baseType: !1059, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1056, file: !1055, line: 27, baseType: !1060, size: 192, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1055, line: 28, baseType: !49, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !1056, file: !1055, line: 29, baseType: !27, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1056, file: !1055, line: 30, baseType: !402, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !974, file: !706, line: 68, baseType: !1054, size: 448, offset: 3456)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !974, file: !706, line: 70, baseType: !27, size: 64, offset: 3904)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !974, file: !706, line: 71, baseType: !27, size: 64, offset: 3968)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !974, file: !706, line: 73, baseType: !108, size: 64, offset: 4032)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !974, file: !706, line: 74, baseType: !116, size: 64, offset: 4096)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !974, file: !706, line: 75, baseType: !116, size: 64, offset: 4160)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !974, file: !706, line: 77, baseType: !972, size: 64, offset: 4224)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !974, file: !706, line: 79, baseType: !78, size: 128, offset: 4288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !974, file: !706, line: 80, baseType: !78, size: 128, offset: 4416)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !974, file: !706, line: 81, baseType: !78, size: 128, offset: 4544)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !974, file: !706, line: 82, baseType: !78, size: 128, offset: 4672)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !974, file: !706, line: 83, baseType: !78, size: 128, offset: 4800)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !974, file: !706, line: 84, baseType: !78, size: 128, offset: 4928)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !974, file: !706, line: 85, baseType: !78, size: 128, offset: 5056)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !966, file: !161, line: 121, baseType: !402, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !966, file: !161, line: 122, baseType: !402, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !966, file: !161, line: 123, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !161, line: 103, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 98, size: 1792, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1089, file: !161, line: 99, baseType: !256, size: 1600)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1089, file: !161, line: 100, baseType: !240, size: 64, offset: 1600)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1089, file: !161, line: 101, baseType: !240, size: 64, offset: 1664)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1089, file: !161, line: 102, baseType: !27, size: 64, offset: 1728)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !966, file: !161, line: 124, baseType: !151, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !966, file: !161, line: 126, baseType: !32, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !966, file: !161, line: 127, baseType: !27, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !966, file: !161, line: 128, baseType: !27, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !966, file: !161, line: 130, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !161, line: 112, baseType: !1012)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !966, file: !161, line: 131, baseType: !32, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !957, file: !776, line: 89, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !776, line: 83, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!91, !97, !951}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !957, file: !776, line: 90, baseType: !32, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !953, file: !776, line: 123, baseType: !39, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !953, file: !776, line: 125, baseType: !970, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !776, line: 127, baseType: !27, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !953, file: !776, line: 128, baseType: !78, size: 128, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !953, file: !776, line: 129, baseType: !56, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !953, file: !776, line: 130, baseType: !27, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !953, file: !776, line: 131, baseType: !451, size: 16, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !953, file: !776, line: 132, baseType: !27, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !953, file: !776, line: 135, baseType: !704, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !948, file: !776, line: 152, baseType: !514, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !948, file: !776, line: 153, baseType: !514, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !948, file: !776, line: 154, baseType: !514, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !948, file: !776, line: 155, baseType: !514, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !948, file: !776, line: 157, baseType: !49, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !948, file: !776, line: 158, baseType: !49, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !948, file: !776, line: 159, baseType: !49, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !948, file: !776, line: 161, baseType: !49, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !948, file: !776, line: 162, baseType: !49, size: 64, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !948, file: !776, line: 163, baseType: !49, size: 64, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !948, file: !776, line: 165, baseType: !49, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !948, file: !776, line: 166, baseType: !49, size: 64, offset: 768)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !948, file: !776, line: 167, baseType: !49, size: 64, offset: 832)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !948, file: !776, line: 169, baseType: !876, size: 128, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !948, file: !776, line: 171, baseType: !27, size: 64, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !948, file: !776, line: 172, baseType: !27, size: 64, offset: 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !948, file: !776, line: 173, baseType: !27, size: 64, offset: 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !948, file: !776, line: 174, baseType: !27, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !948, file: !776, line: 175, baseType: !1136, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !28, line: 80, baseType: !92)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !948, file: !776, line: 176, baseType: !1136, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !948, file: !776, line: 177, baseType: !1136, size: 64, offset: 1408)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !948, file: !776, line: 178, baseType: !1136, size: 64, offset: 1472)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !948, file: !776, line: 180, baseType: !1136, size: 64, offset: 1536)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !948, file: !776, line: 181, baseType: !1136, size: 64, offset: 1600)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !948, file: !776, line: 182, baseType: !1136, size: 64, offset: 1664)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !948, file: !776, line: 183, baseType: !1136, size: 64, offset: 1728)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !948, file: !776, line: 185, baseType: !670, size: 64, offset: 1792)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !948, file: !776, line: 187, baseType: !1146, size: 128, offset: 1856)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1147, line: 26, baseType: !1148)
!1147 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "e6331f5643d16a5ec3f7326c3479fef3")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 23, size: 128, elements: !1149)
!1149 = !{!1150, !1164}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1148, file: !1147, line: 24, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1147, line: 20, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 16, size: 128, elements: !1155)
!1155 = !{!1156, !1157, !1160}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1154, file: !1147, line: 17, baseType: !32, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1154, file: !1147, line: 18, baseType: !1158, size: 16, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !58, line: 34, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !60, line: 32, baseType: !338)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1154, file: !1147, line: 19, baseType: !1161, size: 8, offset: 80)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 1)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1148, file: !1147, line: 25, baseType: !27, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !948, file: !776, line: 188, baseType: !970, size: 64, offset: 1984)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !948, file: !776, line: 189, baseType: !970, size: 64, offset: 2048)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !948, file: !776, line: 191, baseType: !1168, size: 64, offset: 2112)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !776, line: 146, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 140, size: 192, elements: !1171)
!1171 = !{!1172, !1173, !1187}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1170, file: !776, line: 141, baseType: !818, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1170, file: !776, line: 142, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !45, line: 75, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 66, size: 384, elements: !1177)
!1177 = !{!1178, !1179, !1181, !1182, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1176, file: !45, line: 67, baseType: !78, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1176, file: !45, line: 68, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1176, file: !45, line: 69, baseType: !32, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1176, file: !45, line: 70, baseType: !32, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1176, file: !45, line: 74, baseType: !1184, size: 64, offset: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !45, line: 72, size: 64, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1184, file: !45, line: 73, baseType: !49, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1170, file: !776, line: 144, baseType: !27, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !948, file: !776, line: 192, baseType: !1136, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !948, file: !776, line: 195, baseType: !704, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !948, file: !776, line: 196, baseType: !1174, size: 64, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !948, file: !776, line: 198, baseType: !27, size: 64, offset: 2368)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !948, file: !776, line: 199, baseType: !27, size: 64, offset: 2432)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !948, file: !776, line: 200, baseType: !27, size: 64, offset: 2496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !948, file: !776, line: 202, baseType: !247, size: 64, offset: 2560)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !948, file: !776, line: 204, baseType: !1136, size: 64, offset: 2624)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !948, file: !776, line: 205, baseType: !514, size: 64, offset: 2688)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !948, file: !776, line: 206, baseType: !514, size: 64, offset: 2752)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !948, file: !776, line: 208, baseType: !1136, size: 64, offset: 2816)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !948, file: !776, line: 209, baseType: !1136, size: 64, offset: 2880)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !948, file: !776, line: 210, baseType: !1136, size: 64, offset: 2944)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !948, file: !776, line: 212, baseType: !970, size: 64, offset: 3008)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !948, file: !776, line: 213, baseType: !970, size: 64, offset: 3072)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !948, file: !776, line: 214, baseType: !970, size: 64, offset: 3136)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !948, file: !776, line: 215, baseType: !970, size: 64, offset: 3200)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !948, file: !776, line: 218, baseType: !970, size: 64, offset: 3264)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !948, file: !776, line: 219, baseType: !970, size: 64, offset: 3328)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !948, file: !776, line: 222, baseType: !143, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !948, file: !776, line: 224, baseType: !143, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !948, file: !776, line: 225, baseType: !13, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !948, file: !776, line: 226, baseType: !13, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !948, file: !776, line: 227, baseType: !13, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !948, file: !776, line: 228, baseType: !13, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !948, file: !776, line: 231, baseType: !1214, size: 64, offset: 3456)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !110, line: 28, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !461, line: 81, size: 192, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1216, file: !461, line: 82, baseType: !469, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1216, file: !461, line: 83, baseType: !151, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1216, file: !461, line: 84, baseType: !49, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !948, file: !776, line: 232, baseType: !1136, size: 64, offset: 3520)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !948, file: !776, line: 234, baseType: !1174, size: 64, offset: 3584)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !948, file: !776, line: 235, baseType: !1136, size: 64, offset: 3648)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !948, file: !776, line: 236, baseType: !1136, size: 64, offset: 3712)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_certificate", scope: !948, file: !776, line: 238, baseType: !1174, size: 64, offset: 3776)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_certificate_key", scope: !948, file: !776, line: 239, baseType: !1174, size: 64, offset: 3840)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_passwords", scope: !948, file: !776, line: 240, baseType: !970, size: 64, offset: 3904)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !948, file: !776, line: 243, baseType: !78, size: 128, offset: 3968)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !775, file: !776, line: 335, baseType: !951, size: 64, offset: 2496)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !775, file: !776, line: 337, baseType: !970, size: 64, offset: 2560)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !775, file: !776, line: 340, baseType: !1232, size: 2496, offset: 2624)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !776, line: 298, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 260, size: 2496, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1233, file: !776, line: 261, baseType: !1054, size: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1233, file: !776, line: 262, baseType: !1054, size: 448, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1233, file: !776, line: 264, baseType: !27, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1233, file: !776, line: 265, baseType: !78, size: 128, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1233, file: !776, line: 267, baseType: !1240, size: 64, offset: 1088)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1147, line: 92, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_table_elt_s", file: !1147, line: 94, size: 448, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1242, file: !1147, line: 95, baseType: !27, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1242, file: !1147, line: 96, baseType: !78, size: 128, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1242, file: !1147, line: 97, baseType: !78, size: 128, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1242, file: !1147, line: 98, baseType: !56, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !1147, line: 99, baseType: !1240, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1233, file: !776, line: 268, baseType: !1240, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1233, file: !776, line: 269, baseType: !1240, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1233, file: !776, line: 270, baseType: !1240, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1233, file: !776, line: 272, baseType: !1240, size: 64, offset: 1344)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1233, file: !776, line: 273, baseType: !1240, size: 64, offset: 1408)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1233, file: !776, line: 274, baseType: !1240, size: 64, offset: 1472)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1233, file: !776, line: 275, baseType: !1240, size: 64, offset: 1536)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1233, file: !776, line: 276, baseType: !1240, size: 64, offset: 1600)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1233, file: !776, line: 278, baseType: !1240, size: 64, offset: 1664)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1233, file: !776, line: 279, baseType: !1240, size: 64, offset: 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1233, file: !776, line: 281, baseType: !1240, size: 64, offset: 1792)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1233, file: !776, line: 282, baseType: !1240, size: 64, offset: 1856)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1233, file: !776, line: 283, baseType: !1240, size: 64, offset: 1920)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1233, file: !776, line: 284, baseType: !1240, size: 64, offset: 1984)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1233, file: !776, line: 285, baseType: !1240, size: 64, offset: 2048)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1233, file: !776, line: 286, baseType: !1240, size: 64, offset: 2112)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1233, file: !776, line: 288, baseType: !1240, size: 64, offset: 2176)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "set_cookie", scope: !1233, file: !776, line: 289, baseType: !1240, size: 64, offset: 2240)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1233, file: !776, line: 291, baseType: !247, size: 64, offset: 2304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1233, file: !776, line: 292, baseType: !176, size: 64, offset: 2368)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1233, file: !776, line: 294, baseType: !13, size: 1, offset: 2432, flags: DIFlagBitField, extraData: i64 2432)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1233, file: !776, line: 295, baseType: !13, size: 1, offset: 2433, flags: DIFlagBitField, extraData: i64 2432)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1233, file: !776, line: 296, baseType: !13, size: 1, offset: 2434, flags: DIFlagBitField, extraData: i64 2432)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "expired", scope: !1233, file: !776, line: 297, baseType: !13, size: 1, offset: 2435, flags: DIFlagBitField, extraData: i64 2432)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !775, file: !776, line: 342, baseType: !1274, size: 64, offset: 5120)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !776, line: 314, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 301, size: 704, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1293, !1294, !1295, !1296}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1276, file: !776, line: 302, baseType: !78, size: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1276, file: !776, line: 303, baseType: !451, size: 16, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1276, file: !776, line: 304, baseType: !27, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1276, file: !776, line: 306, baseType: !27, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1276, file: !776, line: 307, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1285, line: 67, baseType: !1286)
!1285 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "515bb0b09fb63c8cc635703c8e1a7e3c")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 61, size: 320, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1286, file: !1285, line: 62, baseType: !331, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1286, file: !1285, line: 63, baseType: !344, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1286, file: !1285, line: 64, baseType: !78, size: 128, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1286, file: !1285, line: 65, baseType: !1158, size: 16, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1286, file: !1285, line: 66, baseType: !1158, size: 16, offset: 272)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1276, file: !776, line: 309, baseType: !331, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1276, file: !776, line: 310, baseType: !344, size: 32, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !776, line: 311, baseType: !78, size: 128, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1276, file: !776, line: 313, baseType: !1297, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1285, line: 56, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1285, line: 197, size: 1792, elements: !1300)
!1300 = !{!1301, !1302, !1336, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1418, !1419, !1420, !1433, !1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1299, file: !1285, line: 198, baseType: !1297, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1299, file: !1285, line: 199, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1285, line: 40, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1285, line: 148, size: 4096, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1305, file: !1285, line: 150, baseType: !116, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1305, file: !1285, line: 151, baseType: !32, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1305, file: !1285, line: 152, baseType: !151, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1305, file: !1285, line: 155, baseType: !91, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1305, file: !1285, line: 158, baseType: !551, size: 320, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1305, file: !1285, line: 159, baseType: !27, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1305, file: !1285, line: 161, baseType: !368, size: 192, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1305, file: !1285, line: 162, baseType: !195, size: 320, offset: 832)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1305, file: !1285, line: 164, baseType: !368, size: 192, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1305, file: !1285, line: 165, baseType: !195, size: 320, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1305, file: !1285, line: 167, baseType: !368, size: 192, offset: 1664)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1305, file: !1285, line: 168, baseType: !195, size: 320, offset: 1856)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1305, file: !1285, line: 170, baseType: !208, size: 128, offset: 2176)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1305, file: !1285, line: 171, baseType: !208, size: 128, offset: 2304)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1305, file: !1285, line: 172, baseType: !208, size: 128, offset: 2432)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1305, file: !1285, line: 174, baseType: !208, size: 128, offset: 2560)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1305, file: !1285, line: 175, baseType: !208, size: 128, offset: 2688)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1305, file: !1285, line: 176, baseType: !208, size: 128, offset: 2816)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !1305, file: !1285, line: 178, baseType: !13, size: 1, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1305, file: !1285, line: 181, baseType: !13, size: 1, offset: 2945, flags: DIFlagBitField, extraData: i64 2944)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1305, file: !1285, line: 182, baseType: !368, size: 192, offset: 3008)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1305, file: !1285, line: 183, baseType: !195, size: 320, offset: 3200)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1305, file: !1285, line: 184, baseType: !208, size: 128, offset: 3520)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1305, file: !1285, line: 185, baseType: !208, size: 128, offset: 3648)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1305, file: !1285, line: 188, baseType: !176, size: 64, offset: 3776)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1305, file: !1285, line: 189, baseType: !176, size: 64, offset: 3840)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1305, file: !1285, line: 190, baseType: !176, size: 64, offset: 3904)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1305, file: !1285, line: 191, baseType: !176, size: 64, offset: 3968)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1305, file: !1285, line: 193, baseType: !27, size: 64, offset: 4032)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1299, file: !1285, line: 200, baseType: !1337, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1285, line: 145, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 92, size: 1472, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1360, !1361, !1362, !1363, !1364, !1381, !1382, !1383, !1384, !1385, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1339, file: !1285, line: 93, baseType: !195, size: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1339, file: !1285, line: 94, baseType: !208, size: 128, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1339, file: !1285, line: 97, baseType: !56, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1339, file: !1285, line: 101, baseType: !1345, size: 128, offset: 512)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !452, line: 219, size: 128, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1345, file: !452, line: 226, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !452, line: 221, size: 128, elements: !1349)
!1349 = !{!1350, !1354, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1348, file: !452, line: 223, baseType: !1351, size: 128)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 128, elements: !563)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !105, line: 24, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !60, line: 38, baseType: !61)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1348, file: !452, line: 224, baseType: !1355, size: 128)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 128, elements: !738)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1348, file: !452, line: 225, baseType: !1357, size: 128)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 4)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1339, file: !1285, line: 104, baseType: !1158, size: 16, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1339, file: !1285, line: 105, baseType: !1158, size: 16, offset: 656)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1339, file: !1285, line: 107, baseType: !56, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1339, file: !1285, line: 109, baseType: !56, size: 64, offset: 768)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1339, file: !1285, line: 117, baseType: !1365, size: 64, offset: 832)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1285, line: 112, size: 64, elements: !1366)
!1366 = !{!1367, !1369, !1371, !1372}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1365, file: !1285, line: 113, baseType: !1368, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !452, line: 30, baseType: !104)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1365, file: !1285, line: 114, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1365, file: !1285, line: 115, baseType: !56, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1365, file: !1285, line: 116, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1285, line: 75, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 70, size: 192, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1375, file: !1285, line: 71, baseType: !78, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1375, file: !1285, line: 72, baseType: !1158, size: 16, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1375, file: !1285, line: 73, baseType: !1158, size: 16, offset: 144)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1375, file: !1285, line: 74, baseType: !1158, size: 16, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1339, file: !1285, line: 119, baseType: !57, size: 8, offset: 896)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1339, file: !1285, line: 120, baseType: !1158, size: 16, offset: 912)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1339, file: !1285, line: 121, baseType: !1158, size: 16, offset: 928)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1339, file: !1285, line: 122, baseType: !1158, size: 16, offset: 944)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1339, file: !1285, line: 128, baseType: !1386, size: 128, offset: 960)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !1285, line: 125, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1386, file: !1285, line: 126, baseType: !1345, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1386, file: !1285, line: 127, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1339, file: !1285, line: 130, baseType: !1158, size: 16, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1339, file: !1285, line: 133, baseType: !176, size: 64, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1339, file: !1285, line: 134, baseType: !176, size: 64, offset: 1216)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1339, file: !1285, line: 135, baseType: !104, size: 32, offset: 1280)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1339, file: !1285, line: 137, baseType: !13, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1339, file: !1285, line: 139, baseType: !13, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1339, file: !1285, line: 142, baseType: !27, size: 64, offset: 1344)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1339, file: !1285, line: 144, baseType: !1297, size: 64, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1299, file: !1285, line: 203, baseType: !91, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1299, file: !1285, line: 205, baseType: !91, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1299, file: !1285, line: 206, baseType: !78, size: 128, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1299, file: !1285, line: 207, baseType: !78, size: 128, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1299, file: !1285, line: 209, baseType: !176, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1299, file: !1285, line: 210, baseType: !27, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1299, file: !1285, line: 211, baseType: !1283, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1299, file: !1285, line: 212, baseType: !1284, size: 320, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1299, file: !1285, line: 213, baseType: !1408, size: 128, offset: 1088)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !452, line: 245, size: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1416}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1408, file: !452, line: 247, baseType: !336, size: 16)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1408, file: !452, line: 248, baseType: !451, size: 16, offset: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1408, file: !452, line: 249, baseType: !1413, size: 32, offset: 32)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !452, line: 31, size: 32, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1413, file: !452, line: 33, baseType: !1368, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1408, file: !452, line: 252, baseType: !1417, size: 64, offset: 64)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !738)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1299, file: !1285, line: 215, baseType: !27, size: 64, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1299, file: !1285, line: 216, baseType: !27, size: 64, offset: 1280)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1299, file: !1285, line: 217, baseType: !1421, size: 64, offset: 1344)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1285, line: 89, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 78, size: 448, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1423, file: !1285, line: 79, baseType: !78, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1423, file: !1285, line: 80, baseType: !1158, size: 16, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1423, file: !1285, line: 81, baseType: !1158, size: 16, offset: 144)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1423, file: !1285, line: 82, baseType: !1158, size: 16, offset: 160)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1423, file: !1285, line: 84, baseType: !1297, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1423, file: !1285, line: 85, baseType: !91, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1423, file: !1285, line: 87, baseType: !27, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1423, file: !1285, line: 88, baseType: !818, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1299, file: !1285, line: 219, baseType: !1434, size: 64, offset: 1408)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1285, line: 58, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1297}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1299, file: !1285, line: 220, baseType: !32, size: 64, offset: 1472)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1299, file: !1285, line: 221, baseType: !514, size: 64, offset: 1536)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1299, file: !1285, line: 223, baseType: !13, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1299, file: !1285, line: 224, baseType: !13, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1299, file: !1285, line: 225, baseType: !13, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1299, file: !1285, line: 226, baseType: !27, size: 64, offset: 1664)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1299, file: !1285, line: 227, baseType: !116, size: 64, offset: 1728)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !775, file: !776, line: 344, baseType: !241, size: 640, offset: 5184)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !775, file: !776, line: 346, baseType: !241, size: 640, offset: 5824)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !775, file: !776, line: 347, baseType: !247, size: 64, offset: 6464)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !775, file: !776, line: 349, baseType: !234, size: 64, offset: 6528)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !775, file: !776, line: 350, baseType: !234, size: 64, offset: 6592)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !775, file: !776, line: 351, baseType: !234, size: 64, offset: 6656)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !775, file: !776, line: 353, baseType: !1452, size: 64, offset: 6720)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!91, !32}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !775, file: !776, line: 354, baseType: !1456, size: 64, offset: 6784)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!91, !32, !225}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !775, file: !776, line: 355, baseType: !32, size: 64, offset: 6848)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !775, file: !776, line: 358, baseType: !1461, size: 64, offset: 6912)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!91, !97}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !775, file: !776, line: 360, baseType: !1461, size: 64, offset: 6976)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !775, file: !776, line: 361, baseType: !1461, size: 64, offset: 7040)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !775, file: !776, line: 362, baseType: !1461, size: 64, offset: 7104)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !775, file: !776, line: 363, baseType: !539, size: 64, offset: 7168)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !775, file: !776, line: 364, baseType: !1469, size: 64, offset: 7232)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !97, !91}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !775, file: !776, line: 366, baseType: !1473, size: 64, offset: 7296)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!91, !97, !1240, !49}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !775, file: !776, line: 368, baseType: !1477, size: 64, offset: 7360)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!91, !97, !1240}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !775, file: !776, line: 371, baseType: !514, size: 64, offset: 7424)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !775, file: !776, line: 373, baseType: !1482, size: 64, offset: 7488)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !776, line: 70, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !776, line: 59, size: 576, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1484, file: !776, line: 60, baseType: !27, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1484, file: !776, line: 61, baseType: !514, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1484, file: !776, line: 62, baseType: !514, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1484, file: !776, line: 63, baseType: !514, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1484, file: !776, line: 64, baseType: !514, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1484, file: !776, line: 65, baseType: !247, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1484, file: !776, line: 66, baseType: !247, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1484, file: !776, line: 67, baseType: !247, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1484, file: !776, line: 69, baseType: !793, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !775, file: !776, line: 375, baseType: !78, size: 128, offset: 7552)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !775, file: !776, line: 376, baseType: !78, size: 128, offset: 7680)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !775, file: !776, line: 377, baseType: !78, size: 128, offset: 7808)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !775, file: !776, line: 380, baseType: !78, size: 128, offset: 7936)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !775, file: !776, line: 383, baseType: !1500, size: 64, offset: 8064)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !101, line: 336, baseType: !432)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !775, file: !776, line: 385, baseType: !13, size: 1, offset: 8128, flags: DIFlagBitField, extraData: i64 8128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !775, file: !776, line: 386, baseType: !13, size: 1, offset: 8129, flags: DIFlagBitField, extraData: i64 8128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !775, file: !776, line: 387, baseType: !13, size: 1, offset: 8130, flags: DIFlagBitField, extraData: i64 8128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !775, file: !776, line: 388, baseType: !13, size: 1, offset: 8131, flags: DIFlagBitField, extraData: i64 8128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !775, file: !776, line: 390, baseType: !13, size: 3, offset: 8132, flags: DIFlagBitField, extraData: i64 8128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !775, file: !776, line: 393, baseType: !13, size: 1, offset: 8135, flags: DIFlagBitField, extraData: i64 8128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !775, file: !776, line: 394, baseType: !13, size: 1, offset: 8136, flags: DIFlagBitField, extraData: i64 8128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !775, file: !776, line: 395, baseType: !13, size: 1, offset: 8137, flags: DIFlagBitField, extraData: i64 8128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !775, file: !776, line: 396, baseType: !13, size: 1, offset: 8138, flags: DIFlagBitField, extraData: i64 8128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !775, file: !776, line: 398, baseType: !13, size: 1, offset: 8139, flags: DIFlagBitField, extraData: i64 8128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !775, file: !776, line: 399, baseType: !13, size: 1, offset: 8140, flags: DIFlagBitField, extraData: i64 8128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !775, file: !776, line: 400, baseType: !13, size: 1, offset: 8141, flags: DIFlagBitField, extraData: i64 8128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !775, file: !776, line: 401, baseType: !13, size: 1, offset: 8142, flags: DIFlagBitField, extraData: i64 8128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !100, file: !101, line: 395, baseType: !970, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !100, file: !101, line: 398, baseType: !402, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !100, file: !101, line: 399, baseType: !240, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !100, file: !101, line: 401, baseType: !1519, size: 2496, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !101, line: 254, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 182, size: 2496, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1520, file: !101, line: 183, baseType: !1054, size: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1520, file: !101, line: 185, baseType: !1240, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1520, file: !101, line: 186, baseType: !1240, size: 64, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1520, file: !101, line: 187, baseType: !1240, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1520, file: !101, line: 188, baseType: !1240, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1520, file: !101, line: 189, baseType: !1240, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1520, file: !101, line: 190, baseType: !1240, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1520, file: !101, line: 191, baseType: !1240, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1520, file: !101, line: 192, baseType: !1240, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1520, file: !101, line: 193, baseType: !1240, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1520, file: !101, line: 194, baseType: !1240, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1520, file: !101, line: 195, baseType: !1240, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1520, file: !101, line: 197, baseType: !1240, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1520, file: !101, line: 198, baseType: !1240, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1520, file: !101, line: 200, baseType: !1240, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1520, file: !101, line: 201, baseType: !1240, size: 64, offset: 1344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1520, file: !101, line: 202, baseType: !1240, size: 64, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1520, file: !101, line: 203, baseType: !1240, size: 64, offset: 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1520, file: !101, line: 206, baseType: !1240, size: 64, offset: 1536)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1520, file: !101, line: 207, baseType: !1240, size: 64, offset: 1600)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1520, file: !101, line: 210, baseType: !1240, size: 64, offset: 1664)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1520, file: !101, line: 212, baseType: !1240, size: 64, offset: 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1520, file: !101, line: 215, baseType: !1240, size: 64, offset: 1792)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1520, file: !101, line: 234, baseType: !1240, size: 64, offset: 1856)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1520, file: !101, line: 236, baseType: !78, size: 128, offset: 1920)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1520, file: !101, line: 237, baseType: !78, size: 128, offset: 2048)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1520, file: !101, line: 239, baseType: !78, size: 128, offset: 2176)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1520, file: !101, line: 240, baseType: !247, size: 64, offset: 2304)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1520, file: !101, line: 241, baseType: !176, size: 64, offset: 2368)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1520, file: !101, line: 243, baseType: !13, size: 2, offset: 2432, flags: DIFlagBitField, extraData: i64 2432)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1520, file: !101, line: 244, baseType: !13, size: 1, offset: 2434, flags: DIFlagBitField, extraData: i64 2432)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !1520, file: !101, line: 245, baseType: !13, size: 1, offset: 2435, flags: DIFlagBitField, extraData: i64 2432)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "multi_linked", scope: !1520, file: !101, line: 246, baseType: !13, size: 1, offset: 2436, flags: DIFlagBitField, extraData: i64 2432)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1520, file: !101, line: 247, baseType: !13, size: 1, offset: 2437, flags: DIFlagBitField, extraData: i64 2432)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1520, file: !101, line: 248, baseType: !13, size: 1, offset: 2438, flags: DIFlagBitField, extraData: i64 2432)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1520, file: !101, line: 249, baseType: !13, size: 1, offset: 2439, flags: DIFlagBitField, extraData: i64 2432)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1520, file: !101, line: 250, baseType: !13, size: 1, offset: 2440, flags: DIFlagBitField, extraData: i64 2432)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1520, file: !101, line: 251, baseType: !13, size: 1, offset: 2441, flags: DIFlagBitField, extraData: i64 2432)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1520, file: !101, line: 252, baseType: !13, size: 1, offset: 2442, flags: DIFlagBitField, extraData: i64 2432)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1520, file: !101, line: 253, baseType: !13, size: 1, offset: 2443, flags: DIFlagBitField, extraData: i64 2432)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !100, file: !101, line: 402, baseType: !1563, size: 2752, offset: 3328)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !101, line: 292, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 257, size: 2752, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1564, file: !101, line: 258, baseType: !1054, size: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1564, file: !101, line: 259, baseType: !1054, size: 448, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1564, file: !101, line: 261, baseType: !27, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1564, file: !101, line: 262, baseType: !78, size: 128, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1564, file: !101, line: 264, baseType: !1240, size: 64, offset: 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1564, file: !101, line: 265, baseType: !1240, size: 64, offset: 1152)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1564, file: !101, line: 266, baseType: !1240, size: 64, offset: 1216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1564, file: !101, line: 267, baseType: !1240, size: 64, offset: 1280)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1564, file: !101, line: 268, baseType: !1240, size: 64, offset: 1344)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1564, file: !101, line: 269, baseType: !1240, size: 64, offset: 1408)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1564, file: !101, line: 270, baseType: !1240, size: 64, offset: 1472)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1564, file: !101, line: 271, baseType: !1240, size: 64, offset: 1536)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1564, file: !101, line: 272, baseType: !1240, size: 64, offset: 1600)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1564, file: !101, line: 273, baseType: !1240, size: 64, offset: 1664)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1564, file: !101, line: 274, baseType: !1240, size: 64, offset: 1728)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1564, file: !101, line: 275, baseType: !1240, size: 64, offset: 1792)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1564, file: !101, line: 277, baseType: !1240, size: 64, offset: 1856)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1564, file: !101, line: 278, baseType: !1240, size: 64, offset: 1920)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1564, file: !101, line: 280, baseType: !793, size: 64, offset: 1984)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1564, file: !101, line: 282, baseType: !49, size: 64, offset: 2048)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1564, file: !101, line: 283, baseType: !78, size: 128, offset: 2112)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1564, file: !101, line: 284, baseType: !78, size: 128, offset: 2240)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1564, file: !101, line: 285, baseType: !56, size: 64, offset: 2368)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1564, file: !101, line: 286, baseType: !27, size: 64, offset: 2432)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1564, file: !101, line: 288, baseType: !247, size: 64, offset: 2496)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1564, file: !101, line: 289, baseType: !247, size: 64, offset: 2560)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1564, file: !101, line: 290, baseType: !176, size: 64, offset: 2624)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1564, file: !101, line: 291, baseType: !176, size: 64, offset: 2688)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !100, file: !101, line: 404, baseType: !1595, size: 64, offset: 6080)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !101, line: 310, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 297, size: 640, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1614, !1616, !1617, !1618}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1597, file: !101, line: 298, baseType: !898, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1597, file: !101, line: 299, baseType: !234, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1597, file: !101, line: 300, baseType: !240, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1597, file: !101, line: 301, baseType: !247, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1597, file: !101, line: 302, baseType: !247, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1597, file: !101, line: 303, baseType: !234, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1597, file: !101, line: 304, baseType: !234, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1597, file: !101, line: 305, baseType: !1607, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !99, line: 21, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !99, line: 59, size: 192, elements: !1610)
!1610 = !{!1611, !1612, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1609, file: !99, line: 60, baseType: !27, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1609, file: !99, line: 61, baseType: !247, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1609, file: !99, line: 62, baseType: !247, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1597, file: !101, line: 306, baseType: !1615, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !101, line: 295, baseType: !539)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_buffering", scope: !1597, file: !101, line: 307, baseType: !13, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "last_sent", scope: !1597, file: !101, line: 308, baseType: !13, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "last_saved", scope: !1597, file: !101, line: 309, baseType: !13, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !100, file: !101, line: 406, baseType: !176, size: 64, offset: 6144)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !100, file: !101, line: 407, baseType: !176, size: 64, offset: 6208)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !100, file: !101, line: 408, baseType: !514, size: 64, offset: 6272)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !100, file: !101, line: 410, baseType: !27, size: 64, offset: 6336)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !100, file: !101, line: 411, baseType: !27, size: 64, offset: 6400)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !100, file: !101, line: 413, baseType: !78, size: 128, offset: 6464)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !100, file: !101, line: 414, baseType: !78, size: 128, offset: 6592)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !100, file: !101, line: 415, baseType: !78, size: 128, offset: 6720)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !100, file: !101, line: 416, baseType: !78, size: 128, offset: 6848)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !100, file: !101, line: 417, baseType: !78, size: 128, offset: 6976)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !100, file: !101, line: 419, baseType: !78, size: 128, offset: 7104)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !100, file: !101, line: 420, baseType: !78, size: 128, offset: 7232)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !100, file: !101, line: 421, baseType: !78, size: 128, offset: 7360)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !100, file: !101, line: 423, baseType: !234, size: 64, offset: 7488)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !100, file: !101, line: 424, baseType: !97, size: 64, offset: 7552)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !101, line: 425, baseType: !97, size: 64, offset: 7616)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !100, file: !101, line: 426, baseType: !1636, size: 64, offset: 7680)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !101, line: 356, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !101, line: 358, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1638, file: !101, line: 359, baseType: !97, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1638, file: !101, line: 360, baseType: !234, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1638, file: !101, line: 361, baseType: !1636, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !100, file: !101, line: 427, baseType: !1644, size: 64, offset: 7744)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !101, line: 353, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 350, size: 128, elements: !1647)
!1647 = !{!1648, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1646, file: !101, line: 351, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !101, line: 347, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!91, !97, !32, !91}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1646, file: !101, line: 352, baseType: !32, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !100, file: !101, line: 428, baseType: !1655, size: 64, offset: 7808)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !101, line: 365, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !101, line: 367, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1657, file: !101, line: 368, baseType: !97, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1657, file: !101, line: 369, baseType: !1655, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !100, file: !101, line: 430, baseType: !91, size: 64, offset: 7872)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !100, file: !101, line: 431, baseType: !1663, size: 64, offset: 7936)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !101, line: 373, baseType: !1461)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !100, file: !101, line: 432, baseType: !27, size: 64, offset: 8000)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !100, file: !101, line: 434, baseType: !64, size: 64, offset: 8064)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !100, file: !101, line: 437, baseType: !27, size: 64, offset: 8128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !100, file: !101, line: 438, baseType: !1668, size: 64, offset: 8192)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "captures_data", scope: !100, file: !101, line: 439, baseType: !56, size: 64, offset: 8256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !100, file: !101, line: 442, baseType: !49, size: 64, offset: 8320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !100, file: !101, line: 443, baseType: !49, size: 64, offset: 8384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !100, file: !101, line: 446, baseType: !49, size: 64, offset: 8448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !100, file: !101, line: 448, baseType: !247, size: 64, offset: 8512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !100, file: !101, line: 450, baseType: !27, size: 64, offset: 8576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !100, file: !101, line: 452, baseType: !1676, size: 64, offset: 8640)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !101, line: 333, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 315, size: 512, elements: !1679)
!1679 = !{!1680, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1678, file: !101, line: 316, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !101, line: 313, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !12, line: 232, size: 192, elements: !1684)
!1684 = !{!1685, !1844, !1871, !1872, !1873}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1683, file: !12, line: 234, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !12, line: 209, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 179, size: 1344, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1688, file: !12, line: 181, baseType: !551, size: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1688, file: !12, line: 184, baseType: !33, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1688, file: !12, line: 186, baseType: !56, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1688, file: !12, line: 187, baseType: !27, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1688, file: !12, line: 189, baseType: !78, size: 128, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1688, file: !12, line: 191, baseType: !49, size: 64, offset: 640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1688, file: !12, line: 192, baseType: !49, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1688, file: !12, line: 193, baseType: !49, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1688, file: !12, line: 195, baseType: !876, size: 128, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1688, file: !12, line: 197, baseType: !514, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1688, file: !12, line: 199, baseType: !1136, size: 64, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1688, file: !12, line: 200, baseType: !1136, size: 64, offset: 1088)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1688, file: !12, line: 201, baseType: !1136, size: 64, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1688, file: !12, line: 203, baseType: !13, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !1688, file: !12, line: 205, baseType: !13, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1688, file: !12, line: 208, baseType: !1706, size: 64, offset: 1280)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !12, line: 64, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !12, line: 304, size: 5632, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !12, line: 305, baseType: !78, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "escaped_name", scope: !1709, file: !12, line: 306, baseType: !78, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1709, file: !12, line: 309, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_regex_t", file: !66, line: 79, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 73, size: 384, elements: !1717)
!1717 = !{!1718, !1725, !1726, !1733, !1734}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1716, file: !66, line: 74, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_regex_t", file: !1721, line: 23, baseType: !1722)
!1721 = !DIFile(filename: "src/core/ngx_regex.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "75910ba0759253aa562cd0685d954212")
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcre2_code_8", file: !1723, line: 935, baseType: !1724)
!1723 = !DIFile(filename: "/usr/include/pcre2.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5a698268d588d6d01eeceb6470dc1b")
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcre2_real_code_8", file: !1723, line: 935, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !1716, file: !66, line: 75, baseType: !27, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !1716, file: !66, line: 76, baseType: !1727, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_regex_variable_t", file: !66, line: 70, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 67, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !1729, file: !66, line: 68, baseType: !27, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1729, file: !66, line: 69, baseType: !91, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !1716, file: !66, line: 77, baseType: !27, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !66, line: 78, baseType: !78, size: 128, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1709, file: !12, line: 312, baseType: !13, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1709, file: !12, line: 313, baseType: !13, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1709, file: !12, line: 314, baseType: !13, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1709, file: !12, line: 316, baseType: !13, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1709, file: !12, line: 317, baseType: !13, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1709, file: !12, line: 319, baseType: !13, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1709, file: !12, line: 321, baseType: !13, size: 2, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1709, file: !12, line: 322, baseType: !13, size: 2, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1709, file: !12, line: 325, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !12, line: 63, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !12, line: 462, size: 384, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1746, file: !12, line: 463, baseType: !1744, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1746, file: !12, line: 464, baseType: !1744, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1746, file: !12, line: 465, baseType: !1744, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1746, file: !12, line: 467, baseType: !1707, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1746, file: !12, line: 468, baseType: !1707, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1746, file: !12, line: 470, baseType: !1158, size: 16, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1746, file: !12, line: 471, baseType: !57, size: 8, offset: 336)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1746, file: !12, line: 472, baseType: !1161, size: 8, offset: 344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "regex_locations", scope: !1709, file: !12, line: 327, baseType: !1706, size: 64, offset: 448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1709, file: !12, line: 331, baseType: !39, size: 64, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1709, file: !12, line: 333, baseType: !104, size: 32, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1709, file: !12, line: 334, baseType: !39, size: 64, offset: 640)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1709, file: !12, line: 336, baseType: !1663, size: 64, offset: 704)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1709, file: !12, line: 339, baseType: !49, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1709, file: !12, line: 340, baseType: !78, size: 128, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1709, file: !12, line: 341, baseType: !78, size: 128, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1709, file: !12, line: 343, baseType: !970, size: 64, offset: 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1709, file: !12, line: 344, baseType: !970, size: 64, offset: 1152)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1709, file: !12, line: 346, baseType: !970, size: 64, offset: 1216)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1709, file: !12, line: 347, baseType: !1146, size: 128, offset: 1280)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1709, file: !12, line: 348, baseType: !78, size: 128, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1709, file: !12, line: 350, baseType: !247, size: 64, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1709, file: !12, line: 351, baseType: !247, size: 64, offset: 1600)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1709, file: !12, line: 352, baseType: !247, size: 64, offset: 1664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1709, file: !12, line: 354, baseType: !49, size: 64, offset: 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1709, file: !12, line: 355, baseType: !49, size: 64, offset: 1792)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1709, file: !12, line: 356, baseType: !49, size: 64, offset: 1856)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1709, file: !12, line: 357, baseType: !49, size: 64, offset: 1920)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1709, file: !12, line: 358, baseType: !49, size: 64, offset: 1984)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1709, file: !12, line: 359, baseType: !49, size: 64, offset: 2048)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1709, file: !12, line: 362, baseType: !1174, size: 64, offset: 2112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1709, file: !12, line: 363, baseType: !1174, size: 64, offset: 2176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1709, file: !12, line: 365, baseType: !514, size: 64, offset: 2240)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1709, file: !12, line: 366, baseType: !514, size: 64, offset: 2304)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_time", scope: !1709, file: !12, line: 367, baseType: !514, size: 64, offset: 2368)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1709, file: !12, line: 368, baseType: !514, size: 64, offset: 2432)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1709, file: !12, line: 369, baseType: !514, size: 64, offset: 2496)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1709, file: !12, line: 370, baseType: !514, size: 64, offset: 2560)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1709, file: !12, line: 371, baseType: !514, size: 64, offset: 2624)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "auth_delay", scope: !1709, file: !12, line: 372, baseType: !514, size: 64, offset: 2688)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1709, file: !12, line: 374, baseType: !1303, size: 64, offset: 2752)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1709, file: !12, line: 376, baseType: !176, size: 64, offset: 2816)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1709, file: !12, line: 378, baseType: !27, size: 64, offset: 2880)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1709, file: !12, line: 379, baseType: !27, size: 64, offset: 2944)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1709, file: !12, line: 380, baseType: !27, size: 64, offset: 3008)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1709, file: !12, line: 381, baseType: !27, size: 64, offset: 3072)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1709, file: !12, line: 382, baseType: !27, size: 64, offset: 3136)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1709, file: !12, line: 383, baseType: !27, size: 64, offset: 3200)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1709, file: !12, line: 384, baseType: !27, size: 64, offset: 3264)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1709, file: !12, line: 386, baseType: !1136, size: 64, offset: 3328)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1709, file: !12, line: 388, baseType: !1136, size: 64, offset: 3392)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1709, file: !12, line: 389, baseType: !1136, size: 64, offset: 3456)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1709, file: !12, line: 390, baseType: !1136, size: 64, offset: 3520)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1709, file: !12, line: 391, baseType: !1136, size: 64, offset: 3584)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1709, file: !12, line: 392, baseType: !1136, size: 64, offset: 3648)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1709, file: !12, line: 393, baseType: !1136, size: 64, offset: 3712)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1709, file: !12, line: 394, baseType: !1136, size: 64, offset: 3776)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1709, file: !12, line: 395, baseType: !1136, size: 64, offset: 3840)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1709, file: !12, line: 396, baseType: !1136, size: 64, offset: 3904)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1709, file: !12, line: 397, baseType: !1136, size: 64, offset: 3968)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1709, file: !12, line: 398, baseType: !1136, size: 64, offset: 4032)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1709, file: !12, line: 399, baseType: !1136, size: 64, offset: 4096)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1709, file: !12, line: 400, baseType: !1136, size: 64, offset: 4160)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1709, file: !12, line: 401, baseType: !1136, size: 64, offset: 4224)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1709, file: !12, line: 402, baseType: !1136, size: 64, offset: 4288)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1709, file: !12, line: 403, baseType: !27, size: 64, offset: 4352)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1709, file: !12, line: 404, baseType: !1136, size: 64, offset: 4416)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1709, file: !12, line: 405, baseType: !1136, size: 64, offset: 4480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1709, file: !12, line: 408, baseType: !1136, size: 64, offset: 4544)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1709, file: !12, line: 410, baseType: !27, size: 64, offset: 4608)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1709, file: !12, line: 411, baseType: !27, size: 64, offset: 4672)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable", scope: !1709, file: !12, line: 414, baseType: !970, size: 64, offset: 4736)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1709, file: !12, line: 424, baseType: !27, size: 64, offset: 4800)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1709, file: !12, line: 425, baseType: !1174, size: 64, offset: 4864)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1709, file: !12, line: 428, baseType: !970, size: 64, offset: 4928)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1709, file: !12, line: 430, baseType: !670, size: 64, offset: 4992)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1709, file: !12, line: 432, baseType: !1825, size: 64, offset: 5056)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1827, line: 99, baseType: !1828)
!1827 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1827, line: 91, size: 832, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1828, file: !1827, line: 92, baseType: !368, size: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1828, file: !1827, line: 93, baseType: !195, size: 320, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1828, file: !1827, line: 94, baseType: !208, size: 128, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1828, file: !1827, line: 96, baseType: !27, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1828, file: !1827, line: 97, baseType: !27, size: 64, offset: 704)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1828, file: !1827, line: 98, baseType: !176, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1709, file: !12, line: 433, baseType: !176, size: 64, offset: 5120)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1709, file: !12, line: 434, baseType: !27, size: 64, offset: 5184)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1709, file: !12, line: 435, baseType: !1136, size: 64, offset: 5248)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1709, file: !12, line: 436, baseType: !1136, size: 64, offset: 5312)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1709, file: !12, line: 438, baseType: !151, size: 64, offset: 5376)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1709, file: !12, line: 440, baseType: !27, size: 64, offset: 5440)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1709, file: !12, line: 441, baseType: !27, size: 64, offset: 5504)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1709, file: !12, line: 443, baseType: !213, size: 64, offset: 5568)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1683, file: !12, line: 236, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !12, line: 229, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 224, size: 384, elements: !1848)
!1848 = !{!1849, !1862, !1863}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1847, file: !12, line: 225, baseType: !1850, size: 256)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1147, line: 49, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 45, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1861}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1851, file: !1147, line: 46, baseType: !1146, size: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1851, file: !1147, line: 47, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1147, line: 32, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 29, size: 192, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1857, file: !1147, line: 30, baseType: !1146, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1857, file: !1147, line: 31, baseType: !32, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1851, file: !1147, line: 48, baseType: !1855, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1847, file: !12, line: 227, baseType: !27, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1847, file: !12, line: 228, baseType: !1864, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !12, line: 221, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 215, size: 256, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1866, file: !12, line: 217, baseType: !1714, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1866, file: !12, line: 219, baseType: !1686, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1866, file: !12, line: 220, baseType: !78, size: 128, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1683, file: !12, line: 238, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1683, file: !12, line: 239, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1683, file: !12, line: 240, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1678, file: !101, line: 317, baseType: !33, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1678, file: !101, line: 320, baseType: !793, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername_regex", scope: !1678, file: !101, line: 322, baseType: !1714, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1678, file: !101, line: 326, baseType: !234, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1678, file: !101, line: 327, baseType: !91, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1678, file: !101, line: 329, baseType: !234, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1678, file: !101, line: 331, baseType: !13, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1678, file: !101, line: 332, baseType: !13, size: 1, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !100, file: !101, line: 453, baseType: !1883, size: 64, offset: 8704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !99, line: 22, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !99, line: 22, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !100, file: !101, line: 455, baseType: !1887, size: 64, offset: 8768)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !99, line: 26, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!56, !97, !97, !56, !49}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !100, file: !101, line: 457, baseType: !1892, size: 64, offset: 8832)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !101, line: 338, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !101, line: 340, size: 192, elements: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1894, file: !101, line: 341, baseType: !1501, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1894, file: !101, line: 342, baseType: !32, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1894, file: !101, line: 343, baseType: !1892, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !101, line: 459, baseType: !13, size: 16, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !100, file: !101, line: 460, baseType: !13, size: 8, offset: 8912, flags: DIFlagBitField, extraData: i64 8896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !100, file: !101, line: 461, baseType: !13, size: 8, offset: 8920, flags: DIFlagBitField, extraData: i64 8896)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !100, file: !101, line: 463, baseType: !13, size: 1, offset: 8928, flags: DIFlagBitField, extraData: i64 8896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !100, file: !101, line: 465, baseType: !13, size: 4, offset: 8929, flags: DIFlagBitField, extraData: i64 8896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !100, file: !101, line: 468, baseType: !13, size: 1, offset: 8933, flags: DIFlagBitField, extraData: i64 8896)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !100, file: !101, line: 471, baseType: !13, size: 1, offset: 8934, flags: DIFlagBitField, extraData: i64 8896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !100, file: !101, line: 474, baseType: !13, size: 1, offset: 8935, flags: DIFlagBitField, extraData: i64 8896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "empty_path_in_uri", scope: !100, file: !101, line: 477, baseType: !13, size: 1, offset: 8936, flags: DIFlagBitField, extraData: i64 8896)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !100, file: !101, line: 479, baseType: !13, size: 1, offset: 8937, flags: DIFlagBitField, extraData: i64 8896)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !100, file: !101, line: 481, baseType: !13, size: 1, offset: 8938, flags: DIFlagBitField, extraData: i64 8896)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !100, file: !101, line: 482, baseType: !13, size: 1, offset: 8939, flags: DIFlagBitField, extraData: i64 8896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !100, file: !101, line: 483, baseType: !13, size: 1, offset: 8940, flags: DIFlagBitField, extraData: i64 8896)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !100, file: !101, line: 484, baseType: !13, size: 1, offset: 8941, flags: DIFlagBitField, extraData: i64 8896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !100, file: !101, line: 485, baseType: !13, size: 4, offset: 8942, flags: DIFlagBitField, extraData: i64 8896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !100, file: !101, line: 487, baseType: !13, size: 1, offset: 8946, flags: DIFlagBitField, extraData: i64 8896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !100, file: !101, line: 488, baseType: !13, size: 1, offset: 8947, flags: DIFlagBitField, extraData: i64 8896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !100, file: !101, line: 489, baseType: !13, size: 1, offset: 8948, flags: DIFlagBitField, extraData: i64 8896)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !100, file: !101, line: 490, baseType: !13, size: 1, offset: 8949, flags: DIFlagBitField, extraData: i64 8896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !100, file: !101, line: 491, baseType: !13, size: 1, offset: 8950, flags: DIFlagBitField, extraData: i64 8896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !100, file: !101, line: 492, baseType: !13, size: 3, offset: 8951, flags: DIFlagBitField, extraData: i64 8896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !100, file: !101, line: 493, baseType: !13, size: 1, offset: 8954, flags: DIFlagBitField, extraData: i64 8896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !100, file: !101, line: 495, baseType: !13, size: 1, offset: 8955, flags: DIFlagBitField, extraData: i64 8896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !100, file: !101, line: 496, baseType: !13, size: 1, offset: 8956, flags: DIFlagBitField, extraData: i64 8896)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !100, file: !101, line: 499, baseType: !13, size: 1, offset: 8957, flags: DIFlagBitField, extraData: i64 8896)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !100, file: !101, line: 503, baseType: !13, size: 1, offset: 8958, flags: DIFlagBitField, extraData: i64 8896)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !100, file: !101, line: 504, baseType: !13, size: 1, offset: 8959, flags: DIFlagBitField, extraData: i64 8896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !100, file: !101, line: 505, baseType: !13, size: 1, offset: 8960, flags: DIFlagBitField, extraData: i64 8896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "realloc_captures", scope: !100, file: !101, line: 509, baseType: !13, size: 1, offset: 8961, flags: DIFlagBitField, extraData: i64 8896)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !100, file: !101, line: 512, baseType: !13, size: 1, offset: 8962, flags: DIFlagBitField, extraData: i64 8896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !100, file: !101, line: 513, baseType: !13, size: 1, offset: 8963, flags: DIFlagBitField, extraData: i64 8896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !100, file: !101, line: 514, baseType: !13, size: 1, offset: 8964, flags: DIFlagBitField, extraData: i64 8896)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_status", scope: !100, file: !101, line: 521, baseType: !13, size: 2, offset: 8965, flags: DIFlagBitField, extraData: i64 8896)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_status", scope: !100, file: !101, line: 522, baseType: !13, size: 3, offset: 8967, flags: DIFlagBitField, extraData: i64 8896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_set", scope: !100, file: !101, line: 524, baseType: !13, size: 1, offset: 8970, flags: DIFlagBitField, extraData: i64 8896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after_set", scope: !100, file: !101, line: 525, baseType: !13, size: 1, offset: 8971, flags: DIFlagBitField, extraData: i64 8896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !100, file: !101, line: 531, baseType: !13, size: 1, offset: 8972, flags: DIFlagBitField, extraData: i64 8896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !100, file: !101, line: 532, baseType: !13, size: 1, offset: 8973, flags: DIFlagBitField, extraData: i64 8896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !100, file: !101, line: 533, baseType: !13, size: 1, offset: 8974, flags: DIFlagBitField, extraData: i64 8896)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !100, file: !101, line: 534, baseType: !13, size: 1, offset: 8975, flags: DIFlagBitField, extraData: i64 8896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !100, file: !101, line: 535, baseType: !13, size: 1, offset: 8976, flags: DIFlagBitField, extraData: i64 8896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !100, file: !101, line: 536, baseType: !13, size: 1, offset: 8977, flags: DIFlagBitField, extraData: i64 8896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !100, file: !101, line: 537, baseType: !13, size: 1, offset: 8978, flags: DIFlagBitField, extraData: i64 8896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !100, file: !101, line: 538, baseType: !13, size: 1, offset: 8979, flags: DIFlagBitField, extraData: i64 8896)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !100, file: !101, line: 539, baseType: !13, size: 1, offset: 8980, flags: DIFlagBitField, extraData: i64 8896)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !100, file: !101, line: 540, baseType: !13, size: 1, offset: 8981, flags: DIFlagBitField, extraData: i64 8896)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !100, file: !101, line: 541, baseType: !13, size: 1, offset: 8982, flags: DIFlagBitField, extraData: i64 8896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !100, file: !101, line: 542, baseType: !13, size: 1, offset: 8983, flags: DIFlagBitField, extraData: i64 8896)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !100, file: !101, line: 543, baseType: !13, size: 1, offset: 8984, flags: DIFlagBitField, extraData: i64 8896)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !100, file: !101, line: 544, baseType: !13, size: 1, offset: 8985, flags: DIFlagBitField, extraData: i64 8896)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !100, file: !101, line: 545, baseType: !13, size: 1, offset: 8986, flags: DIFlagBitField, extraData: i64 8896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !100, file: !101, line: 546, baseType: !13, size: 1, offset: 8987, flags: DIFlagBitField, extraData: i64 8896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !100, file: !101, line: 547, baseType: !13, size: 1, offset: 8988, flags: DIFlagBitField, extraData: i64 8896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !100, file: !101, line: 548, baseType: !13, size: 1, offset: 8989, flags: DIFlagBitField, extraData: i64 8896)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !100, file: !101, line: 549, baseType: !13, size: 1, offset: 8990, flags: DIFlagBitField, extraData: i64 8896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !100, file: !101, line: 551, baseType: !13, size: 4, offset: 8992, flags: DIFlagBitField, extraData: i64 8992)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !100, file: !101, line: 553, baseType: !13, size: 1, offset: 8996, flags: DIFlagBitField, extraData: i64 8992)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !100, file: !101, line: 554, baseType: !13, size: 1, offset: 8997, flags: DIFlagBitField, extraData: i64 8992)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !100, file: !101, line: 555, baseType: !13, size: 1, offset: 8998, flags: DIFlagBitField, extraData: i64 8992)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !100, file: !101, line: 556, baseType: !13, size: 1, offset: 8999, flags: DIFlagBitField, extraData: i64 8992)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !100, file: !101, line: 557, baseType: !13, size: 1, offset: 9000, flags: DIFlagBitField, extraData: i64 8992)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !100, file: !101, line: 558, baseType: !13, size: 1, offset: 9001, flags: DIFlagBitField, extraData: i64 8992)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !100, file: !101, line: 559, baseType: !13, size: 1, offset: 9002, flags: DIFlagBitField, extraData: i64 8992)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !100, file: !101, line: 560, baseType: !13, size: 1, offset: 9003, flags: DIFlagBitField, extraData: i64 8992)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !100, file: !101, line: 561, baseType: !13, size: 1, offset: 9004, flags: DIFlagBitField, extraData: i64 8992)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !100, file: !101, line: 562, baseType: !13, size: 1, offset: 9005, flags: DIFlagBitField, extraData: i64 8992)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !100, file: !101, line: 563, baseType: !13, size: 1, offset: 9006, flags: DIFlagBitField, extraData: i64 8992)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !100, file: !101, line: 565, baseType: !13, size: 1, offset: 9007, flags: DIFlagBitField, extraData: i64 8992)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !100, file: !101, line: 566, baseType: !13, size: 1, offset: 9008, flags: DIFlagBitField, extraData: i64 8992)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !100, file: !101, line: 570, baseType: !27, size: 64, offset: 9024)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !100, file: !101, line: 572, baseType: !27, size: 64, offset: 9088)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !100, file: !101, line: 573, baseType: !27, size: 64, offset: 9152)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !100, file: !101, line: 574, baseType: !1972, size: 256, offset: 9216)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !660)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !100, file: !101, line: 576, baseType: !56, size: 64, offset: 9472)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !100, file: !101, line: 577, baseType: !56, size: 64, offset: 9536)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !100, file: !101, line: 578, baseType: !56, size: 64, offset: 9600)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !100, file: !101, line: 579, baseType: !56, size: 64, offset: 9664)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !100, file: !101, line: 586, baseType: !56, size: 64, offset: 9728)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !100, file: !101, line: 587, baseType: !56, size: 64, offset: 9792)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !100, file: !101, line: 588, baseType: !56, size: 64, offset: 9856)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !100, file: !101, line: 589, baseType: !56, size: 64, offset: 9920)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !100, file: !101, line: 590, baseType: !56, size: 64, offset: 9984)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !100, file: !101, line: 591, baseType: !56, size: 64, offset: 10048)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !100, file: !101, line: 592, baseType: !56, size: 64, offset: 10112)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !100, file: !101, line: 593, baseType: !56, size: 64, offset: 10176)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !100, file: !101, line: 594, baseType: !56, size: 64, offset: 10240)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !100, file: !101, line: 595, baseType: !56, size: 64, offset: 10304)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !100, file: !101, line: 596, baseType: !56, size: 64, offset: 10368)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !100, file: !101, line: 597, baseType: !56, size: 64, offset: 10432)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !100, file: !101, line: 598, baseType: !56, size: 64, offset: 10496)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !100, file: !101, line: 600, baseType: !13, size: 16, offset: 10560, flags: DIFlagBitField, extraData: i64 10560)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !100, file: !101, line: 601, baseType: !13, size: 16, offset: 10576, flags: DIFlagBitField, extraData: i64 10560)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_code_pt", file: !45, line: 89, baseType: !1994)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !51}
!1997 = !{!0, !1998, !7, !2000, !2005, !2010, !2012, !2017, !2022, !2027, !2032, !2037}
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "ngx_http_index_module", scope: !9, file: !2, line: 70, type: !990, isLocal: false, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !2002, isLocal: true, isDefinition: true)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !2003)
!2003 = !{!2004}
!2004 = !DISubrange(count: 15)
!2005 = !DIGlobalVariableExpression(var: !2006, expr: !DIExpression())
!2006 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !2007, isLocal: true, isDefinition: true)
!2007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !2008)
!2008 = !{!2009}
!2009 = !DISubrange(count: 18)
!2010 = !DIGlobalVariableExpression(var: !2011, expr: !DIExpression())
!2011 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !2007, isLocal: true, isDefinition: true)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !2014, isLocal: true, isDefinition: true)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 24)
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !2019, isLocal: true, isDefinition: true)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 11)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !2024, isLocal: true, isDefinition: true)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2025)
!2025 = !{!2026}
!2026 = !DISubrange(count: 6)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "ngx_http_index_commands", scope: !9, file: !2, line: 42, type: !2029, isLocal: true, isDefinition: true)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 896, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 2)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !2034, isLocal: true, isDefinition: true)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !2035)
!2035 = !{!2036}
!2036 = !DISubrange(count: 60)
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(scope: null, file: !2, line: 492, type: !2039, isLocal: true, isDefinition: true)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !2040)
!2040 = !{!2041}
!2041 = !DISubrange(count: 43)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !35, line: 36, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 24, size: 512, elements: !2044)
!2044 = !{!2045, !2049, !2050, !2054, !2058, !2059, !2063, !2064}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !2043, file: !35, line: 25, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!91, !964}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !2043, file: !35, line: 26, baseType: !2046, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !2043, file: !35, line: 28, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!32, !964}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !2043, file: !35, line: 29, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!192, !964, !32}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !2043, file: !35, line: 31, baseType: !2051, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !2043, file: !35, line: 32, baseType: !2060, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!192, !964, !32, !32}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !2043, file: !35, line: 34, baseType: !2051, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !2043, file: !35, line: 35, baseType: !2060, size: 64, offset: 448)
!2065 = !{i32 7, !"Dwarf Version", i32 5}
!2066 = !{i32 2, !"Debug Info Version", i32 3}
!2067 = !{i32 1, !"wchar_size", i32 4}
!2068 = !{i32 8, !"PIC Level", i32 2}
!2069 = !{i32 7, !"PIE Level", i32 2}
!2070 = !{i32 7, !"uwtable", i32 2}
!2071 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2072 = distinct !DISubprogram(name: "ngx_http_index_init", scope: !2, file: !2, line: 443, type: !2047, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2077}
!2074 = !DILocalVariable(name: "cf", arg: 1, scope: !2072, file: !2, line: 443, type: !964)
!2075 = !DILocalVariable(name: "h", scope: !2072, file: !2, line: 445, type: !2076)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!2077 = !DILocalVariable(name: "cmcf", scope: !2072, file: !2, line: 446, type: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_main_conf_t", file: !12, line: 176, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 152, size: 5376, elements: !2081)
!2081 = !{!2082, !2083, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2124, !2125}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !2080, file: !12, line: 153, baseType: !551, size: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "phase_engine", scope: !2080, file: !12, line: 155, baseType: !2084, size: 192, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_engine_t", file: !12, line: 144, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 140, size: 192, elements: !2086)
!2086 = !{!2087, !2099, !2100}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !2085, file: !12, line: 141, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_handler_t", file: !12, line: 128, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_phase_handler_s", file: !12, line: 133, size: 192, elements: !2091)
!2091 = !{!2092, !2097, !2098}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !2090, file: !12, line: 134, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_handler_pt", file: !12, line: 130, baseType: !2094)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!91, !97, !2088}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2090, file: !12, line: 135, baseType: !1663, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2090, file: !12, line: 136, baseType: !27, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "server_rewrite_index", scope: !2085, file: !12, line: 142, baseType: !27, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "location_rewrite_index", scope: !2085, file: !12, line: 143, baseType: !27, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in_hash", scope: !2080, file: !12, line: 157, baseType: !1146, size: 128, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash", scope: !2080, file: !12, line: 159, baseType: !1146, size: 128, offset: 640)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !2080, file: !12, line: 161, baseType: !551, size: 320, offset: 768)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_variables", scope: !2080, file: !12, line: 162, baseType: !551, size: 320, offset: 1088)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !2080, file: !12, line: 163, baseType: !27, size: 64, offset: 1408)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "server_names_hash_max_size", scope: !2080, file: !12, line: 165, baseType: !27, size: 64, offset: 1472)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "server_names_hash_bucket_size", scope: !2080, file: !12, line: 166, baseType: !27, size: 64, offset: 1536)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash_max_size", scope: !2080, file: !12, line: 168, baseType: !27, size: 64, offset: 1600)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash_bucket_size", scope: !2080, file: !12, line: 169, baseType: !27, size: 64, offset: 1664)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "variables_keys", scope: !2080, file: !12, line: 171, baseType: !2111, size: 64, offset: 1728)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_keys_arrays_t", file: !1147, line: 89, baseType: !2113)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 75, size: 1344, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "hsize", scope: !2113, file: !1147, line: 76, baseType: !27, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !2113, file: !1147, line: 78, baseType: !402, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !2113, file: !1147, line: 79, baseType: !402, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2113, file: !1147, line: 81, baseType: !551, size: 320, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "keys_hash", scope: !2113, file: !1147, line: 82, baseType: !970, size: 64, offset: 512)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_head", scope: !2113, file: !1147, line: 84, baseType: !551, size: 320, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_head_hash", scope: !2113, file: !1147, line: 85, baseType: !970, size: 64, offset: 896)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_tail", scope: !2113, file: !1147, line: 87, baseType: !551, size: 320, offset: 960)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_tail_hash", scope: !2113, file: !1147, line: 88, baseType: !970, size: 64, offset: 1280)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2080, file: !12, line: 173, baseType: !970, size: 64, offset: 1792)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !2080, file: !12, line: 175, baseType: !2126, size: 3520, offset: 1856)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2127, size: 3520, elements: !2020)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_t", file: !12, line: 149, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 147, size: 320, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !2128, file: !12, line: 148, baseType: !551, size: 320)
!2131 = !{!2132, !2132, i64 0}
!2132 = !{!"any pointer", !2133, i64 0}
!2133 = !{!"omnipotent char", !2134, i64 0}
!2134 = !{!"Simple C/C++ TBAA"}
!2135 = !DILocation(line: 443, column: 33, scope: !2072)
!2136 = !DILocation(line: 445, column: 5, scope: !2072)
!2137 = !DILocation(line: 445, column: 33, scope: !2072)
!2138 = !DILocation(line: 446, column: 5, scope: !2072)
!2139 = !DILocation(line: 446, column: 33, scope: !2072)
!2140 = !DILocation(line: 448, column: 12, scope: !2072)
!2141 = !{!2142, !2132, i64 56}
!2142 = !{!"ngx_conf_s", !2132, i64 0, !2132, i64 8, !2132, i64 16, !2132, i64 24, !2132, i64 32, !2132, i64 40, !2132, i64 48, !2132, i64 56, !2143, i64 64, !2143, i64 72, !2132, i64 80, !2132, i64 88}
!2143 = !{!"long", !2133, i64 0}
!2144 = !{!2145, !2132, i64 0}
!2145 = !{!"", !2132, i64 0, !2132, i64 8, !2132, i64 16}
!2146 = !{!2147, !2143, i64 0}
!2147 = !{!"ngx_module_s", !2143, i64 0, !2143, i64 8, !2132, i64 16, !2143, i64 24, !2143, i64 32, !2143, i64 40, !2132, i64 48, !2132, i64 56, !2132, i64 64, !2143, i64 72, !2132, i64 80, !2132, i64 88, !2132, i64 96, !2132, i64 104, !2132, i64 112, !2132, i64 120, !2132, i64 128, !2143, i64 136, !2143, i64 144, !2143, i64 152, !2143, i64 160, !2143, i64 168, !2143, i64 176, !2143, i64 184, !2143, i64 192}
!2148 = !DILocation(line: 448, column: 10, scope: !2072)
!2149 = !DILocation(line: 450, column: 25, scope: !2072)
!2150 = !DILocation(line: 450, column: 31, scope: !2072)
!2151 = !DILocation(line: 450, column: 62, scope: !2072)
!2152 = !DILocation(line: 450, column: 9, scope: !2072)
!2153 = !DILocation(line: 450, column: 7, scope: !2072)
!2154 = !DILocation(line: 451, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 451, column: 9)
!2156 = !DILocation(line: 451, column: 11, scope: !2155)
!2157 = !DILocation(line: 451, column: 9, scope: !2072)
!2158 = !DILocation(line: 452, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 451, column: 20)
!2160 = !DILocation(line: 455, column: 6, scope: !2072)
!2161 = !DILocation(line: 455, column: 8, scope: !2072)
!2162 = !DILocation(line: 457, column: 5, scope: !2072)
!2163 = !DILocation(line: 458, column: 1, scope: !2072)
!2164 = distinct !DISubprogram(name: "ngx_http_index_create_loc_conf", scope: !2, file: !2, line: 388, type: !2052, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2165)
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "cf", arg: 1, scope: !2164, file: !2, line: 388, type: !964)
!2167 = !DILocalVariable(name: "conf", scope: !2164, file: !2, line: 390, type: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_index_loc_conf_t", file: !2, line: 23, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 20, size: 128, elements: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !2170, file: !2, line: 21, baseType: !970, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "max_index_len", scope: !2170, file: !2, line: 22, baseType: !49, size: 64, offset: 64)
!2174 = !DILocation(line: 388, column: 44, scope: !2164)
!2175 = !DILocation(line: 390, column: 5, scope: !2164)
!2176 = !DILocation(line: 390, column: 33, scope: !2164)
!2177 = !DILocation(line: 392, column: 23, scope: !2164)
!2178 = !DILocation(line: 392, column: 27, scope: !2164)
!2179 = !{!2142, !2132, i64 24}
!2180 = !DILocation(line: 392, column: 12, scope: !2164)
!2181 = !DILocation(line: 392, column: 10, scope: !2164)
!2182 = !DILocation(line: 393, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 393, column: 9)
!2184 = !DILocation(line: 393, column: 14, scope: !2183)
!2185 = !DILocation(line: 393, column: 9, scope: !2164)
!2186 = !DILocation(line: 394, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 393, column: 23)
!2188 = !DILocation(line: 397, column: 5, scope: !2164)
!2189 = !DILocation(line: 397, column: 11, scope: !2164)
!2190 = !DILocation(line: 397, column: 19, scope: !2164)
!2191 = !{!2192, !2132, i64 0}
!2192 = !{!"", !2132, i64 0, !2143, i64 8}
!2193 = !DILocation(line: 398, column: 5, scope: !2164)
!2194 = !DILocation(line: 398, column: 11, scope: !2164)
!2195 = !DILocation(line: 398, column: 25, scope: !2164)
!2196 = !{!2192, !2143, i64 8}
!2197 = !DILocation(line: 400, column: 12, scope: !2164)
!2198 = !DILocation(line: 400, column: 5, scope: !2164)
!2199 = !DILocation(line: 401, column: 1, scope: !2164)
!2200 = distinct !DISubprogram(name: "ngx_http_index_merge_loc_conf", scope: !2, file: !2, line: 405, type: !2061, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207}
!2202 = !DILocalVariable(name: "cf", arg: 1, scope: !2200, file: !2, line: 405, type: !964)
!2203 = !DILocalVariable(name: "parent", arg: 2, scope: !2200, file: !2, line: 405, type: !32)
!2204 = !DILocalVariable(name: "child", arg: 3, scope: !2200, file: !2, line: 405, type: !32)
!2205 = !DILocalVariable(name: "prev", scope: !2200, file: !2, line: 407, type: !2168)
!2206 = !DILocalVariable(name: "conf", scope: !2200, file: !2, line: 408, type: !2168)
!2207 = !DILocalVariable(name: "index", scope: !2200, file: !2, line: 410, type: !2208)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_index_t", file: !2, line: 17, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 13, size: 256, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2210, file: !2, line: 14, baseType: !78, size: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !2210, file: !2, line: 15, baseType: !970, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2210, file: !2, line: 16, baseType: !970, size: 64, offset: 192)
!2215 = !DILocation(line: 405, column: 43, scope: !2200)
!2216 = !DILocation(line: 405, column: 53, scope: !2200)
!2217 = !DILocation(line: 405, column: 67, scope: !2200)
!2218 = !DILocation(line: 407, column: 5, scope: !2200)
!2219 = !DILocation(line: 407, column: 33, scope: !2200)
!2220 = !DILocation(line: 407, column: 40, scope: !2200)
!2221 = !DILocation(line: 408, column: 5, scope: !2200)
!2222 = !DILocation(line: 408, column: 33, scope: !2200)
!2223 = !DILocation(line: 408, column: 40, scope: !2200)
!2224 = !DILocation(line: 410, column: 5, scope: !2200)
!2225 = !DILocation(line: 410, column: 24, scope: !2200)
!2226 = !DILocation(line: 412, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 412, column: 9)
!2228 = !DILocation(line: 412, column: 15, scope: !2227)
!2229 = !DILocation(line: 412, column: 23, scope: !2227)
!2230 = !DILocation(line: 412, column: 9, scope: !2200)
!2231 = !DILocation(line: 413, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 412, column: 32)
!2233 = !DILocation(line: 413, column: 31, scope: !2232)
!2234 = !DILocation(line: 413, column: 9, scope: !2232)
!2235 = !DILocation(line: 413, column: 15, scope: !2232)
!2236 = !DILocation(line: 413, column: 23, scope: !2232)
!2237 = !DILocation(line: 414, column: 31, scope: !2232)
!2238 = !DILocation(line: 414, column: 37, scope: !2232)
!2239 = !DILocation(line: 414, column: 9, scope: !2232)
!2240 = !DILocation(line: 414, column: 15, scope: !2232)
!2241 = !DILocation(line: 414, column: 29, scope: !2232)
!2242 = !DILocation(line: 415, column: 5, scope: !2232)
!2243 = !DILocation(line: 417, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 417, column: 9)
!2245 = !DILocation(line: 417, column: 15, scope: !2244)
!2246 = !DILocation(line: 417, column: 23, scope: !2244)
!2247 = !DILocation(line: 417, column: 9, scope: !2200)
!2248 = !DILocation(line: 418, column: 42, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 417, column: 32)
!2250 = !DILocation(line: 418, column: 46, scope: !2249)
!2251 = !DILocation(line: 418, column: 25, scope: !2249)
!2252 = !DILocation(line: 418, column: 9, scope: !2249)
!2253 = !DILocation(line: 418, column: 15, scope: !2249)
!2254 = !DILocation(line: 418, column: 23, scope: !2249)
!2255 = !DILocation(line: 419, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 419, column: 13)
!2257 = !DILocation(line: 419, column: 19, scope: !2256)
!2258 = !DILocation(line: 419, column: 27, scope: !2256)
!2259 = !DILocation(line: 419, column: 13, scope: !2249)
!2260 = !DILocation(line: 420, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 419, column: 36)
!2262 = !DILocation(line: 423, column: 32, scope: !2249)
!2263 = !DILocation(line: 423, column: 38, scope: !2249)
!2264 = !DILocation(line: 423, column: 17, scope: !2249)
!2265 = !DILocation(line: 423, column: 15, scope: !2249)
!2266 = !DILocation(line: 424, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 424, column: 13)
!2268 = !DILocation(line: 424, column: 19, scope: !2267)
!2269 = !DILocation(line: 424, column: 13, scope: !2249)
!2270 = !DILocation(line: 425, column: 13, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 424, column: 28)
!2272 = !DILocation(line: 428, column: 9, scope: !2249)
!2273 = !DILocation(line: 428, column: 16, scope: !2249)
!2274 = !DILocation(line: 428, column: 21, scope: !2249)
!2275 = !DILocation(line: 428, column: 25, scope: !2249)
!2276 = !{!2277, !2143, i64 0}
!2277 = !{!"", !2278, i64 0, !2132, i64 16, !2132, i64 24}
!2278 = !{!"", !2143, i64 0, !2132, i64 8}
!2279 = !DILocation(line: 429, column: 9, scope: !2249)
!2280 = !DILocation(line: 429, column: 16, scope: !2249)
!2281 = !DILocation(line: 429, column: 21, scope: !2249)
!2282 = !DILocation(line: 429, column: 26, scope: !2249)
!2283 = !{!2277, !2132, i64 8}
!2284 = !DILocation(line: 430, column: 9, scope: !2249)
!2285 = !DILocation(line: 430, column: 16, scope: !2249)
!2286 = !DILocation(line: 430, column: 24, scope: !2249)
!2287 = !{!2277, !2132, i64 16}
!2288 = !DILocation(line: 431, column: 9, scope: !2249)
!2289 = !DILocation(line: 431, column: 16, scope: !2249)
!2290 = !DILocation(line: 431, column: 23, scope: !2249)
!2291 = !{!2277, !2132, i64 24}
!2292 = !DILocation(line: 433, column: 9, scope: !2249)
!2293 = !DILocation(line: 433, column: 15, scope: !2249)
!2294 = !DILocation(line: 433, column: 29, scope: !2249)
!2295 = !DILocation(line: 435, column: 9, scope: !2249)
!2296 = !DILocation(line: 438, column: 5, scope: !2200)
!2297 = !DILocation(line: 439, column: 1, scope: !2200)
!2298 = !DISubprogram(name: "ngx_array_push", scope: !552, file: !552, line: 27, type: !2299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!32, !970}
!2301 = distinct !DISubprogram(name: "ngx_http_index_handler", scope: !2, file: !2, line: 97, type: !1462, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2302)
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2345, !2346, !2347, !2348, !2349}
!2303 = !DILocalVariable(name: "r", arg: 1, scope: !2301, file: !2, line: 97, type: !97)
!2304 = !DILocalVariable(name: "p", scope: !2301, file: !2, line: 99, type: !56)
!2305 = !DILocalVariable(name: "name", scope: !2301, file: !2, line: 99, type: !56)
!2306 = !DILocalVariable(name: "len", scope: !2301, file: !2, line: 100, type: !49)
!2307 = !DILocalVariable(name: "root", scope: !2301, file: !2, line: 100, type: !49)
!2308 = !DILocalVariable(name: "reserve", scope: !2301, file: !2, line: 100, type: !49)
!2309 = !DILocalVariable(name: "allocated", scope: !2301, file: !2, line: 100, type: !49)
!2310 = !DILocalVariable(name: "rc", scope: !2301, file: !2, line: 101, type: !91)
!2311 = !DILocalVariable(name: "path", scope: !2301, file: !2, line: 102, type: !78)
!2312 = !DILocalVariable(name: "uri", scope: !2301, file: !2, line: 102, type: !78)
!2313 = !DILocalVariable(name: "i", scope: !2301, file: !2, line: 103, type: !27)
!2314 = !DILocalVariable(name: "dir_tested", scope: !2301, file: !2, line: 103, type: !27)
!2315 = !DILocalVariable(name: "index", scope: !2301, file: !2, line: 104, type: !2208)
!2316 = !DILocalVariable(name: "of", scope: !2301, file: !2, line: 105, type: !2317)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_info_t", file: !1827, line: 51, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1827, line: 19, size: 832, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2318, file: !1827, line: 20, baseType: !164, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !2318, file: !1827, line: 21, baseType: !567, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2318, file: !1827, line: 22, baseType: !176, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2318, file: !1827, line: 23, baseType: !247, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !2318, file: !1827, line: 24, baseType: !247, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !2318, file: !1827, line: 25, baseType: !247, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !2318, file: !1827, line: 26, baseType: !49, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2318, file: !1827, line: 28, baseType: !2328, size: 32, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !2329, line: 16, baseType: !143)
!2329 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !2318, file: !1827, line: 29, baseType: !192, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2318, file: !1827, line: 31, baseType: !176, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !2318, file: !1827, line: 33, baseType: !27, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !2318, file: !1827, line: 36, baseType: !49, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !2318, file: !1827, line: 37, baseType: !13, size: 2, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "test_dir", scope: !2318, file: !1827, line: 40, baseType: !13, size: 1, offset: 770, flags: DIFlagBitField, extraData: i64 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "test_only", scope: !2318, file: !1827, line: 41, baseType: !13, size: 1, offset: 771, flags: DIFlagBitField, extraData: i64 768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !2318, file: !1827, line: 42, baseType: !13, size: 1, offset: 772, flags: DIFlagBitField, extraData: i64 768)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !2318, file: !1827, line: 43, baseType: !13, size: 1, offset: 773, flags: DIFlagBitField, extraData: i64 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2318, file: !1827, line: 44, baseType: !13, size: 1, offset: 774, flags: DIFlagBitField, extraData: i64 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "is_dir", scope: !2318, file: !1827, line: 46, baseType: !13, size: 1, offset: 775, flags: DIFlagBitField, extraData: i64 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "is_file", scope: !2318, file: !1827, line: 47, baseType: !13, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 768)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "is_link", scope: !2318, file: !1827, line: 48, baseType: !13, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "is_exec", scope: !2318, file: !1827, line: 49, baseType: !13, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "is_directio", scope: !2318, file: !1827, line: 50, baseType: !13, size: 1, offset: 779, flags: DIFlagBitField, extraData: i64 768)
!2345 = !DILocalVariable(name: "code", scope: !2301, file: !2, line: 106, type: !1993)
!2346 = !DILocalVariable(name: "e", scope: !2301, file: !2, line: 107, type: !52)
!2347 = !DILocalVariable(name: "clcf", scope: !2301, file: !2, line: 108, type: !1707)
!2348 = !DILocalVariable(name: "ilcf", scope: !2301, file: !2, line: 109, type: !2168)
!2349 = !DILocalVariable(name: "lcode", scope: !2301, file: !2, line: 110, type: !44)
!2350 = !DILocation(line: 97, column: 44, scope: !2301)
!2351 = !DILocation(line: 99, column: 5, scope: !2301)
!2352 = !DILocation(line: 99, column: 35, scope: !2301)
!2353 = !DILocation(line: 99, column: 39, scope: !2301)
!2354 = !DILocation(line: 100, column: 5, scope: !2301)
!2355 = !DILocation(line: 100, column: 35, scope: !2301)
!2356 = !DILocation(line: 100, column: 40, scope: !2301)
!2357 = !DILocation(line: 100, column: 46, scope: !2301)
!2358 = !DILocation(line: 100, column: 55, scope: !2301)
!2359 = !DILocation(line: 101, column: 5, scope: !2301)
!2360 = !DILocation(line: 101, column: 35, scope: !2301)
!2361 = !DILocation(line: 102, column: 5, scope: !2301)
!2362 = !DILocation(line: 102, column: 35, scope: !2301)
!2363 = !DILocation(line: 102, column: 41, scope: !2301)
!2364 = !DILocation(line: 103, column: 5, scope: !2301)
!2365 = !DILocation(line: 103, column: 35, scope: !2301)
!2366 = !DILocation(line: 103, column: 38, scope: !2301)
!2367 = !DILocation(line: 104, column: 5, scope: !2301)
!2368 = !DILocation(line: 104, column: 35, scope: !2301)
!2369 = !DILocation(line: 105, column: 5, scope: !2301)
!2370 = !DILocation(line: 105, column: 35, scope: !2301)
!2371 = !DILocation(line: 106, column: 5, scope: !2301)
!2372 = !DILocation(line: 106, column: 35, scope: !2301)
!2373 = !DILocation(line: 107, column: 5, scope: !2301)
!2374 = !DILocation(line: 107, column: 35, scope: !2301)
!2375 = !DILocation(line: 108, column: 5, scope: !2301)
!2376 = !DILocation(line: 108, column: 35, scope: !2301)
!2377 = !DILocation(line: 109, column: 5, scope: !2301)
!2378 = !DILocation(line: 109, column: 35, scope: !2301)
!2379 = !DILocation(line: 110, column: 5, scope: !2301)
!2380 = !DILocation(line: 110, column: 35, scope: !2301)
!2381 = !DILocation(line: 112, column: 9, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 112, column: 9)
!2383 = !DILocation(line: 112, column: 12, scope: !2382)
!2384 = !DILocation(line: 112, column: 16, scope: !2382)
!2385 = !{!2386, !2132, i64 832}
!2386 = !{!"ngx_http_request_s", !2387, i64 0, !2132, i64 8, !2132, i64 16, !2132, i64 24, !2132, i64 32, !2132, i64 40, !2132, i64 48, !2132, i64 56, !2132, i64 64, !2132, i64 72, !2132, i64 80, !2132, i64 88, !2132, i64 96, !2388, i64 104, !2391, i64 416, !2132, i64 760, !2143, i64 768, !2143, i64 776, !2143, i64 784, !2143, i64 792, !2143, i64 800, !2278, i64 808, !2278, i64 824, !2278, i64 840, !2278, i64 856, !2278, i64 872, !2278, i64 888, !2278, i64 904, !2278, i64 920, !2132, i64 936, !2132, i64 944, !2132, i64 952, !2132, i64 960, !2132, i64 968, !2132, i64 976, !2143, i64 984, !2132, i64 992, !2143, i64 1000, !2132, i64 1008, !2143, i64 1016, !2132, i64 1024, !2132, i64 1032, !2143, i64 1040, !2143, i64 1048, !2143, i64 1056, !2143, i64 1064, !2143, i64 1072, !2132, i64 1080, !2132, i64 1088, !2132, i64 1096, !2132, i64 1104, !2387, i64 1112, !2387, i64 1114, !2387, i64 1115, !2387, i64 1116, !2387, i64 1116, !2387, i64 1116, !2387, i64 1116, !2387, i64 1116, !2387, i64 1117, !2387, i64 1117, !2387, i64 1117, !2387, i64 1117, !2387, i64 1117, !2387, i64 1117, !2387, i64 1117, !2387, i64 1118, !2387, i64 1118, !2387, i64 1118, !2387, i64 1118, !2387, i64 1118, !2387, i64 1118, !2387, i64 1119, !2387, i64 1119, !2387, i64 1119, !2387, i64 1119, !2387, i64 1119, !2387, i64 1119, !2387, i64 1120, !2387, i64 1120, !2387, i64 1120, !2387, i64 1120, !2387, i64 1120, !2387, i64 1120, !2387, i64 1120, !2387, i64 1121, !2387, i64 1121, !2387, i64 1121, !2387, i64 1121, !2387, i64 1121, !2387, i64 1121, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1122, !2387, i64 1123, !2387, i64 1123, !2387, i64 1123, !2387, i64 1123, !2387, i64 1123, !2387, i64 1123, !2387, i64 1123, !2387, i64 1124, !2387, i64 1124, !2387, i64 1124, !2387, i64 1124, !2387, i64 1124, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1125, !2387, i64 1126, !2143, i64 1128, !2143, i64 1136, !2143, i64 1144, !2133, i64 1152, !2132, i64 1184, !2132, i64 1192, !2132, i64 1200, !2132, i64 1208, !2132, i64 1216, !2132, i64 1224, !2132, i64 1232, !2132, i64 1240, !2132, i64 1248, !2132, i64 1256, !2132, i64 1264, !2132, i64 1272, !2132, i64 1280, !2132, i64 1288, !2132, i64 1296, !2132, i64 1304, !2132, i64 1312, !2387, i64 1320, !2387, i64 1322}
!2387 = !{!"int", !2133, i64 0}
!2388 = !{!"", !2389, i64 0, !2132, i64 56, !2132, i64 64, !2132, i64 72, !2132, i64 80, !2132, i64 88, !2132, i64 96, !2132, i64 104, !2132, i64 112, !2132, i64 120, !2132, i64 128, !2132, i64 136, !2132, i64 144, !2132, i64 152, !2132, i64 160, !2132, i64 168, !2132, i64 176, !2132, i64 184, !2132, i64 192, !2132, i64 200, !2132, i64 208, !2132, i64 216, !2132, i64 224, !2132, i64 232, !2278, i64 240, !2278, i64 256, !2278, i64 272, !2143, i64 288, !2143, i64 296, !2387, i64 304, !2387, i64 304, !2387, i64 304, !2387, i64 304, !2387, i64 304, !2387, i64 304, !2387, i64 304, !2387, i64 305, !2387, i64 305, !2387, i64 305, !2387, i64 305}
!2389 = !{!"", !2132, i64 0, !2390, i64 8, !2143, i64 32, !2143, i64 40, !2132, i64 48}
!2390 = !{!"ngx_list_part_s", !2132, i64 0, !2143, i64 8, !2132, i64 16}
!2391 = !{!"", !2389, i64 0, !2389, i64 56, !2143, i64 112, !2278, i64 120, !2132, i64 136, !2132, i64 144, !2132, i64 152, !2132, i64 160, !2132, i64 168, !2132, i64 176, !2132, i64 184, !2132, i64 192, !2132, i64 200, !2132, i64 208, !2132, i64 216, !2132, i64 224, !2132, i64 232, !2132, i64 240, !2132, i64 248, !2143, i64 256, !2278, i64 264, !2278, i64 280, !2132, i64 296, !2143, i64 304, !2143, i64 312, !2143, i64 320, !2143, i64 328, !2143, i64 336}
!2392 = !DILocation(line: 112, column: 21, scope: !2382)
!2393 = !DILocation(line: 112, column: 24, scope: !2382)
!2394 = !DILocation(line: 112, column: 28, scope: !2382)
!2395 = !{!2386, !2143, i64 824}
!2396 = !DILocation(line: 112, column: 32, scope: !2382)
!2397 = !{!2133, !2133, i64 0}
!2398 = !DILocation(line: 112, column: 37, scope: !2382)
!2399 = !DILocation(line: 112, column: 9, scope: !2301)
!2400 = !DILocation(line: 113, column: 9, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2382, file: !2, line: 112, column: 45)
!2402 = !DILocation(line: 116, column: 11, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 116, column: 9)
!2404 = !DILocation(line: 116, column: 14, scope: !2403)
!2405 = !{!2386, !2143, i64 792}
!2406 = !DILocation(line: 116, column: 21, scope: !2403)
!2407 = !DILocation(line: 116, column: 9, scope: !2301)
!2408 = !DILocation(line: 117, column: 9, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2403, file: !2, line: 116, column: 68)
!2410 = !DILocation(line: 120, column: 12, scope: !2301)
!2411 = !{!2386, !2132, i64 40}
!2412 = !DILocation(line: 120, column: 10, scope: !2301)
!2413 = !DILocation(line: 121, column: 12, scope: !2301)
!2414 = !DILocation(line: 121, column: 10, scope: !2301)
!2415 = !DILocation(line: 123, column: 15, scope: !2301)
!2416 = !{!2143, !2143, i64 0}
!2417 = !DILocation(line: 124, column: 10, scope: !2301)
!2418 = !DILocation(line: 125, column: 16, scope: !2301)
!2419 = !DILocation(line: 126, column: 10, scope: !2301)
!2420 = !DILocation(line: 128, column: 10, scope: !2301)
!2421 = !DILocation(line: 128, column: 15, scope: !2301)
!2422 = !{!2278, !2132, i64 8}
!2423 = !DILocation(line: 130, column: 13, scope: !2301)
!2424 = !DILocation(line: 130, column: 19, scope: !2301)
!2425 = !DILocation(line: 130, column: 28, scope: !2301)
!2426 = !{!2427, !2132, i64 0}
!2427 = !{!"", !2132, i64 0, !2143, i64 8, !2143, i64 16, !2143, i64 24, !2132, i64 32}
!2428 = !DILocation(line: 130, column: 11, scope: !2301)
!2429 = !DILocation(line: 131, column: 12, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 131, column: 5)
!2431 = !DILocation(line: 131, column: 10, scope: !2430)
!2432 = !DILocation(line: 131, column: 17, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 131, column: 5)
!2434 = !DILocation(line: 131, column: 21, scope: !2433)
!2435 = !DILocation(line: 131, column: 27, scope: !2433)
!2436 = !DILocation(line: 131, column: 36, scope: !2433)
!2437 = !{!2427, !2143, i64 8}
!2438 = !DILocation(line: 131, column: 19, scope: !2433)
!2439 = !DILocation(line: 131, column: 5, scope: !2430)
!2440 = !DILocation(line: 133, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 133, column: 13)
!2442 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 131, column: 48)
!2443 = !DILocation(line: 133, column: 19, scope: !2441)
!2444 = !DILocation(line: 133, column: 22, scope: !2441)
!2445 = !DILocation(line: 133, column: 30, scope: !2441)
!2446 = !DILocation(line: 133, column: 13, scope: !2442)
!2447 = !DILocation(line: 135, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 135, column: 17)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 133, column: 39)
!2450 = !DILocation(line: 135, column: 23, scope: !2448)
!2451 = !DILocation(line: 135, column: 26, scope: !2448)
!2452 = !DILocation(line: 135, column: 31, scope: !2448)
!2453 = !DILocation(line: 135, column: 39, scope: !2448)
!2454 = !DILocation(line: 135, column: 17, scope: !2449)
!2455 = !DILocation(line: 136, column: 51, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 135, column: 47)
!2457 = !DILocation(line: 136, column: 55, scope: !2456)
!2458 = !DILocation(line: 136, column: 61, scope: !2456)
!2459 = !DILocation(line: 136, column: 64, scope: !2456)
!2460 = !DILocation(line: 136, column: 71, scope: !2456)
!2461 = !DILocation(line: 136, column: 74, scope: !2456)
!2462 = !DILocation(line: 136, column: 24, scope: !2456)
!2463 = !DILocation(line: 136, column: 17, scope: !2456)
!2464 = !DILocation(line: 139, column: 23, scope: !2449)
!2465 = !DILocation(line: 139, column: 29, scope: !2449)
!2466 = !DILocation(line: 139, column: 21, scope: !2449)
!2467 = !DILocation(line: 140, column: 19, scope: !2449)
!2468 = !DILocation(line: 140, column: 25, scope: !2449)
!2469 = !DILocation(line: 140, column: 28, scope: !2449)
!2470 = !DILocation(line: 140, column: 33, scope: !2449)
!2471 = !DILocation(line: 140, column: 17, scope: !2449)
!2472 = !DILocation(line: 142, column: 9, scope: !2449)
!2473 = !DILocation(line: 143, column: 13, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 142, column: 16)
!2475 = !DILocation(line: 145, column: 20, scope: !2474)
!2476 = !DILocation(line: 145, column: 26, scope: !2474)
!2477 = !DILocation(line: 145, column: 29, scope: !2474)
!2478 = !DILocation(line: 145, column: 38, scope: !2474)
!2479 = !DILocation(line: 145, column: 15, scope: !2474)
!2480 = !DILocation(line: 145, column: 18, scope: !2474)
!2481 = !{!2482, !2132, i64 0}
!2482 = !{!"", !2132, i64 0, !2132, i64 8, !2132, i64 16, !2278, i64 24, !2278, i64 40, !2132, i64 56, !2387, i64 64, !2387, i64 64, !2387, i64 64, !2387, i64 64, !2387, i64 64, !2143, i64 72, !2132, i64 80}
!2483 = !DILocation(line: 146, column: 25, scope: !2474)
!2484 = !DILocation(line: 146, column: 15, scope: !2474)
!2485 = !DILocation(line: 146, column: 23, scope: !2474)
!2486 = !{!2482, !2132, i64 80}
!2487 = !DILocation(line: 147, column: 15, scope: !2474)
!2488 = !DILocation(line: 147, column: 23, scope: !2474)
!2489 = !DILocation(line: 150, column: 17, scope: !2474)
!2490 = !DILocation(line: 152, column: 13, scope: !2474)
!2491 = !DILocation(line: 152, column: 37, scope: !2474)
!2492 = !DILocation(line: 152, column: 20, scope: !2474)
!2493 = !DILocation(line: 153, column: 60, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2474, file: !2, line: 152, column: 41)
!2495 = !DILocation(line: 153, column: 25, scope: !2494)
!2496 = !DILocation(line: 153, column: 23, scope: !2494)
!2497 = !DILocation(line: 154, column: 24, scope: !2494)
!2498 = !DILocation(line: 154, column: 21, scope: !2494)
!2499 = distinct !{!2499, !2490, !2500, !2501, !2502}
!2500 = !DILocation(line: 155, column: 13, scope: !2474)
!2501 = !{!"llvm.loop.mustprogress"}
!2502 = !{!"llvm.loop.unroll.disable"}
!2503 = !DILocation(line: 159, column: 23, scope: !2474)
!2504 = !DILocation(line: 159, column: 27, scope: !2474)
!2505 = !DILocation(line: 159, column: 21, scope: !2474)
!2506 = !DILocation(line: 162, column: 13, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 162, column: 13)
!2508 = !DILocation(line: 162, column: 23, scope: !2507)
!2509 = !DILocation(line: 162, column: 21, scope: !2507)
!2510 = !DILocation(line: 162, column: 13, scope: !2442)
!2511 = !DILocation(line: 164, column: 45, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 162, column: 34)
!2513 = !DILocation(line: 164, column: 62, scope: !2512)
!2514 = !DILocation(line: 164, column: 20, scope: !2512)
!2515 = !DILocation(line: 164, column: 18, scope: !2512)
!2516 = !DILocation(line: 165, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 165, column: 17)
!2518 = !DILocation(line: 165, column: 22, scope: !2517)
!2519 = !DILocation(line: 165, column: 17, scope: !2512)
!2520 = !DILocation(line: 166, column: 17, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 165, column: 31)
!2522 = !DILocation(line: 169, column: 30, scope: !2512)
!2523 = !DILocation(line: 169, column: 42, scope: !2512)
!2524 = !{!2278, !2143, i64 0}
!2525 = !DILocation(line: 169, column: 35, scope: !2512)
!2526 = !DILocation(line: 169, column: 48, scope: !2512)
!2527 = !DILocation(line: 169, column: 46, scope: !2512)
!2528 = !DILocation(line: 169, column: 23, scope: !2512)
!2529 = !DILocation(line: 170, column: 9, scope: !2512)
!2530 = !DILocation(line: 172, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 172, column: 13)
!2532 = !DILocation(line: 172, column: 19, scope: !2531)
!2533 = !DILocation(line: 172, column: 22, scope: !2531)
!2534 = !DILocation(line: 172, column: 29, scope: !2531)
!2535 = !DILocation(line: 172, column: 13, scope: !2442)
!2536 = !DILocation(line: 176, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 172, column: 38)
!2538 = !DILocation(line: 178, column: 25, scope: !2537)
!2539 = !DILocation(line: 178, column: 32, scope: !2537)
!2540 = !DILocation(line: 178, column: 38, scope: !2537)
!2541 = !DILocation(line: 178, column: 41, scope: !2537)
!2542 = !DILocation(line: 178, column: 46, scope: !2537)
!2543 = !DILocation(line: 178, column: 30, scope: !2537)
!2544 = !DILocation(line: 178, column: 50, scope: !2537)
!2545 = !DILocation(line: 178, column: 62, scope: !2537)
!2546 = !DILocation(line: 178, column: 55, scope: !2537)
!2547 = !DILocation(line: 178, column: 18, scope: !2537)
!2548 = !DILocation(line: 178, column: 22, scope: !2537)
!2549 = !DILocation(line: 180, column: 9, scope: !2537)
!2550 = !DILocation(line: 181, column: 20, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 180, column: 16)
!2552 = !DILocation(line: 181, column: 26, scope: !2551)
!2553 = !DILocation(line: 181, column: 29, scope: !2551)
!2554 = !DILocation(line: 181, column: 37, scope: !2551)
!2555 = !DILocation(line: 181, column: 15, scope: !2551)
!2556 = !DILocation(line: 181, column: 18, scope: !2551)
!2557 = !DILocation(line: 182, column: 21, scope: !2551)
!2558 = !DILocation(line: 182, column: 15, scope: !2551)
!2559 = !DILocation(line: 182, column: 19, scope: !2551)
!2560 = !{!2482, !2132, i64 8}
!2561 = !DILocation(line: 184, column: 13, scope: !2551)
!2562 = !DILocation(line: 184, column: 37, scope: !2551)
!2563 = !DILocation(line: 184, column: 20, scope: !2551)
!2564 = !DILocation(line: 185, column: 55, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2551, file: !2, line: 184, column: 41)
!2566 = !DILocation(line: 185, column: 24, scope: !2565)
!2567 = !DILocation(line: 185, column: 22, scope: !2565)
!2568 = !DILocation(line: 186, column: 17, scope: !2565)
!2569 = distinct !{!2569, !2561, !2570, !2501, !2502}
!2570 = !DILocation(line: 187, column: 13, scope: !2551)
!2571 = !DILocation(line: 189, column: 18, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2551, file: !2, line: 189, column: 17)
!2573 = !DILocation(line: 189, column: 17, scope: !2572)
!2574 = !DILocation(line: 189, column: 23, scope: !2572)
!2575 = !DILocation(line: 189, column: 17, scope: !2551)
!2576 = !DILocation(line: 190, column: 27, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 189, column: 31)
!2578 = !DILocation(line: 190, column: 31, scope: !2577)
!2579 = !DILocation(line: 190, column: 21, scope: !2577)
!2580 = !DILocation(line: 190, column: 25, scope: !2577)
!2581 = !DILocation(line: 191, column: 28, scope: !2577)
!2582 = !DILocation(line: 191, column: 21, scope: !2577)
!2583 = !DILocation(line: 191, column: 26, scope: !2577)
!2584 = !DILocation(line: 192, column: 51, scope: !2577)
!2585 = !DILocation(line: 192, column: 61, scope: !2577)
!2586 = !DILocation(line: 192, column: 64, scope: !2577)
!2587 = !DILocation(line: 192, column: 24, scope: !2577)
!2588 = !DILocation(line: 192, column: 17, scope: !2577)
!2589 = !DILocation(line: 195, column: 26, scope: !2551)
!2590 = !DILocation(line: 195, column: 37, scope: !2551)
!2591 = !DILocation(line: 195, column: 30, scope: !2551)
!2592 = !DILocation(line: 195, column: 18, scope: !2551)
!2593 = !DILocation(line: 195, column: 22, scope: !2551)
!2594 = !DILocation(line: 197, column: 16, scope: !2551)
!2595 = !DILocation(line: 197, column: 20, scope: !2551)
!2596 = !DILocation(line: 203, column: 9, scope: !2442)
!2597 = !DILocation(line: 205, column: 25, scope: !2442)
!2598 = !DILocation(line: 205, column: 31, scope: !2442)
!2599 = !{!2600, !2143, i64 248}
!2600 = !{!"ngx_http_core_loc_conf_s", !2278, i64 0, !2278, i64 16, !2132, i64 32, !2387, i64 40, !2387, i64 40, !2387, i64 40, !2387, i64 40, !2387, i64 40, !2387, i64 40, !2387, i64 40, !2387, i64 41, !2132, i64 48, !2132, i64 56, !2132, i64 64, !2387, i64 72, !2132, i64 80, !2132, i64 88, !2143, i64 96, !2278, i64 104, !2278, i64 120, !2132, i64 136, !2132, i64 144, !2132, i64 152, !2192, i64 160, !2278, i64 176, !2143, i64 192, !2143, i64 200, !2143, i64 208, !2143, i64 216, !2143, i64 224, !2143, i64 232, !2143, i64 240, !2143, i64 248, !2143, i64 256, !2132, i64 264, !2132, i64 272, !2143, i64 280, !2143, i64 288, !2143, i64 296, !2143, i64 304, !2143, i64 312, !2143, i64 320, !2143, i64 328, !2143, i64 336, !2132, i64 344, !2143, i64 352, !2143, i64 360, !2143, i64 368, !2143, i64 376, !2143, i64 384, !2143, i64 392, !2143, i64 400, !2143, i64 408, !2143, i64 416, !2143, i64 424, !2143, i64 432, !2143, i64 440, !2143, i64 448, !2143, i64 456, !2143, i64 464, !2143, i64 472, !2143, i64 480, !2143, i64 488, !2143, i64 496, !2143, i64 504, !2143, i64 512, !2143, i64 520, !2143, i64 528, !2143, i64 536, !2143, i64 544, !2143, i64 552, !2143, i64 560, !2143, i64 568, !2143, i64 576, !2143, i64 584, !2132, i64 592, !2143, i64 600, !2132, i64 608, !2132, i64 616, !2132, i64 624, !2132, i64 632, !2143, i64 640, !2143, i64 648, !2143, i64 656, !2143, i64 664, !2132, i64 672, !2143, i64 680, !2143, i64 688, !2132, i64 696}
!2601 = !DILocation(line: 205, column: 12, scope: !2442)
!2602 = !DILocation(line: 205, column: 23, scope: !2442)
!2603 = !{!2604, !2143, i64 48}
!2604 = !{!"", !2387, i64 0, !2143, i64 8, !2143, i64 16, !2143, i64 24, !2143, i64 32, !2143, i64 40, !2143, i64 48, !2387, i64 56, !2132, i64 64, !2143, i64 72, !2143, i64 80, !2143, i64 88, !2387, i64 96, !2387, i64 96, !2387, i64 96, !2387, i64 96, !2387, i64 96, !2387, i64 96, !2387, i64 96, !2387, i64 97, !2387, i64 97, !2387, i64 97, !2387, i64 97}
!2605 = !DILocation(line: 206, column: 23, scope: !2442)
!2606 = !DILocation(line: 206, column: 29, scope: !2442)
!2607 = !{!2600, !2143, i64 200}
!2608 = !DILocation(line: 206, column: 12, scope: !2442)
!2609 = !DILocation(line: 206, column: 21, scope: !2442)
!2610 = !{!2604, !2143, i64 40}
!2611 = !DILocation(line: 207, column: 20, scope: !2442)
!2612 = !DILocation(line: 207, column: 26, scope: !2442)
!2613 = !{!2600, !2143, i64 640}
!2614 = !DILocation(line: 207, column: 12, scope: !2442)
!2615 = !DILocation(line: 207, column: 18, scope: !2442)
!2616 = !{!2604, !2143, i64 72}
!2617 = !DILocation(line: 208, column: 23, scope: !2442)
!2618 = !DILocation(line: 208, column: 29, scope: !2442)
!2619 = !{!2600, !2143, i64 648}
!2620 = !DILocation(line: 208, column: 12, scope: !2442)
!2621 = !DILocation(line: 208, column: 21, scope: !2442)
!2622 = !{!2604, !2143, i64 80}
!2623 = !DILocation(line: 209, column: 12, scope: !2442)
!2624 = !DILocation(line: 209, column: 22, scope: !2442)
!2625 = !DILocation(line: 210, column: 21, scope: !2442)
!2626 = !DILocation(line: 210, column: 27, scope: !2442)
!2627 = !{!2600, !2143, i64 656}
!2628 = !DILocation(line: 210, column: 12, scope: !2442)
!2629 = !DILocation(line: 210, column: 19, scope: !2442)
!2630 = !DILocation(line: 211, column: 21, scope: !2442)
!2631 = !DILocation(line: 211, column: 27, scope: !2442)
!2632 = !{!2600, !2143, i64 664}
!2633 = !DILocation(line: 211, column: 12, scope: !2442)
!2634 = !DILocation(line: 211, column: 19, scope: !2442)
!2635 = !DILocation(line: 213, column: 43, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 213, column: 13)
!2637 = !DILocation(line: 213, column: 46, scope: !2636)
!2638 = !DILocation(line: 213, column: 13, scope: !2636)
!2639 = !DILocation(line: 213, column: 64, scope: !2636)
!2640 = !DILocation(line: 213, column: 13, scope: !2442)
!2641 = !DILocation(line: 214, column: 13, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 213, column: 75)
!2643 = !DILocation(line: 217, column: 34, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 217, column: 13)
!2645 = !DILocation(line: 217, column: 40, scope: !2644)
!2646 = !{!2600, !2132, i64 632}
!2647 = !DILocation(line: 217, column: 69, scope: !2644)
!2648 = !DILocation(line: 217, column: 72, scope: !2644)
!2649 = !{!2386, !2132, i64 88}
!2650 = !DILocation(line: 217, column: 13, scope: !2644)
!2651 = !DILocation(line: 218, column: 13, scope: !2644)
!2652 = !DILocation(line: 217, column: 13, scope: !2442)
!2653 = !DILocation(line: 220, column: 20, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 220, column: 17)
!2655 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 219, column: 9)
!2656 = !{!2604, !2387, i64 56}
!2657 = !DILocation(line: 220, column: 24, scope: !2654)
!2658 = !DILocation(line: 220, column: 17, scope: !2655)
!2659 = !DILocation(line: 221, column: 17, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 220, column: 30)
!2661 = !DILocation(line: 228, column: 20, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 228, column: 17)
!2663 = !DILocation(line: 228, column: 24, scope: !2662)
!2664 = !DILocation(line: 229, column: 17, scope: !2662)
!2665 = !DILocation(line: 229, column: 23, scope: !2662)
!2666 = !DILocation(line: 229, column: 27, scope: !2662)
!2667 = !DILocation(line: 228, column: 17, scope: !2655)
!2668 = !DILocation(line: 231, column: 17, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 230, column: 13)
!2670 = !DILocation(line: 235, column: 20, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 235, column: 17)
!2672 = !DILocation(line: 235, column: 24, scope: !2671)
!2673 = !DILocation(line: 236, column: 17, scope: !2671)
!2674 = !DILocation(line: 236, column: 23, scope: !2671)
!2675 = !DILocation(line: 236, column: 27, scope: !2671)
!2676 = !DILocation(line: 237, column: 17, scope: !2671)
!2677 = !DILocation(line: 237, column: 23, scope: !2671)
!2678 = !DILocation(line: 237, column: 27, scope: !2671)
!2679 = !DILocation(line: 235, column: 17, scope: !2655)
!2680 = !DILocation(line: 239, column: 45, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 238, column: 13)
!2682 = !DILocation(line: 239, column: 48, scope: !2681)
!2683 = !DILocation(line: 239, column: 59, scope: !2681)
!2684 = !DILocation(line: 239, column: 68, scope: !2681)
!2685 = !DILocation(line: 239, column: 24, scope: !2681)
!2686 = !DILocation(line: 239, column: 17, scope: !2681)
!2687 = !DILocation(line: 242, column: 18, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 242, column: 17)
!2689 = !DILocation(line: 242, column: 17, scope: !2655)
!2690 = !DILocation(line: 243, column: 46, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !2, line: 242, column: 30)
!2692 = !DILocation(line: 243, column: 49, scope: !2691)
!2693 = !DILocation(line: 243, column: 60, scope: !2691)
!2694 = !DILocation(line: 243, column: 66, scope: !2691)
!2695 = !DILocation(line: 243, column: 71, scope: !2691)
!2696 = !DILocation(line: 243, column: 22, scope: !2691)
!2697 = !DILocation(line: 243, column: 20, scope: !2691)
!2698 = !DILocation(line: 245, column: 21, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2691, file: !2, line: 245, column: 21)
!2700 = !DILocation(line: 245, column: 24, scope: !2699)
!2701 = !DILocation(line: 245, column: 21, scope: !2691)
!2702 = !DILocation(line: 246, column: 28, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !2, line: 245, column: 35)
!2704 = !DILocation(line: 246, column: 21, scope: !2703)
!2705 = !DILocation(line: 249, column: 28, scope: !2691)
!2706 = !DILocation(line: 250, column: 13, scope: !2691)
!2707 = !DILocation(line: 252, column: 20, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 252, column: 17)
!2709 = !DILocation(line: 252, column: 24, scope: !2708)
!2710 = !DILocation(line: 252, column: 17, scope: !2655)
!2711 = !DILocation(line: 253, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 252, column: 39)
!2713 = !DILocation(line: 256, column: 13, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 256, column: 13)
!2715 = !{!2386, !2132, i64 8}
!2716 = !{!2717, !2132, i64 80}
!2717 = !{!"ngx_connection_s", !2132, i64 0, !2132, i64 8, !2132, i64 16, !2387, i64 24, !2132, i64 32, !2132, i64 40, !2132, i64 48, !2132, i64 56, !2132, i64 64, !2143, i64 72, !2132, i64 80, !2132, i64 88, !2387, i64 96, !2132, i64 104, !2387, i64 112, !2278, i64 120, !2132, i64 136, !2132, i64 144, !2132, i64 152, !2132, i64 160, !2387, i64 168, !2132, i64 176, !2718, i64 184, !2143, i64 200, !2143, i64 208, !2143, i64 216, !2387, i64 224, !2387, i64 225, !2387, i64 225, !2387, i64 225, !2387, i64 225, !2387, i64 225, !2387, i64 225, !2387, i64 226, !2387, i64 226, !2387, i64 226, !2387, i64 226, !2387, i64 226, !2387, i64 226, !2387, i64 226, !2387, i64 227, !2387, i64 227}
!2718 = !{!"ngx_queue_s", !2132, i64 0, !2132, i64 8}
!2719 = !{!2720, !2143, i64 0}
!2720 = !{!"ngx_log_s", !2143, i64 0, !2132, i64 8, !2143, i64 16, !2143, i64 24, !2132, i64 32, !2132, i64 40, !2132, i64 48, !2132, i64 56, !2132, i64 64, !2132, i64 72}
!2721 = !DILocation(line: 256, column: 13, scope: !2655)
!2722 = !{!2604, !2132, i64 64}
!2723 = !DILocation(line: 259, column: 13, scope: !2655)
!2724 = !DILocation(line: 262, column: 19, scope: !2442)
!2725 = !DILocation(line: 262, column: 22, scope: !2442)
!2726 = !DILocation(line: 262, column: 26, scope: !2442)
!2727 = !DILocation(line: 262, column: 32, scope: !2442)
!2728 = !DILocation(line: 262, column: 30, scope: !2442)
!2729 = !DILocation(line: 262, column: 36, scope: !2442)
!2730 = !DILocation(line: 262, column: 13, scope: !2442)
!2731 = !DILocation(line: 262, column: 17, scope: !2442)
!2732 = !DILocation(line: 264, column: 14, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 264, column: 13)
!2734 = !DILocation(line: 264, column: 20, scope: !2733)
!2735 = !{!2600, !2143, i64 96}
!2736 = !DILocation(line: 264, column: 13, scope: !2442)
!2737 = !DILocation(line: 265, column: 29, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !2, line: 264, column: 27)
!2739 = !DILocation(line: 265, column: 36, scope: !2738)
!2740 = !DILocation(line: 265, column: 34, scope: !2738)
!2741 = !DILocation(line: 265, column: 17, scope: !2738)
!2742 = !DILocation(line: 265, column: 22, scope: !2738)
!2743 = !DILocation(line: 267, column: 9, scope: !2738)
!2744 = !DILocation(line: 268, column: 36, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2733, file: !2, line: 267, column: 16)
!2746 = !DILocation(line: 268, column: 39, scope: !2745)
!2747 = !DILocation(line: 268, column: 49, scope: !2745)
!2748 = !DILocation(line: 268, column: 24, scope: !2745)
!2749 = !DILocation(line: 268, column: 17, scope: !2745)
!2750 = !DILocation(line: 268, column: 22, scope: !2745)
!2751 = !DILocation(line: 269, column: 21, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 269, column: 17)
!2753 = !DILocation(line: 269, column: 26, scope: !2752)
!2754 = !DILocation(line: 269, column: 17, scope: !2745)
!2755 = !DILocation(line: 270, column: 17, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 269, column: 35)
!2757 = !DILocation(line: 273, column: 17, scope: !2745)
!2758 = !DILocation(line: 273, column: 15, scope: !2745)
!2759 = !DILocation(line: 274, column: 13, scope: !2745)
!2760 = !DILocation(line: 277, column: 43, scope: !2442)
!2761 = !DILocation(line: 277, column: 53, scope: !2442)
!2762 = !DILocation(line: 277, column: 56, scope: !2442)
!2763 = !DILocation(line: 277, column: 16, scope: !2442)
!2764 = !DILocation(line: 277, column: 9, scope: !2442)
!2765 = !DILocation(line: 131, column: 44, scope: !2433)
!2766 = !DILocation(line: 131, column: 5, scope: !2433)
!2767 = distinct !{!2767, !2439, !2768, !2501, !2502}
!2768 = !DILocation(line: 278, column: 5, scope: !2430)
!2769 = !DILocation(line: 280, column: 5, scope: !2301)
!2770 = !DILocation(line: 281, column: 1, scope: !2301)
!2771 = !DISubprogram(name: "ngx_http_internal_redirect", scope: !12, file: !12, line: 511, type: !2772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!91, !97, !793, !793}
!2774 = !DISubprogram(name: "ngx_http_map_uri_to_path", scope: !12, file: !12, line: 500, type: !2775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!56, !97, !793, !2777, !49}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!2778 = !DISubprogram(name: "ngx_http_set_disable_symlinks", scope: !12, file: !12, line: 532, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!91, !97, !1707, !793, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2782 = !DISubprogram(name: "ngx_open_cached_file", scope: !1827, file: !1827, line: 125, type: !2783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!91, !1825, !793, !2781, !402}
!2785 = distinct !DISubprogram(name: "ngx_http_index_error", scope: !2, file: !2, line: 368, type: !2786, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!91, !97, !1707, !56, !2328}
!2788 = !{!2789, !2790, !2791, !2792}
!2789 = !DILocalVariable(name: "r", arg: 1, scope: !2785, file: !2, line: 368, type: !97)
!2790 = !DILocalVariable(name: "clcf", arg: 2, scope: !2785, file: !2, line: 368, type: !1707)
!2791 = !DILocalVariable(name: "file", arg: 3, scope: !2785, file: !2, line: 369, type: !56)
!2792 = !DILocalVariable(name: "err", arg: 4, scope: !2785, file: !2, line: 369, type: !2328)
!2793 = !DILocation(line: 368, column: 42, scope: !2785)
!2794 = !DILocation(line: 368, column: 72, scope: !2785)
!2795 = !DILocation(line: 369, column: 13, scope: !2785)
!2796 = !{!2387, !2387, i64 0}
!2797 = !DILocation(line: 369, column: 29, scope: !2785)
!2798 = !DILocation(line: 371, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 371, column: 9)
!2800 = !DILocation(line: 371, column: 13, scope: !2799)
!2801 = !DILocation(line: 371, column: 9, scope: !2785)
!2802 = !DILocation(line: 372, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 372, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !2, line: 371, column: 28)
!2805 = !DILocation(line: 372, column: 9, scope: !2804)
!2806 = !DILocation(line: 375, column: 9, scope: !2804)
!2807 = !DILocation(line: 378, column: 9, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 378, column: 9)
!2809 = !DILocation(line: 378, column: 15, scope: !2808)
!2810 = !{!2600, !2143, i64 520}
!2811 = !DILocation(line: 378, column: 9, scope: !2785)
!2812 = !DILocation(line: 379, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 379, column: 9)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !2, line: 378, column: 30)
!2815 = !DILocation(line: 379, column: 9, scope: !2814)
!2816 = !DILocation(line: 381, column: 5, scope: !2814)
!2817 = !DILocation(line: 383, column: 5, scope: !2785)
!2818 = !DILocation(line: 384, column: 1, scope: !2785)
!2819 = distinct !DISubprogram(name: "ngx_http_index_test_dir", scope: !2, file: !2, line: 285, type: !2820, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!91, !97, !1707, !56, !56}
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2823 = !DILocalVariable(name: "r", arg: 1, scope: !2819, file: !2, line: 285, type: !97)
!2824 = !DILocalVariable(name: "clcf", arg: 2, scope: !2819, file: !2, line: 285, type: !1707)
!2825 = !DILocalVariable(name: "path", arg: 3, scope: !2819, file: !2, line: 286, type: !56)
!2826 = !DILocalVariable(name: "last", arg: 4, scope: !2819, file: !2, line: 286, type: !56)
!2827 = !DILocalVariable(name: "c", scope: !2819, file: !2, line: 288, type: !57)
!2828 = !DILocalVariable(name: "dir", scope: !2819, file: !2, line: 289, type: !78)
!2829 = !DILocalVariable(name: "of", scope: !2819, file: !2, line: 290, type: !2317)
!2830 = !DILocation(line: 285, column: 45, scope: !2819)
!2831 = !DILocation(line: 285, column: 74, scope: !2819)
!2832 = !DILocation(line: 286, column: 13, scope: !2819)
!2833 = !DILocation(line: 286, column: 27, scope: !2819)
!2834 = !DILocation(line: 288, column: 5, scope: !2819)
!2835 = !DILocation(line: 288, column: 27, scope: !2819)
!2836 = !DILocation(line: 289, column: 5, scope: !2819)
!2837 = !DILocation(line: 289, column: 27, scope: !2819)
!2838 = !DILocation(line: 290, column: 5, scope: !2819)
!2839 = !DILocation(line: 290, column: 27, scope: !2819)
!2840 = !DILocation(line: 292, column: 10, scope: !2819)
!2841 = !DILocation(line: 292, column: 9, scope: !2819)
!2842 = !DILocation(line: 292, column: 7, scope: !2819)
!2843 = !DILocation(line: 293, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 293, column: 9)
!2845 = !DILocation(line: 293, column: 11, scope: !2844)
!2846 = !DILocation(line: 293, column: 18, scope: !2844)
!2847 = !DILocation(line: 293, column: 21, scope: !2844)
!2848 = !DILocation(line: 293, column: 29, scope: !2844)
!2849 = !DILocation(line: 293, column: 26, scope: !2844)
!2850 = !DILocation(line: 293, column: 9, scope: !2819)
!2851 = !DILocation(line: 295, column: 15, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 293, column: 35)
!2853 = !DILocation(line: 295, column: 13, scope: !2852)
!2854 = !DILocation(line: 295, column: 11, scope: !2852)
!2855 = !DILocation(line: 296, column: 5, scope: !2852)
!2856 = !DILocation(line: 297, column: 6, scope: !2819)
!2857 = !DILocation(line: 297, column: 11, scope: !2819)
!2858 = !DILocation(line: 299, column: 15, scope: !2819)
!2859 = !DILocation(line: 299, column: 22, scope: !2819)
!2860 = !DILocation(line: 299, column: 20, scope: !2819)
!2861 = !DILocation(line: 299, column: 9, scope: !2819)
!2862 = !DILocation(line: 299, column: 13, scope: !2819)
!2863 = !DILocation(line: 300, column: 16, scope: !2819)
!2864 = !DILocation(line: 300, column: 9, scope: !2819)
!2865 = !DILocation(line: 300, column: 14, scope: !2819)
!2866 = !DILocation(line: 305, column: 5, scope: !2819)
!2867 = !DILocation(line: 307, column: 8, scope: !2819)
!2868 = !DILocation(line: 307, column: 17, scope: !2819)
!2869 = !DILocation(line: 308, column: 8, scope: !2819)
!2870 = !DILocation(line: 308, column: 18, scope: !2819)
!2871 = !DILocation(line: 309, column: 16, scope: !2819)
!2872 = !DILocation(line: 309, column: 22, scope: !2819)
!2873 = !DILocation(line: 309, column: 8, scope: !2819)
!2874 = !DILocation(line: 309, column: 14, scope: !2819)
!2875 = !DILocation(line: 310, column: 17, scope: !2819)
!2876 = !DILocation(line: 310, column: 23, scope: !2819)
!2877 = !DILocation(line: 310, column: 8, scope: !2819)
!2878 = !DILocation(line: 310, column: 15, scope: !2819)
!2879 = !DILocation(line: 312, column: 39, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 312, column: 9)
!2881 = !DILocation(line: 312, column: 42, scope: !2880)
!2882 = !DILocation(line: 312, column: 9, scope: !2880)
!2883 = !DILocation(line: 312, column: 59, scope: !2880)
!2884 = !DILocation(line: 312, column: 9, scope: !2819)
!2885 = !DILocation(line: 313, column: 9, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !2, line: 312, column: 70)
!2887 = !DILocation(line: 316, column: 30, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 316, column: 9)
!2889 = !DILocation(line: 316, column: 36, scope: !2888)
!2890 = !DILocation(line: 316, column: 64, scope: !2888)
!2891 = !DILocation(line: 316, column: 67, scope: !2888)
!2892 = !DILocation(line: 316, column: 9, scope: !2888)
!2893 = !DILocation(line: 317, column: 9, scope: !2888)
!2894 = !DILocation(line: 316, column: 9, scope: !2819)
!2895 = !DILocation(line: 319, column: 16, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !2, line: 319, column: 13)
!2897 = distinct !DILexicalBlock(scope: !2888, file: !2, line: 318, column: 5)
!2898 = !DILocation(line: 319, column: 13, scope: !2896)
!2899 = !DILocation(line: 319, column: 13, scope: !2897)
!2900 = !DILocation(line: 322, column: 20, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 322, column: 17)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 319, column: 21)
!2903 = !DILocation(line: 322, column: 24, scope: !2901)
!2904 = !DILocation(line: 323, column: 17, scope: !2901)
!2905 = !DILocation(line: 323, column: 23, scope: !2901)
!2906 = !DILocation(line: 323, column: 27, scope: !2901)
!2907 = !DILocation(line: 322, column: 17, scope: !2902)
!2908 = !DILocation(line: 325, column: 17, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 324, column: 13)
!2910 = !DILocation(line: 329, column: 20, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 329, column: 17)
!2912 = !DILocation(line: 329, column: 24, scope: !2911)
!2913 = !DILocation(line: 329, column: 17, scope: !2902)
!2914 = !DILocation(line: 330, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !2, line: 329, column: 39)
!2916 = !DILocation(line: 330, column: 18, scope: !2915)
!2917 = !DILocation(line: 330, column: 23, scope: !2915)
!2918 = !DILocation(line: 331, column: 45, scope: !2915)
!2919 = !DILocation(line: 331, column: 48, scope: !2915)
!2920 = !DILocation(line: 331, column: 58, scope: !2915)
!2921 = !DILocation(line: 331, column: 24, scope: !2915)
!2922 = !DILocation(line: 331, column: 17, scope: !2915)
!2923 = !DILocation(line: 334, column: 20, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 334, column: 17)
!2925 = !DILocation(line: 334, column: 24, scope: !2924)
!2926 = !DILocation(line: 334, column: 17, scope: !2902)
!2927 = !DILocation(line: 336, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !2, line: 334, column: 39)
!2929 = !DILocation(line: 336, column: 18, scope: !2928)
!2930 = !DILocation(line: 336, column: 23, scope: !2928)
!2931 = !DILocation(line: 344, column: 17, scope: !2928)
!2932 = !DILocation(line: 347, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 347, column: 13)
!2934 = !DILocation(line: 347, column: 13, scope: !2902)
!2935 = !DILocation(line: 349, column: 9, scope: !2902)
!2936 = !DILocation(line: 351, column: 9, scope: !2897)
!2937 = !DILocation(line: 354, column: 13, scope: !2819)
!2938 = !DILocation(line: 354, column: 6, scope: !2819)
!2939 = !DILocation(line: 354, column: 11, scope: !2819)
!2940 = !DILocation(line: 356, column: 12, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 356, column: 9)
!2942 = !DILocation(line: 356, column: 9, scope: !2941)
!2943 = !DILocation(line: 356, column: 9, scope: !2819)
!2944 = !DILocation(line: 357, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !2, line: 356, column: 20)
!2946 = !DILocation(line: 360, column: 5, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 360, column: 5)
!2948 = !DILocation(line: 360, column: 5, scope: !2819)
!2949 = !DILocation(line: 363, column: 5, scope: !2819)
!2950 = !DILocation(line: 364, column: 1, scope: !2819)
!2951 = !DISubprogram(name: "ngx_log_error_core", scope: !154, file: !154, line: 88, type: !2952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !27, !151, !2328, !1001, null}
!2954 = !DISubprogram(name: "ngx_pnalloc", scope: !405, file: !405, line: 80, type: !2955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!32, !402, !49}
!2957 = !DISubprogram(name: "ngx_palloc", scope: !405, file: !405, line: 79, type: !2955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2958 = !DISubprogram(name: "ngx_array_create", scope: !552, file: !552, line: 25, type: !2959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!970, !402, !27, !49}
!2961 = distinct !DISubprogram(name: "ngx_http_index_set_index", scope: !2, file: !2, line: 464, type: !1013, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!2963 = !DILocalVariable(name: "cf", arg: 1, scope: !2961, file: !2, line: 464, type: !964)
!2964 = !DILocalVariable(name: "cmd", arg: 2, scope: !2961, file: !2, line: 464, type: !1005)
!2965 = !DILocalVariable(name: "conf", arg: 3, scope: !2961, file: !2, line: 464, type: !32)
!2966 = !DILocalVariable(name: "ilcf", scope: !2961, file: !2, line: 466, type: !2168)
!2967 = !DILocalVariable(name: "value", scope: !2961, file: !2, line: 468, type: !793)
!2968 = !DILocalVariable(name: "i", scope: !2961, file: !2, line: 469, type: !27)
!2969 = !DILocalVariable(name: "n", scope: !2961, file: !2, line: 469, type: !27)
!2970 = !DILocalVariable(name: "index", scope: !2961, file: !2, line: 470, type: !2208)
!2971 = !DILocalVariable(name: "sc", scope: !2961, file: !2, line: 471, type: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_script_compile_t", file: !45, line: 63, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 39, size: 704, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !2973, file: !45, line: 40, baseType: !964, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !2973, file: !45, line: 41, baseType: !793, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !2973, file: !45, line: 43, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !2973, file: !45, line: 44, baseType: !2978, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2973, file: !45, line: 45, baseType: !2978, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !2973, file: !45, line: 47, baseType: !27, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !2973, file: !45, line: 48, baseType: !27, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "captures_mask", scope: !2973, file: !45, line: 49, baseType: !27, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2973, file: !45, line: 50, baseType: !27, size: 64, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !2973, file: !45, line: 52, baseType: !32, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "compile_args", scope: !2973, file: !45, line: 54, baseType: !13, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "complete_lengths", scope: !2973, file: !45, line: 55, baseType: !13, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "complete_values", scope: !2973, file: !45, line: 56, baseType: !13, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !2973, file: !45, line: 57, baseType: !13, size: 1, offset: 643, flags: DIFlagBitField, extraData: i64 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !2973, file: !45, line: 58, baseType: !13, size: 1, offset: 644, flags: DIFlagBitField, extraData: i64 640)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "root_prefix", scope: !2973, file: !45, line: 59, baseType: !13, size: 1, offset: 645, flags: DIFlagBitField, extraData: i64 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dup_capture", scope: !2973, file: !45, line: 61, baseType: !13, size: 1, offset: 646, flags: DIFlagBitField, extraData: i64 640)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2973, file: !45, line: 62, baseType: !13, size: 1, offset: 647, flags: DIFlagBitField, extraData: i64 640)
!2994 = !DILocation(line: 464, column: 38, scope: !2961)
!2995 = !DILocation(line: 464, column: 57, scope: !2961)
!2996 = !DILocation(line: 464, column: 68, scope: !2961)
!2997 = !DILocation(line: 466, column: 5, scope: !2961)
!2998 = !DILocation(line: 466, column: 32, scope: !2961)
!2999 = !DILocation(line: 466, column: 39, scope: !2961)
!3000 = !DILocation(line: 468, column: 5, scope: !2961)
!3001 = !DILocation(line: 468, column: 33, scope: !2961)
!3002 = !DILocation(line: 469, column: 5, scope: !2961)
!3003 = !DILocation(line: 469, column: 33, scope: !2961)
!3004 = !DILocation(line: 469, column: 36, scope: !2961)
!3005 = !DILocation(line: 470, column: 5, scope: !2961)
!3006 = !DILocation(line: 470, column: 33, scope: !2961)
!3007 = !DILocation(line: 471, column: 5, scope: !2961)
!3008 = !DILocation(line: 471, column: 33, scope: !2961)
!3009 = !DILocation(line: 473, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 473, column: 9)
!3011 = !DILocation(line: 473, column: 15, scope: !3010)
!3012 = !DILocation(line: 473, column: 23, scope: !3010)
!3013 = !DILocation(line: 473, column: 9, scope: !2961)
!3014 = !DILocation(line: 474, column: 42, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 473, column: 32)
!3016 = !DILocation(line: 474, column: 46, scope: !3015)
!3017 = !DILocation(line: 474, column: 25, scope: !3015)
!3018 = !DILocation(line: 474, column: 9, scope: !3015)
!3019 = !DILocation(line: 474, column: 15, scope: !3015)
!3020 = !DILocation(line: 474, column: 23, scope: !3015)
!3021 = !DILocation(line: 475, column: 13, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3015, file: !2, line: 475, column: 13)
!3023 = !DILocation(line: 475, column: 19, scope: !3022)
!3024 = !DILocation(line: 475, column: 27, scope: !3022)
!3025 = !DILocation(line: 475, column: 13, scope: !3015)
!3026 = !DILocation(line: 476, column: 13, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 475, column: 36)
!3028 = !DILocation(line: 478, column: 5, scope: !3015)
!3029 = !DILocation(line: 480, column: 13, scope: !2961)
!3030 = !DILocation(line: 480, column: 17, scope: !2961)
!3031 = !{!2142, !2132, i64 8}
!3032 = !DILocation(line: 480, column: 23, scope: !2961)
!3033 = !DILocation(line: 480, column: 11, scope: !2961)
!3034 = !DILocation(line: 482, column: 12, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 482, column: 5)
!3036 = !DILocation(line: 482, column: 10, scope: !3035)
!3037 = !DILocation(line: 482, column: 17, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !2, line: 482, column: 5)
!3039 = !DILocation(line: 482, column: 21, scope: !3038)
!3040 = !DILocation(line: 482, column: 25, scope: !3038)
!3041 = !DILocation(line: 482, column: 31, scope: !3038)
!3042 = !DILocation(line: 482, column: 19, scope: !3038)
!3043 = !DILocation(line: 482, column: 5, scope: !3035)
!3044 = !DILocation(line: 484, column: 13, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 484, column: 13)
!3046 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 482, column: 43)
!3047 = !DILocation(line: 484, column: 19, scope: !3045)
!3048 = !DILocation(line: 484, column: 22, scope: !3045)
!3049 = !DILocation(line: 484, column: 30, scope: !3045)
!3050 = !DILocation(line: 484, column: 37, scope: !3045)
!3051 = !DILocation(line: 484, column: 40, scope: !3045)
!3052 = !DILocation(line: 484, column: 45, scope: !3045)
!3053 = !DILocation(line: 484, column: 49, scope: !3045)
!3054 = !DILocation(line: 484, column: 55, scope: !3045)
!3055 = !DILocation(line: 484, column: 61, scope: !3045)
!3056 = !DILocation(line: 484, column: 42, scope: !3045)
!3057 = !DILocation(line: 484, column: 13, scope: !3046)
!3058 = !DILocation(line: 485, column: 46, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3045, file: !2, line: 484, column: 66)
!3060 = !DILocation(line: 485, column: 13, scope: !3059)
!3061 = !DILocation(line: 488, column: 9, scope: !3059)
!3062 = !DILocation(line: 490, column: 13, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 490, column: 13)
!3064 = !DILocation(line: 490, column: 19, scope: !3063)
!3065 = !DILocation(line: 490, column: 22, scope: !3063)
!3066 = !DILocation(line: 490, column: 26, scope: !3063)
!3067 = !DILocation(line: 490, column: 13, scope: !3046)
!3068 = !DILocation(line: 491, column: 47, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !2, line: 490, column: 32)
!3070 = !DILocation(line: 493, column: 33, scope: !3069)
!3071 = !DILocation(line: 491, column: 13, scope: !3069)
!3072 = !DILocation(line: 494, column: 13, scope: !3069)
!3073 = !DILocation(line: 497, column: 32, scope: !3046)
!3074 = !DILocation(line: 497, column: 38, scope: !3046)
!3075 = !DILocation(line: 497, column: 17, scope: !3046)
!3076 = !DILocation(line: 497, column: 15, scope: !3046)
!3077 = !DILocation(line: 498, column: 13, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 498, column: 13)
!3079 = !DILocation(line: 498, column: 19, scope: !3078)
!3080 = !DILocation(line: 498, column: 13, scope: !3046)
!3081 = !DILocation(line: 499, column: 13, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 498, column: 28)
!3083 = !DILocation(line: 502, column: 27, scope: !3046)
!3084 = !DILocation(line: 502, column: 33, scope: !3046)
!3085 = !DILocation(line: 502, column: 36, scope: !3046)
!3086 = !DILocation(line: 502, column: 9, scope: !3046)
!3087 = !DILocation(line: 502, column: 16, scope: !3046)
!3088 = !DILocation(line: 502, column: 21, scope: !3046)
!3089 = !DILocation(line: 502, column: 25, scope: !3046)
!3090 = !DILocation(line: 503, column: 28, scope: !3046)
!3091 = !DILocation(line: 503, column: 34, scope: !3046)
!3092 = !DILocation(line: 503, column: 37, scope: !3046)
!3093 = !DILocation(line: 503, column: 9, scope: !3046)
!3094 = !DILocation(line: 503, column: 16, scope: !3046)
!3095 = !DILocation(line: 503, column: 21, scope: !3046)
!3096 = !DILocation(line: 503, column: 26, scope: !3046)
!3097 = !DILocation(line: 504, column: 9, scope: !3046)
!3098 = !DILocation(line: 504, column: 16, scope: !3046)
!3099 = !DILocation(line: 504, column: 24, scope: !3046)
!3100 = !DILocation(line: 505, column: 9, scope: !3046)
!3101 = !DILocation(line: 505, column: 16, scope: !3046)
!3102 = !DILocation(line: 505, column: 23, scope: !3046)
!3103 = !DILocation(line: 507, column: 46, scope: !3046)
!3104 = !DILocation(line: 507, column: 52, scope: !3046)
!3105 = !DILocation(line: 507, column: 13, scope: !3046)
!3106 = !DILocation(line: 507, column: 11, scope: !3046)
!3107 = !DILocation(line: 509, column: 13, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 509, column: 13)
!3109 = !DILocation(line: 509, column: 15, scope: !3108)
!3110 = !DILocation(line: 509, column: 13, scope: !3046)
!3111 = !DILocation(line: 510, column: 17, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 510, column: 17)
!3113 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 509, column: 21)
!3114 = !DILocation(line: 510, column: 23, scope: !3112)
!3115 = !DILocation(line: 510, column: 39, scope: !3112)
!3116 = !DILocation(line: 510, column: 46, scope: !3112)
!3117 = !DILocation(line: 510, column: 51, scope: !3112)
!3118 = !DILocation(line: 510, column: 37, scope: !3112)
!3119 = !DILocation(line: 510, column: 17, scope: !3113)
!3120 = !DILocation(line: 511, column: 39, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 510, column: 56)
!3122 = !DILocation(line: 511, column: 46, scope: !3121)
!3123 = !DILocation(line: 511, column: 51, scope: !3121)
!3124 = !DILocation(line: 511, column: 17, scope: !3121)
!3125 = !DILocation(line: 511, column: 23, scope: !3121)
!3126 = !DILocation(line: 511, column: 37, scope: !3121)
!3127 = !DILocation(line: 512, column: 13, scope: !3121)
!3128 = !DILocation(line: 514, column: 17, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 514, column: 17)
!3130 = !DILocation(line: 514, column: 24, scope: !3129)
!3131 = !DILocation(line: 514, column: 29, scope: !3129)
!3132 = !DILocation(line: 514, column: 37, scope: !3129)
!3133 = !DILocation(line: 514, column: 17, scope: !3113)
!3134 = !DILocation(line: 515, column: 17, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 514, column: 45)
!3136 = !DILocation(line: 519, column: 13, scope: !3113)
!3137 = !DILocation(line: 519, column: 20, scope: !3113)
!3138 = !DILocation(line: 519, column: 25, scope: !3113)
!3139 = !DILocation(line: 519, column: 28, scope: !3113)
!3140 = !DILocation(line: 521, column: 13, scope: !3113)
!3141 = !DILocation(line: 524, column: 9, scope: !3046)
!3142 = !DILocation(line: 526, column: 17, scope: !3046)
!3143 = !DILocation(line: 526, column: 12, scope: !3046)
!3144 = !DILocation(line: 526, column: 15, scope: !3046)
!3145 = !{!3146, !2132, i64 0}
!3146 = !{!"", !2132, i64 0, !2132, i64 8, !2132, i64 16, !2132, i64 24, !2132, i64 32, !2143, i64 40, !2143, i64 48, !2143, i64 56, !2143, i64 64, !2132, i64 72, !2387, i64 80, !2387, i64 80, !2387, i64 80, !2387, i64 80, !2387, i64 80, !2387, i64 80, !2387, i64 80, !2387, i64 80}
!3147 = !DILocation(line: 527, column: 22, scope: !3046)
!3148 = !DILocation(line: 527, column: 28, scope: !3046)
!3149 = !DILocation(line: 527, column: 12, scope: !3046)
!3150 = !DILocation(line: 527, column: 19, scope: !3046)
!3151 = !{!3146, !2132, i64 8}
!3152 = !DILocation(line: 528, column: 23, scope: !3046)
!3153 = !DILocation(line: 528, column: 30, scope: !3046)
!3154 = !DILocation(line: 528, column: 12, scope: !3046)
!3155 = !DILocation(line: 528, column: 20, scope: !3046)
!3156 = !{!3146, !2132, i64 24}
!3157 = !DILocation(line: 529, column: 22, scope: !3046)
!3158 = !DILocation(line: 529, column: 29, scope: !3046)
!3159 = !DILocation(line: 529, column: 12, scope: !3046)
!3160 = !DILocation(line: 529, column: 19, scope: !3046)
!3161 = !{!3146, !2132, i64 32}
!3162 = !DILocation(line: 530, column: 24, scope: !3046)
!3163 = !DILocation(line: 530, column: 12, scope: !3046)
!3164 = !DILocation(line: 530, column: 22, scope: !3046)
!3165 = !{!3146, !2143, i64 40}
!3166 = !DILocation(line: 531, column: 12, scope: !3046)
!3167 = !DILocation(line: 531, column: 29, scope: !3046)
!3168 = !DILocation(line: 532, column: 12, scope: !3046)
!3169 = !DILocation(line: 532, column: 28, scope: !3046)
!3170 = !DILocation(line: 534, column: 13, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 534, column: 13)
!3172 = !DILocation(line: 534, column: 42, scope: !3171)
!3173 = !DILocation(line: 534, column: 13, scope: !3046)
!3174 = !DILocation(line: 535, column: 13, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !2, line: 534, column: 53)
!3176 = !DILocation(line: 537, column: 5, scope: !3046)
!3177 = !DILocation(line: 482, column: 39, scope: !3038)
!3178 = !DILocation(line: 482, column: 5, scope: !3038)
!3179 = distinct !{!3179, !3043, !3180, !2501, !2502}
!3180 = !DILocation(line: 537, column: 5, scope: !3035)
!3181 = !DILocation(line: 539, column: 5, scope: !2961)
!3182 = !DILocation(line: 540, column: 1, scope: !2961)
!3183 = !DISubprogram(name: "ngx_conf_log_error", scope: !161, file: !161, line: 276, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !27, !964, !2328, !1001, null}
!3186 = !DISubprogram(name: "ngx_http_script_variables_count", scope: !45, file: !45, line: 232, type: !3187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!27, !793}
!3189 = !DISubprogram(name: "ngx_http_script_compile", scope: !45, file: !45, line: 233, type: !3190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!91, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
