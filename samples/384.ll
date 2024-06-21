; ModuleID = 'samples/384.bc'
source_filename = "src/http/modules/ngx_http_mirror_module.c"
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
%struct.ngx_http_mirror_loc_conf_t = type { ptr, i64 }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i112, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64 }
%struct.ngx_http_mirror_ctx_t = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110011111000110\00", align 1, !dbg !0
@ngx_http_mirror_module_ctx = internal global %struct.ngx_http_module_t { ptr null, ptr @ngx_http_mirror_init, ptr null, ptr null, ptr null, ptr null, ptr @ngx_http_mirror_create_loc_conf, ptr @ngx_http_mirror_merge_loc_conf }, align 8, !dbg !7
@ngx_http_mirror_commands = internal global [3 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 6, ptr @.str.1 }, i64 234881026, ptr @ngx_http_mirror, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 19, ptr @.str.2 }, i64 234881536, ptr @ngx_conf_set_flag_slot, i64 16, i64 8, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !634
@ngx_http_mirror_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1015008, ptr @.str, ptr @ngx_http_mirror_module_ctx, ptr @ngx_http_mirror_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !51
@ngx_http_core_module = external global %struct.ngx_module_s, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1, !dbg !624
@.str.2 = private unnamed_addr constant [20 x i8] c"mirror_request_body\00", align 1, !dbg !629
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !637
@.str.4 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1, !dbg !642

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_mirror_init(ptr noundef %cf) #0 !dbg !677 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %h = alloca ptr, align 8
  %cmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !679, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6, !dbg !2021
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !680, metadata !DIExpression()), !dbg !2022
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmcf) #6, !dbg !2023
  tail call void @llvm.dbg.declare(metadata ptr %cmcf, metadata !1960, metadata !DIExpression()), !dbg !2024
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2025, !tbaa !2016
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 7, !dbg !2025
  %1 = load ptr, ptr %ctx, align 8, !dbg !2025, !tbaa !2026
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %1, i32 0, i32 0, !dbg !2025
  %2 = load ptr, ptr %main_conf, align 8, !dbg !2025, !tbaa !2029
  %3 = load i64, ptr @ngx_http_core_module, align 8, !dbg !2025, !tbaa !2031
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2025
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2025, !tbaa !2016
  store ptr %4, ptr %cmcf, align 8, !dbg !2033, !tbaa !2016
  %5 = load ptr, ptr %cmcf, align 8, !dbg !2034, !tbaa !2016
  %phases = getelementptr inbounds %struct.ngx_http_core_main_conf_t, ptr %5, i32 0, i32 13, !dbg !2035
  %arrayidx1 = getelementptr inbounds [11 x %struct.ngx_http_phase_t], ptr %phases, i64 0, i64 8, !dbg !2034
  %handlers = getelementptr inbounds %struct.ngx_http_phase_t, ptr %arrayidx1, i32 0, i32 0, !dbg !2036
  %call = call ptr @ngx_array_push(ptr noundef %handlers), !dbg !2037
  store ptr %call, ptr %h, align 8, !dbg !2038, !tbaa !2016
  %6 = load ptr, ptr %h, align 8, !dbg !2039, !tbaa !2016
  %cmp = icmp eq ptr %6, null, !dbg !2041
  br i1 %cmp, label %if.then, label %if.end, !dbg !2042

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2043

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %h, align 8, !dbg !2045, !tbaa !2016
  store ptr @ngx_http_mirror_handler, ptr %7, align 8, !dbg !2046, !tbaa !2016
  store i64 0, ptr %retval, align 8, !dbg !2047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2047

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmcf) #6, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6, !dbg !2048
  %8 = load i64, ptr %retval, align 8, !dbg !2048
  ret i64 %8, !dbg !2048
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_mirror_create_loc_conf(ptr noundef %cf) #0 !dbg !2049 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %mlcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2051, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlcf) #6, !dbg !2060
  tail call void @llvm.dbg.declare(metadata ptr %mlcf, metadata !2052, metadata !DIExpression()), !dbg !2061
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2062, !tbaa !2016
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2063
  %1 = load ptr, ptr %pool, align 8, !dbg !2063, !tbaa !2064
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 16), !dbg !2065
  store ptr %call, ptr %mlcf, align 8, !dbg !2066, !tbaa !2016
  %2 = load ptr, ptr %mlcf, align 8, !dbg !2067, !tbaa !2016
  %cmp = icmp eq ptr %2, null, !dbg !2069
  br i1 %cmp, label %if.then, label %if.end, !dbg !2070

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2071

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mlcf, align 8, !dbg !2073, !tbaa !2016
  %mirror = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %3, i32 0, i32 0, !dbg !2074
  store ptr inttoptr (i64 -1 to ptr), ptr %mirror, align 8, !dbg !2075, !tbaa !2076
  %4 = load ptr, ptr %mlcf, align 8, !dbg !2078, !tbaa !2016
  %request_body = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %4, i32 0, i32 1, !dbg !2079
  store i64 -1, ptr %request_body, align 8, !dbg !2080, !tbaa !2081
  %5 = load ptr, ptr %mlcf, align 8, !dbg !2082, !tbaa !2016
  store ptr %5, ptr %retval, align 8, !dbg !2083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2083

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlcf) #6, !dbg !2084
  %6 = load ptr, ptr %retval, align 8, !dbg !2084
  ret ptr %6, !dbg !2084
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_mirror_merge_loc_conf(ptr noundef %cf, ptr noundef %parent, ptr noundef %child) #0 !dbg !2085 {
entry:
  %cf.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2087, metadata !DIExpression()), !dbg !2092
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2088, metadata !DIExpression()), !dbg !2093
  store ptr %child, ptr %child.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !2089, metadata !DIExpression()), !dbg !2094
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !2095
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !2090, metadata !DIExpression()), !dbg !2096
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2097, !tbaa !2016
  store ptr %0, ptr %prev, align 8, !dbg !2096, !tbaa !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2098
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2091, metadata !DIExpression()), !dbg !2099
  %1 = load ptr, ptr %child.addr, align 8, !dbg !2100, !tbaa !2016
  store ptr %1, ptr %conf, align 8, !dbg !2099, !tbaa !2016
  %2 = load ptr, ptr %conf, align 8, !dbg !2101, !tbaa !2016
  %mirror = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %2, i32 0, i32 0, !dbg !2101
  %3 = load ptr, ptr %mirror, align 8, !dbg !2101, !tbaa !2076
  %cmp = icmp eq ptr %3, inttoptr (i64 -1 to ptr), !dbg !2101
  br i1 %cmp, label %if.then, label %if.end, !dbg !2103

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %prev, align 8, !dbg !2104, !tbaa !2016
  %mirror1 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !2104
  %5 = load ptr, ptr %mirror1, align 8, !dbg !2104, !tbaa !2076
  %cmp2 = icmp eq ptr %5, inttoptr (i64 -1 to ptr), !dbg !2104
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !2104

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !2104

cond.false:                                       ; preds = %if.then
  %6 = load ptr, ptr %prev, align 8, !dbg !2104, !tbaa !2016
  %mirror3 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !2104
  %7 = load ptr, ptr %mirror3, align 8, !dbg !2104, !tbaa !2076
  br label %cond.end, !dbg !2104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %7, %cond.false ], !dbg !2104
  %8 = load ptr, ptr %conf, align 8, !dbg !2104, !tbaa !2016
  %mirror4 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !2104
  store ptr %cond, ptr %mirror4, align 8, !dbg !2104, !tbaa !2076
  br label %if.end, !dbg !2104

if.end:                                           ; preds = %cond.end, %entry
  %9 = load ptr, ptr %conf, align 8, !dbg !2106, !tbaa !2016
  %request_body = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %9, i32 0, i32 1, !dbg !2106
  %10 = load i64, ptr %request_body, align 8, !dbg !2106, !tbaa !2081
  %cmp5 = icmp eq i64 %10, -1, !dbg !2106
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !2108

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %prev, align 8, !dbg !2109, !tbaa !2016
  %request_body7 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %11, i32 0, i32 1, !dbg !2109
  %12 = load i64, ptr %request_body7, align 8, !dbg !2109, !tbaa !2081
  %cmp8 = icmp eq i64 %12, -1, !dbg !2109
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !2109

cond.true9:                                       ; preds = %if.then6
  br label %cond.end12, !dbg !2109

cond.false10:                                     ; preds = %if.then6
  %13 = load ptr, ptr %prev, align 8, !dbg !2109, !tbaa !2016
  %request_body11 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %13, i32 0, i32 1, !dbg !2109
  %14 = load i64, ptr %request_body11, align 8, !dbg !2109, !tbaa !2081
  br label %cond.end12, !dbg !2109

cond.end12:                                       ; preds = %cond.false10, %cond.true9
  %cond13 = phi i64 [ 1, %cond.true9 ], [ %14, %cond.false10 ], !dbg !2109
  %15 = load ptr, ptr %conf, align 8, !dbg !2109, !tbaa !2016
  %request_body14 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %15, i32 0, i32 1, !dbg !2109
  store i64 %cond13, ptr %request_body14, align 8, !dbg !2109, !tbaa !2081
  br label %if.end15, !dbg !2109

if.end15:                                         ; preds = %cond.end12, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !2111
  ret ptr null, !dbg !2112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2113 ptr @ngx_array_push(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_mirror_handler(ptr noundef %r) #0 !dbg !2116 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %mlcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2118, metadata !DIExpression()), !dbg !2127
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !2128
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2119, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6, !dbg !2130
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2120, metadata !DIExpression()), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlcf) #6, !dbg !2132
  tail call void @llvm.dbg.declare(metadata ptr %mlcf, metadata !2126, metadata !DIExpression()), !dbg !2133
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2134, !tbaa !2016
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2136, !tbaa !2016
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 30, !dbg !2137
  %2 = load ptr, ptr %main, align 8, !dbg !2137, !tbaa !2138
  %cmp = icmp ne ptr %0, %2, !dbg !2147
  br i1 %cmp, label %if.then, label %if.end, !dbg !2148

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !2149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2149

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !2151, !tbaa !2016
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %3, i32 0, i32 5, !dbg !2151
  %4 = load ptr, ptr %loc_conf, align 8, !dbg !2151, !tbaa !2152
  %5 = load i64, ptr @ngx_http_mirror_module, align 8, !dbg !2151, !tbaa !2031
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5, !dbg !2151
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2151, !tbaa !2016
  store ptr %6, ptr %mlcf, align 8, !dbg !2153, !tbaa !2016
  %7 = load ptr, ptr %mlcf, align 8, !dbg !2154, !tbaa !2016
  %mirror = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %7, i32 0, i32 0, !dbg !2156
  %8 = load ptr, ptr %mirror, align 8, !dbg !2156, !tbaa !2076
  %cmp1 = icmp eq ptr %8, null, !dbg !2157
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2158

if.then2:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %mlcf, align 8, !dbg !2161, !tbaa !2016
  %request_body = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %9, i32 0, i32 1, !dbg !2163
  %10 = load i64, ptr %request_body, align 8, !dbg !2163, !tbaa !2081
  %tobool = icmp ne i64 %10, 0, !dbg !2161
  br i1 %tobool, label %if.then4, label %if.end20, !dbg !2164

if.then4:                                         ; preds = %if.end3
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2165, !tbaa !2016
  %ctx5 = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 2, !dbg !2165
  %12 = load ptr, ptr %ctx5, align 8, !dbg !2165, !tbaa !2167
  %13 = load i64, ptr @ngx_http_mirror_module, align 8, !dbg !2165, !tbaa !2031
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !2165
  %14 = load ptr, ptr %arrayidx6, align 8, !dbg !2165, !tbaa !2016
  store ptr %14, ptr %ctx, align 8, !dbg !2168, !tbaa !2016
  %15 = load ptr, ptr %ctx, align 8, !dbg !2169, !tbaa !2016
  %tobool7 = icmp ne ptr %15, null, !dbg !2169
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2171

if.then8:                                         ; preds = %if.then4
  %16 = load ptr, ptr %ctx, align 8, !dbg !2172, !tbaa !2016
  %status = getelementptr inbounds %struct.ngx_http_mirror_ctx_t, ptr %16, i32 0, i32 0, !dbg !2174
  %17 = load i64, ptr %status, align 8, !dbg !2174, !tbaa !2175
  store i64 %17, ptr %retval, align 8, !dbg !2177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2177

if.end9:                                          ; preds = %if.then4
  %18 = load ptr, ptr %r.addr, align 8, !dbg !2178, !tbaa !2016
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 11, !dbg !2179
  %19 = load ptr, ptr %pool, align 8, !dbg !2179, !tbaa !2180
  %call = call ptr @ngx_pcalloc(ptr noundef %19, i64 noundef 8), !dbg !2181
  store ptr %call, ptr %ctx, align 8, !dbg !2182, !tbaa !2016
  %20 = load ptr, ptr %ctx, align 8, !dbg !2183, !tbaa !2016
  %cmp10 = icmp eq ptr %20, null, !dbg !2185
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2186

if.then11:                                        ; preds = %if.end9
  store i64 -1, ptr %retval, align 8, !dbg !2187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2187

if.end12:                                         ; preds = %if.end9
  %21 = load ptr, ptr %ctx, align 8, !dbg !2189, !tbaa !2016
  %status13 = getelementptr inbounds %struct.ngx_http_mirror_ctx_t, ptr %21, i32 0, i32 0, !dbg !2190
  store i64 -4, ptr %status13, align 8, !dbg !2191, !tbaa !2175
  %22 = load ptr, ptr %ctx, align 8, !dbg !2192, !tbaa !2016
  %23 = load ptr, ptr %r.addr, align 8, !dbg !2192, !tbaa !2016
  %ctx14 = getelementptr inbounds %struct.ngx_http_request_s, ptr %23, i32 0, i32 2, !dbg !2192
  %24 = load ptr, ptr %ctx14, align 8, !dbg !2192, !tbaa !2167
  %25 = load i64, ptr @ngx_http_mirror_module, align 8, !dbg !2192, !tbaa !2031
  %arrayidx15 = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !2192
  store ptr %22, ptr %arrayidx15, align 8, !dbg !2192, !tbaa !2016
  %26 = load ptr, ptr %r.addr, align 8, !dbg !2193, !tbaa !2016
  %call16 = call i64 @ngx_http_read_client_request_body(ptr noundef %26, ptr noundef @ngx_http_mirror_body_handler), !dbg !2194
  store i64 %call16, ptr %rc, align 8, !dbg !2195, !tbaa !2196
  %27 = load i64, ptr %rc, align 8, !dbg !2197, !tbaa !2196
  %cmp17 = icmp sge i64 %27, 300, !dbg !2199
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2200

if.then18:                                        ; preds = %if.end12
  %28 = load i64, ptr %rc, align 8, !dbg !2201, !tbaa !2196
  store i64 %28, ptr %retval, align 8, !dbg !2203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2203

if.end19:                                         ; preds = %if.end12
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2204, !tbaa !2016
  call void @ngx_http_finalize_request(ptr noundef %29, i64 noundef -4), !dbg !2205
  store i64 -4, ptr %retval, align 8, !dbg !2206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2206

if.end20:                                         ; preds = %if.end3
  %30 = load ptr, ptr %r.addr, align 8, !dbg !2207, !tbaa !2016
  %call21 = call i64 @ngx_http_mirror_handler_internal(ptr noundef %30), !dbg !2208
  store i64 %call21, ptr %retval, align 8, !dbg !2209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2209

cleanup:                                          ; preds = %if.end20, %if.end19, %if.then18, %if.then11, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlcf) #6, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2210
  %31 = load i64, ptr %retval, align 8, !dbg !2210
  ret i64 %31, !dbg !2210
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2211 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

declare !dbg !2214 i64 @ngx_http_read_client_request_body(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @ngx_http_mirror_body_handler(ptr noundef %r) #0 !dbg !2217 {
entry:
  %r.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6, !dbg !2222
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2220, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2224, !tbaa !2016
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !2224
  %1 = load ptr, ptr %ctx1, align 8, !dbg !2224, !tbaa !2167
  %2 = load i64, ptr @ngx_http_mirror_module, align 8, !dbg !2224, !tbaa !2031
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2224
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2224, !tbaa !2016
  store ptr %3, ptr %ctx, align 8, !dbg !2225, !tbaa !2016
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2226, !tbaa !2016
  %call = call i64 @ngx_http_mirror_handler_internal(ptr noundef %4), !dbg !2227
  %5 = load ptr, ptr %ctx, align 8, !dbg !2228, !tbaa !2016
  %status = getelementptr inbounds %struct.ngx_http_mirror_ctx_t, ptr %5, i32 0, i32 0, !dbg !2229
  store i64 %call, ptr %status, align 8, !dbg !2230, !tbaa !2175
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2231, !tbaa !2016
  %preserve_body = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 48, !dbg !2232
  %bf.load = load i128, ptr %preserve_body, align 8, !dbg !2233
  %bf.clear = and i128 %bf.load, -79228162514264337593543950337, !dbg !2233
  %bf.set = or i128 %bf.clear, 79228162514264337593543950336, !dbg !2233
  store i128 %bf.set, ptr %preserve_body, align 8, !dbg !2233
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2234, !tbaa !2016
  %write_event_handler = getelementptr inbounds %struct.ngx_http_request_s, ptr %7, i32 0, i32 7, !dbg !2235
  store ptr @ngx_http_core_run_phases, ptr %write_event_handler, align 8, !dbg !2236, !tbaa !2237
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2238, !tbaa !2016
  call void @ngx_http_core_run_phases(ptr noundef %8), !dbg !2239
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6, !dbg !2240
  ret void, !dbg !2240
}

declare !dbg !2241 void @ngx_http_finalize_request(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_mirror_handler_internal(ptr noundef %r) #0 !dbg !2242 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %i = alloca i64, align 8
  %sr = alloca ptr, align 8
  %mlcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !2250
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2245, metadata !DIExpression()), !dbg !2251
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !2252
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2246, metadata !DIExpression()), !dbg !2253
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr) #6, !dbg !2254
  tail call void @llvm.dbg.declare(metadata ptr %sr, metadata !2247, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlcf) #6, !dbg !2256
  tail call void @llvm.dbg.declare(metadata ptr %mlcf, metadata !2248, metadata !DIExpression()), !dbg !2257
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2258, !tbaa !2016
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !2258
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !2258, !tbaa !2152
  %2 = load i64, ptr @ngx_http_mirror_module, align 8, !dbg !2258, !tbaa !2031
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2258
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2258, !tbaa !2016
  store ptr %3, ptr %mlcf, align 8, !dbg !2259, !tbaa !2016
  %4 = load ptr, ptr %mlcf, align 8, !dbg !2260, !tbaa !2016
  %mirror = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %4, i32 0, i32 0, !dbg !2261
  %5 = load ptr, ptr %mirror, align 8, !dbg !2261, !tbaa !2076
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %5, i32 0, i32 0, !dbg !2262
  %6 = load ptr, ptr %elts, align 8, !dbg !2262, !tbaa !2263
  store ptr %6, ptr %name, align 8, !dbg !2264, !tbaa !2016
  store i64 0, ptr %i, align 8, !dbg !2265, !tbaa !2196
  br label %for.cond, !dbg !2267

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !dbg !2268, !tbaa !2196
  %8 = load ptr, ptr %mlcf, align 8, !dbg !2270, !tbaa !2016
  %mirror1 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !2271
  %9 = load ptr, ptr %mirror1, align 8, !dbg !2271, !tbaa !2076
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %9, i32 0, i32 1, !dbg !2272
  %10 = load i64, ptr %nelts, align 8, !dbg !2272, !tbaa !2273
  %cmp = icmp ult i64 %7, %10, !dbg !2274
  br i1 %cmp, label %for.body, label %for.end, !dbg !2275

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2276, !tbaa !2016
  %12 = load ptr, ptr %name, align 8, !dbg !2279, !tbaa !2016
  %13 = load i64, ptr %i, align 8, !dbg !2280, !tbaa !2196
  %arrayidx2 = getelementptr inbounds %struct.ngx_str_t, ptr %12, i64 %13, !dbg !2279
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2281, !tbaa !2016
  %args = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 23, !dbg !2282
  %call = call i64 @ngx_http_subrequest(ptr noundef %11, ptr noundef %arrayidx2, ptr noundef %args, ptr noundef %sr, ptr noundef null, i64 noundef 16), !dbg !2283
  %cmp3 = icmp ne i64 %call, 0, !dbg !2284
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2285

if.then:                                          ; preds = %for.body
  store i64 500, ptr %retval, align 8, !dbg !2286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2286

if.end:                                           ; preds = %for.body
  %15 = load ptr, ptr %sr, align 8, !dbg !2288, !tbaa !2016
  %header_only = getelementptr inbounds %struct.ngx_http_request_s, ptr %15, i32 0, i32 48, !dbg !2289
  %bf.load = load i128, ptr %header_only, align 8, !dbg !2290
  %bf.clear = and i128 %bf.load, -4722366482869645213697, !dbg !2290
  %bf.set = or i128 %bf.clear, 4722366482869645213696, !dbg !2290
  store i128 %bf.set, ptr %header_only, align 8, !dbg !2290
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2291, !tbaa !2016
  %method = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 19, !dbg !2292
  %17 = load i64, ptr %method, align 8, !dbg !2292, !tbaa !2293
  %18 = load ptr, ptr %sr, align 8, !dbg !2294, !tbaa !2016
  %method4 = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 19, !dbg !2295
  store i64 %17, ptr %method4, align 8, !dbg !2296, !tbaa !2293
  %19 = load ptr, ptr %sr, align 8, !dbg !2297, !tbaa !2016
  %method_name = getelementptr inbounds %struct.ngx_http_request_s, ptr %19, i32 0, i32 26, !dbg !2298
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2299, !tbaa !2016
  %method_name5 = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 26, !dbg !2300
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %method_name, ptr align 8 %method_name5, i64 16, i1 false), !dbg !2300, !tbaa.struct !2301
  br label %for.inc, !dbg !2302

for.inc:                                          ; preds = %if.end
  %21 = load i64, ptr %i, align 8, !dbg !2303, !tbaa !2196
  %inc = add i64 %21, 1, !dbg !2303
  store i64 %inc, ptr %i, align 8, !dbg !2303, !tbaa !2196
  br label %for.cond, !dbg !2304, !llvm.loop !2305

for.end:                                          ; preds = %for.cond
  store i64 -5, ptr %retval, align 8, !dbg !2308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2308

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlcf) #6, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr) #6, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !2309
  %22 = load i64, ptr %retval, align 8, !dbg !2309
  ret i64 %22, !dbg !2309
}

declare !dbg !2310 void @ngx_http_core_run_phases(ptr noundef) #2

declare !dbg !2311 i64 @ngx_http_subrequest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_mirror(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2315 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %mlcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2317, metadata !DIExpression()), !dbg !2323
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2318, metadata !DIExpression()), !dbg !2324
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2016
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2319, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlcf) #6, !dbg !2326
  tail call void @llvm.dbg.declare(metadata ptr %mlcf, metadata !2320, metadata !DIExpression()), !dbg !2327
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2328, !tbaa !2016
  store ptr %0, ptr %mlcf, align 8, !dbg !2327, !tbaa !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #6, !dbg !2329
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2321, metadata !DIExpression()), !dbg !2330
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6, !dbg !2329
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2322, metadata !DIExpression()), !dbg !2331
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2332, !tbaa !2016
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !2333
  %2 = load ptr, ptr %args, align 8, !dbg !2333, !tbaa !2334
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !2335
  %3 = load ptr, ptr %elts, align 8, !dbg !2335, !tbaa !2263
  store ptr %3, ptr %value, align 8, !dbg !2336, !tbaa !2016
  %4 = load ptr, ptr %value, align 8, !dbg !2337, !tbaa !2016
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %4, i64 1, !dbg !2337
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !2337
  %5 = load ptr, ptr %data, align 8, !dbg !2337, !tbaa !2339
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.3) #7, !dbg !2337
  %cmp = icmp eq i32 %call, 0, !dbg !2340
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2341

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %mlcf, align 8, !dbg !2342, !tbaa !2016
  %mirror = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %6, i32 0, i32 0, !dbg !2345
  %7 = load ptr, ptr %mirror, align 8, !dbg !2345, !tbaa !2076
  %cmp1 = icmp ne ptr %7, inttoptr (i64 -1 to ptr), !dbg !2346
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2347

if.then2:                                         ; preds = %if.then
  store ptr @.str.4, ptr %retval, align 8, !dbg !2348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2348

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %mlcf, align 8, !dbg !2350, !tbaa !2016
  %mirror3 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %8, i32 0, i32 0, !dbg !2351
  store ptr null, ptr %mirror3, align 8, !dbg !2352, !tbaa !2076
  store ptr null, ptr %retval, align 8, !dbg !2353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2353

if.end4:                                          ; preds = %entry
  %9 = load ptr, ptr %mlcf, align 8, !dbg !2354, !tbaa !2016
  %mirror5 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %9, i32 0, i32 0, !dbg !2356
  %10 = load ptr, ptr %mirror5, align 8, !dbg !2356, !tbaa !2076
  %cmp6 = icmp eq ptr %10, null, !dbg !2357
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2358

if.then7:                                         ; preds = %if.end4
  store ptr @.str.4, ptr %retval, align 8, !dbg !2359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2359

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %mlcf, align 8, !dbg !2361, !tbaa !2016
  %mirror9 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %11, i32 0, i32 0, !dbg !2363
  %12 = load ptr, ptr %mirror9, align 8, !dbg !2363, !tbaa !2076
  %cmp10 = icmp eq ptr %12, inttoptr (i64 -1 to ptr), !dbg !2364
  br i1 %cmp10, label %if.then11, label %if.end18, !dbg !2365

if.then11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !2366, !tbaa !2016
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %13, i32 0, i32 3, !dbg !2368
  %14 = load ptr, ptr %pool, align 8, !dbg !2368, !tbaa !2064
  %call12 = call ptr @ngx_array_create(ptr noundef %14, i64 noundef 4, i64 noundef 16), !dbg !2369
  %15 = load ptr, ptr %mlcf, align 8, !dbg !2370, !tbaa !2016
  %mirror13 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %15, i32 0, i32 0, !dbg !2371
  store ptr %call12, ptr %mirror13, align 8, !dbg !2372, !tbaa !2076
  %16 = load ptr, ptr %mlcf, align 8, !dbg !2373, !tbaa !2016
  %mirror14 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %16, i32 0, i32 0, !dbg !2375
  %17 = load ptr, ptr %mirror14, align 8, !dbg !2375, !tbaa !2076
  %cmp15 = icmp eq ptr %17, null, !dbg !2376
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2377

if.then16:                                        ; preds = %if.then11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2378

if.end17:                                         ; preds = %if.then11
  br label %if.end18, !dbg !2380

if.end18:                                         ; preds = %if.end17, %if.end8
  %18 = load ptr, ptr %mlcf, align 8, !dbg !2381, !tbaa !2016
  %mirror19 = getelementptr inbounds %struct.ngx_http_mirror_loc_conf_t, ptr %18, i32 0, i32 0, !dbg !2382
  %19 = load ptr, ptr %mirror19, align 8, !dbg !2382, !tbaa !2076
  %call20 = call ptr @ngx_array_push(ptr noundef %19), !dbg !2383
  store ptr %call20, ptr %s, align 8, !dbg !2384, !tbaa !2016
  %20 = load ptr, ptr %s, align 8, !dbg !2385, !tbaa !2016
  %cmp21 = icmp eq ptr %20, null, !dbg !2387
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2388

if.then22:                                        ; preds = %if.end18
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2389

if.end23:                                         ; preds = %if.end18
  %21 = load ptr, ptr %s, align 8, !dbg !2391, !tbaa !2016
  %22 = load ptr, ptr %value, align 8, !dbg !2392, !tbaa !2016
  %arrayidx24 = getelementptr inbounds %struct.ngx_str_t, ptr %22, i64 1, !dbg !2392
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %arrayidx24, i64 16, i1 false), !dbg !2392, !tbaa.struct !2301
  store ptr null, ptr %retval, align 8, !dbg !2393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2393

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then16, %if.then7, %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #6, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlcf) #6, !dbg !2394
  %23 = load ptr, ptr %retval, align 8, !dbg !2394
  ret ptr %23, !dbg !2394
}

declare ptr @ngx_conf_set_flag_slot(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2395 i32 @strcmp(ptr noundef, ptr noundef) #4

declare !dbg !2399 ptr @ngx_array_create(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!670, !671, !672, !673, !674, !675}
!llvm.ident = !{!676}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_mirror_module.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "e436a9f07e10f99d53dc82b26d42e3e7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_mirror_module_ctx", scope: !9, file: !2, line: 54, type: !647, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !26, globals: !50, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 108, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
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
!26 = !{!27, !32, !33, !42, !48}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !28, line: 79, baseType: !29)
!28 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !30, line: 90, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !35, line: 21, baseType: !36)
!35 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 17, size: 192, elements: !37)
!37 = !{!38, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !36, file: !35, line: 18, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !36, file: !35, line: 19, baseType: !39, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !36, file: !35, line: 20, baseType: !39, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !44, line: 33, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!50 = !{!0, !51, !7, !624, !629, !634, !637, !642}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "ngx_http_mirror_module", scope: !9, file: !2, line: 69, type: !53, isLocal: false, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !54, line: 15, baseType: !55)
!54 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !56, line: 222, size: 1600, elements: !57)
!56 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!57 = !{!58, !59, !60, !62, !63, !64, !65, !66, !67, !599, !600, !604, !608, !609, !610, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !55, file: !56, line: 223, baseType: !27, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !55, file: !56, line: 224, baseType: !27, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !56, line: 226, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !55, file: !56, line: 228, baseType: !27, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !55, file: !56, line: 229, baseType: !27, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !55, file: !56, line: 231, baseType: !27, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !55, file: !56, line: 232, baseType: !48, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !55, file: !56, line: 234, baseType: !32, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !55, file: !56, line: 235, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !54, line: 22, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !71, line: 77, size: 448, elements: !72)
!71 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!72 = !{!73, !82, !83, !596, !597, !598}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 78, baseType: !74, size: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !75, line: 19, baseType: !76)
!75 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 16, size: 128, elements: !77)
!77 = !{!78, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !76, file: !75, line: 17, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 29, baseType: !31)
!80 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !75, line: 18, baseType: !42, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !71, line: 79, baseType: !27, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !70, file: !71, line: 80, baseType: !84, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!61, !87, !68, !32}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !54, line: 16, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !71, line: 116, size: 768, elements: !90)
!90 = !{!91, !92, !267, !578, !579, !580, !589, !590, !591, !592, !593, !595}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !71, line: 117, baseType: !61, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !89, file: !71, line: 118, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !95, line: 22, baseType: !96)
!95 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 16, size: 320, elements: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !96, file: !95, line: 17, baseType: !32, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !96, file: !95, line: 18, baseType: !27, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !96, file: !95, line: 19, baseType: !79, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !96, file: !95, line: 20, baseType: !27, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !96, file: !95, line: 21, baseType: !103, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !54, line: 18, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !106, line: 57, size: 640, elements: !107)
!106 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!107 = !{!108, !116, !117, !118, !247, !254, !266}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !105, file: !106, line: 58, baseType: !109, size: 256)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !106, line: 54, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 49, size: 256, elements: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !110, file: !106, line: 50, baseType: !42, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !110, file: !106, line: 51, baseType: !42, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !106, line: 52, baseType: !103, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !110, file: !106, line: 53, baseType: !27, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !105, file: !106, line: 59, baseType: !79, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !105, file: !106, line: 60, baseType: !103, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !105, file: !106, line: 61, baseType: !119, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !54, line: 19, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !122, line: 59, size: 128, elements: !123)
!122 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!123 = !{!124, !246}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !121, file: !122, line: 60, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !122, line: 18, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !122, line: 20, size: 640, elements: !128)
!128 = !{!129, !130, !131, !135, !136, !137, !138, !140, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !127, file: !122, line: 21, baseType: !42, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !127, file: !122, line: 22, baseType: !42, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !127, file: !122, line: 23, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !44, line: 87, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 153, baseType: !134)
!134 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !127, file: !122, line: 24, baseType: !132, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !127, file: !122, line: 26, baseType: !42, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !127, file: !122, line: 27, baseType: !42, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !127, file: !122, line: 28, baseType: !139, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !122, line: 16, baseType: !32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !127, file: !122, line: 29, baseType: !141, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !54, line: 23, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !144, line: 16, size: 1600, elements: !145)
!144 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!145 = !{!146, !150, !151, !190, !191, !192, !231, !232}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !143, file: !144, line: 17, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !148, line: 16, baseType: !149)
!148 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 18, baseType: !74, size: 128, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !143, file: !144, line: 19, baseType: !152, size: 1152, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !148, line: 17, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !154, line: 26, size: 1152, elements: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!155 = !{!156, !158, !160, !162, !164, !166, !168, !169, !170, !172, !174, !176, !184, !185, !186}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !153, file: !154, line: 31, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !46, line: 145, baseType: !31)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !153, file: !154, line: 36, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !46, line: 148, baseType: !31)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !153, file: !154, line: 44, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !46, line: 151, baseType: !31)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !153, file: !154, line: 45, baseType: !163, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !46, line: 150, baseType: !13)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !153, file: !154, line: 47, baseType: !165, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !46, line: 146, baseType: !13)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !153, file: !154, line: 48, baseType: !167, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !46, line: 147, baseType: !13)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !153, file: !154, line: 50, baseType: !149, size: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !153, file: !154, line: 52, baseType: !157, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !153, file: !154, line: 57, baseType: !171, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 152, baseType: !134)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !153, file: !154, line: 61, baseType: !173, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !46, line: 175, baseType: !134)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !153, file: !154, line: 63, baseType: !175, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !46, line: 180, baseType: !134)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !153, file: !154, line: 74, baseType: !177, size: 128, offset: 576)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !178, line: 11, size: 128, elements: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !177, file: !178, line: 16, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !46, line: 160, baseType: !134)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !177, file: !178, line: 21, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !46, line: 197, baseType: !134)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !153, file: !154, line: 75, baseType: !177, size: 128, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !153, file: !154, line: 76, baseType: !177, size: 128, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !153, file: !154, line: 89, baseType: !187, size: 192, offset: 960)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 192, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !143, file: !144, line: 21, baseType: !132, size: 64, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !143, file: !144, line: 22, baseType: !132, size: 64, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !143, file: !144, line: 24, baseType: !193, size: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !54, line: 20, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !196, line: 50, size: 640, elements: !197)
!196 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!197 = !{!198, !199, !211, !214, !217, !222, !223, !228, !229, !230}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !195, file: !196, line: 51, baseType: !27, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !195, file: !196, line: 52, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !54, line: 21, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !71, line: 89, size: 320, elements: !203)
!203 = !{!204, !205, !206, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !202, file: !71, line: 90, baseType: !147, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !71, line: 91, baseType: !74, size: 128, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !202, file: !71, line: 93, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !200, !193}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !202, file: !71, line: 94, baseType: !32, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !195, file: !196, line: 54, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !213, line: 98, baseType: !31)
!213 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !195, file: !196, line: 56, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !216, line: 10, baseType: !181)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !195, file: !196, line: 58, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !196, line: 45, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!42, !193, !42, !79}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !195, file: !196, line: 59, baseType: !32, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !195, file: !196, line: 61, baseType: !224, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !196, line: 46, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !193, !27, !42, !79}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !195, file: !196, line: 62, baseType: !32, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !195, file: !196, line: 70, baseType: !61, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !196, line: 72, baseType: !193, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !143, file: !144, line: 37, baseType: !13, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !143, file: !144, line: 38, baseType: !13, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !127, file: !122, line: 30, baseType: !125, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !127, file: !122, line: 34, baseType: !13, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !127, file: !122, line: 40, baseType: !13, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !127, file: !122, line: 43, baseType: !13, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !127, file: !122, line: 45, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !127, file: !122, line: 46, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !127, file: !122, line: 47, baseType: !13, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !127, file: !122, line: 48, baseType: !13, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !127, file: !122, line: 49, baseType: !13, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !127, file: !122, line: 50, baseType: !13, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !127, file: !122, line: 52, baseType: !13, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !127, file: !122, line: 53, baseType: !13, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !127, file: !122, line: 55, baseType: !149, size: 32, offset: 608)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !122, line: 61, baseType: !119, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !105, file: !106, line: 62, baseType: !248, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !106, line: 41, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !106, line: 43, size: 128, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !106, line: 44, baseType: !248, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !250, file: !106, line: 45, baseType: !32, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !105, file: !106, line: 63, baseType: !255, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !106, line: 32, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !106, line: 34, size: 192, elements: !258)
!258 = !{!259, !264, !265}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !257, file: !106, line: 35, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !106, line: 30, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !32}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !257, file: !106, line: 36, baseType: !32, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !106, line: 37, baseType: !255, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !105, file: !106, line: 64, baseType: !193, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !89, file: !71, line: 120, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !54, line: 17, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !271, line: 47, size: 5184, elements: !272)
!271 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!272 = !{!273, !276, !277, !278, !279, !280, !527, !528, !529, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !576, !577}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !270, file: !271, line: 48, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !270, file: !271, line: 49, baseType: !103, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !270, file: !271, line: 51, baseType: !193, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !270, file: !271, line: 52, baseType: !194, size: 640, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !270, file: !271, line: 54, baseType: !27, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !270, file: !271, line: 56, baseType: !281, size: 64, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !54, line: 26, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !285, line: 124, size: 1920, elements: !286)
!285 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!286 = !{!287, !288, !345, !346, !349, !357, !359, !364, !369, !448, !449, !450, !451, !452, !453, !454, !455, !456, !462, !503, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !284, file: !285, line: 125, baseType: !32, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !284, file: !285, line: 126, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !54, line: 24, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !292, line: 30, size: 768, elements: !293)
!292 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !322, !323, !324, !337}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !291, file: !292, line: 31, baseType: !32, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !291, file: !292, line: 33, baseType: !13, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !291, file: !292, line: 35, baseType: !13, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !291, file: !292, line: 38, baseType: !13, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !291, file: !292, line: 44, baseType: !13, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !291, file: !292, line: 46, baseType: !13, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !291, file: !292, line: 49, baseType: !13, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !291, file: !292, line: 51, baseType: !13, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !291, file: !292, line: 54, baseType: !13, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !291, file: !292, line: 56, baseType: !13, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !291, file: !292, line: 57, baseType: !13, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !291, file: !292, line: 59, baseType: !13, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !291, file: !292, line: 60, baseType: !13, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !291, file: !292, line: 62, baseType: !13, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !291, file: !292, line: 64, baseType: !13, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !291, file: !292, line: 67, baseType: !13, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !291, file: !292, line: 69, baseType: !13, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !291, file: !292, line: 71, baseType: !13, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !291, file: !292, line: 74, baseType: !13, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !291, file: !292, line: 75, baseType: !13, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !291, file: !292, line: 77, baseType: !13, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !291, file: !292, line: 80, baseType: !13, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !291, file: !292, line: 110, baseType: !13, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !291, file: !292, line: 113, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !54, line: 32, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !289}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !291, file: !292, line: 120, baseType: !27, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !291, file: !292, line: 122, baseType: !193, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !291, file: !292, line: 124, baseType: !325, size: 320, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !326, line: 20, baseType: !327)
!326 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !326, line: 22, size: 320, elements: !328)
!328 = !{!329, !331, !333, !334, !335, !336}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !327, file: !326, line: 23, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !326, line: 16, baseType: !27)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !327, file: !326, line: 24, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !327, file: !326, line: 25, baseType: !332, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !327, file: !326, line: 26, baseType: !332, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !327, file: !326, line: 27, baseType: !43, size: 8, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !327, file: !326, line: 28, baseType: !43, size: 8, offset: 264)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !291, file: !292, line: 127, baseType: !338, size: 128, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !339, line: 16, baseType: !340)
!339 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !339, line: 18, size: 128, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !340, file: !339, line: 19, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !339, line: 20, baseType: !343, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !284, file: !285, line: 127, baseType: !289, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !284, file: !285, line: 129, baseType: !347, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !348, line: 17, baseType: !149)
!348 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !284, file: !285, line: 131, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !351, line: 19, baseType: !352)
!351 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !282, !42, !79}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !44, line: 108, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 194, baseType: !134)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !284, file: !285, line: 132, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !351, line: 22, baseType: !352)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !284, file: !285, line: 133, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !351, line: 20, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!355, !282, !119, !132}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !284, file: !285, line: 134, baseType: !365, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !351, line: 23, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!119, !282, !119, !132}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !284, file: !285, line: 136, baseType: !370, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !285, line: 16, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !285, line: 18, size: 2432, elements: !373)
!373 = !{!374, !375, !388, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !406, !407, !408, !409, !410, !411, !414, !415, !416, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !372, file: !285, line: 19, baseType: !347, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !372, file: !285, line: 21, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !378, line: 180, size: 128, elements: !379)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!379 = !{!380, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !377, file: !378, line: 182, baseType: !381, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !382, line: 28, baseType: !383)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!383 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !377, file: !378, line: 183, baseType: !385, size: 112, offset: 16)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 14)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !372, file: !285, line: 22, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !390, line: 274, baseType: !391)
!390 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !46, line: 210, baseType: !13)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !372, file: !285, line: 23, baseType: !79, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !372, file: !285, line: 24, baseType: !74, size: 128, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !285, line: 26, baseType: !149, size: 32, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !372, file: !285, line: 28, baseType: !149, size: 32, offset: 416)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !372, file: !285, line: 29, baseType: !149, size: 32, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !372, file: !285, line: 30, baseType: !149, size: 32, offset: 480)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !372, file: !285, line: 32, baseType: !149, size: 32, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !372, file: !285, line: 33, baseType: !149, size: 32, offset: 544)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !372, file: !285, line: 34, baseType: !149, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !285, line: 38, baseType: !402, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !54, line: 33, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !282}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !372, file: !285, line: 40, baseType: !32, size: 64, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !372, file: !285, line: 42, baseType: !194, size: 640, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !372, file: !285, line: 43, baseType: !193, size: 64, offset: 1408)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !372, file: !285, line: 45, baseType: !79, size: 64, offset: 1472)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !372, file: !285, line: 47, baseType: !79, size: 64, offset: 1536)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !372, file: !285, line: 49, baseType: !412, size: 64, offset: 1600)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !413, line: 16, baseType: !330)
!413 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !372, file: !285, line: 51, baseType: !370, size: 64, offset: 1664)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !372, file: !285, line: 52, baseType: !282, size: 64, offset: 1728)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !372, file: !285, line: 54, baseType: !417, size: 192, offset: 1792)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !326, line: 32, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !326, line: 37, size: 192, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !418, file: !326, line: 38, baseType: !332, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !418, file: !326, line: 39, baseType: !332, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !418, file: !326, line: 40, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !326, line: 34, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !332, !332, !332}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !372, file: !285, line: 55, baseType: !325, size: 320, offset: 1984)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !372, file: !285, line: 57, baseType: !27, size: 64, offset: 2304)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !372, file: !285, line: 59, baseType: !13, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !372, file: !285, line: 60, baseType: !13, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !372, file: !285, line: 61, baseType: !13, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !372, file: !285, line: 63, baseType: !13, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !372, file: !285, line: 64, baseType: !13, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !372, file: !285, line: 65, baseType: !13, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !372, file: !285, line: 66, baseType: !13, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !372, file: !285, line: 67, baseType: !13, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !372, file: !285, line: 68, baseType: !13, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !372, file: !285, line: 69, baseType: !13, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !372, file: !285, line: 70, baseType: !13, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !372, file: !285, line: 73, baseType: !13, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !372, file: !285, line: 75, baseType: !13, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !372, file: !285, line: 76, baseType: !13, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !372, file: !285, line: 77, baseType: !13, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !372, file: !285, line: 79, baseType: !13, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !372, file: !285, line: 80, baseType: !13, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !372, file: !285, line: 81, baseType: !13, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !372, file: !285, line: 90, baseType: !149, size: 32, offset: 2400)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !284, file: !285, line: 138, baseType: !132, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !284, file: !285, line: 140, baseType: !193, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !284, file: !285, line: 142, baseType: !103, size: 64, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !284, file: !285, line: 144, baseType: !149, size: 32, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !284, file: !285, line: 146, baseType: !376, size: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !284, file: !285, line: 147, baseType: !389, size: 32, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !284, file: !285, line: 148, baseType: !74, size: 128, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !284, file: !285, line: 150, baseType: !74, size: 128, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !284, file: !285, line: 151, baseType: !457, size: 16, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !458, line: 123, baseType: !459)
!458 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !460, line: 25, baseType: !461)
!460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !46, line: 40, baseType: !383)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !284, file: !285, line: 154, baseType: !463, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !54, line: 29, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !466, line: 74, size: 704, elements: !467)
!466 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!467 = !{!468, !473, !477, !481, !482, !483, !484, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !465, file: !466, line: 75, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !471, line: 184, baseType: !472)
!471 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !471, line: 184, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !465, file: !466, line: 76, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !471, line: 185, baseType: !476)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !471, line: 185, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !465, file: !466, line: 78, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !28, line: 78, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !390, line: 267, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !46, line: 207, baseType: !134)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !465, file: !466, line: 79, baseType: !125, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !465, file: !466, line: 80, baseType: !79, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !466, line: 82, baseType: !402, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !465, file: !466, line: 84, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !487, line: 231, baseType: !488)
!487 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !487, line: 231, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !465, file: !466, line: 85, baseType: !402, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !465, file: !466, line: 87, baseType: !318, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !465, file: !466, line: 88, baseType: !318, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !465, file: !466, line: 90, baseType: !43, size: 8, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !465, file: !466, line: 92, baseType: !13, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !465, file: !466, line: 93, baseType: !13, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !465, file: !466, line: 94, baseType: !13, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !465, file: !466, line: 95, baseType: !13, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !465, file: !466, line: 96, baseType: !13, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !465, file: !466, line: 97, baseType: !13, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !465, file: !466, line: 98, baseType: !13, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !465, file: !466, line: 99, baseType: !13, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !465, file: !466, line: 100, baseType: !13, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !465, file: !466, line: 101, baseType: !13, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !284, file: !285, line: 157, baseType: !504, size: 64, offset: 1344)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !54, line: 30, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !54, line: 30, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !284, file: !285, line: 159, baseType: !376, size: 64, offset: 1408)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !284, file: !285, line: 160, baseType: !389, size: 32, offset: 1472)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !284, file: !285, line: 162, baseType: !125, size: 64, offset: 1536)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !284, file: !285, line: 164, baseType: !338, size: 128, offset: 1600)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !284, file: !285, line: 166, baseType: !212, size: 64, offset: 1728)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !284, file: !285, line: 168, baseType: !27, size: 64, offset: 1792)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !284, file: !285, line: 170, baseType: !13, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !284, file: !285, line: 172, baseType: !13, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !284, file: !285, line: 174, baseType: !13, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !284, file: !285, line: 175, baseType: !13, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !284, file: !285, line: 176, baseType: !13, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !284, file: !285, line: 178, baseType: !13, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !284, file: !285, line: 179, baseType: !13, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !284, file: !285, line: 180, baseType: !13, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !284, file: !285, line: 181, baseType: !13, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !284, file: !285, line: 183, baseType: !13, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !284, file: !285, line: 184, baseType: !13, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !284, file: !285, line: 185, baseType: !13, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !284, file: !285, line: 186, baseType: !13, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !284, file: !285, line: 188, baseType: !13, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !270, file: !271, line: 57, baseType: !282, size: 64, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !270, file: !271, line: 58, baseType: !27, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !270, file: !271, line: 60, baseType: !530, size: 64, offset: 1088)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !270, file: !271, line: 61, baseType: !27, size: 64, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !270, file: !271, line: 62, baseType: !27, size: 64, offset: 1216)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !270, file: !271, line: 64, baseType: !338, size: 128, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !270, file: !271, line: 65, baseType: !27, size: 64, offset: 1408)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !270, file: !271, line: 67, baseType: !94, size: 320, offset: 1472)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !270, file: !271, line: 68, baseType: !94, size: 320, offset: 1792)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !270, file: !271, line: 70, baseType: !94, size: 320, offset: 2112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !270, file: !271, line: 71, baseType: !417, size: 192, offset: 2432)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !270, file: !271, line: 72, baseType: !325, size: 320, offset: 2624)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !270, file: !271, line: 74, baseType: !542, size: 448, offset: 2944)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !543, line: 31, baseType: !544)
!543 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 25, size: 448, elements: !545)
!545 = !{!546, !554, !555, !556, !557}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !544, file: !543, line: 26, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !543, line: 16, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !543, line: 18, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !549, file: !543, line: 19, baseType: !32, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !549, file: !543, line: 20, baseType: !27, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !543, line: 21, baseType: !547, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !544, file: !543, line: 27, baseType: !548, size: 192, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !543, line: 28, baseType: !79, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !544, file: !543, line: 29, baseType: !27, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !544, file: !543, line: 30, baseType: !103, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !270, file: !271, line: 75, baseType: !542, size: 448, offset: 3392)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !270, file: !271, line: 77, baseType: !27, size: 64, offset: 3840)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !270, file: !271, line: 78, baseType: !27, size: 64, offset: 3904)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !270, file: !271, line: 80, baseType: !282, size: 64, offset: 3968)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !270, file: !271, line: 81, baseType: !289, size: 64, offset: 4032)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !270, file: !271, line: 82, baseType: !289, size: 64, offset: 4096)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !270, file: !271, line: 84, baseType: !268, size: 64, offset: 4160)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !270, file: !271, line: 86, baseType: !74, size: 128, offset: 4224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !270, file: !271, line: 87, baseType: !74, size: 128, offset: 4352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !270, file: !271, line: 88, baseType: !74, size: 128, offset: 4480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !270, file: !271, line: 89, baseType: !74, size: 128, offset: 4608)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !270, file: !271, line: 90, baseType: !74, size: 128, offset: 4736)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !270, file: !271, line: 91, baseType: !74, size: 128, offset: 4864)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !270, file: !271, line: 93, baseType: !572, size: 64, offset: 4992)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !271, line: 34, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!478, !193, !27, !42, !79}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !270, file: !271, line: 94, baseType: !32, size: 64, offset: 5056)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !270, file: !271, line: 95, baseType: !13, size: 32, offset: 5120)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !89, file: !71, line: 121, baseType: !103, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !89, file: !71, line: 122, baseType: !103, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !89, file: !71, line: 123, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !71, line: 103, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 98, size: 1792, elements: !584)
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !583, file: !71, line: 99, baseType: !142, size: 1600)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !583, file: !71, line: 100, baseType: !125, size: 64, offset: 1600)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !583, file: !71, line: 101, baseType: !125, size: 64, offset: 1664)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !583, file: !71, line: 102, baseType: !27, size: 64, offset: 1728)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !89, file: !71, line: 124, baseType: !193, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !89, file: !71, line: 126, baseType: !32, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !89, file: !71, line: 127, baseType: !27, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !89, file: !71, line: 128, baseType: !27, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !89, file: !71, line: 130, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !71, line: 112, baseType: !84)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !89, file: !71, line: 131, baseType: !32, size: 64, offset: 704)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !70, file: !71, line: 81, baseType: !27, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !70, file: !71, line: 82, baseType: !27, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !70, file: !71, line: 83, baseType: !32, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !56, line: 236, baseType: !27, size: 64, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !55, file: !56, line: 238, baseType: !601, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!478, !193}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !55, file: !56, line: 240, baseType: !605, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!478, !268}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !55, file: !56, line: 242, baseType: !605, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !55, file: !56, line: 243, baseType: !605, size: 64, offset: 832)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !55, file: !56, line: 244, baseType: !611, size: 64, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !268}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !55, file: !56, line: 245, baseType: !611, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !55, file: !56, line: 247, baseType: !611, size: 64, offset: 1024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !55, file: !56, line: 249, baseType: !29, size: 64, offset: 1088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !55, file: !56, line: 250, baseType: !29, size: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !55, file: !56, line: 251, baseType: !29, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !55, file: !56, line: 252, baseType: !29, size: 64, offset: 1280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !55, file: !56, line: 253, baseType: !29, size: 64, offset: 1344)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !55, file: !56, line: 254, baseType: !29, size: 64, offset: 1408)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !55, file: !56, line: 255, baseType: !29, size: 64, offset: 1472)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !55, file: !56, line: 256, baseType: !29, size: 64, offset: 1536)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 7)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 20)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "ngx_http_mirror_commands", scope: !9, file: !2, line: 34, type: !636, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1344, elements: !188)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 4)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 13)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !35, line: 36, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 24, size: 512, elements: !649)
!649 = !{!650, !654, !655, !659, !663, !664, !668, !669}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !648, file: !35, line: 25, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!478, !87}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !648, file: !35, line: 26, baseType: !651, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !648, file: !35, line: 28, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!32, !87}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !648, file: !35, line: 29, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!61, !87, !32}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !648, file: !35, line: 31, baseType: !656, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !648, file: !35, line: 32, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!61, !87, !32, !32}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !648, file: !35, line: 34, baseType: !656, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !648, file: !35, line: 35, baseType: !665, size: 64, offset: 448)
!670 = !{i32 7, !"Dwarf Version", i32 5}
!671 = !{i32 2, !"Debug Info Version", i32 3}
!672 = !{i32 1, !"wchar_size", i32 4}
!673 = !{i32 8, !"PIC Level", i32 2}
!674 = !{i32 7, !"PIE Level", i32 2}
!675 = !{i32 7, !"uwtable", i32 2}
!676 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!677 = distinct !DISubprogram(name: "ngx_http_mirror_init", scope: !2, file: !2, line: 249, type: !652, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !678)
!678 = !{!679, !680, !1960}
!679 = !DILocalVariable(name: "cf", arg: 1, scope: !677, file: !2, line: 249, type: !87)
!680 = !DILocalVariable(name: "h", scope: !677, file: !2, line: 251, type: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !683, line: 367, baseType: !684)
!683 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!478, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !689, line: 16, baseType: !690)
!689 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !683, line: 371, size: 11456, elements: !691)
!691 = !{!692, !695, !696, !697, !698, !699, !700, !705, !706, !922, !1514, !1515, !1516, !1517, !1559, !1591, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1637, !1648, !1655, !1656, !1657, !1658, !1671, !1672, !1673, !1674, !1675, !1676, !1853, !1857, !1862, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !690, file: !683, line: 372, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !460, line: 26, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !46, line: 42, baseType: !13)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !690, file: !683, line: 374, baseType: !282, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !690, file: !683, line: 376, baseType: !39, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !690, file: !683, line: 377, baseType: !39, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !690, file: !683, line: 378, baseType: !39, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !690, file: !683, line: 379, baseType: !39, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !690, file: !683, line: 381, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !683, line: 368, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !687}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !690, file: !683, line: 382, baseType: !701, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !690, file: !683, line: 385, baseType: !707, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !689, line: 18, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !710, line: 65, size: 4800, elements: !711)
!710 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!711 = !{!712, !713, !714, !715, !719, !720, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !880, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !709, file: !710, line: 66, baseType: !142, size: 1600)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !709, file: !710, line: 67, baseType: !94, size: 320, offset: 1600)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !709, file: !710, line: 68, baseType: !693, size: 32, offset: 1920)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !709, file: !710, line: 69, baseType: !716, size: 128, offset: 1952)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 16)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !709, file: !710, line: 70, baseType: !716, size: 128, offset: 2080)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !709, file: !710, line: 72, baseType: !721, size: 64, offset: 2240)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !148, line: 18, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !44, line: 49, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !46, line: 149, baseType: !31)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !709, file: !710, line: 73, baseType: !215, size: 64, offset: 2304)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !709, file: !710, line: 74, baseType: !215, size: 64, offset: 2368)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !709, file: !710, line: 75, baseType: !215, size: 64, offset: 2432)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !709, file: !710, line: 76, baseType: !215, size: 64, offset: 2496)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !709, file: !710, line: 77, baseType: !215, size: 64, offset: 2560)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !709, file: !710, line: 79, baseType: !74, size: 128, offset: 2624)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !709, file: !710, line: 80, baseType: !74, size: 128, offset: 2752)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !709, file: !710, line: 81, baseType: !716, size: 128, offset: 2880)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !709, file: !710, line: 83, baseType: !79, size: 64, offset: 3008)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !709, file: !710, line: 84, baseType: !79, size: 64, offset: 3072)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !709, file: !710, line: 85, baseType: !132, size: 64, offset: 3136)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !709, file: !710, line: 86, baseType: !132, size: 64, offset: 3200)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !709, file: !710, line: 88, baseType: !27, size: 64, offset: 3264)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !709, file: !710, line: 89, baseType: !27, size: 64, offset: 3328)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !709, file: !710, line: 90, baseType: !27, size: 64, offset: 3392)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !709, file: !710, line: 91, baseType: !27, size: 64, offset: 3456)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !709, file: !710, line: 93, baseType: !125, size: 64, offset: 3520)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !709, file: !710, line: 95, baseType: !742, size: 64, offset: 3584)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !689, line: 19, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !710, line: 157, size: 1088, elements: !745)
!745 = !{!746, !761, !822, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !879}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !744, file: !710, line: 158, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !710, line: 154, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 145, size: 960, elements: !750)
!750 = !{!751, !752, !753, !754, !757, !758, !759, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !749, file: !710, line: 146, baseType: !417, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !749, file: !710, line: 147, baseType: !325, size: 320, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !749, file: !710, line: 148, baseType: !338, size: 128, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !749, file: !710, line: 149, baseType: !755, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !213, line: 106, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !749, file: !710, line: 150, baseType: !755, size: 64, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !749, file: !710, line: 151, baseType: !132, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !749, file: !710, line: 152, baseType: !27, size: 64, offset: 832)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !749, file: !710, line: 153, baseType: !27, size: 64, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !744, file: !710, line: 159, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !764, line: 59, baseType: !765)
!764 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 34, size: 1600, elements: !766)
!766 = !{!767, !774, !775, !776, !784, !785, !786, !795, !796, !797, !798, !817, !818, !819, !820, !821}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !764, line: 35, baseType: !768, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !769, line: 21, baseType: !770)
!769 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 16, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !769, line: 17, baseType: !755, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !770, file: !769, line: 19, baseType: !755, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !765, file: !764, line: 37, baseType: !79, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !765, file: !764, line: 38, baseType: !79, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !765, file: !764, line: 40, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !764, line: 16, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !764, line: 18, size: 192, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !779, file: !764, line: 19, baseType: !29, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !764, line: 20, baseType: !777, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !779, file: !764, line: 21, baseType: !29, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !765, file: !764, line: 41, baseType: !777, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !765, file: !764, line: 42, baseType: !778, size: 192, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !765, file: !764, line: 44, baseType: !787, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !764, line: 31, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 25, size: 256, elements: !790)
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !789, file: !764, line: 26, baseType: !27, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !789, file: !764, line: 27, baseType: !27, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !789, file: !764, line: 29, baseType: !27, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !789, file: !764, line: 30, baseType: !27, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !765, file: !764, line: 45, baseType: !27, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !765, file: !764, line: 47, baseType: !42, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !765, file: !764, line: 48, baseType: !42, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !765, file: !764, line: 50, baseType: !799, size: 512, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !769, line: 37, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 24, size: 512, elements: !801)
!801 = !{!802, !804, !805, !806, !816}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !800, file: !769, line: 26, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !800, file: !769, line: 28, baseType: !803, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !800, file: !769, line: 29, baseType: !27, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !800, file: !769, line: 30, baseType: !807, size: 256, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !808, line: 39, baseType: !809)
!808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !808, line: 35, size: 256, elements: !810)
!810 = !{!811, !815}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !809, file: !808, line: 37, baseType: !812, size: 256)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !809, file: !808, line: 38, baseType: !134, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !800, file: !769, line: 36, baseType: !27, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !765, file: !764, line: 52, baseType: !42, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !765, file: !764, line: 53, baseType: !43, size: 8, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !765, file: !764, line: 55, baseType: !13, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !765, file: !764, line: 57, baseType: !32, size: 64, offset: 1472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !765, file: !764, line: 58, baseType: !32, size: 64, offset: 1536)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !744, file: !710, line: 161, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !144, line: 62, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 50, size: 768, elements: !826)
!826 = !{!827, !828, !829, !831, !836, !838, !840, !841, !842}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !825, file: !144, line: 51, baseType: !74, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !825, file: !144, line: 52, baseType: !79, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !825, file: !144, line: 53, baseType: !830, size: 192, offset: 192)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 192, elements: !188)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !825, file: !144, line: 55, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !144, line: 45, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!412, !32}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !825, file: !144, line: 56, baseType: !837, size: 64, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !144, line: 46, baseType: !833)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !825, file: !144, line: 57, baseType: !839, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !144, line: 47, baseType: !261)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !825, file: !144, line: 58, baseType: !32, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !825, file: !144, line: 60, baseType: !42, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !825, file: !144, line: 61, baseType: !27, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !744, file: !710, line: 163, baseType: !132, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !744, file: !710, line: 164, baseType: !79, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !744, file: !710, line: 166, baseType: !215, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !744, file: !710, line: 168, baseType: !215, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !744, file: !710, line: 170, baseType: !27, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !744, file: !710, line: 171, baseType: !27, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !744, file: !710, line: 172, baseType: !412, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !744, file: !710, line: 173, baseType: !412, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !744, file: !710, line: 174, baseType: !412, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !744, file: !710, line: 176, baseType: !27, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !744, file: !710, line: 177, baseType: !412, size: 64, offset: 832)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !744, file: !710, line: 178, baseType: !412, size: 64, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !744, file: !710, line: 180, baseType: !856, size: 64, offset: 960)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !271, line: 31, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !271, line: 37, size: 704, elements: !859)
!859 = !{!860, !861, !871, !876, !877, !878}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !858, file: !271, line: 38, baseType: !32, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !858, file: !271, line: 39, baseType: !862, size: 384, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !863, line: 22, baseType: !864)
!863 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 16, size: 384, elements: !865)
!865 = !{!866, !867, !868, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !864, file: !863, line: 17, baseType: !42, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !864, file: !863, line: 18, baseType: !79, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !864, file: !863, line: 19, baseType: !74, size: 128, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !864, file: !863, line: 20, baseType: !193, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !864, file: !863, line: 21, baseType: !27, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !858, file: !271, line: 40, baseType: !872, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !271, line: 33, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!478, !856, !32}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !858, file: !271, line: 41, baseType: !32, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !858, file: !271, line: 42, baseType: !32, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !858, file: !271, line: 43, baseType: !27, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !744, file: !710, line: 182, baseType: !27, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !710, line: 96, baseType: !881, size: 64, offset: 3648)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !710, line: 62, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 39, size: 960, elements: !884)
!884 = !{!885, !886, !887, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !883, file: !710, line: 40, baseType: !325, size: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !883, file: !710, line: 41, baseType: !338, size: 128, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !883, file: !710, line: 43, baseType: !888, size: 64, offset: 448)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 8)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !883, file: !710, line: 46, baseType: !13, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !883, file: !710, line: 47, baseType: !13, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !883, file: !710, line: 48, baseType: !13, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !883, file: !710, line: 49, baseType: !13, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !883, file: !710, line: 50, baseType: !13, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !883, file: !710, line: 51, baseType: !13, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !883, file: !710, line: 52, baseType: !13, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !883, file: !710, line: 53, baseType: !13, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !883, file: !710, line: 56, baseType: !721, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !883, file: !710, line: 57, baseType: !215, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !883, file: !710, line: 58, baseType: !215, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !883, file: !710, line: 59, baseType: !79, size: 64, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !883, file: !710, line: 60, baseType: !132, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !883, file: !710, line: 61, baseType: !412, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !709, file: !710, line: 102, baseType: !412, size: 64, offset: 3712)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !709, file: !710, line: 103, baseType: !412, size: 64, offset: 3776)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !709, file: !710, line: 104, baseType: !412, size: 64, offset: 3840)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !709, file: !710, line: 105, baseType: !412, size: 64, offset: 3904)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !709, file: !710, line: 107, baseType: !290, size: 768, offset: 3968)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !710, line: 109, baseType: !13, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !709, file: !710, line: 110, baseType: !13, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !709, file: !710, line: 112, baseType: !13, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !709, file: !710, line: 113, baseType: !13, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !709, file: !710, line: 114, baseType: !13, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !709, file: !710, line: 115, baseType: !13, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !709, file: !710, line: 116, baseType: !13, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !709, file: !710, line: 117, baseType: !13, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !709, file: !710, line: 118, baseType: !13, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !709, file: !710, line: 119, baseType: !13, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !709, file: !710, line: 121, baseType: !13, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !709, file: !710, line: 122, baseType: !13, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !690, file: !683, line: 388, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !689, line: 17, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !926, line: 319, size: 8960, elements: !927)
!926 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!927 = !{!928, !933, !934, !983, !1062, !1063, !1085, !1094, !1234, !1235, !1236, !1237, !1238, !1239, !1279, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1458, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1472, !1476, !1480, !1481, !1495, !1496, !1497, !1498, !1499, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !925, file: !926, line: 320, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !926, line: 315, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !687, !923}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !925, file: !926, line: 321, baseType: !929, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !925, file: !926, line: 323, baseType: !935, size: 1024, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !936, line: 22, baseType: !937)
!936 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !936, line: 36, size: 1024, elements: !938)
!938 = !{!939, !940, !941, !942, !944, !945, !946, !952, !957, !959, !960, !962, !967, !976, !977, !978, !979, !980, !981, !982}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !937, file: !936, line: 37, baseType: !282, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !937, file: !936, line: 39, baseType: !376, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !937, file: !936, line: 40, baseType: !389, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !936, line: 41, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !937, file: !936, line: 43, baseType: !27, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !937, file: !936, line: 44, baseType: !412, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !937, file: !936, line: 46, baseType: !947, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !936, line: 24, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!478, !951, !32}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !937, file: !936, line: 47, baseType: !953, size: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !936, line: 26, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !951, !32, !27}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !937, file: !936, line: 48, baseType: !958, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !936, line: 28, baseType: !954)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !937, file: !936, line: 49, baseType: !32, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !937, file: !936, line: 52, baseType: !961, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !936, line: 30, baseType: !948)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !937, file: !936, line: 53, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !936, line: 32, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !951, !32}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !937, file: !936, line: 56, baseType: !968, size: 64, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !970, line: 78, baseType: !971)
!970 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !970, line: 74, size: 256, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !971, file: !970, line: 75, baseType: !376, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !971, file: !970, line: 76, baseType: !389, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !971, file: !970, line: 77, baseType: !74, size: 128, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !937, file: !936, line: 58, baseType: !149, size: 32, offset: 832)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !937, file: !936, line: 59, baseType: !149, size: 32, offset: 864)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !937, file: !936, line: 61, baseType: !193, size: 64, offset: 896)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !937, file: !936, line: 63, baseType: !13, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !937, file: !936, line: 64, baseType: !13, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !937, file: !936, line: 65, baseType: !13, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !937, file: !936, line: 68, baseType: !13, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !925, file: !926, line: 325, baseType: !984, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !986, line: 17, baseType: !987)
!986 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !986, line: 25, size: 2240, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !995, !996, !997, !998, !999, !1004, !1005, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1061}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !987, file: !986, line: 26, baseType: !282, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !987, file: !986, line: 27, baseType: !282, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !987, file: !986, line: 29, baseType: !119, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !987, file: !986, line: 30, baseType: !119, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !987, file: !986, line: 31, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !987, file: !986, line: 33, baseType: !119, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !987, file: !986, line: 35, baseType: !119, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !987, file: !986, line: 36, baseType: !119, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !987, file: !986, line: 37, baseType: !119, size: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !987, file: !986, line: 44, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !986, line: 19, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!478, !984, !125}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !987, file: !986, line: 45, baseType: !32, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !987, file: !986, line: 47, baseType: !1006, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !986, line: 21, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!478, !32, !119}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !987, file: !986, line: 48, baseType: !32, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !987, file: !986, line: 57, baseType: !13, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !987, file: !986, line: 58, baseType: !13, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !987, file: !986, line: 59, baseType: !13, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !987, file: !986, line: 60, baseType: !13, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !987, file: !986, line: 61, baseType: !13, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !987, file: !986, line: 62, baseType: !13, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !987, file: !986, line: 63, baseType: !13, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !987, file: !986, line: 64, baseType: !13, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !987, file: !986, line: 65, baseType: !13, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !987, file: !986, line: 66, baseType: !13, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !987, file: !986, line: 67, baseType: !13, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !987, file: !986, line: 68, baseType: !13, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !987, file: !986, line: 70, baseType: !478, size: 64, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !987, file: !986, line: 71, baseType: !1025, size: 128, offset: 960)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !122, line: 68, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 65, size: 128, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1026, file: !122, line: 66, baseType: !478, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1026, file: !122, line: 67, baseType: !79, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !987, file: !986, line: 72, baseType: !139, size: 64, offset: 1088)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !987, file: !986, line: 74, baseType: !355, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !987, file: !986, line: 76, baseType: !132, size: 64, offset: 1216)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !987, file: !986, line: 77, baseType: !132, size: 64, offset: 1280)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !987, file: !986, line: 79, baseType: !132, size: 64, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !987, file: !986, line: 80, baseType: !355, size: 64, offset: 1408)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !987, file: !986, line: 82, baseType: !412, size: 64, offset: 1472)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !987, file: !986, line: 83, baseType: !412, size: 64, offset: 1536)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !987, file: !986, line: 84, baseType: !355, size: 64, offset: 1600)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !987, file: !986, line: 86, baseType: !103, size: 64, offset: 1664)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !987, file: !986, line: 87, baseType: !193, size: 64, offset: 1728)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !987, file: !986, line: 89, baseType: !119, size: 64, offset: 1792)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !987, file: !986, line: 90, baseType: !79, size: 64, offset: 1856)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !987, file: !986, line: 91, baseType: !125, size: 64, offset: 1920)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !987, file: !986, line: 93, baseType: !79, size: 64, offset: 1984)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !987, file: !986, line: 94, baseType: !215, size: 64, offset: 2048)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !987, file: !986, line: 96, baseType: !1047, size: 64, offset: 2112)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !144, line: 84, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 71, size: 1984, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1049, file: !144, line: 72, baseType: !142, size: 1600)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !144, line: 73, baseType: !132, size: 64, offset: 1600)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1049, file: !144, line: 74, baseType: !823, size: 64, offset: 1664)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1049, file: !144, line: 75, baseType: !103, size: 64, offset: 1728)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !1049, file: !144, line: 76, baseType: !61, size: 64, offset: 1792)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1049, file: !144, line: 78, baseType: !27, size: 64, offset: 1856)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1049, file: !144, line: 80, baseType: !13, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !1049, file: !144, line: 81, baseType: !13, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !1049, file: !144, line: 82, baseType: !13, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !1049, file: !144, line: 83, baseType: !13, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !987, file: !986, line: 98, baseType: !149, size: 32, offset: 2176)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !925, file: !926, line: 327, baseType: !119, size: 64, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !925, file: !926, line: 329, baseType: !1064, size: 832, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !122, line: 71, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !122, line: 78, size: 832, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1084}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1065, file: !122, line: 79, baseType: !125, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1065, file: !122, line: 80, baseType: !119, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1065, file: !122, line: 81, baseType: !119, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1065, file: !122, line: 82, baseType: !119, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1065, file: !122, line: 84, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1065, file: !122, line: 85, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !1065, file: !122, line: 86, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !1065, file: !122, line: 87, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !1065, file: !122, line: 88, baseType: !13, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1065, file: !122, line: 89, baseType: !13, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1065, file: !122, line: 104, baseType: !132, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1065, file: !122, line: 106, baseType: !103, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1065, file: !122, line: 107, baseType: !478, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1065, file: !122, line: 108, baseType: !1025, size: 128, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1065, file: !122, line: 109, baseType: !139, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !1065, file: !122, line: 111, baseType: !1083, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !122, line: 73, baseType: !1007)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !1065, file: !122, line: 112, baseType: !32, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !925, file: !926, line: 330, baseType: !1086, size: 320, offset: 2112)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !122, line: 122, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 116, size: 320, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1087, file: !122, line: 117, baseType: !119, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1087, file: !122, line: 118, baseType: !994, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1087, file: !122, line: 119, baseType: !282, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1087, file: !122, line: 120, baseType: !103, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1087, file: !122, line: 121, baseType: !132, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !925, file: !926, line: 332, baseType: !1095, size: 64, offset: 2432)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !926, line: 243, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 149, size: 3904, elements: !1098)
!1098 = !{!1099, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1176, !1177, !1178, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1229, !1230, !1231, !1232, !1233}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !1097, file: !926, line: 150, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !926, line: 79, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !926, line: 121, size: 832, elements: !1103)
!1103 = !{!1104, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1102, file: !926, line: 122, baseType: !1105, size: 192)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !926, line: 91, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 87, size: 192, elements: !1107)
!1107 = !{!1108, !1113, !1118}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !1106, file: !926, line: 88, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !926, line: 81, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!478, !87, !1100}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1106, file: !926, line: 89, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !926, line: 83, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!478, !687, !1100}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1106, file: !926, line: 90, baseType: !32, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1102, file: !926, line: 123, baseType: !39, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !1102, file: !926, line: 125, baseType: !93, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !926, line: 127, baseType: !27, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1102, file: !926, line: 128, baseType: !74, size: 128, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1102, file: !926, line: 129, baseType: !42, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1102, file: !926, line: 130, baseType: !27, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1102, file: !926, line: 131, baseType: !457, size: 16, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1102, file: !926, line: 132, baseType: !27, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !1102, file: !926, line: 135, baseType: !856, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !1097, file: !926, line: 152, baseType: !412, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1097, file: !926, line: 153, baseType: !412, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1097, file: !926, line: 154, baseType: !412, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !1097, file: !926, line: 155, baseType: !412, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1097, file: !926, line: 157, baseType: !79, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1097, file: !926, line: 158, baseType: !79, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1097, file: !926, line: 159, baseType: !79, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !1097, file: !926, line: 161, baseType: !79, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !1097, file: !926, line: 162, baseType: !79, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !1097, file: !926, line: 163, baseType: !79, size: 64, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !1097, file: !926, line: 165, baseType: !79, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !1097, file: !926, line: 166, baseType: !79, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !1097, file: !926, line: 167, baseType: !79, size: 64, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1097, file: !926, line: 169, baseType: !1025, size: 128, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !1097, file: !926, line: 171, baseType: !27, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !1097, file: !926, line: 172, baseType: !27, size: 64, offset: 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !1097, file: !926, line: 173, baseType: !27, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !1097, file: !926, line: 174, baseType: !27, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !1097, file: !926, line: 175, baseType: !1147, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !28, line: 80, baseType: !479)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !1097, file: !926, line: 176, baseType: !1147, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !1097, file: !926, line: 177, baseType: !1147, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !1097, file: !926, line: 178, baseType: !1147, size: 64, offset: 1472)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !1097, file: !926, line: 180, baseType: !1147, size: 64, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !1097, file: !926, line: 181, baseType: !1147, size: 64, offset: 1600)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !1097, file: !926, line: 182, baseType: !1147, size: 64, offset: 1664)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !1097, file: !926, line: 183, baseType: !1147, size: 64, offset: 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !1097, file: !926, line: 185, baseType: !823, size: 64, offset: 1792)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !1097, file: !926, line: 187, baseType: !1157, size: 128, offset: 1856)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1158, line: 26, baseType: !1159)
!1158 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 23, size: 128, elements: !1160)
!1160 = !{!1161, !1175}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1159, file: !1158, line: 24, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1158, line: 20, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 16, size: 128, elements: !1166)
!1166 = !{!1167, !1168, !1171}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1165, file: !1158, line: 17, baseType: !32, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1165, file: !1158, line: 18, baseType: !1169, size: 16, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !44, line: 34, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !46, line: 32, baseType: !383)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1165, file: !1158, line: 19, baseType: !1172, size: 8, offset: 80)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 1)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1159, file: !1158, line: 25, baseType: !27, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !1097, file: !926, line: 188, baseType: !93, size: 64, offset: 1984)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !1097, file: !926, line: 189, baseType: !93, size: 64, offset: 2048)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1097, file: !926, line: 191, baseType: !1179, size: 64, offset: 2112)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !926, line: 146, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 140, size: 192, elements: !1182)
!1182 = !{!1183, !1184, !1195}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1181, file: !926, line: 141, baseType: !968, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1181, file: !926, line: 142, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1187, line: 71, baseType: !1188)
!1187 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1187, line: 66, size: 320, elements: !1189)
!1189 = !{!1190, !1191, !1193, !1194}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1188, file: !1187, line: 67, baseType: !74, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1188, file: !1187, line: 68, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1188, file: !1187, line: 69, baseType: !32, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1188, file: !1187, line: 70, baseType: !32, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1181, file: !926, line: 144, baseType: !27, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !1097, file: !926, line: 192, baseType: !1147, size: 64, offset: 2176)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !1097, file: !926, line: 195, baseType: !856, size: 64, offset: 2240)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !1097, file: !926, line: 196, baseType: !1185, size: 64, offset: 2304)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !1097, file: !926, line: 198, baseType: !27, size: 64, offset: 2368)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !1097, file: !926, line: 199, baseType: !27, size: 64, offset: 2432)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !1097, file: !926, line: 200, baseType: !27, size: 64, offset: 2496)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !1097, file: !926, line: 202, baseType: !132, size: 64, offset: 2560)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !1097, file: !926, line: 204, baseType: !1147, size: 64, offset: 2624)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !1097, file: !926, line: 205, baseType: !412, size: 64, offset: 2688)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !1097, file: !926, line: 206, baseType: !412, size: 64, offset: 2752)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !1097, file: !926, line: 208, baseType: !1147, size: 64, offset: 2816)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !1097, file: !926, line: 209, baseType: !1147, size: 64, offset: 2880)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !1097, file: !926, line: 210, baseType: !1147, size: 64, offset: 2944)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !1097, file: !926, line: 212, baseType: !93, size: 64, offset: 3008)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !1097, file: !926, line: 213, baseType: !93, size: 64, offset: 3072)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !1097, file: !926, line: 214, baseType: !93, size: 64, offset: 3136)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1097, file: !926, line: 215, baseType: !93, size: 64, offset: 3200)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !1097, file: !926, line: 218, baseType: !93, size: 64, offset: 3264)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !1097, file: !926, line: 219, baseType: !93, size: 64, offset: 3328)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1097, file: !926, line: 222, baseType: !149, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1097, file: !926, line: 224, baseType: !149, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !1097, file: !926, line: 225, baseType: !13, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !1097, file: !926, line: 226, baseType: !13, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !1097, file: !926, line: 227, baseType: !13, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !1097, file: !926, line: 228, baseType: !13, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1097, file: !926, line: 231, baseType: !1222, size: 64, offset: 3456)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !54, line: 28, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !466, line: 67, size: 192, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1224, file: !466, line: 68, baseType: !474, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1224, file: !466, line: 69, baseType: !193, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1224, file: !466, line: 70, baseType: !79, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !1097, file: !926, line: 232, baseType: !1147, size: 64, offset: 3520)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !1097, file: !926, line: 234, baseType: !1185, size: 64, offset: 3584)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !1097, file: !926, line: 235, baseType: !1147, size: 64, offset: 3648)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !1097, file: !926, line: 236, baseType: !1147, size: 64, offset: 3712)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1097, file: !926, line: 239, baseType: !74, size: 128, offset: 3776)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !925, file: !926, line: 333, baseType: !1100, size: 64, offset: 2496)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !925, file: !926, line: 335, baseType: !93, size: 64, offset: 2560)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !925, file: !926, line: 339, baseType: !412, size: 64, offset: 2624)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !925, file: !926, line: 340, baseType: !412, size: 64, offset: 2688)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !925, file: !926, line: 341, baseType: !412, size: 64, offset: 2752)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !925, file: !926, line: 343, baseType: !1240, size: 3072, offset: 2816)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !926, line: 296, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 256, size: 3072, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1241, file: !926, line: 257, baseType: !542, size: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1241, file: !926, line: 258, baseType: !542, size: 448, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1241, file: !926, line: 260, baseType: !27, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1241, file: !926, line: 261, baseType: !74, size: 128, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1241, file: !926, line: 263, baseType: !1248, size: 64, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1158, line: 97, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 92, size: 384, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1250, file: !1158, line: 93, baseType: !27, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1250, file: !1158, line: 94, baseType: !74, size: 128, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1250, file: !1158, line: 95, baseType: !74, size: 128, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1250, file: !1158, line: 96, baseType: !42, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1241, file: !926, line: 264, baseType: !1248, size: 64, offset: 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1241, file: !926, line: 265, baseType: !1248, size: 64, offset: 1216)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1241, file: !926, line: 266, baseType: !1248, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1241, file: !926, line: 268, baseType: !1248, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1241, file: !926, line: 269, baseType: !1248, size: 64, offset: 1408)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1241, file: !926, line: 270, baseType: !1248, size: 64, offset: 1472)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1241, file: !926, line: 271, baseType: !1248, size: 64, offset: 1536)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1241, file: !926, line: 272, baseType: !1248, size: 64, offset: 1600)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1241, file: !926, line: 274, baseType: !1248, size: 64, offset: 1664)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1241, file: !926, line: 275, baseType: !1248, size: 64, offset: 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1241, file: !926, line: 277, baseType: !1248, size: 64, offset: 1792)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1241, file: !926, line: 278, baseType: !1248, size: 64, offset: 1856)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1241, file: !926, line: 279, baseType: !1248, size: 64, offset: 1920)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1241, file: !926, line: 280, baseType: !1248, size: 64, offset: 1984)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1241, file: !926, line: 281, baseType: !1248, size: 64, offset: 2048)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1241, file: !926, line: 282, baseType: !1248, size: 64, offset: 2112)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1241, file: !926, line: 285, baseType: !1248, size: 64, offset: 2176)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1241, file: !926, line: 288, baseType: !94, size: 320, offset: 2240)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1241, file: !926, line: 289, baseType: !94, size: 320, offset: 2560)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1241, file: !926, line: 291, baseType: !132, size: 64, offset: 2880)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1241, file: !926, line: 292, baseType: !215, size: 64, offset: 2944)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1241, file: !926, line: 294, baseType: !13, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1241, file: !926, line: 295, baseType: !13, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !925, file: !926, line: 345, baseType: !1280, size: 64, offset: 5888)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !926, line: 312, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 299, size: 704, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1299, !1300, !1301, !1302}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1282, file: !926, line: 300, baseType: !74, size: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1282, file: !926, line: 301, baseType: !457, size: 16, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1282, file: !926, line: 302, baseType: !27, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1282, file: !926, line: 304, baseType: !27, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1282, file: !926, line: 305, baseType: !1289, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1291, line: 67, baseType: !1292)
!1291 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 61, size: 320, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1292, file: !1291, line: 62, baseType: !376, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1292, file: !1291, line: 63, baseType: !389, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1292, file: !1291, line: 64, baseType: !74, size: 128, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1292, file: !1291, line: 65, baseType: !1169, size: 16, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1292, file: !1291, line: 66, baseType: !1169, size: 16, offset: 272)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1282, file: !926, line: 307, baseType: !376, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1282, file: !926, line: 308, baseType: !389, size: 32, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !926, line: 309, baseType: !74, size: 128, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1282, file: !926, line: 311, baseType: !1303, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1291, line: 56, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1291, line: 195, size: 1792, elements: !1306)
!1306 = !{!1307, !1308, !1341, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1421, !1422, !1423, !1436, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1305, file: !1291, line: 196, baseType: !1303, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1305, file: !1291, line: 197, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1291, line: 40, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1291, line: 148, size: 4096, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1311, file: !1291, line: 150, baseType: !289, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1311, file: !1291, line: 151, baseType: !32, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1311, file: !1291, line: 152, baseType: !193, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1311, file: !1291, line: 155, baseType: !478, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1311, file: !1291, line: 158, baseType: !94, size: 320, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1311, file: !1291, line: 159, baseType: !27, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1311, file: !1291, line: 161, baseType: !417, size: 192, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1311, file: !1291, line: 162, baseType: !325, size: 320, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1311, file: !1291, line: 164, baseType: !417, size: 192, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1311, file: !1291, line: 165, baseType: !325, size: 320, offset: 1344)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1311, file: !1291, line: 167, baseType: !417, size: 192, offset: 1664)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1311, file: !1291, line: 168, baseType: !325, size: 320, offset: 1856)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1311, file: !1291, line: 170, baseType: !338, size: 128, offset: 2176)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1311, file: !1291, line: 171, baseType: !338, size: 128, offset: 2304)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1311, file: !1291, line: 172, baseType: !338, size: 128, offset: 2432)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1311, file: !1291, line: 174, baseType: !338, size: 128, offset: 2560)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1311, file: !1291, line: 175, baseType: !338, size: 128, offset: 2688)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1311, file: !1291, line: 176, baseType: !338, size: 128, offset: 2816)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1311, file: !1291, line: 179, baseType: !27, size: 64, offset: 2944)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1311, file: !1291, line: 180, baseType: !417, size: 192, offset: 3008)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1311, file: !1291, line: 181, baseType: !325, size: 320, offset: 3200)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1311, file: !1291, line: 182, baseType: !338, size: 128, offset: 3520)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1311, file: !1291, line: 183, baseType: !338, size: 128, offset: 3648)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1311, file: !1291, line: 186, baseType: !215, size: 64, offset: 3776)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1311, file: !1291, line: 187, baseType: !215, size: 64, offset: 3840)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1311, file: !1291, line: 188, baseType: !215, size: 64, offset: 3904)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1311, file: !1291, line: 189, baseType: !215, size: 64, offset: 3968)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1311, file: !1291, line: 191, baseType: !27, size: 64, offset: 4032)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1305, file: !1291, line: 198, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1291, line: 145, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 92, size: 1472, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1363, !1364, !1365, !1366, !1367, !1384, !1385, !1386, !1387, !1388, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1344, file: !1291, line: 93, baseType: !325, size: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1344, file: !1291, line: 94, baseType: !338, size: 128, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1344, file: !1291, line: 97, baseType: !42, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1344, file: !1291, line: 101, baseType: !1350, size: 128, offset: 512)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !458, line: 219, size: 128, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1350, file: !458, line: 226, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !458, line: 221, size: 128, elements: !1354)
!1354 = !{!1355, !1359, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1353, file: !458, line: 223, baseType: !1356, size: 128)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 128, elements: !717)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !460, line: 24, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !46, line: 38, baseType: !47)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1353, file: !458, line: 224, baseType: !1360, size: 128)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 128, elements: !889)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1353, file: !458, line: 225, baseType: !1362, size: 128)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 128, elements: !640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1344, file: !1291, line: 104, baseType: !1169, size: 16, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1344, file: !1291, line: 105, baseType: !1169, size: 16, offset: 656)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1344, file: !1291, line: 107, baseType: !42, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1344, file: !1291, line: 109, baseType: !42, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1344, file: !1291, line: 117, baseType: !1368, size: 64, offset: 832)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1291, line: 112, size: 64, elements: !1369)
!1369 = !{!1370, !1372, !1374, !1375}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1368, file: !1291, line: 113, baseType: !1371, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !458, line: 30, baseType: !693)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1368, file: !1291, line: 114, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1368, file: !1291, line: 115, baseType: !42, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1368, file: !1291, line: 116, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1291, line: 75, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 70, size: 192, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1378, file: !1291, line: 71, baseType: !74, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1378, file: !1291, line: 72, baseType: !1169, size: 16, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1378, file: !1291, line: 73, baseType: !1169, size: 16, offset: 144)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1378, file: !1291, line: 74, baseType: !1169, size: 16, offset: 160)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1344, file: !1291, line: 119, baseType: !43, size: 8, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1344, file: !1291, line: 120, baseType: !1169, size: 16, offset: 912)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1344, file: !1291, line: 121, baseType: !1169, size: 16, offset: 928)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1344, file: !1291, line: 122, baseType: !1169, size: 16, offset: 944)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1344, file: !1291, line: 128, baseType: !1389, size: 128, offset: 960)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !1291, line: 125, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1389, file: !1291, line: 126, baseType: !1350, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1389, file: !1291, line: 127, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1344, file: !1291, line: 130, baseType: !1169, size: 16, offset: 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1344, file: !1291, line: 133, baseType: !215, size: 64, offset: 1152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1344, file: !1291, line: 134, baseType: !215, size: 64, offset: 1216)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1344, file: !1291, line: 135, baseType: !693, size: 32, offset: 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1344, file: !1291, line: 137, baseType: !13, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1344, file: !1291, line: 139, baseType: !13, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1344, file: !1291, line: 142, baseType: !27, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1344, file: !1291, line: 144, baseType: !1303, size: 64, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1305, file: !1291, line: 201, baseType: !478, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1305, file: !1291, line: 203, baseType: !478, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1305, file: !1291, line: 204, baseType: !74, size: 128, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1305, file: !1291, line: 205, baseType: !74, size: 128, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1305, file: !1291, line: 207, baseType: !215, size: 64, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1305, file: !1291, line: 208, baseType: !27, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1305, file: !1291, line: 209, baseType: !1289, size: 64, offset: 704)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1305, file: !1291, line: 210, baseType: !1290, size: 320, offset: 768)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1305, file: !1291, line: 211, baseType: !1411, size: 128, offset: 1088)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !458, line: 245, size: 128, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1419}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1411, file: !458, line: 247, baseType: !381, size: 16)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1411, file: !458, line: 248, baseType: !457, size: 16, offset: 16)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1411, file: !458, line: 249, baseType: !1416, size: 32, offset: 32)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !458, line: 31, size: 32, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1416, file: !458, line: 33, baseType: !1371, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1411, file: !458, line: 252, baseType: !1420, size: 64, offset: 64)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !889)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1305, file: !1291, line: 213, baseType: !27, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1305, file: !1291, line: 214, baseType: !27, size: 64, offset: 1280)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1305, file: !1291, line: 215, baseType: !1424, size: 64, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1291, line: 89, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 78, size: 448, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1426, file: !1291, line: 79, baseType: !74, size: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1426, file: !1291, line: 80, baseType: !1169, size: 16, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1426, file: !1291, line: 81, baseType: !1169, size: 16, offset: 144)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1426, file: !1291, line: 82, baseType: !1169, size: 16, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1426, file: !1291, line: 84, baseType: !1303, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1426, file: !1291, line: 85, baseType: !478, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1426, file: !1291, line: 87, baseType: !27, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1426, file: !1291, line: 88, baseType: !968, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1305, file: !1291, line: 217, baseType: !1437, size: 64, offset: 1408)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1291, line: 58, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1303}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1291, line: 218, baseType: !32, size: 64, offset: 1472)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1305, file: !1291, line: 219, baseType: !412, size: 64, offset: 1536)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1305, file: !1291, line: 221, baseType: !13, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1305, file: !1291, line: 222, baseType: !13, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1305, file: !1291, line: 223, baseType: !13, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1305, file: !1291, line: 224, baseType: !27, size: 64, offset: 1664)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1305, file: !1291, line: 225, baseType: !289, size: 64, offset: 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !925, file: !926, line: 347, baseType: !126, size: 640, offset: 5952)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !925, file: !926, line: 349, baseType: !126, size: 640, offset: 6592)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !925, file: !926, line: 350, baseType: !132, size: 64, offset: 7232)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !925, file: !926, line: 352, baseType: !119, size: 64, offset: 7296)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !925, file: !926, line: 353, baseType: !119, size: 64, offset: 7360)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !925, file: !926, line: 354, baseType: !119, size: 64, offset: 7424)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !925, file: !926, line: 356, baseType: !1455, size: 64, offset: 7488)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!478, !32}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !925, file: !926, line: 357, baseType: !1459, size: 64, offset: 7552)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!478, !32, !355}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !925, file: !926, line: 358, baseType: !32, size: 64, offset: 7616)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !925, file: !926, line: 361, baseType: !684, size: 64, offset: 7680)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !925, file: !926, line: 363, baseType: !684, size: 64, offset: 7744)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !925, file: !926, line: 364, baseType: !684, size: 64, offset: 7808)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !925, file: !926, line: 365, baseType: !684, size: 64, offset: 7872)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !925, file: !926, line: 366, baseType: !702, size: 64, offset: 7936)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !925, file: !926, line: 367, baseType: !1469, size: 64, offset: 8000)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !687, !478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !925, file: !926, line: 369, baseType: !1473, size: 64, offset: 8064)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!478, !687, !1248, !79}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !925, file: !926, line: 371, baseType: !1477, size: 64, offset: 8128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!478, !687, !1248}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !925, file: !926, line: 374, baseType: !412, size: 64, offset: 8192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !925, file: !926, line: 376, baseType: !1482, size: 64, offset: 8256)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !926, line: 70, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 59, size: 576, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1484, file: !926, line: 60, baseType: !27, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1484, file: !926, line: 61, baseType: !412, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1484, file: !926, line: 62, baseType: !412, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1484, file: !926, line: 63, baseType: !412, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1484, file: !926, line: 64, baseType: !412, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1484, file: !926, line: 65, baseType: !132, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1484, file: !926, line: 66, baseType: !132, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1484, file: !926, line: 67, baseType: !132, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1484, file: !926, line: 69, baseType: !943, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !925, file: !926, line: 378, baseType: !74, size: 128, offset: 8320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !925, file: !926, line: 379, baseType: !74, size: 128, offset: 8448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !925, file: !926, line: 380, baseType: !74, size: 128, offset: 8576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !925, file: !926, line: 383, baseType: !74, size: 128, offset: 8704)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !925, file: !926, line: 386, baseType: !1500, size: 64, offset: 8832)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !683, line: 330, baseType: !261)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !925, file: !926, line: 388, baseType: !13, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !925, file: !926, line: 389, baseType: !13, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !925, file: !926, line: 390, baseType: !13, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !925, file: !926, line: 391, baseType: !13, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !925, file: !926, line: 393, baseType: !13, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !925, file: !926, line: 396, baseType: !13, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !925, file: !926, line: 397, baseType: !13, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !925, file: !926, line: 398, baseType: !13, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !925, file: !926, line: 400, baseType: !13, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !925, file: !926, line: 401, baseType: !13, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !925, file: !926, line: 402, baseType: !13, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !925, file: !926, line: 403, baseType: !13, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !690, file: !683, line: 389, baseType: !93, size: 64, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !690, file: !683, line: 392, baseType: !103, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !690, file: !683, line: 393, baseType: !125, size: 64, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !690, file: !683, line: 395, baseType: !1518, size: 3008, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !683, line: 251, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 181, size: 3008, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1519, file: !683, line: 182, baseType: !542, size: 448)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1519, file: !683, line: 184, baseType: !1248, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1519, file: !683, line: 185, baseType: !1248, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1519, file: !683, line: 186, baseType: !1248, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1519, file: !683, line: 187, baseType: !1248, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1519, file: !683, line: 188, baseType: !1248, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1519, file: !683, line: 189, baseType: !1248, size: 64, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1519, file: !683, line: 190, baseType: !1248, size: 64, offset: 832)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1519, file: !683, line: 191, baseType: !1248, size: 64, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1519, file: !683, line: 192, baseType: !1248, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1519, file: !683, line: 193, baseType: !1248, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1519, file: !683, line: 194, baseType: !1248, size: 64, offset: 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1519, file: !683, line: 196, baseType: !1248, size: 64, offset: 1152)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1519, file: !683, line: 197, baseType: !1248, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1519, file: !683, line: 199, baseType: !1248, size: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1519, file: !683, line: 200, baseType: !1248, size: 64, offset: 1344)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1519, file: !683, line: 201, baseType: !1248, size: 64, offset: 1408)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1519, file: !683, line: 202, baseType: !1248, size: 64, offset: 1472)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1519, file: !683, line: 205, baseType: !1248, size: 64, offset: 1536)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1519, file: !683, line: 206, baseType: !1248, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1519, file: !683, line: 209, baseType: !1248, size: 64, offset: 1664)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1519, file: !683, line: 211, baseType: !1248, size: 64, offset: 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1519, file: !683, line: 214, baseType: !94, size: 320, offset: 1792)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1519, file: !683, line: 233, baseType: !74, size: 128, offset: 2112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1519, file: !683, line: 234, baseType: !74, size: 128, offset: 2240)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1519, file: !683, line: 236, baseType: !94, size: 320, offset: 2368)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1519, file: !683, line: 238, baseType: !74, size: 128, offset: 2688)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1519, file: !683, line: 239, baseType: !132, size: 64, offset: 2816)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1519, file: !683, line: 240, baseType: !215, size: 64, offset: 2880)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1519, file: !683, line: 242, baseType: !13, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1519, file: !683, line: 243, baseType: !13, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1519, file: !683, line: 244, baseType: !13, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1519, file: !683, line: 245, baseType: !13, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1519, file: !683, line: 246, baseType: !13, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1519, file: !683, line: 247, baseType: !13, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1519, file: !683, line: 248, baseType: !13, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1519, file: !683, line: 249, baseType: !13, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1519, file: !683, line: 250, baseType: !13, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !690, file: !683, line: 396, baseType: !1560, size: 3264, offset: 3840)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !683, line: 289, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 254, size: 3264, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1561, file: !683, line: 255, baseType: !542, size: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1561, file: !683, line: 256, baseType: !542, size: 448, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1561, file: !683, line: 258, baseType: !27, size: 64, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1561, file: !683, line: 259, baseType: !74, size: 128, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1561, file: !683, line: 261, baseType: !1248, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1561, file: !683, line: 262, baseType: !1248, size: 64, offset: 1152)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1561, file: !683, line: 263, baseType: !1248, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1561, file: !683, line: 264, baseType: !1248, size: 64, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1561, file: !683, line: 265, baseType: !1248, size: 64, offset: 1344)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1561, file: !683, line: 266, baseType: !1248, size: 64, offset: 1408)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1561, file: !683, line: 267, baseType: !1248, size: 64, offset: 1472)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1561, file: !683, line: 268, baseType: !1248, size: 64, offset: 1536)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1561, file: !683, line: 269, baseType: !1248, size: 64, offset: 1600)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1561, file: !683, line: 270, baseType: !1248, size: 64, offset: 1664)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1561, file: !683, line: 271, baseType: !1248, size: 64, offset: 1728)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1561, file: !683, line: 272, baseType: !1248, size: 64, offset: 1792)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1561, file: !683, line: 274, baseType: !943, size: 64, offset: 1856)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1561, file: !683, line: 276, baseType: !79, size: 64, offset: 1920)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1561, file: !683, line: 277, baseType: !74, size: 128, offset: 1984)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1561, file: !683, line: 278, baseType: !74, size: 128, offset: 2112)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1561, file: !683, line: 279, baseType: !42, size: 64, offset: 2240)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1561, file: !683, line: 280, baseType: !27, size: 64, offset: 2304)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1561, file: !683, line: 282, baseType: !94, size: 320, offset: 2368)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1561, file: !683, line: 283, baseType: !94, size: 320, offset: 2688)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1561, file: !683, line: 285, baseType: !132, size: 64, offset: 3008)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1561, file: !683, line: 286, baseType: !132, size: 64, offset: 3072)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1561, file: !683, line: 287, baseType: !215, size: 64, offset: 3136)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1561, file: !683, line: 288, baseType: !215, size: 64, offset: 3200)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !690, file: !683, line: 398, baseType: !1592, size: 64, offset: 7104)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !683, line: 304, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 294, size: 576, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1611}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1594, file: !683, line: 295, baseType: !1047, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1594, file: !683, line: 296, baseType: !119, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1594, file: !683, line: 297, baseType: !125, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1594, file: !683, line: 298, baseType: !132, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1594, file: !683, line: 299, baseType: !132, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1594, file: !683, line: 300, baseType: !119, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1594, file: !683, line: 301, baseType: !119, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1594, file: !683, line: 302, baseType: !1604, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !689, line: 21, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !689, line: 59, size: 192, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1606, file: !689, line: 60, baseType: !27, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1606, file: !689, line: 61, baseType: !132, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1606, file: !689, line: 62, baseType: !132, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1594, file: !683, line: 303, baseType: !1612, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !683, line: 292, baseType: !702)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !690, file: !683, line: 400, baseType: !215, size: 64, offset: 7168)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !690, file: !683, line: 401, baseType: !215, size: 64, offset: 7232)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !690, file: !683, line: 402, baseType: !412, size: 64, offset: 7296)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !690, file: !683, line: 404, baseType: !27, size: 64, offset: 7360)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !690, file: !683, line: 405, baseType: !27, size: 64, offset: 7424)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !690, file: !683, line: 407, baseType: !74, size: 128, offset: 7488)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !690, file: !683, line: 408, baseType: !74, size: 128, offset: 7616)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !690, file: !683, line: 409, baseType: !74, size: 128, offset: 7744)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !690, file: !683, line: 410, baseType: !74, size: 128, offset: 7872)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !690, file: !683, line: 411, baseType: !74, size: 128, offset: 8000)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !690, file: !683, line: 413, baseType: !74, size: 128, offset: 8128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !690, file: !683, line: 414, baseType: !74, size: 128, offset: 8256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !690, file: !683, line: 415, baseType: !74, size: 128, offset: 8384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !690, file: !683, line: 417, baseType: !119, size: 64, offset: 8512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !690, file: !683, line: 418, baseType: !687, size: 64, offset: 8576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !690, file: !683, line: 419, baseType: !687, size: 64, offset: 8640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !690, file: !683, line: 420, baseType: !1630, size: 64, offset: 8704)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !683, line: 350, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !683, line: 352, size: 192, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1632, file: !683, line: 353, baseType: !687, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1632, file: !683, line: 354, baseType: !119, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1632, file: !683, line: 355, baseType: !1630, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !690, file: !683, line: 421, baseType: !1638, size: 64, offset: 8768)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !683, line: 347, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 344, size: 128, elements: !1641)
!1641 = !{!1642, !1647}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1640, file: !683, line: 345, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !683, line: 341, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!478, !687, !32, !478}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1640, file: !683, line: 346, baseType: !32, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !690, file: !683, line: 422, baseType: !1649, size: 64, offset: 8832)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !683, line: 359, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !683, line: 361, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1651, file: !683, line: 362, baseType: !687, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1651, file: !683, line: 363, baseType: !1649, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !690, file: !683, line: 424, baseType: !478, size: 64, offset: 8896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !690, file: !683, line: 425, baseType: !682, size: 64, offset: 8960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !690, file: !683, line: 426, baseType: !27, size: 64, offset: 9024)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !690, file: !683, line: 428, baseType: !1659, size: 64, offset: 9088)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1661, line: 17, baseType: !1662)
!1661 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !75, line: 37, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 28, size: 128, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1663, file: !75, line: 29, baseType: !13, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1663, file: !75, line: 31, baseType: !13, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1663, file: !75, line: 32, baseType: !13, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1663, file: !75, line: 33, baseType: !13, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1663, file: !75, line: 34, baseType: !13, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1663, file: !75, line: 36, baseType: !42, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !690, file: !683, line: 436, baseType: !79, size: 64, offset: 9152)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !690, file: !683, line: 437, baseType: !79, size: 64, offset: 9216)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !690, file: !683, line: 440, baseType: !79, size: 64, offset: 9280)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !690, file: !683, line: 442, baseType: !132, size: 64, offset: 9344)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !690, file: !683, line: 444, baseType: !27, size: 64, offset: 9408)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !690, file: !683, line: 446, baseType: !1677, size: 64, offset: 9472)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !683, line: 327, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 309, size: 448, elements: !1680)
!1680 = !{!1681, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1679, file: !683, line: 310, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !683, line: 307, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !12, line: 233, size: 192, elements: !1685)
!1685 = !{!1686, !1817, !1843, !1844, !1845}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1684, file: !12, line: 235, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !12, line: 210, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 180, size: 1344, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1689, file: !12, line: 182, baseType: !94, size: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1689, file: !12, line: 185, baseType: !33, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1689, file: !12, line: 187, baseType: !42, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1689, file: !12, line: 188, baseType: !27, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1689, file: !12, line: 190, baseType: !74, size: 128, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1689, file: !12, line: 192, baseType: !79, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1689, file: !12, line: 193, baseType: !79, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1689, file: !12, line: 194, baseType: !79, size: 64, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1689, file: !12, line: 196, baseType: !1025, size: 128, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1689, file: !12, line: 198, baseType: !412, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1689, file: !12, line: 200, baseType: !1147, size: 64, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1689, file: !12, line: 201, baseType: !1147, size: 64, offset: 1088)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1689, file: !12, line: 202, baseType: !1147, size: 64, offset: 1152)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1689, file: !12, line: 204, baseType: !13, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1689, file: !12, line: 209, baseType: !1706, size: 64, offset: 1280)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !12, line: 64, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !12, line: 301, size: 5184, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !12, line: 302, baseType: !74, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1709, file: !12, line: 308, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1709, file: !12, line: 309, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1709, file: !12, line: 310, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1709, file: !12, line: 312, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1709, file: !12, line: 313, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1709, file: !12, line: 315, baseType: !13, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1709, file: !12, line: 317, baseType: !13, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1709, file: !12, line: 318, baseType: !13, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1709, file: !12, line: 321, baseType: !1721, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !12, line: 63, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !12, line: 455, size: 384, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1723, file: !12, line: 456, baseType: !1721, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1723, file: !12, line: 457, baseType: !1721, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1723, file: !12, line: 458, baseType: !1721, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1723, file: !12, line: 460, baseType: !1707, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1723, file: !12, line: 461, baseType: !1707, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1723, file: !12, line: 463, baseType: !43, size: 8, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1723, file: !12, line: 464, baseType: !43, size: 8, offset: 328)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1723, file: !12, line: 465, baseType: !1172, size: 8, offset: 336)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1709, file: !12, line: 327, baseType: !39, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1709, file: !12, line: 329, baseType: !693, size: 32, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1709, file: !12, line: 330, baseType: !39, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1709, file: !12, line: 332, baseType: !682, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1709, file: !12, line: 335, baseType: !79, size: 64, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1709, file: !12, line: 336, baseType: !74, size: 128, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1709, file: !12, line: 337, baseType: !74, size: 128, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1709, file: !12, line: 339, baseType: !93, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1709, file: !12, line: 340, baseType: !93, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1709, file: !12, line: 342, baseType: !93, size: 64, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1709, file: !12, line: 343, baseType: !1157, size: 128, offset: 1024)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1709, file: !12, line: 344, baseType: !74, size: 128, offset: 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1709, file: !12, line: 346, baseType: !132, size: 64, offset: 1280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1709, file: !12, line: 347, baseType: !132, size: 64, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1709, file: !12, line: 348, baseType: !132, size: 64, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1709, file: !12, line: 350, baseType: !79, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1709, file: !12, line: 351, baseType: !79, size: 64, offset: 1536)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1709, file: !12, line: 352, baseType: !79, size: 64, offset: 1600)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1709, file: !12, line: 353, baseType: !79, size: 64, offset: 1664)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1709, file: !12, line: 354, baseType: !79, size: 64, offset: 1728)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1709, file: !12, line: 355, baseType: !79, size: 64, offset: 1792)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1709, file: !12, line: 356, baseType: !79, size: 64, offset: 1856)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1709, file: !12, line: 357, baseType: !79, size: 64, offset: 1920)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1709, file: !12, line: 360, baseType: !412, size: 64, offset: 1984)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1709, file: !12, line: 361, baseType: !412, size: 64, offset: 2048)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1709, file: !12, line: 362, baseType: !412, size: 64, offset: 2112)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1709, file: !12, line: 363, baseType: !412, size: 64, offset: 2176)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1709, file: !12, line: 364, baseType: !412, size: 64, offset: 2240)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1709, file: !12, line: 365, baseType: !412, size: 64, offset: 2304)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1709, file: !12, line: 367, baseType: !1309, size: 64, offset: 2368)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1709, file: !12, line: 369, baseType: !215, size: 64, offset: 2432)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1709, file: !12, line: 371, baseType: !27, size: 64, offset: 2496)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1709, file: !12, line: 372, baseType: !27, size: 64, offset: 2560)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1709, file: !12, line: 373, baseType: !27, size: 64, offset: 2624)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1709, file: !12, line: 374, baseType: !27, size: 64, offset: 2688)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1709, file: !12, line: 375, baseType: !27, size: 64, offset: 2752)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1709, file: !12, line: 376, baseType: !27, size: 64, offset: 2816)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1709, file: !12, line: 377, baseType: !27, size: 64, offset: 2880)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1709, file: !12, line: 379, baseType: !1147, size: 64, offset: 2944)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1709, file: !12, line: 381, baseType: !1147, size: 64, offset: 3008)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1709, file: !12, line: 382, baseType: !1147, size: 64, offset: 3072)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1709, file: !12, line: 383, baseType: !1147, size: 64, offset: 3136)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1709, file: !12, line: 384, baseType: !1147, size: 64, offset: 3200)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1709, file: !12, line: 385, baseType: !1147, size: 64, offset: 3264)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1709, file: !12, line: 386, baseType: !1147, size: 64, offset: 3328)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1709, file: !12, line: 387, baseType: !1147, size: 64, offset: 3392)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1709, file: !12, line: 388, baseType: !1147, size: 64, offset: 3456)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1709, file: !12, line: 389, baseType: !1147, size: 64, offset: 3520)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1709, file: !12, line: 390, baseType: !1147, size: 64, offset: 3584)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1709, file: !12, line: 391, baseType: !1147, size: 64, offset: 3648)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1709, file: !12, line: 392, baseType: !1147, size: 64, offset: 3712)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1709, file: !12, line: 393, baseType: !1147, size: 64, offset: 3776)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1709, file: !12, line: 394, baseType: !1147, size: 64, offset: 3840)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1709, file: !12, line: 395, baseType: !1147, size: 64, offset: 3904)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1709, file: !12, line: 396, baseType: !27, size: 64, offset: 3968)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1709, file: !12, line: 397, baseType: !1147, size: 64, offset: 4032)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1709, file: !12, line: 398, baseType: !1147, size: 64, offset: 4096)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1709, file: !12, line: 401, baseType: !1147, size: 64, offset: 4160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1709, file: !12, line: 403, baseType: !27, size: 64, offset: 4224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1709, file: !12, line: 404, baseType: !27, size: 64, offset: 4288)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1709, file: !12, line: 417, baseType: !27, size: 64, offset: 4352)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1709, file: !12, line: 418, baseType: !1185, size: 64, offset: 4416)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1709, file: !12, line: 421, baseType: !93, size: 64, offset: 4480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1709, file: !12, line: 423, baseType: !823, size: 64, offset: 4544)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1709, file: !12, line: 425, baseType: !1798, size: 64, offset: 4608)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1800, line: 99, baseType: !1801)
!1800 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1800, line: 91, size: 832, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1801, file: !1800, line: 92, baseType: !417, size: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1801, file: !1800, line: 93, baseType: !325, size: 320, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1801, file: !1800, line: 94, baseType: !338, size: 128, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1801, file: !1800, line: 96, baseType: !27, size: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1801, file: !1800, line: 97, baseType: !27, size: 64, offset: 704)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1801, file: !1800, line: 98, baseType: !215, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1709, file: !12, line: 426, baseType: !215, size: 64, offset: 4672)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1709, file: !12, line: 427, baseType: !27, size: 64, offset: 4736)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1709, file: !12, line: 428, baseType: !1147, size: 64, offset: 4800)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1709, file: !12, line: 429, baseType: !1147, size: 64, offset: 4864)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1709, file: !12, line: 431, baseType: !193, size: 64, offset: 4928)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1709, file: !12, line: 433, baseType: !27, size: 64, offset: 4992)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1709, file: !12, line: 434, baseType: !27, size: 64, offset: 5056)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1709, file: !12, line: 436, baseType: !343, size: 64, offset: 5120)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1684, file: !12, line: 237, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !12, line: 230, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 225, size: 384, elements: !1821)
!1821 = !{!1822, !1835, !1836}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1820, file: !12, line: 226, baseType: !1823, size: 256)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1158, line: 49, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 45, size: 256, elements: !1825)
!1825 = !{!1826, !1827, !1834}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1824, file: !1158, line: 46, baseType: !1157, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1824, file: !1158, line: 47, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1158, line: 32, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 29, size: 192, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1830, file: !1158, line: 30, baseType: !1157, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1830, file: !1158, line: 31, baseType: !32, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1824, file: !1158, line: 48, baseType: !1828, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1820, file: !12, line: 228, baseType: !27, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1820, file: !12, line: 229, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !12, line: 222, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 216, size: 192, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1839, file: !12, line: 220, baseType: !1687, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1839, file: !12, line: 221, baseType: !74, size: 128, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1684, file: !12, line: 239, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1684, file: !12, line: 240, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1684, file: !12, line: 241, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1679, file: !683, line: 311, baseType: !33, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1679, file: !683, line: 314, baseType: !943, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1679, file: !683, line: 320, baseType: !119, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1679, file: !683, line: 321, baseType: !478, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1679, file: !683, line: 323, baseType: !119, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1679, file: !683, line: 325, baseType: !13, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1679, file: !683, line: 326, baseType: !13, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !690, file: !683, line: 447, baseType: !1854, size: 64, offset: 9536)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !689, line: 22, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !689, line: 22, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !690, file: !683, line: 449, baseType: !1858, size: 64, offset: 9600)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !689, line: 26, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!42, !687, !687, !42, !79}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !690, file: !683, line: 451, baseType: !1863, size: 64, offset: 9664)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !683, line: 332, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !683, line: 334, size: 192, elements: !1866)
!1866 = !{!1867, !1868, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1865, file: !683, line: 335, baseType: !1501, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1865, file: !683, line: 336, baseType: !32, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1865, file: !683, line: 337, baseType: !1863, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !683, line: 453, baseType: !13, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !690, file: !683, line: 454, baseType: !13, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !690, file: !683, line: 455, baseType: !13, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !690, file: !683, line: 457, baseType: !13, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !690, file: !683, line: 459, baseType: !13, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !690, file: !683, line: 462, baseType: !13, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !690, file: !683, line: 465, baseType: !13, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !690, file: !683, line: 468, baseType: !13, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !690, file: !683, line: 471, baseType: !13, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !690, file: !683, line: 473, baseType: !13, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !690, file: !683, line: 475, baseType: !13, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !690, file: !683, line: 476, baseType: !13, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !690, file: !683, line: 477, baseType: !13, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !690, file: !683, line: 478, baseType: !13, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !690, file: !683, line: 479, baseType: !13, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !690, file: !683, line: 481, baseType: !13, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !690, file: !683, line: 482, baseType: !13, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !690, file: !683, line: 483, baseType: !13, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !690, file: !683, line: 484, baseType: !13, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !690, file: !683, line: 485, baseType: !13, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !690, file: !683, line: 486, baseType: !13, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !690, file: !683, line: 487, baseType: !13, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !690, file: !683, line: 489, baseType: !13, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !690, file: !683, line: 490, baseType: !13, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !690, file: !683, line: 493, baseType: !13, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !690, file: !683, line: 497, baseType: !13, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !690, file: !683, line: 498, baseType: !13, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !690, file: !683, line: 499, baseType: !13, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !690, file: !683, line: 506, baseType: !13, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !690, file: !683, line: 507, baseType: !13, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !690, file: !683, line: 508, baseType: !13, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !690, file: !683, line: 515, baseType: !13, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !690, file: !683, line: 516, baseType: !13, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !690, file: !683, line: 522, baseType: !13, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !690, file: !683, line: 523, baseType: !13, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !690, file: !683, line: 524, baseType: !13, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !690, file: !683, line: 525, baseType: !13, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !690, file: !683, line: 526, baseType: !13, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !690, file: !683, line: 527, baseType: !13, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !690, file: !683, line: 528, baseType: !13, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !690, file: !683, line: 529, baseType: !13, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !690, file: !683, line: 530, baseType: !13, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !690, file: !683, line: 531, baseType: !13, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !690, file: !683, line: 532, baseType: !13, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !690, file: !683, line: 533, baseType: !13, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !690, file: !683, line: 534, baseType: !13, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !690, file: !683, line: 535, baseType: !13, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !690, file: !683, line: 536, baseType: !13, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !690, file: !683, line: 537, baseType: !13, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !690, file: !683, line: 538, baseType: !13, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !690, file: !683, line: 539, baseType: !13, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !690, file: !683, line: 540, baseType: !13, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !690, file: !683, line: 542, baseType: !13, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !690, file: !683, line: 544, baseType: !13, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !690, file: !683, line: 545, baseType: !13, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !690, file: !683, line: 546, baseType: !13, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !690, file: !683, line: 547, baseType: !13, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !690, file: !683, line: 548, baseType: !13, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !690, file: !683, line: 549, baseType: !13, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !690, file: !683, line: 550, baseType: !13, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !690, file: !683, line: 551, baseType: !13, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !690, file: !683, line: 552, baseType: !13, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !690, file: !683, line: 553, baseType: !13, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !690, file: !683, line: 554, baseType: !13, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !690, file: !683, line: 556, baseType: !13, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !690, file: !683, line: 557, baseType: !13, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !690, file: !683, line: 561, baseType: !27, size: 64, offset: 9856)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !690, file: !683, line: 563, baseType: !27, size: 64, offset: 9920)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !690, file: !683, line: 564, baseType: !27, size: 64, offset: 9984)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !690, file: !683, line: 565, baseType: !1940, size: 256, offset: 10048)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !813)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !690, file: !683, line: 567, baseType: !42, size: 64, offset: 10304)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !690, file: !683, line: 568, baseType: !42, size: 64, offset: 10368)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !690, file: !683, line: 569, baseType: !42, size: 64, offset: 10432)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !690, file: !683, line: 570, baseType: !42, size: 64, offset: 10496)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !690, file: !683, line: 577, baseType: !42, size: 64, offset: 10560)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !690, file: !683, line: 578, baseType: !42, size: 64, offset: 10624)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !690, file: !683, line: 579, baseType: !42, size: 64, offset: 10688)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !690, file: !683, line: 580, baseType: !42, size: 64, offset: 10752)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !690, file: !683, line: 581, baseType: !42, size: 64, offset: 10816)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !690, file: !683, line: 582, baseType: !42, size: 64, offset: 10880)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !690, file: !683, line: 583, baseType: !42, size: 64, offset: 10944)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !690, file: !683, line: 584, baseType: !42, size: 64, offset: 11008)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !690, file: !683, line: 585, baseType: !42, size: 64, offset: 11072)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !690, file: !683, line: 586, baseType: !42, size: 64, offset: 11136)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !690, file: !683, line: 587, baseType: !42, size: 64, offset: 11200)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !690, file: !683, line: 588, baseType: !42, size: 64, offset: 11264)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !690, file: !683, line: 589, baseType: !42, size: 64, offset: 11328)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !690, file: !683, line: 591, baseType: !13, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !690, file: !683, line: 592, baseType: !13, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1960 = !DILocalVariable(name: "cmcf", scope: !677, file: !2, line: 252, type: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_main_conf_t", file: !12, line: 177, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 153, size: 5376, elements: !1964)
!1964 = !{!1965, !1966, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !2007, !2008}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !1963, file: !12, line: 154, baseType: !94, size: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "phase_engine", scope: !1963, file: !12, line: 156, baseType: !1967, size: 192, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_engine_t", file: !12, line: 145, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 141, size: 192, elements: !1969)
!1969 = !{!1970, !1982, !1983}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !1968, file: !12, line: 142, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_handler_t", file: !12, line: 129, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_phase_handler_s", file: !12, line: 134, size: 192, elements: !1974)
!1974 = !{!1975, !1980, !1981}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !1973, file: !12, line: 135, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_handler_pt", file: !12, line: 131, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!478, !687, !1971}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1973, file: !12, line: 136, baseType: !682, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1973, file: !12, line: 137, baseType: !27, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "server_rewrite_index", scope: !1968, file: !12, line: 143, baseType: !27, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "location_rewrite_index", scope: !1968, file: !12, line: 144, baseType: !27, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in_hash", scope: !1963, file: !12, line: 158, baseType: !1157, size: 128, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash", scope: !1963, file: !12, line: 160, baseType: !1157, size: 128, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !1963, file: !12, line: 162, baseType: !94, size: 320, offset: 768)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_variables", scope: !1963, file: !12, line: 163, baseType: !94, size: 320, offset: 1088)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ncaptures", scope: !1963, file: !12, line: 164, baseType: !27, size: 64, offset: 1408)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "server_names_hash_max_size", scope: !1963, file: !12, line: 166, baseType: !27, size: 64, offset: 1472)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "server_names_hash_bucket_size", scope: !1963, file: !12, line: 167, baseType: !27, size: 64, offset: 1536)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash_max_size", scope: !1963, file: !12, line: 169, baseType: !27, size: 64, offset: 1600)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "variables_hash_bucket_size", scope: !1963, file: !12, line: 170, baseType: !27, size: 64, offset: 1664)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "variables_keys", scope: !1963, file: !12, line: 172, baseType: !1994, size: 64, offset: 1728)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_keys_arrays_t", file: !1158, line: 89, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 75, size: 1344, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "hsize", scope: !1996, file: !1158, line: 76, baseType: !27, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1996, file: !1158, line: 78, baseType: !103, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !1996, file: !1158, line: 79, baseType: !103, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1996, file: !1158, line: 81, baseType: !94, size: 320, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "keys_hash", scope: !1996, file: !1158, line: 82, baseType: !93, size: 64, offset: 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_head", scope: !1996, file: !1158, line: 84, baseType: !94, size: 320, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_head_hash", scope: !1996, file: !1158, line: 85, baseType: !93, size: 64, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_tail", scope: !1996, file: !1158, line: 87, baseType: !94, size: 320, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dns_wc_tail_hash", scope: !1996, file: !1158, line: 88, baseType: !93, size: 64, offset: 1280)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1963, file: !12, line: 174, baseType: !93, size: 64, offset: 1792)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !1963, file: !12, line: 176, baseType: !2009, size: 3520, offset: 1856)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2010, size: 3520, elements: !2014)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_phase_t", file: !12, line: 150, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 148, size: 320, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !2011, file: !12, line: 149, baseType: !94, size: 320)
!2014 = !{!2015}
!2015 = !DISubrange(count: 11)
!2016 = !{!2017, !2017, i64 0}
!2017 = !{!"any pointer", !2018, i64 0}
!2018 = !{!"omnipotent char", !2019, i64 0}
!2019 = !{!"Simple C/C++ TBAA"}
!2020 = !DILocation(line: 249, column: 34, scope: !677)
!2021 = !DILocation(line: 251, column: 5, scope: !677)
!2022 = !DILocation(line: 251, column: 33, scope: !677)
!2023 = !DILocation(line: 252, column: 5, scope: !677)
!2024 = !DILocation(line: 252, column: 33, scope: !677)
!2025 = !DILocation(line: 254, column: 12, scope: !677)
!2026 = !{!2027, !2017, i64 56}
!2027 = !{!"ngx_conf_s", !2017, i64 0, !2017, i64 8, !2017, i64 16, !2017, i64 24, !2017, i64 32, !2017, i64 40, !2017, i64 48, !2017, i64 56, !2028, i64 64, !2028, i64 72, !2017, i64 80, !2017, i64 88}
!2028 = !{!"long", !2018, i64 0}
!2029 = !{!2030, !2017, i64 0}
!2030 = !{!"", !2017, i64 0, !2017, i64 8, !2017, i64 16}
!2031 = !{!2032, !2028, i64 0}
!2032 = !{!"ngx_module_s", !2028, i64 0, !2028, i64 8, !2017, i64 16, !2028, i64 24, !2028, i64 32, !2028, i64 40, !2017, i64 48, !2017, i64 56, !2017, i64 64, !2028, i64 72, !2017, i64 80, !2017, i64 88, !2017, i64 96, !2017, i64 104, !2017, i64 112, !2017, i64 120, !2017, i64 128, !2028, i64 136, !2028, i64 144, !2028, i64 152, !2028, i64 160, !2028, i64 168, !2028, i64 176, !2028, i64 184, !2028, i64 192}
!2033 = !DILocation(line: 254, column: 10, scope: !677)
!2034 = !DILocation(line: 256, column: 25, scope: !677)
!2035 = !DILocation(line: 256, column: 31, scope: !677)
!2036 = !DILocation(line: 256, column: 65, scope: !677)
!2037 = !DILocation(line: 256, column: 9, scope: !677)
!2038 = !DILocation(line: 256, column: 7, scope: !677)
!2039 = !DILocation(line: 257, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !677, file: !2, line: 257, column: 9)
!2041 = !DILocation(line: 257, column: 11, scope: !2040)
!2042 = !DILocation(line: 257, column: 9, scope: !677)
!2043 = !DILocation(line: 258, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 257, column: 20)
!2045 = !DILocation(line: 261, column: 6, scope: !677)
!2046 = !DILocation(line: 261, column: 8, scope: !677)
!2047 = !DILocation(line: 263, column: 5, scope: !677)
!2048 = !DILocation(line: 264, column: 1, scope: !677)
!2049 = distinct !DISubprogram(name: "ngx_http_mirror_create_loc_conf", scope: !2, file: !2, line: 179, type: !657, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2050)
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "cf", arg: 1, scope: !2049, file: !2, line: 179, type: !87)
!2052 = !DILocalVariable(name: "mlcf", scope: !2049, file: !2, line: 181, type: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_mirror_loc_conf_t", file: !2, line: 16, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 13, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mirror", scope: !2055, file: !2, line: 14, baseType: !93, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !2055, file: !2, line: 15, baseType: !1147, size: 64, offset: 64)
!2059 = !DILocation(line: 179, column: 45, scope: !2049)
!2060 = !DILocation(line: 181, column: 5, scope: !2049)
!2061 = !DILocation(line: 181, column: 34, scope: !2049)
!2062 = !DILocation(line: 183, column: 24, scope: !2049)
!2063 = !DILocation(line: 183, column: 28, scope: !2049)
!2064 = !{!2027, !2017, i64 24}
!2065 = !DILocation(line: 183, column: 12, scope: !2049)
!2066 = !DILocation(line: 183, column: 10, scope: !2049)
!2067 = !DILocation(line: 184, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 184, column: 9)
!2069 = !DILocation(line: 184, column: 14, scope: !2068)
!2070 = !DILocation(line: 184, column: 9, scope: !2049)
!2071 = !DILocation(line: 185, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 184, column: 23)
!2073 = !DILocation(line: 188, column: 5, scope: !2049)
!2074 = !DILocation(line: 188, column: 11, scope: !2049)
!2075 = !DILocation(line: 188, column: 18, scope: !2049)
!2076 = !{!2077, !2017, i64 0}
!2077 = !{!"", !2017, i64 0, !2028, i64 8}
!2078 = !DILocation(line: 189, column: 5, scope: !2049)
!2079 = !DILocation(line: 189, column: 11, scope: !2049)
!2080 = !DILocation(line: 189, column: 24, scope: !2049)
!2081 = !{!2077, !2028, i64 8}
!2082 = !DILocation(line: 191, column: 12, scope: !2049)
!2083 = !DILocation(line: 191, column: 5, scope: !2049)
!2084 = !DILocation(line: 192, column: 1, scope: !2049)
!2085 = distinct !DISubprogram(name: "ngx_http_mirror_merge_loc_conf", scope: !2, file: !2, line: 196, type: !666, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091}
!2087 = !DILocalVariable(name: "cf", arg: 1, scope: !2085, file: !2, line: 196, type: !87)
!2088 = !DILocalVariable(name: "parent", arg: 2, scope: !2085, file: !2, line: 196, type: !32)
!2089 = !DILocalVariable(name: "child", arg: 3, scope: !2085, file: !2, line: 196, type: !32)
!2090 = !DILocalVariable(name: "prev", scope: !2085, file: !2, line: 198, type: !2053)
!2091 = !DILocalVariable(name: "conf", scope: !2085, file: !2, line: 199, type: !2053)
!2092 = !DILocation(line: 196, column: 44, scope: !2085)
!2093 = !DILocation(line: 196, column: 54, scope: !2085)
!2094 = !DILocation(line: 196, column: 68, scope: !2085)
!2095 = !DILocation(line: 198, column: 5, scope: !2085)
!2096 = !DILocation(line: 198, column: 33, scope: !2085)
!2097 = !DILocation(line: 198, column: 40, scope: !2085)
!2098 = !DILocation(line: 199, column: 5, scope: !2085)
!2099 = !DILocation(line: 199, column: 33, scope: !2085)
!2100 = !DILocation(line: 199, column: 40, scope: !2085)
!2101 = !DILocation(line: 201, column: 5, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 201, column: 5)
!2103 = !DILocation(line: 201, column: 5, scope: !2085)
!2104 = !DILocation(line: 201, column: 5, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 201, column: 5)
!2106 = !DILocation(line: 202, column: 5, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 202, column: 5)
!2108 = !DILocation(line: 202, column: 5, scope: !2085)
!2109 = !DILocation(line: 202, column: 5, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 202, column: 5)
!2111 = !DILocation(line: 205, column: 1, scope: !2085)
!2112 = !DILocation(line: 204, column: 5, scope: !2085)
!2113 = !DISubprogram(name: "ngx_array_push", scope: !95, file: !95, line: 27, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!32, !93}
!2116 = distinct !DISubprogram(name: "ngx_http_mirror_handler", scope: !2, file: !2, line: 86, type: !685, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2117)
!2117 = !{!2118, !2119, !2120, !2126}
!2118 = !DILocalVariable(name: "r", arg: 1, scope: !2116, file: !2, line: 86, type: !687)
!2119 = !DILocalVariable(name: "rc", scope: !2116, file: !2, line: 88, type: !478)
!2120 = !DILocalVariable(name: "ctx", scope: !2116, file: !2, line: 89, type: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_mirror_ctx_t", file: !2, line: 21, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 19, size: 64, elements: !2124)
!2124 = !{!2125}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2123, file: !2, line: 20, baseType: !478, size: 64)
!2126 = !DILocalVariable(name: "mlcf", scope: !2116, file: !2, line: 90, type: !2053)
!2127 = !DILocation(line: 86, column: 45, scope: !2116)
!2128 = !DILocation(line: 88, column: 5, scope: !2116)
!2129 = !DILocation(line: 88, column: 34, scope: !2116)
!2130 = !DILocation(line: 89, column: 5, scope: !2116)
!2131 = !DILocation(line: 89, column: 34, scope: !2116)
!2132 = !DILocation(line: 90, column: 5, scope: !2116)
!2133 = !DILocation(line: 90, column: 34, scope: !2116)
!2134 = !DILocation(line: 92, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 92, column: 9)
!2136 = !DILocation(line: 92, column: 14, scope: !2135)
!2137 = !DILocation(line: 92, column: 17, scope: !2135)
!2138 = !{!2139, !2017, i64 1072}
!2139 = !{!"ngx_http_request_s", !2140, i64 0, !2017, i64 8, !2017, i64 16, !2017, i64 24, !2017, i64 32, !2017, i64 40, !2017, i64 48, !2017, i64 56, !2017, i64 64, !2017, i64 72, !2017, i64 80, !2017, i64 88, !2017, i64 96, !2141, i64 104, !2146, i64 480, !2017, i64 888, !2028, i64 896, !2028, i64 904, !2028, i64 912, !2028, i64 920, !2028, i64 928, !2145, i64 936, !2145, i64 952, !2145, i64 968, !2145, i64 984, !2145, i64 1000, !2145, i64 1016, !2145, i64 1032, !2145, i64 1048, !2017, i64 1064, !2017, i64 1072, !2017, i64 1080, !2017, i64 1088, !2017, i64 1096, !2017, i64 1104, !2028, i64 1112, !2017, i64 1120, !2028, i64 1128, !2017, i64 1136, !2028, i64 1144, !2028, i64 1152, !2028, i64 1160, !2028, i64 1168, !2028, i64 1176, !2017, i64 1184, !2017, i64 1192, !2017, i64 1200, !2017, i64 1208, !2140, i64 1216, !2140, i64 1218, !2140, i64 1219, !2140, i64 1220, !2140, i64 1220, !2140, i64 1220, !2140, i64 1220, !2140, i64 1220, !2140, i64 1221, !2140, i64 1221, !2140, i64 1221, !2140, i64 1221, !2140, i64 1221, !2140, i64 1221, !2140, i64 1221, !2140, i64 1222, !2140, i64 1222, !2140, i64 1222, !2140, i64 1222, !2140, i64 1222, !2140, i64 1222, !2140, i64 1223, !2140, i64 1223, !2140, i64 1223, !2140, i64 1223, !2140, i64 1223, !2140, i64 1223, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1224, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1225, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1226, !2140, i64 1227, !2140, i64 1227, !2140, i64 1227, !2140, i64 1227, !2140, i64 1227, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1228, !2140, i64 1229, !2140, i64 1229, !2028, i64 1232, !2028, i64 1240, !2028, i64 1248, !2018, i64 1256, !2017, i64 1288, !2017, i64 1296, !2017, i64 1304, !2017, i64 1312, !2017, i64 1320, !2017, i64 1328, !2017, i64 1336, !2017, i64 1344, !2017, i64 1352, !2017, i64 1360, !2017, i64 1368, !2017, i64 1376, !2017, i64 1384, !2017, i64 1392, !2017, i64 1400, !2017, i64 1408, !2017, i64 1416, !2140, i64 1424, !2140, i64 1426}
!2140 = !{!"int", !2018, i64 0}
!2141 = !{!"", !2142, i64 0, !2017, i64 56, !2017, i64 64, !2017, i64 72, !2017, i64 80, !2017, i64 88, !2017, i64 96, !2017, i64 104, !2017, i64 112, !2017, i64 120, !2017, i64 128, !2017, i64 136, !2017, i64 144, !2017, i64 152, !2017, i64 160, !2017, i64 168, !2017, i64 176, !2017, i64 184, !2017, i64 192, !2017, i64 200, !2017, i64 208, !2017, i64 216, !2144, i64 224, !2145, i64 264, !2145, i64 280, !2144, i64 296, !2145, i64 336, !2028, i64 352, !2028, i64 360, !2140, i64 368, !2140, i64 368, !2140, i64 368, !2140, i64 368, !2140, i64 368, !2140, i64 368, !2140, i64 368, !2140, i64 369, !2140, i64 369}
!2142 = !{!"", !2017, i64 0, !2143, i64 8, !2028, i64 32, !2028, i64 40, !2017, i64 48}
!2143 = !{!"ngx_list_part_s", !2017, i64 0, !2028, i64 8, !2017, i64 16}
!2144 = !{!"", !2017, i64 0, !2028, i64 8, !2028, i64 16, !2028, i64 24, !2017, i64 32}
!2145 = !{!"", !2028, i64 0, !2017, i64 8}
!2146 = !{!"", !2142, i64 0, !2142, i64 56, !2028, i64 112, !2145, i64 120, !2017, i64 136, !2017, i64 144, !2017, i64 152, !2017, i64 160, !2017, i64 168, !2017, i64 176, !2017, i64 184, !2017, i64 192, !2017, i64 200, !2017, i64 208, !2017, i64 216, !2017, i64 224, !2017, i64 232, !2028, i64 240, !2145, i64 248, !2145, i64 264, !2017, i64 280, !2028, i64 288, !2144, i64 296, !2144, i64 336, !2028, i64 376, !2028, i64 384, !2028, i64 392, !2028, i64 400}
!2147 = !DILocation(line: 92, column: 11, scope: !2135)
!2148 = !DILocation(line: 92, column: 9, scope: !2116)
!2149 = !DILocation(line: 93, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 92, column: 23)
!2151 = !DILocation(line: 96, column: 12, scope: !2116)
!2152 = !{!2139, !2017, i64 40}
!2153 = !DILocation(line: 96, column: 10, scope: !2116)
!2154 = !DILocation(line: 98, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 98, column: 9)
!2156 = !DILocation(line: 98, column: 15, scope: !2155)
!2157 = !DILocation(line: 98, column: 22, scope: !2155)
!2158 = !DILocation(line: 98, column: 9, scope: !2116)
!2159 = !DILocation(line: 99, column: 9, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 98, column: 31)
!2161 = !DILocation(line: 104, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 104, column: 9)
!2163 = !DILocation(line: 104, column: 15, scope: !2162)
!2164 = !DILocation(line: 104, column: 9, scope: !2116)
!2165 = !DILocation(line: 105, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 104, column: 29)
!2167 = !{!2139, !2017, i64 16}
!2168 = !DILocation(line: 105, column: 13, scope: !2166)
!2169 = !DILocation(line: 107, column: 13, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 107, column: 13)
!2171 = !DILocation(line: 107, column: 13, scope: !2166)
!2172 = !DILocation(line: 108, column: 20, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 107, column: 18)
!2174 = !DILocation(line: 108, column: 25, scope: !2173)
!2175 = !{!2176, !2028, i64 0}
!2176 = !{!"", !2028, i64 0}
!2177 = !DILocation(line: 108, column: 13, scope: !2173)
!2178 = !DILocation(line: 111, column: 27, scope: !2166)
!2179 = !DILocation(line: 111, column: 30, scope: !2166)
!2180 = !{!2139, !2017, i64 88}
!2181 = !DILocation(line: 111, column: 15, scope: !2166)
!2182 = !DILocation(line: 111, column: 13, scope: !2166)
!2183 = !DILocation(line: 112, column: 13, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 112, column: 13)
!2185 = !DILocation(line: 112, column: 17, scope: !2184)
!2186 = !DILocation(line: 112, column: 13, scope: !2166)
!2187 = !DILocation(line: 113, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !2, line: 112, column: 26)
!2189 = !DILocation(line: 116, column: 9, scope: !2166)
!2190 = !DILocation(line: 116, column: 14, scope: !2166)
!2191 = !DILocation(line: 116, column: 21, scope: !2166)
!2192 = !DILocation(line: 118, column: 9, scope: !2166)
!2193 = !DILocation(line: 120, column: 48, scope: !2166)
!2194 = !DILocation(line: 120, column: 14, scope: !2166)
!2195 = !DILocation(line: 120, column: 12, scope: !2166)
!2196 = !{!2028, !2028, i64 0}
!2197 = !DILocation(line: 121, column: 13, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 121, column: 13)
!2199 = !DILocation(line: 121, column: 16, scope: !2198)
!2200 = !DILocation(line: 121, column: 13, scope: !2166)
!2201 = !DILocation(line: 122, column: 20, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 121, column: 46)
!2203 = !DILocation(line: 122, column: 13, scope: !2202)
!2204 = !DILocation(line: 125, column: 35, scope: !2166)
!2205 = !DILocation(line: 125, column: 9, scope: !2166)
!2206 = !DILocation(line: 126, column: 9, scope: !2166)
!2207 = !DILocation(line: 129, column: 45, scope: !2116)
!2208 = !DILocation(line: 129, column: 12, scope: !2116)
!2209 = !DILocation(line: 129, column: 5, scope: !2116)
!2210 = !DILocation(line: 130, column: 1, scope: !2116)
!2211 = !DISubprogram(name: "ngx_pcalloc", scope: !106, file: !106, line: 81, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!32, !103, !79}
!2214 = !DISubprogram(name: "ngx_http_read_client_request_body", scope: !689, file: !689, line: 136, type: !2215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!478, !687, !1612}
!2217 = distinct !DISubprogram(name: "ngx_http_mirror_body_handler", scope: !2, file: !2, line: 134, type: !703, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2218)
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "r", arg: 1, scope: !2217, file: !2, line: 134, type: !687)
!2220 = !DILocalVariable(name: "ctx", scope: !2217, file: !2, line: 136, type: !2121)
!2221 = !DILocation(line: 134, column: 50, scope: !2217)
!2222 = !DILocation(line: 136, column: 5, scope: !2217)
!2223 = !DILocation(line: 136, column: 29, scope: !2217)
!2224 = !DILocation(line: 138, column: 11, scope: !2217)
!2225 = !DILocation(line: 138, column: 9, scope: !2217)
!2226 = !DILocation(line: 140, column: 52, scope: !2217)
!2227 = !DILocation(line: 140, column: 19, scope: !2217)
!2228 = !DILocation(line: 140, column: 5, scope: !2217)
!2229 = !DILocation(line: 140, column: 10, scope: !2217)
!2230 = !DILocation(line: 140, column: 17, scope: !2217)
!2231 = !DILocation(line: 142, column: 5, scope: !2217)
!2232 = !DILocation(line: 142, column: 8, scope: !2217)
!2233 = !DILocation(line: 142, column: 22, scope: !2217)
!2234 = !DILocation(line: 144, column: 5, scope: !2217)
!2235 = !DILocation(line: 144, column: 8, scope: !2217)
!2236 = !DILocation(line: 144, column: 28, scope: !2217)
!2237 = !{!2139, !2017, i64 56}
!2238 = !DILocation(line: 145, column: 30, scope: !2217)
!2239 = !DILocation(line: 145, column: 5, scope: !2217)
!2240 = !DILocation(line: 146, column: 1, scope: !2217)
!2241 = !DISubprogram(name: "ngx_http_finalize_request", scope: !689, file: !689, line: 123, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2242 = distinct !DISubprogram(name: "ngx_http_mirror_handler_internal", scope: !2, file: !2, line: 150, type: !685, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2243)
!2243 = !{!2244, !2245, !2246, !2247, !2248}
!2244 = !DILocalVariable(name: "r", arg: 1, scope: !2242, file: !2, line: 150, type: !687)
!2245 = !DILocalVariable(name: "name", scope: !2242, file: !2, line: 152, type: !943)
!2246 = !DILocalVariable(name: "i", scope: !2242, file: !2, line: 153, type: !27)
!2247 = !DILocalVariable(name: "sr", scope: !2242, file: !2, line: 154, type: !687)
!2248 = !DILocalVariable(name: "mlcf", scope: !2242, file: !2, line: 155, type: !2053)
!2249 = !DILocation(line: 150, column: 54, scope: !2242)
!2250 = !DILocation(line: 152, column: 5, scope: !2242)
!2251 = !DILocation(line: 152, column: 34, scope: !2242)
!2252 = !DILocation(line: 153, column: 5, scope: !2242)
!2253 = !DILocation(line: 153, column: 34, scope: !2242)
!2254 = !DILocation(line: 154, column: 5, scope: !2242)
!2255 = !DILocation(line: 154, column: 34, scope: !2242)
!2256 = !DILocation(line: 155, column: 5, scope: !2242)
!2257 = !DILocation(line: 155, column: 34, scope: !2242)
!2258 = !DILocation(line: 157, column: 12, scope: !2242)
!2259 = !DILocation(line: 157, column: 10, scope: !2242)
!2260 = !DILocation(line: 159, column: 12, scope: !2242)
!2261 = !DILocation(line: 159, column: 18, scope: !2242)
!2262 = !DILocation(line: 159, column: 26, scope: !2242)
!2263 = !{!2144, !2017, i64 0}
!2264 = !DILocation(line: 159, column: 10, scope: !2242)
!2265 = !DILocation(line: 161, column: 12, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 161, column: 5)
!2267 = !DILocation(line: 161, column: 10, scope: !2266)
!2268 = !DILocation(line: 161, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 161, column: 5)
!2270 = !DILocation(line: 161, column: 21, scope: !2269)
!2271 = !DILocation(line: 161, column: 27, scope: !2269)
!2272 = !DILocation(line: 161, column: 35, scope: !2269)
!2273 = !{!2144, !2028, i64 8}
!2274 = !DILocation(line: 161, column: 19, scope: !2269)
!2275 = !DILocation(line: 161, column: 5, scope: !2266)
!2276 = !DILocation(line: 162, column: 33, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 162, column: 13)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 161, column: 47)
!2279 = !DILocation(line: 162, column: 37, scope: !2277)
!2280 = !DILocation(line: 162, column: 42, scope: !2277)
!2281 = !DILocation(line: 162, column: 47, scope: !2277)
!2282 = !DILocation(line: 162, column: 50, scope: !2277)
!2283 = !DILocation(line: 162, column: 13, scope: !2277)
!2284 = !DILocation(line: 164, column: 13, scope: !2277)
!2285 = !DILocation(line: 162, column: 13, scope: !2278)
!2286 = !DILocation(line: 166, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 165, column: 9)
!2288 = !DILocation(line: 169, column: 9, scope: !2278)
!2289 = !DILocation(line: 169, column: 13, scope: !2278)
!2290 = !DILocation(line: 169, column: 25, scope: !2278)
!2291 = !DILocation(line: 170, column: 22, scope: !2278)
!2292 = !DILocation(line: 170, column: 25, scope: !2278)
!2293 = !{!2139, !2028, i64 920}
!2294 = !DILocation(line: 170, column: 9, scope: !2278)
!2295 = !DILocation(line: 170, column: 13, scope: !2278)
!2296 = !DILocation(line: 170, column: 20, scope: !2278)
!2297 = !DILocation(line: 171, column: 9, scope: !2278)
!2298 = !DILocation(line: 171, column: 13, scope: !2278)
!2299 = !DILocation(line: 171, column: 27, scope: !2278)
!2300 = !DILocation(line: 171, column: 30, scope: !2278)
!2301 = !{i64 0, i64 8, !2196, i64 8, i64 8, !2016}
!2302 = !DILocation(line: 172, column: 5, scope: !2278)
!2303 = !DILocation(line: 161, column: 43, scope: !2269)
!2304 = !DILocation(line: 161, column: 5, scope: !2269)
!2305 = distinct !{!2305, !2275, !2306, !2307}
!2306 = !DILocation(line: 172, column: 5, scope: !2266)
!2307 = !{!"llvm.loop.mustprogress"}
!2308 = !DILocation(line: 174, column: 5, scope: !2242)
!2309 = !DILocation(line: 175, column: 1, scope: !2242)
!2310 = !DISubprogram(name: "ngx_http_core_run_phases", scope: !12, file: !12, line: 469, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2311 = !DISubprogram(name: "ngx_http_subrequest", scope: !12, file: !12, line: 501, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!478, !687, !943, !943, !2314, !1638, !27}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!2315 = distinct !DISubprogram(name: "ngx_http_mirror", scope: !2, file: !2, line: 209, type: !85, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322}
!2317 = !DILocalVariable(name: "cf", arg: 1, scope: !2315, file: !2, line: 209, type: !87)
!2318 = !DILocalVariable(name: "cmd", arg: 2, scope: !2315, file: !2, line: 209, type: !68)
!2319 = !DILocalVariable(name: "conf", arg: 3, scope: !2315, file: !2, line: 209, type: !32)
!2320 = !DILocalVariable(name: "mlcf", scope: !2315, file: !2, line: 211, type: !2053)
!2321 = !DILocalVariable(name: "value", scope: !2315, file: !2, line: 213, type: !943)
!2322 = !DILocalVariable(name: "s", scope: !2315, file: !2, line: 213, type: !943)
!2323 = !DILocation(line: 209, column: 29, scope: !2315)
!2324 = !DILocation(line: 209, column: 48, scope: !2315)
!2325 = !DILocation(line: 209, column: 59, scope: !2315)
!2326 = !DILocation(line: 211, column: 5, scope: !2315)
!2327 = !DILocation(line: 211, column: 33, scope: !2315)
!2328 = !DILocation(line: 211, column: 40, scope: !2315)
!2329 = !DILocation(line: 213, column: 5, scope: !2315)
!2330 = !DILocation(line: 213, column: 17, scope: !2315)
!2331 = !DILocation(line: 213, column: 25, scope: !2315)
!2332 = !DILocation(line: 215, column: 13, scope: !2315)
!2333 = !DILocation(line: 215, column: 17, scope: !2315)
!2334 = !{!2027, !2017, i64 8}
!2335 = !DILocation(line: 215, column: 23, scope: !2315)
!2336 = !DILocation(line: 215, column: 11, scope: !2315)
!2337 = !DILocation(line: 217, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 217, column: 9)
!2339 = !{!2145, !2017, i64 8}
!2340 = !DILocation(line: 217, column: 42, scope: !2338)
!2341 = !DILocation(line: 217, column: 9, scope: !2315)
!2342 = !DILocation(line: 218, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !2, line: 218, column: 13)
!2344 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 217, column: 48)
!2345 = !DILocation(line: 218, column: 19, scope: !2343)
!2346 = !DILocation(line: 218, column: 26, scope: !2343)
!2347 = !DILocation(line: 218, column: 13, scope: !2344)
!2348 = !DILocation(line: 219, column: 13, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 218, column: 49)
!2350 = !DILocation(line: 222, column: 9, scope: !2344)
!2351 = !DILocation(line: 222, column: 15, scope: !2344)
!2352 = !DILocation(line: 222, column: 22, scope: !2344)
!2353 = !DILocation(line: 223, column: 9, scope: !2344)
!2354 = !DILocation(line: 226, column: 9, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 226, column: 9)
!2356 = !DILocation(line: 226, column: 15, scope: !2355)
!2357 = !DILocation(line: 226, column: 22, scope: !2355)
!2358 = !DILocation(line: 226, column: 9, scope: !2315)
!2359 = !DILocation(line: 227, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 226, column: 31)
!2361 = !DILocation(line: 230, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 230, column: 9)
!2363 = !DILocation(line: 230, column: 15, scope: !2362)
!2364 = !DILocation(line: 230, column: 22, scope: !2362)
!2365 = !DILocation(line: 230, column: 9, scope: !2315)
!2366 = !DILocation(line: 231, column: 41, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 230, column: 45)
!2368 = !DILocation(line: 231, column: 45, scope: !2367)
!2369 = !DILocation(line: 231, column: 24, scope: !2367)
!2370 = !DILocation(line: 231, column: 9, scope: !2367)
!2371 = !DILocation(line: 231, column: 15, scope: !2367)
!2372 = !DILocation(line: 231, column: 22, scope: !2367)
!2373 = !DILocation(line: 232, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 232, column: 13)
!2375 = !DILocation(line: 232, column: 19, scope: !2374)
!2376 = !DILocation(line: 232, column: 26, scope: !2374)
!2377 = !DILocation(line: 232, column: 13, scope: !2367)
!2378 = !DILocation(line: 233, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 232, column: 35)
!2380 = !DILocation(line: 235, column: 5, scope: !2367)
!2381 = !DILocation(line: 237, column: 24, scope: !2315)
!2382 = !DILocation(line: 237, column: 30, scope: !2315)
!2383 = !DILocation(line: 237, column: 9, scope: !2315)
!2384 = !DILocation(line: 237, column: 7, scope: !2315)
!2385 = !DILocation(line: 238, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 238, column: 9)
!2387 = !DILocation(line: 238, column: 11, scope: !2386)
!2388 = !DILocation(line: 238, column: 9, scope: !2315)
!2389 = !DILocation(line: 239, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !2, line: 238, column: 20)
!2391 = !DILocation(line: 242, column: 6, scope: !2315)
!2392 = !DILocation(line: 242, column: 10, scope: !2315)
!2393 = !DILocation(line: 244, column: 5, scope: !2315)
!2394 = !DILocation(line: 245, column: 1, scope: !2315)
!2395 = !DISubprogram(name: "strcmp", scope: !2396, file: !2396, line: 156, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!149, !48, !48}
!2399 = !DISubprogram(name: "ngx_array_create", scope: !95, file: !95, line: 25, type: !2400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!93, !103, !27, !79}
