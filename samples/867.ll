; ModuleID = 'samples/867.bc'
source_filename = "src/http/modules/ngx_http_upstream_zone_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_http_conf_ctx_t = type { ptr, ptr, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_upstream_srv_conf_s = type { %struct.ngx_http_upstream_peer_t, ptr, ptr, i64, %struct.ngx_str_t, ptr, i64, i16, i64, ptr }
%struct.ngx_http_upstream_peer_t = type { ptr, ptr, ptr }
%struct.ngx_shm_zone_s = type { ptr, %struct.ngx_shm_t, ptr, ptr, ptr, i64 }
%struct.ngx_shm_t = type { ptr, i64, %struct.ngx_str_t, ptr, i64 }
%struct.ngx_http_upstream_main_conf_t = type { %struct.ngx_hash_t, %struct.ngx_array_t }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_slab_pool_t = type { %struct.ngx_shmtx_sh_t, i64, i64, ptr, ptr, %struct.ngx_slab_page_s, ptr, i64, ptr, ptr, %struct.ngx_shmtx_t, ptr, i8, i8, ptr, ptr }
%struct.ngx_shmtx_sh_t = type { i64, i64 }
%struct.ngx_slab_page_s = type { i64, ptr, i64 }
%struct.ngx_shmtx_t = type { ptr, ptr, i64, %union.sem_t, i64 }
%union.sem_t = type { i64, [24 x i8] }
%struct.ngx_http_upstream_rr_peers_s = type { i64, ptr, i64, ptr, i64, i64, i8, ptr, ptr, ptr }
%struct.ngx_http_upstream_rr_peer_s = type { ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i64, ptr }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110111111000110\00", align 1, !dbg !0
@ngx_http_upstream_zone_module_ctx = internal global %struct.ngx_http_module_t zeroinitializer, align 8, !dbg !7
@ngx_http_upstream_zone_commands = internal global [2 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 4, ptr @.str.1 }, i64 268435462, ptr @ngx_http_upstream_zone, i64 0, i64 0, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !733
@ngx_http_upstream_zone_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1024000, ptr @.str, ptr @ngx_http_upstream_zone_module_ctx, ptr @ngx_http_upstream_zone_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !178
@.str.1 = private unnamed_addr constant [5 x i8] c"zone\00", align 1, !dbg !728
@ngx_http_upstream_module = external global %struct.ngx_module_s, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid zone name \22%V\22\00", align 1, !dbg !738
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid zone size \22%V\22\00", align 1, !dbg !743
@ngx_pagesize = external global i64, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"zone \22%V\22 is too small\00", align 1, !dbg !745
@.str.5 = private unnamed_addr constant [25 x i8] c" in upstream zone \22%V\22%Z\00", align 1, !dbg !747

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_upstream_zone(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !782 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %value = alloca ptr, align 8
  %uscf = alloca ptr, align 8
  %umcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !784, metadata !DIExpression()), !dbg !2073
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !785, metadata !DIExpression()), !dbg !2074
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !786, metadata !DIExpression()), !dbg !2075
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5, !dbg !2076
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !787, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5, !dbg !2078
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !788, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr %uscf) #5, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %uscf, metadata !789, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %umcf) #5, !dbg !2082
  tail call void @llvm.dbg.declare(metadata ptr %umcf, metadata !2062, metadata !DIExpression()), !dbg !2083
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2084, !tbaa !2069
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 7, !dbg !2084
  %1 = load ptr, ptr %ctx, align 8, !dbg !2084, !tbaa !2085
  %srv_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %1, i32 0, i32 1, !dbg !2084
  %2 = load ptr, ptr %srv_conf, align 8, !dbg !2084, !tbaa !2088
  %3 = load i64, ptr @ngx_http_upstream_module, align 8, !dbg !2084, !tbaa !2090
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2084
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2084, !tbaa !2069
  store ptr %4, ptr %uscf, align 8, !dbg !2092, !tbaa !2069
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2093, !tbaa !2069
  %ctx1 = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 7, !dbg !2093
  %6 = load ptr, ptr %ctx1, align 8, !dbg !2093, !tbaa !2085
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %6, i32 0, i32 0, !dbg !2093
  %7 = load ptr, ptr %main_conf, align 8, !dbg !2093, !tbaa !2094
  %8 = load i64, ptr @ngx_http_upstream_module, align 8, !dbg !2093, !tbaa !2090
  %arrayidx2 = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !2093
  %9 = load ptr, ptr %arrayidx2, align 8, !dbg !2093, !tbaa !2069
  store ptr %9, ptr %umcf, align 8, !dbg !2095, !tbaa !2069
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2096, !tbaa !2069
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %10, i32 0, i32 1, !dbg !2097
  %11 = load ptr, ptr %args, align 8, !dbg !2097, !tbaa !2098
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %11, i32 0, i32 0, !dbg !2099
  %12 = load ptr, ptr %elts, align 8, !dbg !2099, !tbaa !2100
  store ptr %12, ptr %value, align 8, !dbg !2102, !tbaa !2069
  %13 = load ptr, ptr %value, align 8, !dbg !2103, !tbaa !2069
  %arrayidx3 = getelementptr inbounds %struct.ngx_str_t, ptr %13, i64 1, !dbg !2103
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx3, i32 0, i32 0, !dbg !2105
  %14 = load i64, ptr %len, align 8, !dbg !2105, !tbaa !2106
  %tobool = icmp ne i64 %14, 0, !dbg !2103
  br i1 %tobool, label %if.end, label %if.then, !dbg !2108

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %cf.addr, align 8, !dbg !2109, !tbaa !2069
  %16 = load ptr, ptr %value, align 8, !dbg !2111, !tbaa !2069
  %arrayidx4 = getelementptr inbounds %struct.ngx_str_t, ptr %16, i64 1, !dbg !2111
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %15, i32 noundef 0, ptr noundef @.str.2, ptr noundef %arrayidx4), !dbg !2112
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %cf.addr, align 8, !dbg !2114, !tbaa !2069
  %args5 = getelementptr inbounds %struct.ngx_conf_s, ptr %17, i32 0, i32 1, !dbg !2116
  %18 = load ptr, ptr %args5, align 8, !dbg !2116, !tbaa !2098
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %18, i32 0, i32 1, !dbg !2117
  %19 = load i64, ptr %nelts, align 8, !dbg !2117, !tbaa !2118
  %cmp = icmp eq i64 %19, 3, !dbg !2119
  br i1 %cmp, label %if.then6, label %if.else, !dbg !2120

if.then6:                                         ; preds = %if.end
  %20 = load ptr, ptr %value, align 8, !dbg !2121, !tbaa !2069
  %arrayidx7 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i64 2, !dbg !2121
  %call = call i64 @ngx_parse_size(ptr noundef %arrayidx7), !dbg !2123
  store i64 %call, ptr %size, align 8, !dbg !2124, !tbaa !2125
  %21 = load i64, ptr %size, align 8, !dbg !2126, !tbaa !2125
  %cmp8 = icmp eq i64 %21, -1, !dbg !2128
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2129

if.then9:                                         ; preds = %if.then6
  %22 = load ptr, ptr %cf.addr, align 8, !dbg !2130, !tbaa !2069
  %23 = load ptr, ptr %value, align 8, !dbg !2132, !tbaa !2069
  %arrayidx10 = getelementptr inbounds %struct.ngx_str_t, ptr %23, i64 2, !dbg !2132
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %22, i32 noundef 0, ptr noundef @.str.3, ptr noundef %arrayidx10), !dbg !2133
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2134

if.end11:                                         ; preds = %if.then6
  %24 = load i64, ptr %size, align 8, !dbg !2135, !tbaa !2125
  %25 = load i64, ptr @ngx_pagesize, align 8, !dbg !2137, !tbaa !2125
  %mul = mul i64 8, %25, !dbg !2138
  %cmp12 = icmp slt i64 %24, %mul, !dbg !2139
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !2140

if.then13:                                        ; preds = %if.end11
  %26 = load ptr, ptr %cf.addr, align 8, !dbg !2141, !tbaa !2069
  %27 = load ptr, ptr %value, align 8, !dbg !2143, !tbaa !2069
  %arrayidx14 = getelementptr inbounds %struct.ngx_str_t, ptr %27, i64 1, !dbg !2143
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %26, i32 noundef 0, ptr noundef @.str.4, ptr noundef %arrayidx14), !dbg !2144
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2145

if.end15:                                         ; preds = %if.end11
  br label %if.end16, !dbg !2146

if.else:                                          ; preds = %if.end
  store i64 0, ptr %size, align 8, !dbg !2147, !tbaa !2125
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end15
  %28 = load ptr, ptr %cf.addr, align 8, !dbg !2149, !tbaa !2069
  %29 = load ptr, ptr %value, align 8, !dbg !2150, !tbaa !2069
  %arrayidx17 = getelementptr inbounds %struct.ngx_str_t, ptr %29, i64 1, !dbg !2150
  %30 = load i64, ptr %size, align 8, !dbg !2151, !tbaa !2125
  %call18 = call ptr @ngx_shared_memory_add(ptr noundef %28, ptr noundef %arrayidx17, i64 noundef %30, ptr noundef @ngx_http_upstream_module), !dbg !2152
  %31 = load ptr, ptr %uscf, align 8, !dbg !2153, !tbaa !2069
  %shm_zone = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %31, i32 0, i32 9, !dbg !2154
  store ptr %call18, ptr %shm_zone, align 8, !dbg !2155, !tbaa !2156
  %32 = load ptr, ptr %uscf, align 8, !dbg !2159, !tbaa !2069
  %shm_zone19 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %32, i32 0, i32 9, !dbg !2161
  %33 = load ptr, ptr %shm_zone19, align 8, !dbg !2161, !tbaa !2156
  %cmp20 = icmp eq ptr %33, null, !dbg !2162
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2163

if.then21:                                        ; preds = %if.end16
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2164

if.end22:                                         ; preds = %if.end16
  %34 = load ptr, ptr %uscf, align 8, !dbg !2166, !tbaa !2069
  %shm_zone23 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %34, i32 0, i32 9, !dbg !2167
  %35 = load ptr, ptr %shm_zone23, align 8, !dbg !2167, !tbaa !2156
  %init = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %35, i32 0, i32 2, !dbg !2168
  store ptr @ngx_http_upstream_init_zone, ptr %init, align 8, !dbg !2169, !tbaa !2170
  %36 = load ptr, ptr %umcf, align 8, !dbg !2173, !tbaa !2069
  %37 = load ptr, ptr %uscf, align 8, !dbg !2174, !tbaa !2069
  %shm_zone24 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %37, i32 0, i32 9, !dbg !2175
  %38 = load ptr, ptr %shm_zone24, align 8, !dbg !2175, !tbaa !2156
  %data = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %38, i32 0, i32 0, !dbg !2176
  store ptr %36, ptr %data, align 8, !dbg !2177, !tbaa !2178
  %39 = load ptr, ptr %uscf, align 8, !dbg !2179, !tbaa !2069
  %shm_zone25 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %39, i32 0, i32 9, !dbg !2180
  %40 = load ptr, ptr %shm_zone25, align 8, !dbg !2180, !tbaa !2156
  %noreuse = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %40, i32 0, i32 5, !dbg !2181
  store i64 1, ptr %noreuse, align 8, !dbg !2182, !tbaa !2183
  store ptr null, ptr %retval, align 8, !dbg !2184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2184

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %umcf) #5, !dbg !2185
  call void @llvm.lifetime.end.p0(i64 8, ptr %uscf) #5, !dbg !2185
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5, !dbg !2185
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5, !dbg !2185
  %41 = load ptr, ptr %retval, align 8, !dbg !2185
  ret ptr %41, !dbg !2185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2186 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !2191 i64 @ngx_parse_size(ptr noundef) #2

declare !dbg !2195 ptr @ngx_shared_memory_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_upstream_init_zone(ptr noundef %shm_zone, ptr noundef %data) #0 !dbg !2198 {
entry:
  %retval = alloca i64, align 8
  %shm_zone.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %shpool = alloca ptr, align 8
  %peers = alloca ptr, align 8
  %peersp = alloca ptr, align 8
  %uscf = alloca ptr, align 8
  %uscfp = alloca ptr, align 8
  %umcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shm_zone, ptr %shm_zone.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %shm_zone.addr, metadata !2200, metadata !DIExpression()), !dbg !2211
  store ptr %data, ptr %data.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2201, metadata !DIExpression()), !dbg !2212
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5, !dbg !2213
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2202, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2203, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %shpool) #5, !dbg !2217
  tail call void @llvm.dbg.declare(metadata ptr %shpool, metadata !2204, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 8, ptr %peers) #5, !dbg !2219
  tail call void @llvm.dbg.declare(metadata ptr %peers, metadata !2205, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 8, ptr %peersp) #5, !dbg !2219
  tail call void @llvm.dbg.declare(metadata ptr %peersp, metadata !2206, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %uscf) #5, !dbg !2222
  tail call void @llvm.dbg.declare(metadata ptr %uscf, metadata !2207, metadata !DIExpression()), !dbg !2223
  call void @llvm.lifetime.start.p0(i64 8, ptr %uscfp) #5, !dbg !2222
  tail call void @llvm.dbg.declare(metadata ptr %uscfp, metadata !2208, metadata !DIExpression()), !dbg !2224
  call void @llvm.lifetime.start.p0(i64 8, ptr %umcf) #5, !dbg !2225
  tail call void @llvm.dbg.declare(metadata ptr %umcf, metadata !2210, metadata !DIExpression()), !dbg !2226
  %0 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2227, !tbaa !2069
  %shm = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %0, i32 0, i32 1, !dbg !2228
  %addr = getelementptr inbounds %struct.ngx_shm_t, ptr %shm, i32 0, i32 0, !dbg !2229
  %1 = load ptr, ptr %addr, align 8, !dbg !2229, !tbaa !2230
  store ptr %1, ptr %shpool, align 8, !dbg !2231, !tbaa !2069
  %2 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2232, !tbaa !2069
  %data1 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %2, i32 0, i32 0, !dbg !2233
  %3 = load ptr, ptr %data1, align 8, !dbg !2233, !tbaa !2178
  store ptr %3, ptr %umcf, align 8, !dbg !2234, !tbaa !2069
  %4 = load ptr, ptr %umcf, align 8, !dbg !2235, !tbaa !2069
  %upstreams = getelementptr inbounds %struct.ngx_http_upstream_main_conf_t, ptr %4, i32 0, i32 1, !dbg !2236
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %upstreams, i32 0, i32 0, !dbg !2237
  %5 = load ptr, ptr %elts, align 8, !dbg !2237, !tbaa !2238
  store ptr %5, ptr %uscfp, align 8, !dbg !2241, !tbaa !2069
  %6 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2242, !tbaa !2069
  %shm2 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %6, i32 0, i32 1, !dbg !2244
  %exists = getelementptr inbounds %struct.ngx_shm_t, ptr %shm2, i32 0, i32 4, !dbg !2245
  %7 = load i64, ptr %exists, align 8, !dbg !2245, !tbaa !2246
  %tobool = icmp ne i64 %7, 0, !dbg !2242
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2247

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %shpool, align 8, !dbg !2248, !tbaa !2069
  %data3 = getelementptr inbounds %struct.ngx_slab_pool_t, ptr %8, i32 0, i32 14, !dbg !2250
  %9 = load ptr, ptr %data3, align 8, !dbg !2250, !tbaa !2251
  store ptr %9, ptr %peers, align 8, !dbg !2257, !tbaa !2069
  store i64 0, ptr %i, align 8, !dbg !2258, !tbaa !2125
  br label %for.cond, !dbg !2260

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i64, ptr %i, align 8, !dbg !2261, !tbaa !2125
  %11 = load ptr, ptr %umcf, align 8, !dbg !2263, !tbaa !2069
  %upstreams4 = getelementptr inbounds %struct.ngx_http_upstream_main_conf_t, ptr %11, i32 0, i32 1, !dbg !2264
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %upstreams4, i32 0, i32 1, !dbg !2265
  %12 = load i64, ptr %nelts, align 8, !dbg !2265, !tbaa !2266
  %cmp = icmp ult i64 %10, %12, !dbg !2267
  br i1 %cmp, label %for.body, label %for.end, !dbg !2268

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %uscfp, align 8, !dbg !2269, !tbaa !2069
  %14 = load i64, ptr %i, align 8, !dbg !2271, !tbaa !2125
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %14, !dbg !2269
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !2269, !tbaa !2069
  store ptr %15, ptr %uscf, align 8, !dbg !2272, !tbaa !2069
  %16 = load ptr, ptr %uscf, align 8, !dbg !2273, !tbaa !2069
  %shm_zone5 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %16, i32 0, i32 9, !dbg !2275
  %17 = load ptr, ptr %shm_zone5, align 8, !dbg !2275, !tbaa !2156
  %18 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2276, !tbaa !2069
  %cmp6 = icmp ne ptr %17, %18, !dbg !2277
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !2278

if.then7:                                         ; preds = %for.body
  br label %for.inc, !dbg !2279

if.end:                                           ; preds = %for.body
  %19 = load ptr, ptr %peers, align 8, !dbg !2281, !tbaa !2069
  %20 = load ptr, ptr %uscf, align 8, !dbg !2282, !tbaa !2069
  %peer = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %20, i32 0, i32 0, !dbg !2283
  %data8 = getelementptr inbounds %struct.ngx_http_upstream_peer_t, ptr %peer, i32 0, i32 2, !dbg !2284
  store ptr %19, ptr %data8, align 8, !dbg !2285, !tbaa !2286
  %21 = load ptr, ptr %peers, align 8, !dbg !2287, !tbaa !2069
  %zone_next = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %21, i32 0, i32 3, !dbg !2288
  %22 = load ptr, ptr %zone_next, align 8, !dbg !2288, !tbaa !2289
  store ptr %22, ptr %peers, align 8, !dbg !2291, !tbaa !2069
  br label %for.inc, !dbg !2292

for.inc:                                          ; preds = %if.end, %if.then7
  %23 = load i64, ptr %i, align 8, !dbg !2293, !tbaa !2125
  %inc = add i64 %23, 1, !dbg !2293
  store i64 %inc, ptr %i, align 8, !dbg !2293, !tbaa !2125
  br label %for.cond, !dbg !2294, !llvm.loop !2295

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !2299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2299

if.end9:                                          ; preds = %entry
  %24 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2300, !tbaa !2069
  %shm10 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %24, i32 0, i32 1, !dbg !2301
  %name = getelementptr inbounds %struct.ngx_shm_t, ptr %shm10, i32 0, i32 2, !dbg !2302
  %len11 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !2303
  %25 = load i64, ptr %len11, align 8, !dbg !2303, !tbaa !2304
  %add = add i64 21, %25, !dbg !2305
  store i64 %add, ptr %len, align 8, !dbg !2306, !tbaa !2125
  %26 = load ptr, ptr %shpool, align 8, !dbg !2307, !tbaa !2069
  %27 = load i64, ptr %len, align 8, !dbg !2308, !tbaa !2125
  %call = call ptr @ngx_slab_alloc(ptr noundef %26, i64 noundef %27), !dbg !2309
  %28 = load ptr, ptr %shpool, align 8, !dbg !2310, !tbaa !2069
  %log_ctx = getelementptr inbounds %struct.ngx_slab_pool_t, ptr %28, i32 0, i32 11, !dbg !2311
  store ptr %call, ptr %log_ctx, align 8, !dbg !2312, !tbaa !2313
  %29 = load ptr, ptr %shpool, align 8, !dbg !2314, !tbaa !2069
  %log_ctx12 = getelementptr inbounds %struct.ngx_slab_pool_t, ptr %29, i32 0, i32 11, !dbg !2316
  %30 = load ptr, ptr %log_ctx12, align 8, !dbg !2316, !tbaa !2313
  %cmp13 = icmp eq ptr %30, null, !dbg !2317
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2318

if.then14:                                        ; preds = %if.end9
  store i64 -1, ptr %retval, align 8, !dbg !2319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2319

if.end15:                                         ; preds = %if.end9
  %31 = load ptr, ptr %shpool, align 8, !dbg !2321, !tbaa !2069
  %log_ctx16 = getelementptr inbounds %struct.ngx_slab_pool_t, ptr %31, i32 0, i32 11, !dbg !2322
  %32 = load ptr, ptr %log_ctx16, align 8, !dbg !2322, !tbaa !2313
  %33 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2323, !tbaa !2069
  %shm17 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %33, i32 0, i32 1, !dbg !2324
  %name18 = getelementptr inbounds %struct.ngx_shm_t, ptr %shm17, i32 0, i32 2, !dbg !2325
  %call19 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %32, ptr noundef @.str.5, ptr noundef %name18), !dbg !2326
  %34 = load ptr, ptr %shpool, align 8, !dbg !2327, !tbaa !2069
  %data20 = getelementptr inbounds %struct.ngx_slab_pool_t, ptr %34, i32 0, i32 14, !dbg !2328
  store ptr %data20, ptr %peersp, align 8, !dbg !2329, !tbaa !2069
  store i64 0, ptr %i, align 8, !dbg !2330, !tbaa !2125
  br label %for.cond21, !dbg !2332

for.cond21:                                       ; preds = %for.inc36, %if.end15
  %35 = load i64, ptr %i, align 8, !dbg !2333, !tbaa !2125
  %36 = load ptr, ptr %umcf, align 8, !dbg !2335, !tbaa !2069
  %upstreams22 = getelementptr inbounds %struct.ngx_http_upstream_main_conf_t, ptr %36, i32 0, i32 1, !dbg !2336
  %nelts23 = getelementptr inbounds %struct.ngx_array_t, ptr %upstreams22, i32 0, i32 1, !dbg !2337
  %37 = load i64, ptr %nelts23, align 8, !dbg !2337, !tbaa !2266
  %cmp24 = icmp ult i64 %35, %37, !dbg !2338
  br i1 %cmp24, label %for.body25, label %for.end38, !dbg !2339

for.body25:                                       ; preds = %for.cond21
  %38 = load ptr, ptr %uscfp, align 8, !dbg !2340, !tbaa !2069
  %39 = load i64, ptr %i, align 8, !dbg !2342, !tbaa !2125
  %arrayidx26 = getelementptr inbounds ptr, ptr %38, i64 %39, !dbg !2340
  %40 = load ptr, ptr %arrayidx26, align 8, !dbg !2340, !tbaa !2069
  store ptr %40, ptr %uscf, align 8, !dbg !2343, !tbaa !2069
  %41 = load ptr, ptr %uscf, align 8, !dbg !2344, !tbaa !2069
  %shm_zone27 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %41, i32 0, i32 9, !dbg !2346
  %42 = load ptr, ptr %shm_zone27, align 8, !dbg !2346, !tbaa !2156
  %43 = load ptr, ptr %shm_zone.addr, align 8, !dbg !2347, !tbaa !2069
  %cmp28 = icmp ne ptr %42, %43, !dbg !2348
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !2349

if.then29:                                        ; preds = %for.body25
  br label %for.inc36, !dbg !2350

if.end30:                                         ; preds = %for.body25
  %44 = load ptr, ptr %shpool, align 8, !dbg !2352, !tbaa !2069
  %45 = load ptr, ptr %uscf, align 8, !dbg !2353, !tbaa !2069
  %call31 = call ptr @ngx_http_upstream_zone_copy_peers(ptr noundef %44, ptr noundef %45), !dbg !2354
  store ptr %call31, ptr %peers, align 8, !dbg !2355, !tbaa !2069
  %46 = load ptr, ptr %peers, align 8, !dbg !2356, !tbaa !2069
  %cmp32 = icmp eq ptr %46, null, !dbg !2358
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !2359

if.then33:                                        ; preds = %if.end30
  store i64 -1, ptr %retval, align 8, !dbg !2360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2360

if.end34:                                         ; preds = %if.end30
  %47 = load ptr, ptr %peers, align 8, !dbg !2362, !tbaa !2069
  %48 = load ptr, ptr %peersp, align 8, !dbg !2363, !tbaa !2069
  store ptr %47, ptr %48, align 8, !dbg !2364, !tbaa !2069
  %49 = load ptr, ptr %peers, align 8, !dbg !2365, !tbaa !2069
  %zone_next35 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %49, i32 0, i32 3, !dbg !2366
  store ptr %zone_next35, ptr %peersp, align 8, !dbg !2367, !tbaa !2069
  br label %for.inc36, !dbg !2368

for.inc36:                                        ; preds = %if.end34, %if.then29
  %50 = load i64, ptr %i, align 8, !dbg !2369, !tbaa !2125
  %inc37 = add i64 %50, 1, !dbg !2369
  store i64 %inc37, ptr %i, align 8, !dbg !2369, !tbaa !2125
  br label %for.cond21, !dbg !2370, !llvm.loop !2371

for.end38:                                        ; preds = %for.cond21
  store i64 0, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

cleanup:                                          ; preds = %for.end38, %if.then33, %if.then14, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %umcf) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %uscfp) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %uscf) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %peersp) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %peers) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %shpool) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5, !dbg !2374
  %51 = load i64, ptr %retval, align 8, !dbg !2374
  ret i64 %51, !dbg !2374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2375 ptr @ngx_slab_alloc(ptr noundef, i64 noundef) #2

declare !dbg !2378 ptr @ngx_sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_upstream_zone_copy_peers(ptr noundef %shpool, ptr noundef %uscf) #0 !dbg !2381 {
entry:
  %retval = alloca ptr, align 8
  %shpool.addr = alloca ptr, align 8
  %uscf.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %peer = alloca ptr, align 8
  %peerp = alloca ptr, align 8
  %peers = alloca ptr, align 8
  %backup = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shpool, ptr %shpool.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %shpool.addr, metadata !2385, metadata !DIExpression()), !dbg !2394
  store ptr %uscf, ptr %uscf.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %uscf.addr, metadata !2386, metadata !DIExpression()), !dbg !2395
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #5, !dbg !2396
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2387, metadata !DIExpression()), !dbg !2397
  call void @llvm.lifetime.start.p0(i64 8, ptr %peer) #5, !dbg !2398
  tail call void @llvm.dbg.declare(metadata ptr %peer, metadata !2388, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 8, ptr %peerp) #5, !dbg !2398
  tail call void @llvm.dbg.declare(metadata ptr %peerp, metadata !2389, metadata !DIExpression()), !dbg !2400
  call void @llvm.lifetime.start.p0(i64 8, ptr %peers) #5, !dbg !2401
  tail call void @llvm.dbg.declare(metadata ptr %peers, metadata !2391, metadata !DIExpression()), !dbg !2402
  call void @llvm.lifetime.start.p0(i64 8, ptr %backup) #5, !dbg !2401
  tail call void @llvm.dbg.declare(metadata ptr %backup, metadata !2392, metadata !DIExpression()), !dbg !2403
  %0 = load ptr, ptr %shpool.addr, align 8, !dbg !2404, !tbaa !2069
  %call = call ptr @ngx_slab_alloc(ptr noundef %0, i64 noundef 80), !dbg !2405
  store ptr %call, ptr %peers, align 8, !dbg !2406, !tbaa !2069
  %1 = load ptr, ptr %peers, align 8, !dbg !2407, !tbaa !2069
  %cmp = icmp eq ptr %1, null, !dbg !2409
  br i1 %cmp, label %if.then, label %if.end, !dbg !2410

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2411

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %peers, align 8, !dbg !2413, !tbaa !2069
  %3 = load ptr, ptr %uscf.addr, align 8, !dbg !2413, !tbaa !2069
  %peer1 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %3, i32 0, i32 0, !dbg !2413
  %data = getelementptr inbounds %struct.ngx_http_upstream_peer_t, ptr %peer1, i32 0, i32 2, !dbg !2413
  %4 = load ptr, ptr %data, align 8, !dbg !2413, !tbaa !2286
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 1 %4, i64 80, i1 false), !dbg !2413
  %5 = load ptr, ptr %shpool.addr, align 8, !dbg !2414, !tbaa !2069
  %call2 = call ptr @ngx_slab_alloc(ptr noundef %5, i64 noundef 16), !dbg !2415
  store ptr %call2, ptr %name, align 8, !dbg !2416, !tbaa !2069
  %6 = load ptr, ptr %name, align 8, !dbg !2417, !tbaa !2069
  %cmp3 = icmp eq ptr %6, null, !dbg !2419
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2420

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2421

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %shpool.addr, align 8, !dbg !2423, !tbaa !2069
  %8 = load ptr, ptr %peers, align 8, !dbg !2424, !tbaa !2069
  %name6 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %8, i32 0, i32 7, !dbg !2425
  %9 = load ptr, ptr %name6, align 8, !dbg !2425, !tbaa !2426
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %9, i32 0, i32 0, !dbg !2427
  %10 = load i64, ptr %len, align 8, !dbg !2427, !tbaa !2106
  %call7 = call ptr @ngx_slab_alloc(ptr noundef %7, i64 noundef %10), !dbg !2428
  %11 = load ptr, ptr %name, align 8, !dbg !2429, !tbaa !2069
  %data8 = getelementptr inbounds %struct.ngx_str_t, ptr %11, i32 0, i32 1, !dbg !2430
  store ptr %call7, ptr %data8, align 8, !dbg !2431, !tbaa !2432
  %12 = load ptr, ptr %name, align 8, !dbg !2433, !tbaa !2069
  %data9 = getelementptr inbounds %struct.ngx_str_t, ptr %12, i32 0, i32 1, !dbg !2435
  %13 = load ptr, ptr %data9, align 8, !dbg !2435, !tbaa !2432
  %cmp10 = icmp eq ptr %13, null, !dbg !2436
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2437

if.then11:                                        ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !2438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2438

if.end12:                                         ; preds = %if.end5
  %14 = load ptr, ptr %name, align 8, !dbg !2440, !tbaa !2069
  %data13 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i32 0, i32 1, !dbg !2440
  %15 = load ptr, ptr %data13, align 8, !dbg !2440, !tbaa !2432
  %16 = load ptr, ptr %peers, align 8, !dbg !2440, !tbaa !2069
  %name14 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %16, i32 0, i32 7, !dbg !2440
  %17 = load ptr, ptr %name14, align 8, !dbg !2440, !tbaa !2426
  %data15 = getelementptr inbounds %struct.ngx_str_t, ptr %17, i32 0, i32 1, !dbg !2440
  %18 = load ptr, ptr %data15, align 8, !dbg !2440, !tbaa !2432
  %19 = load ptr, ptr %peers, align 8, !dbg !2440, !tbaa !2069
  %name16 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %19, i32 0, i32 7, !dbg !2440
  %20 = load ptr, ptr %name16, align 8, !dbg !2440, !tbaa !2426
  %len17 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i32 0, i32 0, !dbg !2440
  %21 = load i64, ptr %len17, align 8, !dbg !2440, !tbaa !2106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %18, i64 %21, i1 false), !dbg !2440
  %22 = load ptr, ptr %peers, align 8, !dbg !2441, !tbaa !2069
  %name18 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %22, i32 0, i32 7, !dbg !2442
  %23 = load ptr, ptr %name18, align 8, !dbg !2442, !tbaa !2426
  %len19 = getelementptr inbounds %struct.ngx_str_t, ptr %23, i32 0, i32 0, !dbg !2443
  %24 = load i64, ptr %len19, align 8, !dbg !2443, !tbaa !2106
  %25 = load ptr, ptr %name, align 8, !dbg !2444, !tbaa !2069
  %len20 = getelementptr inbounds %struct.ngx_str_t, ptr %25, i32 0, i32 0, !dbg !2445
  store i64 %24, ptr %len20, align 8, !dbg !2446, !tbaa !2106
  %26 = load ptr, ptr %name, align 8, !dbg !2447, !tbaa !2069
  %27 = load ptr, ptr %peers, align 8, !dbg !2448, !tbaa !2069
  %name21 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %27, i32 0, i32 7, !dbg !2449
  store ptr %26, ptr %name21, align 8, !dbg !2450, !tbaa !2426
  %28 = load ptr, ptr %shpool.addr, align 8, !dbg !2451, !tbaa !2069
  %29 = load ptr, ptr %peers, align 8, !dbg !2452, !tbaa !2069
  %shpool22 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %29, i32 0, i32 1, !dbg !2453
  store ptr %28, ptr %shpool22, align 8, !dbg !2454, !tbaa !2455
  %30 = load ptr, ptr %peers, align 8, !dbg !2456, !tbaa !2069
  %peer23 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %30, i32 0, i32 9, !dbg !2458
  store ptr %peer23, ptr %peerp, align 8, !dbg !2459, !tbaa !2069
  br label %for.cond, !dbg !2460

for.cond:                                         ; preds = %for.inc, %if.end12
  %31 = load ptr, ptr %peerp, align 8, !dbg !2461, !tbaa !2069
  %32 = load ptr, ptr %31, align 8, !dbg !2463, !tbaa !2069
  %tobool = icmp ne ptr %32, null, !dbg !2464
  br i1 %tobool, label %for.body, label %for.end, !dbg !2464

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %peers, align 8, !dbg !2465, !tbaa !2069
  %34 = load ptr, ptr %peerp, align 8, !dbg !2467, !tbaa !2069
  %35 = load ptr, ptr %34, align 8, !dbg !2468, !tbaa !2069
  %call24 = call ptr @ngx_http_upstream_zone_copy_peer(ptr noundef %33, ptr noundef %35), !dbg !2469
  store ptr %call24, ptr %peer, align 8, !dbg !2470, !tbaa !2069
  %36 = load ptr, ptr %peer, align 8, !dbg !2471, !tbaa !2069
  %cmp25 = icmp eq ptr %36, null, !dbg !2473
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2474

if.then26:                                        ; preds = %for.body
  store ptr null, ptr %retval, align 8, !dbg !2475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2475

if.end27:                                         ; preds = %for.body
  %37 = load ptr, ptr %peer, align 8, !dbg !2477, !tbaa !2069
  %38 = load ptr, ptr %peerp, align 8, !dbg !2478, !tbaa !2069
  store ptr %37, ptr %38, align 8, !dbg !2479, !tbaa !2069
  br label %for.inc, !dbg !2480

for.inc:                                          ; preds = %if.end27
  %39 = load ptr, ptr %peer, align 8, !dbg !2481, !tbaa !2069
  %next = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %39, i32 0, i32 20, !dbg !2482
  store ptr %next, ptr %peerp, align 8, !dbg !2483, !tbaa !2069
  br label %for.cond, !dbg !2484, !llvm.loop !2485

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %peers, align 8, !dbg !2487, !tbaa !2069
  %next28 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %40, i32 0, i32 8, !dbg !2489
  %41 = load ptr, ptr %next28, align 8, !dbg !2489, !tbaa !2490
  %cmp29 = icmp eq ptr %41, null, !dbg !2491
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !2492

if.then30:                                        ; preds = %for.end
  br label %done, !dbg !2493

if.end31:                                         ; preds = %for.end
  %42 = load ptr, ptr %shpool.addr, align 8, !dbg !2495, !tbaa !2069
  %call32 = call ptr @ngx_slab_alloc(ptr noundef %42, i64 noundef 80), !dbg !2496
  store ptr %call32, ptr %backup, align 8, !dbg !2497, !tbaa !2069
  %43 = load ptr, ptr %backup, align 8, !dbg !2498, !tbaa !2069
  %cmp33 = icmp eq ptr %43, null, !dbg !2500
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2501

if.then34:                                        ; preds = %if.end31
  store ptr null, ptr %retval, align 8, !dbg !2502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2502

if.end35:                                         ; preds = %if.end31
  %44 = load ptr, ptr %backup, align 8, !dbg !2504, !tbaa !2069
  %45 = load ptr, ptr %peers, align 8, !dbg !2504, !tbaa !2069
  %next36 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %45, i32 0, i32 8, !dbg !2504
  %46 = load ptr, ptr %next36, align 8, !dbg !2504, !tbaa !2490
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 80, i1 false), !dbg !2504
  %47 = load ptr, ptr %name, align 8, !dbg !2505, !tbaa !2069
  %48 = load ptr, ptr %backup, align 8, !dbg !2506, !tbaa !2069
  %name37 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %48, i32 0, i32 7, !dbg !2507
  store ptr %47, ptr %name37, align 8, !dbg !2508, !tbaa !2426
  %49 = load ptr, ptr %shpool.addr, align 8, !dbg !2509, !tbaa !2069
  %50 = load ptr, ptr %backup, align 8, !dbg !2510, !tbaa !2069
  %shpool38 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %50, i32 0, i32 1, !dbg !2511
  store ptr %49, ptr %shpool38, align 8, !dbg !2512, !tbaa !2455
  %51 = load ptr, ptr %backup, align 8, !dbg !2513, !tbaa !2069
  %peer39 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %51, i32 0, i32 9, !dbg !2515
  store ptr %peer39, ptr %peerp, align 8, !dbg !2516, !tbaa !2069
  br label %for.cond40, !dbg !2517

for.cond40:                                       ; preds = %for.inc47, %if.end35
  %52 = load ptr, ptr %peerp, align 8, !dbg !2518, !tbaa !2069
  %53 = load ptr, ptr %52, align 8, !dbg !2520, !tbaa !2069
  %tobool41 = icmp ne ptr %53, null, !dbg !2521
  br i1 %tobool41, label %for.body42, label %for.end49, !dbg !2521

for.body42:                                       ; preds = %for.cond40
  %54 = load ptr, ptr %backup, align 8, !dbg !2522, !tbaa !2069
  %55 = load ptr, ptr %peerp, align 8, !dbg !2524, !tbaa !2069
  %56 = load ptr, ptr %55, align 8, !dbg !2525, !tbaa !2069
  %call43 = call ptr @ngx_http_upstream_zone_copy_peer(ptr noundef %54, ptr noundef %56), !dbg !2526
  store ptr %call43, ptr %peer, align 8, !dbg !2527, !tbaa !2069
  %57 = load ptr, ptr %peer, align 8, !dbg !2528, !tbaa !2069
  %cmp44 = icmp eq ptr %57, null, !dbg !2530
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !2531

if.then45:                                        ; preds = %for.body42
  store ptr null, ptr %retval, align 8, !dbg !2532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2532

if.end46:                                         ; preds = %for.body42
  %58 = load ptr, ptr %peer, align 8, !dbg !2534, !tbaa !2069
  %59 = load ptr, ptr %peerp, align 8, !dbg !2535, !tbaa !2069
  store ptr %58, ptr %59, align 8, !dbg !2536, !tbaa !2069
  br label %for.inc47, !dbg !2537

for.inc47:                                        ; preds = %if.end46
  %60 = load ptr, ptr %peer, align 8, !dbg !2538, !tbaa !2069
  %next48 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %60, i32 0, i32 20, !dbg !2539
  store ptr %next48, ptr %peerp, align 8, !dbg !2540, !tbaa !2069
  br label %for.cond40, !dbg !2541, !llvm.loop !2542

for.end49:                                        ; preds = %for.cond40
  %61 = load ptr, ptr %backup, align 8, !dbg !2544, !tbaa !2069
  %62 = load ptr, ptr %peers, align 8, !dbg !2545, !tbaa !2069
  %next50 = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %62, i32 0, i32 8, !dbg !2546
  store ptr %61, ptr %next50, align 8, !dbg !2547, !tbaa !2490
  br label %done, !dbg !2545

done:                                             ; preds = %for.end49, %if.then30
  tail call void @llvm.dbg.label(metadata !2393), !dbg !2548
  %63 = load ptr, ptr %peers, align 8, !dbg !2549, !tbaa !2069
  %64 = load ptr, ptr %uscf.addr, align 8, !dbg !2550, !tbaa !2069
  %peer51 = getelementptr inbounds %struct.ngx_http_upstream_srv_conf_s, ptr %64, i32 0, i32 0, !dbg !2551
  %data52 = getelementptr inbounds %struct.ngx_http_upstream_peer_t, ptr %peer51, i32 0, i32 2, !dbg !2552
  store ptr %63, ptr %data52, align 8, !dbg !2553, !tbaa !2286
  %65 = load ptr, ptr %peers, align 8, !dbg !2554, !tbaa !2069
  store ptr %65, ptr %retval, align 8, !dbg !2555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2555

cleanup:                                          ; preds = %done, %if.then45, %if.then34, %if.then26, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %backup) #5, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 8, ptr %peers) #5, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 8, ptr %peerp) #5, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 8, ptr %peer) #5, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #5, !dbg !2556
  %66 = load ptr, ptr %retval, align 8, !dbg !2556
  ret ptr %66, !dbg !2556
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_upstream_zone_copy_peer(ptr noundef %peers, ptr noundef %src) #0 !dbg !2557 {
entry:
  %retval = alloca ptr, align 8
  %peers.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %peers, ptr %peers.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %peers.addr, metadata !2561, metadata !DIExpression()), !dbg !2566
  store ptr %src, ptr %src.addr, align 8, !tbaa !2069
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2562, metadata !DIExpression()), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #5, !dbg !2568
  tail call void @llvm.dbg.declare(metadata ptr %pool, metadata !2563, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #5, !dbg !2570
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !2564, metadata !DIExpression()), !dbg !2571
  %0 = load ptr, ptr %peers.addr, align 8, !dbg !2572, !tbaa !2069
  %shpool = getelementptr inbounds %struct.ngx_http_upstream_rr_peers_s, ptr %0, i32 0, i32 1, !dbg !2573
  %1 = load ptr, ptr %shpool, align 8, !dbg !2573, !tbaa !2455
  store ptr %1, ptr %pool, align 8, !dbg !2574, !tbaa !2069
  %2 = load ptr, ptr %pool, align 8, !dbg !2575, !tbaa !2069
  %call = call ptr @ngx_slab_calloc_locked(ptr noundef %2, i64 noundef 184), !dbg !2576
  store ptr %call, ptr %dst, align 8, !dbg !2577, !tbaa !2069
  %3 = load ptr, ptr %dst, align 8, !dbg !2578, !tbaa !2069
  %cmp = icmp eq ptr %3, null, !dbg !2580
  br i1 %cmp, label %if.then, label %if.end, !dbg !2581

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2582

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2584, !tbaa !2069
  %tobool = icmp ne ptr %4, null, !dbg !2584
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !2586

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %dst, align 8, !dbg !2587, !tbaa !2069
  %6 = load ptr, ptr %src.addr, align 8, !dbg !2587, !tbaa !2069
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 184, i1 false), !dbg !2587
  %7 = load ptr, ptr %dst, align 8, !dbg !2589, !tbaa !2069
  %sockaddr = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %7, i32 0, i32 0, !dbg !2590
  store ptr null, ptr %sockaddr, align 8, !dbg !2591, !tbaa !2592
  %8 = load ptr, ptr %dst, align 8, !dbg !2594, !tbaa !2069
  %name = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %8, i32 0, i32 2, !dbg !2595
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !2596
  store ptr null, ptr %data, align 8, !dbg !2597, !tbaa !2598
  %9 = load ptr, ptr %dst, align 8, !dbg !2599, !tbaa !2069
  %server = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %9, i32 0, i32 3, !dbg !2600
  %data2 = getelementptr inbounds %struct.ngx_str_t, ptr %server, i32 0, i32 1, !dbg !2601
  store ptr null, ptr %data2, align 8, !dbg !2602, !tbaa !2603
  br label %if.end3, !dbg !2604

if.end3:                                          ; preds = %if.then1, %if.end
  %10 = load ptr, ptr %pool, align 8, !dbg !2605, !tbaa !2069
  %call4 = call ptr @ngx_slab_calloc_locked(ptr noundef %10, i64 noundef 112), !dbg !2606
  %11 = load ptr, ptr %dst, align 8, !dbg !2607, !tbaa !2069
  %sockaddr5 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %11, i32 0, i32 0, !dbg !2608
  store ptr %call4, ptr %sockaddr5, align 8, !dbg !2609, !tbaa !2592
  %12 = load ptr, ptr %dst, align 8, !dbg !2610, !tbaa !2069
  %sockaddr6 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %12, i32 0, i32 0, !dbg !2612
  %13 = load ptr, ptr %sockaddr6, align 8, !dbg !2612, !tbaa !2592
  %cmp7 = icmp eq ptr %13, null, !dbg !2613
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2614

if.then8:                                         ; preds = %if.end3
  br label %failed, !dbg !2615

if.end9:                                          ; preds = %if.end3
  %14 = load ptr, ptr %pool, align 8, !dbg !2617, !tbaa !2069
  %call10 = call ptr @ngx_slab_calloc_locked(ptr noundef %14, i64 noundef 113), !dbg !2618
  %15 = load ptr, ptr %dst, align 8, !dbg !2619, !tbaa !2069
  %name11 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %15, i32 0, i32 2, !dbg !2620
  %data12 = getelementptr inbounds %struct.ngx_str_t, ptr %name11, i32 0, i32 1, !dbg !2621
  store ptr %call10, ptr %data12, align 8, !dbg !2622, !tbaa !2598
  %16 = load ptr, ptr %dst, align 8, !dbg !2623, !tbaa !2069
  %name13 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %16, i32 0, i32 2, !dbg !2625
  %data14 = getelementptr inbounds %struct.ngx_str_t, ptr %name13, i32 0, i32 1, !dbg !2626
  %17 = load ptr, ptr %data14, align 8, !dbg !2626, !tbaa !2598
  %cmp15 = icmp eq ptr %17, null, !dbg !2627
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2628

if.then16:                                        ; preds = %if.end9
  br label %failed, !dbg !2629

if.end17:                                         ; preds = %if.end9
  %18 = load ptr, ptr %src.addr, align 8, !dbg !2631, !tbaa !2069
  %tobool18 = icmp ne ptr %18, null, !dbg !2631
  br i1 %tobool18, label %if.then19, label %if.end44, !dbg !2633

if.then19:                                        ; preds = %if.end17
  %19 = load ptr, ptr %dst, align 8, !dbg !2634, !tbaa !2069
  %sockaddr20 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %19, i32 0, i32 0, !dbg !2634
  %20 = load ptr, ptr %sockaddr20, align 8, !dbg !2634, !tbaa !2592
  %21 = load ptr, ptr %src.addr, align 8, !dbg !2634, !tbaa !2069
  %sockaddr21 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %21, i32 0, i32 0, !dbg !2634
  %22 = load ptr, ptr %sockaddr21, align 8, !dbg !2634, !tbaa !2592
  %23 = load ptr, ptr %src.addr, align 8, !dbg !2634, !tbaa !2069
  %socklen = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %23, i32 0, i32 1, !dbg !2634
  %24 = load i32, ptr %socklen, align 8, !dbg !2634, !tbaa !2636
  %conv = zext i32 %24 to i64, !dbg !2634
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr align 2 %22, i64 %conv, i1 false), !dbg !2634
  %25 = load ptr, ptr %dst, align 8, !dbg !2637, !tbaa !2069
  %name22 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %25, i32 0, i32 2, !dbg !2637
  %data23 = getelementptr inbounds %struct.ngx_str_t, ptr %name22, i32 0, i32 1, !dbg !2637
  %26 = load ptr, ptr %data23, align 8, !dbg !2637, !tbaa !2598
  %27 = load ptr, ptr %src.addr, align 8, !dbg !2637, !tbaa !2069
  %name24 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %27, i32 0, i32 2, !dbg !2637
  %data25 = getelementptr inbounds %struct.ngx_str_t, ptr %name24, i32 0, i32 1, !dbg !2637
  %28 = load ptr, ptr %data25, align 8, !dbg !2637, !tbaa !2598
  %29 = load ptr, ptr %src.addr, align 8, !dbg !2637, !tbaa !2069
  %name26 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %29, i32 0, i32 2, !dbg !2637
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %name26, i32 0, i32 0, !dbg !2637
  %30 = load i64, ptr %len, align 8, !dbg !2637, !tbaa !2638
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %28, i64 %30, i1 false), !dbg !2637
  %31 = load ptr, ptr %pool, align 8, !dbg !2639, !tbaa !2069
  %32 = load ptr, ptr %src.addr, align 8, !dbg !2640, !tbaa !2069
  %server27 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %32, i32 0, i32 3, !dbg !2641
  %len28 = getelementptr inbounds %struct.ngx_str_t, ptr %server27, i32 0, i32 0, !dbg !2642
  %33 = load i64, ptr %len28, align 8, !dbg !2642, !tbaa !2643
  %call29 = call ptr @ngx_slab_alloc_locked(ptr noundef %31, i64 noundef %33), !dbg !2644
  %34 = load ptr, ptr %dst, align 8, !dbg !2645, !tbaa !2069
  %server30 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %34, i32 0, i32 3, !dbg !2646
  %data31 = getelementptr inbounds %struct.ngx_str_t, ptr %server30, i32 0, i32 1, !dbg !2647
  store ptr %call29, ptr %data31, align 8, !dbg !2648, !tbaa !2603
  %35 = load ptr, ptr %dst, align 8, !dbg !2649, !tbaa !2069
  %server32 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %35, i32 0, i32 3, !dbg !2651
  %data33 = getelementptr inbounds %struct.ngx_str_t, ptr %server32, i32 0, i32 1, !dbg !2652
  %36 = load ptr, ptr %data33, align 8, !dbg !2652, !tbaa !2603
  %cmp34 = icmp eq ptr %36, null, !dbg !2653
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2654

if.then36:                                        ; preds = %if.then19
  br label %failed, !dbg !2655

if.end37:                                         ; preds = %if.then19
  %37 = load ptr, ptr %dst, align 8, !dbg !2657, !tbaa !2069
  %server38 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %37, i32 0, i32 3, !dbg !2657
  %data39 = getelementptr inbounds %struct.ngx_str_t, ptr %server38, i32 0, i32 1, !dbg !2657
  %38 = load ptr, ptr %data39, align 8, !dbg !2657, !tbaa !2603
  %39 = load ptr, ptr %src.addr, align 8, !dbg !2657, !tbaa !2069
  %server40 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %39, i32 0, i32 3, !dbg !2657
  %data41 = getelementptr inbounds %struct.ngx_str_t, ptr %server40, i32 0, i32 1, !dbg !2657
  %40 = load ptr, ptr %data41, align 8, !dbg !2657, !tbaa !2603
  %41 = load ptr, ptr %src.addr, align 8, !dbg !2657, !tbaa !2069
  %server42 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %41, i32 0, i32 3, !dbg !2657
  %len43 = getelementptr inbounds %struct.ngx_str_t, ptr %server42, i32 0, i32 0, !dbg !2657
  %42 = load i64, ptr %len43, align 8, !dbg !2657, !tbaa !2643
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %40, i64 %42, i1 false), !dbg !2657
  br label %if.end44, !dbg !2658

if.end44:                                         ; preds = %if.end37, %if.end17
  %43 = load ptr, ptr %dst, align 8, !dbg !2659, !tbaa !2069
  store ptr %43, ptr %retval, align 8, !dbg !2660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2660

failed:                                           ; preds = %if.then36, %if.then16, %if.then8
  tail call void @llvm.dbg.label(metadata !2565), !dbg !2661
  %44 = load ptr, ptr %dst, align 8, !dbg !2662, !tbaa !2069
  %server45 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %44, i32 0, i32 3, !dbg !2664
  %data46 = getelementptr inbounds %struct.ngx_str_t, ptr %server45, i32 0, i32 1, !dbg !2665
  %45 = load ptr, ptr %data46, align 8, !dbg !2665, !tbaa !2603
  %tobool47 = icmp ne ptr %45, null, !dbg !2662
  br i1 %tobool47, label %if.then48, label %if.end51, !dbg !2666

if.then48:                                        ; preds = %failed
  %46 = load ptr, ptr %pool, align 8, !dbg !2667, !tbaa !2069
  %47 = load ptr, ptr %dst, align 8, !dbg !2669, !tbaa !2069
  %server49 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %47, i32 0, i32 3, !dbg !2670
  %data50 = getelementptr inbounds %struct.ngx_str_t, ptr %server49, i32 0, i32 1, !dbg !2671
  %48 = load ptr, ptr %data50, align 8, !dbg !2671, !tbaa !2603
  call void @ngx_slab_free_locked(ptr noundef %46, ptr noundef %48), !dbg !2672
  br label %if.end51, !dbg !2673

if.end51:                                         ; preds = %if.then48, %failed
  %49 = load ptr, ptr %dst, align 8, !dbg !2674, !tbaa !2069
  %name52 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %49, i32 0, i32 2, !dbg !2676
  %data53 = getelementptr inbounds %struct.ngx_str_t, ptr %name52, i32 0, i32 1, !dbg !2677
  %50 = load ptr, ptr %data53, align 8, !dbg !2677, !tbaa !2598
  %tobool54 = icmp ne ptr %50, null, !dbg !2674
  br i1 %tobool54, label %if.then55, label %if.end58, !dbg !2678

if.then55:                                        ; preds = %if.end51
  %51 = load ptr, ptr %pool, align 8, !dbg !2679, !tbaa !2069
  %52 = load ptr, ptr %dst, align 8, !dbg !2681, !tbaa !2069
  %name56 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %52, i32 0, i32 2, !dbg !2682
  %data57 = getelementptr inbounds %struct.ngx_str_t, ptr %name56, i32 0, i32 1, !dbg !2683
  %53 = load ptr, ptr %data57, align 8, !dbg !2683, !tbaa !2598
  call void @ngx_slab_free_locked(ptr noundef %51, ptr noundef %53), !dbg !2684
  br label %if.end58, !dbg !2685

if.end58:                                         ; preds = %if.then55, %if.end51
  %54 = load ptr, ptr %dst, align 8, !dbg !2686, !tbaa !2069
  %sockaddr59 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %54, i32 0, i32 0, !dbg !2688
  %55 = load ptr, ptr %sockaddr59, align 8, !dbg !2688, !tbaa !2592
  %tobool60 = icmp ne ptr %55, null, !dbg !2686
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !2689

if.then61:                                        ; preds = %if.end58
  %56 = load ptr, ptr %pool, align 8, !dbg !2690, !tbaa !2069
  %57 = load ptr, ptr %dst, align 8, !dbg !2692, !tbaa !2069
  %sockaddr62 = getelementptr inbounds %struct.ngx_http_upstream_rr_peer_s, ptr %57, i32 0, i32 0, !dbg !2693
  %58 = load ptr, ptr %sockaddr62, align 8, !dbg !2693, !tbaa !2592
  call void @ngx_slab_free_locked(ptr noundef %56, ptr noundef %58), !dbg !2694
  br label %if.end63, !dbg !2695

if.end63:                                         ; preds = %if.then61, %if.end58
  %59 = load ptr, ptr %pool, align 8, !dbg !2696, !tbaa !2069
  %60 = load ptr, ptr %dst, align 8, !dbg !2697, !tbaa !2069
  call void @ngx_slab_free_locked(ptr noundef %59, ptr noundef %60), !dbg !2698
  store ptr null, ptr %retval, align 8, !dbg !2699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2699

cleanup:                                          ; preds = %if.end63, %if.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #5, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #5, !dbg !2700
  %61 = load ptr, ptr %retval, align 8, !dbg !2700
  ret ptr %61, !dbg !2700
}

declare !dbg !2701 ptr @ngx_slab_calloc_locked(ptr noundef, i64 noundef) #2

declare !dbg !2702 ptr @ngx_slab_alloc_locked(ptr noundef, i64 noundef) #2

declare !dbg !2703 void @ngx_slab_free_locked(ptr noundef, ptr noundef) #2

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
!llvm.module.flags = !{!775, !776, !777, !778, !779, !780}
!llvm.ident = !{!781}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_upstream_zone_module.c", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "b1dd30cbf6f8aa3c62875e93bf040995")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_upstream_zone_module_ctx", scope: !9, file: !2, line: 36, type: !752, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !177, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !17, !23, !32, !35, !102}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
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
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 17, size: 192, elements: !27)
!27 = !{!28, !30, !31}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !26, file: !25, line: 18, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !26, file: !25, line: 19, baseType: !29, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !26, file: !25, line: 20, baseType: !29, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 108, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 194, baseType: !34)
!34 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !37, line: 59, baseType: !38)
!37 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 34, size: 1600, elements: !39)
!39 = !{!40, !51, !54, !55, !63, !64, !65, !74, !75, !76, !77, !96, !97, !98, !100, !101}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !38, file: !37, line: 35, baseType: !41, size: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 16, size: 128, elements: !44)
!44 = !{!45, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !43, file: !42, line: 17, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !47, line: 56, baseType: !48)
!47 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5d14beceab1860bcc051d3b7a146b2a2")
!48 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !47, line: 48, baseType: !15)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !43, file: !42, line: 19, baseType: !46, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !38, file: !37, line: 37, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 29, baseType: !15)
!53 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !38, file: !37, line: 38, baseType: !52, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !38, file: !37, line: 40, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !37, line: 16, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !37, line: 18, size: 192, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !58, file: !37, line: 19, baseType: !13, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !37, line: 20, baseType: !56, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !37, line: 21, baseType: !13, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !38, file: !37, line: 41, baseType: !56, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !38, file: !37, line: 42, baseType: !57, size: 192, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !38, file: !37, line: 44, baseType: !66, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !37, line: 31, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 25, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !68, file: !37, line: 26, baseType: !11, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !68, file: !37, line: 27, baseType: !11, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !68, file: !37, line: 29, baseType: !11, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !68, file: !37, line: 30, baseType: !11, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !38, file: !37, line: 45, baseType: !11, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !38, file: !37, line: 47, baseType: !17, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !37, line: 48, baseType: !17, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !37, line: 50, baseType: !78, size: 512, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !42, line: 37, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 24, size: 512, elements: !80)
!80 = !{!81, !83, !84, !85, !95}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !79, file: !42, line: 26, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !79, file: !42, line: 28, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !79, file: !42, line: 29, baseType: !11, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !79, file: !42, line: 30, baseType: !86, size: 256, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !87, line: 39, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 35, size: 256, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !88, file: !87, line: 37, baseType: !91, size: 256)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !88, file: !87, line: 38, baseType: !34, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !79, file: !42, line: 36, baseType: !11, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !38, file: !37, line: 52, baseType: !17, size: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !38, file: !37, line: 53, baseType: !18, size: 8, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !38, file: !37, line: 55, baseType: !99, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !37, line: 57, baseType: !16, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !38, file: !37, line: 58, baseType: !16, size: 64, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_rr_peers_t", file: !105, line: 59, baseType: !106)
!105 = !DIFile(filename: "src/http/ngx_http_upstream_round_robin.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "759ffe5a3eaa7466ee2e57328801103e")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_rr_peers_s", file: !105, line: 61, size: 640, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !124, !125}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !106, file: !105, line: 62, baseType: !11, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !106, file: !105, line: 65, baseType: !35, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock", scope: !106, file: !105, line: 66, baseType: !46, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "zone_next", scope: !106, file: !105, line: 67, baseType: !103, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "total_weight", scope: !106, file: !105, line: 70, baseType: !11, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !106, file: !105, line: 71, baseType: !11, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !106, file: !105, line: 73, baseType: !99, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !106, file: !105, line: 74, baseType: !99, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !105, line: 76, baseType: !117, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !119, line: 19, baseType: !120)
!119 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2f3ab61eca09df707b083ffd5eafea4f")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 16, size: 128, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !119, line: 17, baseType: !52, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !120, file: !119, line: 18, baseType: !17, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !105, line: 78, baseType: !103, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !106, file: !105, line: 80, baseType: !126, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_rr_peer_t", file: !105, line: 17, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_rr_peer_s", file: !105, line: 19, size: 1472, elements: !129)
!129 = !{!130, !143, !147, !148, !149, !153, !154, !155, !156, !157, !158, !162, !163, !164, !165, !170, !171, !172, !173, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !128, file: !105, line: 20, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !133, line: 180, size: 128, elements: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!134 = !{!135, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !132, file: !133, line: 182, baseType: !136, size: 16)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !137, line: 28, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !132, file: !133, line: 183, baseType: !140, size: 112, offset: 16)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 14)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !128, file: !105, line: 21, baseType: !144, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !145, line: 274, baseType: !146)
!145 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !21, line: 210, baseType: !99)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !105, line: 22, baseType: !118, size: 128, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !128, file: !105, line: 23, baseType: !118, size: 128, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "current_weight", scope: !128, file: !105, line: 25, baseType: !150, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !12, line: 78, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !145, line: 267, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !21, line: 207, baseType: !34)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "effective_weight", scope: !128, file: !105, line: 26, baseType: !150, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !128, file: !105, line: 27, baseType: !150, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !128, file: !105, line: 29, baseType: !11, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "max_conns", scope: !128, file: !105, line: 30, baseType: !11, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !128, file: !105, line: 32, baseType: !11, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "accessed", scope: !128, file: !105, line: 33, baseType: !159, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !160, line: 10, baseType: !161)
!160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !21, line: 160, baseType: !34)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !128, file: !105, line: 34, baseType: !159, size: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_fails", scope: !128, file: !105, line: 36, baseType: !11, size: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fail_timeout", scope: !128, file: !105, line: 37, baseType: !159, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "slow_start", scope: !128, file: !105, line: 38, baseType: !166, size: 64, offset: 1024)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !167, line: 16, baseType: !168)
!167 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !169, line: 16, baseType: !11)
!169 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3e0aca9b19636f12ab4dbc16c3f8a0a1")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !128, file: !105, line: 39, baseType: !166, size: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !128, file: !105, line: 41, baseType: !11, size: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session", scope: !128, file: !105, line: 44, baseType: !16, size: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_len", scope: !128, file: !105, line: 45, baseType: !174, size: 32, offset: 1280)
!174 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !128, file: !105, line: 49, baseType: !46, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !105, line: 52, baseType: !126, size: 64, offset: 1408)
!177 = !{!0, !178, !7, !728, !733, !738, !743, !745, !747}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "ngx_http_upstream_zone_module", scope: !9, file: !2, line: 51, type: !180, isLocal: false, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !181, line: 15, baseType: !182)
!181 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "20a149d22b95b5c7a0a8830d485b97ae")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !183, line: 222, size: 1600, elements: !184)
!183 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "9061a5345279c977548e41d1c550ac28")
!184 = !{!185, !186, !187, !189, !190, !191, !192, !195, !196, !703, !704, !708, !712, !713, !714, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !182, file: !183, line: 223, baseType: !11, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !182, file: !183, line: 224, baseType: !11, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 226, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !182, file: !183, line: 228, baseType: !11, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !182, file: !183, line: 229, baseType: !11, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !182, file: !183, line: 231, baseType: !11, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !182, file: !183, line: 232, baseType: !193, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !182, file: !183, line: 234, baseType: !16, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !182, file: !183, line: 235, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !181, line: 22, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !200, line: 77, size: 448, elements: !201)
!200 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "b737d189253ca17c55f83e424debf52b")
!201 = !{!202, !203, !204, !700, !701, !702}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !200, line: 78, baseType: !118, size: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !200, line: 79, baseType: !11, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !199, file: !200, line: 80, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!188, !208, !197, !16}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !181, line: 16, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !200, line: 116, size: 768, elements: !211)
!211 = !{!212, !213, !381, !682, !683, !684, !693, !694, !695, !696, !697, !699}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !200, line: 117, baseType: !188, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !210, file: !200, line: 118, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !216, line: 22, baseType: !217)
!216 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 16, size: 320, elements: !218)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !217, file: !216, line: 17, baseType: !16, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !217, file: !216, line: 18, baseType: !11, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !217, file: !216, line: 19, baseType: !52, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !217, file: !216, line: 20, baseType: !11, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !217, file: !216, line: 21, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !181, line: 18, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !227, line: 57, size: 640, elements: !228)
!227 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!228 = !{!229, !237, !238, !239, !361, !368, !380}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !226, file: !227, line: 58, baseType: !230, size: 256)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !227, line: 54, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 49, size: 256, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !231, file: !227, line: 50, baseType: !17, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !231, file: !227, line: 51, baseType: !17, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !227, line: 52, baseType: !224, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !231, file: !227, line: 53, baseType: !11, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !226, file: !227, line: 59, baseType: !52, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !226, file: !227, line: 60, baseType: !224, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !226, file: !227, line: 61, baseType: !240, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !181, line: 19, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !243, line: 59, size: 128, elements: !244)
!243 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6333220b53b7706731e71ee9d0416317")
!244 = !{!245, !360}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !243, line: 60, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !243, line: 18, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !243, line: 20, size: 640, elements: !249)
!249 = !{!250, !251, !252, !255, !256, !257, !258, !260, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !248, file: !243, line: 21, baseType: !17, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !248, file: !243, line: 22, baseType: !17, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !248, file: !243, line: 23, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !19, line: 87, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 153, baseType: !34)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !248, file: !243, line: 24, baseType: !253, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !248, file: !243, line: 26, baseType: !17, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !248, file: !243, line: 27, baseType: !17, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !248, file: !243, line: 28, baseType: !259, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !243, line: 16, baseType: !16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !248, file: !243, line: 29, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !181, line: 23, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !264, line: 16, size: 1600, elements: !265)
!264 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!265 = !{!266, !269, !270, !308, !309, !310, !345, !346}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !263, file: !264, line: 17, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !268, line: 16, baseType: !174)
!268 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5c6995d5f659dd97ea6d10eff0ad0f12")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !264, line: 18, baseType: !118, size: 128, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !263, file: !264, line: 19, baseType: !271, size: 1152, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !268, line: 17, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !273, line: 26, size: 1152, elements: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!274 = !{!275, !277, !279, !281, !283, !285, !287, !288, !289, !291, !293, !295, !302, !303, !304}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !272, file: !273, line: 31, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !21, line: 145, baseType: !15)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !272, file: !273, line: 36, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !21, line: 148, baseType: !15)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !272, file: !273, line: 44, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !21, line: 151, baseType: !15)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !272, file: !273, line: 45, baseType: !282, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !21, line: 150, baseType: !99)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !272, file: !273, line: 47, baseType: !284, size: 32, offset: 224)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !21, line: 146, baseType: !99)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !272, file: !273, line: 48, baseType: !286, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !21, line: 147, baseType: !99)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !272, file: !273, line: 50, baseType: !174, size: 32, offset: 288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !272, file: !273, line: 52, baseType: !276, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !272, file: !273, line: 57, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 152, baseType: !34)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !272, file: !273, line: 61, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !21, line: 175, baseType: !34)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !272, file: !273, line: 63, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !21, line: 180, baseType: !34)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !272, file: !273, line: 74, baseType: !296, size: 128, offset: 576)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !297, line: 11, size: 128, elements: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !296, file: !297, line: 16, baseType: !161, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !296, file: !297, line: 21, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !21, line: 197, baseType: !34)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !272, file: !273, line: 75, baseType: !296, size: 128, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !272, file: !273, line: 76, baseType: !296, size: 128, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !272, file: !273, line: 89, baseType: !305, size: 192, offset: 960)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 3)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !263, file: !264, line: 21, baseType: !253, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !263, file: !264, line: 22, baseType: !253, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !263, file: !264, line: 24, baseType: !311, size: 64, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !181, line: 20, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !314, line: 50, size: 640, elements: !315)
!314 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "81257099415bdc5e18cdef9b4461d934")
!315 = !{!316, !317, !329, !330, !331, !336, !337, !342, !343, !344}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !313, file: !314, line: 51, baseType: !11, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !313, file: !314, line: 52, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !181, line: 21, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !200, line: 89, size: 320, elements: !321)
!321 = !{!322, !323, !324, !328}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !320, file: !200, line: 90, baseType: !267, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !200, line: 91, baseType: !118, size: 128, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !320, file: !200, line: 93, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !318, !311}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !320, file: !200, line: 94, baseType: !16, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !313, file: !314, line: 54, baseType: !49, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !313, file: !314, line: 56, baseType: !159, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !313, file: !314, line: 58, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !314, line: 45, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!17, !311, !17, !52}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !313, file: !314, line: 59, baseType: !16, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !313, file: !314, line: 61, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !314, line: 46, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !311, !11, !17, !52}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !313, file: !314, line: 62, baseType: !16, size: 64, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !313, file: !314, line: 70, baseType: !188, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !314, line: 72, baseType: !311, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !263, file: !264, line: 37, baseType: !99, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !263, file: !264, line: 38, baseType: !99, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !248, file: !243, line: 30, baseType: !246, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !248, file: !243, line: 34, baseType: !99, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !248, file: !243, line: 40, baseType: !99, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !248, file: !243, line: 43, baseType: !99, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !248, file: !243, line: 45, baseType: !99, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !248, file: !243, line: 46, baseType: !99, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !248, file: !243, line: 47, baseType: !99, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !248, file: !243, line: 48, baseType: !99, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !248, file: !243, line: 49, baseType: !99, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !248, file: !243, line: 50, baseType: !99, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !248, file: !243, line: 52, baseType: !99, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !248, file: !243, line: 53, baseType: !99, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !248, file: !243, line: 55, baseType: !174, size: 32, offset: 608)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !243, line: 61, baseType: !240, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !226, file: !227, line: 62, baseType: !362, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !227, line: 41, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !227, line: 43, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !227, line: 44, baseType: !362, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !364, file: !227, line: 45, baseType: !16, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !226, file: !227, line: 63, baseType: !369, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !227, line: 32, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !227, line: 34, size: 192, elements: !372)
!372 = !{!373, !378, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !371, file: !227, line: 35, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !227, line: 30, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !16}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !371, file: !227, line: 36, baseType: !16, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !227, line: 37, baseType: !369, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !226, file: !227, line: 64, baseType: !311, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !210, file: !200, line: 120, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !181, line: 17, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !385, line: 39, size: 5184, elements: !386)
!385 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "44a673836137b8263e2cfd875033292f")
!386 = !{!387, !390, !391, !392, !393, !394, !636, !637, !638, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !384, file: !385, line: 40, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !384, file: !385, line: 41, baseType: !224, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !384, file: !385, line: 43, baseType: !311, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !384, file: !385, line: 44, baseType: !312, size: 640, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !384, file: !385, line: 46, baseType: !11, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !384, file: !385, line: 48, baseType: !395, size: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !181, line: 26, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !399, line: 122, size: 1856, elements: !400)
!399 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "212f2f4879dcb10799877db6a93ee4ed")
!400 = !{!401, !402, !456, !457, !460, !466, !468, !473, !478, !539, !540, !541, !542, !543, !544, !545, !546, !562, !609, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !398, file: !399, line: 123, baseType: !16, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !398, file: !399, line: 124, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !181, line: 24, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !406, line: 30, size: 768, elements: !407)
!406 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "37d7d908a1a7ebec5ff5673dd5f89a52")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !435, !436, !437, !448}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !405, file: !406, line: 31, baseType: !16, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !406, line: 33, baseType: !99, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !405, file: !406, line: 35, baseType: !99, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !405, file: !406, line: 38, baseType: !99, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !405, file: !406, line: 44, baseType: !99, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !405, file: !406, line: 46, baseType: !99, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !405, file: !406, line: 49, baseType: !99, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !405, file: !406, line: 51, baseType: !99, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !405, file: !406, line: 54, baseType: !99, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !405, file: !406, line: 56, baseType: !99, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !405, file: !406, line: 57, baseType: !99, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !405, file: !406, line: 59, baseType: !99, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !405, file: !406, line: 60, baseType: !99, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !405, file: !406, line: 62, baseType: !99, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !405, file: !406, line: 64, baseType: !99, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !405, file: !406, line: 67, baseType: !99, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !405, file: !406, line: 69, baseType: !99, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !405, file: !406, line: 71, baseType: !99, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !405, file: !406, line: 74, baseType: !99, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !405, file: !406, line: 75, baseType: !99, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !405, file: !406, line: 77, baseType: !99, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !405, file: !406, line: 101, baseType: !174, size: 32, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !405, file: !406, line: 103, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !181, line: 33, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !403}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !405, file: !406, line: 110, baseType: !11, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !405, file: !406, line: 112, baseType: !311, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !405, file: !406, line: 114, baseType: !438, size: 320, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !169, line: 20, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !169, line: 22, size: 320, elements: !440)
!440 = !{!441, !442, !444, !445, !446, !447}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !439, file: !169, line: 23, baseType: !168, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !439, file: !169, line: 24, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !439, file: !169, line: 25, baseType: !443, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !439, file: !169, line: 26, baseType: !443, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !439, file: !169, line: 27, baseType: !18, size: 8, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !439, file: !169, line: 28, baseType: !18, size: 8, offset: 264)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !405, file: !406, line: 117, baseType: !449, size: 128, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !450, line: 16, baseType: !451)
!450 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !450, line: 18, size: 128, elements: !452)
!452 = !{!453, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !450, line: 19, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !450, line: 20, baseType: !454, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !398, file: !399, line: 125, baseType: !403, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !398, file: !399, line: 127, baseType: !458, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !459, line: 17, baseType: !174)
!459 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3294ca407f098b2e2906f1b2d90752a2")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !398, file: !399, line: 129, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !462, line: 19, baseType: !463)
!462 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!32, !396, !17, !52}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !398, file: !399, line: 130, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !462, line: 22, baseType: !463)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !398, file: !399, line: 131, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !462, line: 20, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!32, !396, !240, !253}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !398, file: !399, line: 132, baseType: !474, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !462, line: 23, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!240, !396, !240, !253}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !398, file: !399, line: 134, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !399, line: 16, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !399, line: 18, size: 2368, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !500, !501, !502, !503, !504, !505, !506, !507, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !481, file: !399, line: 19, baseType: !458, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !481, file: !399, line: 21, baseType: !131, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !481, file: !399, line: 22, baseType: !144, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !481, file: !399, line: 23, baseType: !52, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !481, file: !399, line: 24, baseType: !118, size: 128, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !399, line: 26, baseType: !174, size: 32, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !481, file: !399, line: 28, baseType: !174, size: 32, offset: 416)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !481, file: !399, line: 29, baseType: !174, size: 32, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !481, file: !399, line: 30, baseType: !174, size: 32, offset: 480)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !481, file: !399, line: 32, baseType: !174, size: 32, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !481, file: !399, line: 33, baseType: !174, size: 32, offset: 544)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !481, file: !399, line: 34, baseType: !174, size: 32, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !399, line: 38, baseType: !496, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !181, line: 34, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !396}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !481, file: !399, line: 40, baseType: !16, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !481, file: !399, line: 42, baseType: !312, size: 640, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !481, file: !399, line: 43, baseType: !311, size: 64, offset: 1408)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !481, file: !399, line: 45, baseType: !52, size: 64, offset: 1472)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !481, file: !399, line: 47, baseType: !52, size: 64, offset: 1536)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !481, file: !399, line: 49, baseType: !479, size: 64, offset: 1600)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !481, file: !399, line: 50, baseType: !396, size: 64, offset: 1664)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !481, file: !399, line: 52, baseType: !508, size: 192, offset: 1728)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !169, line: 32, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !169, line: 37, size: 192, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !509, file: !169, line: 38, baseType: !443, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !509, file: !169, line: 39, baseType: !443, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !509, file: !169, line: 40, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !169, line: 34, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !443, !443, !443}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !481, file: !399, line: 53, baseType: !438, size: 320, offset: 1920)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !481, file: !399, line: 55, baseType: !11, size: 64, offset: 2240)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !481, file: !399, line: 57, baseType: !99, size: 1, offset: 2304, flags: DIFlagBitField, extraData: i64 2304)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !481, file: !399, line: 58, baseType: !99, size: 1, offset: 2305, flags: DIFlagBitField, extraData: i64 2304)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !481, file: !399, line: 59, baseType: !99, size: 1, offset: 2306, flags: DIFlagBitField, extraData: i64 2304)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !481, file: !399, line: 61, baseType: !99, size: 1, offset: 2307, flags: DIFlagBitField, extraData: i64 2304)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !481, file: !399, line: 62, baseType: !99, size: 1, offset: 2308, flags: DIFlagBitField, extraData: i64 2304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !481, file: !399, line: 63, baseType: !99, size: 1, offset: 2309, flags: DIFlagBitField, extraData: i64 2304)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !481, file: !399, line: 64, baseType: !99, size: 1, offset: 2310, flags: DIFlagBitField, extraData: i64 2304)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !481, file: !399, line: 65, baseType: !99, size: 1, offset: 2311, flags: DIFlagBitField, extraData: i64 2304)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !481, file: !399, line: 66, baseType: !99, size: 1, offset: 2312, flags: DIFlagBitField, extraData: i64 2304)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !481, file: !399, line: 67, baseType: !99, size: 1, offset: 2313, flags: DIFlagBitField, extraData: i64 2304)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !481, file: !399, line: 68, baseType: !99, size: 1, offset: 2314, flags: DIFlagBitField, extraData: i64 2304)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !481, file: !399, line: 71, baseType: !99, size: 1, offset: 2315, flags: DIFlagBitField, extraData: i64 2304)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !481, file: !399, line: 73, baseType: !99, size: 1, offset: 2316, flags: DIFlagBitField, extraData: i64 2304)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !481, file: !399, line: 74, baseType: !99, size: 1, offset: 2317, flags: DIFlagBitField, extraData: i64 2304)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !481, file: !399, line: 75, baseType: !99, size: 2, offset: 2318, flags: DIFlagBitField, extraData: i64 2304)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !481, file: !399, line: 77, baseType: !99, size: 1, offset: 2320, flags: DIFlagBitField, extraData: i64 2304)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !481, file: !399, line: 78, baseType: !99, size: 1, offset: 2321, flags: DIFlagBitField, extraData: i64 2304)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !481, file: !399, line: 79, baseType: !99, size: 1, offset: 2322, flags: DIFlagBitField, extraData: i64 2304)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !481, file: !399, line: 88, baseType: !174, size: 32, offset: 2336)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !398, file: !399, line: 136, baseType: !253, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !398, file: !399, line: 138, baseType: !311, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !398, file: !399, line: 140, baseType: !224, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !399, line: 142, baseType: !174, size: 32, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !398, file: !399, line: 144, baseType: !131, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !398, file: !399, line: 145, baseType: !144, size: 32, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !398, file: !399, line: 146, baseType: !118, size: 128, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !398, file: !399, line: 148, baseType: !547, size: 64, offset: 1088)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_proxy_protocol_t", file: !181, line: 29, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_proxy_protocol_s", file: !550, line: 20, size: 448, elements: !551)
!550 = !DIFile(filename: "src/core/ngx_proxy_protocol.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2f709b54741e3446706b44243689209d")
!551 = !{!552, !553, !554, !560, !561}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !549, file: !550, line: 21, baseType: !118, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !549, file: !550, line: 22, baseType: !118, size: 128, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !549, file: !550, line: 23, baseType: !555, size: 16, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !556, line: 123, baseType: !557)
!556 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !558, line: 25, baseType: !559)
!558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 40, baseType: !138)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !549, file: !550, line: 24, baseType: !555, size: 16, offset: 272)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tlvs", scope: !549, file: !550, line: 25, baseType: !118, size: 128, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !398, file: !399, line: 151, baseType: !563, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !181, line: 30, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !566, line: 88, size: 768, elements: !567)
!566 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "3af21306d729871437c56397859c5d10")
!567 = !{!568, !573, !577, !578, !579, !580, !581, !586, !587, !588, !589, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !565, file: !566, line: 89, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !571, line: 187, baseType: !572)
!571 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/types.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build", checksumkind: CSK_MD5, checksum: "b6649ae9fb159d98e26ef5156a06b00d")
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !571, line: 187, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !565, file: !566, line: 90, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !571, line: 188, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !571, line: 188, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !565, file: !566, line: 92, baseType: !150, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !565, file: !566, line: 93, baseType: !246, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !565, file: !566, line: 94, baseType: !52, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !566, line: 96, baseType: !496, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !565, file: !566, line: 98, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !584, line: 234, baseType: !585)
!584 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/ssl.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build", checksumkind: CSK_MD5, checksum: "b3965e72168556c434721fcea95f586f")
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !584, line: 234, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !565, file: !566, line: 99, baseType: !496, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !565, file: !566, line: 101, baseType: !431, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !565, file: !566, line: 102, baseType: !431, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ocsp", scope: !565, file: !566, line: 104, baseType: !590, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_ocsp_t", file: !566, line: 78, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_ocsp_s", file: !566, line: 78, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !565, file: !566, line: 106, baseType: !18, size: 8, offset: 704)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !565, file: !566, line: 108, baseType: !99, size: 1, offset: 712, flags: DIFlagBitField, extraData: i64 712)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_rejected", scope: !565, file: !566, line: 109, baseType: !99, size: 1, offset: 713, flags: DIFlagBitField, extraData: i64 712)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !565, file: !566, line: 110, baseType: !99, size: 1, offset: 714, flags: DIFlagBitField, extraData: i64 712)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !565, file: !566, line: 111, baseType: !99, size: 1, offset: 715, flags: DIFlagBitField, extraData: i64 712)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !565, file: !566, line: 112, baseType: !99, size: 1, offset: 716, flags: DIFlagBitField, extraData: i64 712)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !565, file: !566, line: 113, baseType: !99, size: 1, offset: 717, flags: DIFlagBitField, extraData: i64 712)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !565, file: !566, line: 114, baseType: !99, size: 1, offset: 718, flags: DIFlagBitField, extraData: i64 712)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_without_free", scope: !565, file: !566, line: 115, baseType: !99, size: 1, offset: 719, flags: DIFlagBitField, extraData: i64 712)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !565, file: !566, line: 116, baseType: !99, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 712)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout_set", scope: !565, file: !566, line: 117, baseType: !99, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 712)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !565, file: !566, line: 118, baseType: !99, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 712)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !565, file: !566, line: 119, baseType: !99, size: 1, offset: 723, flags: DIFlagBitField, extraData: i64 712)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_ocsp", scope: !565, file: !566, line: 120, baseType: !99, size: 1, offset: 724, flags: DIFlagBitField, extraData: i64 712)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !565, file: !566, line: 121, baseType: !99, size: 1, offset: 725, flags: DIFlagBitField, extraData: i64 712)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !565, file: !566, line: 122, baseType: !99, size: 1, offset: 726, flags: DIFlagBitField, extraData: i64 712)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !398, file: !399, line: 154, baseType: !610, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !181, line: 31, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !181, line: 31, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !398, file: !399, line: 156, baseType: !131, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !398, file: !399, line: 157, baseType: !144, size: 32, offset: 1344)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !398, file: !399, line: 159, baseType: !246, size: 64, offset: 1408)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !398, file: !399, line: 161, baseType: !449, size: 128, offset: 1472)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !398, file: !399, line: 163, baseType: !49, size: 64, offset: 1600)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !398, file: !399, line: 165, baseType: !166, size: 64, offset: 1664)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !398, file: !399, line: 166, baseType: !11, size: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !398, file: !399, line: 168, baseType: !99, size: 8, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !398, file: !399, line: 170, baseType: !99, size: 3, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !398, file: !399, line: 172, baseType: !99, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !398, file: !399, line: 173, baseType: !99, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !398, file: !399, line: 174, baseType: !99, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !398, file: !399, line: 175, baseType: !99, size: 1, offset: 1806, flags: DIFlagBitField, extraData: i64 1792)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !398, file: !399, line: 177, baseType: !99, size: 1, offset: 1807, flags: DIFlagBitField, extraData: i64 1792)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !398, file: !399, line: 178, baseType: !99, size: 1, offset: 1808, flags: DIFlagBitField, extraData: i64 1792)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !398, file: !399, line: 179, baseType: !99, size: 1, offset: 1809, flags: DIFlagBitField, extraData: i64 1792)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !398, file: !399, line: 180, baseType: !99, size: 1, offset: 1810, flags: DIFlagBitField, extraData: i64 1792)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !398, file: !399, line: 182, baseType: !99, size: 1, offset: 1811, flags: DIFlagBitField, extraData: i64 1792)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !398, file: !399, line: 183, baseType: !99, size: 1, offset: 1812, flags: DIFlagBitField, extraData: i64 1792)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !398, file: !399, line: 184, baseType: !99, size: 2, offset: 1813, flags: DIFlagBitField, extraData: i64 1792)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !398, file: !399, line: 185, baseType: !99, size: 2, offset: 1815, flags: DIFlagBitField, extraData: i64 1792)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !398, file: !399, line: 187, baseType: !99, size: 1, offset: 1817, flags: DIFlagBitField, extraData: i64 1792)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "need_flush_buf", scope: !398, file: !399, line: 188, baseType: !99, size: 1, offset: 1818, flags: DIFlagBitField, extraData: i64 1792)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !384, file: !385, line: 49, baseType: !396, size: 64, offset: 960)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !384, file: !385, line: 50, baseType: !11, size: 64, offset: 1024)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !384, file: !385, line: 52, baseType: !639, size: 64, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !384, file: !385, line: 53, baseType: !11, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !384, file: !385, line: 54, baseType: !11, size: 64, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !384, file: !385, line: 56, baseType: !449, size: 128, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !384, file: !385, line: 57, baseType: !11, size: 64, offset: 1408)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "connections_reuse_time", scope: !384, file: !385, line: 58, baseType: !159, size: 64, offset: 1472)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !384, file: !385, line: 60, baseType: !215, size: 320, offset: 1536)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !384, file: !385, line: 61, baseType: !215, size: 320, offset: 1856)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !384, file: !385, line: 63, baseType: !215, size: 320, offset: 2176)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !384, file: !385, line: 64, baseType: !508, size: 192, offset: 2496)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !384, file: !385, line: 65, baseType: !438, size: 320, offset: 2688)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !384, file: !385, line: 67, baseType: !652, size: 448, offset: 3008)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !653, line: 31, baseType: !654)
!653 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 25, size: 448, elements: !655)
!655 = !{!656, !664, !665, !666, !667}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !654, file: !653, line: 26, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !653, line: 16, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !653, line: 18, size: 192, elements: !660)
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !659, file: !653, line: 19, baseType: !16, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !659, file: !653, line: 20, baseType: !11, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !659, file: !653, line: 21, baseType: !657, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !654, file: !653, line: 27, baseType: !658, size: 192, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !654, file: !653, line: 28, baseType: !52, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !654, file: !653, line: 29, baseType: !11, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !654, file: !653, line: 30, baseType: !224, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !384, file: !385, line: 68, baseType: !652, size: 448, offset: 3456)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !384, file: !385, line: 70, baseType: !11, size: 64, offset: 3904)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !384, file: !385, line: 71, baseType: !11, size: 64, offset: 3968)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !384, file: !385, line: 73, baseType: !396, size: 64, offset: 4032)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !384, file: !385, line: 74, baseType: !403, size: 64, offset: 4096)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !384, file: !385, line: 75, baseType: !403, size: 64, offset: 4160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !384, file: !385, line: 77, baseType: !382, size: 64, offset: 4224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !384, file: !385, line: 79, baseType: !118, size: 128, offset: 4288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !384, file: !385, line: 80, baseType: !118, size: 128, offset: 4416)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !384, file: !385, line: 81, baseType: !118, size: 128, offset: 4544)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !384, file: !385, line: 82, baseType: !118, size: 128, offset: 4672)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !384, file: !385, line: 83, baseType: !118, size: 128, offset: 4800)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !384, file: !385, line: 84, baseType: !118, size: 128, offset: 4928)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !384, file: !385, line: 85, baseType: !118, size: 128, offset: 5056)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !210, file: !200, line: 121, baseType: !224, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !210, file: !200, line: 122, baseType: !224, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !210, file: !200, line: 123, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !200, line: 103, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 98, size: 1792, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !687, file: !200, line: 99, baseType: !262, size: 1600)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !687, file: !200, line: 100, baseType: !246, size: 64, offset: 1600)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !687, file: !200, line: 101, baseType: !246, size: 64, offset: 1664)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !687, file: !200, line: 102, baseType: !11, size: 64, offset: 1728)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !210, file: !200, line: 124, baseType: !311, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !210, file: !200, line: 126, baseType: !16, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !210, file: !200, line: 127, baseType: !11, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !210, file: !200, line: 128, baseType: !11, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !210, file: !200, line: 130, baseType: !698, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !200, line: 112, baseType: !205)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !210, file: !200, line: 131, baseType: !16, size: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !199, file: !200, line: 81, baseType: !11, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !199, file: !200, line: 82, baseType: !11, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !199, file: !200, line: 83, baseType: !16, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !183, line: 236, baseType: !11, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !182, file: !183, line: 238, baseType: !705, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!150, !311}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !182, file: !183, line: 240, baseType: !709, size: 64, offset: 704)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!150, !382}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !182, file: !183, line: 242, baseType: !709, size: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !182, file: !183, line: 243, baseType: !709, size: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !182, file: !183, line: 244, baseType: !715, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !382}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !182, file: !183, line: 245, baseType: !715, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !182, file: !183, line: 247, baseType: !715, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !182, file: !183, line: 249, baseType: !13, size: 64, offset: 1088)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !182, file: !183, line: 250, baseType: !13, size: 64, offset: 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !182, file: !183, line: 251, baseType: !13, size: 64, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !182, file: !183, line: 252, baseType: !13, size: 64, offset: 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !182, file: !183, line: 253, baseType: !13, size: 64, offset: 1344)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !182, file: !183, line: 254, baseType: !13, size: 64, offset: 1408)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !182, file: !183, line: 255, baseType: !13, size: 64, offset: 1472)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !182, file: !183, line: 256, baseType: !13, size: 64, offset: 1536)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 5)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "ngx_http_upstream_zone_commands", scope: !9, file: !2, line: 23, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 896, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 2)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 23)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !740, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !740, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 25)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !25, line: 36, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 24, size: 512, elements: !754)
!754 = !{!755, !759, !760, !764, !768, !769, !773, !774}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !753, file: !25, line: 25, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!150, !208}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !753, file: !25, line: 26, baseType: !756, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !753, file: !25, line: 28, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!16, !208}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !753, file: !25, line: 29, baseType: !765, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!188, !208, !16}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !753, file: !25, line: 31, baseType: !761, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !753, file: !25, line: 32, baseType: !770, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!188, !208, !16, !16}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !753, file: !25, line: 34, baseType: !761, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !753, file: !25, line: 35, baseType: !770, size: 64, offset: 448)
!775 = !{i32 7, !"Dwarf Version", i32 5}
!776 = !{i32 2, !"Debug Info Version", i32 3}
!777 = !{i32 1, !"wchar_size", i32 4}
!778 = !{i32 8, !"PIC Level", i32 2}
!779 = !{i32 7, !"PIE Level", i32 2}
!780 = !{i32 7, !"uwtable", i32 2}
!781 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!782 = distinct !DISubprogram(name: "ngx_http_upstream_zone", scope: !2, file: !2, line: 68, type: !206, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !2062}
!784 = !DILocalVariable(name: "cf", arg: 1, scope: !782, file: !2, line: 68, type: !208)
!785 = !DILocalVariable(name: "cmd", arg: 2, scope: !782, file: !2, line: 68, type: !197)
!786 = !DILocalVariable(name: "conf", arg: 3, scope: !782, file: !2, line: 68, type: !16)
!787 = !DILocalVariable(name: "size", scope: !782, file: !2, line: 70, type: !32)
!788 = !DILocalVariable(name: "value", scope: !782, file: !2, line: 71, type: !117)
!789 = !DILocalVariable(name: "uscf", scope: !782, file: !2, line: 72, type: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !792, line: 79, baseType: !793)
!792 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "bad45a65b84155e2cd31779ca946a5e9")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !792, line: 121, size: 832, elements: !794)
!794 = !{!795, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !793, file: !792, line: 122, baseType: !796, size: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !792, line: 91, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 87, size: 192, elements: !798)
!798 = !{!799, !804, !2052}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !797, file: !792, line: 88, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !792, line: 81, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!150, !208, !790}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !797, file: !792, line: 89, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !792, line: 83, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!150, !809, !790}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !811, line: 16, baseType: !812)
!811 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "7164149d4c2473091a4e1c4f6baa1b7e")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !813, line: 377, size: 10624, elements: !814)
!813 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2bd9fa6c0840df2506a27db4121d9c74")
!814 = !{!815, !818, !819, !820, !821, !822, !823, !828, !829, !986, !1562, !1563, !1564, !1565, !1609, !1641, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1690, !1701, !1708, !1709, !1711, !1712, !1725, !1726, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1942, !1946, !1951, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !812, file: !813, line: 378, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !558, line: 26, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 42, baseType: !99)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !812, file: !813, line: 380, baseType: !396, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !812, file: !813, line: 382, baseType: !29, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !812, file: !813, line: 383, baseType: !29, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !812, file: !813, line: 384, baseType: !29, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !812, file: !813, line: 385, baseType: !29, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !812, file: !813, line: 387, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !813, line: 374, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !809}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !812, file: !813, line: 388, baseType: !824, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !812, file: !813, line: 391, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !811, line: 18, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !833, line: 65, size: 4864, elements: !834)
!833 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f29cd7dd14e04d7d4af9197bf6cdb9bb")
!834 = !{!835, !836, !837, !838, !842, !843, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !943, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !832, file: !833, line: 66, baseType: !262, size: 1600)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !832, file: !833, line: 67, baseType: !215, size: 320, offset: 1600)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !832, file: !833, line: 68, baseType: !816, size: 32, offset: 1920)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !832, file: !833, line: 69, baseType: !839, size: 128, offset: 1952)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 16)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !832, file: !833, line: 70, baseType: !839, size: 128, offset: 2080)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !832, file: !833, line: 72, baseType: !844, size: 64, offset: 2240)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !268, line: 18, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !19, line: 49, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !21, line: 149, baseType: !15)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !832, file: !833, line: 73, baseType: !159, size: 64, offset: 2304)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !832, file: !833, line: 74, baseType: !159, size: 64, offset: 2368)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !832, file: !833, line: 75, baseType: !159, size: 64, offset: 2432)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !832, file: !833, line: 76, baseType: !159, size: 64, offset: 2496)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !832, file: !833, line: 77, baseType: !159, size: 64, offset: 2560)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !832, file: !833, line: 79, baseType: !118, size: 128, offset: 2624)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !832, file: !833, line: 80, baseType: !118, size: 128, offset: 2752)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !832, file: !833, line: 81, baseType: !839, size: 128, offset: 2880)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !832, file: !833, line: 83, baseType: !52, size: 64, offset: 3008)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !832, file: !833, line: 84, baseType: !52, size: 64, offset: 3072)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !832, file: !833, line: 85, baseType: !52, size: 64, offset: 3136)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !832, file: !833, line: 86, baseType: !253, size: 64, offset: 3200)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !832, file: !833, line: 87, baseType: !253, size: 64, offset: 3264)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !832, file: !833, line: 89, baseType: !11, size: 64, offset: 3328)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !832, file: !833, line: 90, baseType: !11, size: 64, offset: 3392)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !832, file: !833, line: 91, baseType: !11, size: 64, offset: 3456)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !832, file: !833, line: 92, baseType: !11, size: 64, offset: 3520)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !832, file: !833, line: 94, baseType: !246, size: 64, offset: 3584)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !832, file: !833, line: 96, baseType: !866, size: 64, offset: 3648)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !811, line: 19, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !833, line: 159, size: 1152, elements: !869)
!869 = !{!870, !883, !884, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !942}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !868, file: !833, line: 160, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !833, line: 156, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 147, size: 960, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !881, !882}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !873, file: !833, line: 148, baseType: !508, size: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !873, file: !833, line: 149, baseType: !438, size: 320, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !873, file: !833, line: 150, baseType: !449, size: 128, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !873, file: !833, line: 151, baseType: !46, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !873, file: !833, line: 152, baseType: !46, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !873, file: !833, line: 153, baseType: !253, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !873, file: !833, line: 154, baseType: !11, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !873, file: !833, line: 155, baseType: !11, size: 64, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !868, file: !833, line: 161, baseType: !35, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !868, file: !833, line: 163, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !264, line: 62, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 50, size: 768, elements: !888)
!888 = !{!889, !890, !891, !893, !898, !900, !902, !903, !904}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !887, file: !264, line: 51, baseType: !118, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !887, file: !264, line: 52, baseType: !52, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !887, file: !264, line: 53, baseType: !892, size: 192, offset: 192)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !306)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !887, file: !264, line: 55, baseType: !894, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !264, line: 45, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!166, !16}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !887, file: !264, line: 56, baseType: !899, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !264, line: 46, baseType: !895)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !887, file: !264, line: 57, baseType: !901, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !264, line: 47, baseType: !375)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !887, file: !264, line: 58, baseType: !16, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !887, file: !264, line: 60, baseType: !17, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !887, file: !264, line: 61, baseType: !11, size: 64, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "min_free", scope: !868, file: !833, line: 165, baseType: !253, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !868, file: !833, line: 166, baseType: !253, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !868, file: !833, line: 167, baseType: !52, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !868, file: !833, line: 169, baseType: !159, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !868, file: !833, line: 171, baseType: !159, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !868, file: !833, line: 173, baseType: !11, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !868, file: !833, line: 174, baseType: !11, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !868, file: !833, line: 175, baseType: !166, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !868, file: !833, line: 176, baseType: !166, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !868, file: !833, line: 177, baseType: !166, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !868, file: !833, line: 179, baseType: !11, size: 64, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !868, file: !833, line: 180, baseType: !166, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !868, file: !833, line: 181, baseType: !166, size: 64, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !868, file: !833, line: 183, baseType: !919, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !385, line: 25, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !385, line: 29, size: 704, elements: !922)
!922 = !{!923, !924, !934, !939, !940, !941}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !921, file: !385, line: 30, baseType: !16, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !921, file: !385, line: 31, baseType: !925, size: 384, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !926, line: 22, baseType: !927)
!926 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 16, size: 384, elements: !928)
!928 = !{!929, !930, !931, !932, !933}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !927, file: !926, line: 17, baseType: !17, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !927, file: !926, line: 18, baseType: !52, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !927, file: !926, line: 19, baseType: !118, size: 128, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !927, file: !926, line: 20, baseType: !311, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !927, file: !926, line: 21, baseType: !11, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !921, file: !385, line: 32, baseType: !935, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !385, line: 27, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!150, !919, !16}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !921, file: !385, line: 33, baseType: !16, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !921, file: !385, line: 34, baseType: !16, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !921, file: !385, line: 35, baseType: !11, size: 64, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !868, file: !833, line: 185, baseType: !11, size: 64, offset: 1088)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !832, file: !833, line: 97, baseType: !944, size: 64, offset: 3712)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !833, line: 62, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 39, size: 960, elements: !947)
!947 = !{!948, !949, !950, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !946, file: !833, line: 40, baseType: !438, size: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !946, file: !833, line: 41, baseType: !449, size: 128, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !946, file: !833, line: 43, baseType: !951, size: 64, offset: 448)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 8)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !946, file: !833, line: 46, baseType: !99, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !946, file: !833, line: 47, baseType: !99, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !946, file: !833, line: 48, baseType: !99, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !946, file: !833, line: 49, baseType: !99, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !946, file: !833, line: 50, baseType: !99, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !946, file: !833, line: 51, baseType: !99, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !946, file: !833, line: 52, baseType: !99, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !946, file: !833, line: 53, baseType: !99, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !946, file: !833, line: 56, baseType: !844, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !946, file: !833, line: 57, baseType: !159, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !946, file: !833, line: 58, baseType: !159, size: 64, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !946, file: !833, line: 59, baseType: !52, size: 64, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !946, file: !833, line: 60, baseType: !253, size: 64, offset: 832)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !946, file: !833, line: 61, baseType: !166, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !832, file: !833, line: 103, baseType: !166, size: 64, offset: 3776)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !832, file: !833, line: 104, baseType: !166, size: 64, offset: 3840)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !832, file: !833, line: 105, baseType: !166, size: 64, offset: 3904)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !832, file: !833, line: 106, baseType: !166, size: 64, offset: 3968)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !832, file: !833, line: 108, baseType: !404, size: 768, offset: 4032)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !832, file: !833, line: 110, baseType: !99, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !832, file: !833, line: 111, baseType: !99, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !832, file: !833, line: 113, baseType: !99, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !832, file: !833, line: 114, baseType: !99, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !832, file: !833, line: 115, baseType: !99, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !832, file: !833, line: 116, baseType: !99, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !832, file: !833, line: 117, baseType: !99, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !832, file: !833, line: 118, baseType: !99, size: 1, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !832, file: !833, line: 119, baseType: !99, size: 1, offset: 4808, flags: DIFlagBitField, extraData: i64 4800)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "update_variant", scope: !832, file: !833, line: 120, baseType: !99, size: 1, offset: 4809, flags: DIFlagBitField, extraData: i64 4800)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !832, file: !833, line: 121, baseType: !99, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !832, file: !833, line: 123, baseType: !99, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !832, file: !833, line: 124, baseType: !99, size: 1, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !812, file: !813, line: 394, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !811, line: 17, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !792, line: 321, size: 8192, elements: !990)
!990 = !{!991, !996, !997, !1046, !1125, !1126, !1148, !1157, !1276, !1277, !1278, !1320, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1502, !1506, !1507, !1511, !1512, !1513, !1514, !1515, !1519, !1523, !1527, !1528, !1542, !1543, !1544, !1545, !1546, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !989, file: !792, line: 322, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !792, line: 317, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !809, !987}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !989, file: !792, line: 323, baseType: !992, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !989, file: !792, line: 325, baseType: !998, size: 1024, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !999, line: 22, baseType: !1000)
!999 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "c9faf532d824f6e2b5c6cc29ff3a0dbe")
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !999, line: 36, size: 1024, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1014, !1019, !1021, !1022, !1024, !1029, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1000, file: !999, line: 37, baseType: !396, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1000, file: !999, line: 39, baseType: !131, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1000, file: !999, line: 40, baseType: !144, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1000, file: !999, line: 41, baseType: !117, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !1000, file: !999, line: 43, baseType: !11, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1000, file: !999, line: 44, baseType: !166, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1000, file: !999, line: 46, baseType: !1009, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !999, line: 24, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!150, !1013, !16}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1000, file: !999, line: 47, baseType: !1015, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !999, line: 26, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1013, !16, !11}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1000, file: !999, line: 48, baseType: !1020, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !999, line: 28, baseType: !1016)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1000, file: !999, line: 49, baseType: !16, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !1000, file: !999, line: 52, baseType: !1023, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !999, line: 30, baseType: !1010)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !1000, file: !999, line: 53, baseType: !1025, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !999, line: 32, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1013, !16}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1000, file: !999, line: 56, baseType: !1030, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !1032, line: 78, baseType: !1033)
!1032 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "d5616ec7561796f9244bc380e7991704")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1032, line: 74, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1033, file: !1032, line: 75, baseType: !131, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1033, file: !1032, line: 76, baseType: !144, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1033, file: !1032, line: 77, baseType: !118, size: 128, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1000, file: !999, line: 58, baseType: !174, size: 32, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !1000, file: !999, line: 59, baseType: !174, size: 32, offset: 864)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1000, file: !999, line: 61, baseType: !311, size: 64, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !1000, file: !999, line: 63, baseType: !99, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1000, file: !999, line: 64, baseType: !99, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !1000, file: !999, line: 65, baseType: !99, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !1000, file: !999, line: 66, baseType: !99, size: 1, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !1000, file: !999, line: 69, baseType: !99, size: 2, offset: 964, flags: DIFlagBitField, extraData: i64 960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !989, file: !792, line: 327, baseType: !1047, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !1049, line: 17, baseType: !1050)
!1049 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !1049, line: 25, size: 2240, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1067, !1068, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1124}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !1050, file: !1049, line: 26, baseType: !396, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !1050, file: !1049, line: 27, baseType: !396, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !1050, file: !1049, line: 29, baseType: !240, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1050, file: !1049, line: 30, baseType: !240, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !1050, file: !1049, line: 31, baseType: !1057, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !1050, file: !1049, line: 33, baseType: !240, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1050, file: !1049, line: 35, baseType: !240, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1050, file: !1049, line: 36, baseType: !240, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1050, file: !1049, line: 37, baseType: !240, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !1050, file: !1049, line: 44, baseType: !1063, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !1049, line: 19, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!150, !1047, !246}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !1050, file: !1049, line: 45, baseType: !16, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !1050, file: !1049, line: 47, baseType: !1069, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !1049, line: 21, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!150, !16, !240}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !1050, file: !1049, line: 48, baseType: !16, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1050, file: !1049, line: 57, baseType: !99, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !1050, file: !1049, line: 58, baseType: !99, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !1050, file: !1049, line: 59, baseType: !99, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !1050, file: !1049, line: 60, baseType: !99, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !1050, file: !1049, line: 61, baseType: !99, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !1050, file: !1049, line: 62, baseType: !99, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !1050, file: !1049, line: 63, baseType: !99, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !1050, file: !1049, line: 64, baseType: !99, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !1050, file: !1049, line: 65, baseType: !99, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !1050, file: !1049, line: 66, baseType: !99, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !1050, file: !1049, line: 67, baseType: !99, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1050, file: !1049, line: 68, baseType: !99, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1050, file: !1049, line: 70, baseType: !150, size: 64, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1050, file: !1049, line: 71, baseType: !1088, size: 128, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !243, line: 68, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 65, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1089, file: !243, line: 66, baseType: !150, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1089, file: !243, line: 67, baseType: !52, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1050, file: !1049, line: 72, baseType: !259, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !1050, file: !1049, line: 74, baseType: !32, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !1050, file: !1049, line: 76, baseType: !253, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1050, file: !1049, line: 77, baseType: !253, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !1050, file: !1049, line: 79, baseType: !253, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !1050, file: !1049, line: 80, baseType: !32, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1050, file: !1049, line: 82, baseType: !166, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1050, file: !1049, line: 83, baseType: !166, size: 64, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1050, file: !1049, line: 84, baseType: !32, size: 64, offset: 1600)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1050, file: !1049, line: 86, baseType: !224, size: 64, offset: 1664)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1050, file: !1049, line: 87, baseType: !311, size: 64, offset: 1728)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !1050, file: !1049, line: 89, baseType: !240, size: 64, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !1050, file: !1049, line: 90, baseType: !52, size: 64, offset: 1856)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !1050, file: !1049, line: 91, baseType: !246, size: 64, offset: 1920)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1050, file: !1049, line: 93, baseType: !52, size: 64, offset: 1984)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !1050, file: !1049, line: 94, baseType: !159, size: 64, offset: 2048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1050, file: !1049, line: 96, baseType: !1110, size: 64, offset: 2112)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !264, line: 84, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 71, size: 1984, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1112, file: !264, line: 72, baseType: !262, size: 1600)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1112, file: !264, line: 73, baseType: !253, size: 64, offset: 1600)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1112, file: !264, line: 74, baseType: !885, size: 64, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1112, file: !264, line: 75, baseType: !224, size: 64, offset: 1728)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !1112, file: !264, line: 76, baseType: !188, size: 64, offset: 1792)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1112, file: !264, line: 78, baseType: !11, size: 64, offset: 1856)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1112, file: !264, line: 80, baseType: !99, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !1112, file: !264, line: 81, baseType: !99, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !1112, file: !264, line: 82, baseType: !99, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !1112, file: !264, line: 83, baseType: !99, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1050, file: !1049, line: 98, baseType: !174, size: 32, offset: 2176)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !989, file: !792, line: 329, baseType: !240, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !989, file: !792, line: 331, baseType: !1127, size: 832, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !243, line: 71, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !243, line: 78, size: 832, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1147}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1128, file: !243, line: 79, baseType: !246, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1128, file: !243, line: 80, baseType: !240, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1128, file: !243, line: 81, baseType: !240, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1128, file: !243, line: 82, baseType: !240, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1128, file: !243, line: 84, baseType: !99, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1128, file: !243, line: 85, baseType: !99, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !1128, file: !243, line: 86, baseType: !99, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !1128, file: !243, line: 87, baseType: !99, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !1128, file: !243, line: 88, baseType: !99, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1128, file: !243, line: 89, baseType: !99, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1128, file: !243, line: 101, baseType: !253, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1128, file: !243, line: 103, baseType: !224, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1128, file: !243, line: 104, baseType: !150, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1128, file: !243, line: 105, baseType: !1088, size: 128, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1128, file: !243, line: 106, baseType: !259, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !1128, file: !243, line: 108, baseType: !1146, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !243, line: 73, baseType: !1070)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !1128, file: !243, line: 109, baseType: !16, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !989, file: !792, line: 332, baseType: !1149, size: 320, offset: 2112)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !243, line: 119, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 113, size: 320, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1150, file: !243, line: 114, baseType: !240, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1150, file: !243, line: 115, baseType: !1057, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1150, file: !243, line: 116, baseType: !396, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1150, file: !243, line: 117, baseType: !224, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1150, file: !243, line: 118, baseType: !253, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !989, file: !792, line: 334, baseType: !1158, size: 64, offset: 2432)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !792, line: 247, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 149, size: 4096, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1211, !1212, !1213, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !1160, file: !792, line: 150, baseType: !790, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !1160, file: !792, line: 152, baseType: !166, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1160, file: !792, line: 153, baseType: !166, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1160, file: !792, line: 154, baseType: !166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !1160, file: !792, line: 155, baseType: !166, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1160, file: !792, line: 157, baseType: !52, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1160, file: !792, line: 158, baseType: !52, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1160, file: !792, line: 159, baseType: !52, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !1160, file: !792, line: 161, baseType: !52, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !1160, file: !792, line: 162, baseType: !52, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !1160, file: !792, line: 163, baseType: !52, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !1160, file: !792, line: 165, baseType: !52, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !1160, file: !792, line: 166, baseType: !52, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !1160, file: !792, line: 167, baseType: !52, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1160, file: !792, line: 169, baseType: !1088, size: 128, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !1160, file: !792, line: 171, baseType: !11, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !1160, file: !792, line: 172, baseType: !11, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !1160, file: !792, line: 173, baseType: !11, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !1160, file: !792, line: 174, baseType: !11, size: 64, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !1160, file: !792, line: 175, baseType: !1182, size: 64, offset: 1280)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !12, line: 80, baseType: !151)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !1160, file: !792, line: 176, baseType: !1182, size: 64, offset: 1344)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !1160, file: !792, line: 177, baseType: !1182, size: 64, offset: 1408)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !1160, file: !792, line: 178, baseType: !1182, size: 64, offset: 1472)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !1160, file: !792, line: 180, baseType: !1182, size: 64, offset: 1536)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !1160, file: !792, line: 181, baseType: !1182, size: 64, offset: 1600)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !1160, file: !792, line: 182, baseType: !1182, size: 64, offset: 1664)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !1160, file: !792, line: 183, baseType: !1182, size: 64, offset: 1728)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !1160, file: !792, line: 185, baseType: !885, size: 64, offset: 1792)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !1160, file: !792, line: 187, baseType: !1192, size: 128, offset: 1856)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1193, line: 26, baseType: !1194)
!1193 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "e6331f5643d16a5ec3f7326c3479fef3")
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 23, size: 128, elements: !1195)
!1195 = !{!1196, !1210}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1194, file: !1193, line: 24, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1193, line: 20, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 16, size: 128, elements: !1201)
!1201 = !{!1202, !1203, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1200, file: !1193, line: 17, baseType: !16, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1200, file: !1193, line: 18, baseType: !1204, size: 16, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !19, line: 34, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !21, line: 32, baseType: !138)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1200, file: !1193, line: 19, baseType: !1207, size: 8, offset: 80)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 1)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1194, file: !1193, line: 25, baseType: !11, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !1160, file: !792, line: 188, baseType: !214, size: 64, offset: 1984)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !1160, file: !792, line: 189, baseType: !214, size: 64, offset: 2048)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1160, file: !792, line: 191, baseType: !1214, size: 64, offset: 2112)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !792, line: 146, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 140, size: 192, elements: !1217)
!1217 = !{!1218, !1219, !1234}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1216, file: !792, line: 141, baseType: !1030, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1216, file: !792, line: 142, baseType: !1220, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1222, line: 75, baseType: !1223)
!1222 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "c6267aff67e650adcd8c4290fd2f4626")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 66, size: 384, elements: !1224)
!1224 = !{!1225, !1226, !1228, !1229, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1223, file: !1222, line: 67, baseType: !118, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1223, file: !1222, line: 68, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1223, file: !1222, line: 69, baseType: !16, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1223, file: !1222, line: 70, baseType: !16, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1223, file: !1222, line: 74, baseType: !1231, size: 64, offset: 320)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1222, line: 72, size: 64, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1222, line: 73, baseType: !52, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1216, file: !792, line: 144, baseType: !11, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !1160, file: !792, line: 192, baseType: !1182, size: 64, offset: 2176)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !1160, file: !792, line: 195, baseType: !919, size: 64, offset: 2240)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !1160, file: !792, line: 196, baseType: !1220, size: 64, offset: 2304)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !1160, file: !792, line: 198, baseType: !11, size: 64, offset: 2368)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !1160, file: !792, line: 199, baseType: !11, size: 64, offset: 2432)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !1160, file: !792, line: 200, baseType: !11, size: 64, offset: 2496)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !1160, file: !792, line: 202, baseType: !253, size: 64, offset: 2560)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !1160, file: !792, line: 204, baseType: !1182, size: 64, offset: 2624)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !1160, file: !792, line: 205, baseType: !166, size: 64, offset: 2688)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !1160, file: !792, line: 206, baseType: !166, size: 64, offset: 2752)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !1160, file: !792, line: 208, baseType: !1182, size: 64, offset: 2816)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !1160, file: !792, line: 209, baseType: !1182, size: 64, offset: 2880)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !1160, file: !792, line: 210, baseType: !1182, size: 64, offset: 2944)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !1160, file: !792, line: 212, baseType: !214, size: 64, offset: 3008)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !1160, file: !792, line: 213, baseType: !214, size: 64, offset: 3072)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !1160, file: !792, line: 214, baseType: !214, size: 64, offset: 3136)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1160, file: !792, line: 215, baseType: !214, size: 64, offset: 3200)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !1160, file: !792, line: 218, baseType: !214, size: 64, offset: 3264)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !1160, file: !792, line: 219, baseType: !214, size: 64, offset: 3328)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1160, file: !792, line: 222, baseType: !174, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1160, file: !792, line: 224, baseType: !174, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !1160, file: !792, line: 225, baseType: !99, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !1160, file: !792, line: 226, baseType: !99, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !1160, file: !792, line: 227, baseType: !99, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !1160, file: !792, line: 228, baseType: !99, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1160, file: !792, line: 231, baseType: !1261, size: 64, offset: 3456)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !181, line: 28, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !566, line: 81, size: 192, elements: !1264)
!1264 = !{!1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1263, file: !566, line: 82, baseType: !574, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1263, file: !566, line: 83, baseType: !311, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1263, file: !566, line: 84, baseType: !52, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !1160, file: !792, line: 232, baseType: !1182, size: 64, offset: 3520)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !1160, file: !792, line: 234, baseType: !1220, size: 64, offset: 3584)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !1160, file: !792, line: 235, baseType: !1182, size: 64, offset: 3648)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !1160, file: !792, line: 236, baseType: !1182, size: 64, offset: 3712)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_certificate", scope: !1160, file: !792, line: 238, baseType: !1220, size: 64, offset: 3776)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_certificate_key", scope: !1160, file: !792, line: 239, baseType: !1220, size: 64, offset: 3840)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_passwords", scope: !1160, file: !792, line: 240, baseType: !214, size: 64, offset: 3904)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1160, file: !792, line: 243, baseType: !118, size: 128, offset: 3968)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !989, file: !792, line: 335, baseType: !790, size: 64, offset: 2496)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !989, file: !792, line: 337, baseType: !214, size: 64, offset: 2560)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !989, file: !792, line: 340, baseType: !1279, size: 2496, offset: 2624)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !792, line: 298, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 260, size: 2496, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1280, file: !792, line: 261, baseType: !652, size: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1280, file: !792, line: 262, baseType: !652, size: 448, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1280, file: !792, line: 264, baseType: !11, size: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1280, file: !792, line: 265, baseType: !118, size: 128, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1280, file: !792, line: 267, baseType: !1287, size: 64, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1193, line: 92, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_table_elt_s", file: !1193, line: 94, size: 448, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1289, file: !1193, line: 95, baseType: !11, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1289, file: !1193, line: 96, baseType: !118, size: 128, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1289, file: !1193, line: 97, baseType: !118, size: 128, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1289, file: !1193, line: 98, baseType: !17, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1289, file: !1193, line: 99, baseType: !1287, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1280, file: !792, line: 268, baseType: !1287, size: 64, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1280, file: !792, line: 269, baseType: !1287, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1280, file: !792, line: 270, baseType: !1287, size: 64, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1280, file: !792, line: 272, baseType: !1287, size: 64, offset: 1344)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1280, file: !792, line: 273, baseType: !1287, size: 64, offset: 1408)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1280, file: !792, line: 274, baseType: !1287, size: 64, offset: 1472)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1280, file: !792, line: 275, baseType: !1287, size: 64, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1280, file: !792, line: 276, baseType: !1287, size: 64, offset: 1600)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1280, file: !792, line: 278, baseType: !1287, size: 64, offset: 1664)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1280, file: !792, line: 279, baseType: !1287, size: 64, offset: 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1280, file: !792, line: 281, baseType: !1287, size: 64, offset: 1792)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1280, file: !792, line: 282, baseType: !1287, size: 64, offset: 1856)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1280, file: !792, line: 283, baseType: !1287, size: 64, offset: 1920)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1280, file: !792, line: 284, baseType: !1287, size: 64, offset: 1984)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1280, file: !792, line: 285, baseType: !1287, size: 64, offset: 2048)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1280, file: !792, line: 286, baseType: !1287, size: 64, offset: 2112)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1280, file: !792, line: 288, baseType: !1287, size: 64, offset: 2176)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "set_cookie", scope: !1280, file: !792, line: 289, baseType: !1287, size: 64, offset: 2240)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1280, file: !792, line: 291, baseType: !253, size: 64, offset: 2304)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1280, file: !792, line: 292, baseType: !159, size: 64, offset: 2368)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1280, file: !792, line: 294, baseType: !99, size: 1, offset: 2432, flags: DIFlagBitField, extraData: i64 2432)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1280, file: !792, line: 295, baseType: !99, size: 1, offset: 2433, flags: DIFlagBitField, extraData: i64 2432)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1280, file: !792, line: 296, baseType: !99, size: 1, offset: 2434, flags: DIFlagBitField, extraData: i64 2432)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expired", scope: !1280, file: !792, line: 297, baseType: !99, size: 1, offset: 2435, flags: DIFlagBitField, extraData: i64 2432)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !989, file: !792, line: 342, baseType: !1321, size: 64, offset: 5120)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !792, line: 314, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 301, size: 704, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1340, !1341, !1342, !1343}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1323, file: !792, line: 302, baseType: !118, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1323, file: !792, line: 303, baseType: !555, size: 16, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1323, file: !792, line: 304, baseType: !11, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1323, file: !792, line: 306, baseType: !11, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1323, file: !792, line: 307, baseType: !1330, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1332, line: 67, baseType: !1333)
!1332 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "515bb0b09fb63c8cc635703c8e1a7e3c")
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1332, line: 61, size: 320, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1333, file: !1332, line: 62, baseType: !131, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1333, file: !1332, line: 63, baseType: !144, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1333, file: !1332, line: 64, baseType: !118, size: 128, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1333, file: !1332, line: 65, baseType: !1204, size: 16, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1333, file: !1332, line: 66, baseType: !1204, size: 16, offset: 272)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1323, file: !792, line: 309, baseType: !131, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1323, file: !792, line: 310, baseType: !144, size: 32, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !792, line: 311, baseType: !118, size: 128, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1323, file: !792, line: 313, baseType: !1344, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1332, line: 56, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1332, line: 197, size: 1792, elements: !1347)
!1347 = !{!1348, !1349, !1383, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1465, !1466, !1467, !1480, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1346, file: !1332, line: 198, baseType: !1344, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1346, file: !1332, line: 199, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1332, line: 40, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1332, line: 148, size: 4096, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1352, file: !1332, line: 150, baseType: !403, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1352, file: !1332, line: 151, baseType: !16, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1352, file: !1332, line: 152, baseType: !311, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1352, file: !1332, line: 155, baseType: !150, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1352, file: !1332, line: 158, baseType: !215, size: 320, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1352, file: !1332, line: 159, baseType: !11, size: 64, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1352, file: !1332, line: 161, baseType: !508, size: 192, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1352, file: !1332, line: 162, baseType: !438, size: 320, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1352, file: !1332, line: 164, baseType: !508, size: 192, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1352, file: !1332, line: 165, baseType: !438, size: 320, offset: 1344)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1352, file: !1332, line: 167, baseType: !508, size: 192, offset: 1664)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1352, file: !1332, line: 168, baseType: !438, size: 320, offset: 1856)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1352, file: !1332, line: 170, baseType: !449, size: 128, offset: 2176)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1352, file: !1332, line: 171, baseType: !449, size: 128, offset: 2304)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1352, file: !1332, line: 172, baseType: !449, size: 128, offset: 2432)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1352, file: !1332, line: 174, baseType: !449, size: 128, offset: 2560)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1352, file: !1332, line: 175, baseType: !449, size: 128, offset: 2688)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1352, file: !1332, line: 176, baseType: !449, size: 128, offset: 2816)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !1352, file: !1332, line: 178, baseType: !99, size: 1, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1352, file: !1332, line: 181, baseType: !99, size: 1, offset: 2945, flags: DIFlagBitField, extraData: i64 2944)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1352, file: !1332, line: 182, baseType: !508, size: 192, offset: 3008)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1352, file: !1332, line: 183, baseType: !438, size: 320, offset: 3200)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1352, file: !1332, line: 184, baseType: !449, size: 128, offset: 3520)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1352, file: !1332, line: 185, baseType: !449, size: 128, offset: 3648)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1352, file: !1332, line: 188, baseType: !159, size: 64, offset: 3776)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1352, file: !1332, line: 189, baseType: !159, size: 64, offset: 3840)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1352, file: !1332, line: 190, baseType: !159, size: 64, offset: 3904)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1352, file: !1332, line: 191, baseType: !159, size: 64, offset: 3968)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1352, file: !1332, line: 193, baseType: !11, size: 64, offset: 4032)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1346, file: !1332, line: 200, baseType: !1384, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1332, line: 145, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1332, line: 92, size: 1472, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1407, !1408, !1409, !1410, !1411, !1428, !1429, !1430, !1431, !1432, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1386, file: !1332, line: 93, baseType: !438, size: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1386, file: !1332, line: 94, baseType: !449, size: 128, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1332, line: 97, baseType: !17, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1386, file: !1332, line: 101, baseType: !1392, size: 128, offset: 512)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !556, line: 219, size: 128, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1392, file: !556, line: 226, baseType: !1395, size: 128)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !556, line: 221, size: 128, elements: !1396)
!1396 = !{!1397, !1401, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1395, file: !556, line: 223, baseType: !1398, size: 128)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 128, elements: !840)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !558, line: 24, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 38, baseType: !22)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1395, file: !556, line: 224, baseType: !1402, size: 128)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 128, elements: !952)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1395, file: !556, line: 225, baseType: !1404, size: 128)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 128, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 4)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1386, file: !1332, line: 104, baseType: !1204, size: 16, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1386, file: !1332, line: 105, baseType: !1204, size: 16, offset: 656)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1386, file: !1332, line: 107, baseType: !17, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1386, file: !1332, line: 109, baseType: !17, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1386, file: !1332, line: 117, baseType: !1412, size: 64, offset: 832)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !1332, line: 112, size: 64, elements: !1413)
!1413 = !{!1414, !1416, !1418, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1412, file: !1332, line: 113, baseType: !1415, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !556, line: 30, baseType: !816)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1412, file: !1332, line: 114, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1412, file: !1332, line: 115, baseType: !17, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1412, file: !1332, line: 116, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1332, line: 75, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1332, line: 70, size: 192, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1422, file: !1332, line: 71, baseType: !118, size: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1422, file: !1332, line: 72, baseType: !1204, size: 16, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1422, file: !1332, line: 73, baseType: !1204, size: 16, offset: 144)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1422, file: !1332, line: 74, baseType: !1204, size: 16, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1386, file: !1332, line: 119, baseType: !18, size: 8, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1386, file: !1332, line: 120, baseType: !1204, size: 16, offset: 912)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1386, file: !1332, line: 121, baseType: !1204, size: 16, offset: 928)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1386, file: !1332, line: 122, baseType: !1204, size: 16, offset: 944)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1386, file: !1332, line: 128, baseType: !1433, size: 128, offset: 960)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !1332, line: 125, size: 128, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1433, file: !1332, line: 126, baseType: !1392, size: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1433, file: !1332, line: 127, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1386, file: !1332, line: 130, baseType: !1204, size: 16, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1386, file: !1332, line: 133, baseType: !159, size: 64, offset: 1152)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1386, file: !1332, line: 134, baseType: !159, size: 64, offset: 1216)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1386, file: !1332, line: 135, baseType: !816, size: 32, offset: 1280)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1386, file: !1332, line: 137, baseType: !99, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1386, file: !1332, line: 139, baseType: !99, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1386, file: !1332, line: 142, baseType: !11, size: 64, offset: 1344)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1386, file: !1332, line: 144, baseType: !1344, size: 64, offset: 1408)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1346, file: !1332, line: 203, baseType: !150, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1346, file: !1332, line: 205, baseType: !150, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1346, file: !1332, line: 206, baseType: !118, size: 128, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1346, file: !1332, line: 207, baseType: !118, size: 128, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1346, file: !1332, line: 209, baseType: !159, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1346, file: !1332, line: 210, baseType: !11, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1346, file: !1332, line: 211, baseType: !1330, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1346, file: !1332, line: 212, baseType: !1331, size: 320, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1346, file: !1332, line: 213, baseType: !1455, size: 128, offset: 1088)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !556, line: 245, size: 128, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1463}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1455, file: !556, line: 247, baseType: !136, size: 16)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1455, file: !556, line: 248, baseType: !555, size: 16, offset: 16)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1455, file: !556, line: 249, baseType: !1460, size: 32, offset: 32)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !556, line: 31, size: 32, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1460, file: !556, line: 33, baseType: !1415, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1455, file: !556, line: 252, baseType: !1464, size: 64, offset: 64)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !952)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1346, file: !1332, line: 215, baseType: !11, size: 64, offset: 1216)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1346, file: !1332, line: 216, baseType: !11, size: 64, offset: 1280)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1346, file: !1332, line: 217, baseType: !1468, size: 64, offset: 1344)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1332, line: 89, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1332, line: 78, size: 448, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1470, file: !1332, line: 79, baseType: !118, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1470, file: !1332, line: 80, baseType: !1204, size: 16, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1470, file: !1332, line: 81, baseType: !1204, size: 16, offset: 144)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1470, file: !1332, line: 82, baseType: !1204, size: 16, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1470, file: !1332, line: 84, baseType: !1344, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1470, file: !1332, line: 85, baseType: !150, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1470, file: !1332, line: 87, baseType: !11, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1470, file: !1332, line: 88, baseType: !1030, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1346, file: !1332, line: 219, baseType: !1481, size: 64, offset: 1408)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1332, line: 58, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1344}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1346, file: !1332, line: 220, baseType: !16, size: 64, offset: 1472)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1346, file: !1332, line: 221, baseType: !166, size: 64, offset: 1536)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1346, file: !1332, line: 223, baseType: !99, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1346, file: !1332, line: 224, baseType: !99, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1346, file: !1332, line: 225, baseType: !99, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1346, file: !1332, line: 226, baseType: !11, size: 64, offset: 1664)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1346, file: !1332, line: 227, baseType: !403, size: 64, offset: 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !989, file: !792, line: 344, baseType: !247, size: 640, offset: 5184)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !989, file: !792, line: 346, baseType: !247, size: 640, offset: 5824)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !989, file: !792, line: 347, baseType: !253, size: 64, offset: 6464)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !989, file: !792, line: 349, baseType: !240, size: 64, offset: 6528)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !989, file: !792, line: 350, baseType: !240, size: 64, offset: 6592)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !989, file: !792, line: 351, baseType: !240, size: 64, offset: 6656)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !989, file: !792, line: 353, baseType: !1499, size: 64, offset: 6720)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!150, !16}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !989, file: !792, line: 354, baseType: !1503, size: 64, offset: 6784)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!150, !16, !32}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !989, file: !792, line: 355, baseType: !16, size: 64, offset: 6848)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !989, file: !792, line: 358, baseType: !1508, size: 64, offset: 6912)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!150, !809}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !989, file: !792, line: 360, baseType: !1508, size: 64, offset: 6976)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !989, file: !792, line: 361, baseType: !1508, size: 64, offset: 7040)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !989, file: !792, line: 362, baseType: !1508, size: 64, offset: 7104)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !989, file: !792, line: 363, baseType: !825, size: 64, offset: 7168)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !989, file: !792, line: 364, baseType: !1516, size: 64, offset: 7232)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !809, !150}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !989, file: !792, line: 366, baseType: !1520, size: 64, offset: 7296)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!150, !809, !1287, !52}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !989, file: !792, line: 368, baseType: !1524, size: 64, offset: 7360)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!150, !809, !1287}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !989, file: !792, line: 371, baseType: !166, size: 64, offset: 7424)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !989, file: !792, line: 373, baseType: !1529, size: 64, offset: 7488)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !792, line: 70, baseType: !1531)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 59, size: 576, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1531, file: !792, line: 60, baseType: !11, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1531, file: !792, line: 61, baseType: !166, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1531, file: !792, line: 62, baseType: !166, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1531, file: !792, line: 63, baseType: !166, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1531, file: !792, line: 64, baseType: !166, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1531, file: !792, line: 65, baseType: !253, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1531, file: !792, line: 66, baseType: !253, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1531, file: !792, line: 67, baseType: !253, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1531, file: !792, line: 69, baseType: !117, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !989, file: !792, line: 375, baseType: !118, size: 128, offset: 7552)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !989, file: !792, line: 376, baseType: !118, size: 128, offset: 7680)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !989, file: !792, line: 377, baseType: !118, size: 128, offset: 7808)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !989, file: !792, line: 380, baseType: !118, size: 128, offset: 7936)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !989, file: !792, line: 383, baseType: !1547, size: 64, offset: 8064)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !813, line: 336, baseType: !375)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !989, file: !792, line: 385, baseType: !99, size: 1, offset: 8128, flags: DIFlagBitField, extraData: i64 8128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !989, file: !792, line: 386, baseType: !99, size: 1, offset: 8129, flags: DIFlagBitField, extraData: i64 8128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !989, file: !792, line: 387, baseType: !99, size: 1, offset: 8130, flags: DIFlagBitField, extraData: i64 8128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !989, file: !792, line: 388, baseType: !99, size: 1, offset: 8131, flags: DIFlagBitField, extraData: i64 8128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !989, file: !792, line: 390, baseType: !99, size: 3, offset: 8132, flags: DIFlagBitField, extraData: i64 8128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !989, file: !792, line: 393, baseType: !99, size: 1, offset: 8135, flags: DIFlagBitField, extraData: i64 8128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !989, file: !792, line: 394, baseType: !99, size: 1, offset: 8136, flags: DIFlagBitField, extraData: i64 8128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !989, file: !792, line: 395, baseType: !99, size: 1, offset: 8137, flags: DIFlagBitField, extraData: i64 8128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !989, file: !792, line: 396, baseType: !99, size: 1, offset: 8138, flags: DIFlagBitField, extraData: i64 8128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !989, file: !792, line: 398, baseType: !99, size: 1, offset: 8139, flags: DIFlagBitField, extraData: i64 8128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !989, file: !792, line: 399, baseType: !99, size: 1, offset: 8140, flags: DIFlagBitField, extraData: i64 8128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !989, file: !792, line: 400, baseType: !99, size: 1, offset: 8141, flags: DIFlagBitField, extraData: i64 8128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !989, file: !792, line: 401, baseType: !99, size: 1, offset: 8142, flags: DIFlagBitField, extraData: i64 8128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !812, file: !813, line: 395, baseType: !214, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !812, file: !813, line: 398, baseType: !224, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !812, file: !813, line: 399, baseType: !246, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !812, file: !813, line: 401, baseType: !1566, size: 2496, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !813, line: 254, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 182, size: 2496, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1567, file: !813, line: 183, baseType: !652, size: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1567, file: !813, line: 185, baseType: !1287, size: 64, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1567, file: !813, line: 186, baseType: !1287, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1567, file: !813, line: 187, baseType: !1287, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1567, file: !813, line: 188, baseType: !1287, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1567, file: !813, line: 189, baseType: !1287, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1567, file: !813, line: 190, baseType: !1287, size: 64, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1567, file: !813, line: 191, baseType: !1287, size: 64, offset: 832)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1567, file: !813, line: 192, baseType: !1287, size: 64, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1567, file: !813, line: 193, baseType: !1287, size: 64, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1567, file: !813, line: 194, baseType: !1287, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1567, file: !813, line: 195, baseType: !1287, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1567, file: !813, line: 197, baseType: !1287, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1567, file: !813, line: 198, baseType: !1287, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1567, file: !813, line: 200, baseType: !1287, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1567, file: !813, line: 201, baseType: !1287, size: 64, offset: 1344)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1567, file: !813, line: 202, baseType: !1287, size: 64, offset: 1408)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1567, file: !813, line: 203, baseType: !1287, size: 64, offset: 1472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1567, file: !813, line: 206, baseType: !1287, size: 64, offset: 1536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1567, file: !813, line: 207, baseType: !1287, size: 64, offset: 1600)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1567, file: !813, line: 210, baseType: !1287, size: 64, offset: 1664)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1567, file: !813, line: 212, baseType: !1287, size: 64, offset: 1728)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1567, file: !813, line: 215, baseType: !1287, size: 64, offset: 1792)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1567, file: !813, line: 234, baseType: !1287, size: 64, offset: 1856)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1567, file: !813, line: 236, baseType: !118, size: 128, offset: 1920)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1567, file: !813, line: 237, baseType: !118, size: 128, offset: 2048)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1567, file: !813, line: 239, baseType: !118, size: 128, offset: 2176)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1567, file: !813, line: 240, baseType: !253, size: 64, offset: 2304)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1567, file: !813, line: 241, baseType: !159, size: 64, offset: 2368)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1567, file: !813, line: 243, baseType: !99, size: 2, offset: 2432, flags: DIFlagBitField, extraData: i64 2432)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1567, file: !813, line: 244, baseType: !99, size: 1, offset: 2434, flags: DIFlagBitField, extraData: i64 2432)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !1567, file: !813, line: 245, baseType: !99, size: 1, offset: 2435, flags: DIFlagBitField, extraData: i64 2432)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "multi_linked", scope: !1567, file: !813, line: 246, baseType: !99, size: 1, offset: 2436, flags: DIFlagBitField, extraData: i64 2432)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1567, file: !813, line: 247, baseType: !99, size: 1, offset: 2437, flags: DIFlagBitField, extraData: i64 2432)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1567, file: !813, line: 248, baseType: !99, size: 1, offset: 2438, flags: DIFlagBitField, extraData: i64 2432)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1567, file: !813, line: 249, baseType: !99, size: 1, offset: 2439, flags: DIFlagBitField, extraData: i64 2432)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1567, file: !813, line: 250, baseType: !99, size: 1, offset: 2440, flags: DIFlagBitField, extraData: i64 2432)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1567, file: !813, line: 251, baseType: !99, size: 1, offset: 2441, flags: DIFlagBitField, extraData: i64 2432)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1567, file: !813, line: 252, baseType: !99, size: 1, offset: 2442, flags: DIFlagBitField, extraData: i64 2432)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1567, file: !813, line: 253, baseType: !99, size: 1, offset: 2443, flags: DIFlagBitField, extraData: i64 2432)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !812, file: !813, line: 402, baseType: !1610, size: 2752, offset: 3328)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !813, line: 292, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 257, size: 2752, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1611, file: !813, line: 258, baseType: !652, size: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1611, file: !813, line: 259, baseType: !652, size: 448, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1611, file: !813, line: 261, baseType: !11, size: 64, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1611, file: !813, line: 262, baseType: !118, size: 128, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1611, file: !813, line: 264, baseType: !1287, size: 64, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1611, file: !813, line: 265, baseType: !1287, size: 64, offset: 1152)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1611, file: !813, line: 266, baseType: !1287, size: 64, offset: 1216)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1611, file: !813, line: 267, baseType: !1287, size: 64, offset: 1280)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1611, file: !813, line: 268, baseType: !1287, size: 64, offset: 1344)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1611, file: !813, line: 269, baseType: !1287, size: 64, offset: 1408)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1611, file: !813, line: 270, baseType: !1287, size: 64, offset: 1472)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1611, file: !813, line: 271, baseType: !1287, size: 64, offset: 1536)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1611, file: !813, line: 272, baseType: !1287, size: 64, offset: 1600)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1611, file: !813, line: 273, baseType: !1287, size: 64, offset: 1664)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1611, file: !813, line: 274, baseType: !1287, size: 64, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1611, file: !813, line: 275, baseType: !1287, size: 64, offset: 1792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1611, file: !813, line: 277, baseType: !1287, size: 64, offset: 1856)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1611, file: !813, line: 278, baseType: !1287, size: 64, offset: 1920)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1611, file: !813, line: 280, baseType: !117, size: 64, offset: 1984)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1611, file: !813, line: 282, baseType: !52, size: 64, offset: 2048)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1611, file: !813, line: 283, baseType: !118, size: 128, offset: 2112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1611, file: !813, line: 284, baseType: !118, size: 128, offset: 2240)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1611, file: !813, line: 285, baseType: !17, size: 64, offset: 2368)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1611, file: !813, line: 286, baseType: !11, size: 64, offset: 2432)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1611, file: !813, line: 288, baseType: !253, size: 64, offset: 2496)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1611, file: !813, line: 289, baseType: !253, size: 64, offset: 2560)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1611, file: !813, line: 290, baseType: !159, size: 64, offset: 2624)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1611, file: !813, line: 291, baseType: !159, size: 64, offset: 2688)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !812, file: !813, line: 404, baseType: !1642, size: 64, offset: 6080)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !813, line: 310, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 297, size: 640, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1661, !1663, !1664, !1665}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1644, file: !813, line: 298, baseType: !1110, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1644, file: !813, line: 299, baseType: !240, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1644, file: !813, line: 300, baseType: !246, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1644, file: !813, line: 301, baseType: !253, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1644, file: !813, line: 302, baseType: !253, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1644, file: !813, line: 303, baseType: !240, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1644, file: !813, line: 304, baseType: !240, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1644, file: !813, line: 305, baseType: !1654, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !811, line: 21, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !811, line: 59, size: 192, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1656, file: !811, line: 60, baseType: !11, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1656, file: !811, line: 61, baseType: !253, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1656, file: !811, line: 62, baseType: !253, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1644, file: !813, line: 306, baseType: !1662, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !813, line: 295, baseType: !825)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_buffering", scope: !1644, file: !813, line: 307, baseType: !99, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "last_sent", scope: !1644, file: !813, line: 308, baseType: !99, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_saved", scope: !1644, file: !813, line: 309, baseType: !99, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !812, file: !813, line: 406, baseType: !159, size: 64, offset: 6144)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !812, file: !813, line: 407, baseType: !159, size: 64, offset: 6208)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !812, file: !813, line: 408, baseType: !166, size: 64, offset: 6272)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !812, file: !813, line: 410, baseType: !11, size: 64, offset: 6336)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !812, file: !813, line: 411, baseType: !11, size: 64, offset: 6400)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !812, file: !813, line: 413, baseType: !118, size: 128, offset: 6464)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !812, file: !813, line: 414, baseType: !118, size: 128, offset: 6592)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !812, file: !813, line: 415, baseType: !118, size: 128, offset: 6720)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !812, file: !813, line: 416, baseType: !118, size: 128, offset: 6848)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !812, file: !813, line: 417, baseType: !118, size: 128, offset: 6976)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !812, file: !813, line: 419, baseType: !118, size: 128, offset: 7104)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !812, file: !813, line: 420, baseType: !118, size: 128, offset: 7232)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !812, file: !813, line: 421, baseType: !118, size: 128, offset: 7360)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !812, file: !813, line: 423, baseType: !240, size: 64, offset: 7488)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !812, file: !813, line: 424, baseType: !809, size: 64, offset: 7552)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !812, file: !813, line: 425, baseType: !809, size: 64, offset: 7616)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !812, file: !813, line: 426, baseType: !1683, size: 64, offset: 7680)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !813, line: 356, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !813, line: 358, size: 192, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1685, file: !813, line: 359, baseType: !809, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1685, file: !813, line: 360, baseType: !240, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1685, file: !813, line: 361, baseType: !1683, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !812, file: !813, line: 427, baseType: !1691, size: 64, offset: 7744)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !813, line: 353, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 350, size: 128, elements: !1694)
!1694 = !{!1695, !1700}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1693, file: !813, line: 351, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !813, line: 347, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!150, !809, !16, !150}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1693, file: !813, line: 352, baseType: !16, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !812, file: !813, line: 428, baseType: !1702, size: 64, offset: 7808)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !813, line: 365, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !813, line: 367, size: 128, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1704, file: !813, line: 368, baseType: !809, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1704, file: !813, line: 369, baseType: !1702, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !812, file: !813, line: 430, baseType: !150, size: 64, offset: 7872)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !812, file: !813, line: 431, baseType: !1710, size: 64, offset: 7936)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !813, line: 373, baseType: !1508)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !812, file: !813, line: 432, baseType: !11, size: 64, offset: 8000)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !812, file: !813, line: 434, baseType: !1713, size: 64, offset: 8064)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1715, line: 17, baseType: !1716)
!1715 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "282b3527419dfe56984107919878b418")
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !119, line: 37, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 28, size: 128, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1717, file: !119, line: 29, baseType: !99, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1717, file: !119, line: 31, baseType: !99, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1717, file: !119, line: 32, baseType: !99, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1717, file: !119, line: 33, baseType: !99, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1717, file: !119, line: 34, baseType: !99, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1717, file: !119, line: 36, baseType: !17, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !812, file: !813, line: 437, baseType: !11, size: 64, offset: 8128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !812, file: !813, line: 438, baseType: !1727, size: 64, offset: 8192)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "captures_data", scope: !812, file: !813, line: 439, baseType: !17, size: 64, offset: 8256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !812, file: !813, line: 442, baseType: !52, size: 64, offset: 8320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !812, file: !813, line: 443, baseType: !52, size: 64, offset: 8384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !812, file: !813, line: 446, baseType: !52, size: 64, offset: 8448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !812, file: !813, line: 448, baseType: !253, size: 64, offset: 8512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !812, file: !813, line: 450, baseType: !11, size: 64, offset: 8576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !812, file: !813, line: 452, baseType: !1735, size: 64, offset: 8640)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !813, line: 333, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 315, size: 512, elements: !1738)
!1738 = !{!1739, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1737, file: !813, line: 316, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !813, line: 313, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !1743, line: 232, size: 192, elements: !1744)
!1743 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "986bd9deaafaed2b6d3cae2ecc572d0b")
!1744 = !{!1745, !1904, !1931, !1932, !1933}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1742, file: !1743, line: 234, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !1743, line: 209, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 179, size: 1344, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1748, file: !1743, line: 181, baseType: !215, size: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1748, file: !1743, line: 184, baseType: !23, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1748, file: !1743, line: 186, baseType: !17, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1748, file: !1743, line: 187, baseType: !11, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1748, file: !1743, line: 189, baseType: !118, size: 128, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1748, file: !1743, line: 191, baseType: !52, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1748, file: !1743, line: 192, baseType: !52, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1748, file: !1743, line: 193, baseType: !52, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1748, file: !1743, line: 195, baseType: !1088, size: 128, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1748, file: !1743, line: 197, baseType: !166, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1748, file: !1743, line: 199, baseType: !1182, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1748, file: !1743, line: 200, baseType: !1182, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1748, file: !1743, line: 201, baseType: !1182, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1748, file: !1743, line: 203, baseType: !99, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !1748, file: !1743, line: 205, baseType: !99, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1748, file: !1743, line: 208, baseType: !1766, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !1743, line: 64, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !1743, line: 304, size: 5632, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1769, file: !1743, line: 305, baseType: !118, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "escaped_name", scope: !1769, file: !1743, line: 306, baseType: !118, size: 128, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1769, file: !1743, line: 309, baseType: !1774, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_regex_t", file: !1715, line: 79, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1715, line: 73, size: 384, elements: !1777)
!1777 = !{!1778, !1785, !1786, !1793, !1794}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1776, file: !1715, line: 74, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_regex_t", file: !1781, line: 23, baseType: !1782)
!1781 = !DIFile(filename: "src/core/ngx_regex.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "75910ba0759253aa562cd0685d954212")
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcre2_code_8", file: !1783, line: 935, baseType: !1784)
!1783 = !DIFile(filename: "/usr/include/pcre2.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5a698268d588d6d01eeceb6470dc1b")
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcre2_real_code_8", file: !1783, line: 935, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !1776, file: !1715, line: 75, baseType: !11, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !1776, file: !1715, line: 76, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_regex_variable_t", file: !1715, line: 70, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1715, line: 67, size: 128, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !1789, file: !1715, line: 68, baseType: !11, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1789, file: !1715, line: 69, baseType: !150, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !1776, file: !1715, line: 77, baseType: !11, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !1715, line: 78, baseType: !118, size: 128, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1769, file: !1743, line: 312, baseType: !99, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1769, file: !1743, line: 313, baseType: !99, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1769, file: !1743, line: 314, baseType: !99, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1769, file: !1743, line: 316, baseType: !99, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1769, file: !1743, line: 317, baseType: !99, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1769, file: !1743, line: 319, baseType: !99, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1769, file: !1743, line: 321, baseType: !99, size: 2, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1769, file: !1743, line: 322, baseType: !99, size: 2, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1769, file: !1743, line: 325, baseType: !1804, size: 64, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !1743, line: 63, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !1743, line: 462, size: 384, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1806, file: !1743, line: 463, baseType: !1804, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1806, file: !1743, line: 464, baseType: !1804, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1806, file: !1743, line: 465, baseType: !1804, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1806, file: !1743, line: 467, baseType: !1767, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1806, file: !1743, line: 468, baseType: !1767, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1806, file: !1743, line: 470, baseType: !1204, size: 16, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1806, file: !1743, line: 471, baseType: !18, size: 8, offset: 336)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1806, file: !1743, line: 472, baseType: !1207, size: 8, offset: 344)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "regex_locations", scope: !1769, file: !1743, line: 327, baseType: !1766, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1769, file: !1743, line: 331, baseType: !29, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1769, file: !1743, line: 333, baseType: !816, size: 32, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1769, file: !1743, line: 334, baseType: !29, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1769, file: !1743, line: 336, baseType: !1710, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1769, file: !1743, line: 339, baseType: !52, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1769, file: !1743, line: 340, baseType: !118, size: 128, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1769, file: !1743, line: 341, baseType: !118, size: 128, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1769, file: !1743, line: 343, baseType: !214, size: 64, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1769, file: !1743, line: 344, baseType: !214, size: 64, offset: 1152)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1769, file: !1743, line: 346, baseType: !214, size: 64, offset: 1216)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1769, file: !1743, line: 347, baseType: !1192, size: 128, offset: 1280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1769, file: !1743, line: 348, baseType: !118, size: 128, offset: 1408)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1769, file: !1743, line: 350, baseType: !253, size: 64, offset: 1536)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1769, file: !1743, line: 351, baseType: !253, size: 64, offset: 1600)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1769, file: !1743, line: 352, baseType: !253, size: 64, offset: 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1769, file: !1743, line: 354, baseType: !52, size: 64, offset: 1728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1769, file: !1743, line: 355, baseType: !52, size: 64, offset: 1792)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1769, file: !1743, line: 356, baseType: !52, size: 64, offset: 1856)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1769, file: !1743, line: 357, baseType: !52, size: 64, offset: 1920)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1769, file: !1743, line: 358, baseType: !52, size: 64, offset: 1984)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1769, file: !1743, line: 359, baseType: !52, size: 64, offset: 2048)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1769, file: !1743, line: 362, baseType: !1220, size: 64, offset: 2112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1769, file: !1743, line: 363, baseType: !1220, size: 64, offset: 2176)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1769, file: !1743, line: 365, baseType: !166, size: 64, offset: 2240)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1769, file: !1743, line: 366, baseType: !166, size: 64, offset: 2304)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_time", scope: !1769, file: !1743, line: 367, baseType: !166, size: 64, offset: 2368)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1769, file: !1743, line: 368, baseType: !166, size: 64, offset: 2432)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1769, file: !1743, line: 369, baseType: !166, size: 64, offset: 2496)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1769, file: !1743, line: 370, baseType: !166, size: 64, offset: 2560)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1769, file: !1743, line: 371, baseType: !166, size: 64, offset: 2624)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "auth_delay", scope: !1769, file: !1743, line: 372, baseType: !166, size: 64, offset: 2688)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1769, file: !1743, line: 374, baseType: !1350, size: 64, offset: 2752)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1769, file: !1743, line: 376, baseType: !159, size: 64, offset: 2816)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1769, file: !1743, line: 378, baseType: !11, size: 64, offset: 2880)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1769, file: !1743, line: 379, baseType: !11, size: 64, offset: 2944)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1769, file: !1743, line: 380, baseType: !11, size: 64, offset: 3008)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1769, file: !1743, line: 381, baseType: !11, size: 64, offset: 3072)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1769, file: !1743, line: 382, baseType: !11, size: 64, offset: 3136)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1769, file: !1743, line: 383, baseType: !11, size: 64, offset: 3200)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1769, file: !1743, line: 384, baseType: !11, size: 64, offset: 3264)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1769, file: !1743, line: 386, baseType: !1182, size: 64, offset: 3328)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1769, file: !1743, line: 388, baseType: !1182, size: 64, offset: 3392)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1769, file: !1743, line: 389, baseType: !1182, size: 64, offset: 3456)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1769, file: !1743, line: 390, baseType: !1182, size: 64, offset: 3520)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1769, file: !1743, line: 391, baseType: !1182, size: 64, offset: 3584)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1769, file: !1743, line: 392, baseType: !1182, size: 64, offset: 3648)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1769, file: !1743, line: 393, baseType: !1182, size: 64, offset: 3712)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1769, file: !1743, line: 394, baseType: !1182, size: 64, offset: 3776)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1769, file: !1743, line: 395, baseType: !1182, size: 64, offset: 3840)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1769, file: !1743, line: 396, baseType: !1182, size: 64, offset: 3904)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1769, file: !1743, line: 397, baseType: !1182, size: 64, offset: 3968)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1769, file: !1743, line: 398, baseType: !1182, size: 64, offset: 4032)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1769, file: !1743, line: 399, baseType: !1182, size: 64, offset: 4096)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1769, file: !1743, line: 400, baseType: !1182, size: 64, offset: 4160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1769, file: !1743, line: 401, baseType: !1182, size: 64, offset: 4224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1769, file: !1743, line: 402, baseType: !1182, size: 64, offset: 4288)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1769, file: !1743, line: 403, baseType: !11, size: 64, offset: 4352)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1769, file: !1743, line: 404, baseType: !1182, size: 64, offset: 4416)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1769, file: !1743, line: 405, baseType: !1182, size: 64, offset: 4480)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1769, file: !1743, line: 408, baseType: !1182, size: 64, offset: 4544)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1769, file: !1743, line: 410, baseType: !11, size: 64, offset: 4608)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1769, file: !1743, line: 411, baseType: !11, size: 64, offset: 4672)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable", scope: !1769, file: !1743, line: 414, baseType: !214, size: 64, offset: 4736)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1769, file: !1743, line: 424, baseType: !11, size: 64, offset: 4800)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1769, file: !1743, line: 425, baseType: !1220, size: 64, offset: 4864)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1769, file: !1743, line: 428, baseType: !214, size: 64, offset: 4928)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1769, file: !1743, line: 430, baseType: !885, size: 64, offset: 4992)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1769, file: !1743, line: 432, baseType: !1885, size: 64, offset: 5056)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1887, line: 99, baseType: !1888)
!1887 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1887, line: 91, size: 832, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1888, file: !1887, line: 92, baseType: !508, size: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1888, file: !1887, line: 93, baseType: !438, size: 320, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1888, file: !1887, line: 94, baseType: !449, size: 128, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1888, file: !1887, line: 96, baseType: !11, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1888, file: !1887, line: 97, baseType: !11, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1888, file: !1887, line: 98, baseType: !159, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1769, file: !1743, line: 433, baseType: !159, size: 64, offset: 5120)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1769, file: !1743, line: 434, baseType: !11, size: 64, offset: 5184)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1769, file: !1743, line: 435, baseType: !1182, size: 64, offset: 5248)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1769, file: !1743, line: 436, baseType: !1182, size: 64, offset: 5312)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1769, file: !1743, line: 438, baseType: !311, size: 64, offset: 5376)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1769, file: !1743, line: 440, baseType: !11, size: 64, offset: 5440)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1769, file: !1743, line: 441, baseType: !11, size: 64, offset: 5504)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1769, file: !1743, line: 443, baseType: !454, size: 64, offset: 5568)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1742, file: !1743, line: 236, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !1743, line: 229, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 224, size: 384, elements: !1908)
!1908 = !{!1909, !1922, !1923}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1907, file: !1743, line: 225, baseType: !1910, size: 256)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1193, line: 49, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 45, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1921}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1911, file: !1193, line: 46, baseType: !1192, size: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1911, file: !1193, line: 47, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1193, line: 32, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 29, size: 192, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1917, file: !1193, line: 30, baseType: !1192, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1917, file: !1193, line: 31, baseType: !16, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1911, file: !1193, line: 48, baseType: !1915, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1907, file: !1743, line: 227, baseType: !11, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1907, file: !1743, line: 228, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !1743, line: 221, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1743, line: 215, size: 256, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1926, file: !1743, line: 217, baseType: !1774, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1926, file: !1743, line: 219, baseType: !1746, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1926, file: !1743, line: 220, baseType: !118, size: 128, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1742, file: !1743, line: 238, baseType: !99, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1742, file: !1743, line: 239, baseType: !99, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1742, file: !1743, line: 240, baseType: !99, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1737, file: !813, line: 317, baseType: !23, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1737, file: !813, line: 320, baseType: !117, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername_regex", scope: !1737, file: !813, line: 322, baseType: !1774, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1737, file: !813, line: 326, baseType: !240, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1737, file: !813, line: 327, baseType: !150, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1737, file: !813, line: 329, baseType: !240, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1737, file: !813, line: 331, baseType: !99, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1737, file: !813, line: 332, baseType: !99, size: 1, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !812, file: !813, line: 453, baseType: !1943, size: 64, offset: 8704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !811, line: 22, baseType: !1945)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !811, line: 22, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !812, file: !813, line: 455, baseType: !1947, size: 64, offset: 8768)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !811, line: 26, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!17, !809, !809, !17, !52}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !812, file: !813, line: 457, baseType: !1952, size: 64, offset: 8832)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !813, line: 338, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !813, line: 340, size: 192, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1954, file: !813, line: 341, baseType: !1548, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1954, file: !813, line: 342, baseType: !16, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1954, file: !813, line: 343, baseType: !1952, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !812, file: !813, line: 459, baseType: !99, size: 16, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !812, file: !813, line: 460, baseType: !99, size: 8, offset: 8912, flags: DIFlagBitField, extraData: i64 8896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !812, file: !813, line: 461, baseType: !99, size: 8, offset: 8920, flags: DIFlagBitField, extraData: i64 8896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !812, file: !813, line: 463, baseType: !99, size: 1, offset: 8928, flags: DIFlagBitField, extraData: i64 8896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !812, file: !813, line: 465, baseType: !99, size: 4, offset: 8929, flags: DIFlagBitField, extraData: i64 8896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !812, file: !813, line: 468, baseType: !99, size: 1, offset: 8933, flags: DIFlagBitField, extraData: i64 8896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !812, file: !813, line: 471, baseType: !99, size: 1, offset: 8934, flags: DIFlagBitField, extraData: i64 8896)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !812, file: !813, line: 474, baseType: !99, size: 1, offset: 8935, flags: DIFlagBitField, extraData: i64 8896)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "empty_path_in_uri", scope: !812, file: !813, line: 477, baseType: !99, size: 1, offset: 8936, flags: DIFlagBitField, extraData: i64 8896)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !812, file: !813, line: 479, baseType: !99, size: 1, offset: 8937, flags: DIFlagBitField, extraData: i64 8896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !812, file: !813, line: 481, baseType: !99, size: 1, offset: 8938, flags: DIFlagBitField, extraData: i64 8896)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !812, file: !813, line: 482, baseType: !99, size: 1, offset: 8939, flags: DIFlagBitField, extraData: i64 8896)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !812, file: !813, line: 483, baseType: !99, size: 1, offset: 8940, flags: DIFlagBitField, extraData: i64 8896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !812, file: !813, line: 484, baseType: !99, size: 1, offset: 8941, flags: DIFlagBitField, extraData: i64 8896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !812, file: !813, line: 485, baseType: !99, size: 4, offset: 8942, flags: DIFlagBitField, extraData: i64 8896)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !812, file: !813, line: 487, baseType: !99, size: 1, offset: 8946, flags: DIFlagBitField, extraData: i64 8896)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !812, file: !813, line: 488, baseType: !99, size: 1, offset: 8947, flags: DIFlagBitField, extraData: i64 8896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !812, file: !813, line: 489, baseType: !99, size: 1, offset: 8948, flags: DIFlagBitField, extraData: i64 8896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !812, file: !813, line: 490, baseType: !99, size: 1, offset: 8949, flags: DIFlagBitField, extraData: i64 8896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !812, file: !813, line: 491, baseType: !99, size: 1, offset: 8950, flags: DIFlagBitField, extraData: i64 8896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !812, file: !813, line: 492, baseType: !99, size: 3, offset: 8951, flags: DIFlagBitField, extraData: i64 8896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !812, file: !813, line: 493, baseType: !99, size: 1, offset: 8954, flags: DIFlagBitField, extraData: i64 8896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !812, file: !813, line: 495, baseType: !99, size: 1, offset: 8955, flags: DIFlagBitField, extraData: i64 8896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !812, file: !813, line: 496, baseType: !99, size: 1, offset: 8956, flags: DIFlagBitField, extraData: i64 8896)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !812, file: !813, line: 499, baseType: !99, size: 1, offset: 8957, flags: DIFlagBitField, extraData: i64 8896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !812, file: !813, line: 503, baseType: !99, size: 1, offset: 8958, flags: DIFlagBitField, extraData: i64 8896)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !812, file: !813, line: 504, baseType: !99, size: 1, offset: 8959, flags: DIFlagBitField, extraData: i64 8896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !812, file: !813, line: 505, baseType: !99, size: 1, offset: 8960, flags: DIFlagBitField, extraData: i64 8896)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "realloc_captures", scope: !812, file: !813, line: 509, baseType: !99, size: 1, offset: 8961, flags: DIFlagBitField, extraData: i64 8896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !812, file: !813, line: 512, baseType: !99, size: 1, offset: 8962, flags: DIFlagBitField, extraData: i64 8896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !812, file: !813, line: 513, baseType: !99, size: 1, offset: 8963, flags: DIFlagBitField, extraData: i64 8896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !812, file: !813, line: 514, baseType: !99, size: 1, offset: 8964, flags: DIFlagBitField, extraData: i64 8896)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_status", scope: !812, file: !813, line: 521, baseType: !99, size: 2, offset: 8965, flags: DIFlagBitField, extraData: i64 8896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_status", scope: !812, file: !813, line: 522, baseType: !99, size: 3, offset: 8967, flags: DIFlagBitField, extraData: i64 8896)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_set", scope: !812, file: !813, line: 524, baseType: !99, size: 1, offset: 8970, flags: DIFlagBitField, extraData: i64 8896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after_set", scope: !812, file: !813, line: 525, baseType: !99, size: 1, offset: 8971, flags: DIFlagBitField, extraData: i64 8896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !812, file: !813, line: 531, baseType: !99, size: 1, offset: 8972, flags: DIFlagBitField, extraData: i64 8896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !812, file: !813, line: 532, baseType: !99, size: 1, offset: 8973, flags: DIFlagBitField, extraData: i64 8896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !812, file: !813, line: 533, baseType: !99, size: 1, offset: 8974, flags: DIFlagBitField, extraData: i64 8896)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !812, file: !813, line: 534, baseType: !99, size: 1, offset: 8975, flags: DIFlagBitField, extraData: i64 8896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !812, file: !813, line: 535, baseType: !99, size: 1, offset: 8976, flags: DIFlagBitField, extraData: i64 8896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !812, file: !813, line: 536, baseType: !99, size: 1, offset: 8977, flags: DIFlagBitField, extraData: i64 8896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !812, file: !813, line: 537, baseType: !99, size: 1, offset: 8978, flags: DIFlagBitField, extraData: i64 8896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !812, file: !813, line: 538, baseType: !99, size: 1, offset: 8979, flags: DIFlagBitField, extraData: i64 8896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !812, file: !813, line: 539, baseType: !99, size: 1, offset: 8980, flags: DIFlagBitField, extraData: i64 8896)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !812, file: !813, line: 540, baseType: !99, size: 1, offset: 8981, flags: DIFlagBitField, extraData: i64 8896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !812, file: !813, line: 541, baseType: !99, size: 1, offset: 8982, flags: DIFlagBitField, extraData: i64 8896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !812, file: !813, line: 542, baseType: !99, size: 1, offset: 8983, flags: DIFlagBitField, extraData: i64 8896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !812, file: !813, line: 543, baseType: !99, size: 1, offset: 8984, flags: DIFlagBitField, extraData: i64 8896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !812, file: !813, line: 544, baseType: !99, size: 1, offset: 8985, flags: DIFlagBitField, extraData: i64 8896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !812, file: !813, line: 545, baseType: !99, size: 1, offset: 8986, flags: DIFlagBitField, extraData: i64 8896)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !812, file: !813, line: 546, baseType: !99, size: 1, offset: 8987, flags: DIFlagBitField, extraData: i64 8896)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !812, file: !813, line: 547, baseType: !99, size: 1, offset: 8988, flags: DIFlagBitField, extraData: i64 8896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !812, file: !813, line: 548, baseType: !99, size: 1, offset: 8989, flags: DIFlagBitField, extraData: i64 8896)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !812, file: !813, line: 549, baseType: !99, size: 1, offset: 8990, flags: DIFlagBitField, extraData: i64 8896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !812, file: !813, line: 551, baseType: !99, size: 4, offset: 8992, flags: DIFlagBitField, extraData: i64 8992)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !812, file: !813, line: 553, baseType: !99, size: 1, offset: 8996, flags: DIFlagBitField, extraData: i64 8992)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !812, file: !813, line: 554, baseType: !99, size: 1, offset: 8997, flags: DIFlagBitField, extraData: i64 8992)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !812, file: !813, line: 555, baseType: !99, size: 1, offset: 8998, flags: DIFlagBitField, extraData: i64 8992)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !812, file: !813, line: 556, baseType: !99, size: 1, offset: 8999, flags: DIFlagBitField, extraData: i64 8992)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !812, file: !813, line: 557, baseType: !99, size: 1, offset: 9000, flags: DIFlagBitField, extraData: i64 8992)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !812, file: !813, line: 558, baseType: !99, size: 1, offset: 9001, flags: DIFlagBitField, extraData: i64 8992)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !812, file: !813, line: 559, baseType: !99, size: 1, offset: 9002, flags: DIFlagBitField, extraData: i64 8992)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !812, file: !813, line: 560, baseType: !99, size: 1, offset: 9003, flags: DIFlagBitField, extraData: i64 8992)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !812, file: !813, line: 561, baseType: !99, size: 1, offset: 9004, flags: DIFlagBitField, extraData: i64 8992)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !812, file: !813, line: 562, baseType: !99, size: 1, offset: 9005, flags: DIFlagBitField, extraData: i64 8992)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !812, file: !813, line: 563, baseType: !99, size: 1, offset: 9006, flags: DIFlagBitField, extraData: i64 8992)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !812, file: !813, line: 565, baseType: !99, size: 1, offset: 9007, flags: DIFlagBitField, extraData: i64 8992)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !812, file: !813, line: 566, baseType: !99, size: 1, offset: 9008, flags: DIFlagBitField, extraData: i64 8992)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !812, file: !813, line: 570, baseType: !11, size: 64, offset: 9024)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !812, file: !813, line: 572, baseType: !11, size: 64, offset: 9088)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !812, file: !813, line: 573, baseType: !11, size: 64, offset: 9152)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !812, file: !813, line: 574, baseType: !2032, size: 256, offset: 9216)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !92)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !812, file: !813, line: 576, baseType: !17, size: 64, offset: 9472)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !812, file: !813, line: 577, baseType: !17, size: 64, offset: 9536)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !812, file: !813, line: 578, baseType: !17, size: 64, offset: 9600)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !812, file: !813, line: 579, baseType: !17, size: 64, offset: 9664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !812, file: !813, line: 586, baseType: !17, size: 64, offset: 9728)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !812, file: !813, line: 587, baseType: !17, size: 64, offset: 9792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !812, file: !813, line: 588, baseType: !17, size: 64, offset: 9856)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !812, file: !813, line: 589, baseType: !17, size: 64, offset: 9920)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !812, file: !813, line: 590, baseType: !17, size: 64, offset: 9984)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !812, file: !813, line: 591, baseType: !17, size: 64, offset: 10048)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !812, file: !813, line: 592, baseType: !17, size: 64, offset: 10112)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !812, file: !813, line: 593, baseType: !17, size: 64, offset: 10176)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !812, file: !813, line: 594, baseType: !17, size: 64, offset: 10240)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !812, file: !813, line: 595, baseType: !17, size: 64, offset: 10304)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !812, file: !813, line: 596, baseType: !17, size: 64, offset: 10368)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !812, file: !813, line: 597, baseType: !17, size: 64, offset: 10432)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !812, file: !813, line: 598, baseType: !17, size: 64, offset: 10496)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !812, file: !813, line: 600, baseType: !99, size: 16, offset: 10560, flags: DIFlagBitField, extraData: i64 10560)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !812, file: !813, line: 601, baseType: !99, size: 16, offset: 10576, flags: DIFlagBitField, extraData: i64 10560)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !797, file: !792, line: 90, baseType: !16, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !793, file: !792, line: 123, baseType: !29, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !793, file: !792, line: 125, baseType: !214, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !792, line: 127, baseType: !11, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !793, file: !792, line: 128, baseType: !118, size: 128, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !793, file: !792, line: 129, baseType: !17, size: 64, offset: 512)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !793, file: !792, line: 130, baseType: !11, size: 64, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !793, file: !792, line: 131, baseType: !555, size: 16, offset: 640)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !793, file: !792, line: 132, baseType: !11, size: 64, offset: 704)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !793, file: !792, line: 135, baseType: !919, size: 64, offset: 768)
!2062 = !DILocalVariable(name: "umcf", scope: !782, file: !2, line: 73, type: !2063)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_main_conf_t", file: !792, line: 77, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 73, size: 448, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in_hash", scope: !2065, file: !792, line: 74, baseType: !1192, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "upstreams", scope: !2065, file: !792, line: 75, baseType: !215, size: 320, offset: 128)
!2069 = !{!2070, !2070, i64 0}
!2070 = !{!"any pointer", !2071, i64 0}
!2071 = !{!"omnipotent char", !2072, i64 0}
!2072 = !{!"Simple C/C++ TBAA"}
!2073 = !DILocation(line: 68, column: 36, scope: !782)
!2074 = !DILocation(line: 68, column: 55, scope: !782)
!2075 = !DILocation(line: 68, column: 66, scope: !782)
!2076 = !DILocation(line: 70, column: 5, scope: !782)
!2077 = !DILocation(line: 70, column: 37, scope: !782)
!2078 = !DILocation(line: 71, column: 5, scope: !782)
!2079 = !DILocation(line: 71, column: 37, scope: !782)
!2080 = !DILocation(line: 72, column: 5, scope: !782)
!2081 = !DILocation(line: 72, column: 37, scope: !782)
!2082 = !DILocation(line: 73, column: 5, scope: !782)
!2083 = !DILocation(line: 73, column: 37, scope: !782)
!2084 = !DILocation(line: 75, column: 12, scope: !782)
!2085 = !{!2086, !2070, i64 56}
!2086 = !{!"ngx_conf_s", !2070, i64 0, !2070, i64 8, !2070, i64 16, !2070, i64 24, !2070, i64 32, !2070, i64 40, !2070, i64 48, !2070, i64 56, !2087, i64 64, !2087, i64 72, !2070, i64 80, !2070, i64 88}
!2087 = !{!"long", !2071, i64 0}
!2088 = !{!2089, !2070, i64 8}
!2089 = !{!"", !2070, i64 0, !2070, i64 8, !2070, i64 16}
!2090 = !{!2091, !2087, i64 0}
!2091 = !{!"ngx_module_s", !2087, i64 0, !2087, i64 8, !2070, i64 16, !2087, i64 24, !2087, i64 32, !2087, i64 40, !2070, i64 48, !2070, i64 56, !2070, i64 64, !2087, i64 72, !2070, i64 80, !2070, i64 88, !2070, i64 96, !2070, i64 104, !2070, i64 112, !2070, i64 120, !2070, i64 128, !2087, i64 136, !2087, i64 144, !2087, i64 152, !2087, i64 160, !2087, i64 168, !2087, i64 176, !2087, i64 184, !2087, i64 192}
!2092 = !DILocation(line: 75, column: 10, scope: !782)
!2093 = !DILocation(line: 76, column: 12, scope: !782)
!2094 = !{!2089, !2070, i64 0}
!2095 = !DILocation(line: 76, column: 10, scope: !782)
!2096 = !DILocation(line: 78, column: 13, scope: !782)
!2097 = !DILocation(line: 78, column: 17, scope: !782)
!2098 = !{!2086, !2070, i64 8}
!2099 = !DILocation(line: 78, column: 23, scope: !782)
!2100 = !{!2101, !2070, i64 0}
!2101 = !{!"", !2070, i64 0, !2087, i64 8, !2087, i64 16, !2087, i64 24, !2070, i64 32}
!2102 = !DILocation(line: 78, column: 11, scope: !782)
!2103 = !DILocation(line: 80, column: 10, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !782, file: !2, line: 80, column: 9)
!2105 = !DILocation(line: 80, column: 19, scope: !2104)
!2106 = !{!2107, !2087, i64 0}
!2107 = !{!"", !2087, i64 0, !2070, i64 8}
!2108 = !DILocation(line: 80, column: 9, scope: !782)
!2109 = !DILocation(line: 81, column: 43, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 80, column: 24)
!2111 = !DILocation(line: 82, column: 57, scope: !2110)
!2112 = !DILocation(line: 81, column: 9, scope: !2110)
!2113 = !DILocation(line: 83, column: 9, scope: !2110)
!2114 = !DILocation(line: 86, column: 9, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !782, file: !2, line: 86, column: 9)
!2116 = !DILocation(line: 86, column: 13, scope: !2115)
!2117 = !DILocation(line: 86, column: 19, scope: !2115)
!2118 = !{!2101, !2087, i64 8}
!2119 = !DILocation(line: 86, column: 25, scope: !2115)
!2120 = !DILocation(line: 86, column: 9, scope: !782)
!2121 = !DILocation(line: 87, column: 32, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 86, column: 31)
!2123 = !DILocation(line: 87, column: 16, scope: !2122)
!2124 = !DILocation(line: 87, column: 14, scope: !2122)
!2125 = !{!2087, !2087, i64 0}
!2126 = !DILocation(line: 89, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 89, column: 13)
!2128 = !DILocation(line: 89, column: 18, scope: !2127)
!2129 = !DILocation(line: 89, column: 13, scope: !2122)
!2130 = !DILocation(line: 90, column: 47, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 89, column: 32)
!2132 = !DILocation(line: 91, column: 61, scope: !2131)
!2133 = !DILocation(line: 90, column: 13, scope: !2131)
!2134 = !DILocation(line: 92, column: 13, scope: !2131)
!2135 = !DILocation(line: 95, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 95, column: 13)
!2137 = !DILocation(line: 95, column: 35, scope: !2136)
!2138 = !DILocation(line: 95, column: 33, scope: !2136)
!2139 = !DILocation(line: 95, column: 18, scope: !2136)
!2140 = !DILocation(line: 95, column: 13, scope: !2122)
!2141 = !DILocation(line: 96, column: 47, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 95, column: 50)
!2143 = !DILocation(line: 97, column: 61, scope: !2142)
!2144 = !DILocation(line: 96, column: 13, scope: !2142)
!2145 = !DILocation(line: 98, column: 13, scope: !2142)
!2146 = !DILocation(line: 101, column: 5, scope: !2122)
!2147 = !DILocation(line: 102, column: 14, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 101, column: 12)
!2149 = !DILocation(line: 105, column: 44, scope: !782)
!2150 = !DILocation(line: 105, column: 49, scope: !782)
!2151 = !DILocation(line: 105, column: 59, scope: !782)
!2152 = !DILocation(line: 105, column: 22, scope: !782)
!2153 = !DILocation(line: 105, column: 5, scope: !782)
!2154 = !DILocation(line: 105, column: 11, scope: !782)
!2155 = !DILocation(line: 105, column: 20, scope: !782)
!2156 = !{!2157, !2070, i64 96}
!2157 = !{!"ngx_http_upstream_srv_conf_s", !2089, i64 0, !2070, i64 24, !2070, i64 32, !2087, i64 40, !2107, i64 48, !2070, i64 64, !2087, i64 72, !2158, i64 80, !2087, i64 88, !2070, i64 96}
!2158 = !{!"short", !2071, i64 0}
!2159 = !DILocation(line: 107, column: 9, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !782, file: !2, line: 107, column: 9)
!2161 = !DILocation(line: 107, column: 15, scope: !2160)
!2162 = !DILocation(line: 107, column: 24, scope: !2160)
!2163 = !DILocation(line: 107, column: 9, scope: !782)
!2164 = !DILocation(line: 108, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 107, column: 33)
!2166 = !DILocation(line: 111, column: 5, scope: !782)
!2167 = !DILocation(line: 111, column: 11, scope: !782)
!2168 = !DILocation(line: 111, column: 21, scope: !782)
!2169 = !DILocation(line: 111, column: 26, scope: !782)
!2170 = !{!2171, !2070, i64 56}
!2171 = !{!"ngx_shm_zone_s", !2070, i64 0, !2172, i64 8, !2070, i64 56, !2070, i64 64, !2070, i64 72, !2087, i64 80}
!2172 = !{!"", !2070, i64 0, !2087, i64 8, !2107, i64 16, !2070, i64 32, !2087, i64 40}
!2173 = !DILocation(line: 112, column: 28, scope: !782)
!2174 = !DILocation(line: 112, column: 5, scope: !782)
!2175 = !DILocation(line: 112, column: 11, scope: !782)
!2176 = !DILocation(line: 112, column: 21, scope: !782)
!2177 = !DILocation(line: 112, column: 26, scope: !782)
!2178 = !{!2171, !2070, i64 0}
!2179 = !DILocation(line: 114, column: 5, scope: !782)
!2180 = !DILocation(line: 114, column: 11, scope: !782)
!2181 = !DILocation(line: 114, column: 21, scope: !782)
!2182 = !DILocation(line: 114, column: 29, scope: !782)
!2183 = !{!2171, !2087, i64 80}
!2184 = !DILocation(line: 116, column: 5, scope: !782)
!2185 = !DILocation(line: 117, column: 1, scope: !782)
!2186 = !DISubprogram(name: "ngx_conf_log_error", scope: !200, file: !200, line: 276, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !11, !208, !2189, !193, null}
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !2190, line: 16, baseType: !174)
!2190 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!2191 = !DISubprogram(name: "ngx_parse_size", scope: !2192, file: !2192, line: 16, type: !2193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DIFile(filename: "src/core/ngx_parse.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "298f4ae89e2d0c2a0b5296127de5521e")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!32, !117}
!2195 = !DISubprogram(name: "ngx_shared_memory_add", scope: !385, file: !385, line: 136, type: !2196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!919, !208, !117, !52, !16}
!2198 = distinct !DISubprogram(name: "ngx_http_upstream_init_zone", scope: !2, file: !2, line: 121, type: !937, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2210}
!2200 = !DILocalVariable(name: "shm_zone", arg: 1, scope: !2198, file: !2, line: 121, type: !919)
!2201 = !DILocalVariable(name: "data", arg: 2, scope: !2198, file: !2, line: 121, type: !16)
!2202 = !DILocalVariable(name: "len", scope: !2198, file: !2, line: 123, type: !52)
!2203 = !DILocalVariable(name: "i", scope: !2198, file: !2, line: 124, type: !11)
!2204 = !DILocalVariable(name: "shpool", scope: !2198, file: !2, line: 125, type: !35)
!2205 = !DILocalVariable(name: "peers", scope: !2198, file: !2, line: 126, type: !103)
!2206 = !DILocalVariable(name: "peersp", scope: !2198, file: !2, line: 126, type: !102)
!2207 = !DILocalVariable(name: "uscf", scope: !2198, file: !2, line: 127, type: !790)
!2208 = !DILocalVariable(name: "uscfp", scope: !2198, file: !2, line: 127, type: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!2210 = !DILocalVariable(name: "umcf", scope: !2198, file: !2, line: 128, type: !2063)
!2211 = !DILocation(line: 121, column: 45, scope: !2198)
!2212 = !DILocation(line: 121, column: 61, scope: !2198)
!2213 = !DILocation(line: 123, column: 5, scope: !2198)
!2214 = !DILocation(line: 123, column: 37, scope: !2198)
!2215 = !DILocation(line: 124, column: 5, scope: !2198)
!2216 = !DILocation(line: 124, column: 37, scope: !2198)
!2217 = !DILocation(line: 125, column: 5, scope: !2198)
!2218 = !DILocation(line: 125, column: 37, scope: !2198)
!2219 = !DILocation(line: 126, column: 5, scope: !2198)
!2220 = !DILocation(line: 126, column: 37, scope: !2198)
!2221 = !DILocation(line: 126, column: 46, scope: !2198)
!2222 = !DILocation(line: 127, column: 5, scope: !2198)
!2223 = !DILocation(line: 127, column: 37, scope: !2198)
!2224 = !DILocation(line: 127, column: 45, scope: !2198)
!2225 = !DILocation(line: 128, column: 5, scope: !2198)
!2226 = !DILocation(line: 128, column: 37, scope: !2198)
!2227 = !DILocation(line: 130, column: 34, scope: !2198)
!2228 = !DILocation(line: 130, column: 44, scope: !2198)
!2229 = !DILocation(line: 130, column: 48, scope: !2198)
!2230 = !{!2171, !2070, i64 8}
!2231 = !DILocation(line: 130, column: 12, scope: !2198)
!2232 = !DILocation(line: 131, column: 12, scope: !2198)
!2233 = !DILocation(line: 131, column: 22, scope: !2198)
!2234 = !DILocation(line: 131, column: 10, scope: !2198)
!2235 = !DILocation(line: 132, column: 13, scope: !2198)
!2236 = !DILocation(line: 132, column: 19, scope: !2198)
!2237 = !DILocation(line: 132, column: 29, scope: !2198)
!2238 = !{!2239, !2070, i64 16}
!2239 = !{!"", !2240, i64 0, !2101, i64 16}
!2240 = !{!"", !2070, i64 0, !2087, i64 8}
!2241 = !DILocation(line: 132, column: 11, scope: !2198)
!2242 = !DILocation(line: 134, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 134, column: 9)
!2244 = !DILocation(line: 134, column: 19, scope: !2243)
!2245 = !DILocation(line: 134, column: 23, scope: !2243)
!2246 = !{!2171, !2087, i64 48}
!2247 = !DILocation(line: 134, column: 9, scope: !2198)
!2248 = !DILocation(line: 135, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 134, column: 31)
!2250 = !DILocation(line: 135, column: 25, scope: !2249)
!2251 = !{!2252, !2070, i64 184}
!2252 = !{!"", !2253, i64 0, !2087, i64 16, !2087, i64 24, !2070, i64 32, !2070, i64 40, !2254, i64 48, !2070, i64 72, !2087, i64 80, !2070, i64 88, !2070, i64 96, !2255, i64 104, !2070, i64 168, !2071, i64 176, !2256, i64 177, !2070, i64 184, !2070, i64 192}
!2253 = !{!"", !2087, i64 0, !2087, i64 8}
!2254 = !{!"ngx_slab_page_s", !2087, i64 0, !2070, i64 8, !2087, i64 16}
!2255 = !{!"", !2070, i64 0, !2070, i64 8, !2087, i64 16, !2071, i64 24, !2087, i64 56}
!2256 = !{!"int", !2071, i64 0}
!2257 = !DILocation(line: 135, column: 15, scope: !2249)
!2258 = !DILocation(line: 137, column: 16, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 137, column: 9)
!2260 = !DILocation(line: 137, column: 14, scope: !2259)
!2261 = !DILocation(line: 137, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 137, column: 9)
!2263 = !DILocation(line: 137, column: 25, scope: !2262)
!2264 = !DILocation(line: 137, column: 31, scope: !2262)
!2265 = !DILocation(line: 137, column: 41, scope: !2262)
!2266 = !{!2239, !2087, i64 24}
!2267 = !DILocation(line: 137, column: 23, scope: !2262)
!2268 = !DILocation(line: 137, column: 9, scope: !2259)
!2269 = !DILocation(line: 138, column: 20, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 137, column: 53)
!2271 = !DILocation(line: 138, column: 26, scope: !2270)
!2272 = !DILocation(line: 138, column: 18, scope: !2270)
!2273 = !DILocation(line: 140, column: 17, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 140, column: 17)
!2275 = !DILocation(line: 140, column: 23, scope: !2274)
!2276 = !DILocation(line: 140, column: 35, scope: !2274)
!2277 = !DILocation(line: 140, column: 32, scope: !2274)
!2278 = !DILocation(line: 140, column: 17, scope: !2270)
!2279 = !DILocation(line: 141, column: 17, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 140, column: 45)
!2281 = !DILocation(line: 144, column: 31, scope: !2270)
!2282 = !DILocation(line: 144, column: 13, scope: !2270)
!2283 = !DILocation(line: 144, column: 19, scope: !2270)
!2284 = !DILocation(line: 144, column: 24, scope: !2270)
!2285 = !DILocation(line: 144, column: 29, scope: !2270)
!2286 = !{!2157, !2070, i64 16}
!2287 = !DILocation(line: 145, column: 21, scope: !2270)
!2288 = !DILocation(line: 145, column: 28, scope: !2270)
!2289 = !{!2290, !2070, i64 24}
!2290 = !{!"ngx_http_upstream_rr_peers_s", !2087, i64 0, !2070, i64 8, !2087, i64 16, !2070, i64 24, !2087, i64 32, !2087, i64 40, !2256, i64 48, !2256, i64 48, !2070, i64 56, !2070, i64 64, !2070, i64 72}
!2291 = !DILocation(line: 145, column: 19, scope: !2270)
!2292 = !DILocation(line: 146, column: 9, scope: !2270)
!2293 = !DILocation(line: 137, column: 49, scope: !2262)
!2294 = !DILocation(line: 137, column: 9, scope: !2262)
!2295 = distinct !{!2295, !2268, !2296, !2297, !2298}
!2296 = !DILocation(line: 146, column: 9, scope: !2259)
!2297 = !{!"llvm.loop.mustprogress"}
!2298 = !{!"llvm.loop.unroll.disable"}
!2299 = !DILocation(line: 148, column: 9, scope: !2249)
!2300 = !DILocation(line: 151, column: 46, scope: !2198)
!2301 = !DILocation(line: 151, column: 56, scope: !2198)
!2302 = !DILocation(line: 151, column: 60, scope: !2198)
!2303 = !DILocation(line: 151, column: 65, scope: !2198)
!2304 = !{!2171, !2087, i64 24}
!2305 = !DILocation(line: 151, column: 44, scope: !2198)
!2306 = !DILocation(line: 151, column: 9, scope: !2198)
!2307 = !DILocation(line: 153, column: 38, scope: !2198)
!2308 = !DILocation(line: 153, column: 46, scope: !2198)
!2309 = !DILocation(line: 153, column: 23, scope: !2198)
!2310 = !DILocation(line: 153, column: 5, scope: !2198)
!2311 = !DILocation(line: 153, column: 13, scope: !2198)
!2312 = !DILocation(line: 153, column: 21, scope: !2198)
!2313 = !{!2252, !2070, i64 168}
!2314 = !DILocation(line: 154, column: 9, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 154, column: 9)
!2316 = !DILocation(line: 154, column: 17, scope: !2315)
!2317 = !DILocation(line: 154, column: 25, scope: !2315)
!2318 = !DILocation(line: 154, column: 9, scope: !2198)
!2319 = !DILocation(line: 155, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 154, column: 34)
!2321 = !DILocation(line: 158, column: 17, scope: !2198)
!2322 = !DILocation(line: 158, column: 25, scope: !2198)
!2323 = !DILocation(line: 159, column: 18, scope: !2198)
!2324 = !DILocation(line: 159, column: 28, scope: !2198)
!2325 = !DILocation(line: 159, column: 32, scope: !2198)
!2326 = !DILocation(line: 158, column: 5, scope: !2198)
!2327 = !DILocation(line: 164, column: 58, scope: !2198)
!2328 = !DILocation(line: 164, column: 66, scope: !2198)
!2329 = !DILocation(line: 164, column: 12, scope: !2198)
!2330 = !DILocation(line: 166, column: 12, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 166, column: 5)
!2332 = !DILocation(line: 166, column: 10, scope: !2331)
!2333 = !DILocation(line: 166, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 166, column: 5)
!2335 = !DILocation(line: 166, column: 21, scope: !2334)
!2336 = !DILocation(line: 166, column: 27, scope: !2334)
!2337 = !DILocation(line: 166, column: 37, scope: !2334)
!2338 = !DILocation(line: 166, column: 19, scope: !2334)
!2339 = !DILocation(line: 166, column: 5, scope: !2331)
!2340 = !DILocation(line: 167, column: 16, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 166, column: 49)
!2342 = !DILocation(line: 167, column: 22, scope: !2341)
!2343 = !DILocation(line: 167, column: 14, scope: !2341)
!2344 = !DILocation(line: 169, column: 13, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 169, column: 13)
!2346 = !DILocation(line: 169, column: 19, scope: !2345)
!2347 = !DILocation(line: 169, column: 31, scope: !2345)
!2348 = !DILocation(line: 169, column: 28, scope: !2345)
!2349 = !DILocation(line: 169, column: 13, scope: !2341)
!2350 = !DILocation(line: 170, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 169, column: 41)
!2352 = !DILocation(line: 173, column: 51, scope: !2341)
!2353 = !DILocation(line: 173, column: 59, scope: !2341)
!2354 = !DILocation(line: 173, column: 17, scope: !2341)
!2355 = !DILocation(line: 173, column: 15, scope: !2341)
!2356 = !DILocation(line: 174, column: 13, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 174, column: 13)
!2358 = !DILocation(line: 174, column: 19, scope: !2357)
!2359 = !DILocation(line: 174, column: 13, scope: !2341)
!2360 = !DILocation(line: 175, column: 13, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 174, column: 28)
!2362 = !DILocation(line: 178, column: 19, scope: !2341)
!2363 = !DILocation(line: 178, column: 10, scope: !2341)
!2364 = !DILocation(line: 178, column: 17, scope: !2341)
!2365 = !DILocation(line: 179, column: 19, scope: !2341)
!2366 = !DILocation(line: 179, column: 26, scope: !2341)
!2367 = !DILocation(line: 179, column: 16, scope: !2341)
!2368 = !DILocation(line: 180, column: 5, scope: !2341)
!2369 = !DILocation(line: 166, column: 45, scope: !2334)
!2370 = !DILocation(line: 166, column: 5, scope: !2334)
!2371 = distinct !{!2371, !2339, !2372, !2297, !2298}
!2372 = !DILocation(line: 180, column: 5, scope: !2331)
!2373 = !DILocation(line: 182, column: 5, scope: !2198)
!2374 = !DILocation(line: 183, column: 1, scope: !2198)
!2375 = !DISubprogram(name: "ngx_slab_alloc", scope: !37, file: !37, line: 64, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!16, !35, !52}
!2378 = !DISubprogram(name: "ngx_sprintf", scope: !119, file: !119, line: 153, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!17, !17, !193, null}
!2381 = distinct !DISubprogram(name: "ngx_http_upstream_zone_copy_peers", scope: !2, file: !2, line: 187, type: !2382, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!103, !35, !790}
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2391, !2392, !2393}
!2385 = !DILocalVariable(name: "shpool", arg: 1, scope: !2381, file: !2, line: 187, type: !35)
!2386 = !DILocalVariable(name: "uscf", arg: 2, scope: !2381, file: !2, line: 188, type: !790)
!2387 = !DILocalVariable(name: "name", scope: !2381, file: !2, line: 190, type: !117)
!2388 = !DILocalVariable(name: "peer", scope: !2381, file: !2, line: 191, type: !126)
!2389 = !DILocalVariable(name: "peerp", scope: !2381, file: !2, line: 191, type: !2390)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2391 = !DILocalVariable(name: "peers", scope: !2381, file: !2, line: 192, type: !103)
!2392 = !DILocalVariable(name: "backup", scope: !2381, file: !2, line: 192, type: !103)
!2393 = !DILabel(scope: !2381, name: "done", file: !2, line: 255)
!2394 = !DILocation(line: 187, column: 52, scope: !2381)
!2395 = !DILocation(line: 188, column: 35, scope: !2381)
!2396 = !DILocation(line: 190, column: 5, scope: !2381)
!2397 = !DILocation(line: 190, column: 36, scope: !2381)
!2398 = !DILocation(line: 191, column: 5, scope: !2381)
!2399 = !DILocation(line: 191, column: 36, scope: !2381)
!2400 = !DILocation(line: 191, column: 44, scope: !2381)
!2401 = !DILocation(line: 192, column: 5, scope: !2381)
!2402 = !DILocation(line: 192, column: 36, scope: !2381)
!2403 = !DILocation(line: 192, column: 44, scope: !2381)
!2404 = !DILocation(line: 194, column: 28, scope: !2381)
!2405 = !DILocation(line: 194, column: 13, scope: !2381)
!2406 = !DILocation(line: 194, column: 11, scope: !2381)
!2407 = !DILocation(line: 195, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 195, column: 9)
!2409 = !DILocation(line: 195, column: 15, scope: !2408)
!2410 = !DILocation(line: 195, column: 9, scope: !2381)
!2411 = !DILocation(line: 196, column: 9, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 195, column: 24)
!2413 = !DILocation(line: 199, column: 5, scope: !2381)
!2414 = !DILocation(line: 201, column: 27, scope: !2381)
!2415 = !DILocation(line: 201, column: 12, scope: !2381)
!2416 = !DILocation(line: 201, column: 10, scope: !2381)
!2417 = !DILocation(line: 202, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 202, column: 9)
!2419 = !DILocation(line: 202, column: 14, scope: !2418)
!2420 = !DILocation(line: 202, column: 9, scope: !2381)
!2421 = !DILocation(line: 203, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !2, line: 202, column: 23)
!2423 = !DILocation(line: 206, column: 33, scope: !2381)
!2424 = !DILocation(line: 206, column: 41, scope: !2381)
!2425 = !DILocation(line: 206, column: 48, scope: !2381)
!2426 = !{!2290, !2070, i64 56}
!2427 = !DILocation(line: 206, column: 54, scope: !2381)
!2428 = !DILocation(line: 206, column: 18, scope: !2381)
!2429 = !DILocation(line: 206, column: 5, scope: !2381)
!2430 = !DILocation(line: 206, column: 11, scope: !2381)
!2431 = !DILocation(line: 206, column: 16, scope: !2381)
!2432 = !{!2107, !2070, i64 8}
!2433 = !DILocation(line: 207, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 207, column: 9)
!2435 = !DILocation(line: 207, column: 15, scope: !2434)
!2436 = !DILocation(line: 207, column: 20, scope: !2434)
!2437 = !DILocation(line: 207, column: 9, scope: !2381)
!2438 = !DILocation(line: 208, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 207, column: 29)
!2440 = !DILocation(line: 211, column: 5, scope: !2381)
!2441 = !DILocation(line: 212, column: 17, scope: !2381)
!2442 = !DILocation(line: 212, column: 24, scope: !2381)
!2443 = !DILocation(line: 212, column: 30, scope: !2381)
!2444 = !DILocation(line: 212, column: 5, scope: !2381)
!2445 = !DILocation(line: 212, column: 11, scope: !2381)
!2446 = !DILocation(line: 212, column: 15, scope: !2381)
!2447 = !DILocation(line: 214, column: 19, scope: !2381)
!2448 = !DILocation(line: 214, column: 5, scope: !2381)
!2449 = !DILocation(line: 214, column: 12, scope: !2381)
!2450 = !DILocation(line: 214, column: 17, scope: !2381)
!2451 = !DILocation(line: 216, column: 21, scope: !2381)
!2452 = !DILocation(line: 216, column: 5, scope: !2381)
!2453 = !DILocation(line: 216, column: 12, scope: !2381)
!2454 = !DILocation(line: 216, column: 19, scope: !2381)
!2455 = !{!2290, !2070, i64 8}
!2456 = !DILocation(line: 218, column: 19, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 218, column: 5)
!2458 = !DILocation(line: 218, column: 26, scope: !2457)
!2459 = !DILocation(line: 218, column: 16, scope: !2457)
!2460 = !DILocation(line: 218, column: 10, scope: !2457)
!2461 = !DILocation(line: 218, column: 33, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 218, column: 5)
!2463 = !DILocation(line: 218, column: 32, scope: !2462)
!2464 = !DILocation(line: 218, column: 5, scope: !2457)
!2465 = !DILocation(line: 220, column: 49, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 218, column: 61)
!2467 = !DILocation(line: 220, column: 57, scope: !2466)
!2468 = !DILocation(line: 220, column: 56, scope: !2466)
!2469 = !DILocation(line: 220, column: 16, scope: !2466)
!2470 = !DILocation(line: 220, column: 14, scope: !2466)
!2471 = !DILocation(line: 221, column: 13, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 221, column: 13)
!2473 = !DILocation(line: 221, column: 18, scope: !2472)
!2474 = !DILocation(line: 221, column: 13, scope: !2466)
!2475 = !DILocation(line: 222, column: 13, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 221, column: 27)
!2477 = !DILocation(line: 225, column: 18, scope: !2466)
!2478 = !DILocation(line: 225, column: 10, scope: !2466)
!2479 = !DILocation(line: 225, column: 16, scope: !2466)
!2480 = !DILocation(line: 226, column: 5, scope: !2466)
!2481 = !DILocation(line: 218, column: 49, scope: !2462)
!2482 = !DILocation(line: 218, column: 55, scope: !2462)
!2483 = !DILocation(line: 218, column: 46, scope: !2462)
!2484 = !DILocation(line: 218, column: 5, scope: !2462)
!2485 = distinct !{!2485, !2464, !2486, !2297, !2298}
!2486 = !DILocation(line: 226, column: 5, scope: !2457)
!2487 = !DILocation(line: 228, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 228, column: 9)
!2489 = !DILocation(line: 228, column: 16, scope: !2488)
!2490 = !{!2290, !2070, i64 64}
!2491 = !DILocation(line: 228, column: 21, scope: !2488)
!2492 = !DILocation(line: 228, column: 9, scope: !2381)
!2493 = !DILocation(line: 229, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 228, column: 30)
!2495 = !DILocation(line: 232, column: 29, scope: !2381)
!2496 = !DILocation(line: 232, column: 14, scope: !2381)
!2497 = !DILocation(line: 232, column: 12, scope: !2381)
!2498 = !DILocation(line: 233, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 233, column: 9)
!2500 = !DILocation(line: 233, column: 16, scope: !2499)
!2501 = !DILocation(line: 233, column: 9, scope: !2381)
!2502 = !DILocation(line: 234, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 233, column: 25)
!2504 = !DILocation(line: 237, column: 5, scope: !2381)
!2505 = !DILocation(line: 239, column: 20, scope: !2381)
!2506 = !DILocation(line: 239, column: 5, scope: !2381)
!2507 = !DILocation(line: 239, column: 13, scope: !2381)
!2508 = !DILocation(line: 239, column: 18, scope: !2381)
!2509 = !DILocation(line: 241, column: 22, scope: !2381)
!2510 = !DILocation(line: 241, column: 5, scope: !2381)
!2511 = !DILocation(line: 241, column: 13, scope: !2381)
!2512 = !DILocation(line: 241, column: 20, scope: !2381)
!2513 = !DILocation(line: 243, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 243, column: 5)
!2515 = !DILocation(line: 243, column: 27, scope: !2514)
!2516 = !DILocation(line: 243, column: 16, scope: !2514)
!2517 = !DILocation(line: 243, column: 10, scope: !2514)
!2518 = !DILocation(line: 243, column: 34, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 243, column: 5)
!2520 = !DILocation(line: 243, column: 33, scope: !2519)
!2521 = !DILocation(line: 243, column: 5, scope: !2514)
!2522 = !DILocation(line: 245, column: 49, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 243, column: 62)
!2524 = !DILocation(line: 245, column: 58, scope: !2523)
!2525 = !DILocation(line: 245, column: 57, scope: !2523)
!2526 = !DILocation(line: 245, column: 16, scope: !2523)
!2527 = !DILocation(line: 245, column: 14, scope: !2523)
!2528 = !DILocation(line: 246, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2523, file: !2, line: 246, column: 13)
!2530 = !DILocation(line: 246, column: 18, scope: !2529)
!2531 = !DILocation(line: 246, column: 13, scope: !2523)
!2532 = !DILocation(line: 247, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 246, column: 27)
!2534 = !DILocation(line: 250, column: 18, scope: !2523)
!2535 = !DILocation(line: 250, column: 10, scope: !2523)
!2536 = !DILocation(line: 250, column: 16, scope: !2523)
!2537 = !DILocation(line: 251, column: 5, scope: !2523)
!2538 = !DILocation(line: 243, column: 50, scope: !2519)
!2539 = !DILocation(line: 243, column: 56, scope: !2519)
!2540 = !DILocation(line: 243, column: 47, scope: !2519)
!2541 = !DILocation(line: 243, column: 5, scope: !2519)
!2542 = distinct !{!2542, !2521, !2543, !2297, !2298}
!2543 = !DILocation(line: 251, column: 5, scope: !2514)
!2544 = !DILocation(line: 253, column: 19, scope: !2381)
!2545 = !DILocation(line: 253, column: 5, scope: !2381)
!2546 = !DILocation(line: 253, column: 12, scope: !2381)
!2547 = !DILocation(line: 253, column: 17, scope: !2381)
!2548 = !DILocation(line: 255, column: 1, scope: !2381)
!2549 = !DILocation(line: 257, column: 23, scope: !2381)
!2550 = !DILocation(line: 257, column: 5, scope: !2381)
!2551 = !DILocation(line: 257, column: 11, scope: !2381)
!2552 = !DILocation(line: 257, column: 16, scope: !2381)
!2553 = !DILocation(line: 257, column: 21, scope: !2381)
!2554 = !DILocation(line: 259, column: 12, scope: !2381)
!2555 = !DILocation(line: 259, column: 5, scope: !2381)
!2556 = !DILocation(line: 260, column: 1, scope: !2381)
!2557 = distinct !DISubprogram(name: "ngx_http_upstream_zone_copy_peer", scope: !2, file: !2, line: 264, type: !2558, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!126, !103, !126}
!2560 = !{!2561, !2562, !2563, !2564, !2565}
!2561 = !DILocalVariable(name: "peers", arg: 1, scope: !2557, file: !2, line: 264, type: !103)
!2562 = !DILocalVariable(name: "src", arg: 2, scope: !2557, file: !2, line: 265, type: !126)
!2563 = !DILocalVariable(name: "pool", scope: !2557, file: !2, line: 267, type: !35)
!2564 = !DILocalVariable(name: "dst", scope: !2557, file: !2, line: 268, type: !126)
!2565 = !DILabel(scope: !2557, name: "failed", file: !2, line: 308)
!2566 = !DILocation(line: 264, column: 64, scope: !2557)
!2567 = !DILocation(line: 265, column: 34, scope: !2557)
!2568 = !DILocation(line: 267, column: 5, scope: !2557)
!2569 = !DILocation(line: 267, column: 35, scope: !2557)
!2570 = !DILocation(line: 268, column: 5, scope: !2557)
!2571 = !DILocation(line: 268, column: 35, scope: !2557)
!2572 = !DILocation(line: 270, column: 12, scope: !2557)
!2573 = !DILocation(line: 270, column: 19, scope: !2557)
!2574 = !DILocation(line: 270, column: 10, scope: !2557)
!2575 = !DILocation(line: 272, column: 34, scope: !2557)
!2576 = !DILocation(line: 272, column: 11, scope: !2557)
!2577 = !DILocation(line: 272, column: 9, scope: !2557)
!2578 = !DILocation(line: 273, column: 9, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 273, column: 9)
!2580 = !DILocation(line: 273, column: 13, scope: !2579)
!2581 = !DILocation(line: 273, column: 9, scope: !2557)
!2582 = !DILocation(line: 274, column: 9, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 273, column: 22)
!2584 = !DILocation(line: 277, column: 9, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 277, column: 9)
!2586 = !DILocation(line: 277, column: 9, scope: !2557)
!2587 = !DILocation(line: 278, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 277, column: 14)
!2589 = !DILocation(line: 279, column: 9, scope: !2588)
!2590 = !DILocation(line: 279, column: 14, scope: !2588)
!2591 = !DILocation(line: 279, column: 23, scope: !2588)
!2592 = !{!2593, !2070, i64 0}
!2593 = !{!"ngx_http_upstream_rr_peer_s", !2070, i64 0, !2256, i64 8, !2107, i64 16, !2107, i64 32, !2087, i64 48, !2087, i64 56, !2087, i64 64, !2087, i64 72, !2087, i64 80, !2087, i64 88, !2087, i64 96, !2087, i64 104, !2087, i64 112, !2087, i64 120, !2087, i64 128, !2087, i64 136, !2087, i64 144, !2070, i64 152, !2256, i64 160, !2087, i64 168, !2070, i64 176}
!2594 = !DILocation(line: 280, column: 9, scope: !2588)
!2595 = !DILocation(line: 280, column: 14, scope: !2588)
!2596 = !DILocation(line: 280, column: 19, scope: !2588)
!2597 = !DILocation(line: 280, column: 24, scope: !2588)
!2598 = !{!2593, !2070, i64 24}
!2599 = !DILocation(line: 281, column: 9, scope: !2588)
!2600 = !DILocation(line: 281, column: 14, scope: !2588)
!2601 = !DILocation(line: 281, column: 21, scope: !2588)
!2602 = !DILocation(line: 281, column: 26, scope: !2588)
!2603 = !{!2593, !2070, i64 40}
!2604 = !DILocation(line: 282, column: 5, scope: !2588)
!2605 = !DILocation(line: 284, column: 44, scope: !2557)
!2606 = !DILocation(line: 284, column: 21, scope: !2557)
!2607 = !DILocation(line: 284, column: 5, scope: !2557)
!2608 = !DILocation(line: 284, column: 10, scope: !2557)
!2609 = !DILocation(line: 284, column: 19, scope: !2557)
!2610 = !DILocation(line: 285, column: 9, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 285, column: 9)
!2612 = !DILocation(line: 285, column: 14, scope: !2611)
!2613 = !DILocation(line: 285, column: 23, scope: !2611)
!2614 = !DILocation(line: 285, column: 9, scope: !2557)
!2615 = !DILocation(line: 286, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2611, file: !2, line: 285, column: 32)
!2617 = !DILocation(line: 289, column: 45, scope: !2557)
!2618 = !DILocation(line: 289, column: 22, scope: !2557)
!2619 = !DILocation(line: 289, column: 5, scope: !2557)
!2620 = !DILocation(line: 289, column: 10, scope: !2557)
!2621 = !DILocation(line: 289, column: 15, scope: !2557)
!2622 = !DILocation(line: 289, column: 20, scope: !2557)
!2623 = !DILocation(line: 290, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 290, column: 9)
!2625 = !DILocation(line: 290, column: 14, scope: !2624)
!2626 = !DILocation(line: 290, column: 19, scope: !2624)
!2627 = !DILocation(line: 290, column: 24, scope: !2624)
!2628 = !DILocation(line: 290, column: 9, scope: !2557)
!2629 = !DILocation(line: 291, column: 9, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 290, column: 33)
!2631 = !DILocation(line: 294, column: 9, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 294, column: 9)
!2633 = !DILocation(line: 294, column: 9, scope: !2557)
!2634 = !DILocation(line: 295, column: 9, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !2, line: 294, column: 14)
!2636 = !{!2593, !2256, i64 8}
!2637 = !DILocation(line: 296, column: 9, scope: !2635)
!2638 = !{!2593, !2087, i64 16}
!2639 = !DILocation(line: 298, column: 50, scope: !2635)
!2640 = !DILocation(line: 298, column: 56, scope: !2635)
!2641 = !DILocation(line: 298, column: 61, scope: !2635)
!2642 = !DILocation(line: 298, column: 68, scope: !2635)
!2643 = !{!2593, !2087, i64 32}
!2644 = !DILocation(line: 298, column: 28, scope: !2635)
!2645 = !DILocation(line: 298, column: 9, scope: !2635)
!2646 = !DILocation(line: 298, column: 14, scope: !2635)
!2647 = !DILocation(line: 298, column: 21, scope: !2635)
!2648 = !DILocation(line: 298, column: 26, scope: !2635)
!2649 = !DILocation(line: 299, column: 13, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 299, column: 13)
!2651 = !DILocation(line: 299, column: 18, scope: !2650)
!2652 = !DILocation(line: 299, column: 25, scope: !2650)
!2653 = !DILocation(line: 299, column: 30, scope: !2650)
!2654 = !DILocation(line: 299, column: 13, scope: !2635)
!2655 = !DILocation(line: 300, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 299, column: 39)
!2657 = !DILocation(line: 303, column: 9, scope: !2635)
!2658 = !DILocation(line: 304, column: 5, scope: !2635)
!2659 = !DILocation(line: 306, column: 12, scope: !2557)
!2660 = !DILocation(line: 306, column: 5, scope: !2557)
!2661 = !DILocation(line: 308, column: 1, scope: !2557)
!2662 = !DILocation(line: 310, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 310, column: 9)
!2664 = !DILocation(line: 310, column: 14, scope: !2663)
!2665 = !DILocation(line: 310, column: 21, scope: !2663)
!2666 = !DILocation(line: 310, column: 9, scope: !2557)
!2667 = !DILocation(line: 311, column: 30, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 310, column: 27)
!2669 = !DILocation(line: 311, column: 36, scope: !2668)
!2670 = !DILocation(line: 311, column: 41, scope: !2668)
!2671 = !DILocation(line: 311, column: 48, scope: !2668)
!2672 = !DILocation(line: 311, column: 9, scope: !2668)
!2673 = !DILocation(line: 312, column: 5, scope: !2668)
!2674 = !DILocation(line: 314, column: 9, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 314, column: 9)
!2676 = !DILocation(line: 314, column: 14, scope: !2675)
!2677 = !DILocation(line: 314, column: 19, scope: !2675)
!2678 = !DILocation(line: 314, column: 9, scope: !2557)
!2679 = !DILocation(line: 315, column: 30, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !2, line: 314, column: 25)
!2681 = !DILocation(line: 315, column: 36, scope: !2680)
!2682 = !DILocation(line: 315, column: 41, scope: !2680)
!2683 = !DILocation(line: 315, column: 46, scope: !2680)
!2684 = !DILocation(line: 315, column: 9, scope: !2680)
!2685 = !DILocation(line: 316, column: 5, scope: !2680)
!2686 = !DILocation(line: 318, column: 9, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 318, column: 9)
!2688 = !DILocation(line: 318, column: 14, scope: !2687)
!2689 = !DILocation(line: 318, column: 9, scope: !2557)
!2690 = !DILocation(line: 319, column: 30, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !2, line: 318, column: 24)
!2692 = !DILocation(line: 319, column: 36, scope: !2691)
!2693 = !DILocation(line: 319, column: 41, scope: !2691)
!2694 = !DILocation(line: 319, column: 9, scope: !2691)
!2695 = !DILocation(line: 320, column: 5, scope: !2691)
!2696 = !DILocation(line: 322, column: 26, scope: !2557)
!2697 = !DILocation(line: 322, column: 32, scope: !2557)
!2698 = !DILocation(line: 322, column: 5, scope: !2557)
!2699 = !DILocation(line: 324, column: 5, scope: !2557)
!2700 = !DILocation(line: 325, column: 1, scope: !2557)
!2701 = !DISubprogram(name: "ngx_slab_calloc_locked", scope: !37, file: !37, line: 67, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2702 = !DISubprogram(name: "ngx_slab_alloc_locked", scope: !37, file: !37, line: 65, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2703 = !DISubprogram(name: "ngx_slab_free_locked", scope: !37, file: !37, line: 69, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !35, !16}
