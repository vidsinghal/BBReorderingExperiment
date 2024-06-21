; ModuleID = 'samples/413.bc'
source_filename = "src/http/modules/ngx_http_charset_filter_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_http_conf_ctx_t = type { ptr, ptr, ptr }
%struct.ngx_http_charset_main_conf_t = type { %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_array_t }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_charset_recode_t = type { i64, i64 }
%struct.ngx_http_charset_tables_t = type { i64, i64, ptr, ptr }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_http_charset_t = type { ptr, %struct.ngx_str_t, i24 }
%struct.ngx_http_charset_loc_conf_t = type { i64, i64, i64, %struct.ngx_hash_t, ptr }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i112, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64 }
%struct.ngx_table_elt_t = type { i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_http_charset_ctx_t = type { ptr, i64, %struct.ngx_str_t, ptr, ptr, ptr, i64, [4 x i8], i24 }
%struct.ngx_chain_s = type { ptr, ptr }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_variable_value_t = type { i32, ptr }
%struct.ngx_http_charset_conf_ctx_t = type { ptr, ptr, i64 }

@.str = private unnamed_addr constant [41 x i8] c"8,4,8,0000111111010111001110011111000110\00", align 1, !dbg !0
@ngx_http_charset_filter_module_ctx = internal global %struct.ngx_http_module_t { ptr null, ptr @ngx_http_charset_postconfiguration, ptr @ngx_http_charset_create_main_conf, ptr null, ptr null, ptr null, ptr @ngx_http_charset_create_loc_conf, ptr @ngx_http_charset_merge_loc_conf }, align 8, !dbg !7
@ngx_http_charset_filter_commands = internal global [6 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i64 7, ptr @.str.10 }, i64 1308622850, ptr @ngx_http_set_charset_slot, i64 16, i64 0, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 14, ptr @.str.11 }, i64 1308622850, ptr @ngx_http_set_charset_slot, i64 16, i64 8, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 16, ptr @.str.12 }, i64 1308623360, ptr @ngx_conf_set_flag_slot, i64 16, i64 16, ptr null }, %struct.ngx_command_s { %struct.ngx_str_t { i64 13, ptr @.str.13 }, i64 234883072, ptr @ngx_http_types_slot, i64 16, i64 40, ptr @ngx_http_charset_default_types }, %struct.ngx_command_s { %struct.ngx_str_t { i64 11, ptr @.str.14 }, i64 33554692, ptr @ngx_http_charset_map_block, i64 0, i64 0, ptr null }, %struct.ngx_command_s zeroinitializer], align 16, !dbg !1966
@ngx_http_charset_filter_module = dso_local global %struct.ngx_module_s { i64 -1, i64 -1, ptr null, i64 0, i64 0, i64 1015008, ptr @.str, ptr @ngx_http_charset_filter_module_ctx, ptr @ngx_http_charset_filter_commands, i64 1347703880, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0 }, align 8, !dbg !48
@.str.1 = private unnamed_addr constant [52 x i8] c"no \22charset_map\22 between the charsets \22%V\22 and \22%V\22\00", align 1, !dbg !611
@ngx_http_top_header_filter = external global ptr, align 8
@ngx_http_next_header_filter = internal global ptr null, align 8, !dbg !616
@ngx_http_top_body_filter = external global ptr, align 8
@ngx_http_next_body_filter = internal global ptr null, align 8, !dbg !1905
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown charset \22%V\22 to override\00", align 1, !dbg !1900
@.str.3 = private unnamed_addr constant [7 x i8] c"&#%uD;\00", align 1, !dbg !1911
@ngx_http_charset_default_types = internal global [7 x %struct.ngx_str_t] [%struct.ngx_str_t { i64 9, ptr @.str.4 }, %struct.ngx_str_t { i64 8, ptr @.str.5 }, %struct.ngx_str_t { i64 10, ptr @.str.6 }, %struct.ngx_str_t { i64 16, ptr @.str.7 }, %struct.ngx_str_t { i64 22, ptr @.str.8 }, %struct.ngx_str_t { i64 19, ptr @.str.9 }, %struct.ngx_str_t zeroinitializer], align 16, !dbg !1946
@.str.4 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1, !dbg !1916
@.str.5 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1, !dbg !1921
@.str.6 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1, !dbg !1926
@.str.7 = private unnamed_addr constant [17 x i8] c"text/vnd.wap.wml\00", align 1, !dbg !1931
@.str.8 = private unnamed_addr constant [23 x i8] c"application/javascript\00", align 1, !dbg !1936
@.str.9 = private unnamed_addr constant [20 x i8] c"application/rss+xml\00", align 1, !dbg !1941
@.str.10 = private unnamed_addr constant [8 x i8] c"charset\00", align 1, !dbg !1949
@.str.11 = private unnamed_addr constant [15 x i8] c"source_charset\00", align 1, !dbg !1952
@.str.12 = private unnamed_addr constant [17 x i8] c"override_charset\00", align 1, !dbg !1957
@.str.13 = private unnamed_addr constant [14 x i8] c"charset_types\00", align 1, !dbg !1959
@.str.14 = private unnamed_addr constant [12 x i8] c"charset_map\00", align 1, !dbg !1961
@.str.15 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1, !dbg !1971
@.str.16 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !1976
@.str.17 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1, !dbg !1979
@.str.18 = private unnamed_addr constant [54 x i8] c"\22charset_map\22 between the same charsets \22%V\22 and \22%V\22\00", align 1, !dbg !1982
@.str.19 = private unnamed_addr constant [46 x i8] c"duplicate \22charset_map\22 between \22%V\22 and \22%V\22\00", align 1, !dbg !1987
@.str.20 = private unnamed_addr constant [26 x i8] c"invalid parameters number\00", align 1, !dbg !1992
@.str.21 = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1, !dbg !1997

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_charset_postconfiguration(ptr noundef %cf) #0 !dbg !2032 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %c = alloca i64, align 8
  %i = alloca i64, align 8
  %t = alloca i64, align 8
  %charset = alloca ptr, align 8
  %recode = alloca ptr, align 8
  %tables = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2034, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !2082
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !2035, metadata !DIExpression()), !dbg !2083
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #7, !dbg !2082
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !2036, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !2085
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2037, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !2087
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2038, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7, !dbg !2087
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !2039, metadata !DIExpression()), !dbg !2089
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !2090
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !2040, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 8, ptr %recode) #7, !dbg !2092
  tail call void @llvm.dbg.declare(metadata ptr %recode, metadata !2049, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 8, ptr %tables) #7, !dbg !2094
  tail call void @llvm.dbg.declare(metadata ptr %tables, metadata !2056, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !2096
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !2065, metadata !DIExpression()), !dbg !2097
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2098, !tbaa !2077
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 7, !dbg !2098
  %1 = load ptr, ptr %ctx, align 8, !dbg !2098, !tbaa !2099
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %1, i32 0, i32 0, !dbg !2098
  %2 = load ptr, ptr %main_conf, align 8, !dbg !2098, !tbaa !2102
  %3 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !2098, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2098
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2098, !tbaa !2077
  store ptr %4, ptr %mcf, align 8, !dbg !2106, !tbaa !2077
  %5 = load ptr, ptr %mcf, align 8, !dbg !2107, !tbaa !2077
  %recodes = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %5, i32 0, i32 2, !dbg !2108
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %recodes, i32 0, i32 0, !dbg !2109
  %6 = load ptr, ptr %elts, align 8, !dbg !2109, !tbaa !2110
  store ptr %6, ptr %recode, align 8, !dbg !2113, !tbaa !2077
  %7 = load ptr, ptr %mcf, align 8, !dbg !2114, !tbaa !2077
  %tables1 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %7, i32 0, i32 1, !dbg !2115
  %elts2 = getelementptr inbounds %struct.ngx_array_t, ptr %tables1, i32 0, i32 0, !dbg !2116
  %8 = load ptr, ptr %elts2, align 8, !dbg !2116, !tbaa !2117
  store ptr %8, ptr %tables, align 8, !dbg !2118, !tbaa !2077
  %9 = load ptr, ptr %mcf, align 8, !dbg !2119, !tbaa !2077
  %charsets = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %9, i32 0, i32 0, !dbg !2120
  %elts3 = getelementptr inbounds %struct.ngx_array_t, ptr %charsets, i32 0, i32 0, !dbg !2121
  %10 = load ptr, ptr %elts3, align 8, !dbg !2121, !tbaa !2122
  store ptr %10, ptr %charset, align 8, !dbg !2123, !tbaa !2077
  store i64 0, ptr %i, align 8, !dbg !2124, !tbaa !2125
  br label %for.cond, !dbg !2126

for.cond:                                         ; preds = %for.inc40, %entry
  %11 = load i64, ptr %i, align 8, !dbg !2127, !tbaa !2125
  %12 = load ptr, ptr %mcf, align 8, !dbg !2128, !tbaa !2077
  %recodes4 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %12, i32 0, i32 2, !dbg !2129
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %recodes4, i32 0, i32 1, !dbg !2130
  %13 = load i64, ptr %nelts, align 8, !dbg !2130, !tbaa !2131
  %cmp = icmp ult i64 %11, %13, !dbg !2132
  br i1 %cmp, label %for.body, label %for.end42, !dbg !2133

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %recode, align 8, !dbg !2134, !tbaa !2077
  %15 = load i64, ptr %i, align 8, !dbg !2135, !tbaa !2125
  %arrayidx5 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %14, i64 %15, !dbg !2134
  %src6 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx5, i32 0, i32 0, !dbg !2136
  %16 = load i64, ptr %src6, align 8, !dbg !2136, !tbaa !2137
  store i64 %16, ptr %c, align 8, !dbg !2139, !tbaa !2125
  store i64 0, ptr %t, align 8, !dbg !2140, !tbaa !2125
  br label %for.cond7, !dbg !2142

for.cond7:                                        ; preds = %for.inc, %for.body
  %17 = load i64, ptr %t, align 8, !dbg !2143, !tbaa !2125
  %18 = load ptr, ptr %mcf, align 8, !dbg !2145, !tbaa !2077
  %tables8 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %18, i32 0, i32 1, !dbg !2146
  %nelts9 = getelementptr inbounds %struct.ngx_array_t, ptr %tables8, i32 0, i32 1, !dbg !2147
  %19 = load i64, ptr %nelts9, align 8, !dbg !2147, !tbaa !2148
  %cmp10 = icmp ult i64 %17, %19, !dbg !2149
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !2150

for.body11:                                       ; preds = %for.cond7
  %20 = load i64, ptr %c, align 8, !dbg !2151, !tbaa !2125
  %21 = load ptr, ptr %tables, align 8, !dbg !2154, !tbaa !2077
  %22 = load i64, ptr %t, align 8, !dbg !2155, !tbaa !2125
  %arrayidx12 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %21, i64 %22, !dbg !2154
  %src13 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx12, i32 0, i32 0, !dbg !2156
  %23 = load i64, ptr %src13, align 8, !dbg !2156, !tbaa !2157
  %cmp14 = icmp eq i64 %20, %23, !dbg !2159
  br i1 %cmp14, label %land.lhs.true, label %if.end, !dbg !2160

land.lhs.true:                                    ; preds = %for.body11
  %24 = load ptr, ptr %recode, align 8, !dbg !2161, !tbaa !2077
  %25 = load i64, ptr %i, align 8, !dbg !2162, !tbaa !2125
  %arrayidx15 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %24, i64 %25, !dbg !2161
  %dst16 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx15, i32 0, i32 1, !dbg !2163
  %26 = load i64, ptr %dst16, align 8, !dbg !2163, !tbaa !2164
  %27 = load ptr, ptr %tables, align 8, !dbg !2165, !tbaa !2077
  %28 = load i64, ptr %t, align 8, !dbg !2166, !tbaa !2125
  %arrayidx17 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %27, i64 %28, !dbg !2165
  %dst18 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx17, i32 0, i32 1, !dbg !2167
  %29 = load i64, ptr %dst18, align 8, !dbg !2167, !tbaa !2168
  %cmp19 = icmp eq i64 %26, %29, !dbg !2169
  br i1 %cmp19, label %if.then, label %if.end, !dbg !2170

if.then:                                          ; preds = %land.lhs.true
  br label %next, !dbg !2171

if.end:                                           ; preds = %land.lhs.true, %for.body11
  %30 = load i64, ptr %c, align 8, !dbg !2173, !tbaa !2125
  %31 = load ptr, ptr %tables, align 8, !dbg !2175, !tbaa !2077
  %32 = load i64, ptr %t, align 8, !dbg !2176, !tbaa !2125
  %arrayidx20 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %31, i64 %32, !dbg !2175
  %dst21 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx20, i32 0, i32 1, !dbg !2177
  %33 = load i64, ptr %dst21, align 8, !dbg !2177, !tbaa !2168
  %cmp22 = icmp eq i64 %30, %33, !dbg !2178
  br i1 %cmp22, label %land.lhs.true23, label %if.end30, !dbg !2179

land.lhs.true23:                                  ; preds = %if.end
  %34 = load ptr, ptr %recode, align 8, !dbg !2180, !tbaa !2077
  %35 = load i64, ptr %i, align 8, !dbg !2181, !tbaa !2125
  %arrayidx24 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %34, i64 %35, !dbg !2180
  %dst25 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx24, i32 0, i32 1, !dbg !2182
  %36 = load i64, ptr %dst25, align 8, !dbg !2182, !tbaa !2164
  %37 = load ptr, ptr %tables, align 8, !dbg !2183, !tbaa !2077
  %38 = load i64, ptr %t, align 8, !dbg !2184, !tbaa !2125
  %arrayidx26 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %37, i64 %38, !dbg !2183
  %src27 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx26, i32 0, i32 0, !dbg !2185
  %39 = load i64, ptr %src27, align 8, !dbg !2185, !tbaa !2157
  %cmp28 = icmp eq i64 %36, %39, !dbg !2186
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !2187

if.then29:                                        ; preds = %land.lhs.true23
  br label %next, !dbg !2188

if.end30:                                         ; preds = %land.lhs.true23, %if.end
  br label %for.inc, !dbg !2190

for.inc:                                          ; preds = %if.end30
  %40 = load i64, ptr %t, align 8, !dbg !2191, !tbaa !2125
  %inc = add i64 %40, 1, !dbg !2191
  store i64 %inc, ptr %t, align 8, !dbg !2191, !tbaa !2125
  br label %for.cond7, !dbg !2192, !llvm.loop !2193

for.end:                                          ; preds = %for.cond7
  %41 = load ptr, ptr %cf.addr, align 8, !dbg !2196, !tbaa !2077
  %log = getelementptr inbounds %struct.ngx_conf_s, ptr %41, i32 0, i32 6, !dbg !2196
  %42 = load ptr, ptr %log, align 8, !dbg !2196, !tbaa !2198
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %42, i32 0, i32 0, !dbg !2196
  %43 = load i64, ptr %log_level, align 8, !dbg !2196, !tbaa !2199
  %cmp31 = icmp uge i64 %43, 1, !dbg !2196
  br i1 %cmp31, label %if.then32, label %if.end39, !dbg !2201

if.then32:                                        ; preds = %for.end
  %44 = load ptr, ptr %cf.addr, align 8, !dbg !2196, !tbaa !2077
  %log33 = getelementptr inbounds %struct.ngx_conf_s, ptr %44, i32 0, i32 6, !dbg !2196
  %45 = load ptr, ptr %log33, align 8, !dbg !2196, !tbaa !2198
  %46 = load ptr, ptr %charset, align 8, !dbg !2196, !tbaa !2077
  %47 = load i64, ptr %c, align 8, !dbg !2196, !tbaa !2125
  %arrayidx34 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %46, i64 %47, !dbg !2196
  %name = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx34, i32 0, i32 1, !dbg !2196
  %48 = load ptr, ptr %charset, align 8, !dbg !2196, !tbaa !2077
  %49 = load ptr, ptr %recode, align 8, !dbg !2196, !tbaa !2077
  %50 = load i64, ptr %i, align 8, !dbg !2196, !tbaa !2125
  %arrayidx35 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %49, i64 %50, !dbg !2196
  %dst36 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx35, i32 0, i32 1, !dbg !2196
  %51 = load i64, ptr %dst36, align 8, !dbg !2196, !tbaa !2164
  %arrayidx37 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %48, i64 %51, !dbg !2196
  %name38 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx37, i32 0, i32 1, !dbg !2196
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 1, ptr noundef %45, i32 noundef 0, ptr noundef @.str.1, ptr noundef %name, ptr noundef %name38), !dbg !2196
  br label %if.end39, !dbg !2196

if.end39:                                         ; preds = %if.then32, %for.end
  store i64 -1, ptr %retval, align 8, !dbg !2202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2202

next:                                             ; preds = %if.then29, %if.then
  tail call void @llvm.dbg.label(metadata !2073), !dbg !2203
  br label %for.inc40, !dbg !2204

for.inc40:                                        ; preds = %next
  %52 = load i64, ptr %i, align 8, !dbg !2205, !tbaa !2125
  %inc41 = add i64 %52, 1, !dbg !2205
  store i64 %inc41, ptr %i, align 8, !dbg !2205, !tbaa !2125
  br label %for.cond, !dbg !2206, !llvm.loop !2207

for.end42:                                        ; preds = %for.cond
  store i64 0, ptr %t, align 8, !dbg !2209, !tbaa !2125
  br label %for.cond43, !dbg !2211

for.cond43:                                       ; preds = %for.inc91, %for.end42
  %53 = load i64, ptr %t, align 8, !dbg !2212, !tbaa !2125
  %54 = load ptr, ptr %mcf, align 8, !dbg !2214, !tbaa !2077
  %tables44 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %54, i32 0, i32 1, !dbg !2215
  %nelts45 = getelementptr inbounds %struct.ngx_array_t, ptr %tables44, i32 0, i32 1, !dbg !2216
  %55 = load i64, ptr %nelts45, align 8, !dbg !2216, !tbaa !2148
  %cmp46 = icmp ult i64 %53, %55, !dbg !2217
  br i1 %cmp46, label %for.body47, label %for.end93, !dbg !2218

for.body47:                                       ; preds = %for.cond43
  %56 = load ptr, ptr %charset, align 8, !dbg !2219, !tbaa !2077
  %57 = load ptr, ptr %tables, align 8, !dbg !2221, !tbaa !2077
  %58 = load i64, ptr %t, align 8, !dbg !2222, !tbaa !2125
  %arrayidx48 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %57, i64 %58, !dbg !2221
  %src49 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx48, i32 0, i32 0, !dbg !2223
  %59 = load i64, ptr %src49, align 8, !dbg !2223, !tbaa !2157
  %arrayidx50 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %56, i64 %59, !dbg !2219
  %tables51 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx50, i32 0, i32 0, !dbg !2224
  %60 = load ptr, ptr %tables51, align 8, !dbg !2224, !tbaa !2225
  store ptr %60, ptr %src, align 8, !dbg !2229, !tbaa !2077
  %61 = load ptr, ptr %src, align 8, !dbg !2230, !tbaa !2077
  %cmp52 = icmp eq ptr %61, null, !dbg !2232
  br i1 %cmp52, label %if.then53, label %if.end63, !dbg !2233

if.then53:                                        ; preds = %for.body47
  %62 = load ptr, ptr %cf.addr, align 8, !dbg !2234, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %62, i32 0, i32 3, !dbg !2236
  %63 = load ptr, ptr %pool, align 8, !dbg !2236, !tbaa !2237
  %64 = load ptr, ptr %mcf, align 8, !dbg !2238, !tbaa !2077
  %charsets54 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %64, i32 0, i32 0, !dbg !2239
  %nelts55 = getelementptr inbounds %struct.ngx_array_t, ptr %charsets54, i32 0, i32 1, !dbg !2240
  %65 = load i64, ptr %nelts55, align 8, !dbg !2240, !tbaa !2241
  %mul = mul i64 8, %65, !dbg !2242
  %call = call ptr @ngx_pcalloc(ptr noundef %63, i64 noundef %mul), !dbg !2243
  store ptr %call, ptr %src, align 8, !dbg !2244, !tbaa !2077
  %66 = load ptr, ptr %src, align 8, !dbg !2245, !tbaa !2077
  %cmp56 = icmp eq ptr %66, null, !dbg !2247
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !2248

if.then57:                                        ; preds = %if.then53
  store i64 -1, ptr %retval, align 8, !dbg !2249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2249

if.end58:                                         ; preds = %if.then53
  %67 = load ptr, ptr %src, align 8, !dbg !2251, !tbaa !2077
  %68 = load ptr, ptr %charset, align 8, !dbg !2252, !tbaa !2077
  %69 = load ptr, ptr %tables, align 8, !dbg !2253, !tbaa !2077
  %70 = load i64, ptr %t, align 8, !dbg !2254, !tbaa !2125
  %arrayidx59 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %69, i64 %70, !dbg !2253
  %src60 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx59, i32 0, i32 0, !dbg !2255
  %71 = load i64, ptr %src60, align 8, !dbg !2255, !tbaa !2157
  %arrayidx61 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %68, i64 %71, !dbg !2252
  %tables62 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx61, i32 0, i32 0, !dbg !2256
  store ptr %67, ptr %tables62, align 8, !dbg !2257, !tbaa !2225
  br label %if.end63, !dbg !2258

if.end63:                                         ; preds = %if.end58, %for.body47
  %72 = load ptr, ptr %charset, align 8, !dbg !2259, !tbaa !2077
  %73 = load ptr, ptr %tables, align 8, !dbg !2260, !tbaa !2077
  %74 = load i64, ptr %t, align 8, !dbg !2261, !tbaa !2125
  %arrayidx64 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %73, i64 %74, !dbg !2260
  %dst65 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx64, i32 0, i32 1, !dbg !2262
  %75 = load i64, ptr %dst65, align 8, !dbg !2262, !tbaa !2168
  %arrayidx66 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %72, i64 %75, !dbg !2259
  %tables67 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx66, i32 0, i32 0, !dbg !2263
  %76 = load ptr, ptr %tables67, align 8, !dbg !2263, !tbaa !2225
  store ptr %76, ptr %dst, align 8, !dbg !2264, !tbaa !2077
  %77 = load ptr, ptr %dst, align 8, !dbg !2265, !tbaa !2077
  %cmp68 = icmp eq ptr %77, null, !dbg !2267
  br i1 %cmp68, label %if.then69, label %if.end82, !dbg !2268

if.then69:                                        ; preds = %if.end63
  %78 = load ptr, ptr %cf.addr, align 8, !dbg !2269, !tbaa !2077
  %pool70 = getelementptr inbounds %struct.ngx_conf_s, ptr %78, i32 0, i32 3, !dbg !2271
  %79 = load ptr, ptr %pool70, align 8, !dbg !2271, !tbaa !2237
  %80 = load ptr, ptr %mcf, align 8, !dbg !2272, !tbaa !2077
  %charsets71 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %80, i32 0, i32 0, !dbg !2273
  %nelts72 = getelementptr inbounds %struct.ngx_array_t, ptr %charsets71, i32 0, i32 1, !dbg !2274
  %81 = load i64, ptr %nelts72, align 8, !dbg !2274, !tbaa !2241
  %mul73 = mul i64 8, %81, !dbg !2275
  %call74 = call ptr @ngx_pcalloc(ptr noundef %79, i64 noundef %mul73), !dbg !2276
  store ptr %call74, ptr %dst, align 8, !dbg !2277, !tbaa !2077
  %82 = load ptr, ptr %dst, align 8, !dbg !2278, !tbaa !2077
  %cmp75 = icmp eq ptr %82, null, !dbg !2280
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !2281

if.then76:                                        ; preds = %if.then69
  store i64 -1, ptr %retval, align 8, !dbg !2282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2282

if.end77:                                         ; preds = %if.then69
  %83 = load ptr, ptr %dst, align 8, !dbg !2284, !tbaa !2077
  %84 = load ptr, ptr %charset, align 8, !dbg !2285, !tbaa !2077
  %85 = load ptr, ptr %tables, align 8, !dbg !2286, !tbaa !2077
  %86 = load i64, ptr %t, align 8, !dbg !2287, !tbaa !2125
  %arrayidx78 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %85, i64 %86, !dbg !2286
  %dst79 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx78, i32 0, i32 1, !dbg !2288
  %87 = load i64, ptr %dst79, align 8, !dbg !2288, !tbaa !2168
  %arrayidx80 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %84, i64 %87, !dbg !2285
  %tables81 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx80, i32 0, i32 0, !dbg !2289
  store ptr %83, ptr %tables81, align 8, !dbg !2290, !tbaa !2225
  br label %if.end82, !dbg !2291

if.end82:                                         ; preds = %if.end77, %if.end63
  %88 = load ptr, ptr %tables, align 8, !dbg !2292, !tbaa !2077
  %89 = load i64, ptr %t, align 8, !dbg !2293, !tbaa !2125
  %arrayidx83 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %88, i64 %89, !dbg !2292
  %src2dst = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx83, i32 0, i32 2, !dbg !2294
  %90 = load ptr, ptr %src2dst, align 8, !dbg !2294, !tbaa !2295
  %91 = load ptr, ptr %src, align 8, !dbg !2296, !tbaa !2077
  %92 = load ptr, ptr %tables, align 8, !dbg !2297, !tbaa !2077
  %93 = load i64, ptr %t, align 8, !dbg !2298, !tbaa !2125
  %arrayidx84 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %92, i64 %93, !dbg !2297
  %dst85 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx84, i32 0, i32 1, !dbg !2299
  %94 = load i64, ptr %dst85, align 8, !dbg !2299, !tbaa !2168
  %arrayidx86 = getelementptr inbounds ptr, ptr %91, i64 %94, !dbg !2296
  store ptr %90, ptr %arrayidx86, align 8, !dbg !2300, !tbaa !2077
  %95 = load ptr, ptr %tables, align 8, !dbg !2301, !tbaa !2077
  %96 = load i64, ptr %t, align 8, !dbg !2302, !tbaa !2125
  %arrayidx87 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %95, i64 %96, !dbg !2301
  %dst2src = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx87, i32 0, i32 3, !dbg !2303
  %97 = load ptr, ptr %dst2src, align 8, !dbg !2303, !tbaa !2304
  %98 = load ptr, ptr %dst, align 8, !dbg !2305, !tbaa !2077
  %99 = load ptr, ptr %tables, align 8, !dbg !2306, !tbaa !2077
  %100 = load i64, ptr %t, align 8, !dbg !2307, !tbaa !2125
  %arrayidx88 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %99, i64 %100, !dbg !2306
  %src89 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %arrayidx88, i32 0, i32 0, !dbg !2308
  %101 = load i64, ptr %src89, align 8, !dbg !2308, !tbaa !2157
  %arrayidx90 = getelementptr inbounds ptr, ptr %98, i64 %101, !dbg !2305
  store ptr %97, ptr %arrayidx90, align 8, !dbg !2309, !tbaa !2077
  br label %for.inc91, !dbg !2310

for.inc91:                                        ; preds = %if.end82
  %102 = load i64, ptr %t, align 8, !dbg !2311, !tbaa !2125
  %inc92 = add i64 %102, 1, !dbg !2311
  store i64 %inc92, ptr %t, align 8, !dbg !2311, !tbaa !2125
  br label %for.cond43, !dbg !2312, !llvm.loop !2313

for.end93:                                        ; preds = %for.cond43
  %103 = load ptr, ptr @ngx_http_top_header_filter, align 8, !dbg !2315, !tbaa !2077
  store ptr %103, ptr @ngx_http_next_header_filter, align 8, !dbg !2316, !tbaa !2077
  store ptr @ngx_http_charset_header_filter, ptr @ngx_http_top_header_filter, align 8, !dbg !2317, !tbaa !2077
  %104 = load ptr, ptr @ngx_http_top_body_filter, align 8, !dbg !2318, !tbaa !2077
  store ptr %104, ptr @ngx_http_next_body_filter, align 8, !dbg !2319, !tbaa !2077
  store ptr @ngx_http_charset_body_filter, ptr @ngx_http_top_body_filter, align 8, !dbg !2320, !tbaa !2077
  store i64 0, ptr %retval, align 8, !dbg !2321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2321

cleanup:                                          ; preds = %for.end93, %if.then76, %if.then57, %if.end39
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %tables) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %recode) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #7, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !2322
  %105 = load i64, ptr %retval, align 8, !dbg !2322
  ret i64 %105, !dbg !2322
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_create_main_conf(ptr noundef %cf) #0 !dbg !2323 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !2328
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !2326, metadata !DIExpression()), !dbg !2329
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2330, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2331
  %1 = load ptr, ptr %pool, align 8, !dbg !2331, !tbaa !2237
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 120), !dbg !2332
  store ptr %call, ptr %mcf, align 8, !dbg !2333, !tbaa !2077
  %2 = load ptr, ptr %mcf, align 8, !dbg !2334, !tbaa !2077
  %cmp = icmp eq ptr %2, null, !dbg !2336
  br i1 %cmp, label %if.then, label %if.end, !dbg !2337

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2338

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mcf, align 8, !dbg !2340, !tbaa !2077
  %charsets = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %3, i32 0, i32 0, !dbg !2342
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2343, !tbaa !2077
  %pool1 = getelementptr inbounds %struct.ngx_conf_s, ptr %4, i32 0, i32 3, !dbg !2344
  %5 = load ptr, ptr %pool1, align 8, !dbg !2344, !tbaa !2237
  %call2 = call i64 @ngx_array_init(ptr noundef %charsets, ptr noundef %5, i64 noundef 2, i64 noundef 32), !dbg !2345
  %cmp3 = icmp ne i64 %call2, 0, !dbg !2346
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2347

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2348

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %mcf, align 8, !dbg !2350, !tbaa !2077
  %tables = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %6, i32 0, i32 1, !dbg !2352
  %7 = load ptr, ptr %cf.addr, align 8, !dbg !2353, !tbaa !2077
  %pool6 = getelementptr inbounds %struct.ngx_conf_s, ptr %7, i32 0, i32 3, !dbg !2354
  %8 = load ptr, ptr %pool6, align 8, !dbg !2354, !tbaa !2237
  %call7 = call i64 @ngx_array_init(ptr noundef %tables, ptr noundef %8, i64 noundef 1, i64 noundef 32), !dbg !2355
  %cmp8 = icmp ne i64 %call7, 0, !dbg !2356
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2357

if.then9:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !2358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2358

if.end10:                                         ; preds = %if.end5
  %9 = load ptr, ptr %mcf, align 8, !dbg !2360, !tbaa !2077
  %recodes = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %9, i32 0, i32 2, !dbg !2362
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2363, !tbaa !2077
  %pool11 = getelementptr inbounds %struct.ngx_conf_s, ptr %10, i32 0, i32 3, !dbg !2364
  %11 = load ptr, ptr %pool11, align 8, !dbg !2364, !tbaa !2237
  %call12 = call i64 @ngx_array_init(ptr noundef %recodes, ptr noundef %11, i64 noundef 2, i64 noundef 16), !dbg !2365
  %cmp13 = icmp ne i64 %call12, 0, !dbg !2366
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2367

if.then14:                                        ; preds = %if.end10
  store ptr null, ptr %retval, align 8, !dbg !2368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2368

if.end15:                                         ; preds = %if.end10
  %12 = load ptr, ptr %mcf, align 8, !dbg !2370, !tbaa !2077
  store ptr %12, ptr %retval, align 8, !dbg !2371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2371

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !2372
  %13 = load ptr, ptr %retval, align 8, !dbg !2372
  ret ptr %13, !dbg !2372
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_create_loc_conf(ptr noundef %cf) #0 !dbg !2373 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %lcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2375, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcf) #7, !dbg !2387
  tail call void @llvm.dbg.declare(metadata ptr %lcf, metadata !2376, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2389, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 3, !dbg !2390
  %1 = load ptr, ptr %pool, align 8, !dbg !2390, !tbaa !2237
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 48), !dbg !2391
  store ptr %call, ptr %lcf, align 8, !dbg !2392, !tbaa !2077
  %2 = load ptr, ptr %lcf, align 8, !dbg !2393, !tbaa !2077
  %cmp = icmp eq ptr %2, null, !dbg !2395
  br i1 %cmp, label %if.then, label %if.end, !dbg !2396

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2397

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lcf, align 8, !dbg !2399, !tbaa !2077
  %charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %3, i32 0, i32 0, !dbg !2400
  store i64 -1, ptr %charset, align 8, !dbg !2401, !tbaa !2402
  %4 = load ptr, ptr %lcf, align 8, !dbg !2405, !tbaa !2077
  %source_charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %4, i32 0, i32 1, !dbg !2406
  store i64 -1, ptr %source_charset, align 8, !dbg !2407, !tbaa !2408
  %5 = load ptr, ptr %lcf, align 8, !dbg !2409, !tbaa !2077
  %override_charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %5, i32 0, i32 2, !dbg !2410
  store i64 -1, ptr %override_charset, align 8, !dbg !2411, !tbaa !2412
  %6 = load ptr, ptr %lcf, align 8, !dbg !2413, !tbaa !2077
  store ptr %6, ptr %retval, align 8, !dbg !2414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2414

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcf) #7, !dbg !2415
  %7 = load ptr, ptr %retval, align 8, !dbg !2415
  ret ptr %7, !dbg !2415
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_merge_loc_conf(ptr noundef %cf, ptr noundef %parent, ptr noundef %child) #0 !dbg !2416 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %i = alloca i64, align 8
  %recode = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2418, metadata !DIExpression()), !dbg !2426
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2419, metadata !DIExpression()), !dbg !2427
  store ptr %child, ptr %child.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !2420, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #7, !dbg !2429
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !2421, metadata !DIExpression()), !dbg !2430
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2431, !tbaa !2077
  store ptr %0, ptr %prev, align 8, !dbg !2430, !tbaa !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #7, !dbg !2432
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2422, metadata !DIExpression()), !dbg !2433
  %1 = load ptr, ptr %child.addr, align 8, !dbg !2434, !tbaa !2077
  store ptr %1, ptr %conf, align 8, !dbg !2433, !tbaa !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !2435
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2423, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 8, ptr %recode) #7, !dbg !2437
  tail call void @llvm.dbg.declare(metadata ptr %recode, metadata !2424, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !2439
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !2425, metadata !DIExpression()), !dbg !2440
  %2 = load ptr, ptr %cf.addr, align 8, !dbg !2441, !tbaa !2077
  %3 = load ptr, ptr %conf, align 8, !dbg !2443, !tbaa !2077
  %types_keys = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %3, i32 0, i32 4, !dbg !2444
  %4 = load ptr, ptr %conf, align 8, !dbg !2445, !tbaa !2077
  %types = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %4, i32 0, i32 3, !dbg !2446
  %5 = load ptr, ptr %prev, align 8, !dbg !2447, !tbaa !2077
  %types_keys1 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %5, i32 0, i32 4, !dbg !2448
  %6 = load ptr, ptr %prev, align 8, !dbg !2449, !tbaa !2077
  %types2 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %6, i32 0, i32 3, !dbg !2450
  %call = call ptr @ngx_http_merge_types(ptr noundef %2, ptr noundef %types_keys, ptr noundef %types, ptr noundef %types_keys1, ptr noundef %types2, ptr noundef @ngx_http_charset_default_types), !dbg !2451
  %cmp = icmp ne ptr %call, null, !dbg !2452
  br i1 %cmp, label %if.then, label %if.end, !dbg !2453

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2454

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %conf, align 8, !dbg !2456, !tbaa !2077
  %override_charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %7, i32 0, i32 2, !dbg !2456
  %8 = load i64, ptr %override_charset, align 8, !dbg !2456, !tbaa !2412
  %cmp3 = icmp eq i64 %8, -1, !dbg !2456
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !2458

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %prev, align 8, !dbg !2459, !tbaa !2077
  %override_charset5 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %9, i32 0, i32 2, !dbg !2459
  %10 = load i64, ptr %override_charset5, align 8, !dbg !2459, !tbaa !2412
  %cmp6 = icmp eq i64 %10, -1, !dbg !2459
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2459

cond.true:                                        ; preds = %if.then4
  br label %cond.end, !dbg !2459

cond.false:                                       ; preds = %if.then4
  %11 = load ptr, ptr %prev, align 8, !dbg !2459, !tbaa !2077
  %override_charset7 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %11, i32 0, i32 2, !dbg !2459
  %12 = load i64, ptr %override_charset7, align 8, !dbg !2459, !tbaa !2412
  br label %cond.end, !dbg !2459

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %12, %cond.false ], !dbg !2459
  %13 = load ptr, ptr %conf, align 8, !dbg !2459, !tbaa !2077
  %override_charset8 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %13, i32 0, i32 2, !dbg !2459
  store i64 %cond, ptr %override_charset8, align 8, !dbg !2459, !tbaa !2412
  br label %if.end9, !dbg !2459

if.end9:                                          ; preds = %cond.end, %if.end
  %14 = load ptr, ptr %conf, align 8, !dbg !2461, !tbaa !2077
  %charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %14, i32 0, i32 0, !dbg !2461
  %15 = load i64, ptr %charset, align 8, !dbg !2461, !tbaa !2402
  %cmp10 = icmp eq i64 %15, -1, !dbg !2461
  br i1 %cmp10, label %if.then11, label %if.end20, !dbg !2463

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %prev, align 8, !dbg !2464, !tbaa !2077
  %charset12 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %16, i32 0, i32 0, !dbg !2464
  %17 = load i64, ptr %charset12, align 8, !dbg !2464, !tbaa !2402
  %cmp13 = icmp eq i64 %17, -1, !dbg !2464
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !2464

cond.true14:                                      ; preds = %if.then11
  br label %cond.end17, !dbg !2464

cond.false15:                                     ; preds = %if.then11
  %18 = load ptr, ptr %prev, align 8, !dbg !2464, !tbaa !2077
  %charset16 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %18, i32 0, i32 0, !dbg !2464
  %19 = load i64, ptr %charset16, align 8, !dbg !2464, !tbaa !2402
  br label %cond.end17, !dbg !2464

cond.end17:                                       ; preds = %cond.false15, %cond.true14
  %cond18 = phi i64 [ -2, %cond.true14 ], [ %19, %cond.false15 ], !dbg !2464
  %20 = load ptr, ptr %conf, align 8, !dbg !2464, !tbaa !2077
  %charset19 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %20, i32 0, i32 0, !dbg !2464
  store i64 %cond18, ptr %charset19, align 8, !dbg !2464, !tbaa !2402
  br label %if.end20, !dbg !2464

if.end20:                                         ; preds = %cond.end17, %if.end9
  %21 = load ptr, ptr %conf, align 8, !dbg !2466, !tbaa !2077
  %source_charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %21, i32 0, i32 1, !dbg !2466
  %22 = load i64, ptr %source_charset, align 8, !dbg !2466, !tbaa !2408
  %cmp21 = icmp eq i64 %22, -1, !dbg !2466
  br i1 %cmp21, label %if.then22, label %if.end31, !dbg !2468

if.then22:                                        ; preds = %if.end20
  %23 = load ptr, ptr %prev, align 8, !dbg !2469, !tbaa !2077
  %source_charset23 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %23, i32 0, i32 1, !dbg !2469
  %24 = load i64, ptr %source_charset23, align 8, !dbg !2469, !tbaa !2408
  %cmp24 = icmp eq i64 %24, -1, !dbg !2469
  br i1 %cmp24, label %cond.true25, label %cond.false26, !dbg !2469

cond.true25:                                      ; preds = %if.then22
  br label %cond.end28, !dbg !2469

cond.false26:                                     ; preds = %if.then22
  %25 = load ptr, ptr %prev, align 8, !dbg !2469, !tbaa !2077
  %source_charset27 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %25, i32 0, i32 1, !dbg !2469
  %26 = load i64, ptr %source_charset27, align 8, !dbg !2469, !tbaa !2408
  br label %cond.end28, !dbg !2469

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi i64 [ -2, %cond.true25 ], [ %26, %cond.false26 ], !dbg !2469
  %27 = load ptr, ptr %conf, align 8, !dbg !2469, !tbaa !2077
  %source_charset30 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %27, i32 0, i32 1, !dbg !2469
  store i64 %cond29, ptr %source_charset30, align 8, !dbg !2469, !tbaa !2408
  br label %if.end31, !dbg !2469

if.end31:                                         ; preds = %cond.end28, %if.end20
  %28 = load ptr, ptr %conf, align 8, !dbg !2471, !tbaa !2077
  %charset32 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %28, i32 0, i32 0, !dbg !2473
  %29 = load i64, ptr %charset32, align 8, !dbg !2473, !tbaa !2402
  %cmp33 = icmp eq i64 %29, -2, !dbg !2474
  br i1 %cmp33, label %if.then40, label %lor.lhs.false, !dbg !2475

lor.lhs.false:                                    ; preds = %if.end31
  %30 = load ptr, ptr %conf, align 8, !dbg !2476, !tbaa !2077
  %source_charset34 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %30, i32 0, i32 1, !dbg !2477
  %31 = load i64, ptr %source_charset34, align 8, !dbg !2477, !tbaa !2408
  %cmp35 = icmp eq i64 %31, -2, !dbg !2478
  br i1 %cmp35, label %if.then40, label %lor.lhs.false36, !dbg !2479

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %32 = load ptr, ptr %conf, align 8, !dbg !2480, !tbaa !2077
  %charset37 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %32, i32 0, i32 0, !dbg !2481
  %33 = load i64, ptr %charset37, align 8, !dbg !2481, !tbaa !2402
  %34 = load ptr, ptr %conf, align 8, !dbg !2482, !tbaa !2077
  %source_charset38 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %34, i32 0, i32 1, !dbg !2483
  %35 = load i64, ptr %source_charset38, align 8, !dbg !2483, !tbaa !2408
  %cmp39 = icmp eq i64 %33, %35, !dbg !2484
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2485

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %if.end31
  store ptr null, ptr %retval, align 8, !dbg !2486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2486

if.end41:                                         ; preds = %lor.lhs.false36
  %36 = load ptr, ptr %conf, align 8, !dbg !2488, !tbaa !2077
  %source_charset42 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %36, i32 0, i32 1, !dbg !2490
  %37 = load i64, ptr %source_charset42, align 8, !dbg !2490, !tbaa !2408
  %cmp43 = icmp sge i64 %37, 65536, !dbg !2491
  br i1 %cmp43, label %if.then47, label %lor.lhs.false44, !dbg !2492

lor.lhs.false44:                                  ; preds = %if.end41
  %38 = load ptr, ptr %conf, align 8, !dbg !2493, !tbaa !2077
  %charset45 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %38, i32 0, i32 0, !dbg !2494
  %39 = load i64, ptr %charset45, align 8, !dbg !2494, !tbaa !2402
  %cmp46 = icmp sge i64 %39, 65536, !dbg !2495
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !2496

if.then47:                                        ; preds = %lor.lhs.false44, %if.end41
  store ptr null, ptr %retval, align 8, !dbg !2497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2497

if.end48:                                         ; preds = %lor.lhs.false44
  %40 = load ptr, ptr %cf.addr, align 8, !dbg !2499, !tbaa !2077
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %40, i32 0, i32 7, !dbg !2499
  %41 = load ptr, ptr %ctx, align 8, !dbg !2499, !tbaa !2099
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %41, i32 0, i32 0, !dbg !2499
  %42 = load ptr, ptr %main_conf, align 8, !dbg !2499, !tbaa !2102
  %43 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !2499, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %42, i64 %43, !dbg !2499
  %44 = load ptr, ptr %arrayidx, align 8, !dbg !2499, !tbaa !2077
  store ptr %44, ptr %mcf, align 8, !dbg !2500, !tbaa !2077
  %45 = load ptr, ptr %mcf, align 8, !dbg !2501, !tbaa !2077
  %recodes = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %45, i32 0, i32 2, !dbg !2502
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %recodes, i32 0, i32 0, !dbg !2503
  %46 = load ptr, ptr %elts, align 8, !dbg !2503, !tbaa !2110
  store ptr %46, ptr %recode, align 8, !dbg !2504, !tbaa !2077
  store i64 0, ptr %i, align 8, !dbg !2505, !tbaa !2125
  br label %for.cond, !dbg !2507

for.cond:                                         ; preds = %for.inc, %if.end48
  %47 = load i64, ptr %i, align 8, !dbg !2508, !tbaa !2125
  %48 = load ptr, ptr %mcf, align 8, !dbg !2510, !tbaa !2077
  %recodes49 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %48, i32 0, i32 2, !dbg !2511
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %recodes49, i32 0, i32 1, !dbg !2512
  %49 = load i64, ptr %nelts, align 8, !dbg !2512, !tbaa !2131
  %cmp50 = icmp ult i64 %47, %49, !dbg !2513
  br i1 %cmp50, label %for.body, label %for.end, !dbg !2514

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %conf, align 8, !dbg !2515, !tbaa !2077
  %source_charset51 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %50, i32 0, i32 1, !dbg !2518
  %51 = load i64, ptr %source_charset51, align 8, !dbg !2518, !tbaa !2408
  %52 = load ptr, ptr %recode, align 8, !dbg !2519, !tbaa !2077
  %53 = load i64, ptr %i, align 8, !dbg !2520, !tbaa !2125
  %arrayidx52 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %52, i64 %53, !dbg !2519
  %src = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx52, i32 0, i32 0, !dbg !2521
  %54 = load i64, ptr %src, align 8, !dbg !2521, !tbaa !2137
  %cmp53 = icmp eq i64 %51, %54, !dbg !2522
  br i1 %cmp53, label %land.lhs.true, label %if.end58, !dbg !2523

land.lhs.true:                                    ; preds = %for.body
  %55 = load ptr, ptr %conf, align 8, !dbg !2524, !tbaa !2077
  %charset54 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %55, i32 0, i32 0, !dbg !2525
  %56 = load i64, ptr %charset54, align 8, !dbg !2525, !tbaa !2402
  %57 = load ptr, ptr %recode, align 8, !dbg !2526, !tbaa !2077
  %58 = load i64, ptr %i, align 8, !dbg !2527, !tbaa !2125
  %arrayidx55 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %57, i64 %58, !dbg !2526
  %dst = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %arrayidx55, i32 0, i32 1, !dbg !2528
  %59 = load i64, ptr %dst, align 8, !dbg !2528, !tbaa !2164
  %cmp56 = icmp eq i64 %56, %59, !dbg !2529
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !2530

if.then57:                                        ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !2531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2531

if.end58:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2533

for.inc:                                          ; preds = %if.end58
  %60 = load i64, ptr %i, align 8, !dbg !2534, !tbaa !2125
  %inc = add i64 %60, 1, !dbg !2534
  store i64 %inc, ptr %i, align 8, !dbg !2534, !tbaa !2125
  br label %for.cond, !dbg !2535, !llvm.loop !2536

for.end:                                          ; preds = %for.cond
  %61 = load ptr, ptr %mcf, align 8, !dbg !2538, !tbaa !2077
  %recodes59 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %61, i32 0, i32 2, !dbg !2539
  %call60 = call ptr @ngx_array_push(ptr noundef %recodes59), !dbg !2540
  store ptr %call60, ptr %recode, align 8, !dbg !2541, !tbaa !2077
  %62 = load ptr, ptr %recode, align 8, !dbg !2542, !tbaa !2077
  %cmp61 = icmp eq ptr %62, null, !dbg !2544
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !2545

if.then62:                                        ; preds = %for.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2546

if.end63:                                         ; preds = %for.end
  %63 = load ptr, ptr %conf, align 8, !dbg !2548, !tbaa !2077
  %source_charset64 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %63, i32 0, i32 1, !dbg !2549
  %64 = load i64, ptr %source_charset64, align 8, !dbg !2549, !tbaa !2408
  %65 = load ptr, ptr %recode, align 8, !dbg !2550, !tbaa !2077
  %src65 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %65, i32 0, i32 0, !dbg !2551
  store i64 %64, ptr %src65, align 8, !dbg !2552, !tbaa !2137
  %66 = load ptr, ptr %conf, align 8, !dbg !2553, !tbaa !2077
  %charset66 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %66, i32 0, i32 0, !dbg !2554
  %67 = load i64, ptr %charset66, align 8, !dbg !2554, !tbaa !2402
  %68 = load ptr, ptr %recode, align 8, !dbg !2555, !tbaa !2077
  %dst67 = getelementptr inbounds %struct.ngx_http_charset_recode_t, ptr %68, i32 0, i32 1, !dbg !2556
  store i64 %67, ptr %dst67, align 8, !dbg !2557, !tbaa !2164
  store ptr null, ptr %retval, align 8, !dbg !2558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2558

cleanup:                                          ; preds = %if.end63, %if.then62, %if.then57, %if.then47, %if.then40, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !2559
  call void @llvm.lifetime.end.p0(i64 8, ptr %recode) #7, !dbg !2559
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !2559
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #7, !dbg !2559
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #7, !dbg !2559
  %69 = load ptr, ptr %retval, align 8, !dbg !2559
  ret ptr %69, !dbg !2559
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2560 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !2565 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_charset_header_filter(ptr noundef %r) #0 !dbg !2568 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %charset = alloca i64, align 8
  %source_charset = alloca i64, align 8
  %dst = alloca %struct.ngx_str_t, align 8
  %src = alloca %struct.ngx_str_t, align 8
  %charsets = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2570, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !2579
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !2571, metadata !DIExpression()), !dbg !2580
  call void @llvm.lifetime.start.p0(i64 8, ptr %source_charset) #7, !dbg !2579
  tail call void @llvm.dbg.declare(metadata ptr %source_charset, metadata !2572, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst) #7, !dbg !2582
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !2573, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 16, ptr %src) #7, !dbg !2582
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !2574, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 8, ptr %charsets) #7, !dbg !2585
  tail call void @llvm.dbg.declare(metadata ptr %charsets, metadata !2575, metadata !DIExpression()), !dbg !2586
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !2587
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !2576, metadata !DIExpression()), !dbg !2588
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2589, !tbaa !2077
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2591, !tbaa !2077
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 30, !dbg !2592
  %2 = load ptr, ptr %main, align 8, !dbg !2592, !tbaa !2593
  %cmp = icmp eq ptr %0, %2, !dbg !2599
  br i1 %cmp, label %if.then, label %if.else, !dbg !2600

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !2601, !tbaa !2077
  %call = call i64 @ngx_http_destination_charset(ptr noundef %3, ptr noundef %dst), !dbg !2603
  store i64 %call, ptr %charset, align 8, !dbg !2604, !tbaa !2125
  br label %if.end, !dbg !2605

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2606, !tbaa !2077
  %call1 = call i64 @ngx_http_main_request_charset(ptr noundef %4, ptr noundef %dst), !dbg !2608
  store i64 %call1, ptr %charset, align 8, !dbg !2609, !tbaa !2125
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %charset, align 8, !dbg !2610, !tbaa !2125
  %cmp2 = icmp eq i64 %5, -1, !dbg !2612
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2613

if.then3:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !2614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2614

if.end4:                                          ; preds = %if.end
  %6 = load i64, ptr %charset, align 8, !dbg !2616, !tbaa !2125
  %cmp5 = icmp eq i64 %6, -5, !dbg !2618
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2619

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2620, !tbaa !2077
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2622, !tbaa !2077
  %call7 = call i64 %7(ptr noundef %8), !dbg !2620
  store i64 %call7, ptr %retval, align 8, !dbg !2623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2623

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2624, !tbaa !2077
  %call9 = call i64 @ngx_http_source_charset(ptr noundef %9, ptr noundef %src), !dbg !2625
  store i64 %call9, ptr %source_charset, align 8, !dbg !2626, !tbaa !2125
  %10 = load i64, ptr %source_charset, align 8, !dbg !2627, !tbaa !2125
  %cmp10 = icmp eq i64 %10, -1, !dbg !2629
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2630

if.then11:                                        ; preds = %if.end8
  store i64 -1, ptr %retval, align 8, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

if.end12:                                         ; preds = %if.end8
  %11 = load i64, ptr %source_charset, align 8, !dbg !2633, !tbaa !2125
  %cmp13 = icmp eq i64 %11, -2, !dbg !2635
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !2636

if.then14:                                        ; preds = %if.end12
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2637, !tbaa !2077
  call void @ngx_http_set_charset(ptr noundef %12, ptr noundef %dst), !dbg !2639
  %13 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2640, !tbaa !2077
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2641, !tbaa !2077
  %call15 = call i64 %13(ptr noundef %14), !dbg !2640
  store i64 %call15, ptr %retval, align 8, !dbg !2642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2642

if.end16:                                         ; preds = %if.end12
  %15 = load i64, ptr %charset, align 8, !dbg !2643, !tbaa !2125
  %cmp17 = icmp eq i64 %15, -3, !dbg !2645
  br i1 %cmp17, label %if.then19, label %lor.lhs.false, !dbg !2646

lor.lhs.false:                                    ; preds = %if.end16
  %16 = load i64, ptr %source_charset, align 8, !dbg !2647, !tbaa !2125
  %cmp18 = icmp eq i64 %16, -3, !dbg !2648
  br i1 %cmp18, label %if.then19, label %if.end28, !dbg !2649

if.then19:                                        ; preds = %lor.lhs.false, %if.end16
  %17 = load i64, ptr %source_charset, align 8, !dbg !2650, !tbaa !2125
  %18 = load i64, ptr %charset, align 8, !dbg !2653, !tbaa !2125
  %cmp20 = icmp ne i64 %17, %18, !dbg !2654
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21, !dbg !2655

lor.lhs.false21:                                  ; preds = %if.then19
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %dst, i32 0, i32 1, !dbg !2656
  %19 = load ptr, ptr %data, align 8, !dbg !2656, !tbaa !2657
  %data22 = getelementptr inbounds %struct.ngx_str_t, ptr %src, i32 0, i32 1, !dbg !2658
  %20 = load ptr, ptr %data22, align 8, !dbg !2658, !tbaa !2657
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %dst, i32 0, i32 0, !dbg !2659
  %21 = load i64, ptr %len, align 8, !dbg !2659, !tbaa !2660
  %call23 = call i64 @ngx_strncasecmp(ptr noundef %19, ptr noundef %20, i64 noundef %21), !dbg !2661
  %cmp24 = icmp ne i64 %call23, 0, !dbg !2662
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2663

if.then25:                                        ; preds = %lor.lhs.false21, %if.then19
  br label %no_charset_map, !dbg !2664

if.end26:                                         ; preds = %lor.lhs.false21
  %22 = load ptr, ptr %r.addr, align 8, !dbg !2666, !tbaa !2077
  call void @ngx_http_set_charset(ptr noundef %22, ptr noundef %dst), !dbg !2667
  %23 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2668, !tbaa !2077
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2669, !tbaa !2077
  %call27 = call i64 %23(ptr noundef %24), !dbg !2668
  store i64 %call27, ptr %retval, align 8, !dbg !2670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2670

if.end28:                                         ; preds = %lor.lhs.false
  %25 = load i64, ptr %source_charset, align 8, !dbg !2671, !tbaa !2125
  %26 = load i64, ptr %charset, align 8, !dbg !2673, !tbaa !2125
  %cmp29 = icmp eq i64 %25, %26, !dbg !2674
  br i1 %cmp29, label %if.then30, label %if.end34, !dbg !2675

if.then30:                                        ; preds = %if.end28
  %27 = load ptr, ptr %r.addr, align 8, !dbg !2676, !tbaa !2077
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %27, i32 0, i32 14, !dbg !2678
  %content_type_len = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 17, !dbg !2679
  %28 = load i64, ptr %content_type_len, align 8, !dbg !2679, !tbaa !2680
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2681, !tbaa !2077
  %headers_out31 = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 14, !dbg !2682
  %content_type = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out31, i32 0, i32 18, !dbg !2683
  %len32 = getelementptr inbounds %struct.ngx_str_t, ptr %content_type, i32 0, i32 0, !dbg !2684
  store i64 %28, ptr %len32, align 8, !dbg !2685, !tbaa !2686
  %30 = load ptr, ptr %r.addr, align 8, !dbg !2687, !tbaa !2077
  call void @ngx_http_set_charset(ptr noundef %30, ptr noundef %dst), !dbg !2688
  %31 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2689, !tbaa !2077
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2690, !tbaa !2077
  %call33 = call i64 %31(ptr noundef %32), !dbg !2689
  store i64 %call33, ptr %retval, align 8, !dbg !2691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2691

if.end34:                                         ; preds = %if.end28
  %33 = load ptr, ptr %r.addr, align 8, !dbg !2692, !tbaa !2077
  %headers_out35 = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 14, !dbg !2694
  %content_encoding = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out35, i32 0, i32 7, !dbg !2695
  %34 = load ptr, ptr %content_encoding, align 8, !dbg !2695, !tbaa !2696
  %tobool = icmp ne ptr %34, null, !dbg !2692
  br i1 %tobool, label %land.lhs.true, label %if.end42, !dbg !2697

land.lhs.true:                                    ; preds = %if.end34
  %35 = load ptr, ptr %r.addr, align 8, !dbg !2698, !tbaa !2077
  %headers_out36 = getelementptr inbounds %struct.ngx_http_request_s, ptr %35, i32 0, i32 14, !dbg !2699
  %content_encoding37 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out36, i32 0, i32 7, !dbg !2700
  %36 = load ptr, ptr %content_encoding37, align 8, !dbg !2700, !tbaa !2696
  %value = getelementptr inbounds %struct.ngx_table_elt_t, ptr %36, i32 0, i32 2, !dbg !2701
  %len38 = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 0, !dbg !2702
  %37 = load i64, ptr %len38, align 8, !dbg !2702, !tbaa !2703
  %tobool39 = icmp ne i64 %37, 0, !dbg !2698
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !2705

if.then40:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2706, !tbaa !2077
  %39 = load ptr, ptr %r.addr, align 8, !dbg !2708, !tbaa !2077
  %call41 = call i64 %38(ptr noundef %39), !dbg !2706
  store i64 %call41, ptr %retval, align 8, !dbg !2709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2709

if.end42:                                         ; preds = %land.lhs.true, %if.end34
  %40 = load ptr, ptr %r.addr, align 8, !dbg !2710, !tbaa !2077
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %40, i32 0, i32 3, !dbg !2710
  %41 = load ptr, ptr %main_conf, align 8, !dbg !2710, !tbaa !2711
  %42 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !2710, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %41, i64 %42, !dbg !2710
  %43 = load ptr, ptr %arrayidx, align 8, !dbg !2710, !tbaa !2077
  store ptr %43, ptr %mcf, align 8, !dbg !2712, !tbaa !2077
  %44 = load ptr, ptr %mcf, align 8, !dbg !2713, !tbaa !2077
  %charsets43 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %44, i32 0, i32 0, !dbg !2714
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %charsets43, i32 0, i32 0, !dbg !2715
  %45 = load ptr, ptr %elts, align 8, !dbg !2715, !tbaa !2122
  store ptr %45, ptr %charsets, align 8, !dbg !2716, !tbaa !2077
  %46 = load ptr, ptr %charsets, align 8, !dbg !2717, !tbaa !2077
  %47 = load i64, ptr %source_charset, align 8, !dbg !2719, !tbaa !2125
  %arrayidx44 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %46, i64 %47, !dbg !2717
  %tables = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx44, i32 0, i32 0, !dbg !2720
  %48 = load ptr, ptr %tables, align 8, !dbg !2720, !tbaa !2225
  %cmp45 = icmp eq ptr %48, null, !dbg !2721
  br i1 %cmp45, label %if.then51, label %lor.lhs.false46, !dbg !2722

lor.lhs.false46:                                  ; preds = %if.end42
  %49 = load ptr, ptr %charsets, align 8, !dbg !2723, !tbaa !2077
  %50 = load i64, ptr %source_charset, align 8, !dbg !2724, !tbaa !2125
  %arrayidx47 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %49, i64 %50, !dbg !2723
  %tables48 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx47, i32 0, i32 0, !dbg !2725
  %51 = load ptr, ptr %tables48, align 8, !dbg !2725, !tbaa !2225
  %52 = load i64, ptr %charset, align 8, !dbg !2726, !tbaa !2125
  %arrayidx49 = getelementptr inbounds ptr, ptr %51, i64 %52, !dbg !2723
  %53 = load ptr, ptr %arrayidx49, align 8, !dbg !2723, !tbaa !2077
  %cmp50 = icmp eq ptr %53, null, !dbg !2727
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !2728

if.then51:                                        ; preds = %lor.lhs.false46, %if.end42
  br label %no_charset_map, !dbg !2729

if.end52:                                         ; preds = %lor.lhs.false46
  %54 = load ptr, ptr %r.addr, align 8, !dbg !2731, !tbaa !2077
  %headers_out53 = getelementptr inbounds %struct.ngx_http_request_s, ptr %54, i32 0, i32 14, !dbg !2732
  %content_type_len54 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out53, i32 0, i32 17, !dbg !2733
  %55 = load i64, ptr %content_type_len54, align 8, !dbg !2733, !tbaa !2680
  %56 = load ptr, ptr %r.addr, align 8, !dbg !2734, !tbaa !2077
  %headers_out55 = getelementptr inbounds %struct.ngx_http_request_s, ptr %56, i32 0, i32 14, !dbg !2735
  %content_type56 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out55, i32 0, i32 18, !dbg !2736
  %len57 = getelementptr inbounds %struct.ngx_str_t, ptr %content_type56, i32 0, i32 0, !dbg !2737
  store i64 %55, ptr %len57, align 8, !dbg !2738, !tbaa !2686
  %57 = load ptr, ptr %r.addr, align 8, !dbg !2739, !tbaa !2077
  call void @ngx_http_set_charset(ptr noundef %57, ptr noundef %dst), !dbg !2740
  %58 = load ptr, ptr %r.addr, align 8, !dbg !2741, !tbaa !2077
  %59 = load ptr, ptr %charsets, align 8, !dbg !2742, !tbaa !2077
  %60 = load i64, ptr %charset, align 8, !dbg !2743, !tbaa !2125
  %61 = load i64, ptr %source_charset, align 8, !dbg !2744, !tbaa !2125
  %call58 = call i64 @ngx_http_charset_ctx(ptr noundef %58, ptr noundef %59, i64 noundef %60, i64 noundef %61), !dbg !2745
  store i64 %call58, ptr %retval, align 8, !dbg !2746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2746

no_charset_map:                                   ; preds = %if.then51, %if.then25
  tail call void @llvm.dbg.label(metadata !2577), !dbg !2747
  %62 = load ptr, ptr %r.addr, align 8, !dbg !2748, !tbaa !2077
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %62, i32 0, i32 1, !dbg !2748
  %63 = load ptr, ptr %connection, align 8, !dbg !2748, !tbaa !2750
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %63, i32 0, i32 10, !dbg !2748
  %64 = load ptr, ptr %log, align 8, !dbg !2748, !tbaa !2751
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %64, i32 0, i32 0, !dbg !2748
  %65 = load i64, ptr %log_level, align 8, !dbg !2748, !tbaa !2199
  %cmp59 = icmp uge i64 %65, 4, !dbg !2748
  br i1 %cmp59, label %if.then60, label %if.end63, !dbg !2755

if.then60:                                        ; preds = %no_charset_map
  %66 = load ptr, ptr %r.addr, align 8, !dbg !2748, !tbaa !2077
  %connection61 = getelementptr inbounds %struct.ngx_http_request_s, ptr %66, i32 0, i32 1, !dbg !2748
  %67 = load ptr, ptr %connection61, align 8, !dbg !2748, !tbaa !2750
  %log62 = getelementptr inbounds %struct.ngx_connection_s, ptr %67, i32 0, i32 10, !dbg !2748
  %68 = load ptr, ptr %log62, align 8, !dbg !2748, !tbaa !2751
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %68, i32 noundef 0, ptr noundef @.str.1, ptr noundef %src, ptr noundef %dst), !dbg !2748
  br label %if.end63, !dbg !2748

if.end63:                                         ; preds = %if.then60, %no_charset_map
  %69 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !2756, !tbaa !2077
  %70 = load ptr, ptr %r.addr, align 8, !dbg !2757, !tbaa !2077
  %call64 = call i64 %69(ptr noundef %70), !dbg !2756
  store i64 %call64, ptr %retval, align 8, !dbg !2758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2758

cleanup:                                          ; preds = %if.end63, %if.end52, %if.then40, %if.then30, %if.end26, %if.then14, %if.then11, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 8, ptr %charsets) #7, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 16, ptr %src) #7, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst) #7, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 8, ptr %source_charset) #7, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !2759
  %71 = load i64, ptr %retval, align 8, !dbg !2759
  ret i64 %71, !dbg !2759
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_charset_body_filter(ptr noundef %r, ptr noundef %in) #0 !dbg !2760 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %out = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2762, metadata !DIExpression()), !dbg !2786
  store ptr %in, ptr %in.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2763, metadata !DIExpression()), !dbg !2787
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #7, !dbg !2788
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2764, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !2790
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2765, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #7, !dbg !2792
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !2766, metadata !DIExpression()), !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #7, !dbg !2792
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !2767, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #7, !dbg !2792
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !2768, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !2796
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2769, metadata !DIExpression()), !dbg !2797
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2798, !tbaa !2077
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !2798
  %1 = load ptr, ptr %ctx1, align 8, !dbg !2798, !tbaa !2799
  %2 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !2798, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2798
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2798, !tbaa !2077
  store ptr %3, ptr %ctx, align 8, !dbg !2800, !tbaa !2077
  %4 = load ptr, ptr %ctx, align 8, !dbg !2801, !tbaa !2077
  %cmp = icmp eq ptr %4, null, !dbg !2803
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2804

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !2805, !tbaa !2077
  %table = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %5, i32 0, i32 0, !dbg !2806
  %6 = load ptr, ptr %table, align 8, !dbg !2806, !tbaa !2807
  %cmp2 = icmp eq ptr %6, null, !dbg !2809
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2810

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2811, !tbaa !2077
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2813, !tbaa !2077
  %9 = load ptr, ptr %in.addr, align 8, !dbg !2814, !tbaa !2077
  %call = call i64 %7(ptr noundef %8, ptr noundef %9), !dbg !2811
  store i64 %call, ptr %retval, align 8, !dbg !2815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2815

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %ctx, align 8, !dbg !2816, !tbaa !2077
  %to_utf8 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %10, i32 0, i32 8, !dbg !2818
  %bf.load = load i32, ptr %to_utf8, align 4, !dbg !2818
  %bf.lshr = lshr i32 %bf.load, 17, !dbg !2818
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2818
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2816
  br i1 %tobool, label %if.then10, label %lor.lhs.false3, !dbg !2819

lor.lhs.false3:                                   ; preds = %if.end
  %11 = load ptr, ptr %ctx, align 8, !dbg !2820, !tbaa !2077
  %from_utf8 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %11, i32 0, i32 8, !dbg !2821
  %bf.load4 = load i32, ptr %from_utf8, align 4, !dbg !2821
  %bf.lshr5 = lshr i32 %bf.load4, 16, !dbg !2821
  %bf.clear6 = and i32 %bf.lshr5, 1, !dbg !2821
  %tobool7 = icmp ne i32 %bf.clear6, 0, !dbg !2820
  br i1 %tobool7, label %if.then10, label %lor.lhs.false8, !dbg !2822

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %12 = load ptr, ptr %ctx, align 8, !dbg !2823, !tbaa !2077
  %busy = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %12, i32 0, i32 3, !dbg !2824
  %13 = load ptr, ptr %busy, align 8, !dbg !2824, !tbaa !2825
  %tobool9 = icmp ne ptr %13, null, !dbg !2823
  br i1 %tobool9, label %if.then10, label %if.end133, !dbg !2826

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false3, %if.end
  store ptr null, ptr %out, align 8, !dbg !2827, !tbaa !2077
  store ptr %out, ptr %ll, align 8, !dbg !2829, !tbaa !2077
  %14 = load ptr, ptr %in.addr, align 8, !dbg !2830, !tbaa !2077
  store ptr %14, ptr %cl, align 8, !dbg !2832, !tbaa !2077
  br label %for.cond, !dbg !2833

for.cond:                                         ; preds = %for.inc, %if.then10
  %15 = load ptr, ptr %cl, align 8, !dbg !2834, !tbaa !2077
  %tobool11 = icmp ne ptr %15, null, !dbg !2836
  br i1 %tobool11, label %for.body, label %for.end, !dbg !2836

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %cl, align 8, !dbg !2837, !tbaa !2077
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 0, !dbg !2839
  %17 = load ptr, ptr %buf, align 8, !dbg !2839, !tbaa !2840
  store ptr %17, ptr %b, align 8, !dbg !2842, !tbaa !2077
  %18 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %18, i32 0, i32 9, !dbg !2843
  %bf.load12 = load i16, ptr %temporary, align 8, !dbg !2843
  %bf.clear13 = and i16 %bf.load12, 1, !dbg !2843
  %bf.cast = zext i16 %bf.clear13 to i32, !dbg !2843
  %tobool14 = icmp ne i32 %bf.cast, 0, !dbg !2843
  br i1 %tobool14, label %cond.true, label %lor.lhs.false15, !dbg !2843

lor.lhs.false15:                                  ; preds = %for.body
  %19 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 9, !dbg !2843
  %bf.load16 = load i16, ptr %memory, align 8, !dbg !2843
  %bf.lshr17 = lshr i16 %bf.load16, 1, !dbg !2843
  %bf.clear18 = and i16 %bf.lshr17, 1, !dbg !2843
  %bf.cast19 = zext i16 %bf.clear18 to i32, !dbg !2843
  %tobool20 = icmp ne i32 %bf.cast19, 0, !dbg !2843
  br i1 %tobool20, label %cond.true, label %lor.lhs.false21, !dbg !2843

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %20 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %20, i32 0, i32 9, !dbg !2843
  %bf.load22 = load i16, ptr %mmap, align 8, !dbg !2843
  %bf.lshr23 = lshr i16 %bf.load22, 2, !dbg !2843
  %bf.clear24 = and i16 %bf.lshr23, 1, !dbg !2843
  %bf.cast25 = zext i16 %bf.clear24 to i32, !dbg !2843
  %tobool26 = icmp ne i32 %bf.cast25, 0, !dbg !2843
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !2843

cond.true:                                        ; preds = %lor.lhs.false21, %lor.lhs.false15, %for.body
  %21 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %21, i32 0, i32 1, !dbg !2843
  %22 = load ptr, ptr %last, align 8, !dbg !2843, !tbaa !2845
  %23 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %23, i32 0, i32 0, !dbg !2843
  %24 = load ptr, ptr %pos, align 8, !dbg !2843, !tbaa !2847
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64, !dbg !2843
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64, !dbg !2843
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2843
  br label %cond.end, !dbg !2843

cond.false:                                       ; preds = %lor.lhs.false21
  %25 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %file_last = getelementptr inbounds %struct.ngx_buf_s, ptr %25, i32 0, i32 3, !dbg !2843
  %26 = load i64, ptr %file_last, align 8, !dbg !2843, !tbaa !2848
  %27 = load ptr, ptr %b, align 8, !dbg !2843, !tbaa !2077
  %file_pos = getelementptr inbounds %struct.ngx_buf_s, ptr %27, i32 0, i32 2, !dbg !2843
  %28 = load i64, ptr %file_pos, align 8, !dbg !2843, !tbaa !2849
  %sub = sub nsw i64 %26, %28, !dbg !2843
  br label %cond.end, !dbg !2843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub, %cond.false ], !dbg !2843
  %cmp27 = icmp eq i64 %cond, 0, !dbg !2850
  br i1 %cmp27, label %if.then28, label %if.end35, !dbg !2851

if.then28:                                        ; preds = %cond.end
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2852, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 11, !dbg !2854
  %30 = load ptr, ptr %pool, align 8, !dbg !2854, !tbaa !2855
  %call29 = call ptr @ngx_alloc_chain_link(ptr noundef %30), !dbg !2856
  %31 = load ptr, ptr %ll, align 8, !dbg !2857, !tbaa !2077
  store ptr %call29, ptr %31, align 8, !dbg !2858, !tbaa !2077
  %32 = load ptr, ptr %ll, align 8, !dbg !2859, !tbaa !2077
  %33 = load ptr, ptr %32, align 8, !dbg !2861, !tbaa !2077
  %cmp30 = icmp eq ptr %33, null, !dbg !2862
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2863

if.then31:                                        ; preds = %if.then28
  store i64 -1, ptr %retval, align 8, !dbg !2864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2864

if.end32:                                         ; preds = %if.then28
  %34 = load ptr, ptr %b, align 8, !dbg !2866, !tbaa !2077
  %35 = load ptr, ptr %ll, align 8, !dbg !2867, !tbaa !2077
  %36 = load ptr, ptr %35, align 8, !dbg !2868, !tbaa !2077
  %buf33 = getelementptr inbounds %struct.ngx_chain_s, ptr %36, i32 0, i32 0, !dbg !2869
  store ptr %34, ptr %buf33, align 8, !dbg !2870, !tbaa !2840
  %37 = load ptr, ptr %ll, align 8, !dbg !2871, !tbaa !2077
  %38 = load ptr, ptr %37, align 8, !dbg !2872, !tbaa !2077
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %38, i32 0, i32 1, !dbg !2873
  store ptr null, ptr %next, align 8, !dbg !2874, !tbaa !2875
  %39 = load ptr, ptr %ll, align 8, !dbg !2876, !tbaa !2077
  %40 = load ptr, ptr %39, align 8, !dbg !2877, !tbaa !2077
  %next34 = getelementptr inbounds %struct.ngx_chain_s, ptr %40, i32 0, i32 1, !dbg !2878
  store ptr %next34, ptr %ll, align 8, !dbg !2879, !tbaa !2077
  br label %for.inc, !dbg !2880

if.end35:                                         ; preds = %cond.end
  %41 = load ptr, ptr %ctx, align 8, !dbg !2881, !tbaa !2077
  %to_utf836 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %41, i32 0, i32 8, !dbg !2883
  %bf.load37 = load i32, ptr %to_utf836, align 4, !dbg !2883
  %bf.lshr38 = lshr i32 %bf.load37, 17, !dbg !2883
  %bf.clear39 = and i32 %bf.lshr38, 1, !dbg !2883
  %tobool40 = icmp ne i32 %bf.clear39, 0, !dbg !2881
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !2884

if.then41:                                        ; preds = %if.end35
  %42 = load ptr, ptr %r.addr, align 8, !dbg !2885, !tbaa !2077
  %pool42 = getelementptr inbounds %struct.ngx_http_request_s, ptr %42, i32 0, i32 11, !dbg !2887
  %43 = load ptr, ptr %pool42, align 8, !dbg !2887, !tbaa !2855
  %44 = load ptr, ptr %b, align 8, !dbg !2888, !tbaa !2077
  %45 = load ptr, ptr %ctx, align 8, !dbg !2889, !tbaa !2077
  %call43 = call ptr @ngx_http_charset_recode_to_utf8(ptr noundef %43, ptr noundef %44, ptr noundef %45), !dbg !2890
  %46 = load ptr, ptr %ll, align 8, !dbg !2891, !tbaa !2077
  store ptr %call43, ptr %46, align 8, !dbg !2892, !tbaa !2077
  br label %if.end46, !dbg !2893

if.else:                                          ; preds = %if.end35
  %47 = load ptr, ptr %r.addr, align 8, !dbg !2894, !tbaa !2077
  %pool44 = getelementptr inbounds %struct.ngx_http_request_s, ptr %47, i32 0, i32 11, !dbg !2896
  %48 = load ptr, ptr %pool44, align 8, !dbg !2896, !tbaa !2855
  %49 = load ptr, ptr %b, align 8, !dbg !2897, !tbaa !2077
  %50 = load ptr, ptr %ctx, align 8, !dbg !2898, !tbaa !2077
  %call45 = call ptr @ngx_http_charset_recode_from_utf8(ptr noundef %48, ptr noundef %49, ptr noundef %50), !dbg !2899
  %51 = load ptr, ptr %ll, align 8, !dbg !2900, !tbaa !2077
  store ptr %call45, ptr %51, align 8, !dbg !2901, !tbaa !2077
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then41
  %52 = load ptr, ptr %ll, align 8, !dbg !2902, !tbaa !2077
  %53 = load ptr, ptr %52, align 8, !dbg !2904, !tbaa !2077
  %cmp47 = icmp eq ptr %53, null, !dbg !2905
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !2906

if.then48:                                        ; preds = %if.end46
  store i64 -1, ptr %retval, align 8, !dbg !2907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2907

if.end49:                                         ; preds = %if.end46
  br label %while.cond, !dbg !2909

while.cond:                                       ; preds = %while.body, %if.end49
  %54 = load ptr, ptr %ll, align 8, !dbg !2910, !tbaa !2077
  %55 = load ptr, ptr %54, align 8, !dbg !2911, !tbaa !2077
  %tobool50 = icmp ne ptr %55, null, !dbg !2909
  br i1 %tobool50, label %while.body, label %while.end, !dbg !2909

while.body:                                       ; preds = %while.cond
  %56 = load ptr, ptr %ll, align 8, !dbg !2912, !tbaa !2077
  %57 = load ptr, ptr %56, align 8, !dbg !2914, !tbaa !2077
  %next51 = getelementptr inbounds %struct.ngx_chain_s, ptr %57, i32 0, i32 1, !dbg !2915
  store ptr %next51, ptr %ll, align 8, !dbg !2916, !tbaa !2077
  br label %while.cond, !dbg !2909, !llvm.loop !2917

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !2919

for.inc:                                          ; preds = %while.end, %if.end32
  %58 = load ptr, ptr %cl, align 8, !dbg !2920, !tbaa !2077
  %next52 = getelementptr inbounds %struct.ngx_chain_s, ptr %58, i32 0, i32 1, !dbg !2921
  %59 = load ptr, ptr %next52, align 8, !dbg !2921, !tbaa !2875
  store ptr %59, ptr %cl, align 8, !dbg !2922, !tbaa !2077
  br label %for.cond, !dbg !2923, !llvm.loop !2924

for.end:                                          ; preds = %for.cond
  %60 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2926, !tbaa !2077
  %61 = load ptr, ptr %r.addr, align 8, !dbg !2927, !tbaa !2077
  %62 = load ptr, ptr %out, align 8, !dbg !2928, !tbaa !2077
  %call53 = call i64 %60(ptr noundef %61, ptr noundef %62), !dbg !2926
  store i64 %call53, ptr %rc, align 8, !dbg !2929, !tbaa !2125
  %63 = load ptr, ptr %out, align 8, !dbg !2930, !tbaa !2077
  %tobool54 = icmp ne ptr %63, null, !dbg !2930
  br i1 %tobool54, label %if.then55, label %if.end71, !dbg !2932

if.then55:                                        ; preds = %for.end
  %64 = load ptr, ptr %ctx, align 8, !dbg !2933, !tbaa !2077
  %busy56 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %64, i32 0, i32 3, !dbg !2936
  %65 = load ptr, ptr %busy56, align 8, !dbg !2936, !tbaa !2825
  %cmp57 = icmp eq ptr %65, null, !dbg !2937
  br i1 %cmp57, label %if.then58, label %if.else60, !dbg !2938

if.then58:                                        ; preds = %if.then55
  %66 = load ptr, ptr %out, align 8, !dbg !2939, !tbaa !2077
  %67 = load ptr, ptr %ctx, align 8, !dbg !2941, !tbaa !2077
  %busy59 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %67, i32 0, i32 3, !dbg !2942
  store ptr %66, ptr %busy59, align 8, !dbg !2943, !tbaa !2825
  br label %if.end70, !dbg !2944

if.else60:                                        ; preds = %if.then55
  %68 = load ptr, ptr %ctx, align 8, !dbg !2945, !tbaa !2077
  %busy61 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %68, i32 0, i32 3, !dbg !2948
  %69 = load ptr, ptr %busy61, align 8, !dbg !2948, !tbaa !2825
  store ptr %69, ptr %cl, align 8, !dbg !2949, !tbaa !2077
  br label %for.cond62, !dbg !2950

for.cond62:                                       ; preds = %for.inc66, %if.else60
  %70 = load ptr, ptr %cl, align 8, !dbg !2951, !tbaa !2077
  %next63 = getelementptr inbounds %struct.ngx_chain_s, ptr %70, i32 0, i32 1, !dbg !2953
  %71 = load ptr, ptr %next63, align 8, !dbg !2953, !tbaa !2875
  %tobool64 = icmp ne ptr %71, null, !dbg !2954
  br i1 %tobool64, label %for.body65, label %for.end68, !dbg !2954

for.body65:                                       ; preds = %for.cond62
  br label %for.inc66, !dbg !2955

for.inc66:                                        ; preds = %for.body65
  %72 = load ptr, ptr %cl, align 8, !dbg !2957, !tbaa !2077
  %next67 = getelementptr inbounds %struct.ngx_chain_s, ptr %72, i32 0, i32 1, !dbg !2958
  %73 = load ptr, ptr %next67, align 8, !dbg !2958, !tbaa !2875
  store ptr %73, ptr %cl, align 8, !dbg !2959, !tbaa !2077
  br label %for.cond62, !dbg !2960, !llvm.loop !2961

for.end68:                                        ; preds = %for.cond62
  %74 = load ptr, ptr %out, align 8, !dbg !2963, !tbaa !2077
  %75 = load ptr, ptr %cl, align 8, !dbg !2964, !tbaa !2077
  %next69 = getelementptr inbounds %struct.ngx_chain_s, ptr %75, i32 0, i32 1, !dbg !2965
  store ptr %74, ptr %next69, align 8, !dbg !2966, !tbaa !2875
  br label %if.end70

if.end70:                                         ; preds = %for.end68, %if.then58
  br label %if.end71, !dbg !2967

if.end71:                                         ; preds = %if.end70, %for.end
  br label %while.cond72, !dbg !2968

while.cond72:                                     ; preds = %if.end129, %if.then126, %if.then115, %if.end71
  %76 = load ptr, ptr %ctx, align 8, !dbg !2969, !tbaa !2077
  %busy73 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %76, i32 0, i32 3, !dbg !2970
  %77 = load ptr, ptr %busy73, align 8, !dbg !2970, !tbaa !2825
  %tobool74 = icmp ne ptr %77, null, !dbg !2968
  br i1 %tobool74, label %while.body75, label %while.end132, !dbg !2968

while.body75:                                     ; preds = %while.cond72
  %78 = load ptr, ptr %ctx, align 8, !dbg !2971, !tbaa !2077
  %busy76 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %78, i32 0, i32 3, !dbg !2973
  %79 = load ptr, ptr %busy76, align 8, !dbg !2973, !tbaa !2825
  store ptr %79, ptr %cl, align 8, !dbg !2974, !tbaa !2077
  %80 = load ptr, ptr %cl, align 8, !dbg !2975, !tbaa !2077
  %buf77 = getelementptr inbounds %struct.ngx_chain_s, ptr %80, i32 0, i32 0, !dbg !2976
  %81 = load ptr, ptr %buf77, align 8, !dbg !2976, !tbaa !2840
  store ptr %81, ptr %b, align 8, !dbg !2977, !tbaa !2077
  %82 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %temporary78 = getelementptr inbounds %struct.ngx_buf_s, ptr %82, i32 0, i32 9, !dbg !2978
  %bf.load79 = load i16, ptr %temporary78, align 8, !dbg !2978
  %bf.clear80 = and i16 %bf.load79, 1, !dbg !2978
  %bf.cast81 = zext i16 %bf.clear80 to i32, !dbg !2978
  %tobool82 = icmp ne i32 %bf.cast81, 0, !dbg !2978
  br i1 %tobool82, label %cond.true97, label %lor.lhs.false83, !dbg !2978

lor.lhs.false83:                                  ; preds = %while.body75
  %83 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %memory84 = getelementptr inbounds %struct.ngx_buf_s, ptr %83, i32 0, i32 9, !dbg !2978
  %bf.load85 = load i16, ptr %memory84, align 8, !dbg !2978
  %bf.lshr86 = lshr i16 %bf.load85, 1, !dbg !2978
  %bf.clear87 = and i16 %bf.lshr86, 1, !dbg !2978
  %bf.cast88 = zext i16 %bf.clear87 to i32, !dbg !2978
  %tobool89 = icmp ne i32 %bf.cast88, 0, !dbg !2978
  br i1 %tobool89, label %cond.true97, label %lor.lhs.false90, !dbg !2978

lor.lhs.false90:                                  ; preds = %lor.lhs.false83
  %84 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %mmap91 = getelementptr inbounds %struct.ngx_buf_s, ptr %84, i32 0, i32 9, !dbg !2978
  %bf.load92 = load i16, ptr %mmap91, align 8, !dbg !2978
  %bf.lshr93 = lshr i16 %bf.load92, 2, !dbg !2978
  %bf.clear94 = and i16 %bf.lshr93, 1, !dbg !2978
  %bf.cast95 = zext i16 %bf.clear94 to i32, !dbg !2978
  %tobool96 = icmp ne i32 %bf.cast95, 0, !dbg !2978
  br i1 %tobool96, label %cond.true97, label %cond.false103, !dbg !2978

cond.true97:                                      ; preds = %lor.lhs.false90, %lor.lhs.false83, %while.body75
  %85 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %last98 = getelementptr inbounds %struct.ngx_buf_s, ptr %85, i32 0, i32 1, !dbg !2978
  %86 = load ptr, ptr %last98, align 8, !dbg !2978, !tbaa !2845
  %87 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %pos99 = getelementptr inbounds %struct.ngx_buf_s, ptr %87, i32 0, i32 0, !dbg !2978
  %88 = load ptr, ptr %pos99, align 8, !dbg !2978, !tbaa !2847
  %sub.ptr.lhs.cast100 = ptrtoint ptr %86 to i64, !dbg !2978
  %sub.ptr.rhs.cast101 = ptrtoint ptr %88 to i64, !dbg !2978
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101, !dbg !2978
  br label %cond.end107, !dbg !2978

cond.false103:                                    ; preds = %lor.lhs.false90
  %89 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %file_last104 = getelementptr inbounds %struct.ngx_buf_s, ptr %89, i32 0, i32 3, !dbg !2978
  %90 = load i64, ptr %file_last104, align 8, !dbg !2978, !tbaa !2848
  %91 = load ptr, ptr %b, align 8, !dbg !2978, !tbaa !2077
  %file_pos105 = getelementptr inbounds %struct.ngx_buf_s, ptr %91, i32 0, i32 2, !dbg !2978
  %92 = load i64, ptr %file_pos105, align 8, !dbg !2978, !tbaa !2849
  %sub106 = sub nsw i64 %90, %92, !dbg !2978
  br label %cond.end107, !dbg !2978

cond.end107:                                      ; preds = %cond.false103, %cond.true97
  %cond108 = phi i64 [ %sub.ptr.sub102, %cond.true97 ], [ %sub106, %cond.false103 ], !dbg !2978
  %cmp109 = icmp ne i64 %cond108, 0, !dbg !2980
  br i1 %cmp109, label %if.then110, label %if.end111, !dbg !2981

if.then110:                                       ; preds = %cond.end107
  br label %while.end132, !dbg !2982

if.end111:                                        ; preds = %cond.end107
  %93 = load ptr, ptr %cl, align 8, !dbg !2984, !tbaa !2077
  %next112 = getelementptr inbounds %struct.ngx_chain_s, ptr %93, i32 0, i32 1, !dbg !2985
  %94 = load ptr, ptr %next112, align 8, !dbg !2985, !tbaa !2875
  %95 = load ptr, ptr %ctx, align 8, !dbg !2986, !tbaa !2077
  %busy113 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %95, i32 0, i32 3, !dbg !2987
  store ptr %94, ptr %busy113, align 8, !dbg !2988, !tbaa !2825
  %96 = load ptr, ptr %b, align 8, !dbg !2989, !tbaa !2077
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %96, i32 0, i32 6, !dbg !2991
  %97 = load ptr, ptr %tag, align 8, !dbg !2991, !tbaa !2992
  %cmp114 = icmp ne ptr %97, @ngx_http_charset_filter_module, !dbg !2993
  br i1 %cmp114, label %if.then115, label %if.end116, !dbg !2994

if.then115:                                       ; preds = %if.end111
  br label %while.cond72, !dbg !2995, !llvm.loop !2997

if.end116:                                        ; preds = %if.end111
  %98 = load ptr, ptr %b, align 8, !dbg !2999, !tbaa !2077
  %shadow = getelementptr inbounds %struct.ngx_buf_s, ptr %98, i32 0, i32 8, !dbg !3001
  %99 = load ptr, ptr %shadow, align 8, !dbg !3001, !tbaa !3002
  %tobool117 = icmp ne ptr %99, null, !dbg !2999
  br i1 %tobool117, label %if.then118, label %if.end123, !dbg !3003

if.then118:                                       ; preds = %if.end116
  %100 = load ptr, ptr %b, align 8, !dbg !3004, !tbaa !2077
  %shadow119 = getelementptr inbounds %struct.ngx_buf_s, ptr %100, i32 0, i32 8, !dbg !3006
  %101 = load ptr, ptr %shadow119, align 8, !dbg !3006, !tbaa !3002
  %last120 = getelementptr inbounds %struct.ngx_buf_s, ptr %101, i32 0, i32 1, !dbg !3007
  %102 = load ptr, ptr %last120, align 8, !dbg !3007, !tbaa !2845
  %103 = load ptr, ptr %b, align 8, !dbg !3008, !tbaa !2077
  %shadow121 = getelementptr inbounds %struct.ngx_buf_s, ptr %103, i32 0, i32 8, !dbg !3009
  %104 = load ptr, ptr %shadow121, align 8, !dbg !3009, !tbaa !3002
  %pos122 = getelementptr inbounds %struct.ngx_buf_s, ptr %104, i32 0, i32 0, !dbg !3010
  store ptr %102, ptr %pos122, align 8, !dbg !3011, !tbaa !2847
  br label %if.end123, !dbg !3012

if.end123:                                        ; preds = %if.then118, %if.end116
  %105 = load ptr, ptr %b, align 8, !dbg !3013, !tbaa !2077
  %pos124 = getelementptr inbounds %struct.ngx_buf_s, ptr %105, i32 0, i32 0, !dbg !3015
  %106 = load ptr, ptr %pos124, align 8, !dbg !3015, !tbaa !2847
  %tobool125 = icmp ne ptr %106, null, !dbg !3013
  br i1 %tobool125, label %if.then126, label %if.end129, !dbg !3016

if.then126:                                       ; preds = %if.end123
  %107 = load ptr, ptr %ctx, align 8, !dbg !3017, !tbaa !2077
  %free_buffers = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %107, i32 0, i32 5, !dbg !3019
  %108 = load ptr, ptr %free_buffers, align 8, !dbg !3019, !tbaa !3020
  %109 = load ptr, ptr %cl, align 8, !dbg !3021, !tbaa !2077
  %next127 = getelementptr inbounds %struct.ngx_chain_s, ptr %109, i32 0, i32 1, !dbg !3022
  store ptr %108, ptr %next127, align 8, !dbg !3023, !tbaa !2875
  %110 = load ptr, ptr %cl, align 8, !dbg !3024, !tbaa !2077
  %111 = load ptr, ptr %ctx, align 8, !dbg !3025, !tbaa !2077
  %free_buffers128 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %111, i32 0, i32 5, !dbg !3026
  store ptr %110, ptr %free_buffers128, align 8, !dbg !3027, !tbaa !3020
  br label %while.cond72, !dbg !3028, !llvm.loop !2997

if.end129:                                        ; preds = %if.end123
  %112 = load ptr, ptr %ctx, align 8, !dbg !3029, !tbaa !2077
  %free_bufs = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %112, i32 0, i32 4, !dbg !3030
  %113 = load ptr, ptr %free_bufs, align 8, !dbg !3030, !tbaa !3031
  %114 = load ptr, ptr %cl, align 8, !dbg !3032, !tbaa !2077
  %next130 = getelementptr inbounds %struct.ngx_chain_s, ptr %114, i32 0, i32 1, !dbg !3033
  store ptr %113, ptr %next130, align 8, !dbg !3034, !tbaa !2875
  %115 = load ptr, ptr %cl, align 8, !dbg !3035, !tbaa !2077
  %116 = load ptr, ptr %ctx, align 8, !dbg !3036, !tbaa !2077
  %free_bufs131 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %116, i32 0, i32 4, !dbg !3037
  store ptr %115, ptr %free_bufs131, align 8, !dbg !3038, !tbaa !3031
  br label %while.cond72, !dbg !2968, !llvm.loop !2997

while.end132:                                     ; preds = %if.then110, %while.cond72
  %117 = load i64, ptr %rc, align 8, !dbg !3039, !tbaa !2125
  store i64 %117, ptr %retval, align 8, !dbg !3040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3040

if.end133:                                        ; preds = %lor.lhs.false8
  %118 = load ptr, ptr %in.addr, align 8, !dbg !3041, !tbaa !2077
  store ptr %118, ptr %cl, align 8, !dbg !3043, !tbaa !2077
  br label %for.cond134, !dbg !3044

for.cond134:                                      ; preds = %for.inc140, %if.end133
  %119 = load ptr, ptr %cl, align 8, !dbg !3045, !tbaa !2077
  %tobool135 = icmp ne ptr %119, null, !dbg !3047
  br i1 %tobool135, label %for.body136, label %for.end142, !dbg !3047

for.body136:                                      ; preds = %for.cond134
  %120 = load ptr, ptr %cl, align 8, !dbg !3048, !tbaa !2077
  %buf137 = getelementptr inbounds %struct.ngx_chain_s, ptr %120, i32 0, i32 0, !dbg !3050
  %121 = load ptr, ptr %buf137, align 8, !dbg !3050, !tbaa !2840
  %122 = load ptr, ptr %ctx, align 8, !dbg !3051, !tbaa !2077
  %table138 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %122, i32 0, i32 0, !dbg !3052
  %123 = load ptr, ptr %table138, align 8, !dbg !3052, !tbaa !2807
  %call139 = call i64 @ngx_http_charset_recode(ptr noundef %121, ptr noundef %123), !dbg !3053
  br label %for.inc140, !dbg !3054

for.inc140:                                       ; preds = %for.body136
  %124 = load ptr, ptr %cl, align 8, !dbg !3055, !tbaa !2077
  %next141 = getelementptr inbounds %struct.ngx_chain_s, ptr %124, i32 0, i32 1, !dbg !3056
  %125 = load ptr, ptr %next141, align 8, !dbg !3056, !tbaa !2875
  store ptr %125, ptr %cl, align 8, !dbg !3057, !tbaa !2077
  br label %for.cond134, !dbg !3058, !llvm.loop !3059

for.end142:                                       ; preds = %for.cond134
  %126 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !3061, !tbaa !2077
  %127 = load ptr, ptr %r.addr, align 8, !dbg !3062, !tbaa !2077
  %128 = load ptr, ptr %in.addr, align 8, !dbg !3063, !tbaa !2077
  %call143 = call i64 %126(ptr noundef %127, ptr noundef %128), !dbg !3061
  store i64 %call143, ptr %retval, align 8, !dbg !3064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3064

cleanup:                                          ; preds = %for.end142, %while.end132, %if.then48, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #7, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #7, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #7, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #7, !dbg !3065
  %129 = load i64, ptr %retval, align 8, !dbg !3065
  ret i64 %129, !dbg !3065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_destination_charset(ptr noundef %r, ptr noundef %name) #0 !dbg !3066 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %charset = alloca i64, align 8
  %charsets = alloca ptr, align 8
  %vv = alloca ptr, align 8
  %mlcf = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3070, metadata !DIExpression()), !dbg !3077
  store ptr %name, ptr %name.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3071, metadata !DIExpression()), !dbg !3078
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !3079
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !3072, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.start.p0(i64 8, ptr %charsets) #7, !dbg !3081
  tail call void @llvm.dbg.declare(metadata ptr %charsets, metadata !3073, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.start.p0(i64 8, ptr %vv) #7, !dbg !3083
  tail call void @llvm.dbg.declare(metadata ptr %vv, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlcf) #7, !dbg !3085
  tail call void @llvm.dbg.declare(metadata ptr %mlcf, metadata !3075, metadata !DIExpression()), !dbg !3086
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !3087
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !3076, metadata !DIExpression()), !dbg !3088
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3089, !tbaa !2077
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 14, !dbg !3091
  %content_type = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 18, !dbg !3092
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %content_type, i32 0, i32 0, !dbg !3093
  %1 = load i64, ptr %len, align 8, !dbg !3093, !tbaa !2686
  %cmp = icmp eq i64 %1, 0, !dbg !3094
  br i1 %cmp, label %if.then, label %if.end, !dbg !3095

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3096

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !3098, !tbaa !2077
  %headers_out1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %2, i32 0, i32 14, !dbg !3100
  %override_charset = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out1, i32 0, i32 16, !dbg !3101
  %3 = load ptr, ptr %override_charset, align 8, !dbg !3101, !tbaa !3102
  %tobool = icmp ne ptr %3, null, !dbg !3098
  br i1 %tobool, label %land.lhs.true, label %if.end17, !dbg !3103

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3104, !tbaa !2077
  %headers_out2 = getelementptr inbounds %struct.ngx_http_request_s, ptr %4, i32 0, i32 14, !dbg !3105
  %override_charset3 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out2, i32 0, i32 16, !dbg !3106
  %5 = load ptr, ptr %override_charset3, align 8, !dbg !3106, !tbaa !3102
  %len4 = getelementptr inbounds %struct.ngx_str_t, ptr %5, i32 0, i32 0, !dbg !3107
  %6 = load i64, ptr %len4, align 8, !dbg !3107, !tbaa !2660
  %tobool5 = icmp ne i64 %6, 0, !dbg !3104
  br i1 %tobool5, label %if.then6, label %if.end17, !dbg !3108

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %name.addr, align 8, !dbg !3109, !tbaa !2077
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3111, !tbaa !2077
  %headers_out7 = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 14, !dbg !3112
  %override_charset8 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out7, i32 0, i32 16, !dbg !3113
  %9 = load ptr, ptr %override_charset8, align 8, !dbg !3113, !tbaa !3102
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 16, i1 false), !dbg !3114, !tbaa.struct !3115
  %10 = load ptr, ptr %r.addr, align 8, !dbg !3116, !tbaa !2077
  %11 = load ptr, ptr %name.addr, align 8, !dbg !3117, !tbaa !2077
  %call = call i64 @ngx_http_get_charset(ptr noundef %10, ptr noundef %11), !dbg !3118
  store i64 %call, ptr %charset, align 8, !dbg !3119, !tbaa !2125
  %12 = load i64, ptr %charset, align 8, !dbg !3120, !tbaa !2125
  %cmp9 = icmp ne i64 %12, -3, !dbg !3122
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3123

if.then10:                                        ; preds = %if.then6
  %13 = load i64, ptr %charset, align 8, !dbg !3124, !tbaa !2125
  store i64 %13, ptr %retval, align 8, !dbg !3126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3126

if.end11:                                         ; preds = %if.then6
  %14 = load ptr, ptr %r.addr, align 8, !dbg !3127, !tbaa !2077
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 1, !dbg !3127
  %15 = load ptr, ptr %connection, align 8, !dbg !3127, !tbaa !2750
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %15, i32 0, i32 10, !dbg !3127
  %16 = load ptr, ptr %log, align 8, !dbg !3127, !tbaa !2751
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %16, i32 0, i32 0, !dbg !3127
  %17 = load i64, ptr %log_level, align 8, !dbg !3127, !tbaa !2199
  %cmp12 = icmp uge i64 %17, 4, !dbg !3127
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !3129

if.then13:                                        ; preds = %if.end11
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3127, !tbaa !2077
  %connection14 = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 1, !dbg !3127
  %19 = load ptr, ptr %connection14, align 8, !dbg !3127, !tbaa !2750
  %log15 = getelementptr inbounds %struct.ngx_connection_s, ptr %19, i32 0, i32 10, !dbg !3127
  %20 = load ptr, ptr %log15, align 8, !dbg !3127, !tbaa !2751
  %21 = load ptr, ptr %name.addr, align 8, !dbg !3127, !tbaa !2077
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %20, i32 noundef 0, ptr noundef @.str.2, ptr noundef %21), !dbg !3127
  br label %if.end16, !dbg !3127

if.end16:                                         ; preds = %if.then13, %if.end11
  store i64 -5, ptr %retval, align 8, !dbg !3130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3130

if.end17:                                         ; preds = %land.lhs.true, %if.end
  %22 = load ptr, ptr %r.addr, align 8, !dbg !3131, !tbaa !2077
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %22, i32 0, i32 5, !dbg !3131
  %23 = load ptr, ptr %loc_conf, align 8, !dbg !3131, !tbaa !3132
  %24 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3131, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %23, i64 %24, !dbg !3131
  %25 = load ptr, ptr %arrayidx, align 8, !dbg !3131, !tbaa !2077
  store ptr %25, ptr %mlcf, align 8, !dbg !3133, !tbaa !2077
  %26 = load ptr, ptr %mlcf, align 8, !dbg !3134, !tbaa !2077
  %charset18 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %26, i32 0, i32 0, !dbg !3135
  %27 = load i64, ptr %charset18, align 8, !dbg !3135, !tbaa !2402
  store i64 %27, ptr %charset, align 8, !dbg !3136, !tbaa !2125
  %28 = load i64, ptr %charset, align 8, !dbg !3137, !tbaa !2125
  %cmp19 = icmp eq i64 %28, -2, !dbg !3139
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3140

if.then20:                                        ; preds = %if.end17
  store i64 -5, ptr %retval, align 8, !dbg !3141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3141

if.end21:                                         ; preds = %if.end17
  %29 = load ptr, ptr %r.addr, align 8, !dbg !3143, !tbaa !2077
  %headers_out22 = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 14, !dbg !3145
  %charset23 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out22, i32 0, i32 19, !dbg !3146
  %len24 = getelementptr inbounds %struct.ngx_str_t, ptr %charset23, i32 0, i32 0, !dbg !3147
  %30 = load i64, ptr %len24, align 8, !dbg !3147, !tbaa !3148
  %tobool25 = icmp ne i64 %30, 0, !dbg !3143
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !3149

if.then26:                                        ; preds = %if.end21
  %31 = load ptr, ptr %mlcf, align 8, !dbg !3150, !tbaa !2077
  %override_charset27 = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %31, i32 0, i32 2, !dbg !3153
  %32 = load i64, ptr %override_charset27, align 8, !dbg !3153, !tbaa !2412
  %cmp28 = icmp eq i64 %32, 0, !dbg !3154
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !3155

if.then29:                                        ; preds = %if.then26
  store i64 -5, ptr %retval, align 8, !dbg !3156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3156

if.end30:                                         ; preds = %if.then26
  br label %if.end35, !dbg !3158

if.else:                                          ; preds = %if.end21
  %33 = load ptr, ptr %r.addr, align 8, !dbg !3159, !tbaa !2077
  %34 = load ptr, ptr %mlcf, align 8, !dbg !3162, !tbaa !2077
  %types = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %34, i32 0, i32 3, !dbg !3163
  %call31 = call ptr @ngx_http_test_content_type(ptr noundef %33, ptr noundef %types), !dbg !3164
  %cmp32 = icmp eq ptr %call31, null, !dbg !3165
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !3166

if.then33:                                        ; preds = %if.else
  store i64 -5, ptr %retval, align 8, !dbg !3167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3167

if.end34:                                         ; preds = %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end30
  %35 = load i64, ptr %charset, align 8, !dbg !3169, !tbaa !2125
  %cmp36 = icmp slt i64 %35, 65536, !dbg !3171
  br i1 %cmp36, label %if.then37, label %if.end42, !dbg !3172

if.then37:                                        ; preds = %if.end35
  %36 = load ptr, ptr %r.addr, align 8, !dbg !3173, !tbaa !2077
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %36, i32 0, i32 3, !dbg !3173
  %37 = load ptr, ptr %main_conf, align 8, !dbg !3173, !tbaa !2711
  %38 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3173, !tbaa !2104
  %arrayidx38 = getelementptr inbounds ptr, ptr %37, i64 %38, !dbg !3173
  %39 = load ptr, ptr %arrayidx38, align 8, !dbg !3173, !tbaa !2077
  store ptr %39, ptr %mcf, align 8, !dbg !3175, !tbaa !2077
  %40 = load ptr, ptr %mcf, align 8, !dbg !3176, !tbaa !2077
  %charsets39 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %40, i32 0, i32 0, !dbg !3177
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %charsets39, i32 0, i32 0, !dbg !3178
  %41 = load ptr, ptr %elts, align 8, !dbg !3178, !tbaa !2122
  store ptr %41, ptr %charsets, align 8, !dbg !3179, !tbaa !2077
  %42 = load ptr, ptr %name.addr, align 8, !dbg !3180, !tbaa !2077
  %43 = load ptr, ptr %charsets, align 8, !dbg !3181, !tbaa !2077
  %44 = load i64, ptr %charset, align 8, !dbg !3182, !tbaa !2125
  %arrayidx40 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %43, i64 %44, !dbg !3181
  %name41 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx40, i32 0, i32 1, !dbg !3183
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 8 %name41, i64 16, i1 false), !dbg !3183, !tbaa.struct !3115
  %45 = load i64, ptr %charset, align 8, !dbg !3184, !tbaa !2125
  store i64 %45, ptr %retval, align 8, !dbg !3185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3185

if.end42:                                         ; preds = %if.end35
  %46 = load ptr, ptr %r.addr, align 8, !dbg !3186, !tbaa !2077
  %47 = load i64, ptr %charset, align 8, !dbg !3187, !tbaa !2125
  %sub = sub nsw i64 %47, 65536, !dbg !3188
  %call43 = call ptr @ngx_http_get_indexed_variable(ptr noundef %46, i64 noundef %sub), !dbg !3189
  store ptr %call43, ptr %vv, align 8, !dbg !3190, !tbaa !2077
  %48 = load ptr, ptr %vv, align 8, !dbg !3191, !tbaa !2077
  %cmp44 = icmp eq ptr %48, null, !dbg !3193
  br i1 %cmp44, label %if.then46, label %lor.lhs.false, !dbg !3194

lor.lhs.false:                                    ; preds = %if.end42
  %49 = load ptr, ptr %vv, align 8, !dbg !3195, !tbaa !2077
  %bf.load = load i32, ptr %49, align 8, !dbg !3196
  %bf.lshr = lshr i32 %bf.load, 30, !dbg !3196
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3196
  %tobool45 = icmp ne i32 %bf.clear, 0, !dbg !3195
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !3197

if.then46:                                        ; preds = %lor.lhs.false, %if.end42
  store i64 -1, ptr %retval, align 8, !dbg !3198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3198

if.end47:                                         ; preds = %lor.lhs.false
  %50 = load ptr, ptr %vv, align 8, !dbg !3200, !tbaa !2077
  %bf.load48 = load i32, ptr %50, align 8, !dbg !3201
  %bf.clear49 = and i32 %bf.load48, 268435455, !dbg !3201
  %conv = zext i32 %bf.clear49 to i64, !dbg !3200
  %51 = load ptr, ptr %name.addr, align 8, !dbg !3202, !tbaa !2077
  %len50 = getelementptr inbounds %struct.ngx_str_t, ptr %51, i32 0, i32 0, !dbg !3203
  store i64 %conv, ptr %len50, align 8, !dbg !3204, !tbaa !2660
  %52 = load ptr, ptr %vv, align 8, !dbg !3205, !tbaa !2077
  %data = getelementptr inbounds %struct.ngx_variable_value_t, ptr %52, i32 0, i32 1, !dbg !3206
  %53 = load ptr, ptr %data, align 8, !dbg !3206, !tbaa !3207
  %54 = load ptr, ptr %name.addr, align 8, !dbg !3209, !tbaa !2077
  %data51 = getelementptr inbounds %struct.ngx_str_t, ptr %54, i32 0, i32 1, !dbg !3210
  store ptr %53, ptr %data51, align 8, !dbg !3211, !tbaa !2657
  %55 = load ptr, ptr %r.addr, align 8, !dbg !3212, !tbaa !2077
  %56 = load ptr, ptr %name.addr, align 8, !dbg !3213, !tbaa !2077
  %call52 = call i64 @ngx_http_get_charset(ptr noundef %55, ptr noundef %56), !dbg !3214
  store i64 %call52, ptr %retval, align 8, !dbg !3215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3215

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then37, %if.then33, %if.then29, %if.then20, %if.end16, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlcf) #7, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %vv) #7, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %charsets) #7, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !3216
  %57 = load i64, ptr %retval, align 8, !dbg !3216
  ret i64 %57, !dbg !3216
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_main_request_charset(ptr noundef %r, ptr noundef %src) #0 !dbg !3217 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %charset = alloca i64, align 8
  %main_charset = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3219, metadata !DIExpression()), !dbg !3224
  store ptr %src, ptr %src.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3220, metadata !DIExpression()), !dbg !3225
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !3226
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !3221, metadata !DIExpression()), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 8, ptr %main_charset) #7, !dbg !3228
  tail call void @llvm.dbg.declare(metadata ptr %main_charset, metadata !3222, metadata !DIExpression()), !dbg !3229
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !3230
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !3223, metadata !DIExpression()), !dbg !3231
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3232, !tbaa !2077
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 30, !dbg !3232
  %1 = load ptr, ptr %main, align 8, !dbg !3232, !tbaa !2593
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 2, !dbg !3232
  %2 = load ptr, ptr %ctx1, align 8, !dbg !3232, !tbaa !2799
  %3 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3232, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !3232
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3232, !tbaa !2077
  store ptr %4, ptr %ctx, align 8, !dbg !3233, !tbaa !2077
  %5 = load ptr, ptr %ctx, align 8, !dbg !3234, !tbaa !2077
  %tobool = icmp ne ptr %5, null, !dbg !3234
  br i1 %tobool, label %if.then, label %if.end, !dbg !3236

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !3237, !tbaa !2077
  %7 = load ptr, ptr %ctx, align 8, !dbg !3239, !tbaa !2077
  %charset_name = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %7, i32 0, i32 2, !dbg !3240
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %charset_name, i64 16, i1 false), !dbg !3240, !tbaa.struct !3115
  %8 = load ptr, ptr %ctx, align 8, !dbg !3241, !tbaa !2077
  %charset2 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %8, i32 0, i32 1, !dbg !3242
  %9 = load i64, ptr %charset2, align 8, !dbg !3242, !tbaa !3243
  store i64 %9, ptr %retval, align 8, !dbg !3244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3244

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %r.addr, align 8, !dbg !3245, !tbaa !2077
  %main3 = getelementptr inbounds %struct.ngx_http_request_s, ptr %10, i32 0, i32 30, !dbg !3246
  %11 = load ptr, ptr %main3, align 8, !dbg !3246, !tbaa !2593
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 14, !dbg !3247
  %charset4 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 19, !dbg !3248
  store ptr %charset4, ptr %main_charset, align 8, !dbg !3249, !tbaa !2077
  %12 = load ptr, ptr %main_charset, align 8, !dbg !3250, !tbaa !2077
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %12, i32 0, i32 0, !dbg !3252
  %13 = load i64, ptr %len, align 8, !dbg !3252, !tbaa !2660
  %cmp = icmp eq i64 %13, 0, !dbg !3253
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3254

if.then5:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !3255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3255

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %r.addr, align 8, !dbg !3257, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 11, !dbg !3258
  %15 = load ptr, ptr %pool, align 8, !dbg !3258, !tbaa !2855
  %call = call ptr @ngx_pcalloc(ptr noundef %15, i64 noundef 72), !dbg !3259
  store ptr %call, ptr %ctx, align 8, !dbg !3260, !tbaa !2077
  %16 = load ptr, ptr %ctx, align 8, !dbg !3261, !tbaa !2077
  %cmp7 = icmp eq ptr %16, null, !dbg !3263
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3264

if.then8:                                         ; preds = %if.end6
  store i64 -1, ptr %retval, align 8, !dbg !3265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3265

if.end9:                                          ; preds = %if.end6
  %17 = load ptr, ptr %ctx, align 8, !dbg !3267, !tbaa !2077
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3267, !tbaa !2077
  %main10 = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 30, !dbg !3267
  %19 = load ptr, ptr %main10, align 8, !dbg !3267, !tbaa !2593
  %ctx11 = getelementptr inbounds %struct.ngx_http_request_s, ptr %19, i32 0, i32 2, !dbg !3267
  %20 = load ptr, ptr %ctx11, align 8, !dbg !3267, !tbaa !2799
  %21 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3267, !tbaa !2104
  %arrayidx12 = getelementptr inbounds ptr, ptr %20, i64 %21, !dbg !3267
  store ptr %17, ptr %arrayidx12, align 8, !dbg !3267, !tbaa !2077
  %22 = load ptr, ptr %r.addr, align 8, !dbg !3268, !tbaa !2077
  %23 = load ptr, ptr %main_charset, align 8, !dbg !3269, !tbaa !2077
  %call13 = call i64 @ngx_http_get_charset(ptr noundef %22, ptr noundef %23), !dbg !3270
  store i64 %call13, ptr %charset, align 8, !dbg !3271, !tbaa !2125
  %24 = load i64, ptr %charset, align 8, !dbg !3272, !tbaa !2125
  %25 = load ptr, ptr %ctx, align 8, !dbg !3273, !tbaa !2077
  %charset14 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %25, i32 0, i32 1, !dbg !3274
  store i64 %24, ptr %charset14, align 8, !dbg !3275, !tbaa !3243
  %26 = load ptr, ptr %ctx, align 8, !dbg !3276, !tbaa !2077
  %charset_name15 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %26, i32 0, i32 2, !dbg !3277
  %27 = load ptr, ptr %main_charset, align 8, !dbg !3278, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %charset_name15, ptr align 8 %27, i64 16, i1 false), !dbg !3279, !tbaa.struct !3115
  %28 = load ptr, ptr %src.addr, align 8, !dbg !3280, !tbaa !2077
  %29 = load ptr, ptr %main_charset, align 8, !dbg !3281, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %29, i64 16, i1 false), !dbg !3282, !tbaa.struct !3115
  %30 = load i64, ptr %charset, align 8, !dbg !3283, !tbaa !2125
  store i64 %30, ptr %retval, align 8, !dbg !3284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3284

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !3285
  call void @llvm.lifetime.end.p0(i64 8, ptr %main_charset) #7, !dbg !3285
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !3285
  %31 = load i64, ptr %retval, align 8, !dbg !3285
  ret i64 %31, !dbg !3285
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_source_charset(ptr noundef %r, ptr noundef %name) #0 !dbg !3286 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %charset = alloca i64, align 8
  %charsets = alloca ptr, align 8
  %vv = alloca ptr, align 8
  %lcf = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3288, metadata !DIExpression()), !dbg !3295
  store ptr %name, ptr %name.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3289, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !3297
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.lifetime.start.p0(i64 8, ptr %charsets) #7, !dbg !3299
  tail call void @llvm.dbg.declare(metadata ptr %charsets, metadata !3291, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 8, ptr %vv) #7, !dbg !3301
  tail call void @llvm.dbg.declare(metadata ptr %vv, metadata !3292, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcf) #7, !dbg !3303
  tail call void @llvm.dbg.declare(metadata ptr %lcf, metadata !3293, metadata !DIExpression()), !dbg !3304
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !3305
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !3294, metadata !DIExpression()), !dbg !3306
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3307, !tbaa !2077
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 14, !dbg !3309
  %charset1 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 19, !dbg !3310
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %charset1, i32 0, i32 0, !dbg !3311
  %1 = load i64, ptr %len, align 8, !dbg !3311, !tbaa !3148
  %tobool = icmp ne i64 %1, 0, !dbg !3307
  br i1 %tobool, label %if.then, label %if.end, !dbg !3312

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !3313, !tbaa !2077
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3315, !tbaa !2077
  %headers_out2 = getelementptr inbounds %struct.ngx_http_request_s, ptr %3, i32 0, i32 14, !dbg !3316
  %charset3 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out2, i32 0, i32 19, !dbg !3317
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %charset3, i64 16, i1 false), !dbg !3317, !tbaa.struct !3115
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3318, !tbaa !2077
  %5 = load ptr, ptr %name.addr, align 8, !dbg !3319, !tbaa !2077
  %call = call i64 @ngx_http_get_charset(ptr noundef %4, ptr noundef %5), !dbg !3320
  store i64 %call, ptr %retval, align 8, !dbg !3321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3321

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3322, !tbaa !2077
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 5, !dbg !3322
  %7 = load ptr, ptr %loc_conf, align 8, !dbg !3322, !tbaa !3132
  %8 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3322, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !3322
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !3322, !tbaa !2077
  store ptr %9, ptr %lcf, align 8, !dbg !3323, !tbaa !2077
  %10 = load ptr, ptr %lcf, align 8, !dbg !3324, !tbaa !2077
  %source_charset = getelementptr inbounds %struct.ngx_http_charset_loc_conf_t, ptr %10, i32 0, i32 1, !dbg !3325
  %11 = load i64, ptr %source_charset, align 8, !dbg !3325, !tbaa !2408
  store i64 %11, ptr %charset, align 8, !dbg !3326, !tbaa !2125
  %12 = load i64, ptr %charset, align 8, !dbg !3327, !tbaa !2125
  %cmp = icmp eq i64 %12, -2, !dbg !3329
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3330

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %name.addr, align 8, !dbg !3331, !tbaa !2077
  %len5 = getelementptr inbounds %struct.ngx_str_t, ptr %13, i32 0, i32 0, !dbg !3333
  store i64 0, ptr %len5, align 8, !dbg !3334, !tbaa !2660
  %14 = load i64, ptr %charset, align 8, !dbg !3335, !tbaa !2125
  store i64 %14, ptr %retval, align 8, !dbg !3336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3336

if.end6:                                          ; preds = %if.end
  %15 = load i64, ptr %charset, align 8, !dbg !3337, !tbaa !2125
  %cmp7 = icmp slt i64 %15, 65536, !dbg !3339
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !3340

if.then8:                                         ; preds = %if.end6
  %16 = load ptr, ptr %r.addr, align 8, !dbg !3341, !tbaa !2077
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %16, i32 0, i32 3, !dbg !3341
  %17 = load ptr, ptr %main_conf, align 8, !dbg !3341, !tbaa !2711
  %18 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3341, !tbaa !2104
  %arrayidx9 = getelementptr inbounds ptr, ptr %17, i64 %18, !dbg !3341
  %19 = load ptr, ptr %arrayidx9, align 8, !dbg !3341, !tbaa !2077
  store ptr %19, ptr %mcf, align 8, !dbg !3343, !tbaa !2077
  %20 = load ptr, ptr %mcf, align 8, !dbg !3344, !tbaa !2077
  %charsets10 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %20, i32 0, i32 0, !dbg !3345
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %charsets10, i32 0, i32 0, !dbg !3346
  %21 = load ptr, ptr %elts, align 8, !dbg !3346, !tbaa !2122
  store ptr %21, ptr %charsets, align 8, !dbg !3347, !tbaa !2077
  %22 = load ptr, ptr %name.addr, align 8, !dbg !3348, !tbaa !2077
  %23 = load ptr, ptr %charsets, align 8, !dbg !3349, !tbaa !2077
  %24 = load i64, ptr %charset, align 8, !dbg !3350, !tbaa !2125
  %arrayidx11 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %23, i64 %24, !dbg !3349
  %name12 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx11, i32 0, i32 1, !dbg !3351
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %name12, i64 16, i1 false), !dbg !3351, !tbaa.struct !3115
  %25 = load i64, ptr %charset, align 8, !dbg !3352, !tbaa !2125
  store i64 %25, ptr %retval, align 8, !dbg !3353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3353

if.end13:                                         ; preds = %if.end6
  %26 = load ptr, ptr %r.addr, align 8, !dbg !3354, !tbaa !2077
  %27 = load i64, ptr %charset, align 8, !dbg !3355, !tbaa !2125
  %sub = sub nsw i64 %27, 65536, !dbg !3356
  %call14 = call ptr @ngx_http_get_indexed_variable(ptr noundef %26, i64 noundef %sub), !dbg !3357
  store ptr %call14, ptr %vv, align 8, !dbg !3358, !tbaa !2077
  %28 = load ptr, ptr %vv, align 8, !dbg !3359, !tbaa !2077
  %cmp15 = icmp eq ptr %28, null, !dbg !3361
  br i1 %cmp15, label %if.then17, label %lor.lhs.false, !dbg !3362

lor.lhs.false:                                    ; preds = %if.end13
  %29 = load ptr, ptr %vv, align 8, !dbg !3363, !tbaa !2077
  %bf.load = load i32, ptr %29, align 8, !dbg !3364
  %bf.lshr = lshr i32 %bf.load, 30, !dbg !3364
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3364
  %tobool16 = icmp ne i32 %bf.clear, 0, !dbg !3363
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3365

if.then17:                                        ; preds = %lor.lhs.false, %if.end13
  store i64 -1, ptr %retval, align 8, !dbg !3366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3366

if.end18:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %vv, align 8, !dbg !3368, !tbaa !2077
  %bf.load19 = load i32, ptr %30, align 8, !dbg !3369
  %bf.clear20 = and i32 %bf.load19, 268435455, !dbg !3369
  %conv = zext i32 %bf.clear20 to i64, !dbg !3368
  %31 = load ptr, ptr %name.addr, align 8, !dbg !3370, !tbaa !2077
  %len21 = getelementptr inbounds %struct.ngx_str_t, ptr %31, i32 0, i32 0, !dbg !3371
  store i64 %conv, ptr %len21, align 8, !dbg !3372, !tbaa !2660
  %32 = load ptr, ptr %vv, align 8, !dbg !3373, !tbaa !2077
  %data = getelementptr inbounds %struct.ngx_variable_value_t, ptr %32, i32 0, i32 1, !dbg !3374
  %33 = load ptr, ptr %data, align 8, !dbg !3374, !tbaa !3207
  %34 = load ptr, ptr %name.addr, align 8, !dbg !3375, !tbaa !2077
  %data22 = getelementptr inbounds %struct.ngx_str_t, ptr %34, i32 0, i32 1, !dbg !3376
  store ptr %33, ptr %data22, align 8, !dbg !3377, !tbaa !2657
  %35 = load ptr, ptr %r.addr, align 8, !dbg !3378, !tbaa !2077
  %36 = load ptr, ptr %name.addr, align 8, !dbg !3379, !tbaa !2077
  %call23 = call i64 @ngx_http_get_charset(ptr noundef %35, ptr noundef %36), !dbg !3380
  store i64 %call23, ptr %retval, align 8, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !3382
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcf) #7, !dbg !3382
  call void @llvm.lifetime.end.p0(i64 8, ptr %vv) #7, !dbg !3382
  call void @llvm.lifetime.end.p0(i64 8, ptr %charsets) #7, !dbg !3382
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !3382
  %37 = load i64, ptr %retval, align 8, !dbg !3382
  ret i64 %37, !dbg !3382
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_http_set_charset(ptr noundef %r, ptr noundef %charset) #3 !dbg !3383 {
entry:
  %r.addr = alloca ptr, align 8
  %charset.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3387, metadata !DIExpression()), !dbg !3389
  store ptr %charset, ptr %charset.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %charset.addr, metadata !3388, metadata !DIExpression()), !dbg !3390
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3391, !tbaa !2077
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3393, !tbaa !2077
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 30, !dbg !3394
  %2 = load ptr, ptr %main, align 8, !dbg !3394, !tbaa !2593
  %cmp = icmp ne ptr %0, %2, !dbg !3395
  br i1 %cmp, label %if.then, label %if.end, !dbg !3396

if.then:                                          ; preds = %entry
  br label %return, !dbg !3397

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3399, !tbaa !2077
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %3, i32 0, i32 14, !dbg !3401
  %status = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 2, !dbg !3402
  %4 = load i64, ptr %status, align 8, !dbg !3402, !tbaa !3403
  %cmp1 = icmp eq i64 %4, 301, !dbg !3404
  br i1 %cmp1, label %if.then5, label %lor.lhs.false, !dbg !3405

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %r.addr, align 8, !dbg !3406, !tbaa !2077
  %headers_out2 = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 14, !dbg !3407
  %status3 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out2, i32 0, i32 2, !dbg !3408
  %6 = load i64, ptr %status3, align 8, !dbg !3408, !tbaa !3403
  %cmp4 = icmp eq i64 %6, 302, !dbg !3409
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !3410

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %r.addr, align 8, !dbg !3411, !tbaa !2077
  %headers_out6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %7, i32 0, i32 14, !dbg !3413
  %charset7 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out6, i32 0, i32 19, !dbg !3414
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %charset7, i32 0, i32 0, !dbg !3415
  store i64 0, ptr %len, align 8, !dbg !3416, !tbaa !3148
  br label %return, !dbg !3417

if.end8:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3418, !tbaa !2077
  %headers_out9 = getelementptr inbounds %struct.ngx_http_request_s, ptr %8, i32 0, i32 14, !dbg !3419
  %charset10 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out9, i32 0, i32 19, !dbg !3420
  %9 = load ptr, ptr %charset.addr, align 8, !dbg !3421, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %charset10, ptr align 8 %9, i64 16, i1 false), !dbg !3422, !tbaa.struct !3115
  br label %return, !dbg !3423

return:                                           ; preds = %if.end8, %if.then5, %if.then
  ret void, !dbg !3423
}

declare !dbg !3424 i64 @ngx_strncasecmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_charset_ctx(ptr noundef %r, ptr noundef %charsets, i64 noundef %charset, i64 noundef %source_charset) #0 !dbg !3427 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %charsets.addr = alloca ptr, align 8
  %charset.addr = alloca i64, align 8
  %source_charset.addr = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3431, metadata !DIExpression()), !dbg !3436
  store ptr %charsets, ptr %charsets.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %charsets.addr, metadata !3432, metadata !DIExpression()), !dbg !3437
  store i64 %charset, ptr %charset.addr, align 8, !tbaa !2125
  tail call void @llvm.dbg.declare(metadata ptr %charset.addr, metadata !3433, metadata !DIExpression()), !dbg !3438
  store i64 %source_charset, ptr %source_charset.addr, align 8, !tbaa !2125
  tail call void @llvm.dbg.declare(metadata ptr %source_charset.addr, metadata !3434, metadata !DIExpression()), !dbg !3439
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !3440
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !3435, metadata !DIExpression()), !dbg !3441
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3442, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 11, !dbg !3443
  %1 = load ptr, ptr %pool, align 8, !dbg !3443, !tbaa !2855
  %call = call ptr @ngx_pcalloc(ptr noundef %1, i64 noundef 72), !dbg !3444
  store ptr %call, ptr %ctx, align 8, !dbg !3445, !tbaa !2077
  %2 = load ptr, ptr %ctx, align 8, !dbg !3446, !tbaa !2077
  %cmp = icmp eq ptr %2, null, !dbg !3448
  br i1 %cmp, label %if.then, label %if.end, !dbg !3449

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !3450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3450

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !3452, !tbaa !2077
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3452, !tbaa !2077
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %4, i32 0, i32 2, !dbg !3452
  %5 = load ptr, ptr %ctx1, align 8, !dbg !3452, !tbaa !2799
  %6 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3452, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6, !dbg !3452
  store ptr %3, ptr %arrayidx, align 8, !dbg !3452, !tbaa !2077
  %7 = load ptr, ptr %charsets.addr, align 8, !dbg !3453, !tbaa !2077
  %8 = load i64, ptr %source_charset.addr, align 8, !dbg !3454, !tbaa !2125
  %arrayidx2 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %7, i64 %8, !dbg !3453
  %tables = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx2, i32 0, i32 0, !dbg !3455
  %9 = load ptr, ptr %tables, align 8, !dbg !3455, !tbaa !2225
  %10 = load i64, ptr %charset.addr, align 8, !dbg !3456, !tbaa !2125
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !3453
  %11 = load ptr, ptr %arrayidx3, align 8, !dbg !3453, !tbaa !2077
  %12 = load ptr, ptr %ctx, align 8, !dbg !3457, !tbaa !2077
  %table = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %12, i32 0, i32 0, !dbg !3458
  store ptr %11, ptr %table, align 8, !dbg !3459, !tbaa !2807
  %13 = load i64, ptr %charset.addr, align 8, !dbg !3460, !tbaa !2125
  %14 = load ptr, ptr %ctx, align 8, !dbg !3461, !tbaa !2077
  %charset4 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %14, i32 0, i32 1, !dbg !3462
  store i64 %13, ptr %charset4, align 8, !dbg !3463, !tbaa !3243
  %15 = load ptr, ptr %ctx, align 8, !dbg !3464, !tbaa !2077
  %charset_name = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %15, i32 0, i32 2, !dbg !3465
  %16 = load ptr, ptr %charsets.addr, align 8, !dbg !3466, !tbaa !2077
  %17 = load i64, ptr %charset.addr, align 8, !dbg !3467, !tbaa !2125
  %arrayidx5 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %16, i64 %17, !dbg !3466
  %name = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx5, i32 0, i32 1, !dbg !3468
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %charset_name, ptr align 8 %name, i64 16, i1 false), !dbg !3468, !tbaa.struct !3115
  %18 = load ptr, ptr %charsets.addr, align 8, !dbg !3469, !tbaa !2077
  %19 = load i64, ptr %charset.addr, align 8, !dbg !3470, !tbaa !2125
  %arrayidx6 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %18, i64 %19, !dbg !3469
  %length = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx6, i32 0, i32 2, !dbg !3471
  %bf.load = load i32, ptr %length, align 8, !dbg !3471
  %bf.clear = and i32 %bf.load, 65535, !dbg !3471
  %20 = load ptr, ptr %ctx, align 8, !dbg !3472, !tbaa !2077
  %length7 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %20, i32 0, i32 8, !dbg !3473
  %bf.load8 = load i32, ptr %length7, align 4, !dbg !3474
  %bf.value = and i32 %bf.clear, 65535, !dbg !3474
  %bf.clear9 = and i32 %bf.load8, -65536, !dbg !3474
  %bf.set = or i32 %bf.clear9, %bf.value, !dbg !3474
  store i32 %bf.set, ptr %length7, align 4, !dbg !3474
  %21 = load ptr, ptr %charsets.addr, align 8, !dbg !3475, !tbaa !2077
  %22 = load i64, ptr %source_charset.addr, align 8, !dbg !3476, !tbaa !2125
  %arrayidx10 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %21, i64 %22, !dbg !3475
  %utf8 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx10, i32 0, i32 2, !dbg !3477
  %bf.load11 = load i32, ptr %utf8, align 8, !dbg !3477
  %bf.lshr = lshr i32 %bf.load11, 16, !dbg !3477
  %bf.clear12 = and i32 %bf.lshr, 1, !dbg !3477
  %23 = load ptr, ptr %ctx, align 8, !dbg !3478, !tbaa !2077
  %from_utf8 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %23, i32 0, i32 8, !dbg !3479
  %bf.load13 = load i32, ptr %from_utf8, align 4, !dbg !3480
  %bf.value14 = and i32 %bf.clear12, 1, !dbg !3480
  %bf.shl = shl i32 %bf.value14, 16, !dbg !3480
  %bf.clear15 = and i32 %bf.load13, -65537, !dbg !3480
  %bf.set16 = or i32 %bf.clear15, %bf.shl, !dbg !3480
  store i32 %bf.set16, ptr %from_utf8, align 4, !dbg !3480
  %24 = load ptr, ptr %charsets.addr, align 8, !dbg !3481, !tbaa !2077
  %25 = load i64, ptr %charset.addr, align 8, !dbg !3482, !tbaa !2125
  %arrayidx17 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %24, i64 %25, !dbg !3481
  %utf818 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx17, i32 0, i32 2, !dbg !3483
  %bf.load19 = load i32, ptr %utf818, align 8, !dbg !3483
  %bf.lshr20 = lshr i32 %bf.load19, 16, !dbg !3483
  %bf.clear21 = and i32 %bf.lshr20, 1, !dbg !3483
  %26 = load ptr, ptr %ctx, align 8, !dbg !3484, !tbaa !2077
  %to_utf8 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %26, i32 0, i32 8, !dbg !3485
  %bf.load22 = load i32, ptr %to_utf8, align 4, !dbg !3486
  %bf.value23 = and i32 %bf.clear21, 1, !dbg !3486
  %bf.shl24 = shl i32 %bf.value23, 17, !dbg !3486
  %bf.clear25 = and i32 %bf.load22, -131073, !dbg !3486
  %bf.set26 = or i32 %bf.clear25, %bf.shl24, !dbg !3486
  store i32 %bf.set26, ptr %to_utf8, align 4, !dbg !3486
  %27 = load ptr, ptr %r.addr, align 8, !dbg !3487, !tbaa !2077
  %filter_need_in_memory = getelementptr inbounds %struct.ngx_http_request_s, ptr %27, i32 0, i32 48, !dbg !3488
  %bf.load27 = load i128, ptr %filter_need_in_memory, align 8, !dbg !3489
  %bf.clear28 = and i128 %bf.load27, -19807040628566084398385987585, !dbg !3489
  %bf.set29 = or i128 %bf.clear28, 19807040628566084398385987584, !dbg !3489
  store i128 %bf.set29, ptr %filter_need_in_memory, align 8, !dbg !3489
  %28 = load ptr, ptr %ctx, align 8, !dbg !3490, !tbaa !2077
  %to_utf830 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %28, i32 0, i32 8, !dbg !3492
  %bf.load31 = load i32, ptr %to_utf830, align 4, !dbg !3492
  %bf.lshr32 = lshr i32 %bf.load31, 17, !dbg !3492
  %bf.clear33 = and i32 %bf.lshr32, 1, !dbg !3492
  %tobool = icmp ne i32 %bf.clear33, 0, !dbg !3490
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !3493

lor.lhs.false:                                    ; preds = %if.end
  %29 = load ptr, ptr %ctx, align 8, !dbg !3494, !tbaa !2077
  %from_utf834 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %29, i32 0, i32 8, !dbg !3495
  %bf.load35 = load i32, ptr %from_utf834, align 4, !dbg !3495
  %bf.lshr36 = lshr i32 %bf.load35, 16, !dbg !3495
  %bf.clear37 = and i32 %bf.lshr36, 1, !dbg !3495
  %tobool38 = icmp ne i32 %bf.clear37, 0, !dbg !3494
  br i1 %tobool38, label %land.lhs.true, label %if.else, !dbg !3496

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %30 = load ptr, ptr %r.addr, align 8, !dbg !3497, !tbaa !2077
  %31 = load ptr, ptr %r.addr, align 8, !dbg !3498, !tbaa !2077
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %31, i32 0, i32 30, !dbg !3499
  %32 = load ptr, ptr %main, align 8, !dbg !3499, !tbaa !2593
  %cmp39 = icmp eq ptr %30, %32, !dbg !3500
  br i1 %cmp39, label %if.then40, label %if.else, !dbg !3501

if.then40:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %r.addr, align 8, !dbg !3502, !tbaa !2077
  %headers_out = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 14, !dbg !3502
  %content_length_n = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out, i32 0, i32 24, !dbg !3502
  store i64 -1, ptr %content_length_n, align 8, !dbg !3502, !tbaa !3504
  %34 = load ptr, ptr %r.addr, align 8, !dbg !3505, !tbaa !2077
  %headers_out41 = getelementptr inbounds %struct.ngx_http_request_s, ptr %34, i32 0, i32 14, !dbg !3505
  %content_length = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out41, i32 0, i32 6, !dbg !3505
  %35 = load ptr, ptr %content_length, align 8, !dbg !3505, !tbaa !3507
  %tobool42 = icmp ne ptr %35, null, !dbg !3505
  br i1 %tobool42, label %if.then43, label %if.end48, !dbg !3502

if.then43:                                        ; preds = %if.then40
  %36 = load ptr, ptr %r.addr, align 8, !dbg !3508, !tbaa !2077
  %headers_out44 = getelementptr inbounds %struct.ngx_http_request_s, ptr %36, i32 0, i32 14, !dbg !3508
  %content_length45 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out44, i32 0, i32 6, !dbg !3508
  %37 = load ptr, ptr %content_length45, align 8, !dbg !3508, !tbaa !3507
  %hash = getelementptr inbounds %struct.ngx_table_elt_t, ptr %37, i32 0, i32 0, !dbg !3508
  store i64 0, ptr %hash, align 8, !dbg !3508, !tbaa !3510
  %38 = load ptr, ptr %r.addr, align 8, !dbg !3508, !tbaa !2077
  %headers_out46 = getelementptr inbounds %struct.ngx_http_request_s, ptr %38, i32 0, i32 14, !dbg !3508
  %content_length47 = getelementptr inbounds %struct.ngx_http_headers_out_t, ptr %headers_out46, i32 0, i32 6, !dbg !3508
  store ptr null, ptr %content_length47, align 8, !dbg !3508, !tbaa !3507
  br label %if.end48, !dbg !3508

if.end48:                                         ; preds = %if.then43, %if.then40
  br label %if.end52, !dbg !3511

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %39 = load ptr, ptr %r.addr, align 8, !dbg !3512, !tbaa !2077
  %filter_need_temporary = getelementptr inbounds %struct.ngx_http_request_s, ptr %39, i32 0, i32 48, !dbg !3514
  %bf.load49 = load i128, ptr %filter_need_temporary, align 8, !dbg !3515
  %bf.clear50 = and i128 %bf.load49, -39614081257132168796771975169, !dbg !3515
  %bf.set51 = or i128 %bf.clear50, 39614081257132168796771975168, !dbg !3515
  store i128 %bf.set51, ptr %filter_need_temporary, align 8, !dbg !3515
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end48
  %40 = load ptr, ptr @ngx_http_next_header_filter, align 8, !dbg !3516, !tbaa !2077
  %41 = load ptr, ptr %r.addr, align 8, !dbg !3517, !tbaa !2077
  %call53 = call i64 %40(ptr noundef %41), !dbg !3516
  store i64 %call53, ptr %retval, align 8, !dbg !3518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3518

cleanup:                                          ; preds = %if.end52, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !3519
  %42 = load i64, ptr %retval, align 8, !dbg !3519
  ret i64 %42, !dbg !3519
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_get_charset(ptr noundef %r, ptr noundef %name) #0 !dbg !3520 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %charset = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3522, metadata !DIExpression()), !dbg !3528
  store ptr %name, ptr %name.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !3530
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3524, metadata !DIExpression()), !dbg !3531
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !3530
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !3525, metadata !DIExpression()), !dbg !3532
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !3533
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !3526, metadata !DIExpression()), !dbg !3534
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !3535
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !3527, metadata !DIExpression()), !dbg !3536
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3537, !tbaa !2077
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 3, !dbg !3537
  %1 = load ptr, ptr %main_conf, align 8, !dbg !3537, !tbaa !2711
  %2 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !3537, !tbaa !2104
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !3537
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !3537, !tbaa !2077
  store ptr %3, ptr %mcf, align 8, !dbg !3538, !tbaa !2077
  %4 = load ptr, ptr %mcf, align 8, !dbg !3539, !tbaa !2077
  %charsets = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %4, i32 0, i32 0, !dbg !3540
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %charsets, i32 0, i32 0, !dbg !3541
  %5 = load ptr, ptr %elts, align 8, !dbg !3541, !tbaa !2122
  store ptr %5, ptr %charset, align 8, !dbg !3542, !tbaa !2077
  %6 = load ptr, ptr %mcf, align 8, !dbg !3543, !tbaa !2077
  %charsets1 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %6, i32 0, i32 0, !dbg !3544
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %charsets1, i32 0, i32 1, !dbg !3545
  %7 = load i64, ptr %nelts, align 8, !dbg !3545, !tbaa !2241
  store i64 %7, ptr %n, align 8, !dbg !3546, !tbaa !2125
  store i64 0, ptr %i, align 8, !dbg !3547, !tbaa !2125
  br label %for.cond, !dbg !3549

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, ptr %i, align 8, !dbg !3550, !tbaa !2125
  %9 = load i64, ptr %n, align 8, !dbg !3552, !tbaa !2125
  %cmp = icmp ult i64 %8, %9, !dbg !3553
  br i1 %cmp, label %for.body, label %for.end, !dbg !3554

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %charset, align 8, !dbg !3555, !tbaa !2077
  %11 = load i64, ptr %i, align 8, !dbg !3558, !tbaa !2125
  %arrayidx2 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %10, i64 %11, !dbg !3555
  %name3 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx2, i32 0, i32 1, !dbg !3559
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %name3, i32 0, i32 0, !dbg !3560
  %12 = load i64, ptr %len, align 8, !dbg !3560, !tbaa !3561
  %13 = load ptr, ptr %name.addr, align 8, !dbg !3562, !tbaa !2077
  %len4 = getelementptr inbounds %struct.ngx_str_t, ptr %13, i32 0, i32 0, !dbg !3563
  %14 = load i64, ptr %len4, align 8, !dbg !3563, !tbaa !2660
  %cmp5 = icmp ne i64 %12, %14, !dbg !3564
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3565

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3566

if.end:                                           ; preds = %for.body
  %15 = load ptr, ptr %charset, align 8, !dbg !3568, !tbaa !2077
  %16 = load i64, ptr %i, align 8, !dbg !3570, !tbaa !2125
  %arrayidx6 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %15, i64 %16, !dbg !3568
  %name7 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx6, i32 0, i32 1, !dbg !3571
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name7, i32 0, i32 1, !dbg !3572
  %17 = load ptr, ptr %data, align 8, !dbg !3572, !tbaa !3573
  %18 = load ptr, ptr %name.addr, align 8, !dbg !3574, !tbaa !2077
  %data8 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i32 0, i32 1, !dbg !3575
  %19 = load ptr, ptr %data8, align 8, !dbg !3575, !tbaa !2657
  %20 = load ptr, ptr %name.addr, align 8, !dbg !3576, !tbaa !2077
  %len9 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i32 0, i32 0, !dbg !3577
  %21 = load i64, ptr %len9, align 8, !dbg !3577, !tbaa !2660
  %call = call i64 @ngx_strncasecmp(ptr noundef %17, ptr noundef %19, i64 noundef %21), !dbg !3578
  %cmp10 = icmp eq i64 %call, 0, !dbg !3579
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3580

if.then11:                                        ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !dbg !3581, !tbaa !2125
  store i64 %22, ptr %retval, align 8, !dbg !3583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3583

if.end12:                                         ; preds = %if.end
  br label %for.inc, !dbg !3584

for.inc:                                          ; preds = %if.end12, %if.then
  %23 = load i64, ptr %i, align 8, !dbg !3585, !tbaa !2125
  %inc = add i64 %23, 1, !dbg !3585
  store i64 %inc, ptr %i, align 8, !dbg !3585, !tbaa !2125
  br label %for.cond, !dbg !3586, !llvm.loop !3587

for.end:                                          ; preds = %for.cond
  store i64 -3, ptr %retval, align 8, !dbg !3589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3589

cleanup:                                          ; preds = %for.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !3590
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !3590
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !3590
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !3590
  %24 = load i64, ptr %retval, align 8, !dbg !3590
  ret i64 %24, !dbg !3590
}

declare !dbg !3591 ptr @ngx_http_test_content_type(ptr noundef, ptr noundef) #2

declare !dbg !3595 ptr @ngx_http_get_indexed_variable(ptr noundef, i64 noundef) #2

declare !dbg !3598 ptr @ngx_alloc_chain_link(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_recode_to_utf8(ptr noundef %pool, ptr noundef %buf, ptr noundef %ctx) #0 !dbg !3601 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %size = alloca i64, align 8
  %p = alloca ptr, align 8
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %table = alloca ptr, align 8
  %b = alloca ptr, align 8
  %out = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !3605, metadata !DIExpression()), !dbg !3619
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3606, metadata !DIExpression()), !dbg !3620
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3607, metadata !DIExpression()), !dbg !3621
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !3622
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3608, metadata !DIExpression()), !dbg !3623
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !3622
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3609, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !3625
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3610, metadata !DIExpression()), !dbg !3626
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !3625
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !3611, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #7, !dbg !3625
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !3612, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #7, !dbg !3625
  tail call void @llvm.dbg.declare(metadata ptr %table, metadata !3613, metadata !DIExpression()), !dbg !3629
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !3630
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3614, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #7, !dbg !3632
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !3615, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #7, !dbg !3632
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3616, metadata !DIExpression()), !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #7, !dbg !3632
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !3617, metadata !DIExpression()), !dbg !3635
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3636, !tbaa !2077
  %table1 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %0, i32 0, i32 0, !dbg !3637
  %1 = load ptr, ptr %table1, align 8, !dbg !3637, !tbaa !2807
  store ptr %1, ptr %table, align 8, !dbg !3638, !tbaa !2077
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3639, !tbaa !2077
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %2, i32 0, i32 0, !dbg !3641
  %3 = load ptr, ptr %pos, align 8, !dbg !3641, !tbaa !2847
  store ptr %3, ptr %src, align 8, !dbg !3642, !tbaa !2077
  br label %for.cond, !dbg !3643

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %src, align 8, !dbg !3644, !tbaa !2077
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3646, !tbaa !2077
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %5, i32 0, i32 1, !dbg !3647
  %6 = load ptr, ptr %last, align 8, !dbg !3647, !tbaa !2845
  %cmp = icmp ult ptr %4, %6, !dbg !3648
  br i1 %cmp, label %for.body, label %for.end, !dbg !3649

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %table, align 8, !dbg !3650, !tbaa !2077
  %8 = load ptr, ptr %src, align 8, !dbg !3653, !tbaa !2077
  %9 = load i8, ptr %8, align 1, !dbg !3654, !tbaa !3655
  %conv = zext i8 %9 to i32, !dbg !3654
  %mul = mul nsw i32 %conv, 4, !dbg !3656
  %idxprom = sext i32 %mul to i64, !dbg !3650
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom, !dbg !3650
  %10 = load i8, ptr %arrayidx, align 1, !dbg !3650, !tbaa !3655
  %conv2 = zext i8 %10 to i32, !dbg !3650
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !3657
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3658

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3659

if.end:                                           ; preds = %for.body
  br label %recode, !dbg !3661

for.inc:                                          ; preds = %if.then
  %11 = load ptr, ptr %src, align 8, !dbg !3662, !tbaa !2077
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1, !dbg !3662
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !3662, !tbaa !2077
  br label %for.cond, !dbg !3663, !llvm.loop !3664

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !3666, !tbaa !2077
  %call = call ptr @ngx_alloc_chain_link(ptr noundef %12), !dbg !3667
  store ptr %call, ptr %out, align 8, !dbg !3668, !tbaa !2077
  %13 = load ptr, ptr %out, align 8, !dbg !3669, !tbaa !2077
  %cmp5 = icmp eq ptr %13, null, !dbg !3671
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !3672

if.then7:                                         ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !3673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3673

if.end8:                                          ; preds = %for.end
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !3675, !tbaa !2077
  %15 = load ptr, ptr %out, align 8, !dbg !3676, !tbaa !2077
  %buf9 = getelementptr inbounds %struct.ngx_chain_s, ptr %15, i32 0, i32 0, !dbg !3677
  store ptr %14, ptr %buf9, align 8, !dbg !3678, !tbaa !2840
  %16 = load ptr, ptr %out, align 8, !dbg !3679, !tbaa !2077
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 1, !dbg !3680
  store ptr null, ptr %next, align 8, !dbg !3681, !tbaa !2875
  %17 = load ptr, ptr %out, align 8, !dbg !3682, !tbaa !2077
  store ptr %17, ptr %retval, align 8, !dbg !3683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3683

recode:                                           ; preds = %if.end
  tail call void @llvm.dbg.label(metadata !3618), !dbg !3684
  %18 = load ptr, ptr %src, align 8, !dbg !3685, !tbaa !2077
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !3686, !tbaa !2077
  %pos10 = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 0, !dbg !3687
  %20 = load ptr, ptr %pos10, align 8, !dbg !3687, !tbaa !2847
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64, !dbg !3688
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64, !dbg !3688
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3688
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !3689, !tbaa !2125
  %21 = load i64, ptr %len, align 8, !dbg !3690, !tbaa !2125
  %cmp11 = icmp ugt i64 %21, 512, !dbg !3692
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !3693

if.then13:                                        ; preds = %recode
  %22 = load ptr, ptr %pool.addr, align 8, !dbg !3694, !tbaa !2077
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !3696, !tbaa !2077
  %call14 = call ptr @ngx_http_charset_get_buf(ptr noundef %22, ptr noundef %23), !dbg !3697
  store ptr %call14, ptr %out, align 8, !dbg !3698, !tbaa !2077
  %24 = load ptr, ptr %out, align 8, !dbg !3699, !tbaa !2077
  %cmp15 = icmp eq ptr %24, null, !dbg !3701
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3702

if.then17:                                        ; preds = %if.then13
  store ptr null, ptr %retval, align 8, !dbg !3703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3703

if.end18:                                         ; preds = %if.then13
  %25 = load ptr, ptr %out, align 8, !dbg !3705, !tbaa !2077
  %buf19 = getelementptr inbounds %struct.ngx_chain_s, ptr %25, i32 0, i32 0, !dbg !3706
  %26 = load ptr, ptr %buf19, align 8, !dbg !3706, !tbaa !2840
  store ptr %26, ptr %b, align 8, !dbg !3707, !tbaa !2077
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !3708, !tbaa !2077
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %27, i32 0, i32 9, !dbg !3709
  %bf.load = load i16, ptr %temporary, align 8, !dbg !3709
  %bf.clear = and i16 %bf.load, 1, !dbg !3709
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3709
  %28 = load ptr, ptr %b, align 8, !dbg !3710, !tbaa !2077
  %temporary20 = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 9, !dbg !3711
  %29 = trunc i32 %bf.cast to i16, !dbg !3712
  %bf.load21 = load i16, ptr %temporary20, align 8, !dbg !3712
  %bf.value = and i16 %29, 1, !dbg !3712
  %bf.clear22 = and i16 %bf.load21, -2, !dbg !3712
  %bf.set = or i16 %bf.clear22, %bf.value, !dbg !3712
  store i16 %bf.set, ptr %temporary20, align 8, !dbg !3712
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !3712
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !3713, !tbaa !2077
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %30, i32 0, i32 9, !dbg !3714
  %bf.load23 = load i16, ptr %memory, align 8, !dbg !3714
  %bf.lshr = lshr i16 %bf.load23, 1, !dbg !3714
  %bf.clear24 = and i16 %bf.lshr, 1, !dbg !3714
  %bf.cast25 = zext i16 %bf.clear24 to i32, !dbg !3714
  %31 = load ptr, ptr %b, align 8, !dbg !3715, !tbaa !2077
  %memory26 = getelementptr inbounds %struct.ngx_buf_s, ptr %31, i32 0, i32 9, !dbg !3716
  %32 = trunc i32 %bf.cast25 to i16, !dbg !3717
  %bf.load27 = load i16, ptr %memory26, align 8, !dbg !3717
  %bf.value28 = and i16 %32, 1, !dbg !3717
  %bf.shl = shl i16 %bf.value28, 1, !dbg !3717
  %bf.clear29 = and i16 %bf.load27, -3, !dbg !3717
  %bf.set30 = or i16 %bf.clear29, %bf.shl, !dbg !3717
  store i16 %bf.set30, ptr %memory26, align 8, !dbg !3717
  %bf.result.cast31 = zext i16 %bf.value28 to i32, !dbg !3717
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !3718, !tbaa !2077
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %33, i32 0, i32 9, !dbg !3719
  %bf.load32 = load i16, ptr %mmap, align 8, !dbg !3719
  %bf.lshr33 = lshr i16 %bf.load32, 2, !dbg !3719
  %bf.clear34 = and i16 %bf.lshr33, 1, !dbg !3719
  %bf.cast35 = zext i16 %bf.clear34 to i32, !dbg !3719
  %34 = load ptr, ptr %b, align 8, !dbg !3720, !tbaa !2077
  %mmap36 = getelementptr inbounds %struct.ngx_buf_s, ptr %34, i32 0, i32 9, !dbg !3721
  %35 = trunc i32 %bf.cast35 to i16, !dbg !3722
  %bf.load37 = load i16, ptr %mmap36, align 8, !dbg !3722
  %bf.value38 = and i16 %35, 1, !dbg !3722
  %bf.shl39 = shl i16 %bf.value38, 2, !dbg !3722
  %bf.clear40 = and i16 %bf.load37, -5, !dbg !3722
  %bf.set41 = or i16 %bf.clear40, %bf.shl39, !dbg !3722
  store i16 %bf.set41, ptr %mmap36, align 8, !dbg !3722
  %bf.result.cast42 = zext i16 %bf.value38 to i32, !dbg !3722
  %36 = load ptr, ptr %buf.addr, align 8, !dbg !3723, !tbaa !2077
  %flush = getelementptr inbounds %struct.ngx_buf_s, ptr %36, i32 0, i32 9, !dbg !3724
  %bf.load43 = load i16, ptr %flush, align 8, !dbg !3724
  %bf.lshr44 = lshr i16 %bf.load43, 5, !dbg !3724
  %bf.clear45 = and i16 %bf.lshr44, 1, !dbg !3724
  %bf.cast46 = zext i16 %bf.clear45 to i32, !dbg !3724
  %37 = load ptr, ptr %b, align 8, !dbg !3725, !tbaa !2077
  %flush47 = getelementptr inbounds %struct.ngx_buf_s, ptr %37, i32 0, i32 9, !dbg !3726
  %38 = trunc i32 %bf.cast46 to i16, !dbg !3727
  %bf.load48 = load i16, ptr %flush47, align 8, !dbg !3727
  %bf.value49 = and i16 %38, 1, !dbg !3727
  %bf.shl50 = shl i16 %bf.value49, 5, !dbg !3727
  %bf.clear51 = and i16 %bf.load48, -33, !dbg !3727
  %bf.set52 = or i16 %bf.clear51, %bf.shl50, !dbg !3727
  store i16 %bf.set52, ptr %flush47, align 8, !dbg !3727
  %bf.result.cast53 = zext i16 %bf.value49 to i32, !dbg !3727
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !3728, !tbaa !2077
  %pos54 = getelementptr inbounds %struct.ngx_buf_s, ptr %39, i32 0, i32 0, !dbg !3729
  %40 = load ptr, ptr %pos54, align 8, !dbg !3729, !tbaa !2847
  %41 = load ptr, ptr %b, align 8, !dbg !3730, !tbaa !2077
  %pos55 = getelementptr inbounds %struct.ngx_buf_s, ptr %41, i32 0, i32 0, !dbg !3731
  store ptr %40, ptr %pos55, align 8, !dbg !3732, !tbaa !2847
  %42 = load ptr, ptr %src, align 8, !dbg !3733, !tbaa !2077
  %43 = load ptr, ptr %b, align 8, !dbg !3734, !tbaa !2077
  %last56 = getelementptr inbounds %struct.ngx_buf_s, ptr %43, i32 0, i32 1, !dbg !3735
  store ptr %42, ptr %last56, align 8, !dbg !3736, !tbaa !2845
  %44 = load ptr, ptr %b, align 8, !dbg !3737, !tbaa !2077
  %45 = load ptr, ptr %out, align 8, !dbg !3738, !tbaa !2077
  %buf57 = getelementptr inbounds %struct.ngx_chain_s, ptr %45, i32 0, i32 0, !dbg !3739
  store ptr %44, ptr %buf57, align 8, !dbg !3740, !tbaa !2840
  %46 = load ptr, ptr %out, align 8, !dbg !3741, !tbaa !2077
  %next58 = getelementptr inbounds %struct.ngx_chain_s, ptr %46, i32 0, i32 1, !dbg !3742
  store ptr null, ptr %next58, align 8, !dbg !3743, !tbaa !2875
  %47 = load ptr, ptr %buf.addr, align 8, !dbg !3744, !tbaa !2077
  %last59 = getelementptr inbounds %struct.ngx_buf_s, ptr %47, i32 0, i32 1, !dbg !3745
  %48 = load ptr, ptr %last59, align 8, !dbg !3745, !tbaa !2845
  %49 = load ptr, ptr %src, align 8, !dbg !3746, !tbaa !2077
  %sub.ptr.lhs.cast60 = ptrtoint ptr %48 to i64, !dbg !3747
  %sub.ptr.rhs.cast61 = ptrtoint ptr %49 to i64, !dbg !3747
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61, !dbg !3747
  store i64 %sub.ptr.sub62, ptr %size, align 8, !dbg !3748, !tbaa !2125
  %50 = load i64, ptr %size, align 8, !dbg !3749, !tbaa !2125
  %div = udiv i64 %50, 2, !dbg !3750
  %51 = load i64, ptr %size, align 8, !dbg !3751, !tbaa !2125
  %div63 = udiv i64 %51, 2, !dbg !3752
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !3753, !tbaa !2077
  %length = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %52, i32 0, i32 8, !dbg !3754
  %bf.load64 = load i32, ptr %length, align 4, !dbg !3754
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !3754
  %conv66 = zext i32 %bf.clear65 to i64, !dbg !3753
  %mul67 = mul i64 %div63, %conv66, !dbg !3755
  %add = add i64 %div, %mul67, !dbg !3756
  store i64 %add, ptr %size, align 8, !dbg !3757, !tbaa !2125
  br label %if.end82, !dbg !3758

if.else:                                          ; preds = %recode
  store ptr null, ptr %out, align 8, !dbg !3759, !tbaa !2077
  %53 = load ptr, ptr %buf.addr, align 8, !dbg !3761, !tbaa !2077
  %last68 = getelementptr inbounds %struct.ngx_buf_s, ptr %53, i32 0, i32 1, !dbg !3762
  %54 = load ptr, ptr %last68, align 8, !dbg !3762, !tbaa !2845
  %55 = load ptr, ptr %src, align 8, !dbg !3763, !tbaa !2077
  %sub.ptr.lhs.cast69 = ptrtoint ptr %54 to i64, !dbg !3764
  %sub.ptr.rhs.cast70 = ptrtoint ptr %55 to i64, !dbg !3764
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70, !dbg !3764
  store i64 %sub.ptr.sub71, ptr %size, align 8, !dbg !3765, !tbaa !2125
  %56 = load i64, ptr %len, align 8, !dbg !3766, !tbaa !2125
  %57 = load i64, ptr %size, align 8, !dbg !3767, !tbaa !2125
  %div72 = udiv i64 %57, 2, !dbg !3768
  %add73 = add i64 %56, %div72, !dbg !3769
  %58 = load i64, ptr %size, align 8, !dbg !3770, !tbaa !2125
  %div74 = udiv i64 %58, 2, !dbg !3771
  %59 = load ptr, ptr %ctx.addr, align 8, !dbg !3772, !tbaa !2077
  %length75 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %59, i32 0, i32 8, !dbg !3773
  %bf.load76 = load i32, ptr %length75, align 4, !dbg !3773
  %bf.clear77 = and i32 %bf.load76, 65535, !dbg !3773
  %conv78 = zext i32 %bf.clear77 to i64, !dbg !3772
  %mul79 = mul i64 %div74, %conv78, !dbg !3774
  %add80 = add i64 %add73, %mul79, !dbg !3775
  store i64 %add80, ptr %size, align 8, !dbg !3776, !tbaa !2125
  %60 = load ptr, ptr %buf.addr, align 8, !dbg !3777, !tbaa !2077
  %pos81 = getelementptr inbounds %struct.ngx_buf_s, ptr %60, i32 0, i32 0, !dbg !3778
  %61 = load ptr, ptr %pos81, align 8, !dbg !3778, !tbaa !2847
  store ptr %61, ptr %src, align 8, !dbg !3779, !tbaa !2077
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.end18
  %62 = load ptr, ptr %pool.addr, align 8, !dbg !3780, !tbaa !2077
  %63 = load ptr, ptr %ctx.addr, align 8, !dbg !3781, !tbaa !2077
  %64 = load i64, ptr %size, align 8, !dbg !3782, !tbaa !2125
  %call83 = call ptr @ngx_http_charset_get_buffer(ptr noundef %62, ptr noundef %63, i64 noundef %64), !dbg !3783
  store ptr %call83, ptr %cl, align 8, !dbg !3784, !tbaa !2077
  %65 = load ptr, ptr %cl, align 8, !dbg !3785, !tbaa !2077
  %cmp84 = icmp eq ptr %65, null, !dbg !3787
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !3788

if.then86:                                        ; preds = %if.end82
  store ptr null, ptr %retval, align 8, !dbg !3789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3789

if.end87:                                         ; preds = %if.end82
  %66 = load ptr, ptr %out, align 8, !dbg !3791, !tbaa !2077
  %tobool = icmp ne ptr %66, null, !dbg !3791
  br i1 %tobool, label %if.then88, label %if.else90, !dbg !3793

if.then88:                                        ; preds = %if.end87
  %67 = load ptr, ptr %cl, align 8, !dbg !3794, !tbaa !2077
  %68 = load ptr, ptr %out, align 8, !dbg !3796, !tbaa !2077
  %next89 = getelementptr inbounds %struct.ngx_chain_s, ptr %68, i32 0, i32 1, !dbg !3797
  store ptr %67, ptr %next89, align 8, !dbg !3798, !tbaa !2875
  br label %if.end91, !dbg !3799

if.else90:                                        ; preds = %if.end87
  %69 = load ptr, ptr %cl, align 8, !dbg !3800, !tbaa !2077
  store ptr %69, ptr %out, align 8, !dbg !3802, !tbaa !2077
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then88
  %70 = load ptr, ptr %cl, align 8, !dbg !3803, !tbaa !2077
  %next92 = getelementptr inbounds %struct.ngx_chain_s, ptr %70, i32 0, i32 1, !dbg !3804
  store ptr %next92, ptr %ll, align 8, !dbg !3805, !tbaa !2077
  %71 = load ptr, ptr %cl, align 8, !dbg !3806, !tbaa !2077
  %buf93 = getelementptr inbounds %struct.ngx_chain_s, ptr %71, i32 0, i32 0, !dbg !3807
  %72 = load ptr, ptr %buf93, align 8, !dbg !3807, !tbaa !2840
  store ptr %72, ptr %b, align 8, !dbg !3808, !tbaa !2077
  %73 = load ptr, ptr %b, align 8, !dbg !3809, !tbaa !2077
  %pos94 = getelementptr inbounds %struct.ngx_buf_s, ptr %73, i32 0, i32 0, !dbg !3810
  %74 = load ptr, ptr %pos94, align 8, !dbg !3810, !tbaa !2847
  store ptr %74, ptr %dst, align 8, !dbg !3811, !tbaa !2077
  br label %while.cond, !dbg !3812

while.cond:                                       ; preds = %while.end, %if.end91
  %75 = load ptr, ptr %src, align 8, !dbg !3813, !tbaa !2077
  %76 = load ptr, ptr %buf.addr, align 8, !dbg !3814, !tbaa !2077
  %last95 = getelementptr inbounds %struct.ngx_buf_s, ptr %76, i32 0, i32 1, !dbg !3815
  %77 = load ptr, ptr %last95, align 8, !dbg !3815, !tbaa !2845
  %cmp96 = icmp ult ptr %75, %77, !dbg !3816
  br i1 %cmp96, label %while.body, label %while.end139, !dbg !3812

while.body:                                       ; preds = %while.cond
  %78 = load ptr, ptr %table, align 8, !dbg !3817, !tbaa !2077
  %79 = load ptr, ptr %src, align 8, !dbg !3819, !tbaa !2077
  %incdec.ptr98 = getelementptr inbounds i8, ptr %79, i32 1, !dbg !3819
  store ptr %incdec.ptr98, ptr %src, align 8, !dbg !3819, !tbaa !2077
  %80 = load i8, ptr %79, align 1, !dbg !3820, !tbaa !3655
  %conv99 = zext i8 %80 to i32, !dbg !3820
  %mul100 = mul nsw i32 %conv99, 4, !dbg !3821
  %idxprom101 = sext i32 %mul100 to i64, !dbg !3817
  %arrayidx102 = getelementptr inbounds i8, ptr %78, i64 %idxprom101, !dbg !3817
  store ptr %arrayidx102, ptr %p, align 8, !dbg !3822, !tbaa !2077
  %81 = load ptr, ptr %p, align 8, !dbg !3823, !tbaa !2077
  %incdec.ptr103 = getelementptr inbounds i8, ptr %81, i32 1, !dbg !3823
  store ptr %incdec.ptr103, ptr %p, align 8, !dbg !3823, !tbaa !2077
  %82 = load i8, ptr %81, align 1, !dbg !3824, !tbaa !3655
  %conv104 = zext i8 %82 to i64, !dbg !3824
  store i64 %conv104, ptr %len, align 8, !dbg !3825, !tbaa !2125
  %83 = load ptr, ptr %b, align 8, !dbg !3826, !tbaa !2077
  %end = getelementptr inbounds %struct.ngx_buf_s, ptr %83, i32 0, i32 5, !dbg !3828
  %84 = load ptr, ptr %end, align 8, !dbg !3828, !tbaa !3829
  %85 = load ptr, ptr %dst, align 8, !dbg !3830, !tbaa !2077
  %sub.ptr.lhs.cast105 = ptrtoint ptr %84 to i64, !dbg !3831
  %sub.ptr.rhs.cast106 = ptrtoint ptr %85 to i64, !dbg !3831
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106, !dbg !3831
  %86 = load i64, ptr %len, align 8, !dbg !3832, !tbaa !2125
  %cmp108 = icmp ult i64 %sub.ptr.sub107, %86, !dbg !3833
  br i1 %cmp108, label %if.then110, label %if.end133, !dbg !3834

if.then110:                                       ; preds = %while.body
  %87 = load ptr, ptr %dst, align 8, !dbg !3835, !tbaa !2077
  %88 = load ptr, ptr %b, align 8, !dbg !3837, !tbaa !2077
  %last111 = getelementptr inbounds %struct.ngx_buf_s, ptr %88, i32 0, i32 1, !dbg !3838
  store ptr %87, ptr %last111, align 8, !dbg !3839, !tbaa !2845
  %89 = load ptr, ptr %buf.addr, align 8, !dbg !3840, !tbaa !2077
  %last112 = getelementptr inbounds %struct.ngx_buf_s, ptr %89, i32 0, i32 1, !dbg !3841
  %90 = load ptr, ptr %last112, align 8, !dbg !3841, !tbaa !2845
  %91 = load ptr, ptr %src, align 8, !dbg !3842, !tbaa !2077
  %sub.ptr.lhs.cast113 = ptrtoint ptr %90 to i64, !dbg !3843
  %sub.ptr.rhs.cast114 = ptrtoint ptr %91 to i64, !dbg !3843
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114, !dbg !3843
  store i64 %sub.ptr.sub115, ptr %size, align 8, !dbg !3844, !tbaa !2125
  %92 = load i64, ptr %len, align 8, !dbg !3845, !tbaa !2125
  %93 = load i64, ptr %size, align 8, !dbg !3846, !tbaa !2125
  %div116 = udiv i64 %93, 2, !dbg !3847
  %add117 = add i64 %92, %div116, !dbg !3848
  %94 = load i64, ptr %size, align 8, !dbg !3849, !tbaa !2125
  %div118 = udiv i64 %94, 2, !dbg !3850
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !3851, !tbaa !2077
  %length119 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %95, i32 0, i32 8, !dbg !3852
  %bf.load120 = load i32, ptr %length119, align 4, !dbg !3852
  %bf.clear121 = and i32 %bf.load120, 65535, !dbg !3852
  %conv122 = zext i32 %bf.clear121 to i64, !dbg !3851
  %mul123 = mul i64 %div118, %conv122, !dbg !3853
  %add124 = add i64 %add117, %mul123, !dbg !3854
  store i64 %add124, ptr %size, align 8, !dbg !3855, !tbaa !2125
  %96 = load ptr, ptr %pool.addr, align 8, !dbg !3856, !tbaa !2077
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !3857, !tbaa !2077
  %98 = load i64, ptr %size, align 8, !dbg !3858, !tbaa !2125
  %call125 = call ptr @ngx_http_charset_get_buffer(ptr noundef %96, ptr noundef %97, i64 noundef %98), !dbg !3859
  store ptr %call125, ptr %cl, align 8, !dbg !3860, !tbaa !2077
  %99 = load ptr, ptr %cl, align 8, !dbg !3861, !tbaa !2077
  %cmp126 = icmp eq ptr %99, null, !dbg !3863
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !3864

if.then128:                                       ; preds = %if.then110
  store ptr null, ptr %retval, align 8, !dbg !3865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3865

if.end129:                                        ; preds = %if.then110
  %100 = load ptr, ptr %cl, align 8, !dbg !3867, !tbaa !2077
  %101 = load ptr, ptr %ll, align 8, !dbg !3868, !tbaa !2077
  store ptr %100, ptr %101, align 8, !dbg !3869, !tbaa !2077
  %102 = load ptr, ptr %cl, align 8, !dbg !3870, !tbaa !2077
  %next130 = getelementptr inbounds %struct.ngx_chain_s, ptr %102, i32 0, i32 1, !dbg !3871
  store ptr %next130, ptr %ll, align 8, !dbg !3872, !tbaa !2077
  %103 = load ptr, ptr %cl, align 8, !dbg !3873, !tbaa !2077
  %buf131 = getelementptr inbounds %struct.ngx_chain_s, ptr %103, i32 0, i32 0, !dbg !3874
  %104 = load ptr, ptr %buf131, align 8, !dbg !3874, !tbaa !2840
  store ptr %104, ptr %b, align 8, !dbg !3875, !tbaa !2077
  %105 = load ptr, ptr %b, align 8, !dbg !3876, !tbaa !2077
  %pos132 = getelementptr inbounds %struct.ngx_buf_s, ptr %105, i32 0, i32 0, !dbg !3877
  %106 = load ptr, ptr %pos132, align 8, !dbg !3877, !tbaa !2847
  store ptr %106, ptr %dst, align 8, !dbg !3878, !tbaa !2077
  br label %if.end133, !dbg !3879

if.end133:                                        ; preds = %if.end129, %while.body
  br label %while.cond134, !dbg !3880

while.cond134:                                    ; preds = %while.body136, %if.end133
  %107 = load i64, ptr %len, align 8, !dbg !3881, !tbaa !2125
  %tobool135 = icmp ne i64 %107, 0, !dbg !3880
  br i1 %tobool135, label %while.body136, label %while.end, !dbg !3880

while.body136:                                    ; preds = %while.cond134
  %108 = load ptr, ptr %p, align 8, !dbg !3882, !tbaa !2077
  %incdec.ptr137 = getelementptr inbounds i8, ptr %108, i32 1, !dbg !3882
  store ptr %incdec.ptr137, ptr %p, align 8, !dbg !3882, !tbaa !2077
  %109 = load i8, ptr %108, align 1, !dbg !3884, !tbaa !3655
  %110 = load ptr, ptr %dst, align 8, !dbg !3885, !tbaa !2077
  %incdec.ptr138 = getelementptr inbounds i8, ptr %110, i32 1, !dbg !3885
  store ptr %incdec.ptr138, ptr %dst, align 8, !dbg !3885, !tbaa !2077
  store i8 %109, ptr %110, align 1, !dbg !3886, !tbaa !3655
  %111 = load i64, ptr %len, align 8, !dbg !3887, !tbaa !2125
  %dec = add i64 %111, -1, !dbg !3887
  store i64 %dec, ptr %len, align 8, !dbg !3887, !tbaa !2125
  br label %while.cond134, !dbg !3880, !llvm.loop !3888

while.end:                                        ; preds = %while.cond134
  br label %while.cond, !dbg !3812, !llvm.loop !3890

while.end139:                                     ; preds = %while.cond
  %112 = load ptr, ptr %dst, align 8, !dbg !3892, !tbaa !2077
  %113 = load ptr, ptr %b, align 8, !dbg !3893, !tbaa !2077
  %last140 = getelementptr inbounds %struct.ngx_buf_s, ptr %113, i32 0, i32 1, !dbg !3894
  store ptr %112, ptr %last140, align 8, !dbg !3895, !tbaa !2845
  %114 = load ptr, ptr %buf.addr, align 8, !dbg !3896, !tbaa !2077
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %114, i32 0, i32 9, !dbg !3897
  %bf.load141 = load i16, ptr %last_buf, align 8, !dbg !3897
  %bf.lshr142 = lshr i16 %bf.load141, 7, !dbg !3897
  %bf.clear143 = and i16 %bf.lshr142, 1, !dbg !3897
  %bf.cast144 = zext i16 %bf.clear143 to i32, !dbg !3897
  %115 = load ptr, ptr %b, align 8, !dbg !3898, !tbaa !2077
  %last_buf145 = getelementptr inbounds %struct.ngx_buf_s, ptr %115, i32 0, i32 9, !dbg !3899
  %116 = trunc i32 %bf.cast144 to i16, !dbg !3900
  %bf.load146 = load i16, ptr %last_buf145, align 8, !dbg !3900
  %bf.value147 = and i16 %116, 1, !dbg !3900
  %bf.shl148 = shl i16 %bf.value147, 7, !dbg !3900
  %bf.clear149 = and i16 %bf.load146, -129, !dbg !3900
  %bf.set150 = or i16 %bf.clear149, %bf.shl148, !dbg !3900
  store i16 %bf.set150, ptr %last_buf145, align 8, !dbg !3900
  %bf.result.cast151 = zext i16 %bf.value147 to i32, !dbg !3900
  %117 = load ptr, ptr %buf.addr, align 8, !dbg !3901, !tbaa !2077
  %last_in_chain = getelementptr inbounds %struct.ngx_buf_s, ptr %117, i32 0, i32 9, !dbg !3902
  %bf.load152 = load i16, ptr %last_in_chain, align 8, !dbg !3902
  %bf.lshr153 = lshr i16 %bf.load152, 8, !dbg !3902
  %bf.clear154 = and i16 %bf.lshr153, 1, !dbg !3902
  %bf.cast155 = zext i16 %bf.clear154 to i32, !dbg !3902
  %118 = load ptr, ptr %b, align 8, !dbg !3903, !tbaa !2077
  %last_in_chain156 = getelementptr inbounds %struct.ngx_buf_s, ptr %118, i32 0, i32 9, !dbg !3904
  %119 = trunc i32 %bf.cast155 to i16, !dbg !3905
  %bf.load157 = load i16, ptr %last_in_chain156, align 8, !dbg !3905
  %bf.value158 = and i16 %119, 1, !dbg !3905
  %bf.shl159 = shl i16 %bf.value158, 8, !dbg !3905
  %bf.clear160 = and i16 %bf.load157, -257, !dbg !3905
  %bf.set161 = or i16 %bf.clear160, %bf.shl159, !dbg !3905
  store i16 %bf.set161, ptr %last_in_chain156, align 8, !dbg !3905
  %bf.result.cast162 = zext i16 %bf.value158 to i32, !dbg !3905
  %120 = load ptr, ptr %buf.addr, align 8, !dbg !3906, !tbaa !2077
  %flush163 = getelementptr inbounds %struct.ngx_buf_s, ptr %120, i32 0, i32 9, !dbg !3907
  %bf.load164 = load i16, ptr %flush163, align 8, !dbg !3907
  %bf.lshr165 = lshr i16 %bf.load164, 5, !dbg !3907
  %bf.clear166 = and i16 %bf.lshr165, 1, !dbg !3907
  %bf.cast167 = zext i16 %bf.clear166 to i32, !dbg !3907
  %121 = load ptr, ptr %b, align 8, !dbg !3908, !tbaa !2077
  %flush168 = getelementptr inbounds %struct.ngx_buf_s, ptr %121, i32 0, i32 9, !dbg !3909
  %122 = trunc i32 %bf.cast167 to i16, !dbg !3910
  %bf.load169 = load i16, ptr %flush168, align 8, !dbg !3910
  %bf.value170 = and i16 %122, 1, !dbg !3910
  %bf.shl171 = shl i16 %bf.value170, 5, !dbg !3910
  %bf.clear172 = and i16 %bf.load169, -33, !dbg !3910
  %bf.set173 = or i16 %bf.clear172, %bf.shl171, !dbg !3910
  store i16 %bf.set173, ptr %flush168, align 8, !dbg !3910
  %bf.result.cast174 = zext i16 %bf.value170 to i32, !dbg !3910
  %123 = load ptr, ptr %buf.addr, align 8, !dbg !3911, !tbaa !2077
  %124 = load ptr, ptr %b, align 8, !dbg !3912, !tbaa !2077
  %shadow = getelementptr inbounds %struct.ngx_buf_s, ptr %124, i32 0, i32 8, !dbg !3913
  store ptr %123, ptr %shadow, align 8, !dbg !3914, !tbaa !3002
  %125 = load ptr, ptr %out, align 8, !dbg !3915, !tbaa !2077
  store ptr %125, ptr %retval, align 8, !dbg !3916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3916

cleanup:                                          ; preds = %while.end139, %if.then128, %if.then86, %if.then17, %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !3917
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !3917
  %126 = load ptr, ptr %retval, align 8, !dbg !3917
  ret ptr %126, !dbg !3917
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_recode_from_utf8(ptr noundef %pool, ptr noundef %buf, ptr noundef %ctx) #0 !dbg !3918 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %size = alloca i64, align 8
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %saved = alloca ptr, align 8
  %table = alloca ptr, align 8
  %n = alloca i32, align 4
  %b = alloca ptr, align 8
  %i = alloca i64, align 8
  %out = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !3920, metadata !DIExpression()), !dbg !3938
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3921, metadata !DIExpression()), !dbg !3939
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3922, metadata !DIExpression()), !dbg !3940
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !3941
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3923, metadata !DIExpression()), !dbg !3942
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !3941
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3924, metadata !DIExpression()), !dbg !3943
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3925, metadata !DIExpression()), !dbg !3945
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3926, metadata !DIExpression()), !dbg !3946
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !3927, metadata !DIExpression()), !dbg !3947
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !3928, metadata !DIExpression()), !dbg !3948
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %saved, metadata !3929, metadata !DIExpression()), !dbg !3949
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #7, !dbg !3944
  tail call void @llvm.dbg.declare(metadata ptr %table, metadata !3930, metadata !DIExpression()), !dbg !3950
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !3951
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !3931, metadata !DIExpression()), !dbg !3952
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !3953
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3932, metadata !DIExpression()), !dbg !3954
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !3955
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3933, metadata !DIExpression()), !dbg !3956
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #7, !dbg !3957
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !3934, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #7, !dbg !3957
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !3935, metadata !DIExpression()), !dbg !3959
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #7, !dbg !3957
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !3936, metadata !DIExpression()), !dbg !3960
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3961, !tbaa !2077
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %0, i32 0, i32 0, !dbg !3962
  %1 = load ptr, ptr %pos, align 8, !dbg !3962, !tbaa !2847
  store ptr %1, ptr %src, align 8, !dbg !3963, !tbaa !2077
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !3964, !tbaa !2077
  %saved_len = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %2, i32 0, i32 6, !dbg !3966
  %3 = load i64, ptr %saved_len, align 8, !dbg !3966, !tbaa !3967
  %cmp = icmp eq i64 %3, 0, !dbg !3968
  br i1 %cmp, label %if.then, label %if.end91, !dbg !3969

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !3970

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %src, align 8, !dbg !3972, !tbaa !2077
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3975, !tbaa !2077
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %5, i32 0, i32 1, !dbg !3976
  %6 = load ptr, ptr %last, align 8, !dbg !3976, !tbaa !2845
  %cmp1 = icmp ult ptr %4, %6, !dbg !3977
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3978

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %src, align 8, !dbg !3979, !tbaa !2077
  %8 = load i8, ptr %7, align 1, !dbg !3982, !tbaa !3655
  %conv = zext i8 %8 to i32, !dbg !3982
  %cmp2 = icmp slt i32 %conv, 128, !dbg !3983
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !3984

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !3985

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %src, align 8, !dbg !3987, !tbaa !2077
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !3988, !tbaa !2077
  %pos5 = getelementptr inbounds %struct.ngx_buf_s, ptr %10, i32 0, i32 0, !dbg !3989
  %11 = load ptr, ptr %pos5, align 8, !dbg !3989, !tbaa !2847
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !3990
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !3990
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3990
  store i64 %sub.ptr.sub, ptr %len, align 8, !dbg !3991, !tbaa !2125
  %12 = load i64, ptr %len, align 8, !dbg !3992, !tbaa !2125
  %cmp6 = icmp ugt i64 %12, 512, !dbg !3994
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !3995

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %pool.addr, align 8, !dbg !3996, !tbaa !2077
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !3998, !tbaa !2077
  %call = call ptr @ngx_http_charset_get_buf(ptr noundef %13, ptr noundef %14), !dbg !3999
  store ptr %call, ptr %out, align 8, !dbg !4000, !tbaa !2077
  %15 = load ptr, ptr %out, align 8, !dbg !4001, !tbaa !2077
  %cmp9 = icmp eq ptr %15, null, !dbg !4003
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4004

if.then11:                                        ; preds = %if.then8
  store ptr null, ptr %retval, align 8, !dbg !4005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4005

if.end12:                                         ; preds = %if.then8
  %16 = load ptr, ptr %out, align 8, !dbg !4007, !tbaa !2077
  %buf13 = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 0, !dbg !4008
  %17 = load ptr, ptr %buf13, align 8, !dbg !4008, !tbaa !2840
  store ptr %17, ptr %b, align 8, !dbg !4009, !tbaa !2077
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !4010, !tbaa !2077
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %18, i32 0, i32 9, !dbg !4011
  %bf.load = load i16, ptr %temporary, align 8, !dbg !4011
  %bf.clear = and i16 %bf.load, 1, !dbg !4011
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4011
  %19 = load ptr, ptr %b, align 8, !dbg !4012, !tbaa !2077
  %temporary14 = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 9, !dbg !4013
  %20 = trunc i32 %bf.cast to i16, !dbg !4014
  %bf.load15 = load i16, ptr %temporary14, align 8, !dbg !4014
  %bf.value = and i16 %20, 1, !dbg !4014
  %bf.clear16 = and i16 %bf.load15, -2, !dbg !4014
  %bf.set = or i16 %bf.clear16, %bf.value, !dbg !4014
  store i16 %bf.set, ptr %temporary14, align 8, !dbg !4014
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !4014
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !4015, !tbaa !2077
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %21, i32 0, i32 9, !dbg !4016
  %bf.load17 = load i16, ptr %memory, align 8, !dbg !4016
  %bf.lshr = lshr i16 %bf.load17, 1, !dbg !4016
  %bf.clear18 = and i16 %bf.lshr, 1, !dbg !4016
  %bf.cast19 = zext i16 %bf.clear18 to i32, !dbg !4016
  %22 = load ptr, ptr %b, align 8, !dbg !4017, !tbaa !2077
  %memory20 = getelementptr inbounds %struct.ngx_buf_s, ptr %22, i32 0, i32 9, !dbg !4018
  %23 = trunc i32 %bf.cast19 to i16, !dbg !4019
  %bf.load21 = load i16, ptr %memory20, align 8, !dbg !4019
  %bf.value22 = and i16 %23, 1, !dbg !4019
  %bf.shl = shl i16 %bf.value22, 1, !dbg !4019
  %bf.clear23 = and i16 %bf.load21, -3, !dbg !4019
  %bf.set24 = or i16 %bf.clear23, %bf.shl, !dbg !4019
  store i16 %bf.set24, ptr %memory20, align 8, !dbg !4019
  %bf.result.cast25 = zext i16 %bf.value22 to i32, !dbg !4019
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !4020, !tbaa !2077
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %24, i32 0, i32 9, !dbg !4021
  %bf.load26 = load i16, ptr %mmap, align 8, !dbg !4021
  %bf.lshr27 = lshr i16 %bf.load26, 2, !dbg !4021
  %bf.clear28 = and i16 %bf.lshr27, 1, !dbg !4021
  %bf.cast29 = zext i16 %bf.clear28 to i32, !dbg !4021
  %25 = load ptr, ptr %b, align 8, !dbg !4022, !tbaa !2077
  %mmap30 = getelementptr inbounds %struct.ngx_buf_s, ptr %25, i32 0, i32 9, !dbg !4023
  %26 = trunc i32 %bf.cast29 to i16, !dbg !4024
  %bf.load31 = load i16, ptr %mmap30, align 8, !dbg !4024
  %bf.value32 = and i16 %26, 1, !dbg !4024
  %bf.shl33 = shl i16 %bf.value32, 2, !dbg !4024
  %bf.clear34 = and i16 %bf.load31, -5, !dbg !4024
  %bf.set35 = or i16 %bf.clear34, %bf.shl33, !dbg !4024
  store i16 %bf.set35, ptr %mmap30, align 8, !dbg !4024
  %bf.result.cast36 = zext i16 %bf.value32 to i32, !dbg !4024
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !4025, !tbaa !2077
  %flush = getelementptr inbounds %struct.ngx_buf_s, ptr %27, i32 0, i32 9, !dbg !4026
  %bf.load37 = load i16, ptr %flush, align 8, !dbg !4026
  %bf.lshr38 = lshr i16 %bf.load37, 5, !dbg !4026
  %bf.clear39 = and i16 %bf.lshr38, 1, !dbg !4026
  %bf.cast40 = zext i16 %bf.clear39 to i32, !dbg !4026
  %28 = load ptr, ptr %b, align 8, !dbg !4027, !tbaa !2077
  %flush41 = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 9, !dbg !4028
  %29 = trunc i32 %bf.cast40 to i16, !dbg !4029
  %bf.load42 = load i16, ptr %flush41, align 8, !dbg !4029
  %bf.value43 = and i16 %29, 1, !dbg !4029
  %bf.shl44 = shl i16 %bf.value43, 5, !dbg !4029
  %bf.clear45 = and i16 %bf.load42, -33, !dbg !4029
  %bf.set46 = or i16 %bf.clear45, %bf.shl44, !dbg !4029
  store i16 %bf.set46, ptr %flush41, align 8, !dbg !4029
  %bf.result.cast47 = zext i16 %bf.value43 to i32, !dbg !4029
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !4030, !tbaa !2077
  %pos48 = getelementptr inbounds %struct.ngx_buf_s, ptr %30, i32 0, i32 0, !dbg !4031
  %31 = load ptr, ptr %pos48, align 8, !dbg !4031, !tbaa !2847
  %32 = load ptr, ptr %b, align 8, !dbg !4032, !tbaa !2077
  %pos49 = getelementptr inbounds %struct.ngx_buf_s, ptr %32, i32 0, i32 0, !dbg !4033
  store ptr %31, ptr %pos49, align 8, !dbg !4034, !tbaa !2847
  %33 = load ptr, ptr %src, align 8, !dbg !4035, !tbaa !2077
  %34 = load ptr, ptr %b, align 8, !dbg !4036, !tbaa !2077
  %last50 = getelementptr inbounds %struct.ngx_buf_s, ptr %34, i32 0, i32 1, !dbg !4037
  store ptr %33, ptr %last50, align 8, !dbg !4038, !tbaa !2845
  %35 = load ptr, ptr %b, align 8, !dbg !4039, !tbaa !2077
  %36 = load ptr, ptr %out, align 8, !dbg !4040, !tbaa !2077
  %buf51 = getelementptr inbounds %struct.ngx_chain_s, ptr %36, i32 0, i32 0, !dbg !4041
  store ptr %35, ptr %buf51, align 8, !dbg !4042, !tbaa !2840
  %37 = load ptr, ptr %out, align 8, !dbg !4043, !tbaa !2077
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %37, i32 0, i32 1, !dbg !4044
  store ptr null, ptr %next, align 8, !dbg !4045, !tbaa !2875
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !4046, !tbaa !2077
  %last52 = getelementptr inbounds %struct.ngx_buf_s, ptr %38, i32 0, i32 1, !dbg !4047
  %39 = load ptr, ptr %last52, align 8, !dbg !4047, !tbaa !2845
  %40 = load ptr, ptr %src, align 8, !dbg !4048, !tbaa !2077
  %sub.ptr.lhs.cast53 = ptrtoint ptr %39 to i64, !dbg !4049
  %sub.ptr.rhs.cast54 = ptrtoint ptr %40 to i64, !dbg !4049
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54, !dbg !4049
  store i64 %sub.ptr.sub55, ptr %size, align 8, !dbg !4050, !tbaa !2125
  %41 = load ptr, ptr %src, align 8, !dbg !4051, !tbaa !2077
  store ptr %41, ptr %saved, align 8, !dbg !4052, !tbaa !2077
  %42 = load i64, ptr %size, align 8, !dbg !4053, !tbaa !2125
  %call56 = call i32 @ngx_utf8_decode(ptr noundef %saved, i64 noundef %42), !dbg !4054
  store i32 %call56, ptr %n, align 4, !dbg !4055, !tbaa !4056
  %43 = load i32, ptr %n, align 4, !dbg !4057, !tbaa !4056
  %cmp57 = icmp eq i32 %43, -2, !dbg !4059
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !4060

if.then59:                                        ; preds = %if.end12
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !4061, !tbaa !2077
  %saved60 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %44, i32 0, i32 7, !dbg !4061
  %arraydecay = getelementptr inbounds [4 x i8], ptr %saved60, i64 0, i64 0, !dbg !4061
  %45 = load ptr, ptr %src, align 8, !dbg !4061, !tbaa !2077
  %46 = load i64, ptr %size, align 8, !dbg !4061, !tbaa !2125
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %45, i64 %46, i1 false), !dbg !4061
  %47 = load i64, ptr %size, align 8, !dbg !4063, !tbaa !2125
  %48 = load ptr, ptr %ctx.addr, align 8, !dbg !4064, !tbaa !2077
  %saved_len61 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %48, i32 0, i32 6, !dbg !4065
  store i64 %47, ptr %saved_len61, align 8, !dbg !4066, !tbaa !3967
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !4067, !tbaa !2077
  %50 = load ptr, ptr %b, align 8, !dbg !4068, !tbaa !2077
  %shadow = getelementptr inbounds %struct.ngx_buf_s, ptr %50, i32 0, i32 8, !dbg !4069
  store ptr %49, ptr %shadow, align 8, !dbg !4070, !tbaa !3002
  %51 = load ptr, ptr %out, align 8, !dbg !4071, !tbaa !2077
  store ptr %51, ptr %retval, align 8, !dbg !4072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4072

if.end62:                                         ; preds = %if.end12
  br label %if.end68, !dbg !4073

if.else:                                          ; preds = %if.end
  store ptr null, ptr %out, align 8, !dbg !4074, !tbaa !2077
  %52 = load i64, ptr %len, align 8, !dbg !4076, !tbaa !2125
  %53 = load ptr, ptr %buf.addr, align 8, !dbg !4077, !tbaa !2077
  %last63 = getelementptr inbounds %struct.ngx_buf_s, ptr %53, i32 0, i32 1, !dbg !4078
  %54 = load ptr, ptr %last63, align 8, !dbg !4078, !tbaa !2845
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %52, !dbg !4079
  %55 = load ptr, ptr %src, align 8, !dbg !4080, !tbaa !2077
  %sub.ptr.lhs.cast64 = ptrtoint ptr %add.ptr to i64, !dbg !4081
  %sub.ptr.rhs.cast65 = ptrtoint ptr %55 to i64, !dbg !4081
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65, !dbg !4081
  store i64 %sub.ptr.sub66, ptr %size, align 8, !dbg !4082, !tbaa !2125
  %56 = load ptr, ptr %buf.addr, align 8, !dbg !4083, !tbaa !2077
  %pos67 = getelementptr inbounds %struct.ngx_buf_s, ptr %56, i32 0, i32 0, !dbg !4084
  %57 = load ptr, ptr %pos67, align 8, !dbg !4084, !tbaa !2847
  store ptr %57, ptr %src, align 8, !dbg !4085, !tbaa !2077
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.end62
  %58 = load i64, ptr %size, align 8, !dbg !4086, !tbaa !2125
  %cmp69 = icmp ult i64 %58, 10, !dbg !4088
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !4089

if.then71:                                        ; preds = %if.end68
  %59 = load i64, ptr %size, align 8, !dbg !4090, !tbaa !2125
  %add = add i64 %59, 10, !dbg !4090
  store i64 %add, ptr %size, align 8, !dbg !4090, !tbaa !2125
  br label %if.end72, !dbg !4092

if.end72:                                         ; preds = %if.then71, %if.end68
  %60 = load ptr, ptr %pool.addr, align 8, !dbg !4093, !tbaa !2077
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !4094, !tbaa !2077
  %62 = load i64, ptr %size, align 8, !dbg !4095, !tbaa !2125
  %call73 = call ptr @ngx_http_charset_get_buffer(ptr noundef %60, ptr noundef %61, i64 noundef %62), !dbg !4096
  store ptr %call73, ptr %cl, align 8, !dbg !4097, !tbaa !2077
  %63 = load ptr, ptr %cl, align 8, !dbg !4098, !tbaa !2077
  %cmp74 = icmp eq ptr %63, null, !dbg !4100
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !4101

if.then76:                                        ; preds = %if.end72
  store ptr null, ptr %retval, align 8, !dbg !4102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4102

if.end77:                                         ; preds = %if.end72
  %64 = load ptr, ptr %out, align 8, !dbg !4104, !tbaa !2077
  %tobool = icmp ne ptr %64, null, !dbg !4104
  br i1 %tobool, label %if.then78, label %if.else80, !dbg !4106

if.then78:                                        ; preds = %if.end77
  %65 = load ptr, ptr %cl, align 8, !dbg !4107, !tbaa !2077
  %66 = load ptr, ptr %out, align 8, !dbg !4109, !tbaa !2077
  %next79 = getelementptr inbounds %struct.ngx_chain_s, ptr %66, i32 0, i32 1, !dbg !4110
  store ptr %65, ptr %next79, align 8, !dbg !4111, !tbaa !2875
  br label %if.end81, !dbg !4112

if.else80:                                        ; preds = %if.end77
  %67 = load ptr, ptr %cl, align 8, !dbg !4113, !tbaa !2077
  store ptr %67, ptr %out, align 8, !dbg !4115, !tbaa !2077
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then78
  %68 = load ptr, ptr %cl, align 8, !dbg !4116, !tbaa !2077
  %buf82 = getelementptr inbounds %struct.ngx_chain_s, ptr %68, i32 0, i32 0, !dbg !4117
  %69 = load ptr, ptr %buf82, align 8, !dbg !4117, !tbaa !2840
  store ptr %69, ptr %b, align 8, !dbg !4118, !tbaa !2077
  %70 = load ptr, ptr %b, align 8, !dbg !4119, !tbaa !2077
  %pos83 = getelementptr inbounds %struct.ngx_buf_s, ptr %70, i32 0, i32 0, !dbg !4120
  %71 = load ptr, ptr %pos83, align 8, !dbg !4120, !tbaa !2847
  store ptr %71, ptr %dst, align 8, !dbg !4121, !tbaa !2077
  br label %recode, !dbg !4122

for.inc:                                          ; preds = %if.then4
  %72 = load ptr, ptr %src, align 8, !dbg !4123, !tbaa !2077
  %incdec.ptr = getelementptr inbounds i8, ptr %72, i32 1, !dbg !4123
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !4123, !tbaa !2077
  br label %for.cond, !dbg !4124, !llvm.loop !4125

for.end:                                          ; preds = %for.cond
  %73 = load ptr, ptr %pool.addr, align 8, !dbg !4127, !tbaa !2077
  %call84 = call ptr @ngx_alloc_chain_link(ptr noundef %73), !dbg !4128
  store ptr %call84, ptr %out, align 8, !dbg !4129, !tbaa !2077
  %74 = load ptr, ptr %out, align 8, !dbg !4130, !tbaa !2077
  %cmp85 = icmp eq ptr %74, null, !dbg !4132
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !4133

if.then87:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !4134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4134

if.end88:                                         ; preds = %for.end
  %75 = load ptr, ptr %buf.addr, align 8, !dbg !4136, !tbaa !2077
  %76 = load ptr, ptr %out, align 8, !dbg !4137, !tbaa !2077
  %buf89 = getelementptr inbounds %struct.ngx_chain_s, ptr %76, i32 0, i32 0, !dbg !4138
  store ptr %75, ptr %buf89, align 8, !dbg !4139, !tbaa !2840
  %77 = load ptr, ptr %out, align 8, !dbg !4140, !tbaa !2077
  %next90 = getelementptr inbounds %struct.ngx_chain_s, ptr %77, i32 0, i32 1, !dbg !4141
  store ptr null, ptr %next90, align 8, !dbg !4142, !tbaa !2875
  %78 = load ptr, ptr %out, align 8, !dbg !4143, !tbaa !2077
  store ptr %78, ptr %retval, align 8, !dbg !4144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4144

if.end91:                                         ; preds = %entry
  %79 = load ptr, ptr %src, align 8, !dbg !4145, !tbaa !2077
  store ptr %79, ptr %p, align 8, !dbg !4146, !tbaa !2077
  %80 = load ptr, ptr %ctx.addr, align 8, !dbg !4147, !tbaa !2077
  %saved_len92 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %80, i32 0, i32 6, !dbg !4149
  %81 = load i64, ptr %saved_len92, align 8, !dbg !4149, !tbaa !3967
  store i64 %81, ptr %i, align 8, !dbg !4150, !tbaa !2125
  br label %for.cond93, !dbg !4151

for.cond93:                                       ; preds = %for.inc104, %if.end91
  %82 = load i64, ptr %i, align 8, !dbg !4152, !tbaa !2125
  %cmp94 = icmp ult i64 %82, 4, !dbg !4154
  br i1 %cmp94, label %for.body96, label %for.end105, !dbg !4155

for.body96:                                       ; preds = %for.cond93
  %83 = load ptr, ptr %p, align 8, !dbg !4156, !tbaa !2077
  %incdec.ptr97 = getelementptr inbounds i8, ptr %83, i32 1, !dbg !4156
  store ptr %incdec.ptr97, ptr %p, align 8, !dbg !4156, !tbaa !2077
  %84 = load i8, ptr %83, align 1, !dbg !4158, !tbaa !3655
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !4159, !tbaa !2077
  %saved98 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %85, i32 0, i32 7, !dbg !4160
  %86 = load i64, ptr %i, align 8, !dbg !4161, !tbaa !2125
  %arrayidx = getelementptr inbounds [4 x i8], ptr %saved98, i64 0, i64 %86, !dbg !4159
  store i8 %84, ptr %arrayidx, align 1, !dbg !4162, !tbaa !3655
  %87 = load ptr, ptr %p, align 8, !dbg !4163, !tbaa !2077
  %88 = load ptr, ptr %buf.addr, align 8, !dbg !4165, !tbaa !2077
  %last99 = getelementptr inbounds %struct.ngx_buf_s, ptr %88, i32 0, i32 1, !dbg !4166
  %89 = load ptr, ptr %last99, align 8, !dbg !4166, !tbaa !2845
  %cmp100 = icmp eq ptr %87, %89, !dbg !4167
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !4168

if.then102:                                       ; preds = %for.body96
  br label %for.end105, !dbg !4169

if.end103:                                        ; preds = %for.body96
  br label %for.inc104, !dbg !4171

for.inc104:                                       ; preds = %if.end103
  %90 = load i64, ptr %i, align 8, !dbg !4172, !tbaa !2125
  %inc = add i64 %90, 1, !dbg !4172
  store i64 %inc, ptr %i, align 8, !dbg !4172, !tbaa !2125
  br label %for.cond93, !dbg !4173, !llvm.loop !4174

for.end105:                                       ; preds = %if.then102, %for.cond93
  %91 = load ptr, ptr %ctx.addr, align 8, !dbg !4176, !tbaa !2077
  %saved106 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %91, i32 0, i32 7, !dbg !4177
  %arraydecay107 = getelementptr inbounds [4 x i8], ptr %saved106, i64 0, i64 0, !dbg !4176
  store ptr %arraydecay107, ptr %saved, align 8, !dbg !4178, !tbaa !2077
  %92 = load i64, ptr %i, align 8, !dbg !4179, !tbaa !2125
  %call108 = call i32 @ngx_utf8_decode(ptr noundef %saved, i64 noundef %92), !dbg !4180
  store i32 %call108, ptr %n, align 4, !dbg !4181, !tbaa !4056
  store i8 0, ptr %c, align 1, !dbg !4182, !tbaa !3655
  %93 = load i32, ptr %n, align 4, !dbg !4183, !tbaa !4056
  %cmp109 = icmp ult i32 %93, 65536, !dbg !4185
  br i1 %cmp109, label %if.then111, label %if.else119, !dbg !4186

if.then111:                                       ; preds = %for.end105
  %94 = load ptr, ptr %ctx.addr, align 8, !dbg !4187, !tbaa !2077
  %table112 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %94, i32 0, i32 0, !dbg !4189
  %95 = load ptr, ptr %table112, align 8, !dbg !4189, !tbaa !2807
  store ptr %95, ptr %table, align 8, !dbg !4190, !tbaa !2077
  %96 = load ptr, ptr %table, align 8, !dbg !4191, !tbaa !2077
  %97 = load i32, ptr %n, align 4, !dbg !4192, !tbaa !4056
  %shr = lshr i32 %97, 8, !dbg !4193
  %idxprom = zext i32 %shr to i64, !dbg !4191
  %arrayidx113 = getelementptr inbounds ptr, ptr %96, i64 %idxprom, !dbg !4191
  %98 = load ptr, ptr %arrayidx113, align 8, !dbg !4191, !tbaa !2077
  store ptr %98, ptr %p, align 8, !dbg !4194, !tbaa !2077
  %99 = load ptr, ptr %p, align 8, !dbg !4195, !tbaa !2077
  %tobool114 = icmp ne ptr %99, null, !dbg !4195
  br i1 %tobool114, label %if.then115, label %if.end118, !dbg !4197

if.then115:                                       ; preds = %if.then111
  %100 = load ptr, ptr %p, align 8, !dbg !4198, !tbaa !2077
  %101 = load i32, ptr %n, align 4, !dbg !4200, !tbaa !4056
  %and = and i32 %101, 255, !dbg !4201
  %idxprom116 = zext i32 %and to i64, !dbg !4198
  %arrayidx117 = getelementptr inbounds i8, ptr %100, i64 %idxprom116, !dbg !4198
  %102 = load i8, ptr %arrayidx117, align 1, !dbg !4198, !tbaa !3655
  store i8 %102, ptr %c, align 1, !dbg !4202, !tbaa !3655
  br label %if.end118, !dbg !4203

if.end118:                                        ; preds = %if.then115, %if.then111
  br label %if.end147, !dbg !4204

if.else119:                                       ; preds = %for.end105
  %103 = load i32, ptr %n, align 4, !dbg !4205, !tbaa !4056
  %cmp120 = icmp eq i32 %103, -2, !dbg !4207
  br i1 %cmp120, label %if.then122, label %if.end146, !dbg !4208

if.then122:                                       ; preds = %if.else119
  %104 = load i64, ptr %i, align 8, !dbg !4209, !tbaa !2125
  %cmp123 = icmp ult i64 %104, 4, !dbg !4212
  br i1 %cmp123, label %if.then125, label %if.end145, !dbg !4213

if.then125:                                       ; preds = %if.then122
  %105 = load ptr, ptr %pool.addr, align 8, !dbg !4214, !tbaa !2077
  %106 = load ptr, ptr %ctx.addr, align 8, !dbg !4216, !tbaa !2077
  %call126 = call ptr @ngx_http_charset_get_buf(ptr noundef %105, ptr noundef %106), !dbg !4217
  store ptr %call126, ptr %out, align 8, !dbg !4218, !tbaa !2077
  %107 = load ptr, ptr %out, align 8, !dbg !4219, !tbaa !2077
  %cmp127 = icmp eq ptr %107, null, !dbg !4221
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !4222

if.then129:                                       ; preds = %if.then125
  store ptr null, ptr %retval, align 8, !dbg !4223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4223

if.end130:                                        ; preds = %if.then125
  %108 = load ptr, ptr %out, align 8, !dbg !4225, !tbaa !2077
  %buf131 = getelementptr inbounds %struct.ngx_chain_s, ptr %108, i32 0, i32 0, !dbg !4226
  %109 = load ptr, ptr %buf131, align 8, !dbg !4226, !tbaa !2840
  store ptr %109, ptr %b, align 8, !dbg !4227, !tbaa !2077
  %110 = load ptr, ptr %buf.addr, align 8, !dbg !4228, !tbaa !2077
  %pos132 = getelementptr inbounds %struct.ngx_buf_s, ptr %110, i32 0, i32 0, !dbg !4229
  %111 = load ptr, ptr %pos132, align 8, !dbg !4229, !tbaa !2847
  %112 = load ptr, ptr %b, align 8, !dbg !4230, !tbaa !2077
  %pos133 = getelementptr inbounds %struct.ngx_buf_s, ptr %112, i32 0, i32 0, !dbg !4231
  store ptr %111, ptr %pos133, align 8, !dbg !4232, !tbaa !2847
  %113 = load ptr, ptr %buf.addr, align 8, !dbg !4233, !tbaa !2077
  %last134 = getelementptr inbounds %struct.ngx_buf_s, ptr %113, i32 0, i32 1, !dbg !4234
  %114 = load ptr, ptr %last134, align 8, !dbg !4234, !tbaa !2845
  %115 = load ptr, ptr %b, align 8, !dbg !4235, !tbaa !2077
  %last135 = getelementptr inbounds %struct.ngx_buf_s, ptr %115, i32 0, i32 1, !dbg !4236
  store ptr %114, ptr %last135, align 8, !dbg !4237, !tbaa !2845
  %116 = load ptr, ptr %b, align 8, !dbg !4238, !tbaa !2077
  %sync = getelementptr inbounds %struct.ngx_buf_s, ptr %116, i32 0, i32 9, !dbg !4239
  %bf.load136 = load i16, ptr %sync, align 8, !dbg !4240
  %bf.clear137 = and i16 %bf.load136, -65, !dbg !4240
  %bf.set138 = or i16 %bf.clear137, 64, !dbg !4240
  store i16 %bf.set138, ptr %sync, align 8, !dbg !4240
  %117 = load ptr, ptr %buf.addr, align 8, !dbg !4241, !tbaa !2077
  %118 = load ptr, ptr %b, align 8, !dbg !4242, !tbaa !2077
  %shadow139 = getelementptr inbounds %struct.ngx_buf_s, ptr %118, i32 0, i32 8, !dbg !4243
  store ptr %117, ptr %shadow139, align 8, !dbg !4244, !tbaa !3002
  %119 = load ptr, ptr %ctx.addr, align 8, !dbg !4245, !tbaa !2077
  %saved140 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %119, i32 0, i32 7, !dbg !4245
  %120 = load ptr, ptr %ctx.addr, align 8, !dbg !4245, !tbaa !2077
  %saved_len141 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %120, i32 0, i32 6, !dbg !4245
  %121 = load i64, ptr %saved_len141, align 8, !dbg !4245, !tbaa !3967
  %arrayidx142 = getelementptr inbounds [4 x i8], ptr %saved140, i64 0, i64 %121, !dbg !4245
  %122 = load ptr, ptr %src, align 8, !dbg !4245, !tbaa !2077
  %123 = load i64, ptr %i, align 8, !dbg !4245, !tbaa !2125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx142, ptr align 1 %122, i64 %123, i1 false), !dbg !4245
  %124 = load i64, ptr %i, align 8, !dbg !4246, !tbaa !2125
  %125 = load ptr, ptr %ctx.addr, align 8, !dbg !4247, !tbaa !2077
  %saved_len143 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %125, i32 0, i32 6, !dbg !4248
  %126 = load i64, ptr %saved_len143, align 8, !dbg !4249, !tbaa !3967
  %add144 = add i64 %126, %124, !dbg !4249
  store i64 %add144, ptr %saved_len143, align 8, !dbg !4249, !tbaa !3967
  %127 = load ptr, ptr %out, align 8, !dbg !4250, !tbaa !2077
  store ptr %127, ptr %retval, align 8, !dbg !4251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4251

if.end145:                                        ; preds = %if.then122
  br label %if.end146, !dbg !4252

if.end146:                                        ; preds = %if.end145, %if.else119
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end118
  %128 = load ptr, ptr %buf.addr, align 8, !dbg !4253, !tbaa !2077
  %last148 = getelementptr inbounds %struct.ngx_buf_s, ptr %128, i32 0, i32 1, !dbg !4254
  %129 = load ptr, ptr %last148, align 8, !dbg !4254, !tbaa !2845
  %130 = load ptr, ptr %buf.addr, align 8, !dbg !4255, !tbaa !2077
  %pos149 = getelementptr inbounds %struct.ngx_buf_s, ptr %130, i32 0, i32 0, !dbg !4256
  %131 = load ptr, ptr %pos149, align 8, !dbg !4256, !tbaa !2847
  %sub.ptr.lhs.cast150 = ptrtoint ptr %129 to i64, !dbg !4257
  %sub.ptr.rhs.cast151 = ptrtoint ptr %131 to i64, !dbg !4257
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151, !dbg !4257
  store i64 %sub.ptr.sub152, ptr %size, align 8, !dbg !4258, !tbaa !2125
  %132 = load i64, ptr %size, align 8, !dbg !4259, !tbaa !2125
  %cmp153 = icmp ult i64 %132, 10, !dbg !4261
  br i1 %cmp153, label %if.then155, label %if.end157, !dbg !4262

if.then155:                                       ; preds = %if.end147
  %133 = load i64, ptr %size, align 8, !dbg !4263, !tbaa !2125
  %add156 = add i64 %133, 10, !dbg !4263
  store i64 %add156, ptr %size, align 8, !dbg !4263, !tbaa !2125
  br label %if.end157, !dbg !4265

if.end157:                                        ; preds = %if.then155, %if.end147
  %134 = load ptr, ptr %pool.addr, align 8, !dbg !4266, !tbaa !2077
  %135 = load ptr, ptr %ctx.addr, align 8, !dbg !4267, !tbaa !2077
  %136 = load i64, ptr %size, align 8, !dbg !4268, !tbaa !2125
  %call158 = call ptr @ngx_http_charset_get_buffer(ptr noundef %134, ptr noundef %135, i64 noundef %136), !dbg !4269
  store ptr %call158, ptr %cl, align 8, !dbg !4270, !tbaa !2077
  %137 = load ptr, ptr %cl, align 8, !dbg !4271, !tbaa !2077
  %cmp159 = icmp eq ptr %137, null, !dbg !4273
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !4274

if.then161:                                       ; preds = %if.end157
  store ptr null, ptr %retval, align 8, !dbg !4275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4275

if.end162:                                        ; preds = %if.end157
  %138 = load ptr, ptr %cl, align 8, !dbg !4277, !tbaa !2077
  store ptr %138, ptr %out, align 8, !dbg !4278, !tbaa !2077
  %139 = load ptr, ptr %cl, align 8, !dbg !4279, !tbaa !2077
  %buf163 = getelementptr inbounds %struct.ngx_chain_s, ptr %139, i32 0, i32 0, !dbg !4280
  %140 = load ptr, ptr %buf163, align 8, !dbg !4280, !tbaa !2840
  store ptr %140, ptr %b, align 8, !dbg !4281, !tbaa !2077
  %141 = load ptr, ptr %b, align 8, !dbg !4282, !tbaa !2077
  %pos164 = getelementptr inbounds %struct.ngx_buf_s, ptr %141, i32 0, i32 0, !dbg !4283
  %142 = load ptr, ptr %pos164, align 8, !dbg !4283, !tbaa !2847
  store ptr %142, ptr %dst, align 8, !dbg !4284, !tbaa !2077
  %143 = load i8, ptr %c, align 1, !dbg !4285, !tbaa !3655
  %tobool165 = icmp ne i8 %143, 0, !dbg !4285
  br i1 %tobool165, label %if.then166, label %if.else168, !dbg !4287

if.then166:                                       ; preds = %if.end162
  %144 = load i8, ptr %c, align 1, !dbg !4288, !tbaa !3655
  %145 = load ptr, ptr %dst, align 8, !dbg !4290, !tbaa !2077
  %incdec.ptr167 = getelementptr inbounds i8, ptr %145, i32 1, !dbg !4290
  store ptr %incdec.ptr167, ptr %dst, align 8, !dbg !4290, !tbaa !2077
  store i8 %144, ptr %145, align 1, !dbg !4291, !tbaa !3655
  br label %if.end184, !dbg !4292

if.else168:                                       ; preds = %if.end162
  %146 = load i32, ptr %n, align 4, !dbg !4293, !tbaa !4056
  %cmp169 = icmp eq i32 %146, -2, !dbg !4295
  br i1 %cmp169, label %if.then171, label %if.else175, !dbg !4296

if.then171:                                       ; preds = %if.else168
  %147 = load ptr, ptr %dst, align 8, !dbg !4297, !tbaa !2077
  %incdec.ptr172 = getelementptr inbounds i8, ptr %147, i32 1, !dbg !4297
  store ptr %incdec.ptr172, ptr %dst, align 8, !dbg !4297, !tbaa !2077
  store i8 63, ptr %147, align 1, !dbg !4299, !tbaa !3655
  %148 = load ptr, ptr %ctx.addr, align 8, !dbg !4300, !tbaa !2077
  %saved173 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %148, i32 0, i32 7, !dbg !4301
  %arrayidx174 = getelementptr inbounds [4 x i8], ptr %saved173, i64 0, i64 4, !dbg !4300
  store ptr %arrayidx174, ptr %saved, align 8, !dbg !4302, !tbaa !2077
  br label %if.end183, !dbg !4303

if.else175:                                       ; preds = %if.else168
  %149 = load i32, ptr %n, align 4, !dbg !4304, !tbaa !4056
  %cmp176 = icmp ugt i32 %149, 1114111, !dbg !4306
  br i1 %cmp176, label %if.then178, label %if.else180, !dbg !4307

if.then178:                                       ; preds = %if.else175
  %150 = load ptr, ptr %dst, align 8, !dbg !4308, !tbaa !2077
  %incdec.ptr179 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !4308
  store ptr %incdec.ptr179, ptr %dst, align 8, !dbg !4308, !tbaa !2077
  store i8 63, ptr %150, align 1, !dbg !4310, !tbaa !3655
  br label %if.end182, !dbg !4311

if.else180:                                       ; preds = %if.else175
  %151 = load ptr, ptr %dst, align 8, !dbg !4312, !tbaa !2077
  %152 = load i32, ptr %n, align 4, !dbg !4314, !tbaa !4056
  %call181 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %151, ptr noundef @.str.3, i32 noundef %152), !dbg !4315
  store ptr %call181, ptr %dst, align 8, !dbg !4316, !tbaa !2077
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then178
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.then171
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then166
  %153 = load ptr, ptr %saved, align 8, !dbg !4317, !tbaa !2077
  %154 = load ptr, ptr %ctx.addr, align 8, !dbg !4318, !tbaa !2077
  %saved185 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %154, i32 0, i32 7, !dbg !4319
  %arraydecay186 = getelementptr inbounds [4 x i8], ptr %saved185, i64 0, i64 0, !dbg !4318
  %sub.ptr.lhs.cast187 = ptrtoint ptr %153 to i64, !dbg !4320
  %sub.ptr.rhs.cast188 = ptrtoint ptr %arraydecay186 to i64, !dbg !4320
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188, !dbg !4320
  %155 = load ptr, ptr %ctx.addr, align 8, !dbg !4321, !tbaa !2077
  %saved_len190 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %155, i32 0, i32 6, !dbg !4322
  %156 = load i64, ptr %saved_len190, align 8, !dbg !4322, !tbaa !3967
  %sub = sub i64 %sub.ptr.sub189, %156, !dbg !4323
  %157 = load ptr, ptr %src, align 8, !dbg !4324, !tbaa !2077
  %add.ptr191 = getelementptr inbounds i8, ptr %157, i64 %sub, !dbg !4324
  store ptr %add.ptr191, ptr %src, align 8, !dbg !4324, !tbaa !2077
  %158 = load ptr, ptr %ctx.addr, align 8, !dbg !4325, !tbaa !2077
  %saved_len192 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %158, i32 0, i32 6, !dbg !4326
  store i64 0, ptr %saved_len192, align 8, !dbg !4327, !tbaa !3967
  br label %recode, !dbg !4325

recode:                                           ; preds = %if.end184, %if.end81
  tail call void @llvm.dbg.label(metadata !3937), !dbg !4328
  %159 = load ptr, ptr %cl, align 8, !dbg !4329, !tbaa !2077
  %next193 = getelementptr inbounds %struct.ngx_chain_s, ptr %159, i32 0, i32 1, !dbg !4330
  store ptr %next193, ptr %ll, align 8, !dbg !4331, !tbaa !2077
  %160 = load ptr, ptr %ctx.addr, align 8, !dbg !4332, !tbaa !2077
  %table194 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %160, i32 0, i32 0, !dbg !4333
  %161 = load ptr, ptr %table194, align 8, !dbg !4333, !tbaa !2807
  store ptr %161, ptr %table, align 8, !dbg !4334, !tbaa !2077
  br label %while.cond, !dbg !4335

while.cond:                                       ; preds = %if.end273, %if.then271, %if.end246, %if.then243, %if.then222, %recode
  %162 = load ptr, ptr %src, align 8, !dbg !4336, !tbaa !2077
  %163 = load ptr, ptr %buf.addr, align 8, !dbg !4337, !tbaa !2077
  %last195 = getelementptr inbounds %struct.ngx_buf_s, ptr %163, i32 0, i32 1, !dbg !4338
  %164 = load ptr, ptr %last195, align 8, !dbg !4338, !tbaa !2845
  %cmp196 = icmp ult ptr %162, %164, !dbg !4339
  br i1 %cmp196, label %while.body, label %while.end, !dbg !4335

while.body:                                       ; preds = %while.cond
  %165 = load ptr, ptr %b, align 8, !dbg !4340, !tbaa !2077
  %end = getelementptr inbounds %struct.ngx_buf_s, ptr %165, i32 0, i32 5, !dbg !4343
  %166 = load ptr, ptr %end, align 8, !dbg !4343, !tbaa !3829
  %167 = load ptr, ptr %dst, align 8, !dbg !4344, !tbaa !2077
  %sub.ptr.lhs.cast198 = ptrtoint ptr %166 to i64, !dbg !4345
  %sub.ptr.rhs.cast199 = ptrtoint ptr %167 to i64, !dbg !4345
  %sub.ptr.sub200 = sub i64 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199, !dbg !4345
  %cmp201 = icmp ult i64 %sub.ptr.sub200, 10, !dbg !4346
  br i1 %cmp201, label %if.then203, label %if.end218, !dbg !4347

if.then203:                                       ; preds = %while.body
  %168 = load ptr, ptr %dst, align 8, !dbg !4348, !tbaa !2077
  %169 = load ptr, ptr %b, align 8, !dbg !4350, !tbaa !2077
  %last204 = getelementptr inbounds %struct.ngx_buf_s, ptr %169, i32 0, i32 1, !dbg !4351
  store ptr %168, ptr %last204, align 8, !dbg !4352, !tbaa !2845
  %170 = load ptr, ptr %buf.addr, align 8, !dbg !4353, !tbaa !2077
  %last205 = getelementptr inbounds %struct.ngx_buf_s, ptr %170, i32 0, i32 1, !dbg !4354
  %171 = load ptr, ptr %last205, align 8, !dbg !4354, !tbaa !2845
  %172 = load ptr, ptr %src, align 8, !dbg !4355, !tbaa !2077
  %sub.ptr.lhs.cast206 = ptrtoint ptr %171 to i64, !dbg !4356
  %sub.ptr.rhs.cast207 = ptrtoint ptr %172 to i64, !dbg !4356
  %sub.ptr.sub208 = sub i64 %sub.ptr.lhs.cast206, %sub.ptr.rhs.cast207, !dbg !4356
  %add209 = add i64 %sub.ptr.sub208, 10, !dbg !4357
  store i64 %add209, ptr %size, align 8, !dbg !4358, !tbaa !2125
  %173 = load ptr, ptr %pool.addr, align 8, !dbg !4359, !tbaa !2077
  %174 = load ptr, ptr %ctx.addr, align 8, !dbg !4360, !tbaa !2077
  %175 = load i64, ptr %size, align 8, !dbg !4361, !tbaa !2125
  %call210 = call ptr @ngx_http_charset_get_buffer(ptr noundef %173, ptr noundef %174, i64 noundef %175), !dbg !4362
  store ptr %call210, ptr %cl, align 8, !dbg !4363, !tbaa !2077
  %176 = load ptr, ptr %cl, align 8, !dbg !4364, !tbaa !2077
  %cmp211 = icmp eq ptr %176, null, !dbg !4366
  br i1 %cmp211, label %if.then213, label %if.end214, !dbg !4367

if.then213:                                       ; preds = %if.then203
  store ptr null, ptr %retval, align 8, !dbg !4368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4368

if.end214:                                        ; preds = %if.then203
  %177 = load ptr, ptr %cl, align 8, !dbg !4370, !tbaa !2077
  %178 = load ptr, ptr %ll, align 8, !dbg !4371, !tbaa !2077
  store ptr %177, ptr %178, align 8, !dbg !4372, !tbaa !2077
  %179 = load ptr, ptr %cl, align 8, !dbg !4373, !tbaa !2077
  %next215 = getelementptr inbounds %struct.ngx_chain_s, ptr %179, i32 0, i32 1, !dbg !4374
  store ptr %next215, ptr %ll, align 8, !dbg !4375, !tbaa !2077
  %180 = load ptr, ptr %cl, align 8, !dbg !4376, !tbaa !2077
  %buf216 = getelementptr inbounds %struct.ngx_chain_s, ptr %180, i32 0, i32 0, !dbg !4377
  %181 = load ptr, ptr %buf216, align 8, !dbg !4377, !tbaa !2840
  store ptr %181, ptr %b, align 8, !dbg !4378, !tbaa !2077
  %182 = load ptr, ptr %b, align 8, !dbg !4379, !tbaa !2077
  %pos217 = getelementptr inbounds %struct.ngx_buf_s, ptr %182, i32 0, i32 0, !dbg !4380
  %183 = load ptr, ptr %pos217, align 8, !dbg !4380, !tbaa !2847
  store ptr %183, ptr %dst, align 8, !dbg !4381, !tbaa !2077
  br label %if.end218, !dbg !4382

if.end218:                                        ; preds = %if.end214, %while.body
  %184 = load ptr, ptr %src, align 8, !dbg !4383, !tbaa !2077
  %185 = load i8, ptr %184, align 1, !dbg !4385, !tbaa !3655
  %conv219 = zext i8 %185 to i32, !dbg !4385
  %cmp220 = icmp slt i32 %conv219, 128, !dbg !4386
  br i1 %cmp220, label %if.then222, label %if.end225, !dbg !4387

if.then222:                                       ; preds = %if.end218
  %186 = load ptr, ptr %src, align 8, !dbg !4388, !tbaa !2077
  %incdec.ptr223 = getelementptr inbounds i8, ptr %186, i32 1, !dbg !4388
  store ptr %incdec.ptr223, ptr %src, align 8, !dbg !4388, !tbaa !2077
  %187 = load i8, ptr %186, align 1, !dbg !4390, !tbaa !3655
  %188 = load ptr, ptr %dst, align 8, !dbg !4391, !tbaa !2077
  %incdec.ptr224 = getelementptr inbounds i8, ptr %188, i32 1, !dbg !4391
  store ptr %incdec.ptr224, ptr %dst, align 8, !dbg !4391, !tbaa !2077
  store i8 %187, ptr %188, align 1, !dbg !4392, !tbaa !3655
  br label %while.cond, !dbg !4393, !llvm.loop !4394

if.end225:                                        ; preds = %if.end218
  %189 = load ptr, ptr %buf.addr, align 8, !dbg !4396, !tbaa !2077
  %last226 = getelementptr inbounds %struct.ngx_buf_s, ptr %189, i32 0, i32 1, !dbg !4397
  %190 = load ptr, ptr %last226, align 8, !dbg !4397, !tbaa !2845
  %191 = load ptr, ptr %src, align 8, !dbg !4398, !tbaa !2077
  %sub.ptr.lhs.cast227 = ptrtoint ptr %190 to i64, !dbg !4399
  %sub.ptr.rhs.cast228 = ptrtoint ptr %191 to i64, !dbg !4399
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228, !dbg !4399
  store i64 %sub.ptr.sub229, ptr %len, align 8, !dbg !4400, !tbaa !2125
  %192 = load i64, ptr %len, align 8, !dbg !4401, !tbaa !2125
  %call230 = call i32 @ngx_utf8_decode(ptr noundef %src, i64 noundef %192), !dbg !4402
  store i32 %call230, ptr %n, align 4, !dbg !4403, !tbaa !4056
  %193 = load i32, ptr %n, align 4, !dbg !4404, !tbaa !4056
  %cmp231 = icmp ult i32 %193, 65536, !dbg !4406
  br i1 %cmp231, label %if.then233, label %if.end248, !dbg !4407

if.then233:                                       ; preds = %if.end225
  %194 = load ptr, ptr %table, align 8, !dbg !4408, !tbaa !2077
  %195 = load i32, ptr %n, align 4, !dbg !4410, !tbaa !4056
  %shr234 = lshr i32 %195, 8, !dbg !4411
  %idxprom235 = zext i32 %shr234 to i64, !dbg !4408
  %arrayidx236 = getelementptr inbounds ptr, ptr %194, i64 %idxprom235, !dbg !4408
  %196 = load ptr, ptr %arrayidx236, align 8, !dbg !4408, !tbaa !2077
  store ptr %196, ptr %p, align 8, !dbg !4412, !tbaa !2077
  %197 = load ptr, ptr %p, align 8, !dbg !4413, !tbaa !2077
  %tobool237 = icmp ne ptr %197, null, !dbg !4413
  br i1 %tobool237, label %if.then238, label %if.end246, !dbg !4415

if.then238:                                       ; preds = %if.then233
  %198 = load ptr, ptr %p, align 8, !dbg !4416, !tbaa !2077
  %199 = load i32, ptr %n, align 4, !dbg !4418, !tbaa !4056
  %and239 = and i32 %199, 255, !dbg !4419
  %idxprom240 = zext i32 %and239 to i64, !dbg !4416
  %arrayidx241 = getelementptr inbounds i8, ptr %198, i64 %idxprom240, !dbg !4416
  %200 = load i8, ptr %arrayidx241, align 1, !dbg !4416, !tbaa !3655
  store i8 %200, ptr %c, align 1, !dbg !4420, !tbaa !3655
  %201 = load i8, ptr %c, align 1, !dbg !4421, !tbaa !3655
  %tobool242 = icmp ne i8 %201, 0, !dbg !4421
  br i1 %tobool242, label %if.then243, label %if.end245, !dbg !4423

if.then243:                                       ; preds = %if.then238
  %202 = load i8, ptr %c, align 1, !dbg !4424, !tbaa !3655
  %203 = load ptr, ptr %dst, align 8, !dbg !4426, !tbaa !2077
  %incdec.ptr244 = getelementptr inbounds i8, ptr %203, i32 1, !dbg !4426
  store ptr %incdec.ptr244, ptr %dst, align 8, !dbg !4426, !tbaa !2077
  store i8 %202, ptr %203, align 1, !dbg !4427, !tbaa !3655
  br label %while.cond, !dbg !4428, !llvm.loop !4394

if.end245:                                        ; preds = %if.then238
  br label %if.end246, !dbg !4429

if.end246:                                        ; preds = %if.end245, %if.then233
  %204 = load ptr, ptr %dst, align 8, !dbg !4430, !tbaa !2077
  %205 = load i32, ptr %n, align 4, !dbg !4431, !tbaa !4056
  %call247 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %204, ptr noundef @.str.3, i32 noundef %205), !dbg !4432
  store ptr %call247, ptr %dst, align 8, !dbg !4433, !tbaa !2077
  br label %while.cond, !dbg !4434, !llvm.loop !4394

if.end248:                                        ; preds = %if.end225
  %206 = load i32, ptr %n, align 4, !dbg !4435, !tbaa !4056
  %cmp249 = icmp eq i32 %206, -2, !dbg !4437
  br i1 %cmp249, label %if.then251, label %if.end268, !dbg !4438

if.then251:                                       ; preds = %if.end248
  %207 = load ptr, ptr %ctx.addr, align 8, !dbg !4439, !tbaa !2077
  %saved252 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %207, i32 0, i32 7, !dbg !4439
  %arraydecay253 = getelementptr inbounds [4 x i8], ptr %saved252, i64 0, i64 0, !dbg !4439
  %208 = load ptr, ptr %src, align 8, !dbg !4439, !tbaa !2077
  %209 = load i64, ptr %len, align 8, !dbg !4439, !tbaa !2125
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay253, ptr align 1 %208, i64 %209, i1 false), !dbg !4439
  %210 = load i64, ptr %len, align 8, !dbg !4441, !tbaa !2125
  %211 = load ptr, ptr %ctx.addr, align 8, !dbg !4442, !tbaa !2077
  %saved_len254 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %211, i32 0, i32 6, !dbg !4443
  store i64 %210, ptr %saved_len254, align 8, !dbg !4444, !tbaa !3967
  %212 = load ptr, ptr %b, align 8, !dbg !4445, !tbaa !2077
  %pos255 = getelementptr inbounds %struct.ngx_buf_s, ptr %212, i32 0, i32 0, !dbg !4447
  %213 = load ptr, ptr %pos255, align 8, !dbg !4447, !tbaa !2847
  %214 = load ptr, ptr %dst, align 8, !dbg !4448, !tbaa !2077
  %cmp256 = icmp eq ptr %213, %214, !dbg !4449
  br i1 %cmp256, label %if.then258, label %if.end267, !dbg !4450

if.then258:                                       ; preds = %if.then251
  %215 = load ptr, ptr %b, align 8, !dbg !4451, !tbaa !2077
  %sync259 = getelementptr inbounds %struct.ngx_buf_s, ptr %215, i32 0, i32 9, !dbg !4453
  %bf.load260 = load i16, ptr %sync259, align 8, !dbg !4454
  %bf.clear261 = and i16 %bf.load260, -65, !dbg !4454
  %bf.set262 = or i16 %bf.clear261, 64, !dbg !4454
  store i16 %bf.set262, ptr %sync259, align 8, !dbg !4454
  %216 = load ptr, ptr %b, align 8, !dbg !4455, !tbaa !2077
  %temporary263 = getelementptr inbounds %struct.ngx_buf_s, ptr %216, i32 0, i32 9, !dbg !4456
  %bf.load264 = load i16, ptr %temporary263, align 8, !dbg !4457
  %bf.clear265 = and i16 %bf.load264, -2, !dbg !4457
  %bf.set266 = or i16 %bf.clear265, 0, !dbg !4457
  store i16 %bf.set266, ptr %temporary263, align 8, !dbg !4457
  br label %if.end267, !dbg !4458

if.end267:                                        ; preds = %if.then258, %if.then251
  br label %while.end, !dbg !4459

if.end268:                                        ; preds = %if.end248
  %217 = load i32, ptr %n, align 4, !dbg !4460, !tbaa !4056
  %cmp269 = icmp ugt i32 %217, 1114111, !dbg !4462
  br i1 %cmp269, label %if.then271, label %if.end273, !dbg !4463

if.then271:                                       ; preds = %if.end268
  %218 = load ptr, ptr %dst, align 8, !dbg !4464, !tbaa !2077
  %incdec.ptr272 = getelementptr inbounds i8, ptr %218, i32 1, !dbg !4464
  store ptr %incdec.ptr272, ptr %dst, align 8, !dbg !4464, !tbaa !2077
  store i8 63, ptr %218, align 1, !dbg !4466, !tbaa !3655
  br label %while.cond, !dbg !4467, !llvm.loop !4394

if.end273:                                        ; preds = %if.end268
  %219 = load ptr, ptr %dst, align 8, !dbg !4468, !tbaa !2077
  %220 = load i32, ptr %n, align 4, !dbg !4469, !tbaa !4056
  %call274 = call ptr (ptr, ptr, ...) @ngx_sprintf(ptr noundef %219, ptr noundef @.str.3, i32 noundef %220), !dbg !4470
  store ptr %call274, ptr %dst, align 8, !dbg !4471, !tbaa !2077
  br label %while.cond, !dbg !4335, !llvm.loop !4394

while.end:                                        ; preds = %if.end267, %while.cond
  %221 = load ptr, ptr %dst, align 8, !dbg !4472, !tbaa !2077
  %222 = load ptr, ptr %b, align 8, !dbg !4473, !tbaa !2077
  %last275 = getelementptr inbounds %struct.ngx_buf_s, ptr %222, i32 0, i32 1, !dbg !4474
  store ptr %221, ptr %last275, align 8, !dbg !4475, !tbaa !2845
  %223 = load ptr, ptr %buf.addr, align 8, !dbg !4476, !tbaa !2077
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %223, i32 0, i32 9, !dbg !4477
  %bf.load276 = load i16, ptr %last_buf, align 8, !dbg !4477
  %bf.lshr277 = lshr i16 %bf.load276, 7, !dbg !4477
  %bf.clear278 = and i16 %bf.lshr277, 1, !dbg !4477
  %bf.cast279 = zext i16 %bf.clear278 to i32, !dbg !4477
  %224 = load ptr, ptr %b, align 8, !dbg !4478, !tbaa !2077
  %last_buf280 = getelementptr inbounds %struct.ngx_buf_s, ptr %224, i32 0, i32 9, !dbg !4479
  %225 = trunc i32 %bf.cast279 to i16, !dbg !4480
  %bf.load281 = load i16, ptr %last_buf280, align 8, !dbg !4480
  %bf.value282 = and i16 %225, 1, !dbg !4480
  %bf.shl283 = shl i16 %bf.value282, 7, !dbg !4480
  %bf.clear284 = and i16 %bf.load281, -129, !dbg !4480
  %bf.set285 = or i16 %bf.clear284, %bf.shl283, !dbg !4480
  store i16 %bf.set285, ptr %last_buf280, align 8, !dbg !4480
  %bf.result.cast286 = zext i16 %bf.value282 to i32, !dbg !4480
  %226 = load ptr, ptr %buf.addr, align 8, !dbg !4481, !tbaa !2077
  %last_in_chain = getelementptr inbounds %struct.ngx_buf_s, ptr %226, i32 0, i32 9, !dbg !4482
  %bf.load287 = load i16, ptr %last_in_chain, align 8, !dbg !4482
  %bf.lshr288 = lshr i16 %bf.load287, 8, !dbg !4482
  %bf.clear289 = and i16 %bf.lshr288, 1, !dbg !4482
  %bf.cast290 = zext i16 %bf.clear289 to i32, !dbg !4482
  %227 = load ptr, ptr %b, align 8, !dbg !4483, !tbaa !2077
  %last_in_chain291 = getelementptr inbounds %struct.ngx_buf_s, ptr %227, i32 0, i32 9, !dbg !4484
  %228 = trunc i32 %bf.cast290 to i16, !dbg !4485
  %bf.load292 = load i16, ptr %last_in_chain291, align 8, !dbg !4485
  %bf.value293 = and i16 %228, 1, !dbg !4485
  %bf.shl294 = shl i16 %bf.value293, 8, !dbg !4485
  %bf.clear295 = and i16 %bf.load292, -257, !dbg !4485
  %bf.set296 = or i16 %bf.clear295, %bf.shl294, !dbg !4485
  store i16 %bf.set296, ptr %last_in_chain291, align 8, !dbg !4485
  %bf.result.cast297 = zext i16 %bf.value293 to i32, !dbg !4485
  %229 = load ptr, ptr %buf.addr, align 8, !dbg !4486, !tbaa !2077
  %flush298 = getelementptr inbounds %struct.ngx_buf_s, ptr %229, i32 0, i32 9, !dbg !4487
  %bf.load299 = load i16, ptr %flush298, align 8, !dbg !4487
  %bf.lshr300 = lshr i16 %bf.load299, 5, !dbg !4487
  %bf.clear301 = and i16 %bf.lshr300, 1, !dbg !4487
  %bf.cast302 = zext i16 %bf.clear301 to i32, !dbg !4487
  %230 = load ptr, ptr %b, align 8, !dbg !4488, !tbaa !2077
  %flush303 = getelementptr inbounds %struct.ngx_buf_s, ptr %230, i32 0, i32 9, !dbg !4489
  %231 = trunc i32 %bf.cast302 to i16, !dbg !4490
  %bf.load304 = load i16, ptr %flush303, align 8, !dbg !4490
  %bf.value305 = and i16 %231, 1, !dbg !4490
  %bf.shl306 = shl i16 %bf.value305, 5, !dbg !4490
  %bf.clear307 = and i16 %bf.load304, -33, !dbg !4490
  %bf.set308 = or i16 %bf.clear307, %bf.shl306, !dbg !4490
  store i16 %bf.set308, ptr %flush303, align 8, !dbg !4490
  %bf.result.cast309 = zext i16 %bf.value305 to i32, !dbg !4490
  %232 = load ptr, ptr %buf.addr, align 8, !dbg !4491, !tbaa !2077
  %233 = load ptr, ptr %b, align 8, !dbg !4492, !tbaa !2077
  %shadow310 = getelementptr inbounds %struct.ngx_buf_s, ptr %233, i32 0, i32 8, !dbg !4493
  store ptr %232, ptr %shadow310, align 8, !dbg !4494, !tbaa !3002
  %234 = load ptr, ptr %out, align 8, !dbg !4495, !tbaa !2077
  store ptr %234, ptr %retval, align 8, !dbg !4496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4496

cleanup:                                          ; preds = %while.end, %if.then213, %if.then161, %if.end130, %if.then129, %if.end88, %if.then87, %if.then76, %if.then59, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !4497
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !4497
  %235 = load ptr, ptr %retval, align 8, !dbg !4497
  ret ptr %235, !dbg !4497
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_charset_recode(ptr noundef %b, ptr noundef %table) #0 !dbg !4498 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %last = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4502, metadata !DIExpression()), !dbg !4507
  store ptr %table, ptr %table.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !4503, metadata !DIExpression()), !dbg !4508
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !4509
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !4504, metadata !DIExpression()), !dbg !4510
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !4509
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !4505, metadata !DIExpression()), !dbg !4511
  %0 = load ptr, ptr %b.addr, align 8, !dbg !4512, !tbaa !2077
  %last1 = getelementptr inbounds %struct.ngx_buf_s, ptr %0, i32 0, i32 1, !dbg !4513
  %1 = load ptr, ptr %last1, align 8, !dbg !4513, !tbaa !2845
  store ptr %1, ptr %last, align 8, !dbg !4514, !tbaa !2077
  %2 = load ptr, ptr %b.addr, align 8, !dbg !4515, !tbaa !2077
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %2, i32 0, i32 0, !dbg !4517
  %3 = load ptr, ptr %pos, align 8, !dbg !4517, !tbaa !2847
  store ptr %3, ptr %p, align 8, !dbg !4518, !tbaa !2077
  br label %for.cond, !dbg !4519

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8, !dbg !4520, !tbaa !2077
  %5 = load ptr, ptr %last, align 8, !dbg !4522, !tbaa !2077
  %cmp = icmp ult ptr %4, %5, !dbg !4523
  br i1 %cmp, label %for.body, label %for.end, !dbg !4524

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !dbg !4525, !tbaa !2077
  %7 = load i8, ptr %6, align 1, !dbg !4528, !tbaa !3655
  %conv = zext i8 %7 to i32, !dbg !4528
  %8 = load ptr, ptr %table.addr, align 8, !dbg !4529, !tbaa !2077
  %9 = load ptr, ptr %p, align 8, !dbg !4530, !tbaa !2077
  %10 = load i8, ptr %9, align 1, !dbg !4531, !tbaa !3655
  %idxprom = zext i8 %10 to i64, !dbg !4529
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom, !dbg !4529
  %11 = load i8, ptr %arrayidx, align 1, !dbg !4529, !tbaa !3655
  %conv2 = zext i8 %11 to i32, !dbg !4529
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !4532
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4533

if.then:                                          ; preds = %for.body
  br label %recode, !dbg !4534

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4536

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %p, align 8, !dbg !4537, !tbaa !2077
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1, !dbg !4537
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4537, !tbaa !2077
  br label %for.cond, !dbg !4538, !llvm.loop !4539

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4541

recode:                                           ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !4506), !dbg !4542
  br label %do.body, !dbg !4543

do.body:                                          ; preds = %do.cond, %recode
  %13 = load ptr, ptr %p, align 8, !dbg !4544, !tbaa !2077
  %14 = load i8, ptr %13, align 1, !dbg !4547, !tbaa !3655
  %conv5 = zext i8 %14 to i32, !dbg !4547
  %15 = load ptr, ptr %table.addr, align 8, !dbg !4548, !tbaa !2077
  %16 = load ptr, ptr %p, align 8, !dbg !4549, !tbaa !2077
  %17 = load i8, ptr %16, align 1, !dbg !4550, !tbaa !3655
  %idxprom6 = zext i8 %17 to i64, !dbg !4548
  %arrayidx7 = getelementptr inbounds i8, ptr %15, i64 %idxprom6, !dbg !4548
  %18 = load i8, ptr %arrayidx7, align 1, !dbg !4548, !tbaa !3655
  %conv8 = zext i8 %18 to i32, !dbg !4548
  %cmp9 = icmp ne i32 %conv5, %conv8, !dbg !4551
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !4552

if.then11:                                        ; preds = %do.body
  %19 = load ptr, ptr %table.addr, align 8, !dbg !4553, !tbaa !2077
  %20 = load ptr, ptr %p, align 8, !dbg !4555, !tbaa !2077
  %21 = load i8, ptr %20, align 1, !dbg !4556, !tbaa !3655
  %idxprom12 = zext i8 %21 to i64, !dbg !4553
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 %idxprom12, !dbg !4553
  %22 = load i8, ptr %arrayidx13, align 1, !dbg !4553, !tbaa !3655
  %23 = load ptr, ptr %p, align 8, !dbg !4557, !tbaa !2077
  store i8 %22, ptr %23, align 1, !dbg !4558, !tbaa !3655
  br label %if.end14, !dbg !4559

if.end14:                                         ; preds = %if.then11, %do.body
  %24 = load ptr, ptr %p, align 8, !dbg !4560, !tbaa !2077
  %incdec.ptr15 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !4560
  store ptr %incdec.ptr15, ptr %p, align 8, !dbg !4560, !tbaa !2077
  br label %do.cond, !dbg !4561

do.cond:                                          ; preds = %if.end14
  %25 = load ptr, ptr %p, align 8, !dbg !4562, !tbaa !2077
  %26 = load ptr, ptr %last, align 8, !dbg !4563, !tbaa !2077
  %cmp16 = icmp ult ptr %25, %26, !dbg !4564
  br i1 %cmp16, label %do.body, label %do.end, !dbg !4561, !llvm.loop !4565

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %b.addr, align 8, !dbg !4567, !tbaa !2077
  %in_file = getelementptr inbounds %struct.ngx_buf_s, ptr %27, i32 0, i32 9, !dbg !4568
  %bf.load = load i16, ptr %in_file, align 8, !dbg !4569
  %bf.clear = and i16 %bf.load, -17, !dbg !4569
  %bf.set = or i16 %bf.clear, 0, !dbg !4569
  store i16 %bf.set, ptr %in_file, align 8, !dbg !4569
  store i64 1, ptr %retval, align 8, !dbg !4570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4570

cleanup:                                          ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !4571
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !4571
  %28 = load i64, ptr %retval, align 8, !dbg !4571
  ret i64 %28, !dbg !4571
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_get_buf(ptr noundef %pool, ptr noundef %ctx) #0 !dbg !4572 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4576, metadata !DIExpression()), !dbg !4579
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4577, metadata !DIExpression()), !dbg !4580
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #7, !dbg !4581
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !4578, metadata !DIExpression()), !dbg !4582
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4583, !tbaa !2077
  %free_bufs = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %0, i32 0, i32 4, !dbg !4584
  %1 = load ptr, ptr %free_bufs, align 8, !dbg !4584, !tbaa !3031
  store ptr %1, ptr %cl, align 8, !dbg !4585, !tbaa !2077
  %2 = load ptr, ptr %cl, align 8, !dbg !4586, !tbaa !2077
  %tobool = icmp ne ptr %2, null, !dbg !4586
  br i1 %tobool, label %if.then, label %if.end, !dbg !4588

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cl, align 8, !dbg !4589, !tbaa !2077
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %3, i32 0, i32 1, !dbg !4591
  %4 = load ptr, ptr %next, align 8, !dbg !4591, !tbaa !2875
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !4592, !tbaa !2077
  %free_bufs1 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %5, i32 0, i32 4, !dbg !4593
  store ptr %4, ptr %free_bufs1, align 8, !dbg !4594, !tbaa !3031
  %6 = load ptr, ptr %cl, align 8, !dbg !4595, !tbaa !2077
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %6, i32 0, i32 0, !dbg !4596
  %7 = load ptr, ptr %buf, align 8, !dbg !4596, !tbaa !2840
  %shadow = getelementptr inbounds %struct.ngx_buf_s, ptr %7, i32 0, i32 8, !dbg !4597
  store ptr null, ptr %shadow, align 8, !dbg !4598, !tbaa !3002
  %8 = load ptr, ptr %cl, align 8, !dbg !4599, !tbaa !2077
  %next2 = getelementptr inbounds %struct.ngx_chain_s, ptr %8, i32 0, i32 1, !dbg !4600
  store ptr null, ptr %next2, align 8, !dbg !4601, !tbaa !2875
  %9 = load ptr, ptr %cl, align 8, !dbg !4602, !tbaa !2077
  store ptr %9, ptr %retval, align 8, !dbg !4603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4603

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %pool.addr, align 8, !dbg !4604, !tbaa !2077
  %call = call ptr @ngx_alloc_chain_link(ptr noundef %10), !dbg !4605
  store ptr %call, ptr %cl, align 8, !dbg !4606, !tbaa !2077
  %11 = load ptr, ptr %cl, align 8, !dbg !4607, !tbaa !2077
  %cmp = icmp eq ptr %11, null, !dbg !4609
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4610

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4611

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %pool.addr, align 8, !dbg !4613, !tbaa !2077
  %call5 = call ptr @ngx_pcalloc(ptr noundef %12, i64 noundef 80), !dbg !4613
  %13 = load ptr, ptr %cl, align 8, !dbg !4614, !tbaa !2077
  %buf6 = getelementptr inbounds %struct.ngx_chain_s, ptr %13, i32 0, i32 0, !dbg !4615
  store ptr %call5, ptr %buf6, align 8, !dbg !4616, !tbaa !2840
  %14 = load ptr, ptr %cl, align 8, !dbg !4617, !tbaa !2077
  %buf7 = getelementptr inbounds %struct.ngx_chain_s, ptr %14, i32 0, i32 0, !dbg !4619
  %15 = load ptr, ptr %buf7, align 8, !dbg !4619, !tbaa !2840
  %cmp8 = icmp eq ptr %15, null, !dbg !4620
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4621

if.then9:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !4622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4622

if.end10:                                         ; preds = %if.end4
  %16 = load ptr, ptr %cl, align 8, !dbg !4624, !tbaa !2077
  %next11 = getelementptr inbounds %struct.ngx_chain_s, ptr %16, i32 0, i32 1, !dbg !4625
  store ptr null, ptr %next11, align 8, !dbg !4626, !tbaa !2875
  %17 = load ptr, ptr %cl, align 8, !dbg !4627, !tbaa !2077
  %buf12 = getelementptr inbounds %struct.ngx_chain_s, ptr %17, i32 0, i32 0, !dbg !4628
  %18 = load ptr, ptr %buf12, align 8, !dbg !4628, !tbaa !2840
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %18, i32 0, i32 6, !dbg !4629
  store ptr @ngx_http_charset_filter_module, ptr %tag, align 8, !dbg !4630, !tbaa !2992
  %19 = load ptr, ptr %cl, align 8, !dbg !4631, !tbaa !2077
  store ptr %19, ptr %retval, align 8, !dbg !4632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4632

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #7, !dbg !4633
  %20 = load ptr, ptr %retval, align 8, !dbg !4633
  ret ptr %20, !dbg !4633
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_get_buffer(ptr noundef %pool, ptr noundef %ctx, i64 noundef %size) #0 !dbg !4634 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4638, metadata !DIExpression()), !dbg !4644
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4639, metadata !DIExpression()), !dbg !4645
  store i64 %size, ptr %size.addr, align 8, !tbaa !2125
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4640, metadata !DIExpression()), !dbg !4646
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !4647
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !4641, metadata !DIExpression()), !dbg !4648
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #7, !dbg !4649
  tail call void @llvm.dbg.declare(metadata ptr %cl, metadata !4642, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #7, !dbg !4649
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !4643, metadata !DIExpression()), !dbg !4651
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4652, !tbaa !2077
  %free_buffers = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %0, i32 0, i32 5, !dbg !4654
  store ptr %free_buffers, ptr %ll, align 8, !dbg !4655, !tbaa !2077
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !4656, !tbaa !2077
  %free_buffers1 = getelementptr inbounds %struct.ngx_http_charset_ctx_t, ptr %1, i32 0, i32 5, !dbg !4657
  %2 = load ptr, ptr %free_buffers1, align 8, !dbg !4657, !tbaa !3020
  store ptr %2, ptr %cl, align 8, !dbg !4658, !tbaa !2077
  br label %for.cond, !dbg !4659

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cl, align 8, !dbg !4660, !tbaa !2077
  %tobool = icmp ne ptr %3, null, !dbg !4662
  br i1 %tobool, label %for.body, label %for.end, !dbg !4662

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cl, align 8, !dbg !4663, !tbaa !2077
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %4, i32 0, i32 0, !dbg !4665
  %5 = load ptr, ptr %buf, align 8, !dbg !4665, !tbaa !2840
  store ptr %5, ptr %b, align 8, !dbg !4666, !tbaa !2077
  %6 = load ptr, ptr %b, align 8, !dbg !4667, !tbaa !2077
  %end = getelementptr inbounds %struct.ngx_buf_s, ptr %6, i32 0, i32 5, !dbg !4669
  %7 = load ptr, ptr %end, align 8, !dbg !4669, !tbaa !3829
  %8 = load ptr, ptr %b, align 8, !dbg !4670, !tbaa !2077
  %start = getelementptr inbounds %struct.ngx_buf_s, ptr %8, i32 0, i32 4, !dbg !4671
  %9 = load ptr, ptr %start, align 8, !dbg !4671, !tbaa !4672
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !4673
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !4673
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4673
  %10 = load i64, ptr %size.addr, align 8, !dbg !4674, !tbaa !2125
  %cmp = icmp uge i64 %sub.ptr.sub, %10, !dbg !4675
  br i1 %cmp, label %if.then, label %if.end, !dbg !4676

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %cl, align 8, !dbg !4677, !tbaa !2077
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %11, i32 0, i32 1, !dbg !4679
  %12 = load ptr, ptr %next, align 8, !dbg !4679, !tbaa !2875
  %13 = load ptr, ptr %ll, align 8, !dbg !4680, !tbaa !2077
  store ptr %12, ptr %13, align 8, !dbg !4681, !tbaa !2077
  %14 = load ptr, ptr %cl, align 8, !dbg !4682, !tbaa !2077
  %next2 = getelementptr inbounds %struct.ngx_chain_s, ptr %14, i32 0, i32 1, !dbg !4683
  store ptr null, ptr %next2, align 8, !dbg !4684, !tbaa !2875
  %15 = load ptr, ptr %b, align 8, !dbg !4685, !tbaa !2077
  %start3 = getelementptr inbounds %struct.ngx_buf_s, ptr %15, i32 0, i32 4, !dbg !4686
  %16 = load ptr, ptr %start3, align 8, !dbg !4686, !tbaa !4672
  %17 = load ptr, ptr %b, align 8, !dbg !4687, !tbaa !2077
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %17, i32 0, i32 0, !dbg !4688
  store ptr %16, ptr %pos, align 8, !dbg !4689, !tbaa !2847
  %18 = load ptr, ptr %b, align 8, !dbg !4690, !tbaa !2077
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %18, i32 0, i32 9, !dbg !4691
  %bf.load = load i16, ptr %temporary, align 8, !dbg !4692
  %bf.clear = and i16 %bf.load, -2, !dbg !4692
  %bf.set = or i16 %bf.clear, 1, !dbg !4692
  store i16 %bf.set, ptr %temporary, align 8, !dbg !4692
  %19 = load ptr, ptr %b, align 8, !dbg !4693, !tbaa !2077
  %shadow = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 8, !dbg !4694
  store ptr null, ptr %shadow, align 8, !dbg !4695, !tbaa !3002
  %20 = load ptr, ptr %cl, align 8, !dbg !4696, !tbaa !2077
  store ptr %20, ptr %retval, align 8, !dbg !4697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4697

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4698

for.inc:                                          ; preds = %if.end
  %21 = load ptr, ptr %cl, align 8, !dbg !4699, !tbaa !2077
  %next4 = getelementptr inbounds %struct.ngx_chain_s, ptr %21, i32 0, i32 1, !dbg !4700
  store ptr %next4, ptr %ll, align 8, !dbg !4701, !tbaa !2077
  %22 = load ptr, ptr %cl, align 8, !dbg !4702, !tbaa !2077
  %next5 = getelementptr inbounds %struct.ngx_chain_s, ptr %22, i32 0, i32 1, !dbg !4703
  %23 = load ptr, ptr %next5, align 8, !dbg !4703, !tbaa !2875
  store ptr %23, ptr %cl, align 8, !dbg !4704, !tbaa !2077
  br label %for.cond, !dbg !4705, !llvm.loop !4706

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %pool.addr, align 8, !dbg !4708, !tbaa !2077
  %call = call ptr @ngx_alloc_chain_link(ptr noundef %24), !dbg !4709
  store ptr %call, ptr %cl, align 8, !dbg !4710, !tbaa !2077
  %25 = load ptr, ptr %cl, align 8, !dbg !4711, !tbaa !2077
  %cmp6 = icmp eq ptr %25, null, !dbg !4713
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4714

if.then7:                                         ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !4715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4715

if.end8:                                          ; preds = %for.end
  %26 = load ptr, ptr %pool.addr, align 8, !dbg !4717, !tbaa !2077
  %27 = load i64, ptr %size.addr, align 8, !dbg !4718, !tbaa !2125
  %call9 = call ptr @ngx_create_temp_buf(ptr noundef %26, i64 noundef %27), !dbg !4719
  %28 = load ptr, ptr %cl, align 8, !dbg !4720, !tbaa !2077
  %buf10 = getelementptr inbounds %struct.ngx_chain_s, ptr %28, i32 0, i32 0, !dbg !4721
  store ptr %call9, ptr %buf10, align 8, !dbg !4722, !tbaa !2840
  %29 = load ptr, ptr %cl, align 8, !dbg !4723, !tbaa !2077
  %buf11 = getelementptr inbounds %struct.ngx_chain_s, ptr %29, i32 0, i32 0, !dbg !4725
  %30 = load ptr, ptr %buf11, align 8, !dbg !4725, !tbaa !2840
  %cmp12 = icmp eq ptr %30, null, !dbg !4726
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4727

if.then13:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8, !dbg !4728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4728

if.end14:                                         ; preds = %if.end8
  %31 = load ptr, ptr %cl, align 8, !dbg !4730, !tbaa !2077
  %next15 = getelementptr inbounds %struct.ngx_chain_s, ptr %31, i32 0, i32 1, !dbg !4731
  store ptr null, ptr %next15, align 8, !dbg !4732, !tbaa !2875
  %32 = load ptr, ptr %cl, align 8, !dbg !4733, !tbaa !2077
  %buf16 = getelementptr inbounds %struct.ngx_chain_s, ptr %32, i32 0, i32 0, !dbg !4734
  %33 = load ptr, ptr %buf16, align 8, !dbg !4734, !tbaa !2840
  %temporary17 = getelementptr inbounds %struct.ngx_buf_s, ptr %33, i32 0, i32 9, !dbg !4735
  %bf.load18 = load i16, ptr %temporary17, align 8, !dbg !4736
  %bf.clear19 = and i16 %bf.load18, -2, !dbg !4736
  %bf.set20 = or i16 %bf.clear19, 1, !dbg !4736
  store i16 %bf.set20, ptr %temporary17, align 8, !dbg !4736
  %34 = load ptr, ptr %cl, align 8, !dbg !4737, !tbaa !2077
  %buf21 = getelementptr inbounds %struct.ngx_chain_s, ptr %34, i32 0, i32 0, !dbg !4738
  %35 = load ptr, ptr %buf21, align 8, !dbg !4738, !tbaa !2840
  %tag = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 6, !dbg !4739
  store ptr @ngx_http_charset_filter_module, ptr %tag, align 8, !dbg !4740, !tbaa !2992
  %36 = load ptr, ptr %cl, align 8, !dbg !4741, !tbaa !2077
  store ptr %36, ptr %retval, align 8, !dbg !4742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4742

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #7, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #7, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !4743
  %37 = load ptr, ptr %retval, align 8, !dbg !4743
  ret ptr %37, !dbg !4743
}

declare !dbg !4744 ptr @ngx_create_temp_buf(ptr noundef, i64 noundef) #2

declare !dbg !4747 i32 @ngx_utf8_decode(ptr noundef, i64 noundef) #2

declare !dbg !4750 ptr @ngx_sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ngx_array_init(ptr noundef %array, ptr noundef %pool, i64 noundef %n, i64 noundef %size) #3 !dbg !4753 {
entry:
  %retval = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !4757, metadata !DIExpression()), !dbg !4761
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !4758, metadata !DIExpression()), !dbg !4762
  store i64 %n, ptr %n.addr, align 8, !tbaa !2125
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4759, metadata !DIExpression()), !dbg !4763
  store i64 %size, ptr %size.addr, align 8, !tbaa !2125
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4760, metadata !DIExpression()), !dbg !4764
  %0 = load ptr, ptr %array.addr, align 8, !dbg !4765, !tbaa !2077
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %0, i32 0, i32 1, !dbg !4766
  store i64 0, ptr %nelts, align 8, !dbg !4767, !tbaa !4768
  %1 = load i64, ptr %size.addr, align 8, !dbg !4769, !tbaa !2125
  %2 = load ptr, ptr %array.addr, align 8, !dbg !4770, !tbaa !2077
  %size1 = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 2, !dbg !4771
  store i64 %1, ptr %size1, align 8, !dbg !4772, !tbaa !4773
  %3 = load i64, ptr %n.addr, align 8, !dbg !4774, !tbaa !2125
  %4 = load ptr, ptr %array.addr, align 8, !dbg !4775, !tbaa !2077
  %nalloc = getelementptr inbounds %struct.ngx_array_t, ptr %4, i32 0, i32 3, !dbg !4776
  store i64 %3, ptr %nalloc, align 8, !dbg !4777, !tbaa !4778
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !4779, !tbaa !2077
  %6 = load ptr, ptr %array.addr, align 8, !dbg !4780, !tbaa !2077
  %pool2 = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 4, !dbg !4781
  store ptr %5, ptr %pool2, align 8, !dbg !4782, !tbaa !4783
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !4784, !tbaa !2077
  %8 = load i64, ptr %n.addr, align 8, !dbg !4785, !tbaa !2125
  %9 = load i64, ptr %size.addr, align 8, !dbg !4786, !tbaa !2125
  %mul = mul i64 %8, %9, !dbg !4787
  %call = call ptr @ngx_palloc(ptr noundef %7, i64 noundef %mul), !dbg !4788
  %10 = load ptr, ptr %array.addr, align 8, !dbg !4789, !tbaa !2077
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %10, i32 0, i32 0, !dbg !4790
  store ptr %call, ptr %elts, align 8, !dbg !4791, !tbaa !4792
  %11 = load ptr, ptr %array.addr, align 8, !dbg !4793, !tbaa !2077
  %elts3 = getelementptr inbounds %struct.ngx_array_t, ptr %11, i32 0, i32 0, !dbg !4795
  %12 = load ptr, ptr %elts3, align 8, !dbg !4795, !tbaa !4792
  %cmp = icmp eq ptr %12, null, !dbg !4796
  br i1 %cmp, label %if.then, label %if.end, !dbg !4797

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4798
  br label %return, !dbg !4798

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !4800
  br label %return, !dbg !4800

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, ptr %retval, align 8, !dbg !4801
  ret i64 %13, !dbg !4801
}

declare !dbg !4802 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

declare !dbg !4803 ptr @ngx_http_merge_types(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !4807 ptr @ngx_array_push(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_set_charset_slot(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !4810 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %value = alloca ptr, align 8
  %var = alloca %struct.ngx_str_t, align 8
  %mcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !4812, metadata !DIExpression()), !dbg !4820
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4813, metadata !DIExpression()), !dbg !4821
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !4814, metadata !DIExpression()), !dbg !4822
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !4823
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !4815, metadata !DIExpression()), !dbg !4824
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !4825, !tbaa !2077
  store ptr %0, ptr %p, align 8, !dbg !4824, !tbaa !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #7, !dbg !4826
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !4816, metadata !DIExpression()), !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !4828
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !4817, metadata !DIExpression()), !dbg !4829
  call void @llvm.lifetime.start.p0(i64 16, ptr %var) #7, !dbg !4828
  tail call void @llvm.dbg.declare(metadata ptr %var, metadata !4818, metadata !DIExpression()), !dbg !4830
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !4831
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !4819, metadata !DIExpression()), !dbg !4832
  %1 = load ptr, ptr %p, align 8, !dbg !4833, !tbaa !2077
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !4834, !tbaa !2077
  %offset = getelementptr inbounds %struct.ngx_command_s, ptr %2, i32 0, i32 4, !dbg !4835
  %3 = load i64, ptr %offset, align 8, !dbg !4835, !tbaa !4836
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %3, !dbg !4838
  store ptr %add.ptr, ptr %cp, align 8, !dbg !4839, !tbaa !2077
  %4 = load ptr, ptr %cp, align 8, !dbg !4840, !tbaa !2077
  %5 = load i64, ptr %4, align 8, !dbg !4842, !tbaa !2125
  %cmp = icmp ne i64 %5, -1, !dbg !4843
  br i1 %cmp, label %if.then, label %if.end, !dbg !4844

if.then:                                          ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !4845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4845

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !4847, !tbaa !2077
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %6, i32 0, i32 1, !dbg !4848
  %7 = load ptr, ptr %args, align 8, !dbg !4848, !tbaa !4849
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %7, i32 0, i32 0, !dbg !4850
  %8 = load ptr, ptr %elts, align 8, !dbg !4850, !tbaa !4792
  store ptr %8, ptr %value, align 8, !dbg !4851, !tbaa !2077
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !4852, !tbaa !2077
  %offset1 = getelementptr inbounds %struct.ngx_command_s, ptr %9, i32 0, i32 4, !dbg !4854
  %10 = load i64, ptr %offset1, align 8, !dbg !4854, !tbaa !4836
  %cmp2 = icmp eq i64 %10, 0, !dbg !4855
  br i1 %cmp2, label %land.lhs.true, label %if.end5, !dbg !4856

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %value, align 8, !dbg !4857, !tbaa !2077
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %11, i64 1, !dbg !4857
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !4857
  %12 = load ptr, ptr %data, align 8, !dbg !4857, !tbaa !2657
  %call = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.16) #8, !dbg !4857
  %cmp3 = icmp eq i32 %call, 0, !dbg !4858
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4859

if.then4:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %cp, align 8, !dbg !4860, !tbaa !2077
  store i64 -2, ptr %13, align 8, !dbg !4862, !tbaa !2125
  store ptr null, ptr %retval, align 8, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4863

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %value, align 8, !dbg !4864, !tbaa !2077
  %arrayidx6 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i64 1, !dbg !4864
  %data7 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx6, i32 0, i32 1, !dbg !4866
  %15 = load ptr, ptr %data7, align 8, !dbg !4866, !tbaa !2657
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !4864
  %16 = load i8, ptr %arrayidx8, align 1, !dbg !4864, !tbaa !3655
  %conv = zext i8 %16 to i32, !dbg !4864
  %cmp9 = icmp eq i32 %conv, 36, !dbg !4867
  br i1 %cmp9, label %if.then11, label %if.end23, !dbg !4868

if.then11:                                        ; preds = %if.end5
  %17 = load ptr, ptr %value, align 8, !dbg !4869, !tbaa !2077
  %arrayidx12 = getelementptr inbounds %struct.ngx_str_t, ptr %17, i64 1, !dbg !4869
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx12, i32 0, i32 0, !dbg !4871
  %18 = load i64, ptr %len, align 8, !dbg !4871, !tbaa !2660
  %sub = sub i64 %18, 1, !dbg !4872
  %len13 = getelementptr inbounds %struct.ngx_str_t, ptr %var, i32 0, i32 0, !dbg !4873
  store i64 %sub, ptr %len13, align 8, !dbg !4874, !tbaa !2660
  %19 = load ptr, ptr %value, align 8, !dbg !4875, !tbaa !2077
  %arrayidx14 = getelementptr inbounds %struct.ngx_str_t, ptr %19, i64 1, !dbg !4875
  %data15 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx14, i32 0, i32 1, !dbg !4876
  %20 = load ptr, ptr %data15, align 8, !dbg !4876, !tbaa !2657
  %add.ptr16 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4877
  %data17 = getelementptr inbounds %struct.ngx_str_t, ptr %var, i32 0, i32 1, !dbg !4878
  store ptr %add.ptr16, ptr %data17, align 8, !dbg !4879, !tbaa !2657
  %21 = load ptr, ptr %cf.addr, align 8, !dbg !4880, !tbaa !2077
  %call18 = call i64 @ngx_http_get_variable_index(ptr noundef %21, ptr noundef %var), !dbg !4881
  %22 = load ptr, ptr %cp, align 8, !dbg !4882, !tbaa !2077
  store i64 %call18, ptr %22, align 8, !dbg !4883, !tbaa !2125
  %23 = load ptr, ptr %cp, align 8, !dbg !4884, !tbaa !2077
  %24 = load i64, ptr %23, align 8, !dbg !4886, !tbaa !2125
  %cmp19 = icmp eq i64 %24, -1, !dbg !4887
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4888

if.then21:                                        ; preds = %if.then11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4889

if.end22:                                         ; preds = %if.then11
  %25 = load ptr, ptr %cp, align 8, !dbg !4891, !tbaa !2077
  %26 = load i64, ptr %25, align 8, !dbg !4892, !tbaa !2125
  %add = add nsw i64 %26, 65536, !dbg !4892
  store i64 %add, ptr %25, align 8, !dbg !4892, !tbaa !2125
  store ptr null, ptr %retval, align 8, !dbg !4893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4893

if.end23:                                         ; preds = %if.end5
  %27 = load ptr, ptr %cf.addr, align 8, !dbg !4894, !tbaa !2077
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %27, i32 0, i32 7, !dbg !4894
  %28 = load ptr, ptr %ctx, align 8, !dbg !4894, !tbaa !2099
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %28, i32 0, i32 0, !dbg !4894
  %29 = load ptr, ptr %main_conf, align 8, !dbg !4894, !tbaa !2102
  %30 = load i64, ptr @ngx_http_charset_filter_module, align 8, !dbg !4894, !tbaa !2104
  %arrayidx24 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !4894
  %31 = load ptr, ptr %arrayidx24, align 8, !dbg !4894, !tbaa !2077
  store ptr %31, ptr %mcf, align 8, !dbg !4895, !tbaa !2077
  %32 = load ptr, ptr %mcf, align 8, !dbg !4896, !tbaa !2077
  %charsets = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %32, i32 0, i32 0, !dbg !4897
  %33 = load ptr, ptr %value, align 8, !dbg !4898, !tbaa !2077
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !4898
  %call26 = call i64 @ngx_http_add_charset(ptr noundef %charsets, ptr noundef %arrayidx25), !dbg !4899
  %34 = load ptr, ptr %cp, align 8, !dbg !4900, !tbaa !2077
  store i64 %call26, ptr %34, align 8, !dbg !4901, !tbaa !2125
  %35 = load ptr, ptr %cp, align 8, !dbg !4902, !tbaa !2077
  %36 = load i64, ptr %35, align 8, !dbg !4904, !tbaa !2125
  %cmp27 = icmp eq i64 %36, -1, !dbg !4905
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4906

if.then29:                                        ; preds = %if.end23
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4907

if.end30:                                         ; preds = %if.end23
  store ptr null, ptr %retval, align 8, !dbg !4909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4909

cleanup:                                          ; preds = %if.end30, %if.then29, %if.end22, %if.then21, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 16, ptr %var) #7, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #7, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !4910
  %37 = load ptr, ptr %retval, align 8, !dbg !4910
  ret ptr %37, !dbg !4910
}

declare ptr @ngx_conf_set_flag_slot(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ngx_http_types_slot(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_map_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !4911 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %mcf = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %p = alloca ptr, align 8
  %dst2src = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %src = alloca i64, align 8
  %dst = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %value = alloca ptr, align 8
  %pvcf = alloca %struct.ngx_conf_s, align 8
  %charset = alloca ptr, align 8
  %table = alloca ptr, align 8
  %ctx = alloca %struct.ngx_http_charset_conf_ctx_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !4913, metadata !DIExpression()), !dbg !4936
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4914, metadata !DIExpression()), !dbg !4937
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !4915, metadata !DIExpression()), !dbg !4938
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcf) #7, !dbg !4939
  tail call void @llvm.dbg.declare(metadata ptr %mcf, metadata !4916, metadata !DIExpression()), !dbg !4940
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !4941, !tbaa !2077
  store ptr %0, ptr %mcf, align 8, !dbg !4940, !tbaa !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #7, !dbg !4942
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !4917, metadata !DIExpression()), !dbg !4943
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !4944
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !4918, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst2src) #7, !dbg !4944
  tail call void @llvm.dbg.declare(metadata ptr %dst2src, metadata !4919, metadata !DIExpression()), !dbg !4946
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #7, !dbg !4944
  tail call void @llvm.dbg.declare(metadata ptr %pp, metadata !4920, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !4948
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !4921, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #7, !dbg !4948
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !4922, metadata !DIExpression()), !dbg !4950
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !4951
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4923, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !4951
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !4924, metadata !DIExpression()), !dbg !4953
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !4954
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !4925, metadata !DIExpression()), !dbg !4955
  call void @llvm.lifetime.start.p0(i64 96, ptr %pvcf) #7, !dbg !4956
  tail call void @llvm.dbg.declare(metadata ptr %pvcf, metadata !4926, metadata !DIExpression()), !dbg !4957
  call void @llvm.lifetime.start.p0(i64 8, ptr %charset) #7, !dbg !4958
  tail call void @llvm.dbg.declare(metadata ptr %charset, metadata !4927, metadata !DIExpression()), !dbg !4959
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #7, !dbg !4960
  tail call void @llvm.dbg.declare(metadata ptr %table, metadata !4928, metadata !DIExpression()), !dbg !4961
  call void @llvm.lifetime.start.p0(i64 24, ptr %ctx) #7, !dbg !4962
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4929, metadata !DIExpression()), !dbg !4963
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !4964, !tbaa !2077
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !4965
  %2 = load ptr, ptr %args, align 8, !dbg !4965, !tbaa !4849
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !4966
  %3 = load ptr, ptr %elts, align 8, !dbg !4966, !tbaa !4792
  store ptr %3, ptr %value, align 8, !dbg !4967, !tbaa !2077
  %4 = load ptr, ptr %mcf, align 8, !dbg !4968, !tbaa !2077
  %charsets = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %4, i32 0, i32 0, !dbg !4969
  %5 = load ptr, ptr %value, align 8, !dbg !4970, !tbaa !2077
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %5, i64 1, !dbg !4970
  %call = call i64 @ngx_http_add_charset(ptr noundef %charsets, ptr noundef %arrayidx), !dbg !4971
  store i64 %call, ptr %src, align 8, !dbg !4972, !tbaa !2125
  %6 = load i64, ptr %src, align 8, !dbg !4973, !tbaa !2125
  %cmp = icmp eq i64 %6, -1, !dbg !4975
  br i1 %cmp, label %if.then, label %if.end, !dbg !4976

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4977

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %mcf, align 8, !dbg !4979, !tbaa !2077
  %charsets1 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %7, i32 0, i32 0, !dbg !4980
  %8 = load ptr, ptr %value, align 8, !dbg !4981, !tbaa !2077
  %arrayidx2 = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 2, !dbg !4981
  %call3 = call i64 @ngx_http_add_charset(ptr noundef %charsets1, ptr noundef %arrayidx2), !dbg !4982
  store i64 %call3, ptr %dst, align 8, !dbg !4983, !tbaa !2125
  %9 = load i64, ptr %dst, align 8, !dbg !4984, !tbaa !2125
  %cmp4 = icmp eq i64 %9, -1, !dbg !4986
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4987

if.then5:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4988

if.end6:                                          ; preds = %if.end
  %10 = load i64, ptr %src, align 8, !dbg !4990, !tbaa !2125
  %11 = load i64, ptr %dst, align 8, !dbg !4992, !tbaa !2125
  %cmp7 = icmp eq i64 %10, %11, !dbg !4993
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !4994

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %cf.addr, align 8, !dbg !4995, !tbaa !2077
  %13 = load ptr, ptr %value, align 8, !dbg !4997, !tbaa !2077
  %arrayidx9 = getelementptr inbounds %struct.ngx_str_t, ptr %13, i64 1, !dbg !4997
  %14 = load ptr, ptr %value, align 8, !dbg !4998, !tbaa !2077
  %arrayidx10 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i64 2, !dbg !4998
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %12, i32 noundef 0, ptr noundef @.str.18, ptr noundef %arrayidx9, ptr noundef %arrayidx10), !dbg !4999
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5000

if.end11:                                         ; preds = %if.end6
  %15 = load ptr, ptr %mcf, align 8, !dbg !5001, !tbaa !2077
  %tables = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %15, i32 0, i32 1, !dbg !5002
  %elts12 = getelementptr inbounds %struct.ngx_array_t, ptr %tables, i32 0, i32 0, !dbg !5003
  %16 = load ptr, ptr %elts12, align 8, !dbg !5003, !tbaa !2117
  store ptr %16, ptr %table, align 8, !dbg !5004, !tbaa !2077
  store i64 0, ptr %i, align 8, !dbg !5005, !tbaa !2125
  br label %for.cond, !dbg !5007

for.cond:                                         ; preds = %for.inc, %if.end11
  %17 = load i64, ptr %i, align 8, !dbg !5008, !tbaa !2125
  %18 = load ptr, ptr %mcf, align 8, !dbg !5010, !tbaa !2077
  %tables13 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %18, i32 0, i32 1, !dbg !5011
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %tables13, i32 0, i32 1, !dbg !5012
  %19 = load i64, ptr %nelts, align 8, !dbg !5012, !tbaa !2148
  %cmp14 = icmp ult i64 %17, %19, !dbg !5013
  br i1 %cmp14, label %for.body, label %for.end, !dbg !5014

for.body:                                         ; preds = %for.cond
  %20 = load i64, ptr %src, align 8, !dbg !5015, !tbaa !2125
  %21 = load ptr, ptr %table, align 8, !dbg !5018, !tbaa !2077
  %src15 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %21, i32 0, i32 0, !dbg !5019
  %22 = load i64, ptr %src15, align 8, !dbg !5019, !tbaa !2157
  %cmp16 = icmp eq i64 %20, %22, !dbg !5020
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false, !dbg !5021

land.lhs.true:                                    ; preds = %for.body
  %23 = load i64, ptr %dst, align 8, !dbg !5022, !tbaa !2125
  %24 = load ptr, ptr %table, align 8, !dbg !5023, !tbaa !2077
  %dst17 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %24, i32 0, i32 1, !dbg !5024
  %25 = load i64, ptr %dst17, align 8, !dbg !5024, !tbaa !2168
  %cmp18 = icmp eq i64 %23, %25, !dbg !5025
  br i1 %cmp18, label %if.then24, label %lor.lhs.false, !dbg !5026

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %26 = load i64, ptr %src, align 8, !dbg !5027, !tbaa !2125
  %27 = load ptr, ptr %table, align 8, !dbg !5028, !tbaa !2077
  %dst19 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %27, i32 0, i32 1, !dbg !5029
  %28 = load i64, ptr %dst19, align 8, !dbg !5029, !tbaa !2168
  %cmp20 = icmp eq i64 %26, %28, !dbg !5030
  br i1 %cmp20, label %land.lhs.true21, label %if.end27, !dbg !5031

land.lhs.true21:                                  ; preds = %lor.lhs.false
  %29 = load i64, ptr %dst, align 8, !dbg !5032, !tbaa !2125
  %30 = load ptr, ptr %table, align 8, !dbg !5033, !tbaa !2077
  %src22 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %30, i32 0, i32 0, !dbg !5034
  %31 = load i64, ptr %src22, align 8, !dbg !5034, !tbaa !2157
  %cmp23 = icmp eq i64 %29, %31, !dbg !5035
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !5036

if.then24:                                        ; preds = %land.lhs.true21, %land.lhs.true
  %32 = load ptr, ptr %cf.addr, align 8, !dbg !5037, !tbaa !2077
  %33 = load ptr, ptr %value, align 8, !dbg !5039, !tbaa !2077
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !5039
  %34 = load ptr, ptr %value, align 8, !dbg !5040, !tbaa !2077
  %arrayidx26 = getelementptr inbounds %struct.ngx_str_t, ptr %34, i64 2, !dbg !5040
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %32, i32 noundef 0, ptr noundef @.str.19, ptr noundef %arrayidx25, ptr noundef %arrayidx26), !dbg !5041
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5042

if.end27:                                         ; preds = %land.lhs.true21, %lor.lhs.false
  br label %for.inc, !dbg !5043

for.inc:                                          ; preds = %if.end27
  %35 = load i64, ptr %i, align 8, !dbg !5044, !tbaa !2125
  %inc = add i64 %35, 1, !dbg !5044
  store i64 %inc, ptr %i, align 8, !dbg !5044, !tbaa !2125
  br label %for.cond, !dbg !5045, !llvm.loop !5046

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %mcf, align 8, !dbg !5048, !tbaa !2077
  %tables28 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %36, i32 0, i32 1, !dbg !5049
  %call29 = call ptr @ngx_array_push(ptr noundef %tables28), !dbg !5050
  store ptr %call29, ptr %table, align 8, !dbg !5051, !tbaa !2077
  %37 = load ptr, ptr %table, align 8, !dbg !5052, !tbaa !2077
  %cmp30 = icmp eq ptr %37, null, !dbg !5054
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5055

if.then31:                                        ; preds = %for.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5056

if.end32:                                         ; preds = %for.end
  %38 = load i64, ptr %src, align 8, !dbg !5058, !tbaa !2125
  %39 = load ptr, ptr %table, align 8, !dbg !5059, !tbaa !2077
  %src33 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %39, i32 0, i32 0, !dbg !5060
  store i64 %38, ptr %src33, align 8, !dbg !5061, !tbaa !2157
  %40 = load i64, ptr %dst, align 8, !dbg !5062, !tbaa !2125
  %41 = load ptr, ptr %table, align 8, !dbg !5063, !tbaa !2077
  %dst34 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %41, i32 0, i32 1, !dbg !5064
  store i64 %40, ptr %dst34, align 8, !dbg !5065, !tbaa !2168
  %42 = load ptr, ptr %value, align 8, !dbg !5066, !tbaa !2077
  %arrayidx35 = getelementptr inbounds %struct.ngx_str_t, ptr %42, i64 2, !dbg !5066
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx35, i32 0, i32 1, !dbg !5068
  %43 = load ptr, ptr %data, align 8, !dbg !5068, !tbaa !2657
  %call36 = call i64 @ngx_strcasecmp(ptr noundef %43, ptr noundef @.str.17), !dbg !5069
  %cmp37 = icmp eq i64 %call36, 0, !dbg !5070
  br i1 %cmp37, label %if.then38, label %if.else, !dbg !5071

if.then38:                                        ; preds = %if.end32
  %44 = load ptr, ptr %cf.addr, align 8, !dbg !5072, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %44, i32 0, i32 3, !dbg !5074
  %45 = load ptr, ptr %pool, align 8, !dbg !5074, !tbaa !2237
  %call39 = call ptr @ngx_pcalloc(ptr noundef %45, i64 noundef 1024), !dbg !5075
  %46 = load ptr, ptr %table, align 8, !dbg !5076, !tbaa !2077
  %src2dst = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %46, i32 0, i32 2, !dbg !5077
  store ptr %call39, ptr %src2dst, align 8, !dbg !5078, !tbaa !2295
  %47 = load ptr, ptr %table, align 8, !dbg !5079, !tbaa !2077
  %src2dst40 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %47, i32 0, i32 2, !dbg !5081
  %48 = load ptr, ptr %src2dst40, align 8, !dbg !5081, !tbaa !2295
  %cmp41 = icmp eq ptr %48, null, !dbg !5082
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !5083

if.then42:                                        ; preds = %if.then38
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5084

if.end43:                                         ; preds = %if.then38
  %49 = load ptr, ptr %cf.addr, align 8, !dbg !5086, !tbaa !2077
  %pool44 = getelementptr inbounds %struct.ngx_conf_s, ptr %49, i32 0, i32 3, !dbg !5087
  %50 = load ptr, ptr %pool44, align 8, !dbg !5087, !tbaa !2237
  %call45 = call ptr @ngx_pcalloc(ptr noundef %50, i64 noundef 2048), !dbg !5088
  %51 = load ptr, ptr %table, align 8, !dbg !5089, !tbaa !2077
  %dst2src46 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %51, i32 0, i32 3, !dbg !5090
  store ptr %call45, ptr %dst2src46, align 8, !dbg !5091, !tbaa !2304
  %52 = load ptr, ptr %table, align 8, !dbg !5092, !tbaa !2077
  %dst2src47 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %52, i32 0, i32 3, !dbg !5094
  %53 = load ptr, ptr %dst2src47, align 8, !dbg !5094, !tbaa !2304
  %cmp48 = icmp eq ptr %53, null, !dbg !5095
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5096

if.then49:                                        ; preds = %if.end43
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

if.end50:                                         ; preds = %if.end43
  %54 = load ptr, ptr %cf.addr, align 8, !dbg !5099, !tbaa !2077
  %pool51 = getelementptr inbounds %struct.ngx_conf_s, ptr %54, i32 0, i32 3, !dbg !5100
  %55 = load ptr, ptr %pool51, align 8, !dbg !5100, !tbaa !2237
  %call52 = call ptr @ngx_pcalloc(ptr noundef %55, i64 noundef 256), !dbg !5101
  store ptr %call52, ptr %dst2src, align 8, !dbg !5102, !tbaa !2077
  %56 = load ptr, ptr %dst2src, align 8, !dbg !5103, !tbaa !2077
  %cmp53 = icmp eq ptr %56, null, !dbg !5105
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !5106

if.then54:                                        ; preds = %if.end50
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5107

if.end55:                                         ; preds = %if.end50
  %57 = load ptr, ptr %table, align 8, !dbg !5109, !tbaa !2077
  %dst2src56 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %57, i32 0, i32 3, !dbg !5110
  %58 = load ptr, ptr %dst2src56, align 8, !dbg !5110, !tbaa !2304
  %arrayidx57 = getelementptr inbounds i8, ptr %58, i64 0, !dbg !5109
  store ptr %arrayidx57, ptr %pp, align 8, !dbg !5111, !tbaa !2077
  %59 = load ptr, ptr %dst2src, align 8, !dbg !5112, !tbaa !2077
  %60 = load ptr, ptr %pp, align 8, !dbg !5113, !tbaa !2077
  %arrayidx58 = getelementptr inbounds ptr, ptr %60, i64 0, !dbg !5113
  store ptr %59, ptr %arrayidx58, align 8, !dbg !5114, !tbaa !2077
  store i64 0, ptr %i, align 8, !dbg !5115, !tbaa !2125
  br label %for.cond59, !dbg !5117

for.cond59:                                       ; preds = %for.inc68, %if.end55
  %61 = load i64, ptr %i, align 8, !dbg !5118, !tbaa !2125
  %cmp60 = icmp ult i64 %61, 128, !dbg !5120
  br i1 %cmp60, label %for.body61, label %for.end70, !dbg !5121

for.body61:                                       ; preds = %for.cond59
  %62 = load ptr, ptr %table, align 8, !dbg !5122, !tbaa !2077
  %src2dst62 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %62, i32 0, i32 2, !dbg !5124
  %63 = load ptr, ptr %src2dst62, align 8, !dbg !5124, !tbaa !2295
  %64 = load i64, ptr %i, align 8, !dbg !5125, !tbaa !2125
  %mul = mul i64 %64, 4, !dbg !5126
  %arrayidx63 = getelementptr inbounds i8, ptr %63, i64 %mul, !dbg !5122
  store ptr %arrayidx63, ptr %p, align 8, !dbg !5127, !tbaa !2077
  %65 = load ptr, ptr %p, align 8, !dbg !5128, !tbaa !2077
  %arrayidx64 = getelementptr inbounds i8, ptr %65, i64 0, !dbg !5128
  store i8 1, ptr %arrayidx64, align 1, !dbg !5129, !tbaa !3655
  %66 = load i64, ptr %i, align 8, !dbg !5130, !tbaa !2125
  %conv = trunc i64 %66 to i8, !dbg !5131
  %67 = load ptr, ptr %p, align 8, !dbg !5132, !tbaa !2077
  %arrayidx65 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !5132
  store i8 %conv, ptr %arrayidx65, align 1, !dbg !5133, !tbaa !3655
  %68 = load i64, ptr %i, align 8, !dbg !5134, !tbaa !2125
  %conv66 = trunc i64 %68 to i8, !dbg !5135
  %69 = load ptr, ptr %dst2src, align 8, !dbg !5136, !tbaa !2077
  %70 = load i64, ptr %i, align 8, !dbg !5137, !tbaa !2125
  %arrayidx67 = getelementptr inbounds i8, ptr %69, i64 %70, !dbg !5136
  store i8 %conv66, ptr %arrayidx67, align 1, !dbg !5138, !tbaa !3655
  br label %for.inc68, !dbg !5139

for.inc68:                                        ; preds = %for.body61
  %71 = load i64, ptr %i, align 8, !dbg !5140, !tbaa !2125
  %inc69 = add i64 %71, 1, !dbg !5140
  store i64 %inc69, ptr %i, align 8, !dbg !5140, !tbaa !2125
  br label %for.cond59, !dbg !5141, !llvm.loop !5142

for.end70:                                        ; preds = %for.cond59
  br label %for.cond71, !dbg !5144

for.cond71:                                       ; preds = %for.inc80, %for.end70
  %72 = load i64, ptr %i, align 8, !dbg !5145, !tbaa !2125
  %cmp72 = icmp ult i64 %72, 256, !dbg !5148
  br i1 %cmp72, label %for.body74, label %for.end82, !dbg !5149

for.body74:                                       ; preds = %for.cond71
  %73 = load ptr, ptr %table, align 8, !dbg !5150, !tbaa !2077
  %src2dst75 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %73, i32 0, i32 2, !dbg !5152
  %74 = load ptr, ptr %src2dst75, align 8, !dbg !5152, !tbaa !2295
  %75 = load i64, ptr %i, align 8, !dbg !5153, !tbaa !2125
  %mul76 = mul i64 %75, 4, !dbg !5154
  %arrayidx77 = getelementptr inbounds i8, ptr %74, i64 %mul76, !dbg !5150
  store ptr %arrayidx77, ptr %p, align 8, !dbg !5155, !tbaa !2077
  %76 = load ptr, ptr %p, align 8, !dbg !5156, !tbaa !2077
  %arrayidx78 = getelementptr inbounds i8, ptr %76, i64 0, !dbg !5156
  store i8 1, ptr %arrayidx78, align 1, !dbg !5157, !tbaa !3655
  %77 = load ptr, ptr %p, align 8, !dbg !5158, !tbaa !2077
  %arrayidx79 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !5158
  store i8 63, ptr %arrayidx79, align 1, !dbg !5159, !tbaa !3655
  br label %for.inc80, !dbg !5160

for.inc80:                                        ; preds = %for.body74
  %78 = load i64, ptr %i, align 8, !dbg !5161, !tbaa !2125
  %inc81 = add i64 %78, 1, !dbg !5161
  store i64 %inc81, ptr %i, align 8, !dbg !5161, !tbaa !2125
  br label %for.cond71, !dbg !5162, !llvm.loop !5163

for.end82:                                        ; preds = %for.cond71
  br label %if.end123, !dbg !5165

if.else:                                          ; preds = %if.end32
  %79 = load ptr, ptr %cf.addr, align 8, !dbg !5166, !tbaa !2077
  %pool83 = getelementptr inbounds %struct.ngx_conf_s, ptr %79, i32 0, i32 3, !dbg !5168
  %80 = load ptr, ptr %pool83, align 8, !dbg !5168, !tbaa !2237
  %call84 = call ptr @ngx_palloc(ptr noundef %80, i64 noundef 256), !dbg !5169
  %81 = load ptr, ptr %table, align 8, !dbg !5170, !tbaa !2077
  %src2dst85 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %81, i32 0, i32 2, !dbg !5171
  store ptr %call84, ptr %src2dst85, align 8, !dbg !5172, !tbaa !2295
  %82 = load ptr, ptr %table, align 8, !dbg !5173, !tbaa !2077
  %src2dst86 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %82, i32 0, i32 2, !dbg !5175
  %83 = load ptr, ptr %src2dst86, align 8, !dbg !5175, !tbaa !2295
  %cmp87 = icmp eq ptr %83, null, !dbg !5176
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5177

if.then89:                                        ; preds = %if.else
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5178

if.end90:                                         ; preds = %if.else
  %84 = load ptr, ptr %cf.addr, align 8, !dbg !5180, !tbaa !2077
  %pool91 = getelementptr inbounds %struct.ngx_conf_s, ptr %84, i32 0, i32 3, !dbg !5181
  %85 = load ptr, ptr %pool91, align 8, !dbg !5181, !tbaa !2237
  %call92 = call ptr @ngx_palloc(ptr noundef %85, i64 noundef 256), !dbg !5182
  %86 = load ptr, ptr %table, align 8, !dbg !5183, !tbaa !2077
  %dst2src93 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %86, i32 0, i32 3, !dbg !5184
  store ptr %call92, ptr %dst2src93, align 8, !dbg !5185, !tbaa !2304
  %87 = load ptr, ptr %table, align 8, !dbg !5186, !tbaa !2077
  %dst2src94 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %87, i32 0, i32 3, !dbg !5188
  %88 = load ptr, ptr %dst2src94, align 8, !dbg !5188, !tbaa !2304
  %cmp95 = icmp eq ptr %88, null, !dbg !5189
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !5190

if.then97:                                        ; preds = %if.end90
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

if.end98:                                         ; preds = %if.end90
  store i64 0, ptr %i, align 8, !dbg !5193, !tbaa !2125
  br label %for.cond99, !dbg !5195

for.cond99:                                       ; preds = %for.inc109, %if.end98
  %89 = load i64, ptr %i, align 8, !dbg !5196, !tbaa !2125
  %cmp100 = icmp ult i64 %89, 128, !dbg !5198
  br i1 %cmp100, label %for.body102, label %for.end111, !dbg !5199

for.body102:                                      ; preds = %for.cond99
  %90 = load i64, ptr %i, align 8, !dbg !5200, !tbaa !2125
  %conv103 = trunc i64 %90 to i8, !dbg !5202
  %91 = load ptr, ptr %table, align 8, !dbg !5203, !tbaa !2077
  %src2dst104 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %91, i32 0, i32 2, !dbg !5204
  %92 = load ptr, ptr %src2dst104, align 8, !dbg !5204, !tbaa !2295
  %93 = load i64, ptr %i, align 8, !dbg !5205, !tbaa !2125
  %arrayidx105 = getelementptr inbounds i8, ptr %92, i64 %93, !dbg !5203
  store i8 %conv103, ptr %arrayidx105, align 1, !dbg !5206, !tbaa !3655
  %94 = load i64, ptr %i, align 8, !dbg !5207, !tbaa !2125
  %conv106 = trunc i64 %94 to i8, !dbg !5208
  %95 = load ptr, ptr %table, align 8, !dbg !5209, !tbaa !2077
  %dst2src107 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %95, i32 0, i32 3, !dbg !5210
  %96 = load ptr, ptr %dst2src107, align 8, !dbg !5210, !tbaa !2304
  %97 = load i64, ptr %i, align 8, !dbg !5211, !tbaa !2125
  %arrayidx108 = getelementptr inbounds i8, ptr %96, i64 %97, !dbg !5209
  store i8 %conv106, ptr %arrayidx108, align 1, !dbg !5212, !tbaa !3655
  br label %for.inc109, !dbg !5213

for.inc109:                                       ; preds = %for.body102
  %98 = load i64, ptr %i, align 8, !dbg !5214, !tbaa !2125
  %inc110 = add i64 %98, 1, !dbg !5214
  store i64 %inc110, ptr %i, align 8, !dbg !5214, !tbaa !2125
  br label %for.cond99, !dbg !5215, !llvm.loop !5216

for.end111:                                       ; preds = %for.cond99
  br label %for.cond112, !dbg !5218

for.cond112:                                      ; preds = %for.inc120, %for.end111
  %99 = load i64, ptr %i, align 8, !dbg !5219, !tbaa !2125
  %cmp113 = icmp ult i64 %99, 256, !dbg !5222
  br i1 %cmp113, label %for.body115, label %for.end122, !dbg !5223

for.body115:                                      ; preds = %for.cond112
  %100 = load ptr, ptr %table, align 8, !dbg !5224, !tbaa !2077
  %src2dst116 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %100, i32 0, i32 2, !dbg !5226
  %101 = load ptr, ptr %src2dst116, align 8, !dbg !5226, !tbaa !2295
  %102 = load i64, ptr %i, align 8, !dbg !5227, !tbaa !2125
  %arrayidx117 = getelementptr inbounds i8, ptr %101, i64 %102, !dbg !5224
  store i8 63, ptr %arrayidx117, align 1, !dbg !5228, !tbaa !3655
  %103 = load ptr, ptr %table, align 8, !dbg !5229, !tbaa !2077
  %dst2src118 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %103, i32 0, i32 3, !dbg !5230
  %104 = load ptr, ptr %dst2src118, align 8, !dbg !5230, !tbaa !2304
  %105 = load i64, ptr %i, align 8, !dbg !5231, !tbaa !2125
  %arrayidx119 = getelementptr inbounds i8, ptr %104, i64 %105, !dbg !5229
  store i8 63, ptr %arrayidx119, align 1, !dbg !5232, !tbaa !3655
  br label %for.inc120, !dbg !5233

for.inc120:                                       ; preds = %for.body115
  %106 = load i64, ptr %i, align 8, !dbg !5234, !tbaa !2125
  %inc121 = add i64 %106, 1, !dbg !5234
  store i64 %inc121, ptr %i, align 8, !dbg !5234, !tbaa !2125
  br label %for.cond112, !dbg !5235, !llvm.loop !5236

for.end122:                                       ; preds = %for.cond112
  br label %if.end123

if.end123:                                        ; preds = %for.end122, %for.end82
  %107 = load ptr, ptr %mcf, align 8, !dbg !5238, !tbaa !2077
  %charsets124 = getelementptr inbounds %struct.ngx_http_charset_main_conf_t, ptr %107, i32 0, i32 0, !dbg !5239
  %elts125 = getelementptr inbounds %struct.ngx_array_t, ptr %charsets124, i32 0, i32 0, !dbg !5240
  %108 = load ptr, ptr %elts125, align 8, !dbg !5240, !tbaa !2122
  store ptr %108, ptr %charset, align 8, !dbg !5241, !tbaa !2077
  %109 = load ptr, ptr %table, align 8, !dbg !5242, !tbaa !2077
  %table126 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 0, !dbg !5243
  store ptr %109, ptr %table126, align 8, !dbg !5244, !tbaa !5245
  %110 = load ptr, ptr %charset, align 8, !dbg !5247, !tbaa !2077
  %111 = load i64, ptr %dst, align 8, !dbg !5248, !tbaa !2125
  %arrayidx127 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %110, i64 %111, !dbg !5247
  %charset128 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 1, !dbg !5249
  store ptr %arrayidx127, ptr %charset128, align 8, !dbg !5250, !tbaa !5251
  %characters = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 2, !dbg !5252
  store i64 0, ptr %characters, align 8, !dbg !5253, !tbaa !5254
  %112 = load ptr, ptr %cf.addr, align 8, !dbg !5255, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pvcf, ptr align 8 %112, i64 96, i1 false), !dbg !5256, !tbaa.struct !5257
  %113 = load ptr, ptr %cf.addr, align 8, !dbg !5258, !tbaa !2077
  %ctx129 = getelementptr inbounds %struct.ngx_conf_s, ptr %113, i32 0, i32 7, !dbg !5259
  store ptr %ctx, ptr %ctx129, align 8, !dbg !5260, !tbaa !2099
  %114 = load ptr, ptr %cf.addr, align 8, !dbg !5261, !tbaa !2077
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %114, i32 0, i32 10, !dbg !5262
  store ptr @ngx_http_charset_map, ptr %handler, align 8, !dbg !5263, !tbaa !5264
  %115 = load ptr, ptr %conf.addr, align 8, !dbg !5265, !tbaa !2077
  %116 = load ptr, ptr %cf.addr, align 8, !dbg !5266, !tbaa !2077
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %116, i32 0, i32 11, !dbg !5267
  store ptr %115, ptr %handler_conf, align 8, !dbg !5268, !tbaa !5269
  %117 = load ptr, ptr %cf.addr, align 8, !dbg !5270, !tbaa !2077
  %call130 = call ptr @ngx_conf_parse(ptr noundef %117, ptr noundef null), !dbg !5271
  store ptr %call130, ptr %rv, align 8, !dbg !5272, !tbaa !2077
  %118 = load ptr, ptr %cf.addr, align 8, !dbg !5273, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %118, ptr align 8 %pvcf, i64 96, i1 false), !dbg !5274, !tbaa.struct !5257
  %characters131 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 2, !dbg !5275
  %119 = load i64, ptr %characters131, align 8, !dbg !5275, !tbaa !5254
  %tobool = icmp ne i64 %119, 0, !dbg !5277
  br i1 %tobool, label %if.then132, label %if.end160, !dbg !5278

if.then132:                                       ; preds = %if.end123
  %charset133 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 1, !dbg !5279
  %120 = load ptr, ptr %charset133, align 8, !dbg !5279, !tbaa !5251
  %length = getelementptr inbounds %struct.ngx_http_charset_t, ptr %120, i32 0, i32 2, !dbg !5281
  %bf.load = load i32, ptr %length, align 8, !dbg !5281
  %bf.clear = and i32 %bf.load, 65535, !dbg !5281
  %conv134 = zext i32 %bf.clear to i64, !dbg !5282
  store i64 %conv134, ptr %n, align 8, !dbg !5283, !tbaa !2125
  %characters135 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 2, !dbg !5284
  %121 = load i64, ptr %characters135, align 8, !dbg !5284, !tbaa !5254
  %charset136 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 1, !dbg !5285
  %122 = load ptr, ptr %charset136, align 8, !dbg !5285, !tbaa !5251
  %length137 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %122, i32 0, i32 2, !dbg !5286
  %bf.load138 = load i32, ptr %length137, align 8, !dbg !5287
  %bf.clear139 = and i32 %bf.load138, 65535, !dbg !5287
  %conv140 = zext i32 %bf.clear139 to i64, !dbg !5287
  %div = udiv i64 %conv140, %121, !dbg !5287
  %conv141 = trunc i64 %div to i32, !dbg !5287
  %bf.load142 = load i32, ptr %length137, align 8, !dbg !5287
  %bf.value = and i32 %conv141, 65535, !dbg !5287
  %bf.clear143 = and i32 %bf.load142, -65536, !dbg !5287
  %bf.set = or i32 %bf.clear143, %bf.value, !dbg !5287
  store i32 %bf.set, ptr %length137, align 8, !dbg !5287
  %123 = load i64, ptr %n, align 8, !dbg !5288, !tbaa !2125
  %mul144 = mul i64 %123, 10, !dbg !5290
  %characters145 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 2, !dbg !5291
  %124 = load i64, ptr %characters145, align 8, !dbg !5291, !tbaa !5254
  %div146 = udiv i64 %mul144, %124, !dbg !5292
  %rem = urem i64 %div146, 10, !dbg !5293
  %cmp147 = icmp ugt i64 %rem, 4, !dbg !5294
  br i1 %cmp147, label %if.then149, label %if.end159, !dbg !5295

if.then149:                                       ; preds = %if.then132
  %charset150 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %ctx, i32 0, i32 1, !dbg !5296
  %125 = load ptr, ptr %charset150, align 8, !dbg !5296, !tbaa !5251
  %length151 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %125, i32 0, i32 2, !dbg !5298
  %bf.load152 = load i32, ptr %length151, align 8, !dbg !5299
  %bf.clear153 = and i32 %bf.load152, 65535, !dbg !5299
  %inc154 = add i32 %bf.clear153, 1, !dbg !5299
  %bf.load155 = load i32, ptr %length151, align 8, !dbg !5299
  %bf.value156 = and i32 %inc154, 65535, !dbg !5299
  %bf.clear157 = and i32 %bf.load155, -65536, !dbg !5299
  %bf.set158 = or i32 %bf.clear157, %bf.value156, !dbg !5299
  store i32 %bf.set158, ptr %length151, align 8, !dbg !5299
  br label %if.end159, !dbg !5300

if.end159:                                        ; preds = %if.then149, %if.then132
  br label %if.end160, !dbg !5301

if.end160:                                        ; preds = %if.end159, %if.end123
  %126 = load ptr, ptr %rv, align 8, !dbg !5302, !tbaa !2077
  store ptr %126, ptr %retval, align 8, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %if.end160, %if.then97, %if.then89, %if.then54, %if.then49, %if.then42, %if.then31, %if.then24, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ctx) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %charset) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 96, ptr %pvcf) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst2src) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #7, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcf) #7, !dbg !5304
  %127 = load ptr, ptr %retval, align 8, !dbg !5304
  ret ptr %127, !dbg !5304
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5305 i32 @strcmp(ptr noundef, ptr noundef) #5

declare !dbg !5309 i64 @ngx_http_get_variable_index(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_add_charset(ptr noundef %charsets, ptr noundef %name) #0 !dbg !5312 {
entry:
  %retval = alloca i64, align 8
  %charsets.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %charsets, ptr %charsets.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %charsets.addr, metadata !5316, metadata !DIExpression()), !dbg !5320
  store ptr %name, ptr %name.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5317, metadata !DIExpression()), !dbg !5321
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !5322
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5318, metadata !DIExpression()), !dbg !5323
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !5324
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !5319, metadata !DIExpression()), !dbg !5325
  %0 = load ptr, ptr %charsets.addr, align 8, !dbg !5326, !tbaa !2077
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %0, i32 0, i32 0, !dbg !5327
  %1 = load ptr, ptr %elts, align 8, !dbg !5327, !tbaa !4792
  store ptr %1, ptr %c, align 8, !dbg !5328, !tbaa !2077
  store i64 0, ptr %i, align 8, !dbg !5329, !tbaa !2125
  br label %for.cond, !dbg !5331

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !dbg !5332, !tbaa !2125
  %3 = load ptr, ptr %charsets.addr, align 8, !dbg !5334, !tbaa !2077
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %3, i32 0, i32 1, !dbg !5335
  %4 = load i64, ptr %nelts, align 8, !dbg !5335, !tbaa !4768
  %cmp = icmp ult i64 %2, %4, !dbg !5336
  br i1 %cmp, label %for.body, label %for.end, !dbg !5337

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %name.addr, align 8, !dbg !5338, !tbaa !2077
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %5, i32 0, i32 0, !dbg !5341
  %6 = load i64, ptr %len, align 8, !dbg !5341, !tbaa !2660
  %7 = load ptr, ptr %c, align 8, !dbg !5342, !tbaa !2077
  %8 = load i64, ptr %i, align 8, !dbg !5343, !tbaa !2125
  %arrayidx = getelementptr inbounds %struct.ngx_http_charset_t, ptr %7, i64 %8, !dbg !5342
  %name1 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx, i32 0, i32 1, !dbg !5344
  %len2 = getelementptr inbounds %struct.ngx_str_t, ptr %name1, i32 0, i32 0, !dbg !5345
  %9 = load i64, ptr %len2, align 8, !dbg !5345, !tbaa !3561
  %cmp3 = icmp ne i64 %6, %9, !dbg !5346
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5347

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5348

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %name.addr, align 8, !dbg !5350, !tbaa !2077
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %10, i32 0, i32 1, !dbg !5352
  %11 = load ptr, ptr %data, align 8, !dbg !5352, !tbaa !2657
  %12 = load ptr, ptr %c, align 8, !dbg !5353, !tbaa !2077
  %13 = load i64, ptr %i, align 8, !dbg !5354, !tbaa !2125
  %arrayidx4 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %12, i64 %13, !dbg !5353
  %name5 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %arrayidx4, i32 0, i32 1, !dbg !5355
  %data6 = getelementptr inbounds %struct.ngx_str_t, ptr %name5, i32 0, i32 1, !dbg !5356
  %14 = load ptr, ptr %data6, align 8, !dbg !5356, !tbaa !3573
  %call = call i64 @ngx_strcasecmp(ptr noundef %11, ptr noundef %14), !dbg !5357
  %cmp7 = icmp eq i64 %call, 0, !dbg !5358
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5359

if.then8:                                         ; preds = %if.end
  br label %for.end, !dbg !5360

if.end9:                                          ; preds = %if.end
  br label %for.inc, !dbg !5362

for.inc:                                          ; preds = %if.end9, %if.then
  %15 = load i64, ptr %i, align 8, !dbg !5363, !tbaa !2125
  %inc = add i64 %15, 1, !dbg !5363
  store i64 %inc, ptr %i, align 8, !dbg !5363, !tbaa !2125
  br label %for.cond, !dbg !5364, !llvm.loop !5365

for.end:                                          ; preds = %if.then8, %for.cond
  %16 = load i64, ptr %i, align 8, !dbg !5367, !tbaa !2125
  %17 = load ptr, ptr %charsets.addr, align 8, !dbg !5369, !tbaa !2077
  %nelts10 = getelementptr inbounds %struct.ngx_array_t, ptr %17, i32 0, i32 1, !dbg !5370
  %18 = load i64, ptr %nelts10, align 8, !dbg !5370, !tbaa !4768
  %cmp11 = icmp ult i64 %16, %18, !dbg !5371
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5372

if.then12:                                        ; preds = %for.end
  %19 = load i64, ptr %i, align 8, !dbg !5373, !tbaa !2125
  store i64 %19, ptr %retval, align 8, !dbg !5375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5375

if.end13:                                         ; preds = %for.end
  %20 = load ptr, ptr %charsets.addr, align 8, !dbg !5376, !tbaa !2077
  %call14 = call ptr @ngx_array_push(ptr noundef %20), !dbg !5377
  store ptr %call14, ptr %c, align 8, !dbg !5378, !tbaa !2077
  %21 = load ptr, ptr %c, align 8, !dbg !5379, !tbaa !2077
  %cmp15 = icmp eq ptr %21, null, !dbg !5381
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5382

if.then16:                                        ; preds = %if.end13
  store i64 -1, ptr %retval, align 8, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

if.end17:                                         ; preds = %if.end13
  %22 = load ptr, ptr %c, align 8, !dbg !5385, !tbaa !2077
  %tables = getelementptr inbounds %struct.ngx_http_charset_t, ptr %22, i32 0, i32 0, !dbg !5386
  store ptr null, ptr %tables, align 8, !dbg !5387, !tbaa !2225
  %23 = load ptr, ptr %c, align 8, !dbg !5388, !tbaa !2077
  %name18 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %23, i32 0, i32 1, !dbg !5389
  %24 = load ptr, ptr %name.addr, align 8, !dbg !5390, !tbaa !2077
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name18, ptr align 8 %24, i64 16, i1 false), !dbg !5391, !tbaa.struct !3115
  %25 = load ptr, ptr %c, align 8, !dbg !5392, !tbaa !2077
  %length = getelementptr inbounds %struct.ngx_http_charset_t, ptr %25, i32 0, i32 2, !dbg !5393
  %bf.load = load i32, ptr %length, align 8, !dbg !5394
  %bf.clear = and i32 %bf.load, -65536, !dbg !5394
  %bf.set = or i32 %bf.clear, 0, !dbg !5394
  store i32 %bf.set, ptr %length, align 8, !dbg !5394
  %26 = load ptr, ptr %name.addr, align 8, !dbg !5395, !tbaa !2077
  %data19 = getelementptr inbounds %struct.ngx_str_t, ptr %26, i32 0, i32 1, !dbg !5397
  %27 = load ptr, ptr %data19, align 8, !dbg !5397, !tbaa !2657
  %call20 = call i64 @ngx_strcasecmp(ptr noundef %27, ptr noundef @.str.17), !dbg !5398
  %cmp21 = icmp eq i64 %call20, 0, !dbg !5399
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !5400

if.then22:                                        ; preds = %if.end17
  %28 = load ptr, ptr %c, align 8, !dbg !5401, !tbaa !2077
  %utf8 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %28, i32 0, i32 2, !dbg !5403
  %bf.load23 = load i32, ptr %utf8, align 8, !dbg !5404
  %bf.clear24 = and i32 %bf.load23, -65537, !dbg !5404
  %bf.set25 = or i32 %bf.clear24, 65536, !dbg !5404
  store i32 %bf.set25, ptr %utf8, align 8, !dbg !5404
  br label %if.end30, !dbg !5405

if.else:                                          ; preds = %if.end17
  %29 = load ptr, ptr %c, align 8, !dbg !5406, !tbaa !2077
  %utf826 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %29, i32 0, i32 2, !dbg !5408
  %bf.load27 = load i32, ptr %utf826, align 8, !dbg !5409
  %bf.clear28 = and i32 %bf.load27, -65537, !dbg !5409
  %bf.set29 = or i32 %bf.clear28, 0, !dbg !5409
  store i32 %bf.set29, ptr %utf826, align 8, !dbg !5409
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  %30 = load i64, ptr %i, align 8, !dbg !5410, !tbaa !2125
  store i64 %30, ptr %retval, align 8, !dbg !5411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5411

cleanup:                                          ; preds = %if.end30, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !5412
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !5412
  %31 = load i64, ptr %retval, align 8, !dbg !5412
  ret i64 %31, !dbg !5412
}

declare !dbg !5413 i64 @ngx_strcasecmp(ptr noundef, ptr noundef) #2

declare !dbg !5416 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_charset_map(ptr noundef %cf, ptr noundef %dummy, ptr noundef %conf) #0 !dbg !5419 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %dummy.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %dst2src = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %n = alloca i32, align 4
  %src = alloca i64, align 8
  %dst = alloca i64, align 8
  %value = alloca ptr, align 8
  %i = alloca i64, align 8
  %table = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !5421, metadata !DIExpression()), !dbg !5435
  store ptr %dummy, ptr %dummy.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !5422, metadata !DIExpression()), !dbg !5436
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2077
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !5423, metadata !DIExpression()), !dbg !5437
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !5438
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !5424, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst2src) #7, !dbg !5438
  tail call void @llvm.dbg.declare(metadata ptr %dst2src, metadata !5425, metadata !DIExpression()), !dbg !5440
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #7, !dbg !5438
  tail call void @llvm.dbg.declare(metadata ptr %pp, metadata !5426, metadata !DIExpression()), !dbg !5441
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !5442
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !5427, metadata !DIExpression()), !dbg !5443
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !5444
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !5428, metadata !DIExpression()), !dbg !5445
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #7, !dbg !5444
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !5429, metadata !DIExpression()), !dbg !5446
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !5447
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !5430, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !5449
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5431, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #7, !dbg !5451
  tail call void @llvm.dbg.declare(metadata ptr %table, metadata !5432, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !5453
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5433, metadata !DIExpression()), !dbg !5454
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !5455, !tbaa !2077
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 1, !dbg !5457
  %1 = load ptr, ptr %args, align 8, !dbg !5457, !tbaa !4849
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %1, i32 0, i32 1, !dbg !5458
  %2 = load i64, ptr %nelts, align 8, !dbg !5458, !tbaa !4768
  %cmp = icmp ne i64 %2, 2, !dbg !5459
  br i1 %cmp, label %if.then, label %if.end, !dbg !5460

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !5461, !tbaa !2077
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %3, i32 noundef 0, ptr noundef @.str.20), !dbg !5463
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5464

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !5465, !tbaa !2077
  %args1 = getelementptr inbounds %struct.ngx_conf_s, ptr %4, i32 0, i32 1, !dbg !5466
  %5 = load ptr, ptr %args1, align 8, !dbg !5466, !tbaa !4849
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %5, i32 0, i32 0, !dbg !5467
  %6 = load ptr, ptr %elts, align 8, !dbg !5467, !tbaa !4792
  store ptr %6, ptr %value, align 8, !dbg !5468, !tbaa !2077
  %7 = load ptr, ptr %value, align 8, !dbg !5469, !tbaa !2077
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %7, i64 0, !dbg !5469
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !5470
  %8 = load ptr, ptr %data, align 8, !dbg !5470, !tbaa !2657
  %9 = load ptr, ptr %value, align 8, !dbg !5471, !tbaa !2077
  %arrayidx2 = getelementptr inbounds %struct.ngx_str_t, ptr %9, i64 0, !dbg !5471
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx2, i32 0, i32 0, !dbg !5472
  %10 = load i64, ptr %len, align 8, !dbg !5472, !tbaa !2660
  %call = call i64 @ngx_hextoi(ptr noundef %8, i64 noundef %10), !dbg !5473
  store i64 %call, ptr %src, align 8, !dbg !5474, !tbaa !2125
  %11 = load i64, ptr %src, align 8, !dbg !5475, !tbaa !2125
  %cmp3 = icmp eq i64 %11, -1, !dbg !5477
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !5478

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i64, ptr %src, align 8, !dbg !5479, !tbaa !2125
  %cmp4 = icmp sgt i64 %12, 255, !dbg !5480
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5481

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !5482, !tbaa !2077
  %14 = load ptr, ptr %value, align 8, !dbg !5484, !tbaa !2077
  %arrayidx6 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i64 0, !dbg !5484
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %13, i32 noundef 0, ptr noundef @.str.21, ptr noundef %arrayidx6), !dbg !5485
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5486

if.end7:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %cf.addr, align 8, !dbg !5487, !tbaa !2077
  %ctx8 = getelementptr inbounds %struct.ngx_conf_s, ptr %15, i32 0, i32 7, !dbg !5488
  %16 = load ptr, ptr %ctx8, align 8, !dbg !5488, !tbaa !2099
  store ptr %16, ptr %ctx, align 8, !dbg !5489, !tbaa !2077
  %17 = load ptr, ptr %ctx, align 8, !dbg !5490, !tbaa !2077
  %table9 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %17, i32 0, i32 0, !dbg !5491
  %18 = load ptr, ptr %table9, align 8, !dbg !5491, !tbaa !5245
  store ptr %18, ptr %table, align 8, !dbg !5492, !tbaa !2077
  %19 = load ptr, ptr %ctx, align 8, !dbg !5493, !tbaa !2077
  %charset = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %19, i32 0, i32 1, !dbg !5495
  %20 = load ptr, ptr %charset, align 8, !dbg !5495, !tbaa !5251
  %utf8 = getelementptr inbounds %struct.ngx_http_charset_t, ptr %20, i32 0, i32 2, !dbg !5496
  %bf.load = load i32, ptr %utf8, align 8, !dbg !5496
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !5496
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5496
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !5493
  br i1 %tobool, label %if.then10, label %if.else, !dbg !5497

if.then10:                                        ; preds = %if.end7
  %21 = load ptr, ptr %table, align 8, !dbg !5498, !tbaa !2077
  %src2dst = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %21, i32 0, i32 2, !dbg !5500
  %22 = load ptr, ptr %src2dst, align 8, !dbg !5500, !tbaa !2295
  %23 = load i64, ptr %src, align 8, !dbg !5501, !tbaa !2125
  %mul = mul nsw i64 %23, 4, !dbg !5502
  %arrayidx11 = getelementptr inbounds i8, ptr %22, i64 %mul, !dbg !5498
  store ptr %arrayidx11, ptr %p, align 8, !dbg !5503, !tbaa !2077
  %24 = load ptr, ptr %value, align 8, !dbg !5504, !tbaa !2077
  %arrayidx12 = getelementptr inbounds %struct.ngx_str_t, ptr %24, i64 1, !dbg !5504
  %len13 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx12, i32 0, i32 0, !dbg !5505
  %25 = load i64, ptr %len13, align 8, !dbg !5505, !tbaa !2660
  %div = udiv i64 %25, 2, !dbg !5506
  %conv = trunc i64 %div to i8, !dbg !5507
  %26 = load ptr, ptr %p, align 8, !dbg !5508, !tbaa !2077
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1, !dbg !5508
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !5508, !tbaa !2077
  store i8 %conv, ptr %26, align 1, !dbg !5509, !tbaa !3655
  store i64 0, ptr %i, align 8, !dbg !5510, !tbaa !2125
  br label %for.cond, !dbg !5512

for.cond:                                         ; preds = %for.inc, %if.then10
  %27 = load i64, ptr %i, align 8, !dbg !5513, !tbaa !2125
  %28 = load ptr, ptr %value, align 8, !dbg !5515, !tbaa !2077
  %arrayidx14 = getelementptr inbounds %struct.ngx_str_t, ptr %28, i64 1, !dbg !5515
  %len15 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx14, i32 0, i32 0, !dbg !5516
  %29 = load i64, ptr %len15, align 8, !dbg !5516, !tbaa !2660
  %cmp16 = icmp ult i64 %27, %29, !dbg !5517
  br i1 %cmp16, label %for.body, label %for.end, !dbg !5518

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %value, align 8, !dbg !5519, !tbaa !2077
  %arrayidx18 = getelementptr inbounds %struct.ngx_str_t, ptr %30, i64 1, !dbg !5519
  %data19 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx18, i32 0, i32 1, !dbg !5521
  %31 = load ptr, ptr %data19, align 8, !dbg !5521, !tbaa !2657
  %32 = load i64, ptr %i, align 8, !dbg !5522, !tbaa !2125
  %arrayidx20 = getelementptr inbounds i8, ptr %31, i64 %32, !dbg !5519
  %call21 = call i64 @ngx_hextoi(ptr noundef %arrayidx20, i64 noundef 2), !dbg !5523
  store i64 %call21, ptr %dst, align 8, !dbg !5524, !tbaa !2125
  %33 = load i64, ptr %dst, align 8, !dbg !5525, !tbaa !2125
  %cmp22 = icmp eq i64 %33, -1, !dbg !5527
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24, !dbg !5528

lor.lhs.false24:                                  ; preds = %for.body
  %34 = load i64, ptr %dst, align 8, !dbg !5529, !tbaa !2125
  %cmp25 = icmp sgt i64 %34, 255, !dbg !5530
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !5531

if.then27:                                        ; preds = %lor.lhs.false24, %for.body
  %35 = load ptr, ptr %cf.addr, align 8, !dbg !5532, !tbaa !2077
  %36 = load ptr, ptr %value, align 8, !dbg !5534, !tbaa !2077
  %arrayidx28 = getelementptr inbounds %struct.ngx_str_t, ptr %36, i64 1, !dbg !5534
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %35, i32 noundef 0, ptr noundef @.str.21, ptr noundef %arrayidx28), !dbg !5535
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5536

if.end29:                                         ; preds = %lor.lhs.false24
  %37 = load i64, ptr %dst, align 8, !dbg !5537, !tbaa !2125
  %conv30 = trunc i64 %37 to i8, !dbg !5538
  %38 = load ptr, ptr %p, align 8, !dbg !5539, !tbaa !2077
  %incdec.ptr31 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !5539
  store ptr %incdec.ptr31, ptr %p, align 8, !dbg !5539, !tbaa !2077
  store i8 %conv30, ptr %38, align 1, !dbg !5540, !tbaa !3655
  br label %for.inc, !dbg !5541

for.inc:                                          ; preds = %if.end29
  %39 = load i64, ptr %i, align 8, !dbg !5542, !tbaa !2125
  %add = add i64 %39, 2, !dbg !5542
  store i64 %add, ptr %i, align 8, !dbg !5542, !tbaa !2125
  br label %for.cond, !dbg !5543, !llvm.loop !5544

for.end:                                          ; preds = %for.cond
  %40 = load i64, ptr %i, align 8, !dbg !5546, !tbaa !2125
  %div32 = udiv i64 %40, 2, !dbg !5546
  store i64 %div32, ptr %i, align 8, !dbg !5546, !tbaa !2125
  %41 = load i64, ptr %i, align 8, !dbg !5547, !tbaa !2125
  %42 = load ptr, ptr %ctx, align 8, !dbg !5548, !tbaa !2077
  %charset33 = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %42, i32 0, i32 1, !dbg !5549
  %43 = load ptr, ptr %charset33, align 8, !dbg !5549, !tbaa !5251
  %length = getelementptr inbounds %struct.ngx_http_charset_t, ptr %43, i32 0, i32 2, !dbg !5550
  %bf.load34 = load i32, ptr %length, align 8, !dbg !5551
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !5551
  %conv36 = zext i32 %bf.clear35 to i64, !dbg !5551
  %add37 = add i64 %conv36, %41, !dbg !5551
  %conv38 = trunc i64 %add37 to i32, !dbg !5551
  %bf.load39 = load i32, ptr %length, align 8, !dbg !5551
  %bf.value = and i32 %conv38, 65535, !dbg !5551
  %bf.clear40 = and i32 %bf.load39, -65536, !dbg !5551
  %bf.set = or i32 %bf.clear40, %bf.value, !dbg !5551
  store i32 %bf.set, ptr %length, align 8, !dbg !5551
  %44 = load ptr, ptr %ctx, align 8, !dbg !5552, !tbaa !2077
  %characters = getelementptr inbounds %struct.ngx_http_charset_conf_ctx_t, ptr %44, i32 0, i32 2, !dbg !5553
  %45 = load i64, ptr %characters, align 8, !dbg !5554, !tbaa !5254
  %inc = add i64 %45, 1, !dbg !5554
  store i64 %inc, ptr %characters, align 8, !dbg !5554, !tbaa !5254
  %46 = load ptr, ptr %table, align 8, !dbg !5555, !tbaa !2077
  %src2dst41 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %46, i32 0, i32 2, !dbg !5556
  %47 = load ptr, ptr %src2dst41, align 8, !dbg !5556, !tbaa !2295
  %48 = load i64, ptr %src, align 8, !dbg !5557, !tbaa !2125
  %mul42 = mul nsw i64 %48, 4, !dbg !5558
  %arrayidx43 = getelementptr inbounds i8, ptr %47, i64 %mul42, !dbg !5555
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx43, i64 1, !dbg !5559
  store ptr %add.ptr, ptr %p, align 8, !dbg !5560, !tbaa !2077
  %49 = load i64, ptr %i, align 8, !dbg !5561, !tbaa !2125
  %call44 = call i32 @ngx_utf8_decode(ptr noundef %p, i64 noundef %49), !dbg !5562
  store i32 %call44, ptr %n, align 4, !dbg !5563, !tbaa !4056
  %50 = load i32, ptr %n, align 4, !dbg !5564, !tbaa !4056
  %cmp45 = icmp ugt i32 %50, 65535, !dbg !5566
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !5567

if.then47:                                        ; preds = %for.end
  %51 = load ptr, ptr %cf.addr, align 8, !dbg !5568, !tbaa !2077
  %52 = load ptr, ptr %value, align 8, !dbg !5570, !tbaa !2077
  %arrayidx48 = getelementptr inbounds %struct.ngx_str_t, ptr %52, i64 1, !dbg !5570
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %51, i32 noundef 0, ptr noundef @.str.21, ptr noundef %arrayidx48), !dbg !5571
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

if.end49:                                         ; preds = %for.end
  %53 = load ptr, ptr %table, align 8, !dbg !5573, !tbaa !2077
  %dst2src50 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %53, i32 0, i32 3, !dbg !5574
  %54 = load ptr, ptr %dst2src50, align 8, !dbg !5574, !tbaa !2304
  %arrayidx51 = getelementptr inbounds i8, ptr %54, i64 0, !dbg !5573
  store ptr %arrayidx51, ptr %pp, align 8, !dbg !5575, !tbaa !2077
  %55 = load ptr, ptr %pp, align 8, !dbg !5576, !tbaa !2077
  %56 = load i32, ptr %n, align 4, !dbg !5577, !tbaa !4056
  %shr = lshr i32 %56, 8, !dbg !5578
  %idxprom = zext i32 %shr to i64, !dbg !5576
  %arrayidx52 = getelementptr inbounds ptr, ptr %55, i64 %idxprom, !dbg !5576
  %57 = load ptr, ptr %arrayidx52, align 8, !dbg !5576, !tbaa !2077
  store ptr %57, ptr %dst2src, align 8, !dbg !5579, !tbaa !2077
  %58 = load ptr, ptr %dst2src, align 8, !dbg !5580, !tbaa !2077
  %cmp53 = icmp eq ptr %58, null, !dbg !5582
  br i1 %cmp53, label %if.then55, label %if.end64, !dbg !5583

if.then55:                                        ; preds = %if.end49
  %59 = load ptr, ptr %cf.addr, align 8, !dbg !5584, !tbaa !2077
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %59, i32 0, i32 3, !dbg !5586
  %60 = load ptr, ptr %pool, align 8, !dbg !5586, !tbaa !2237
  %call56 = call ptr @ngx_pcalloc(ptr noundef %60, i64 noundef 256), !dbg !5587
  store ptr %call56, ptr %dst2src, align 8, !dbg !5588, !tbaa !2077
  %61 = load ptr, ptr %dst2src, align 8, !dbg !5589, !tbaa !2077
  %cmp57 = icmp eq ptr %61, null, !dbg !5591
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !5592

if.then59:                                        ; preds = %if.then55
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

if.end60:                                         ; preds = %if.then55
  %62 = load ptr, ptr %dst2src, align 8, !dbg !5595, !tbaa !2077
  %63 = load ptr, ptr %pp, align 8, !dbg !5596, !tbaa !2077
  %64 = load i32, ptr %n, align 4, !dbg !5597, !tbaa !4056
  %shr61 = lshr i32 %64, 8, !dbg !5598
  %idxprom62 = zext i32 %shr61 to i64, !dbg !5596
  %arrayidx63 = getelementptr inbounds ptr, ptr %63, i64 %idxprom62, !dbg !5596
  store ptr %62, ptr %arrayidx63, align 8, !dbg !5599, !tbaa !2077
  br label %if.end64, !dbg !5600

if.end64:                                         ; preds = %if.end60, %if.end49
  %65 = load i64, ptr %src, align 8, !dbg !5601, !tbaa !2125
  %conv65 = trunc i64 %65 to i8, !dbg !5602
  %66 = load ptr, ptr %dst2src, align 8, !dbg !5603, !tbaa !2077
  %67 = load i32, ptr %n, align 4, !dbg !5604, !tbaa !4056
  %and = and i32 %67, 255, !dbg !5605
  %idxprom66 = zext i32 %and to i64, !dbg !5603
  %arrayidx67 = getelementptr inbounds i8, ptr %66, i64 %idxprom66, !dbg !5603
  store i8 %conv65, ptr %arrayidx67, align 1, !dbg !5606, !tbaa !3655
  br label %if.end87, !dbg !5607

if.else:                                          ; preds = %if.end7
  %68 = load ptr, ptr %value, align 8, !dbg !5608, !tbaa !2077
  %arrayidx68 = getelementptr inbounds %struct.ngx_str_t, ptr %68, i64 1, !dbg !5608
  %data69 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx68, i32 0, i32 1, !dbg !5610
  %69 = load ptr, ptr %data69, align 8, !dbg !5610, !tbaa !2657
  %70 = load ptr, ptr %value, align 8, !dbg !5611, !tbaa !2077
  %arrayidx70 = getelementptr inbounds %struct.ngx_str_t, ptr %70, i64 1, !dbg !5611
  %len71 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx70, i32 0, i32 0, !dbg !5612
  %71 = load i64, ptr %len71, align 8, !dbg !5612, !tbaa !2660
  %call72 = call i64 @ngx_hextoi(ptr noundef %69, i64 noundef %71), !dbg !5613
  store i64 %call72, ptr %dst, align 8, !dbg !5614, !tbaa !2125
  %72 = load i64, ptr %dst, align 8, !dbg !5615, !tbaa !2125
  %cmp73 = icmp eq i64 %72, -1, !dbg !5617
  br i1 %cmp73, label %if.then78, label %lor.lhs.false75, !dbg !5618

lor.lhs.false75:                                  ; preds = %if.else
  %73 = load i64, ptr %dst, align 8, !dbg !5619, !tbaa !2125
  %cmp76 = icmp sgt i64 %73, 255, !dbg !5620
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !5621

if.then78:                                        ; preds = %lor.lhs.false75, %if.else
  %74 = load ptr, ptr %cf.addr, align 8, !dbg !5622, !tbaa !2077
  %75 = load ptr, ptr %value, align 8, !dbg !5624, !tbaa !2077
  %arrayidx79 = getelementptr inbounds %struct.ngx_str_t, ptr %75, i64 1, !dbg !5624
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %74, i32 noundef 0, ptr noundef @.str.21, ptr noundef %arrayidx79), !dbg !5625
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5626

if.end80:                                         ; preds = %lor.lhs.false75
  %76 = load i64, ptr %dst, align 8, !dbg !5627, !tbaa !2125
  %conv81 = trunc i64 %76 to i8, !dbg !5628
  %77 = load ptr, ptr %table, align 8, !dbg !5629, !tbaa !2077
  %src2dst82 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %77, i32 0, i32 2, !dbg !5630
  %78 = load ptr, ptr %src2dst82, align 8, !dbg !5630, !tbaa !2295
  %79 = load i64, ptr %src, align 8, !dbg !5631, !tbaa !2125
  %arrayidx83 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !5629
  store i8 %conv81, ptr %arrayidx83, align 1, !dbg !5632, !tbaa !3655
  %80 = load i64, ptr %src, align 8, !dbg !5633, !tbaa !2125
  %conv84 = trunc i64 %80 to i8, !dbg !5634
  %81 = load ptr, ptr %table, align 8, !dbg !5635, !tbaa !2077
  %dst2src85 = getelementptr inbounds %struct.ngx_http_charset_tables_t, ptr %81, i32 0, i32 3, !dbg !5636
  %82 = load ptr, ptr %dst2src85, align 8, !dbg !5636, !tbaa !2304
  %83 = load i64, ptr %dst, align 8, !dbg !5637, !tbaa !2125
  %arrayidx86 = getelementptr inbounds i8, ptr %82, i64 %83, !dbg !5635
  store i8 %conv84, ptr %arrayidx86, align 1, !dbg !5638, !tbaa !3655
  br label %if.end87

if.end87:                                         ; preds = %if.end80, %if.end64
  store ptr null, ptr %retval, align 8, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

cleanup:                                          ; preds = %if.end87, %if.then78, %if.then59, %if.then47, %if.then27, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst2src) #7, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !5640
  %84 = load ptr, ptr %retval, align 8, !dbg !5640
  ret ptr %84, !dbg !5640
}

declare !dbg !5641 ptr @ngx_conf_parse(ptr noundef, ptr noundef) #2

declare !dbg !5644 i64 @ngx_hextoi(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2025, !2026, !2027, !2028, !2029, !2030}
!llvm.ident = !{!2031}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/http/modules/ngx_http_charset_filter_module.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "e83b31b02dbc9949ec75523a6fb987b7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ngx_http_charset_filter_module_ctx", scope: !9, file: !2, line: 181, type: !2002, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !47, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !17, !26, !31, !33, !35, !36, !40, !45, !37}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 90, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 17, size: 192, elements: !21)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !20, file: !19, line: 18, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !20, file: !19, line: 19, baseType: !23, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !20, file: !19, line: 20, baseType: !23, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !27, line: 87, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 153, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !32, line: 16, baseType: !16)
!32 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 29, baseType: !15)
!34 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !27, line: 33, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !29, line: 31, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !12, line: 78, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !43, line: 267, baseType: !44)
!43 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !29, line: 207, baseType: !30)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!47 = !{!0, !48, !7, !611, !616, !1900, !1905, !1911, !1916, !1921, !1926, !1931, !1936, !1941, !1946, !1949, !1952, !1957, !1959, !1961, !1966, !1971, !1976, !1979, !1982, !1987, !1992, !1997}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "ngx_http_charset_filter_module", scope: !9, file: !2, line: 196, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !51, line: 15, baseType: !52)
!51 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !53, line: 222, size: 1600, elements: !54)
!53 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!54 = !{!55, !56, !57, !59, !60, !61, !62, !63, !64, !586, !587, !591, !595, !596, !597, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !52, file: !53, line: 223, baseType: !11, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !52, file: !53, line: 224, baseType: !11, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !53, line: 226, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !52, file: !53, line: 228, baseType: !11, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !52, file: !53, line: 229, baseType: !11, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !52, file: !53, line: 231, baseType: !11, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !52, file: !53, line: 232, baseType: !45, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !52, file: !53, line: 234, baseType: !16, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !52, file: !53, line: 235, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !51, line: 22, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !68, line: 77, size: 448, elements: !69)
!68 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!69 = !{!70, !77, !78, !583, !584, !585}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 78, baseType: !71, size: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !72, line: 19, baseType: !73)
!72 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 16, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !73, file: !72, line: 17, baseType: !33, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !72, line: 18, baseType: !36, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !68, line: 79, baseType: !11, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !67, file: !68, line: 80, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!58, !82, !65, !16}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !51, line: 16, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !68, line: 116, size: 768, elements: !85)
!85 = !{!86, !87, !258, !565, !566, !567, !576, !577, !578, !579, !580, !582}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !68, line: 117, baseType: !58, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !84, file: !68, line: 118, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !90, line: 22, baseType: !91)
!90 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 16, size: 320, elements: !92)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !91, file: !90, line: 17, baseType: !16, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !91, file: !90, line: 18, baseType: !11, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !91, file: !90, line: 19, baseType: !33, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !91, file: !90, line: 20, baseType: !11, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !91, file: !90, line: 21, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !51, line: 18, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !101, line: 57, size: 640, elements: !102)
!101 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!102 = !{!103, !111, !112, !113, !238, !245, !257}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !100, file: !101, line: 58, baseType: !104, size: 256)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !101, line: 54, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 49, size: 256, elements: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !105, file: !101, line: 50, baseType: !36, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !105, file: !101, line: 51, baseType: !36, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !101, line: 52, baseType: !98, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !105, file: !101, line: 53, baseType: !11, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !100, file: !101, line: 59, baseType: !33, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !100, file: !101, line: 60, baseType: !98, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !100, file: !101, line: 61, baseType: !114, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !51, line: 19, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !32, line: 59, size: 128, elements: !117)
!117 = !{!118, !237}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !116, file: !32, line: 60, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !32, line: 18, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !32, line: 20, size: 640, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !121, file: !32, line: 21, baseType: !36, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !121, file: !32, line: 22, baseType: !36, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !121, file: !32, line: 23, baseType: !26, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !121, file: !32, line: 24, baseType: !26, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !121, file: !32, line: 26, baseType: !36, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !121, file: !32, line: 27, baseType: !36, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !121, file: !32, line: 28, baseType: !31, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !121, file: !32, line: 29, baseType: !131, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !51, line: 23, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !134, line: 16, size: 1600, elements: !135)
!134 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!135 = !{!136, !140, !141, !181, !182, !183, !222, !223}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !133, file: !134, line: 17, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !138, line: 16, baseType: !139)
!138 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 18, baseType: !71, size: 128, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !133, file: !134, line: 19, baseType: !142, size: 1152, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !138, line: 17, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !144, line: 26, size: 1152, elements: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!145 = !{!146, !148, !150, !152, !155, !157, !159, !160, !161, !163, !165, !167, !175, !176, !177}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !143, file: !144, line: 31, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !29, line: 145, baseType: !15)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !143, file: !144, line: 36, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !29, line: 148, baseType: !15)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !143, file: !144, line: 44, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !29, line: 151, baseType: !15)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !143, file: !144, line: 45, baseType: !153, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !29, line: 150, baseType: !154)
!154 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !143, file: !144, line: 47, baseType: !156, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !29, line: 146, baseType: !154)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !143, file: !144, line: 48, baseType: !158, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !29, line: 147, baseType: !154)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !143, file: !144, line: 50, baseType: !139, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !143, file: !144, line: 52, baseType: !147, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !143, file: !144, line: 57, baseType: !162, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 152, baseType: !30)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !143, file: !144, line: 61, baseType: !164, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !29, line: 175, baseType: !30)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !143, file: !144, line: 63, baseType: !166, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !29, line: 180, baseType: !30)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !143, file: !144, line: 74, baseType: !168, size: 128, offset: 576)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !169, line: 11, size: 128, elements: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !168, file: !169, line: 16, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !29, line: 160, baseType: !30)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !168, file: !169, line: 21, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !29, line: 197, baseType: !30)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !143, file: !144, line: 75, baseType: !168, size: 128, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !143, file: !144, line: 76, baseType: !168, size: 128, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !143, file: !144, line: 89, baseType: !178, size: 192, offset: 960)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 192, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 3)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !133, file: !134, line: 21, baseType: !26, size: 64, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !133, file: !134, line: 22, baseType: !26, size: 64, offset: 1408)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !133, file: !134, line: 24, baseType: !184, size: 64, offset: 1472)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !51, line: 20, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !187, line: 50, size: 640, elements: !188)
!187 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!188 = !{!189, !190, !202, !205, !208, !213, !214, !219, !220, !221}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !186, file: !187, line: 51, baseType: !11, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !186, file: !187, line: 52, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !51, line: 21, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !68, line: 89, size: 320, elements: !194)
!194 = !{!195, !196, !197, !201}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !193, file: !68, line: 90, baseType: !137, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !68, line: 91, baseType: !71, size: 128, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !193, file: !68, line: 93, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !191, !184}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !193, file: !68, line: 94, baseType: !16, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !186, file: !187, line: 54, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !204, line: 98, baseType: !15)
!204 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !186, file: !187, line: 56, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !207, line: 10, baseType: !172)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !186, file: !187, line: 58, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !187, line: 45, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!36, !184, !36, !33}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !187, line: 59, baseType: !16, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !186, file: !187, line: 61, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !187, line: 46, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !184, !11, !36, !33}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !186, file: !187, line: 62, baseType: !16, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !186, file: !187, line: 70, baseType: !58, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !187, line: 72, baseType: !184, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !133, file: !134, line: 37, baseType: !154, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !133, file: !134, line: 38, baseType: !154, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !121, file: !32, line: 30, baseType: !119, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !121, file: !32, line: 34, baseType: !154, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !121, file: !32, line: 40, baseType: !154, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !121, file: !32, line: 43, baseType: !154, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !121, file: !32, line: 45, baseType: !154, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !121, file: !32, line: 46, baseType: !154, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !121, file: !32, line: 47, baseType: !154, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !121, file: !32, line: 48, baseType: !154, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !121, file: !32, line: 49, baseType: !154, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !121, file: !32, line: 50, baseType: !154, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !121, file: !32, line: 52, baseType: !154, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !121, file: !32, line: 53, baseType: !154, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !121, file: !32, line: 55, baseType: !139, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !32, line: 61, baseType: !114, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !100, file: !101, line: 62, baseType: !239, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !101, line: 41, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !101, line: 43, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !101, line: 44, baseType: !239, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !241, file: !101, line: 45, baseType: !16, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !100, file: !101, line: 63, baseType: !246, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !101, line: 32, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !101, line: 34, size: 192, elements: !249)
!249 = !{!250, !255, !256}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !248, file: !101, line: 35, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !101, line: 30, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !16}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !248, file: !101, line: 36, baseType: !16, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !101, line: 37, baseType: !246, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !100, file: !101, line: 64, baseType: !184, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !84, file: !68, line: 120, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !51, line: 17, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !262, line: 47, size: 5184, elements: !263)
!262 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!263 = !{!264, !267, !268, !269, !270, !271, !514, !515, !516, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !563, !564}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !261, file: !262, line: 48, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !261, file: !262, line: 49, baseType: !98, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !261, file: !262, line: 51, baseType: !184, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !261, file: !262, line: 52, baseType: !185, size: 640, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !261, file: !262, line: 54, baseType: !11, size: 64, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !261, file: !262, line: 56, baseType: !272, size: 64, offset: 896)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !51, line: 26, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !276, line: 124, size: 1920, elements: !277)
!276 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!277 = !{!278, !279, !336, !337, !340, !348, !350, !355, !360, !438, !439, !440, !441, !442, !443, !444, !445, !446, !452, !490, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !275, file: !276, line: 125, baseType: !16, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !275, file: !276, line: 126, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !51, line: 24, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !283, line: 30, size: 768, elements: !284)
!283 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !313, !314, !315, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !282, file: !283, line: 31, baseType: !16, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !282, file: !283, line: 33, baseType: !154, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !282, file: !283, line: 35, baseType: !154, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !282, file: !283, line: 38, baseType: !154, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !282, file: !283, line: 44, baseType: !154, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !282, file: !283, line: 46, baseType: !154, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !282, file: !283, line: 49, baseType: !154, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !282, file: !283, line: 51, baseType: !154, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !282, file: !283, line: 54, baseType: !154, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !282, file: !283, line: 56, baseType: !154, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !282, file: !283, line: 57, baseType: !154, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !282, file: !283, line: 59, baseType: !154, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !282, file: !283, line: 60, baseType: !154, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !282, file: !283, line: 62, baseType: !154, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !282, file: !283, line: 64, baseType: !154, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !282, file: !283, line: 67, baseType: !154, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !282, file: !283, line: 69, baseType: !154, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !282, file: !283, line: 71, baseType: !154, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !282, file: !283, line: 74, baseType: !154, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !282, file: !283, line: 75, baseType: !154, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !282, file: !283, line: 77, baseType: !154, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !282, file: !283, line: 80, baseType: !154, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !282, file: !283, line: 110, baseType: !154, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !282, file: !283, line: 113, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !51, line: 32, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !280}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !282, file: !283, line: 120, baseType: !11, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !282, file: !283, line: 122, baseType: !184, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !282, file: !283, line: 124, baseType: !316, size: 320, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !317, line: 20, baseType: !318)
!317 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !317, line: 22, size: 320, elements: !319)
!319 = !{!320, !322, !324, !325, !326, !327}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !318, file: !317, line: 23, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !317, line: 16, baseType: !11)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !318, file: !317, line: 24, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !318, file: !317, line: 25, baseType: !323, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !318, file: !317, line: 26, baseType: !323, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !318, file: !317, line: 27, baseType: !37, size: 8, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !318, file: !317, line: 28, baseType: !37, size: 8, offset: 264)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !282, file: !283, line: 127, baseType: !329, size: 128, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !330, line: 16, baseType: !331)
!330 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !330, line: 18, size: 128, elements: !332)
!332 = !{!333, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !331, file: !330, line: 19, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !330, line: 20, baseType: !334, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !275, file: !276, line: 127, baseType: !280, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !275, file: !276, line: 129, baseType: !338, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !339, line: 17, baseType: !139)
!339 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !275, file: !276, line: 131, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !342, line: 19, baseType: !343)
!342 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !273, !36, !33}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !27, line: 108, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !29, line: 194, baseType: !30)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !275, file: !276, line: 132, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !342, line: 22, baseType: !343)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !275, file: !276, line: 133, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !342, line: 20, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!346, !273, !114, !26}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !275, file: !276, line: 134, baseType: !356, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !342, line: 23, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!114, !273, !114, !26}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !275, file: !276, line: 136, baseType: !361, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !276, line: 16, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !276, line: 18, size: 2432, elements: !364)
!364 = !{!365, !366, !379, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !396, !397, !398, !399, !400, !401, !404, !405, !406, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !363, file: !276, line: 19, baseType: !338, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !363, file: !276, line: 21, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !369, line: 180, size: 128, elements: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!370 = !{!371, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !368, file: !369, line: 182, baseType: !372, size: 16)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !373, line: 28, baseType: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!374 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !368, file: !369, line: 183, baseType: !376, size: 112, offset: 16)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 14)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !363, file: !276, line: 22, baseType: !380, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !43, line: 274, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !29, line: 210, baseType: !154)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !363, file: !276, line: 23, baseType: !33, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !363, file: !276, line: 24, baseType: !71, size: 128, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !363, file: !276, line: 26, baseType: !139, size: 32, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !363, file: !276, line: 28, baseType: !139, size: 32, offset: 416)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !363, file: !276, line: 29, baseType: !139, size: 32, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !363, file: !276, line: 30, baseType: !139, size: 32, offset: 480)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !363, file: !276, line: 32, baseType: !139, size: 32, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !363, file: !276, line: 33, baseType: !139, size: 32, offset: 544)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !363, file: !276, line: 34, baseType: !139, size: 32, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !363, file: !276, line: 38, baseType: !392, size: 64, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !51, line: 33, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !273}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !363, file: !276, line: 40, baseType: !16, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !363, file: !276, line: 42, baseType: !185, size: 640, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !363, file: !276, line: 43, baseType: !184, size: 64, offset: 1408)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !363, file: !276, line: 45, baseType: !33, size: 64, offset: 1472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !363, file: !276, line: 47, baseType: !33, size: 64, offset: 1536)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !363, file: !276, line: 49, baseType: !402, size: 64, offset: 1600)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !403, line: 16, baseType: !321)
!403 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !363, file: !276, line: 51, baseType: !361, size: 64, offset: 1664)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !363, file: !276, line: 52, baseType: !273, size: 64, offset: 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !363, file: !276, line: 54, baseType: !407, size: 192, offset: 1792)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !317, line: 32, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !317, line: 37, size: 192, elements: !409)
!409 = !{!410, !411, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !408, file: !317, line: 38, baseType: !323, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !408, file: !317, line: 39, baseType: !323, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !408, file: !317, line: 40, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !317, line: 34, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !323, !323, !323}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !363, file: !276, line: 55, baseType: !316, size: 320, offset: 1984)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !363, file: !276, line: 57, baseType: !11, size: 64, offset: 2304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !363, file: !276, line: 59, baseType: !154, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !363, file: !276, line: 60, baseType: !154, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !363, file: !276, line: 61, baseType: !154, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !363, file: !276, line: 63, baseType: !154, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !363, file: !276, line: 64, baseType: !154, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !363, file: !276, line: 65, baseType: !154, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !363, file: !276, line: 66, baseType: !154, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !363, file: !276, line: 67, baseType: !154, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !363, file: !276, line: 68, baseType: !154, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !363, file: !276, line: 69, baseType: !154, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !363, file: !276, line: 70, baseType: !154, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !363, file: !276, line: 73, baseType: !154, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !363, file: !276, line: 75, baseType: !154, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !363, file: !276, line: 76, baseType: !154, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !363, file: !276, line: 77, baseType: !154, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !363, file: !276, line: 79, baseType: !154, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !363, file: !276, line: 80, baseType: !154, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !363, file: !276, line: 81, baseType: !154, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !363, file: !276, line: 90, baseType: !139, size: 32, offset: 2400)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !275, file: !276, line: 138, baseType: !26, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !275, file: !276, line: 140, baseType: !184, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !275, file: !276, line: 142, baseType: !98, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !276, line: 144, baseType: !139, size: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !275, file: !276, line: 146, baseType: !367, size: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !275, file: !276, line: 147, baseType: !380, size: 32, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !275, file: !276, line: 148, baseType: !71, size: 128, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !275, file: !276, line: 150, baseType: !71, size: 128, offset: 1088)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !275, file: !276, line: 151, baseType: !447, size: 16, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !448, line: 123, baseType: !449)
!448 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !450, line: 25, baseType: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !374)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !275, file: !276, line: 154, baseType: !453, size: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !51, line: 29, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !456, line: 74, size: 704, elements: !457)
!456 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!457 = !{!458, !463, !467, !468, !469, !470, !471, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !455, file: !456, line: 75, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !461, line: 184, baseType: !462)
!461 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !461, line: 184, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !455, file: !456, line: 76, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !461, line: 185, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !461, line: 185, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !455, file: !456, line: 78, baseType: !41, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !455, file: !456, line: 79, baseType: !119, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !455, file: !456, line: 80, baseType: !33, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !455, file: !456, line: 82, baseType: !392, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !455, file: !456, line: 84, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !474, line: 231, baseType: !475)
!474 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !474, line: 231, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !455, file: !456, line: 85, baseType: !392, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !455, file: !456, line: 87, baseType: !309, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !455, file: !456, line: 88, baseType: !309, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !455, file: !456, line: 90, baseType: !37, size: 8, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !455, file: !456, line: 92, baseType: !154, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !455, file: !456, line: 93, baseType: !154, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !455, file: !456, line: 94, baseType: !154, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !455, file: !456, line: 95, baseType: !154, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !455, file: !456, line: 96, baseType: !154, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !455, file: !456, line: 97, baseType: !154, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !455, file: !456, line: 98, baseType: !154, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !455, file: !456, line: 99, baseType: !154, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !455, file: !456, line: 100, baseType: !154, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !455, file: !456, line: 101, baseType: !154, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !275, file: !276, line: 157, baseType: !491, size: 64, offset: 1344)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !51, line: 30, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !51, line: 30, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !275, file: !276, line: 159, baseType: !367, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !275, file: !276, line: 160, baseType: !380, size: 32, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !275, file: !276, line: 162, baseType: !119, size: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !275, file: !276, line: 164, baseType: !329, size: 128, offset: 1600)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !275, file: !276, line: 166, baseType: !203, size: 64, offset: 1728)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !275, file: !276, line: 168, baseType: !11, size: 64, offset: 1792)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !275, file: !276, line: 170, baseType: !154, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !275, file: !276, line: 172, baseType: !154, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !275, file: !276, line: 174, baseType: !154, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !275, file: !276, line: 175, baseType: !154, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !275, file: !276, line: 176, baseType: !154, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !275, file: !276, line: 178, baseType: !154, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !275, file: !276, line: 179, baseType: !154, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !275, file: !276, line: 180, baseType: !154, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !275, file: !276, line: 181, baseType: !154, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !275, file: !276, line: 183, baseType: !154, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !275, file: !276, line: 184, baseType: !154, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !275, file: !276, line: 185, baseType: !154, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !275, file: !276, line: 186, baseType: !154, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !275, file: !276, line: 188, baseType: !154, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !261, file: !262, line: 57, baseType: !273, size: 64, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !261, file: !262, line: 58, baseType: !11, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !261, file: !262, line: 60, baseType: !517, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !261, file: !262, line: 61, baseType: !11, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !261, file: !262, line: 62, baseType: !11, size: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !261, file: !262, line: 64, baseType: !329, size: 128, offset: 1280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !261, file: !262, line: 65, baseType: !11, size: 64, offset: 1408)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !261, file: !262, line: 67, baseType: !89, size: 320, offset: 1472)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !261, file: !262, line: 68, baseType: !89, size: 320, offset: 1792)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !261, file: !262, line: 70, baseType: !89, size: 320, offset: 2112)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !261, file: !262, line: 71, baseType: !407, size: 192, offset: 2432)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !261, file: !262, line: 72, baseType: !316, size: 320, offset: 2624)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !261, file: !262, line: 74, baseType: !529, size: 448, offset: 2944)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !530, line: 31, baseType: !531)
!530 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 25, size: 448, elements: !532)
!532 = !{!533, !541, !542, !543, !544}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !531, file: !530, line: 26, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !530, line: 16, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !530, line: 18, size: 192, elements: !537)
!537 = !{!538, !539, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !536, file: !530, line: 19, baseType: !16, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !536, file: !530, line: 20, baseType: !11, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !530, line: 21, baseType: !534, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !531, file: !530, line: 27, baseType: !535, size: 192, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !531, file: !530, line: 28, baseType: !33, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !531, file: !530, line: 29, baseType: !11, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !531, file: !530, line: 30, baseType: !98, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !261, file: !262, line: 75, baseType: !529, size: 448, offset: 3392)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !261, file: !262, line: 77, baseType: !11, size: 64, offset: 3840)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !261, file: !262, line: 78, baseType: !11, size: 64, offset: 3904)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !261, file: !262, line: 80, baseType: !273, size: 64, offset: 3968)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !261, file: !262, line: 81, baseType: !280, size: 64, offset: 4032)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !261, file: !262, line: 82, baseType: !280, size: 64, offset: 4096)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !261, file: !262, line: 84, baseType: !259, size: 64, offset: 4160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !261, file: !262, line: 86, baseType: !71, size: 128, offset: 4224)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !261, file: !262, line: 87, baseType: !71, size: 128, offset: 4352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !261, file: !262, line: 88, baseType: !71, size: 128, offset: 4480)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !261, file: !262, line: 89, baseType: !71, size: 128, offset: 4608)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !261, file: !262, line: 90, baseType: !71, size: 128, offset: 4736)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !261, file: !262, line: 91, baseType: !71, size: 128, offset: 4864)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !261, file: !262, line: 93, baseType: !559, size: 64, offset: 4992)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !262, line: 34, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!41, !184, !11, !36, !33}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !261, file: !262, line: 94, baseType: !16, size: 64, offset: 5056)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !261, file: !262, line: 95, baseType: !154, size: 32, offset: 5120)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !84, file: !68, line: 121, baseType: !98, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !84, file: !68, line: 122, baseType: !98, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !84, file: !68, line: 123, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !68, line: 103, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 98, size: 1792, elements: !571)
!571 = !{!572, !573, !574, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !570, file: !68, line: 99, baseType: !132, size: 1600)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !570, file: !68, line: 100, baseType: !119, size: 64, offset: 1600)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !570, file: !68, line: 101, baseType: !119, size: 64, offset: 1664)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !570, file: !68, line: 102, baseType: !11, size: 64, offset: 1728)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !84, file: !68, line: 124, baseType: !184, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !84, file: !68, line: 126, baseType: !16, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !84, file: !68, line: 127, baseType: !11, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !84, file: !68, line: 128, baseType: !11, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !84, file: !68, line: 130, baseType: !581, size: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !68, line: 112, baseType: !79)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !84, file: !68, line: 131, baseType: !16, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !67, file: !68, line: 81, baseType: !11, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !67, file: !68, line: 82, baseType: !11, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !67, file: !68, line: 83, baseType: !16, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !53, line: 236, baseType: !11, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !52, file: !53, line: 238, baseType: !588, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!41, !184}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !52, file: !53, line: 240, baseType: !592, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!41, !259}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !52, file: !53, line: 242, baseType: !592, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !52, file: !53, line: 243, baseType: !592, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !52, file: !53, line: 244, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !259}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !52, file: !53, line: 245, baseType: !598, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !52, file: !53, line: 247, baseType: !598, size: 64, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !52, file: !53, line: 249, baseType: !13, size: 64, offset: 1088)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !52, file: !53, line: 250, baseType: !13, size: 64, offset: 1152)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !52, file: !53, line: 251, baseType: !13, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !52, file: !53, line: 252, baseType: !13, size: 64, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !52, file: !53, line: 253, baseType: !13, size: 64, offset: 1344)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !52, file: !53, line: 254, baseType: !13, size: 64, offset: 1408)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !52, file: !53, line: 255, baseType: !13, size: 64, offset: 1472)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !52, file: !53, line: 256, baseType: !13, size: 64, offset: 1536)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1640, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 52)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "ngx_http_next_header_filter", scope: !9, file: !2, line: 212, type: !618, isLocal: true, isDefinition: true)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_header_filter_pt", file: !619, line: 512, baseType: !620)
!619 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!41, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !625, line: 16, baseType: !626)
!625 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !627, line: 371, size: 11456, elements: !628)
!627 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!628 = !{!629, !632, !633, !634, !635, !636, !637, !642, !643, !859, !1453, !1454, !1455, !1456, !1498, !1530, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1576, !1587, !1594, !1595, !1597, !1598, !1611, !1612, !1613, !1614, !1615, !1616, !1793, !1797, !1802, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !626, file: !627, line: 372, baseType: !630, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !450, line: 26, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !154)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !626, file: !627, line: 374, baseType: !273, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !626, file: !627, line: 376, baseType: !23, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !626, file: !627, line: 377, baseType: !23, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !626, file: !627, line: 378, baseType: !23, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !626, file: !627, line: 379, baseType: !23, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !626, file: !627, line: 381, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !627, line: 368, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !623}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !626, file: !627, line: 382, baseType: !638, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !626, file: !627, line: 385, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !625, line: 18, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !647, line: 65, size: 4800, elements: !648)
!647 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!648 = !{!649, !650, !651, !652, !656, !657, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !817, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !646, file: !647, line: 66, baseType: !132, size: 1600)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !646, file: !647, line: 67, baseType: !89, size: 320, offset: 1600)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !646, file: !647, line: 68, baseType: !630, size: 32, offset: 1920)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !646, file: !647, line: 69, baseType: !653, size: 128, offset: 1952)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 16)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !646, file: !647, line: 70, baseType: !653, size: 128, offset: 2080)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !646, file: !647, line: 72, baseType: !658, size: 64, offset: 2240)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !138, line: 18, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !27, line: 49, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !29, line: 149, baseType: !15)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !646, file: !647, line: 73, baseType: !206, size: 64, offset: 2304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !646, file: !647, line: 74, baseType: !206, size: 64, offset: 2368)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !646, file: !647, line: 75, baseType: !206, size: 64, offset: 2432)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !646, file: !647, line: 76, baseType: !206, size: 64, offset: 2496)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !646, file: !647, line: 77, baseType: !206, size: 64, offset: 2560)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !646, file: !647, line: 79, baseType: !71, size: 128, offset: 2624)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !646, file: !647, line: 80, baseType: !71, size: 128, offset: 2752)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !646, file: !647, line: 81, baseType: !653, size: 128, offset: 2880)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !646, file: !647, line: 83, baseType: !33, size: 64, offset: 3008)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !646, file: !647, line: 84, baseType: !33, size: 64, offset: 3072)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !646, file: !647, line: 85, baseType: !26, size: 64, offset: 3136)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !646, file: !647, line: 86, baseType: !26, size: 64, offset: 3200)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !646, file: !647, line: 88, baseType: !11, size: 64, offset: 3264)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !646, file: !647, line: 89, baseType: !11, size: 64, offset: 3328)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !646, file: !647, line: 90, baseType: !11, size: 64, offset: 3392)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !646, file: !647, line: 91, baseType: !11, size: 64, offset: 3456)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !646, file: !647, line: 93, baseType: !119, size: 64, offset: 3520)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !646, file: !647, line: 95, baseType: !679, size: 64, offset: 3584)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !625, line: 19, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !647, line: 157, size: 1088, elements: !682)
!682 = !{!683, !698, !759, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !816}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !681, file: !647, line: 158, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !647, line: 154, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 145, size: 960, elements: !687)
!687 = !{!688, !689, !690, !691, !694, !695, !696, !697}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !686, file: !647, line: 146, baseType: !407, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !686, file: !647, line: 147, baseType: !316, size: 320, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !686, file: !647, line: 148, baseType: !329, size: 128, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !686, file: !647, line: 149, baseType: !692, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !204, line: 106, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !203)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !686, file: !647, line: 150, baseType: !692, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !686, file: !647, line: 151, baseType: !26, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !647, line: 152, baseType: !11, size: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !686, file: !647, line: 153, baseType: !11, size: 64, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !681, file: !647, line: 159, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !701, line: 59, baseType: !702)
!701 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 34, size: 1600, elements: !703)
!703 = !{!704, !711, !712, !713, !721, !722, !723, !732, !733, !734, !735, !754, !755, !756, !757, !758}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !701, line: 35, baseType: !705, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !706, line: 21, baseType: !707)
!706 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 16, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !707, file: !706, line: 17, baseType: !692, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !707, file: !706, line: 19, baseType: !692, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !702, file: !701, line: 37, baseType: !33, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !702, file: !701, line: 38, baseType: !33, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !702, file: !701, line: 40, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !701, line: 16, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !701, line: 18, size: 192, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !716, file: !701, line: 19, baseType: !13, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !701, line: 20, baseType: !714, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !716, file: !701, line: 21, baseType: !13, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !702, file: !701, line: 41, baseType: !714, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !702, file: !701, line: 42, baseType: !715, size: 192, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !702, file: !701, line: 44, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !701, line: 31, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 25, size: 256, elements: !727)
!727 = !{!728, !729, !730, !731}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !726, file: !701, line: 26, baseType: !11, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !726, file: !701, line: 27, baseType: !11, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !726, file: !701, line: 29, baseType: !11, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !726, file: !701, line: 30, baseType: !11, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !702, file: !701, line: 45, baseType: !11, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !702, file: !701, line: 47, baseType: !36, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !702, file: !701, line: 48, baseType: !36, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !702, file: !701, line: 50, baseType: !736, size: 512, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !706, line: 37, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 24, size: 512, elements: !738)
!738 = !{!739, !741, !742, !743, !753}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !706, line: 26, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !737, file: !706, line: 28, baseType: !740, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !737, file: !706, line: 29, baseType: !11, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !737, file: !706, line: 30, baseType: !744, size: 256, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !745, line: 39, baseType: !746)
!745 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !745, line: 35, size: 256, elements: !747)
!747 = !{!748, !752}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !746, file: !745, line: 37, baseType: !749, size: 256)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !746, file: !745, line: 38, baseType: !30, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !737, file: !706, line: 36, baseType: !11, size: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !702, file: !701, line: 52, baseType: !36, size: 64, offset: 1344)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !702, file: !701, line: 53, baseType: !37, size: 8, offset: 1408)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !702, file: !701, line: 55, baseType: !154, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !702, file: !701, line: 57, baseType: !16, size: 64, offset: 1472)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !702, file: !701, line: 58, baseType: !16, size: 64, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !681, file: !647, line: 161, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !134, line: 62, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 50, size: 768, elements: !763)
!763 = !{!764, !765, !766, !768, !773, !775, !777, !778, !779}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !762, file: !134, line: 51, baseType: !71, size: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !762, file: !134, line: 52, baseType: !33, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !762, file: !134, line: 53, baseType: !767, size: 192, offset: 192)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !179)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !762, file: !134, line: 55, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !134, line: 45, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!402, !16}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !762, file: !134, line: 56, baseType: !774, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !134, line: 46, baseType: !770)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !762, file: !134, line: 57, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !134, line: 47, baseType: !252)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !762, file: !134, line: 58, baseType: !16, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !762, file: !134, line: 60, baseType: !36, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !762, file: !134, line: 61, baseType: !11, size: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !681, file: !647, line: 163, baseType: !26, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !681, file: !647, line: 164, baseType: !33, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !681, file: !647, line: 166, baseType: !206, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !681, file: !647, line: 168, baseType: !206, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !681, file: !647, line: 170, baseType: !11, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !681, file: !647, line: 171, baseType: !11, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !681, file: !647, line: 172, baseType: !402, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !681, file: !647, line: 173, baseType: !402, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !681, file: !647, line: 174, baseType: !402, size: 64, offset: 704)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !681, file: !647, line: 176, baseType: !11, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !681, file: !647, line: 177, baseType: !402, size: 64, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !681, file: !647, line: 178, baseType: !402, size: 64, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !681, file: !647, line: 180, baseType: !793, size: 64, offset: 960)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !262, line: 31, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !262, line: 37, size: 704, elements: !796)
!796 = !{!797, !798, !808, !813, !814, !815}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !795, file: !262, line: 38, baseType: !16, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !795, file: !262, line: 39, baseType: !799, size: 384, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !800, line: 22, baseType: !801)
!800 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !800, line: 16, size: 384, elements: !802)
!802 = !{!803, !804, !805, !806, !807}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !801, file: !800, line: 17, baseType: !36, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !801, file: !800, line: 18, baseType: !33, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !801, file: !800, line: 19, baseType: !71, size: 128, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !801, file: !800, line: 20, baseType: !184, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !801, file: !800, line: 21, baseType: !11, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !795, file: !262, line: 40, baseType: !809, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !262, line: 33, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!41, !793, !16}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !795, file: !262, line: 41, baseType: !16, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !795, file: !262, line: 42, baseType: !16, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !795, file: !262, line: 43, baseType: !11, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !681, file: !647, line: 182, baseType: !11, size: 64, offset: 1024)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !647, line: 96, baseType: !818, size: 64, offset: 3648)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !647, line: 62, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 39, size: 960, elements: !821)
!821 = !{!822, !823, !824, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !820, file: !647, line: 40, baseType: !316, size: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !820, file: !647, line: 41, baseType: !329, size: 128, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !820, file: !647, line: 43, baseType: !825, size: 64, offset: 448)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 8)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !647, line: 46, baseType: !154, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !820, file: !647, line: 47, baseType: !154, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !820, file: !647, line: 48, baseType: !154, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !820, file: !647, line: 49, baseType: !154, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !820, file: !647, line: 50, baseType: !154, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !820, file: !647, line: 51, baseType: !154, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !820, file: !647, line: 52, baseType: !154, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !820, file: !647, line: 53, baseType: !154, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !820, file: !647, line: 56, baseType: !658, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !820, file: !647, line: 57, baseType: !206, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !820, file: !647, line: 58, baseType: !206, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !820, file: !647, line: 59, baseType: !33, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !820, file: !647, line: 60, baseType: !26, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !820, file: !647, line: 61, baseType: !402, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !646, file: !647, line: 102, baseType: !402, size: 64, offset: 3712)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !646, file: !647, line: 103, baseType: !402, size: 64, offset: 3776)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !646, file: !647, line: 104, baseType: !402, size: 64, offset: 3840)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !646, file: !647, line: 105, baseType: !402, size: 64, offset: 3904)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !646, file: !647, line: 107, baseType: !281, size: 768, offset: 3968)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !646, file: !647, line: 109, baseType: !154, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !646, file: !647, line: 110, baseType: !154, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !646, file: !647, line: 112, baseType: !154, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !646, file: !647, line: 113, baseType: !154, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !646, file: !647, line: 114, baseType: !154, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !646, file: !647, line: 115, baseType: !154, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !646, file: !647, line: 116, baseType: !154, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !646, file: !647, line: 117, baseType: !154, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !646, file: !647, line: 118, baseType: !154, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !646, file: !647, line: 119, baseType: !154, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !646, file: !647, line: 121, baseType: !154, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !646, file: !647, line: 122, baseType: !154, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !626, file: !627, line: 388, baseType: !860, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !625, line: 17, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !863, line: 319, size: 8960, elements: !864)
!863 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!864 = !{!865, !870, !871, !920, !999, !1000, !1022, !1031, !1171, !1172, !1173, !1174, !1175, !1176, !1216, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1397, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1411, !1415, !1419, !1420, !1434, !1435, !1436, !1437, !1438, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !862, file: !863, line: 320, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !863, line: 315, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !623, !860}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !862, file: !863, line: 321, baseType: !866, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !862, file: !863, line: 323, baseType: !872, size: 1024, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !873, line: 22, baseType: !874)
!873 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !873, line: 36, size: 1024, elements: !875)
!875 = !{!876, !877, !878, !879, !881, !882, !883, !889, !894, !896, !897, !899, !904, !913, !914, !915, !916, !917, !918, !919}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !874, file: !873, line: 37, baseType: !273, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !874, file: !873, line: 39, baseType: !367, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !874, file: !873, line: 40, baseType: !380, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !873, line: 41, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !874, file: !873, line: 43, baseType: !11, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !874, file: !873, line: 44, baseType: !402, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !874, file: !873, line: 46, baseType: !884, size: 64, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !873, line: 24, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!41, !888, !16}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !874, file: !873, line: 47, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !873, line: 26, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !888, !16, !11}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !874, file: !873, line: 48, baseType: !895, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !873, line: 28, baseType: !891)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !874, file: !873, line: 49, baseType: !16, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !874, file: !873, line: 52, baseType: !898, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !873, line: 30, baseType: !885)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !874, file: !873, line: 53, baseType: !900, size: 64, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !873, line: 32, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !888, !16}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !874, file: !873, line: 56, baseType: !905, size: 64, offset: 768)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !907, line: 78, baseType: !908)
!907 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !907, line: 74, size: 256, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !908, file: !907, line: 75, baseType: !367, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !908, file: !907, line: 76, baseType: !380, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !907, line: 77, baseType: !71, size: 128, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !873, line: 58, baseType: !139, size: 32, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !874, file: !873, line: 59, baseType: !139, size: 32, offset: 864)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !874, file: !873, line: 61, baseType: !184, size: 64, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !874, file: !873, line: 63, baseType: !154, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !874, file: !873, line: 64, baseType: !154, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !874, file: !873, line: 65, baseType: !154, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !874, file: !873, line: 68, baseType: !154, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !862, file: !863, line: 325, baseType: !921, size: 64, offset: 1152)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !923, line: 17, baseType: !924)
!923 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !923, line: 25, size: 2240, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !932, !933, !934, !935, !936, !941, !942, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !998}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !924, file: !923, line: 26, baseType: !273, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !924, file: !923, line: 27, baseType: !273, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !924, file: !923, line: 29, baseType: !114, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !924, file: !923, line: 30, baseType: !114, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !924, file: !923, line: 31, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !924, file: !923, line: 33, baseType: !114, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !924, file: !923, line: 35, baseType: !114, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !924, file: !923, line: 36, baseType: !114, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !924, file: !923, line: 37, baseType: !114, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !924, file: !923, line: 44, baseType: !937, size: 64, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !923, line: 19, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!41, !921, !119}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !924, file: !923, line: 45, baseType: !16, size: 64, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !924, file: !923, line: 47, baseType: !943, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !923, line: 21, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!41, !16, !114}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !924, file: !923, line: 48, baseType: !16, size: 64, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !924, file: !923, line: 57, baseType: !154, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !924, file: !923, line: 58, baseType: !154, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !924, file: !923, line: 59, baseType: !154, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !924, file: !923, line: 60, baseType: !154, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !924, file: !923, line: 61, baseType: !154, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !924, file: !923, line: 62, baseType: !154, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !924, file: !923, line: 63, baseType: !154, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !924, file: !923, line: 64, baseType: !154, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !924, file: !923, line: 65, baseType: !154, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !924, file: !923, line: 66, baseType: !154, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !924, file: !923, line: 67, baseType: !154, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !924, file: !923, line: 68, baseType: !154, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !924, file: !923, line: 70, baseType: !41, size: 64, offset: 896)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !924, file: !923, line: 71, baseType: !962, size: 128, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !32, line: 68, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 65, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !963, file: !32, line: 66, baseType: !41, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !963, file: !32, line: 67, baseType: !33, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !924, file: !923, line: 72, baseType: !31, size: 64, offset: 1088)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !924, file: !923, line: 74, baseType: !346, size: 64, offset: 1152)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !924, file: !923, line: 76, baseType: !26, size: 64, offset: 1216)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !924, file: !923, line: 77, baseType: !26, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !924, file: !923, line: 79, baseType: !26, size: 64, offset: 1344)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !924, file: !923, line: 80, baseType: !346, size: 64, offset: 1408)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !924, file: !923, line: 82, baseType: !402, size: 64, offset: 1472)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !924, file: !923, line: 83, baseType: !402, size: 64, offset: 1536)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !924, file: !923, line: 84, baseType: !346, size: 64, offset: 1600)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !924, file: !923, line: 86, baseType: !98, size: 64, offset: 1664)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !924, file: !923, line: 87, baseType: !184, size: 64, offset: 1728)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !924, file: !923, line: 89, baseType: !114, size: 64, offset: 1792)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !924, file: !923, line: 90, baseType: !33, size: 64, offset: 1856)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !924, file: !923, line: 91, baseType: !119, size: 64, offset: 1920)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !924, file: !923, line: 93, baseType: !33, size: 64, offset: 1984)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !924, file: !923, line: 94, baseType: !206, size: 64, offset: 2048)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !924, file: !923, line: 96, baseType: !984, size: 64, offset: 2112)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !134, line: 84, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 71, size: 1984, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !986, file: !134, line: 72, baseType: !132, size: 1600)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !986, file: !134, line: 73, baseType: !26, size: 64, offset: 1600)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !986, file: !134, line: 74, baseType: !760, size: 64, offset: 1664)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !986, file: !134, line: 75, baseType: !98, size: 64, offset: 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !986, file: !134, line: 76, baseType: !58, size: 64, offset: 1792)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !986, file: !134, line: 78, baseType: !11, size: 64, offset: 1856)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !986, file: !134, line: 80, baseType: !154, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !986, file: !134, line: 81, baseType: !154, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !986, file: !134, line: 82, baseType: !154, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !986, file: !134, line: 83, baseType: !154, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !924, file: !923, line: 98, baseType: !139, size: 32, offset: 2176)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !862, file: !863, line: 327, baseType: !114, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !862, file: !863, line: 329, baseType: !1001, size: 832, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !32, line: 71, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !32, line: 78, size: 832, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1002, file: !32, line: 79, baseType: !119, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1002, file: !32, line: 80, baseType: !114, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1002, file: !32, line: 81, baseType: !114, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1002, file: !32, line: 82, baseType: !114, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1002, file: !32, line: 84, baseType: !154, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1002, file: !32, line: 85, baseType: !154, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !1002, file: !32, line: 86, baseType: !154, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !1002, file: !32, line: 87, baseType: !154, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !1002, file: !32, line: 88, baseType: !154, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1002, file: !32, line: 89, baseType: !154, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1002, file: !32, line: 104, baseType: !26, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1002, file: !32, line: 106, baseType: !98, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1002, file: !32, line: 107, baseType: !41, size: 64, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1002, file: !32, line: 108, baseType: !962, size: 128, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1002, file: !32, line: 109, baseType: !31, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !1002, file: !32, line: 111, baseType: !1020, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !32, line: 73, baseType: !944)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !1002, file: !32, line: 112, baseType: !16, size: 64, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !862, file: !863, line: 330, baseType: !1023, size: 320, offset: 2112)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !32, line: 122, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 116, size: 320, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1024, file: !32, line: 117, baseType: !114, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1024, file: !32, line: 118, baseType: !931, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1024, file: !32, line: 119, baseType: !273, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1024, file: !32, line: 120, baseType: !98, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1024, file: !32, line: 121, baseType: !26, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !862, file: !863, line: 332, baseType: !1032, size: 64, offset: 2432)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !863, line: 243, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 149, size: 3904, elements: !1035)
!1035 = !{!1036, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1113, !1114, !1115, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1166, !1167, !1168, !1169, !1170}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !1034, file: !863, line: 150, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !863, line: 79, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !863, line: 121, size: 832, elements: !1040)
!1040 = !{!1041, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1039, file: !863, line: 122, baseType: !1042, size: 192)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !863, line: 91, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 87, size: 192, elements: !1044)
!1044 = !{!1045, !1050, !1055}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !1043, file: !863, line: 88, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !863, line: 81, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!41, !82, !1037}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1043, file: !863, line: 89, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !863, line: 83, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!41, !623, !1037}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1043, file: !863, line: 90, baseType: !16, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1039, file: !863, line: 123, baseType: !23, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !1039, file: !863, line: 125, baseType: !88, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !863, line: 127, baseType: !11, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1039, file: !863, line: 128, baseType: !71, size: 128, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1039, file: !863, line: 129, baseType: !36, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1039, file: !863, line: 130, baseType: !11, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1039, file: !863, line: 131, baseType: !447, size: 16, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1039, file: !863, line: 132, baseType: !11, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !1039, file: !863, line: 135, baseType: !793, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !1034, file: !863, line: 152, baseType: !402, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1034, file: !863, line: 153, baseType: !402, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1034, file: !863, line: 154, baseType: !402, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !1034, file: !863, line: 155, baseType: !402, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1034, file: !863, line: 157, baseType: !33, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1034, file: !863, line: 158, baseType: !33, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1034, file: !863, line: 159, baseType: !33, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !1034, file: !863, line: 161, baseType: !33, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !1034, file: !863, line: 162, baseType: !33, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !1034, file: !863, line: 163, baseType: !33, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !1034, file: !863, line: 165, baseType: !33, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !1034, file: !863, line: 166, baseType: !33, size: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !1034, file: !863, line: 167, baseType: !33, size: 64, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1034, file: !863, line: 169, baseType: !962, size: 128, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !1034, file: !863, line: 171, baseType: !11, size: 64, offset: 1024)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !1034, file: !863, line: 172, baseType: !11, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !1034, file: !863, line: 173, baseType: !11, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !1034, file: !863, line: 174, baseType: !11, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !1034, file: !863, line: 175, baseType: !1084, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !12, line: 80, baseType: !42)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !1034, file: !863, line: 176, baseType: !1084, size: 64, offset: 1344)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !1034, file: !863, line: 177, baseType: !1084, size: 64, offset: 1408)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !1034, file: !863, line: 178, baseType: !1084, size: 64, offset: 1472)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !1034, file: !863, line: 180, baseType: !1084, size: 64, offset: 1536)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !1034, file: !863, line: 181, baseType: !1084, size: 64, offset: 1600)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !1034, file: !863, line: 182, baseType: !1084, size: 64, offset: 1664)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !1034, file: !863, line: 183, baseType: !1084, size: 64, offset: 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !1034, file: !863, line: 185, baseType: !760, size: 64, offset: 1792)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !1034, file: !863, line: 187, baseType: !1094, size: 128, offset: 1856)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1095, line: 26, baseType: !1096)
!1095 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 23, size: 128, elements: !1097)
!1097 = !{!1098, !1112}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1096, file: !1095, line: 24, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1095, line: 20, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 16, size: 128, elements: !1103)
!1103 = !{!1104, !1105, !1108}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1102, file: !1095, line: 17, baseType: !16, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1102, file: !1095, line: 18, baseType: !1106, size: 16, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !27, line: 34, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !29, line: 32, baseType: !374)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1102, file: !1095, line: 19, baseType: !1109, size: 8, offset: 80)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 1)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1096, file: !1095, line: 25, baseType: !11, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !1034, file: !863, line: 188, baseType: !88, size: 64, offset: 1984)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !1034, file: !863, line: 189, baseType: !88, size: 64, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1034, file: !863, line: 191, baseType: !1116, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !863, line: 146, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 140, size: 192, elements: !1119)
!1119 = !{!1120, !1121, !1132}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1118, file: !863, line: 141, baseType: !905, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1118, file: !863, line: 142, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1124, line: 71, baseType: !1125)
!1124 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1124, line: 66, size: 320, elements: !1126)
!1126 = !{!1127, !1128, !1130, !1131}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1125, file: !1124, line: 67, baseType: !71, size: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1125, file: !1124, line: 68, baseType: !1129, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1125, file: !1124, line: 69, baseType: !16, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1125, file: !1124, line: 70, baseType: !16, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1118, file: !863, line: 144, baseType: !11, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !1034, file: !863, line: 192, baseType: !1084, size: 64, offset: 2176)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !1034, file: !863, line: 195, baseType: !793, size: 64, offset: 2240)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !1034, file: !863, line: 196, baseType: !1122, size: 64, offset: 2304)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !1034, file: !863, line: 198, baseType: !11, size: 64, offset: 2368)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !1034, file: !863, line: 199, baseType: !11, size: 64, offset: 2432)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !1034, file: !863, line: 200, baseType: !11, size: 64, offset: 2496)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !1034, file: !863, line: 202, baseType: !26, size: 64, offset: 2560)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !1034, file: !863, line: 204, baseType: !1084, size: 64, offset: 2624)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !1034, file: !863, line: 205, baseType: !402, size: 64, offset: 2688)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !1034, file: !863, line: 206, baseType: !402, size: 64, offset: 2752)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !1034, file: !863, line: 208, baseType: !1084, size: 64, offset: 2816)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !1034, file: !863, line: 209, baseType: !1084, size: 64, offset: 2880)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !1034, file: !863, line: 210, baseType: !1084, size: 64, offset: 2944)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !1034, file: !863, line: 212, baseType: !88, size: 64, offset: 3008)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !1034, file: !863, line: 213, baseType: !88, size: 64, offset: 3072)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !1034, file: !863, line: 214, baseType: !88, size: 64, offset: 3136)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1034, file: !863, line: 215, baseType: !88, size: 64, offset: 3200)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !1034, file: !863, line: 218, baseType: !88, size: 64, offset: 3264)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !1034, file: !863, line: 219, baseType: !88, size: 64, offset: 3328)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1034, file: !863, line: 222, baseType: !139, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1034, file: !863, line: 224, baseType: !139, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !1034, file: !863, line: 225, baseType: !154, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !1034, file: !863, line: 226, baseType: !154, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !1034, file: !863, line: 227, baseType: !154, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !1034, file: !863, line: 228, baseType: !154, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1034, file: !863, line: 231, baseType: !1159, size: 64, offset: 3456)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !51, line: 28, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !456, line: 67, size: 192, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1161, file: !456, line: 68, baseType: !464, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1161, file: !456, line: 69, baseType: !184, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1161, file: !456, line: 70, baseType: !33, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !1034, file: !863, line: 232, baseType: !1084, size: 64, offset: 3520)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !1034, file: !863, line: 234, baseType: !1122, size: 64, offset: 3584)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !1034, file: !863, line: 235, baseType: !1084, size: 64, offset: 3648)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !1034, file: !863, line: 236, baseType: !1084, size: 64, offset: 3712)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1034, file: !863, line: 239, baseType: !71, size: 128, offset: 3776)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !862, file: !863, line: 333, baseType: !1037, size: 64, offset: 2496)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !862, file: !863, line: 335, baseType: !88, size: 64, offset: 2560)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !862, file: !863, line: 339, baseType: !402, size: 64, offset: 2624)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !862, file: !863, line: 340, baseType: !402, size: 64, offset: 2688)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !862, file: !863, line: 341, baseType: !402, size: 64, offset: 2752)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !862, file: !863, line: 343, baseType: !1177, size: 3072, offset: 2816)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !863, line: 296, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 256, size: 3072, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1178, file: !863, line: 257, baseType: !529, size: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1178, file: !863, line: 258, baseType: !529, size: 448, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1178, file: !863, line: 260, baseType: !11, size: 64, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1178, file: !863, line: 261, baseType: !71, size: 128, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1178, file: !863, line: 263, baseType: !1185, size: 64, offset: 1088)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1095, line: 97, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 92, size: 384, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1187, file: !1095, line: 93, baseType: !11, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1187, file: !1095, line: 94, baseType: !71, size: 128, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1187, file: !1095, line: 95, baseType: !71, size: 128, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1187, file: !1095, line: 96, baseType: !36, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1178, file: !863, line: 264, baseType: !1185, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1178, file: !863, line: 265, baseType: !1185, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1178, file: !863, line: 266, baseType: !1185, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1178, file: !863, line: 268, baseType: !1185, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1178, file: !863, line: 269, baseType: !1185, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1178, file: !863, line: 270, baseType: !1185, size: 64, offset: 1472)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1178, file: !863, line: 271, baseType: !1185, size: 64, offset: 1536)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1178, file: !863, line: 272, baseType: !1185, size: 64, offset: 1600)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1178, file: !863, line: 274, baseType: !1185, size: 64, offset: 1664)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1178, file: !863, line: 275, baseType: !1185, size: 64, offset: 1728)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1178, file: !863, line: 277, baseType: !1185, size: 64, offset: 1792)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1178, file: !863, line: 278, baseType: !1185, size: 64, offset: 1856)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1178, file: !863, line: 279, baseType: !1185, size: 64, offset: 1920)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1178, file: !863, line: 280, baseType: !1185, size: 64, offset: 1984)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1178, file: !863, line: 281, baseType: !1185, size: 64, offset: 2048)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1178, file: !863, line: 282, baseType: !1185, size: 64, offset: 2112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1178, file: !863, line: 285, baseType: !1185, size: 64, offset: 2176)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1178, file: !863, line: 288, baseType: !89, size: 320, offset: 2240)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1178, file: !863, line: 289, baseType: !89, size: 320, offset: 2560)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1178, file: !863, line: 291, baseType: !26, size: 64, offset: 2880)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1178, file: !863, line: 292, baseType: !206, size: 64, offset: 2944)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1178, file: !863, line: 294, baseType: !154, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1178, file: !863, line: 295, baseType: !154, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !862, file: !863, line: 345, baseType: !1217, size: 64, offset: 5888)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !863, line: 312, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 299, size: 704, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1236, !1237, !1238, !1239}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1219, file: !863, line: 300, baseType: !71, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1219, file: !863, line: 301, baseType: !447, size: 16, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1219, file: !863, line: 302, baseType: !11, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1219, file: !863, line: 304, baseType: !11, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1219, file: !863, line: 305, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1228, line: 67, baseType: !1229)
!1228 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 61, size: 320, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1229, file: !1228, line: 62, baseType: !367, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1229, file: !1228, line: 63, baseType: !380, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1229, file: !1228, line: 64, baseType: !71, size: 128, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1229, file: !1228, line: 65, baseType: !1106, size: 16, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1229, file: !1228, line: 66, baseType: !1106, size: 16, offset: 272)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1219, file: !863, line: 307, baseType: !367, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1219, file: !863, line: 308, baseType: !380, size: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1219, file: !863, line: 309, baseType: !71, size: 128, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1219, file: !863, line: 311, baseType: !1240, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1228, line: 56, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1228, line: 195, size: 1792, elements: !1243)
!1243 = !{!1244, !1245, !1278, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1360, !1361, !1362, !1375, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !1228, line: 196, baseType: !1240, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1242, file: !1228, line: 197, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1228, line: 40, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1228, line: 148, size: 4096, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1248, file: !1228, line: 150, baseType: !280, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1248, file: !1228, line: 151, baseType: !16, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1248, file: !1228, line: 152, baseType: !184, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1248, file: !1228, line: 155, baseType: !41, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1248, file: !1228, line: 158, baseType: !89, size: 320, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1248, file: !1228, line: 159, baseType: !11, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1248, file: !1228, line: 161, baseType: !407, size: 192, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1248, file: !1228, line: 162, baseType: !316, size: 320, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1248, file: !1228, line: 164, baseType: !407, size: 192, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1248, file: !1228, line: 165, baseType: !316, size: 320, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1248, file: !1228, line: 167, baseType: !407, size: 192, offset: 1664)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1248, file: !1228, line: 168, baseType: !316, size: 320, offset: 1856)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1248, file: !1228, line: 170, baseType: !329, size: 128, offset: 2176)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1248, file: !1228, line: 171, baseType: !329, size: 128, offset: 2304)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1248, file: !1228, line: 172, baseType: !329, size: 128, offset: 2432)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1248, file: !1228, line: 174, baseType: !329, size: 128, offset: 2560)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1248, file: !1228, line: 175, baseType: !329, size: 128, offset: 2688)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1248, file: !1228, line: 176, baseType: !329, size: 128, offset: 2816)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1248, file: !1228, line: 179, baseType: !11, size: 64, offset: 2944)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1248, file: !1228, line: 180, baseType: !407, size: 192, offset: 3008)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1248, file: !1228, line: 181, baseType: !316, size: 320, offset: 3200)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1248, file: !1228, line: 182, baseType: !329, size: 128, offset: 3520)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1248, file: !1228, line: 183, baseType: !329, size: 128, offset: 3648)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1248, file: !1228, line: 186, baseType: !206, size: 64, offset: 3776)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1248, file: !1228, line: 187, baseType: !206, size: 64, offset: 3840)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1248, file: !1228, line: 188, baseType: !206, size: 64, offset: 3904)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1248, file: !1228, line: 189, baseType: !206, size: 64, offset: 3968)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1248, file: !1228, line: 191, baseType: !11, size: 64, offset: 4032)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1242, file: !1228, line: 198, baseType: !1279, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1228, line: 145, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 92, size: 1472, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1302, !1303, !1304, !1305, !1306, !1323, !1324, !1325, !1326, !1327, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1281, file: !1228, line: 93, baseType: !316, size: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1281, file: !1228, line: 94, baseType: !329, size: 128, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1281, file: !1228, line: 97, baseType: !36, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1281, file: !1228, line: 101, baseType: !1287, size: 128, offset: 512)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !448, line: 219, size: 128, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1287, file: !448, line: 226, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !448, line: 221, size: 128, elements: !1291)
!1291 = !{!1292, !1296, !1298}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1290, file: !448, line: 223, baseType: !1293, size: 128)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 128, elements: !654)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !450, line: 24, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !39)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1290, file: !448, line: 224, baseType: !1297, size: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 128, elements: !826)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1290, file: !448, line: 225, baseType: !1299, size: 128)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 128, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 4)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1281, file: !1228, line: 104, baseType: !1106, size: 16, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1281, file: !1228, line: 105, baseType: !1106, size: 16, offset: 656)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1281, file: !1228, line: 107, baseType: !36, size: 64, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1281, file: !1228, line: 109, baseType: !36, size: 64, offset: 768)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1281, file: !1228, line: 117, baseType: !1307, size: 64, offset: 832)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1228, line: 112, size: 64, elements: !1308)
!1308 = !{!1309, !1311, !1313, !1314}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1307, file: !1228, line: 113, baseType: !1310, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !448, line: 30, baseType: !630)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1307, file: !1228, line: 114, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1307, file: !1228, line: 115, baseType: !36, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1307, file: !1228, line: 116, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1228, line: 75, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 70, size: 192, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1317, file: !1228, line: 71, baseType: !71, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1317, file: !1228, line: 72, baseType: !1106, size: 16, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1317, file: !1228, line: 73, baseType: !1106, size: 16, offset: 144)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1317, file: !1228, line: 74, baseType: !1106, size: 16, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1281, file: !1228, line: 119, baseType: !37, size: 8, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1281, file: !1228, line: 120, baseType: !1106, size: 16, offset: 912)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1281, file: !1228, line: 121, baseType: !1106, size: 16, offset: 928)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1281, file: !1228, line: 122, baseType: !1106, size: 16, offset: 944)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1281, file: !1228, line: 128, baseType: !1328, size: 128, offset: 960)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1228, line: 125, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1328, file: !1228, line: 126, baseType: !1287, size: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1328, file: !1228, line: 127, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1281, file: !1228, line: 130, baseType: !1106, size: 16, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1281, file: !1228, line: 133, baseType: !206, size: 64, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1281, file: !1228, line: 134, baseType: !206, size: 64, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1281, file: !1228, line: 135, baseType: !630, size: 32, offset: 1280)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1281, file: !1228, line: 137, baseType: !154, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1281, file: !1228, line: 139, baseType: !154, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1281, file: !1228, line: 142, baseType: !11, size: 64, offset: 1344)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1281, file: !1228, line: 144, baseType: !1240, size: 64, offset: 1408)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1242, file: !1228, line: 201, baseType: !41, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1242, file: !1228, line: 203, baseType: !41, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1242, file: !1228, line: 204, baseType: !71, size: 128, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1242, file: !1228, line: 205, baseType: !71, size: 128, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1242, file: !1228, line: 207, baseType: !206, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1242, file: !1228, line: 208, baseType: !11, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1242, file: !1228, line: 209, baseType: !1226, size: 64, offset: 704)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1242, file: !1228, line: 210, baseType: !1227, size: 320, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1242, file: !1228, line: 211, baseType: !1350, size: 128, offset: 1088)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !448, line: 245, size: 128, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1358}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1350, file: !448, line: 247, baseType: !372, size: 16)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1350, file: !448, line: 248, baseType: !447, size: 16, offset: 16)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1350, file: !448, line: 249, baseType: !1355, size: 32, offset: 32)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !448, line: 31, size: 32, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1355, file: !448, line: 33, baseType: !1310, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1350, file: !448, line: 252, baseType: !1359, size: 64, offset: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !826)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1242, file: !1228, line: 213, baseType: !11, size: 64, offset: 1216)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1242, file: !1228, line: 214, baseType: !11, size: 64, offset: 1280)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1242, file: !1228, line: 215, baseType: !1363, size: 64, offset: 1344)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1228, line: 89, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 78, size: 448, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1365, file: !1228, line: 79, baseType: !71, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1365, file: !1228, line: 80, baseType: !1106, size: 16, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1365, file: !1228, line: 81, baseType: !1106, size: 16, offset: 144)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1365, file: !1228, line: 82, baseType: !1106, size: 16, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1365, file: !1228, line: 84, baseType: !1240, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1365, file: !1228, line: 85, baseType: !41, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1365, file: !1228, line: 87, baseType: !11, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1365, file: !1228, line: 88, baseType: !905, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1242, file: !1228, line: 217, baseType: !1376, size: 64, offset: 1408)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1228, line: 58, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1240}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1242, file: !1228, line: 218, baseType: !16, size: 64, offset: 1472)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1242, file: !1228, line: 219, baseType: !402, size: 64, offset: 1536)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1242, file: !1228, line: 221, baseType: !154, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1242, file: !1228, line: 222, baseType: !154, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1242, file: !1228, line: 223, baseType: !154, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1242, file: !1228, line: 224, baseType: !11, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1242, file: !1228, line: 225, baseType: !280, size: 64, offset: 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !862, file: !863, line: 347, baseType: !120, size: 640, offset: 5952)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !862, file: !863, line: 349, baseType: !120, size: 640, offset: 6592)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !862, file: !863, line: 350, baseType: !26, size: 64, offset: 7232)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !862, file: !863, line: 352, baseType: !114, size: 64, offset: 7296)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !862, file: !863, line: 353, baseType: !114, size: 64, offset: 7360)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !862, file: !863, line: 354, baseType: !114, size: 64, offset: 7424)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !862, file: !863, line: 356, baseType: !1394, size: 64, offset: 7488)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!41, !16}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !862, file: !863, line: 357, baseType: !1398, size: 64, offset: 7552)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!41, !16, !346}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !862, file: !863, line: 358, baseType: !16, size: 64, offset: 7616)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !862, file: !863, line: 361, baseType: !620, size: 64, offset: 7680)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !862, file: !863, line: 363, baseType: !620, size: 64, offset: 7744)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !862, file: !863, line: 364, baseType: !620, size: 64, offset: 7808)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !862, file: !863, line: 365, baseType: !620, size: 64, offset: 7872)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !862, file: !863, line: 366, baseType: !639, size: 64, offset: 7936)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !862, file: !863, line: 367, baseType: !1408, size: 64, offset: 8000)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !623, !41}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !862, file: !863, line: 369, baseType: !1412, size: 64, offset: 8064)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!41, !623, !1185, !33}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !862, file: !863, line: 371, baseType: !1416, size: 64, offset: 8128)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!41, !623, !1185}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !862, file: !863, line: 374, baseType: !402, size: 64, offset: 8192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !862, file: !863, line: 376, baseType: !1421, size: 64, offset: 8256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !863, line: 70, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 59, size: 576, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1423, file: !863, line: 60, baseType: !11, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1423, file: !863, line: 61, baseType: !402, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1423, file: !863, line: 62, baseType: !402, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1423, file: !863, line: 63, baseType: !402, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1423, file: !863, line: 64, baseType: !402, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1423, file: !863, line: 65, baseType: !26, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1423, file: !863, line: 66, baseType: !26, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1423, file: !863, line: 67, baseType: !26, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1423, file: !863, line: 69, baseType: !880, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !862, file: !863, line: 378, baseType: !71, size: 128, offset: 8320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !862, file: !863, line: 379, baseType: !71, size: 128, offset: 8448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !862, file: !863, line: 380, baseType: !71, size: 128, offset: 8576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !862, file: !863, line: 383, baseType: !71, size: 128, offset: 8704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !862, file: !863, line: 386, baseType: !1439, size: 64, offset: 8832)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !627, line: 330, baseType: !252)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !862, file: !863, line: 388, baseType: !154, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !862, file: !863, line: 389, baseType: !154, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !862, file: !863, line: 390, baseType: !154, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !862, file: !863, line: 391, baseType: !154, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !862, file: !863, line: 393, baseType: !154, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !862, file: !863, line: 396, baseType: !154, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !862, file: !863, line: 397, baseType: !154, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !862, file: !863, line: 398, baseType: !154, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !862, file: !863, line: 400, baseType: !154, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !862, file: !863, line: 401, baseType: !154, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !862, file: !863, line: 402, baseType: !154, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !862, file: !863, line: 403, baseType: !154, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !626, file: !627, line: 389, baseType: !88, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !626, file: !627, line: 392, baseType: !98, size: 64, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !626, file: !627, line: 393, baseType: !119, size: 64, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !626, file: !627, line: 395, baseType: !1457, size: 3008, offset: 832)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !627, line: 251, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 181, size: 3008, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1458, file: !627, line: 182, baseType: !529, size: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1458, file: !627, line: 184, baseType: !1185, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1458, file: !627, line: 185, baseType: !1185, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1458, file: !627, line: 186, baseType: !1185, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1458, file: !627, line: 187, baseType: !1185, size: 64, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1458, file: !627, line: 188, baseType: !1185, size: 64, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1458, file: !627, line: 189, baseType: !1185, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1458, file: !627, line: 190, baseType: !1185, size: 64, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1458, file: !627, line: 191, baseType: !1185, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1458, file: !627, line: 192, baseType: !1185, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1458, file: !627, line: 193, baseType: !1185, size: 64, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1458, file: !627, line: 194, baseType: !1185, size: 64, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1458, file: !627, line: 196, baseType: !1185, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1458, file: !627, line: 197, baseType: !1185, size: 64, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1458, file: !627, line: 199, baseType: !1185, size: 64, offset: 1280)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1458, file: !627, line: 200, baseType: !1185, size: 64, offset: 1344)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1458, file: !627, line: 201, baseType: !1185, size: 64, offset: 1408)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1458, file: !627, line: 202, baseType: !1185, size: 64, offset: 1472)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1458, file: !627, line: 205, baseType: !1185, size: 64, offset: 1536)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1458, file: !627, line: 206, baseType: !1185, size: 64, offset: 1600)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1458, file: !627, line: 209, baseType: !1185, size: 64, offset: 1664)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1458, file: !627, line: 211, baseType: !1185, size: 64, offset: 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1458, file: !627, line: 214, baseType: !89, size: 320, offset: 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1458, file: !627, line: 233, baseType: !71, size: 128, offset: 2112)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1458, file: !627, line: 234, baseType: !71, size: 128, offset: 2240)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1458, file: !627, line: 236, baseType: !89, size: 320, offset: 2368)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1458, file: !627, line: 238, baseType: !71, size: 128, offset: 2688)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1458, file: !627, line: 239, baseType: !26, size: 64, offset: 2816)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1458, file: !627, line: 240, baseType: !206, size: 64, offset: 2880)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1458, file: !627, line: 242, baseType: !154, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1458, file: !627, line: 243, baseType: !154, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1458, file: !627, line: 244, baseType: !154, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1458, file: !627, line: 245, baseType: !154, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1458, file: !627, line: 246, baseType: !154, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1458, file: !627, line: 247, baseType: !154, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1458, file: !627, line: 248, baseType: !154, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1458, file: !627, line: 249, baseType: !154, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1458, file: !627, line: 250, baseType: !154, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !626, file: !627, line: 396, baseType: !1499, size: 3264, offset: 3840)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !627, line: 289, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 254, size: 3264, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1500, file: !627, line: 255, baseType: !529, size: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1500, file: !627, line: 256, baseType: !529, size: 448, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1500, file: !627, line: 258, baseType: !11, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1500, file: !627, line: 259, baseType: !71, size: 128, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1500, file: !627, line: 261, baseType: !1185, size: 64, offset: 1088)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1500, file: !627, line: 262, baseType: !1185, size: 64, offset: 1152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1500, file: !627, line: 263, baseType: !1185, size: 64, offset: 1216)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1500, file: !627, line: 264, baseType: !1185, size: 64, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1500, file: !627, line: 265, baseType: !1185, size: 64, offset: 1344)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1500, file: !627, line: 266, baseType: !1185, size: 64, offset: 1408)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1500, file: !627, line: 267, baseType: !1185, size: 64, offset: 1472)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1500, file: !627, line: 268, baseType: !1185, size: 64, offset: 1536)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1500, file: !627, line: 269, baseType: !1185, size: 64, offset: 1600)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1500, file: !627, line: 270, baseType: !1185, size: 64, offset: 1664)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1500, file: !627, line: 271, baseType: !1185, size: 64, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1500, file: !627, line: 272, baseType: !1185, size: 64, offset: 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1500, file: !627, line: 274, baseType: !880, size: 64, offset: 1856)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1500, file: !627, line: 276, baseType: !33, size: 64, offset: 1920)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1500, file: !627, line: 277, baseType: !71, size: 128, offset: 1984)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1500, file: !627, line: 278, baseType: !71, size: 128, offset: 2112)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1500, file: !627, line: 279, baseType: !36, size: 64, offset: 2240)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1500, file: !627, line: 280, baseType: !11, size: 64, offset: 2304)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1500, file: !627, line: 282, baseType: !89, size: 320, offset: 2368)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1500, file: !627, line: 283, baseType: !89, size: 320, offset: 2688)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1500, file: !627, line: 285, baseType: !26, size: 64, offset: 3008)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1500, file: !627, line: 286, baseType: !26, size: 64, offset: 3072)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1500, file: !627, line: 287, baseType: !206, size: 64, offset: 3136)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1500, file: !627, line: 288, baseType: !206, size: 64, offset: 3200)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !626, file: !627, line: 398, baseType: !1531, size: 64, offset: 7104)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !627, line: 304, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 294, size: 576, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1550}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1533, file: !627, line: 295, baseType: !984, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1533, file: !627, line: 296, baseType: !114, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1533, file: !627, line: 297, baseType: !119, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1533, file: !627, line: 298, baseType: !26, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1533, file: !627, line: 299, baseType: !26, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1533, file: !627, line: 300, baseType: !114, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1533, file: !627, line: 301, baseType: !114, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1533, file: !627, line: 302, baseType: !1543, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !625, line: 21, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !625, line: 59, size: 192, elements: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1545, file: !625, line: 60, baseType: !11, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1545, file: !625, line: 61, baseType: !26, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1545, file: !625, line: 62, baseType: !26, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1533, file: !627, line: 303, baseType: !1551, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !627, line: 292, baseType: !639)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !626, file: !627, line: 400, baseType: !206, size: 64, offset: 7168)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !626, file: !627, line: 401, baseType: !206, size: 64, offset: 7232)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !626, file: !627, line: 402, baseType: !402, size: 64, offset: 7296)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !626, file: !627, line: 404, baseType: !11, size: 64, offset: 7360)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !626, file: !627, line: 405, baseType: !11, size: 64, offset: 7424)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !626, file: !627, line: 407, baseType: !71, size: 128, offset: 7488)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !626, file: !627, line: 408, baseType: !71, size: 128, offset: 7616)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !626, file: !627, line: 409, baseType: !71, size: 128, offset: 7744)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !626, file: !627, line: 410, baseType: !71, size: 128, offset: 7872)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !626, file: !627, line: 411, baseType: !71, size: 128, offset: 8000)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !626, file: !627, line: 413, baseType: !71, size: 128, offset: 8128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !626, file: !627, line: 414, baseType: !71, size: 128, offset: 8256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !626, file: !627, line: 415, baseType: !71, size: 128, offset: 8384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !626, file: !627, line: 417, baseType: !114, size: 64, offset: 8512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !626, file: !627, line: 418, baseType: !623, size: 64, offset: 8576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !626, file: !627, line: 419, baseType: !623, size: 64, offset: 8640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !626, file: !627, line: 420, baseType: !1569, size: 64, offset: 8704)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !627, line: 350, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !627, line: 352, size: 192, elements: !1572)
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1571, file: !627, line: 353, baseType: !623, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1571, file: !627, line: 354, baseType: !114, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1571, file: !627, line: 355, baseType: !1569, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !626, file: !627, line: 421, baseType: !1577, size: 64, offset: 8768)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !627, line: 347, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 344, size: 128, elements: !1580)
!1580 = !{!1581, !1586}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1579, file: !627, line: 345, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !627, line: 341, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!41, !623, !16, !41}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1579, file: !627, line: 346, baseType: !16, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !626, file: !627, line: 422, baseType: !1588, size: 64, offset: 8832)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !627, line: 359, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !627, line: 361, size: 128, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1590, file: !627, line: 362, baseType: !623, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1590, file: !627, line: 363, baseType: !1588, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !626, file: !627, line: 424, baseType: !41, size: 64, offset: 8896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !626, file: !627, line: 425, baseType: !1596, size: 64, offset: 8960)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !627, line: 367, baseType: !620)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !626, file: !627, line: 426, baseType: !11, size: 64, offset: 9024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !626, file: !627, line: 428, baseType: !1599, size: 64, offset: 9088)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1601, line: 17, baseType: !1602)
!1601 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !72, line: 37, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 28, size: 128, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1603, file: !72, line: 29, baseType: !154, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1603, file: !72, line: 31, baseType: !154, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1603, file: !72, line: 32, baseType: !154, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1603, file: !72, line: 33, baseType: !154, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1603, file: !72, line: 34, baseType: !154, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1603, file: !72, line: 36, baseType: !36, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !626, file: !627, line: 436, baseType: !33, size: 64, offset: 9152)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !626, file: !627, line: 437, baseType: !33, size: 64, offset: 9216)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !626, file: !627, line: 440, baseType: !33, size: 64, offset: 9280)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !626, file: !627, line: 442, baseType: !26, size: 64, offset: 9344)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !626, file: !627, line: 444, baseType: !11, size: 64, offset: 9408)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !626, file: !627, line: 446, baseType: !1617, size: 64, offset: 9472)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !627, line: 327, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 309, size: 448, elements: !1620)
!1620 = !{!1621, !1786, !1787, !1788, !1789, !1790, !1791, !1792}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1619, file: !627, line: 310, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !627, line: 307, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !619, line: 233, size: 192, elements: !1625)
!1625 = !{!1626, !1757, !1783, !1784, !1785}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1624, file: !619, line: 235, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !619, line: 210, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 180, size: 1344, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1629, file: !619, line: 182, baseType: !89, size: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1629, file: !619, line: 185, baseType: !17, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1629, file: !619, line: 187, baseType: !36, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1629, file: !619, line: 188, baseType: !11, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1629, file: !619, line: 190, baseType: !71, size: 128, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1629, file: !619, line: 192, baseType: !33, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1629, file: !619, line: 193, baseType: !33, size: 64, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1629, file: !619, line: 194, baseType: !33, size: 64, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1629, file: !619, line: 196, baseType: !962, size: 128, offset: 832)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1629, file: !619, line: 198, baseType: !402, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1629, file: !619, line: 200, baseType: !1084, size: 64, offset: 1024)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1629, file: !619, line: 201, baseType: !1084, size: 64, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1629, file: !619, line: 202, baseType: !1084, size: 64, offset: 1152)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1629, file: !619, line: 204, baseType: !154, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1629, file: !619, line: 209, baseType: !1646, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !619, line: 64, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !619, line: 301, size: 5184, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1649, file: !619, line: 302, baseType: !71, size: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1649, file: !619, line: 308, baseType: !154, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1649, file: !619, line: 309, baseType: !154, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1649, file: !619, line: 310, baseType: !154, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1649, file: !619, line: 312, baseType: !154, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1649, file: !619, line: 313, baseType: !154, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1649, file: !619, line: 315, baseType: !154, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1649, file: !619, line: 317, baseType: !154, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1649, file: !619, line: 318, baseType: !154, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1649, file: !619, line: 321, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !619, line: 63, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !619, line: 455, size: 384, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1663, file: !619, line: 456, baseType: !1661, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1663, file: !619, line: 457, baseType: !1661, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1663, file: !619, line: 458, baseType: !1661, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1663, file: !619, line: 460, baseType: !1647, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1663, file: !619, line: 461, baseType: !1647, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1663, file: !619, line: 463, baseType: !37, size: 8, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1663, file: !619, line: 464, baseType: !37, size: 8, offset: 328)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1663, file: !619, line: 465, baseType: !1109, size: 8, offset: 336)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1649, file: !619, line: 327, baseType: !23, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1649, file: !619, line: 329, baseType: !630, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1649, file: !619, line: 330, baseType: !23, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1649, file: !619, line: 332, baseType: !1596, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1649, file: !619, line: 335, baseType: !33, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1649, file: !619, line: 336, baseType: !71, size: 128, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1649, file: !619, line: 337, baseType: !71, size: 128, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1649, file: !619, line: 339, baseType: !88, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1649, file: !619, line: 340, baseType: !88, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1649, file: !619, line: 342, baseType: !88, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1649, file: !619, line: 343, baseType: !1094, size: 128, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1649, file: !619, line: 344, baseType: !71, size: 128, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1649, file: !619, line: 346, baseType: !26, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1649, file: !619, line: 347, baseType: !26, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1649, file: !619, line: 348, baseType: !26, size: 64, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1649, file: !619, line: 350, baseType: !33, size: 64, offset: 1472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1649, file: !619, line: 351, baseType: !33, size: 64, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1649, file: !619, line: 352, baseType: !33, size: 64, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1649, file: !619, line: 353, baseType: !33, size: 64, offset: 1664)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1649, file: !619, line: 354, baseType: !33, size: 64, offset: 1728)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1649, file: !619, line: 355, baseType: !33, size: 64, offset: 1792)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1649, file: !619, line: 356, baseType: !33, size: 64, offset: 1856)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1649, file: !619, line: 357, baseType: !33, size: 64, offset: 1920)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1649, file: !619, line: 360, baseType: !402, size: 64, offset: 1984)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1649, file: !619, line: 361, baseType: !402, size: 64, offset: 2048)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1649, file: !619, line: 362, baseType: !402, size: 64, offset: 2112)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1649, file: !619, line: 363, baseType: !402, size: 64, offset: 2176)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1649, file: !619, line: 364, baseType: !402, size: 64, offset: 2240)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1649, file: !619, line: 365, baseType: !402, size: 64, offset: 2304)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1649, file: !619, line: 367, baseType: !1246, size: 64, offset: 2368)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1649, file: !619, line: 369, baseType: !206, size: 64, offset: 2432)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1649, file: !619, line: 371, baseType: !11, size: 64, offset: 2496)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1649, file: !619, line: 372, baseType: !11, size: 64, offset: 2560)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1649, file: !619, line: 373, baseType: !11, size: 64, offset: 2624)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1649, file: !619, line: 374, baseType: !11, size: 64, offset: 2688)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1649, file: !619, line: 375, baseType: !11, size: 64, offset: 2752)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1649, file: !619, line: 376, baseType: !11, size: 64, offset: 2816)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1649, file: !619, line: 377, baseType: !11, size: 64, offset: 2880)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1649, file: !619, line: 379, baseType: !1084, size: 64, offset: 2944)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1649, file: !619, line: 381, baseType: !1084, size: 64, offset: 3008)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1649, file: !619, line: 382, baseType: !1084, size: 64, offset: 3072)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1649, file: !619, line: 383, baseType: !1084, size: 64, offset: 3136)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1649, file: !619, line: 384, baseType: !1084, size: 64, offset: 3200)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1649, file: !619, line: 385, baseType: !1084, size: 64, offset: 3264)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1649, file: !619, line: 386, baseType: !1084, size: 64, offset: 3328)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1649, file: !619, line: 387, baseType: !1084, size: 64, offset: 3392)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1649, file: !619, line: 388, baseType: !1084, size: 64, offset: 3456)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1649, file: !619, line: 389, baseType: !1084, size: 64, offset: 3520)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1649, file: !619, line: 390, baseType: !1084, size: 64, offset: 3584)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1649, file: !619, line: 391, baseType: !1084, size: 64, offset: 3648)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1649, file: !619, line: 392, baseType: !1084, size: 64, offset: 3712)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1649, file: !619, line: 393, baseType: !1084, size: 64, offset: 3776)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1649, file: !619, line: 394, baseType: !1084, size: 64, offset: 3840)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1649, file: !619, line: 395, baseType: !1084, size: 64, offset: 3904)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1649, file: !619, line: 396, baseType: !11, size: 64, offset: 3968)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1649, file: !619, line: 397, baseType: !1084, size: 64, offset: 4032)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1649, file: !619, line: 398, baseType: !1084, size: 64, offset: 4096)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1649, file: !619, line: 401, baseType: !1084, size: 64, offset: 4160)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1649, file: !619, line: 403, baseType: !11, size: 64, offset: 4224)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1649, file: !619, line: 404, baseType: !11, size: 64, offset: 4288)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1649, file: !619, line: 417, baseType: !11, size: 64, offset: 4352)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1649, file: !619, line: 418, baseType: !1122, size: 64, offset: 4416)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1649, file: !619, line: 421, baseType: !88, size: 64, offset: 4480)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1649, file: !619, line: 423, baseType: !760, size: 64, offset: 4544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1649, file: !619, line: 425, baseType: !1738, size: 64, offset: 4608)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1740, line: 99, baseType: !1741)
!1740 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1740, line: 91, size: 832, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1741, file: !1740, line: 92, baseType: !407, size: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1741, file: !1740, line: 93, baseType: !316, size: 320, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1741, file: !1740, line: 94, baseType: !329, size: 128, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1741, file: !1740, line: 96, baseType: !11, size: 64, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1741, file: !1740, line: 97, baseType: !11, size: 64, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1741, file: !1740, line: 98, baseType: !206, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1649, file: !619, line: 426, baseType: !206, size: 64, offset: 4672)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1649, file: !619, line: 427, baseType: !11, size: 64, offset: 4736)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1649, file: !619, line: 428, baseType: !1084, size: 64, offset: 4800)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1649, file: !619, line: 429, baseType: !1084, size: 64, offset: 4864)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1649, file: !619, line: 431, baseType: !184, size: 64, offset: 4928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1649, file: !619, line: 433, baseType: !11, size: 64, offset: 4992)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1649, file: !619, line: 434, baseType: !11, size: 64, offset: 5056)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1649, file: !619, line: 436, baseType: !334, size: 64, offset: 5120)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1624, file: !619, line: 237, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !619, line: 230, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 225, size: 384, elements: !1761)
!1761 = !{!1762, !1775, !1776}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1760, file: !619, line: 226, baseType: !1763, size: 256)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1095, line: 49, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 45, size: 256, elements: !1765)
!1765 = !{!1766, !1767, !1774}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1764, file: !1095, line: 46, baseType: !1094, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1764, file: !1095, line: 47, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1095, line: 32, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1095, line: 29, size: 192, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1770, file: !1095, line: 30, baseType: !1094, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1770, file: !1095, line: 31, baseType: !16, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1764, file: !1095, line: 48, baseType: !1768, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1760, file: !619, line: 228, baseType: !11, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1760, file: !619, line: 229, baseType: !1777, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !619, line: 222, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 216, size: 192, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1779, file: !619, line: 220, baseType: !1627, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1779, file: !619, line: 221, baseType: !71, size: 128, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1624, file: !619, line: 239, baseType: !154, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1624, file: !619, line: 240, baseType: !154, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1624, file: !619, line: 241, baseType: !154, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1619, file: !627, line: 311, baseType: !17, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1619, file: !627, line: 314, baseType: !880, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1619, file: !627, line: 320, baseType: !114, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1619, file: !627, line: 321, baseType: !41, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1619, file: !627, line: 323, baseType: !114, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1619, file: !627, line: 325, baseType: !154, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1619, file: !627, line: 326, baseType: !154, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !626, file: !627, line: 447, baseType: !1794, size: 64, offset: 9536)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !625, line: 22, baseType: !1796)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !625, line: 22, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !626, file: !627, line: 449, baseType: !1798, size: 64, offset: 9600)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !625, line: 26, baseType: !1799)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!36, !623, !623, !36, !33}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !626, file: !627, line: 451, baseType: !1803, size: 64, offset: 9664)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !627, line: 332, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !627, line: 334, size: 192, elements: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1805, file: !627, line: 335, baseType: !1440, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1805, file: !627, line: 336, baseType: !16, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1805, file: !627, line: 337, baseType: !1803, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !626, file: !627, line: 453, baseType: !154, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !626, file: !627, line: 454, baseType: !154, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !626, file: !627, line: 455, baseType: !154, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !626, file: !627, line: 457, baseType: !154, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !626, file: !627, line: 459, baseType: !154, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !626, file: !627, line: 462, baseType: !154, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !626, file: !627, line: 465, baseType: !154, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !626, file: !627, line: 468, baseType: !154, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !626, file: !627, line: 471, baseType: !154, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !626, file: !627, line: 473, baseType: !154, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !626, file: !627, line: 475, baseType: !154, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !626, file: !627, line: 476, baseType: !154, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !626, file: !627, line: 477, baseType: !154, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !626, file: !627, line: 478, baseType: !154, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !626, file: !627, line: 479, baseType: !154, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !626, file: !627, line: 481, baseType: !154, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !626, file: !627, line: 482, baseType: !154, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !626, file: !627, line: 483, baseType: !154, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !626, file: !627, line: 484, baseType: !154, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !626, file: !627, line: 485, baseType: !154, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !626, file: !627, line: 486, baseType: !154, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !626, file: !627, line: 487, baseType: !154, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !626, file: !627, line: 489, baseType: !154, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !626, file: !627, line: 490, baseType: !154, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !626, file: !627, line: 493, baseType: !154, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !626, file: !627, line: 497, baseType: !154, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !626, file: !627, line: 498, baseType: !154, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !626, file: !627, line: 499, baseType: !154, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !626, file: !627, line: 506, baseType: !154, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !626, file: !627, line: 507, baseType: !154, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !626, file: !627, line: 508, baseType: !154, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !626, file: !627, line: 515, baseType: !154, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !626, file: !627, line: 516, baseType: !154, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !626, file: !627, line: 522, baseType: !154, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !626, file: !627, line: 523, baseType: !154, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !626, file: !627, line: 524, baseType: !154, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !626, file: !627, line: 525, baseType: !154, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !626, file: !627, line: 526, baseType: !154, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !626, file: !627, line: 527, baseType: !154, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !626, file: !627, line: 528, baseType: !154, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !626, file: !627, line: 529, baseType: !154, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !626, file: !627, line: 530, baseType: !154, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !626, file: !627, line: 531, baseType: !154, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !626, file: !627, line: 532, baseType: !154, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !626, file: !627, line: 533, baseType: !154, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !626, file: !627, line: 534, baseType: !154, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !626, file: !627, line: 535, baseType: !154, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !626, file: !627, line: 536, baseType: !154, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !626, file: !627, line: 537, baseType: !154, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !626, file: !627, line: 538, baseType: !154, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !626, file: !627, line: 539, baseType: !154, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !626, file: !627, line: 540, baseType: !154, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !626, file: !627, line: 542, baseType: !154, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !626, file: !627, line: 544, baseType: !154, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !626, file: !627, line: 545, baseType: !154, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !626, file: !627, line: 546, baseType: !154, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !626, file: !627, line: 547, baseType: !154, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !626, file: !627, line: 548, baseType: !154, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !626, file: !627, line: 549, baseType: !154, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !626, file: !627, line: 550, baseType: !154, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !626, file: !627, line: 551, baseType: !154, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !626, file: !627, line: 552, baseType: !154, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !626, file: !627, line: 553, baseType: !154, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !626, file: !627, line: 554, baseType: !154, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !626, file: !627, line: 556, baseType: !154, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !626, file: !627, line: 557, baseType: !154, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !626, file: !627, line: 561, baseType: !11, size: 64, offset: 9856)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !626, file: !627, line: 563, baseType: !11, size: 64, offset: 9920)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !626, file: !627, line: 564, baseType: !11, size: 64, offset: 9984)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !626, file: !627, line: 565, baseType: !1880, size: 256, offset: 10048)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !750)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !626, file: !627, line: 567, baseType: !36, size: 64, offset: 10304)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !626, file: !627, line: 568, baseType: !36, size: 64, offset: 10368)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !626, file: !627, line: 569, baseType: !36, size: 64, offset: 10432)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !626, file: !627, line: 570, baseType: !36, size: 64, offset: 10496)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !626, file: !627, line: 577, baseType: !36, size: 64, offset: 10560)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !626, file: !627, line: 578, baseType: !36, size: 64, offset: 10624)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !626, file: !627, line: 579, baseType: !36, size: 64, offset: 10688)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !626, file: !627, line: 580, baseType: !36, size: 64, offset: 10752)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !626, file: !627, line: 581, baseType: !36, size: 64, offset: 10816)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !626, file: !627, line: 582, baseType: !36, size: 64, offset: 10880)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !626, file: !627, line: 583, baseType: !36, size: 64, offset: 10944)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !626, file: !627, line: 584, baseType: !36, size: 64, offset: 11008)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !626, file: !627, line: 585, baseType: !36, size: 64, offset: 11072)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !626, file: !627, line: 586, baseType: !36, size: 64, offset: 11136)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !626, file: !627, line: 587, baseType: !36, size: 64, offset: 11200)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !626, file: !627, line: 588, baseType: !36, size: 64, offset: 11264)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !626, file: !627, line: 589, baseType: !36, size: 64, offset: 11328)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !626, file: !627, line: 591, baseType: !154, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !626, file: !627, line: 592, baseType: !154, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1900 = !DIGlobalVariableExpression(var: !1901, expr: !DIExpression())
!1901 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !1902, isLocal: true, isDefinition: true)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !1903)
!1903 = !{!1904}
!1904 = !DISubrange(count: 33)
!1905 = !DIGlobalVariableExpression(var: !1906, expr: !DIExpression())
!1906 = distinct !DIGlobalVariable(name: "ngx_http_next_body_filter", scope: !9, file: !2, line: 213, type: !1907, isLocal: true, isDefinition: true)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_body_filter_pt", file: !619, line: 513, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!41, !623, !114}
!1911 = !DIGlobalVariableExpression(var: !1912, expr: !DIExpression())
!1912 = distinct !DIGlobalVariable(scope: null, file: !2, line: 867, type: !1913, isLocal: true, isDefinition: true)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1914)
!1914 = !{!1915}
!1915 = !DISubrange(count: 7)
!1916 = !DIGlobalVariableExpression(var: !1917, expr: !DIExpression())
!1917 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !1918, isLocal: true, isDefinition: true)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 10)
!1921 = !DIGlobalVariableExpression(var: !1922, expr: !DIExpression())
!1922 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !1923, isLocal: true, isDefinition: true)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1924)
!1924 = !{!1925}
!1925 = !DISubrange(count: 9)
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !1928, isLocal: true, isDefinition: true)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !1929)
!1929 = !{!1930}
!1930 = !DISubrange(count: 11)
!1931 = !DIGlobalVariableExpression(var: !1932, expr: !DIExpression())
!1932 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !1933, isLocal: true, isDefinition: true)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 17)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !1938, isLocal: true, isDefinition: true)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 23)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !1943, isLocal: true, isDefinition: true)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1944)
!1944 = !{!1945}
!1945 = !DISubrange(count: 20)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "ngx_http_charset_default_types", scope: !9, file: !2, line: 126, type: !1948, isLocal: true, isDefinition: true)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 896, elements: !1914)
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !1951, isLocal: true, isDefinition: true)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !826)
!1952 = !DIGlobalVariableExpression(var: !1953, expr: !DIExpression())
!1953 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !1954, isLocal: true, isDefinition: true)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !1955)
!1955 = !{!1956}
!1956 = !DISubrange(count: 15)
!1957 = !DIGlobalVariableExpression(var: !1958, expr: !DIExpression())
!1958 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !1933, isLocal: true, isDefinition: true)
!1959 = !DIGlobalVariableExpression(var: !1960, expr: !DIExpression())
!1960 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !376, isLocal: true, isDefinition: true)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !1963, isLocal: true, isDefinition: true)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 12)
!1966 = !DIGlobalVariableExpression(var: !1967, expr: !DIExpression())
!1967 = distinct !DIGlobalVariable(name: "ngx_http_charset_filter_commands", scope: !9, file: !2, line: 137, type: !1968, isLocal: true, isDefinition: true)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2688, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 6)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1408, type: !1973, isLocal: true, isDefinition: true)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 13)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1414, type: !1978, isLocal: true, isDefinition: true)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1300)
!1979 = !DIGlobalVariableExpression(var: !1980, expr: !DIExpression())
!1980 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1478, type: !1981, isLocal: true, isDefinition: true)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1969)
!1982 = !DIGlobalVariableExpression(var: !1983, expr: !DIExpression())
!1983 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1199, type: !1984, isLocal: true, isDefinition: true)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !1985)
!1985 = !{!1986}
!1986 = !DISubrange(count: 54)
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1210, type: !1989, isLocal: true, isDefinition: true)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !1990)
!1990 = !{!1991}
!1991 = !DISubrange(count: 46)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1318, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 26)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1327, type: !1999, isLocal: true, isDefinition: true)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !2000)
!2000 = !{!2001}
!2001 = !DISubrange(count: 19)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_module_t", file: !19, line: 36, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 24, size: 512, elements: !2004)
!2004 = !{!2005, !2009, !2010, !2014, !2018, !2019, !2023, !2024}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "preconfiguration", scope: !2003, file: !19, line: 25, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!41, !82}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "postconfiguration", scope: !2003, file: !19, line: 26, baseType: !2006, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "create_main_conf", scope: !2003, file: !19, line: 28, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!16, !82}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "init_main_conf", scope: !2003, file: !19, line: 29, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!58, !82, !16}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "create_srv_conf", scope: !2003, file: !19, line: 31, baseType: !2011, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "merge_srv_conf", scope: !2003, file: !19, line: 32, baseType: !2020, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!58, !82, !16, !16}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "create_loc_conf", scope: !2003, file: !19, line: 34, baseType: !2011, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "merge_loc_conf", scope: !2003, file: !19, line: 35, baseType: !2020, size: 64, offset: 448)
!2025 = !{i32 7, !"Dwarf Version", i32 5}
!2026 = !{i32 2, !"Debug Info Version", i32 3}
!2027 = !{i32 1, !"wchar_size", i32 4}
!2028 = !{i32 8, !"PIC Level", i32 2}
!2029 = !{i32 7, !"PIE Level", i32 2}
!2030 = !{i32 7, !"uwtable", i32 2}
!2031 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2032 = distinct !DISubprogram(name: "ngx_http_charset_postconfiguration", scope: !2, file: !2, line: 1608, type: !2007, scopeLine: 1609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2049, !2056, !2065, !2073}
!2034 = !DILocalVariable(name: "cf", arg: 1, scope: !2032, file: !2, line: 1608, type: !82)
!2035 = !DILocalVariable(name: "src", scope: !2032, file: !2, line: 1610, type: !35)
!2036 = !DILocalVariable(name: "dst", scope: !2032, file: !2, line: 1610, type: !35)
!2037 = !DILocalVariable(name: "c", scope: !2032, file: !2, line: 1611, type: !41)
!2038 = !DILocalVariable(name: "i", scope: !2032, file: !2, line: 1612, type: !11)
!2039 = !DILocalVariable(name: "t", scope: !2032, file: !2, line: 1612, type: !11)
!2040 = !DILocalVariable(name: "charset", scope: !2032, file: !2, line: 1613, type: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_t", file: !2, line: 29, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 23, size: 256, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !2043, file: !2, line: 24, baseType: !35, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2043, file: !2, line: 25, baseType: !71, size: 128, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2043, file: !2, line: 27, baseType: !154, size: 16, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !2043, file: !2, line: 28, baseType: !154, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 192)
!2049 = !DILocalVariable(name: "recode", scope: !2032, file: !2, line: 1614, type: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_recode_t", file: !2, line: 35, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 32, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2052, file: !2, line: 33, baseType: !41, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2052, file: !2, line: 34, baseType: !41, size: 64, offset: 64)
!2056 = !DILocalVariable(name: "tables", scope: !2032, file: !2, line: 1615, type: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_tables_t", file: !2, line: 43, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 38, size: 256, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2059, file: !2, line: 39, baseType: !41, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2059, file: !2, line: 40, baseType: !41, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "src2dst", scope: !2059, file: !2, line: 41, baseType: !36, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dst2src", scope: !2059, file: !2, line: 42, baseType: !36, size: 64, offset: 192)
!2065 = !DILocalVariable(name: "mcf", scope: !2032, file: !2, line: 1616, type: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_main_conf_t", file: !2, line: 50, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 46, size: 960, elements: !2069)
!2069 = !{!2070, !2071, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "charsets", scope: !2068, file: !2, line: 47, baseType: !89, size: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !2068, file: !2, line: 48, baseType: !89, size: 320, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "recodes", scope: !2068, file: !2, line: 49, baseType: !89, size: 320, offset: 640)
!2073 = !DILabel(scope: !2074, name: "next", file: !2, line: 1645)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1625, column: 46)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 1625, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 1625, column: 5)
!2077 = !{!2078, !2078, i64 0}
!2078 = !{!"any pointer", !2079, i64 0}
!2079 = !{!"omnipotent char", !2080, i64 0}
!2080 = !{!"Simple C/C++ TBAA"}
!2081 = !DILocation(line: 1608, column: 48, scope: !2032)
!2082 = !DILocation(line: 1610, column: 5, scope: !2032)
!2083 = !DILocation(line: 1610, column: 36, scope: !2032)
!2084 = !DILocation(line: 1610, column: 43, scope: !2032)
!2085 = !DILocation(line: 1611, column: 5, scope: !2032)
!2086 = !DILocation(line: 1611, column: 36, scope: !2032)
!2087 = !DILocation(line: 1612, column: 5, scope: !2032)
!2088 = !DILocation(line: 1612, column: 36, scope: !2032)
!2089 = !DILocation(line: 1612, column: 39, scope: !2032)
!2090 = !DILocation(line: 1613, column: 5, scope: !2032)
!2091 = !DILocation(line: 1613, column: 36, scope: !2032)
!2092 = !DILocation(line: 1614, column: 5, scope: !2032)
!2093 = !DILocation(line: 1614, column: 36, scope: !2032)
!2094 = !DILocation(line: 1615, column: 5, scope: !2032)
!2095 = !DILocation(line: 1615, column: 36, scope: !2032)
!2096 = !DILocation(line: 1616, column: 5, scope: !2032)
!2097 = !DILocation(line: 1616, column: 36, scope: !2032)
!2098 = !DILocation(line: 1618, column: 11, scope: !2032)
!2099 = !{!2100, !2078, i64 56}
!2100 = !{!"ngx_conf_s", !2078, i64 0, !2078, i64 8, !2078, i64 16, !2078, i64 24, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2078, i64 56, !2101, i64 64, !2101, i64 72, !2078, i64 80, !2078, i64 88}
!2101 = !{!"long", !2079, i64 0}
!2102 = !{!2103, !2078, i64 0}
!2103 = !{!"", !2078, i64 0, !2078, i64 8, !2078, i64 16}
!2104 = !{!2105, !2101, i64 0}
!2105 = !{!"ngx_module_s", !2101, i64 0, !2101, i64 8, !2078, i64 16, !2101, i64 24, !2101, i64 32, !2101, i64 40, !2078, i64 48, !2078, i64 56, !2078, i64 64, !2101, i64 72, !2078, i64 80, !2078, i64 88, !2078, i64 96, !2078, i64 104, !2078, i64 112, !2078, i64 120, !2078, i64 128, !2101, i64 136, !2101, i64 144, !2101, i64 152, !2101, i64 160, !2101, i64 168, !2101, i64 176, !2101, i64 184, !2101, i64 192}
!2106 = !DILocation(line: 1618, column: 9, scope: !2032)
!2107 = !DILocation(line: 1621, column: 14, scope: !2032)
!2108 = !DILocation(line: 1621, column: 19, scope: !2032)
!2109 = !DILocation(line: 1621, column: 27, scope: !2032)
!2110 = !{!2111, !2078, i64 80}
!2111 = !{!"", !2112, i64 0, !2112, i64 40, !2112, i64 80}
!2112 = !{!"", !2078, i64 0, !2101, i64 8, !2101, i64 16, !2101, i64 24, !2078, i64 32}
!2113 = !DILocation(line: 1621, column: 12, scope: !2032)
!2114 = !DILocation(line: 1622, column: 14, scope: !2032)
!2115 = !DILocation(line: 1622, column: 19, scope: !2032)
!2116 = !DILocation(line: 1622, column: 26, scope: !2032)
!2117 = !{!2111, !2078, i64 40}
!2118 = !DILocation(line: 1622, column: 12, scope: !2032)
!2119 = !DILocation(line: 1623, column: 15, scope: !2032)
!2120 = !DILocation(line: 1623, column: 20, scope: !2032)
!2121 = !DILocation(line: 1623, column: 29, scope: !2032)
!2122 = !{!2111, !2078, i64 0}
!2123 = !DILocation(line: 1623, column: 13, scope: !2032)
!2124 = !DILocation(line: 1625, column: 12, scope: !2076)
!2125 = !{!2101, !2101, i64 0}
!2126 = !DILocation(line: 1625, column: 10, scope: !2076)
!2127 = !DILocation(line: 1625, column: 17, scope: !2075)
!2128 = !DILocation(line: 1625, column: 21, scope: !2075)
!2129 = !DILocation(line: 1625, column: 26, scope: !2075)
!2130 = !DILocation(line: 1625, column: 34, scope: !2075)
!2131 = !{!2111, !2101, i64 88}
!2132 = !DILocation(line: 1625, column: 19, scope: !2075)
!2133 = !DILocation(line: 1625, column: 5, scope: !2076)
!2134 = !DILocation(line: 1627, column: 13, scope: !2074)
!2135 = !DILocation(line: 1627, column: 20, scope: !2074)
!2136 = !DILocation(line: 1627, column: 23, scope: !2074)
!2137 = !{!2138, !2101, i64 0}
!2138 = !{!"", !2101, i64 0, !2101, i64 8}
!2139 = !DILocation(line: 1627, column: 11, scope: !2074)
!2140 = !DILocation(line: 1629, column: 16, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1629, column: 9)
!2142 = !DILocation(line: 1629, column: 14, scope: !2141)
!2143 = !DILocation(line: 1629, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 1629, column: 9)
!2145 = !DILocation(line: 1629, column: 25, scope: !2144)
!2146 = !DILocation(line: 1629, column: 30, scope: !2144)
!2147 = !DILocation(line: 1629, column: 37, scope: !2144)
!2148 = !{!2111, !2101, i64 48}
!2149 = !DILocation(line: 1629, column: 23, scope: !2144)
!2150 = !DILocation(line: 1629, column: 9, scope: !2141)
!2151 = !DILocation(line: 1631, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 1631, column: 17)
!2153 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 1629, column: 49)
!2154 = !DILocation(line: 1631, column: 22, scope: !2152)
!2155 = !DILocation(line: 1631, column: 29, scope: !2152)
!2156 = !DILocation(line: 1631, column: 32, scope: !2152)
!2157 = !{!2158, !2101, i64 0}
!2158 = !{!"", !2101, i64 0, !2101, i64 8, !2078, i64 16, !2078, i64 24}
!2159 = !DILocation(line: 1631, column: 19, scope: !2152)
!2160 = !DILocation(line: 1631, column: 36, scope: !2152)
!2161 = !DILocation(line: 1631, column: 39, scope: !2152)
!2162 = !DILocation(line: 1631, column: 46, scope: !2152)
!2163 = !DILocation(line: 1631, column: 49, scope: !2152)
!2164 = !{!2138, !2101, i64 8}
!2165 = !DILocation(line: 1631, column: 56, scope: !2152)
!2166 = !DILocation(line: 1631, column: 63, scope: !2152)
!2167 = !DILocation(line: 1631, column: 66, scope: !2152)
!2168 = !{!2158, !2101, i64 8}
!2169 = !DILocation(line: 1631, column: 53, scope: !2152)
!2170 = !DILocation(line: 1631, column: 17, scope: !2153)
!2171 = !DILocation(line: 1632, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 1631, column: 71)
!2173 = !DILocation(line: 1635, column: 17, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 1635, column: 17)
!2175 = !DILocation(line: 1635, column: 22, scope: !2174)
!2176 = !DILocation(line: 1635, column: 29, scope: !2174)
!2177 = !DILocation(line: 1635, column: 32, scope: !2174)
!2178 = !DILocation(line: 1635, column: 19, scope: !2174)
!2179 = !DILocation(line: 1635, column: 36, scope: !2174)
!2180 = !DILocation(line: 1635, column: 39, scope: !2174)
!2181 = !DILocation(line: 1635, column: 46, scope: !2174)
!2182 = !DILocation(line: 1635, column: 49, scope: !2174)
!2183 = !DILocation(line: 1635, column: 56, scope: !2174)
!2184 = !DILocation(line: 1635, column: 63, scope: !2174)
!2185 = !DILocation(line: 1635, column: 66, scope: !2174)
!2186 = !DILocation(line: 1635, column: 53, scope: !2174)
!2187 = !DILocation(line: 1635, column: 17, scope: !2153)
!2188 = !DILocation(line: 1636, column: 17, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1635, column: 71)
!2190 = !DILocation(line: 1638, column: 9, scope: !2153)
!2191 = !DILocation(line: 1629, column: 45, scope: !2144)
!2192 = !DILocation(line: 1629, column: 9, scope: !2144)
!2193 = distinct !{!2193, !2150, !2194, !2195}
!2194 = !DILocation(line: 1638, column: 9, scope: !2141)
!2195 = !{!"llvm.loop.mustprogress"}
!2196 = !DILocation(line: 1640, column: 9, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1640, column: 9)
!2198 = !{!2100, !2078, i64 48}
!2199 = !{!2200, !2101, i64 0}
!2200 = !{!"ngx_log_s", !2101, i64 0, !2078, i64 8, !2101, i64 16, !2101, i64 24, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2078, i64 56, !2078, i64 64, !2078, i64 72}
!2201 = !DILocation(line: 1640, column: 9, scope: !2074)
!2202 = !DILocation(line: 1643, column: 9, scope: !2074)
!2203 = !DILocation(line: 1645, column: 5, scope: !2074)
!2204 = !DILocation(line: 1646, column: 9, scope: !2074)
!2205 = !DILocation(line: 1625, column: 42, scope: !2075)
!2206 = !DILocation(line: 1625, column: 5, scope: !2075)
!2207 = distinct !{!2207, !2133, !2208, !2195}
!2208 = !DILocation(line: 1647, column: 5, scope: !2076)
!2209 = !DILocation(line: 1650, column: 12, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 1650, column: 5)
!2211 = !DILocation(line: 1650, column: 10, scope: !2210)
!2212 = !DILocation(line: 1650, column: 17, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 1650, column: 5)
!2214 = !DILocation(line: 1650, column: 21, scope: !2213)
!2215 = !DILocation(line: 1650, column: 26, scope: !2213)
!2216 = !DILocation(line: 1650, column: 33, scope: !2213)
!2217 = !DILocation(line: 1650, column: 19, scope: !2213)
!2218 = !DILocation(line: 1650, column: 5, scope: !2210)
!2219 = !DILocation(line: 1652, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 1650, column: 45)
!2221 = !DILocation(line: 1652, column: 23, scope: !2220)
!2222 = !DILocation(line: 1652, column: 30, scope: !2220)
!2223 = !DILocation(line: 1652, column: 33, scope: !2220)
!2224 = !DILocation(line: 1652, column: 38, scope: !2220)
!2225 = !{!2226, !2078, i64 0}
!2226 = !{!"", !2078, i64 0, !2227, i64 8, !2228, i64 24, !2228, i64 26}
!2227 = !{!"", !2101, i64 0, !2078, i64 8}
!2228 = !{!"int", !2079, i64 0}
!2229 = !DILocation(line: 1652, column: 13, scope: !2220)
!2230 = !DILocation(line: 1654, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 1654, column: 13)
!2232 = !DILocation(line: 1654, column: 17, scope: !2231)
!2233 = !DILocation(line: 1654, column: 13, scope: !2220)
!2234 = !DILocation(line: 1655, column: 31, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 1654, column: 26)
!2236 = !DILocation(line: 1655, column: 35, scope: !2235)
!2237 = !{!2100, !2078, i64 24}
!2238 = !DILocation(line: 1655, column: 60, scope: !2235)
!2239 = !DILocation(line: 1655, column: 65, scope: !2235)
!2240 = !DILocation(line: 1655, column: 74, scope: !2235)
!2241 = !{!2111, !2101, i64 8}
!2242 = !DILocation(line: 1655, column: 58, scope: !2235)
!2243 = !DILocation(line: 1655, column: 19, scope: !2235)
!2244 = !DILocation(line: 1655, column: 17, scope: !2235)
!2245 = !DILocation(line: 1656, column: 17, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 1656, column: 17)
!2247 = !DILocation(line: 1656, column: 21, scope: !2246)
!2248 = !DILocation(line: 1656, column: 17, scope: !2235)
!2249 = !DILocation(line: 1657, column: 17, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 1656, column: 30)
!2251 = !DILocation(line: 1660, column: 45, scope: !2235)
!2252 = !DILocation(line: 1660, column: 13, scope: !2235)
!2253 = !DILocation(line: 1660, column: 21, scope: !2235)
!2254 = !DILocation(line: 1660, column: 28, scope: !2235)
!2255 = !DILocation(line: 1660, column: 31, scope: !2235)
!2256 = !DILocation(line: 1660, column: 36, scope: !2235)
!2257 = !DILocation(line: 1660, column: 43, scope: !2235)
!2258 = !DILocation(line: 1661, column: 9, scope: !2235)
!2259 = !DILocation(line: 1663, column: 15, scope: !2220)
!2260 = !DILocation(line: 1663, column: 23, scope: !2220)
!2261 = !DILocation(line: 1663, column: 30, scope: !2220)
!2262 = !DILocation(line: 1663, column: 33, scope: !2220)
!2263 = !DILocation(line: 1663, column: 38, scope: !2220)
!2264 = !DILocation(line: 1663, column: 13, scope: !2220)
!2265 = !DILocation(line: 1665, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 1665, column: 13)
!2267 = !DILocation(line: 1665, column: 17, scope: !2266)
!2268 = !DILocation(line: 1665, column: 13, scope: !2220)
!2269 = !DILocation(line: 1666, column: 31, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 1665, column: 26)
!2271 = !DILocation(line: 1666, column: 35, scope: !2270)
!2272 = !DILocation(line: 1666, column: 60, scope: !2270)
!2273 = !DILocation(line: 1666, column: 65, scope: !2270)
!2274 = !DILocation(line: 1666, column: 74, scope: !2270)
!2275 = !DILocation(line: 1666, column: 58, scope: !2270)
!2276 = !DILocation(line: 1666, column: 19, scope: !2270)
!2277 = !DILocation(line: 1666, column: 17, scope: !2270)
!2278 = !DILocation(line: 1667, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 1667, column: 17)
!2280 = !DILocation(line: 1667, column: 21, scope: !2279)
!2281 = !DILocation(line: 1667, column: 17, scope: !2270)
!2282 = !DILocation(line: 1668, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 1667, column: 30)
!2284 = !DILocation(line: 1671, column: 45, scope: !2270)
!2285 = !DILocation(line: 1671, column: 13, scope: !2270)
!2286 = !DILocation(line: 1671, column: 21, scope: !2270)
!2287 = !DILocation(line: 1671, column: 28, scope: !2270)
!2288 = !DILocation(line: 1671, column: 31, scope: !2270)
!2289 = !DILocation(line: 1671, column: 36, scope: !2270)
!2290 = !DILocation(line: 1671, column: 43, scope: !2270)
!2291 = !DILocation(line: 1672, column: 9, scope: !2270)
!2292 = !DILocation(line: 1674, column: 30, scope: !2220)
!2293 = !DILocation(line: 1674, column: 37, scope: !2220)
!2294 = !DILocation(line: 1674, column: 40, scope: !2220)
!2295 = !{!2158, !2078, i64 16}
!2296 = !DILocation(line: 1674, column: 9, scope: !2220)
!2297 = !DILocation(line: 1674, column: 13, scope: !2220)
!2298 = !DILocation(line: 1674, column: 20, scope: !2220)
!2299 = !DILocation(line: 1674, column: 23, scope: !2220)
!2300 = !DILocation(line: 1674, column: 28, scope: !2220)
!2301 = !DILocation(line: 1675, column: 30, scope: !2220)
!2302 = !DILocation(line: 1675, column: 37, scope: !2220)
!2303 = !DILocation(line: 1675, column: 40, scope: !2220)
!2304 = !{!2158, !2078, i64 24}
!2305 = !DILocation(line: 1675, column: 9, scope: !2220)
!2306 = !DILocation(line: 1675, column: 13, scope: !2220)
!2307 = !DILocation(line: 1675, column: 20, scope: !2220)
!2308 = !DILocation(line: 1675, column: 23, scope: !2220)
!2309 = !DILocation(line: 1675, column: 28, scope: !2220)
!2310 = !DILocation(line: 1676, column: 5, scope: !2220)
!2311 = !DILocation(line: 1650, column: 41, scope: !2213)
!2312 = !DILocation(line: 1650, column: 5, scope: !2213)
!2313 = distinct !{!2313, !2218, !2314, !2195}
!2314 = !DILocation(line: 1676, column: 5, scope: !2210)
!2315 = !DILocation(line: 1678, column: 35, scope: !2032)
!2316 = !DILocation(line: 1678, column: 33, scope: !2032)
!2317 = !DILocation(line: 1679, column: 32, scope: !2032)
!2318 = !DILocation(line: 1681, column: 33, scope: !2032)
!2319 = !DILocation(line: 1681, column: 31, scope: !2032)
!2320 = !DILocation(line: 1682, column: 30, scope: !2032)
!2321 = !DILocation(line: 1684, column: 5, scope: !2032)
!2322 = !DILocation(line: 1685, column: 1, scope: !2032)
!2323 = distinct !DISubprogram(name: "ngx_http_charset_create_main_conf", scope: !2, file: !2, line: 1490, type: !2012, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2324)
!2324 = !{!2325, !2326}
!2325 = !DILocalVariable(name: "cf", arg: 1, scope: !2323, file: !2, line: 1490, type: !82)
!2326 = !DILocalVariable(name: "mcf", scope: !2323, file: !2, line: 1492, type: !2066)
!2327 = !DILocation(line: 1490, column: 47, scope: !2323)
!2328 = !DILocation(line: 1492, column: 5, scope: !2323)
!2329 = !DILocation(line: 1492, column: 36, scope: !2323)
!2330 = !DILocation(line: 1494, column: 23, scope: !2323)
!2331 = !DILocation(line: 1494, column: 27, scope: !2323)
!2332 = !DILocation(line: 1494, column: 11, scope: !2323)
!2333 = !DILocation(line: 1494, column: 9, scope: !2323)
!2334 = !DILocation(line: 1495, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1495, column: 9)
!2336 = !DILocation(line: 1495, column: 13, scope: !2335)
!2337 = !DILocation(line: 1495, column: 9, scope: !2323)
!2338 = !DILocation(line: 1496, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 1495, column: 22)
!2340 = !DILocation(line: 1499, column: 25, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1499, column: 9)
!2342 = !DILocation(line: 1499, column: 30, scope: !2341)
!2343 = !DILocation(line: 1499, column: 40, scope: !2341)
!2344 = !DILocation(line: 1499, column: 44, scope: !2341)
!2345 = !DILocation(line: 1499, column: 9, scope: !2341)
!2346 = !DILocation(line: 1500, column: 9, scope: !2341)
!2347 = !DILocation(line: 1499, column: 9, scope: !2323)
!2348 = !DILocation(line: 1502, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 1501, column: 5)
!2350 = !DILocation(line: 1505, column: 25, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1505, column: 9)
!2352 = !DILocation(line: 1505, column: 30, scope: !2351)
!2353 = !DILocation(line: 1505, column: 38, scope: !2351)
!2354 = !DILocation(line: 1505, column: 42, scope: !2351)
!2355 = !DILocation(line: 1505, column: 9, scope: !2351)
!2356 = !DILocation(line: 1507, column: 9, scope: !2351)
!2357 = !DILocation(line: 1505, column: 9, scope: !2323)
!2358 = !DILocation(line: 1509, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 1508, column: 5)
!2360 = !DILocation(line: 1512, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1512, column: 9)
!2362 = !DILocation(line: 1512, column: 30, scope: !2361)
!2363 = !DILocation(line: 1512, column: 39, scope: !2361)
!2364 = !DILocation(line: 1512, column: 43, scope: !2361)
!2365 = !DILocation(line: 1512, column: 9, scope: !2361)
!2366 = !DILocation(line: 1514, column: 9, scope: !2361)
!2367 = !DILocation(line: 1512, column: 9, scope: !2323)
!2368 = !DILocation(line: 1516, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 1515, column: 5)
!2370 = !DILocation(line: 1519, column: 12, scope: !2323)
!2371 = !DILocation(line: 1519, column: 5, scope: !2323)
!2372 = !DILocation(line: 1520, column: 1, scope: !2323)
!2373 = distinct !DISubprogram(name: "ngx_http_charset_create_loc_conf", scope: !2, file: !2, line: 1524, type: !2012, scopeLine: 1525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2374)
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "cf", arg: 1, scope: !2373, file: !2, line: 1524, type: !82)
!2376 = !DILocalVariable(name: "lcf", scope: !2373, file: !2, line: 1526, type: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_loc_conf_t", file: !2, line: 60, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 53, size: 384, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !2379, file: !2, line: 54, baseType: !41, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "source_charset", scope: !2379, file: !2, line: 55, baseType: !41, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !2379, file: !2, line: 56, baseType: !1084, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2379, file: !2, line: 58, baseType: !1094, size: 128, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "types_keys", scope: !2379, file: !2, line: 59, baseType: !88, size: 64, offset: 320)
!2386 = !DILocation(line: 1524, column: 46, scope: !2373)
!2387 = !DILocation(line: 1526, column: 5, scope: !2373)
!2388 = !DILocation(line: 1526, column: 35, scope: !2373)
!2389 = !DILocation(line: 1528, column: 23, scope: !2373)
!2390 = !DILocation(line: 1528, column: 27, scope: !2373)
!2391 = !DILocation(line: 1528, column: 11, scope: !2373)
!2392 = !DILocation(line: 1528, column: 9, scope: !2373)
!2393 = !DILocation(line: 1529, column: 9, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 1529, column: 9)
!2395 = !DILocation(line: 1529, column: 13, scope: !2394)
!2396 = !DILocation(line: 1529, column: 9, scope: !2373)
!2397 = !DILocation(line: 1530, column: 9, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 1529, column: 22)
!2399 = !DILocation(line: 1540, column: 5, scope: !2373)
!2400 = !DILocation(line: 1540, column: 10, scope: !2373)
!2401 = !DILocation(line: 1540, column: 18, scope: !2373)
!2402 = !{!2403, !2101, i64 0}
!2403 = !{!"", !2101, i64 0, !2101, i64 8, !2101, i64 16, !2404, i64 24, !2078, i64 40}
!2404 = !{!"", !2078, i64 0, !2101, i64 8}
!2405 = !DILocation(line: 1541, column: 5, scope: !2373)
!2406 = !DILocation(line: 1541, column: 10, scope: !2373)
!2407 = !DILocation(line: 1541, column: 25, scope: !2373)
!2408 = !{!2403, !2101, i64 8}
!2409 = !DILocation(line: 1542, column: 5, scope: !2373)
!2410 = !DILocation(line: 1542, column: 10, scope: !2373)
!2411 = !DILocation(line: 1542, column: 27, scope: !2373)
!2412 = !{!2403, !2101, i64 16}
!2413 = !DILocation(line: 1544, column: 12, scope: !2373)
!2414 = !DILocation(line: 1544, column: 5, scope: !2373)
!2415 = !DILocation(line: 1545, column: 1, scope: !2373)
!2416 = distinct !DISubprogram(name: "ngx_http_charset_merge_loc_conf", scope: !2, file: !2, line: 1549, type: !2021, scopeLine: 1550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!2418 = !DILocalVariable(name: "cf", arg: 1, scope: !2416, file: !2, line: 1549, type: !82)
!2419 = !DILocalVariable(name: "parent", arg: 2, scope: !2416, file: !2, line: 1549, type: !16)
!2420 = !DILocalVariable(name: "child", arg: 3, scope: !2416, file: !2, line: 1549, type: !16)
!2421 = !DILocalVariable(name: "prev", scope: !2416, file: !2, line: 1551, type: !2377)
!2422 = !DILocalVariable(name: "conf", scope: !2416, file: !2, line: 1552, type: !2377)
!2423 = !DILocalVariable(name: "i", scope: !2416, file: !2, line: 1554, type: !11)
!2424 = !DILocalVariable(name: "recode", scope: !2416, file: !2, line: 1555, type: !2050)
!2425 = !DILocalVariable(name: "mcf", scope: !2416, file: !2, line: 1556, type: !2066)
!2426 = !DILocation(line: 1549, column: 45, scope: !2416)
!2427 = !DILocation(line: 1549, column: 55, scope: !2416)
!2428 = !DILocation(line: 1549, column: 69, scope: !2416)
!2429 = !DILocation(line: 1551, column: 5, scope: !2416)
!2430 = !DILocation(line: 1551, column: 34, scope: !2416)
!2431 = !DILocation(line: 1551, column: 41, scope: !2416)
!2432 = !DILocation(line: 1552, column: 5, scope: !2416)
!2433 = !DILocation(line: 1552, column: 34, scope: !2416)
!2434 = !DILocation(line: 1552, column: 41, scope: !2416)
!2435 = !DILocation(line: 1554, column: 5, scope: !2416)
!2436 = !DILocation(line: 1554, column: 36, scope: !2416)
!2437 = !DILocation(line: 1555, column: 5, scope: !2416)
!2438 = !DILocation(line: 1555, column: 36, scope: !2416)
!2439 = !DILocation(line: 1556, column: 5, scope: !2416)
!2440 = !DILocation(line: 1556, column: 36, scope: !2416)
!2441 = !DILocation(line: 1558, column: 30, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1558, column: 9)
!2443 = !DILocation(line: 1558, column: 35, scope: !2442)
!2444 = !DILocation(line: 1558, column: 41, scope: !2442)
!2445 = !DILocation(line: 1558, column: 54, scope: !2442)
!2446 = !DILocation(line: 1558, column: 60, scope: !2442)
!2447 = !DILocation(line: 1559, column: 31, scope: !2442)
!2448 = !DILocation(line: 1559, column: 37, scope: !2442)
!2449 = !DILocation(line: 1559, column: 50, scope: !2442)
!2450 = !DILocation(line: 1559, column: 56, scope: !2442)
!2451 = !DILocation(line: 1558, column: 9, scope: !2442)
!2452 = !DILocation(line: 1561, column: 9, scope: !2442)
!2453 = !DILocation(line: 1558, column: 9, scope: !2416)
!2454 = !DILocation(line: 1563, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 1562, column: 5)
!2456 = !DILocation(line: 1566, column: 5, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1566, column: 5)
!2458 = !DILocation(line: 1566, column: 5, scope: !2416)
!2459 = !DILocation(line: 1566, column: 5, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 1566, column: 5)
!2461 = !DILocation(line: 1567, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1567, column: 5)
!2463 = !DILocation(line: 1567, column: 5, scope: !2416)
!2464 = !DILocation(line: 1567, column: 5, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1567, column: 5)
!2466 = !DILocation(line: 1568, column: 5, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1568, column: 5)
!2468 = !DILocation(line: 1568, column: 5, scope: !2416)
!2469 = !DILocation(line: 1568, column: 5, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 1568, column: 5)
!2471 = !DILocation(line: 1571, column: 9, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1571, column: 9)
!2473 = !DILocation(line: 1571, column: 15, scope: !2472)
!2474 = !DILocation(line: 1571, column: 23, scope: !2472)
!2475 = !DILocation(line: 1572, column: 9, scope: !2472)
!2476 = !DILocation(line: 1572, column: 12, scope: !2472)
!2477 = !DILocation(line: 1572, column: 18, scope: !2472)
!2478 = !DILocation(line: 1572, column: 33, scope: !2472)
!2479 = !DILocation(line: 1573, column: 9, scope: !2472)
!2480 = !DILocation(line: 1573, column: 12, scope: !2472)
!2481 = !DILocation(line: 1573, column: 18, scope: !2472)
!2482 = !DILocation(line: 1573, column: 29, scope: !2472)
!2483 = !DILocation(line: 1573, column: 35, scope: !2472)
!2484 = !DILocation(line: 1573, column: 26, scope: !2472)
!2485 = !DILocation(line: 1571, column: 9, scope: !2416)
!2486 = !DILocation(line: 1575, column: 9, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 1574, column: 5)
!2488 = !DILocation(line: 1578, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1578, column: 9)
!2490 = !DILocation(line: 1578, column: 15, scope: !2489)
!2491 = !DILocation(line: 1578, column: 30, scope: !2489)
!2492 = !DILocation(line: 1579, column: 9, scope: !2489)
!2493 = !DILocation(line: 1579, column: 12, scope: !2489)
!2494 = !DILocation(line: 1579, column: 18, scope: !2489)
!2495 = !DILocation(line: 1579, column: 26, scope: !2489)
!2496 = !DILocation(line: 1578, column: 9, scope: !2416)
!2497 = !DILocation(line: 1581, column: 9, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 1580, column: 5)
!2499 = !DILocation(line: 1584, column: 11, scope: !2416)
!2500 = !DILocation(line: 1584, column: 9, scope: !2416)
!2501 = !DILocation(line: 1586, column: 14, scope: !2416)
!2502 = !DILocation(line: 1586, column: 19, scope: !2416)
!2503 = !DILocation(line: 1586, column: 27, scope: !2416)
!2504 = !DILocation(line: 1586, column: 12, scope: !2416)
!2505 = !DILocation(line: 1587, column: 12, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1587, column: 5)
!2507 = !DILocation(line: 1587, column: 10, scope: !2506)
!2508 = !DILocation(line: 1587, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 1587, column: 5)
!2510 = !DILocation(line: 1587, column: 21, scope: !2509)
!2511 = !DILocation(line: 1587, column: 26, scope: !2509)
!2512 = !DILocation(line: 1587, column: 34, scope: !2509)
!2513 = !DILocation(line: 1587, column: 19, scope: !2509)
!2514 = !DILocation(line: 1587, column: 5, scope: !2506)
!2515 = !DILocation(line: 1588, column: 13, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !2, line: 1588, column: 13)
!2517 = distinct !DILexicalBlock(scope: !2509, file: !2, line: 1587, column: 46)
!2518 = !DILocation(line: 1588, column: 19, scope: !2516)
!2519 = !DILocation(line: 1588, column: 37, scope: !2516)
!2520 = !DILocation(line: 1588, column: 44, scope: !2516)
!2521 = !DILocation(line: 1588, column: 47, scope: !2516)
!2522 = !DILocation(line: 1588, column: 34, scope: !2516)
!2523 = !DILocation(line: 1589, column: 13, scope: !2516)
!2524 = !DILocation(line: 1589, column: 16, scope: !2516)
!2525 = !DILocation(line: 1589, column: 22, scope: !2516)
!2526 = !DILocation(line: 1589, column: 33, scope: !2516)
!2527 = !DILocation(line: 1589, column: 40, scope: !2516)
!2528 = !DILocation(line: 1589, column: 43, scope: !2516)
!2529 = !DILocation(line: 1589, column: 30, scope: !2516)
!2530 = !DILocation(line: 1588, column: 13, scope: !2517)
!2531 = !DILocation(line: 1591, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 1590, column: 9)
!2533 = !DILocation(line: 1593, column: 5, scope: !2517)
!2534 = !DILocation(line: 1587, column: 42, scope: !2509)
!2535 = !DILocation(line: 1587, column: 5, scope: !2509)
!2536 = distinct !{!2536, !2514, !2537, !2195}
!2537 = !DILocation(line: 1593, column: 5, scope: !2506)
!2538 = !DILocation(line: 1595, column: 30, scope: !2416)
!2539 = !DILocation(line: 1595, column: 35, scope: !2416)
!2540 = !DILocation(line: 1595, column: 14, scope: !2416)
!2541 = !DILocation(line: 1595, column: 12, scope: !2416)
!2542 = !DILocation(line: 1596, column: 9, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 1596, column: 9)
!2544 = !DILocation(line: 1596, column: 16, scope: !2543)
!2545 = !DILocation(line: 1596, column: 9, scope: !2416)
!2546 = !DILocation(line: 1597, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 1596, column: 25)
!2548 = !DILocation(line: 1600, column: 19, scope: !2416)
!2549 = !DILocation(line: 1600, column: 25, scope: !2416)
!2550 = !DILocation(line: 1600, column: 5, scope: !2416)
!2551 = !DILocation(line: 1600, column: 13, scope: !2416)
!2552 = !DILocation(line: 1600, column: 17, scope: !2416)
!2553 = !DILocation(line: 1601, column: 19, scope: !2416)
!2554 = !DILocation(line: 1601, column: 25, scope: !2416)
!2555 = !DILocation(line: 1601, column: 5, scope: !2416)
!2556 = !DILocation(line: 1601, column: 13, scope: !2416)
!2557 = !DILocation(line: 1601, column: 17, scope: !2416)
!2558 = !DILocation(line: 1603, column: 5, scope: !2416)
!2559 = !DILocation(line: 1604, column: 1, scope: !2416)
!2560 = !DISubprogram(name: "ngx_log_error_core", scope: !187, file: !187, line: 90, type: !2561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !11, !184, !2563, !45, null}
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !2564, line: 16, baseType: !139)
!2564 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!2565 = !DISubprogram(name: "ngx_pcalloc", scope: !101, file: !101, line: 81, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!16, !98, !33}
!2568 = distinct !DISubprogram(name: "ngx_http_charset_header_filter", scope: !2, file: !2, line: 217, type: !621, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2569)
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2570 = !DILocalVariable(name: "r", arg: 1, scope: !2568, file: !2, line: 217, type: !623)
!2571 = !DILocalVariable(name: "charset", scope: !2568, file: !2, line: 219, type: !41)
!2572 = !DILocalVariable(name: "source_charset", scope: !2568, file: !2, line: 219, type: !41)
!2573 = !DILocalVariable(name: "dst", scope: !2568, file: !2, line: 220, type: !71)
!2574 = !DILocalVariable(name: "src", scope: !2568, file: !2, line: 220, type: !71)
!2575 = !DILocalVariable(name: "charsets", scope: !2568, file: !2, line: 221, type: !2041)
!2576 = !DILocalVariable(name: "mcf", scope: !2568, file: !2, line: 222, type: !2066)
!2577 = !DILabel(scope: !2568, name: "no_charset_map", file: !2, line: 306)
!2578 = !DILocation(line: 217, column: 52, scope: !2568)
!2579 = !DILocation(line: 219, column: 5, scope: !2568)
!2580 = !DILocation(line: 219, column: 36, scope: !2568)
!2581 = !DILocation(line: 219, column: 45, scope: !2568)
!2582 = !DILocation(line: 220, column: 5, scope: !2568)
!2583 = !DILocation(line: 220, column: 36, scope: !2568)
!2584 = !DILocation(line: 220, column: 41, scope: !2568)
!2585 = !DILocation(line: 221, column: 5, scope: !2568)
!2586 = !DILocation(line: 221, column: 36, scope: !2568)
!2587 = !DILocation(line: 222, column: 5, scope: !2568)
!2588 = !DILocation(line: 222, column: 36, scope: !2568)
!2589 = !DILocation(line: 224, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 224, column: 9)
!2591 = !DILocation(line: 224, column: 14, scope: !2590)
!2592 = !DILocation(line: 224, column: 17, scope: !2590)
!2593 = !{!2594, !2078, i64 1072}
!2594 = !{!"ngx_http_request_s", !2228, i64 0, !2078, i64 8, !2078, i64 16, !2078, i64 24, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2078, i64 56, !2078, i64 64, !2078, i64 72, !2078, i64 80, !2078, i64 88, !2078, i64 96, !2595, i64 104, !2598, i64 480, !2078, i64 888, !2101, i64 896, !2101, i64 904, !2101, i64 912, !2101, i64 920, !2101, i64 928, !2227, i64 936, !2227, i64 952, !2227, i64 968, !2227, i64 984, !2227, i64 1000, !2227, i64 1016, !2227, i64 1032, !2227, i64 1048, !2078, i64 1064, !2078, i64 1072, !2078, i64 1080, !2078, i64 1088, !2078, i64 1096, !2078, i64 1104, !2101, i64 1112, !2078, i64 1120, !2101, i64 1128, !2078, i64 1136, !2101, i64 1144, !2101, i64 1152, !2101, i64 1160, !2101, i64 1168, !2101, i64 1176, !2078, i64 1184, !2078, i64 1192, !2078, i64 1200, !2078, i64 1208, !2228, i64 1216, !2228, i64 1218, !2228, i64 1219, !2228, i64 1220, !2228, i64 1220, !2228, i64 1220, !2228, i64 1220, !2228, i64 1220, !2228, i64 1221, !2228, i64 1221, !2228, i64 1221, !2228, i64 1221, !2228, i64 1221, !2228, i64 1221, !2228, i64 1221, !2228, i64 1222, !2228, i64 1222, !2228, i64 1222, !2228, i64 1222, !2228, i64 1222, !2228, i64 1222, !2228, i64 1223, !2228, i64 1223, !2228, i64 1223, !2228, i64 1223, !2228, i64 1223, !2228, i64 1223, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1224, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1225, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1226, !2228, i64 1227, !2228, i64 1227, !2228, i64 1227, !2228, i64 1227, !2228, i64 1227, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1228, !2228, i64 1229, !2228, i64 1229, !2101, i64 1232, !2101, i64 1240, !2101, i64 1248, !2079, i64 1256, !2078, i64 1288, !2078, i64 1296, !2078, i64 1304, !2078, i64 1312, !2078, i64 1320, !2078, i64 1328, !2078, i64 1336, !2078, i64 1344, !2078, i64 1352, !2078, i64 1360, !2078, i64 1368, !2078, i64 1376, !2078, i64 1384, !2078, i64 1392, !2078, i64 1400, !2078, i64 1408, !2078, i64 1416, !2228, i64 1424, !2228, i64 1426}
!2595 = !{!"", !2596, i64 0, !2078, i64 56, !2078, i64 64, !2078, i64 72, !2078, i64 80, !2078, i64 88, !2078, i64 96, !2078, i64 104, !2078, i64 112, !2078, i64 120, !2078, i64 128, !2078, i64 136, !2078, i64 144, !2078, i64 152, !2078, i64 160, !2078, i64 168, !2078, i64 176, !2078, i64 184, !2078, i64 192, !2078, i64 200, !2078, i64 208, !2078, i64 216, !2112, i64 224, !2227, i64 264, !2227, i64 280, !2112, i64 296, !2227, i64 336, !2101, i64 352, !2101, i64 360, !2228, i64 368, !2228, i64 368, !2228, i64 368, !2228, i64 368, !2228, i64 368, !2228, i64 368, !2228, i64 368, !2228, i64 369, !2228, i64 369}
!2596 = !{!"", !2078, i64 0, !2597, i64 8, !2101, i64 32, !2101, i64 40, !2078, i64 48}
!2597 = !{!"ngx_list_part_s", !2078, i64 0, !2101, i64 8, !2078, i64 16}
!2598 = !{!"", !2596, i64 0, !2596, i64 56, !2101, i64 112, !2227, i64 120, !2078, i64 136, !2078, i64 144, !2078, i64 152, !2078, i64 160, !2078, i64 168, !2078, i64 176, !2078, i64 184, !2078, i64 192, !2078, i64 200, !2078, i64 208, !2078, i64 216, !2078, i64 224, !2078, i64 232, !2101, i64 240, !2227, i64 248, !2227, i64 264, !2078, i64 280, !2101, i64 288, !2112, i64 296, !2112, i64 336, !2101, i64 376, !2101, i64 384, !2101, i64 392, !2101, i64 400}
!2599 = !DILocation(line: 224, column: 11, scope: !2590)
!2600 = !DILocation(line: 224, column: 9, scope: !2568)
!2601 = !DILocation(line: 225, column: 48, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 224, column: 23)
!2603 = !DILocation(line: 225, column: 19, scope: !2602)
!2604 = !DILocation(line: 225, column: 17, scope: !2602)
!2605 = !DILocation(line: 227, column: 5, scope: !2602)
!2606 = !DILocation(line: 228, column: 49, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 227, column: 12)
!2608 = !DILocation(line: 228, column: 19, scope: !2607)
!2609 = !DILocation(line: 228, column: 17, scope: !2607)
!2610 = !DILocation(line: 231, column: 9, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 231, column: 9)
!2612 = !DILocation(line: 231, column: 17, scope: !2611)
!2613 = !DILocation(line: 231, column: 9, scope: !2568)
!2614 = !DILocation(line: 232, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !2, line: 231, column: 31)
!2616 = !DILocation(line: 235, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 235, column: 9)
!2618 = !DILocation(line: 235, column: 17, scope: !2617)
!2619 = !DILocation(line: 235, column: 9, scope: !2568)
!2620 = !DILocation(line: 236, column: 16, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 235, column: 34)
!2622 = !DILocation(line: 236, column: 44, scope: !2621)
!2623 = !DILocation(line: 236, column: 9, scope: !2621)
!2624 = !DILocation(line: 241, column: 46, scope: !2568)
!2625 = !DILocation(line: 241, column: 22, scope: !2568)
!2626 = !DILocation(line: 241, column: 20, scope: !2568)
!2627 = !DILocation(line: 243, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 243, column: 9)
!2629 = !DILocation(line: 243, column: 24, scope: !2628)
!2630 = !DILocation(line: 243, column: 9, scope: !2568)
!2631 = !DILocation(line: 244, column: 9, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 243, column: 38)
!2633 = !DILocation(line: 255, column: 9, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 255, column: 9)
!2635 = !DILocation(line: 255, column: 24, scope: !2634)
!2636 = !DILocation(line: 255, column: 9, scope: !2568)
!2637 = !DILocation(line: 256, column: 30, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !2, line: 255, column: 49)
!2639 = !DILocation(line: 256, column: 9, scope: !2638)
!2640 = !DILocation(line: 258, column: 16, scope: !2638)
!2641 = !DILocation(line: 258, column: 44, scope: !2638)
!2642 = !DILocation(line: 258, column: 9, scope: !2638)
!2643 = !DILocation(line: 261, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 261, column: 9)
!2645 = !DILocation(line: 261, column: 17, scope: !2644)
!2646 = !DILocation(line: 262, column: 9, scope: !2644)
!2647 = !DILocation(line: 262, column: 12, scope: !2644)
!2648 = !DILocation(line: 262, column: 27, scope: !2644)
!2649 = !DILocation(line: 261, column: 9, scope: !2568)
!2650 = !DILocation(line: 264, column: 13, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 264, column: 13)
!2652 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 263, column: 5)
!2653 = !DILocation(line: 264, column: 31, scope: !2651)
!2654 = !DILocation(line: 264, column: 28, scope: !2651)
!2655 = !DILocation(line: 265, column: 13, scope: !2651)
!2656 = !DILocation(line: 265, column: 36, scope: !2651)
!2657 = !{!2227, !2078, i64 8}
!2658 = !DILocation(line: 265, column: 46, scope: !2651)
!2659 = !DILocation(line: 265, column: 56, scope: !2651)
!2660 = !{!2227, !2101, i64 0}
!2661 = !DILocation(line: 265, column: 16, scope: !2651)
!2662 = !DILocation(line: 265, column: 61, scope: !2651)
!2663 = !DILocation(line: 264, column: 13, scope: !2652)
!2664 = !DILocation(line: 267, column: 13, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 266, column: 9)
!2666 = !DILocation(line: 270, column: 30, scope: !2652)
!2667 = !DILocation(line: 270, column: 9, scope: !2652)
!2668 = !DILocation(line: 272, column: 16, scope: !2652)
!2669 = !DILocation(line: 272, column: 44, scope: !2652)
!2670 = !DILocation(line: 272, column: 9, scope: !2652)
!2671 = !DILocation(line: 275, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 275, column: 9)
!2673 = !DILocation(line: 275, column: 27, scope: !2672)
!2674 = !DILocation(line: 275, column: 24, scope: !2672)
!2675 = !DILocation(line: 275, column: 9, scope: !2568)
!2676 = !DILocation(line: 276, column: 43, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !2, line: 275, column: 36)
!2678 = !DILocation(line: 276, column: 46, scope: !2677)
!2679 = !DILocation(line: 276, column: 58, scope: !2677)
!2680 = !{!2594, !2101, i64 720}
!2681 = !DILocation(line: 276, column: 9, scope: !2677)
!2682 = !DILocation(line: 276, column: 12, scope: !2677)
!2683 = !DILocation(line: 276, column: 24, scope: !2677)
!2684 = !DILocation(line: 276, column: 37, scope: !2677)
!2685 = !DILocation(line: 276, column: 41, scope: !2677)
!2686 = !{!2594, !2101, i64 728}
!2687 = !DILocation(line: 278, column: 30, scope: !2677)
!2688 = !DILocation(line: 278, column: 9, scope: !2677)
!2689 = !DILocation(line: 280, column: 16, scope: !2677)
!2690 = !DILocation(line: 280, column: 44, scope: !2677)
!2691 = !DILocation(line: 280, column: 9, scope: !2677)
!2692 = !DILocation(line: 285, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 285, column: 9)
!2694 = !DILocation(line: 285, column: 12, scope: !2693)
!2695 = !DILocation(line: 285, column: 24, scope: !2693)
!2696 = !{!2594, !2078, i64 640}
!2697 = !DILocation(line: 286, column: 9, scope: !2693)
!2698 = !DILocation(line: 286, column: 12, scope: !2693)
!2699 = !DILocation(line: 286, column: 15, scope: !2693)
!2700 = !DILocation(line: 286, column: 27, scope: !2693)
!2701 = !DILocation(line: 286, column: 45, scope: !2693)
!2702 = !DILocation(line: 286, column: 51, scope: !2693)
!2703 = !{!2704, !2101, i64 24}
!2704 = !{!"", !2101, i64 0, !2227, i64 8, !2227, i64 24, !2078, i64 40}
!2705 = !DILocation(line: 285, column: 9, scope: !2568)
!2706 = !DILocation(line: 288, column: 16, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 287, column: 5)
!2708 = !DILocation(line: 288, column: 44, scope: !2707)
!2709 = !DILocation(line: 288, column: 9, scope: !2707)
!2710 = !DILocation(line: 291, column: 11, scope: !2568)
!2711 = !{!2594, !2078, i64 24}
!2712 = !DILocation(line: 291, column: 9, scope: !2568)
!2713 = !DILocation(line: 292, column: 16, scope: !2568)
!2714 = !DILocation(line: 292, column: 21, scope: !2568)
!2715 = !DILocation(line: 292, column: 30, scope: !2568)
!2716 = !DILocation(line: 292, column: 14, scope: !2568)
!2717 = !DILocation(line: 294, column: 9, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 294, column: 9)
!2719 = !DILocation(line: 294, column: 18, scope: !2718)
!2720 = !DILocation(line: 294, column: 34, scope: !2718)
!2721 = !DILocation(line: 294, column: 41, scope: !2718)
!2722 = !DILocation(line: 295, column: 9, scope: !2718)
!2723 = !DILocation(line: 295, column: 12, scope: !2718)
!2724 = !DILocation(line: 295, column: 21, scope: !2718)
!2725 = !DILocation(line: 295, column: 37, scope: !2718)
!2726 = !DILocation(line: 295, column: 44, scope: !2718)
!2727 = !DILocation(line: 295, column: 53, scope: !2718)
!2728 = !DILocation(line: 294, column: 9, scope: !2568)
!2729 = !DILocation(line: 297, column: 9, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 296, column: 5)
!2731 = !DILocation(line: 300, column: 39, scope: !2568)
!2732 = !DILocation(line: 300, column: 42, scope: !2568)
!2733 = !DILocation(line: 300, column: 54, scope: !2568)
!2734 = !DILocation(line: 300, column: 5, scope: !2568)
!2735 = !DILocation(line: 300, column: 8, scope: !2568)
!2736 = !DILocation(line: 300, column: 20, scope: !2568)
!2737 = !DILocation(line: 300, column: 33, scope: !2568)
!2738 = !DILocation(line: 300, column: 37, scope: !2568)
!2739 = !DILocation(line: 302, column: 26, scope: !2568)
!2740 = !DILocation(line: 302, column: 5, scope: !2568)
!2741 = !DILocation(line: 304, column: 33, scope: !2568)
!2742 = !DILocation(line: 304, column: 36, scope: !2568)
!2743 = !DILocation(line: 304, column: 46, scope: !2568)
!2744 = !DILocation(line: 304, column: 55, scope: !2568)
!2745 = !DILocation(line: 304, column: 12, scope: !2568)
!2746 = !DILocation(line: 304, column: 5, scope: !2568)
!2747 = !DILocation(line: 306, column: 1, scope: !2568)
!2748 = !DILocation(line: 308, column: 5, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 308, column: 5)
!2750 = !{!2594, !2078, i64 8}
!2751 = !{!2752, !2078, i64 80}
!2752 = !{!"ngx_connection_s", !2078, i64 0, !2078, i64 8, !2078, i64 16, !2228, i64 24, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2078, i64 56, !2078, i64 64, !2101, i64 72, !2078, i64 80, !2078, i64 88, !2228, i64 96, !2078, i64 104, !2228, i64 112, !2227, i64 120, !2227, i64 136, !2753, i64 152, !2078, i64 160, !2078, i64 168, !2078, i64 176, !2228, i64 184, !2078, i64 192, !2754, i64 200, !2101, i64 216, !2101, i64 224, !2228, i64 232, !2228, i64 233, !2228, i64 233, !2228, i64 233, !2228, i64 233, !2228, i64 233, !2228, i64 233, !2228, i64 234, !2228, i64 234, !2228, i64 234, !2228, i64 234, !2228, i64 234, !2228, i64 234, !2228, i64 235}
!2753 = !{!"short", !2079, i64 0}
!2754 = !{!"ngx_queue_s", !2078, i64 0, !2078, i64 8}
!2755 = !DILocation(line: 308, column: 5, scope: !2568)
!2756 = !DILocation(line: 312, column: 12, scope: !2568)
!2757 = !DILocation(line: 312, column: 40, scope: !2568)
!2758 = !DILocation(line: 312, column: 5, scope: !2568)
!2759 = !DILocation(line: 313, column: 1, scope: !2568)
!2760 = distinct !DISubprogram(name: "ngx_http_charset_body_filter", scope: !2, file: !2, line: 547, type: !1909, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769}
!2762 = !DILocalVariable(name: "r", arg: 1, scope: !2760, file: !2, line: 547, type: !623)
!2763 = !DILocalVariable(name: "in", arg: 2, scope: !2760, file: !2, line: 547, type: !114)
!2764 = !DILocalVariable(name: "rc", scope: !2760, file: !2, line: 549, type: !41)
!2765 = !DILocalVariable(name: "b", scope: !2760, file: !2, line: 550, type: !119)
!2766 = !DILocalVariable(name: "cl", scope: !2760, file: !2, line: 551, type: !114)
!2767 = !DILocalVariable(name: "out", scope: !2760, file: !2, line: 551, type: !114)
!2768 = !DILocalVariable(name: "ll", scope: !2760, file: !2, line: 551, type: !931)
!2769 = !DILocalVariable(name: "ctx", scope: !2760, file: !2, line: 552, type: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_ctx_t", file: !2, line: 78, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 63, size: 576, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2783, !2784, !2785}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2772, file: !2, line: 64, baseType: !36, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !2772, file: !2, line: 65, baseType: !41, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "charset_name", scope: !2772, file: !2, line: 66, baseType: !71, size: 128, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !2772, file: !2, line: 68, baseType: !114, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !2772, file: !2, line: 69, baseType: !114, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffers", scope: !2772, file: !2, line: 70, baseType: !114, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_len", scope: !2772, file: !2, line: 72, baseType: !33, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !2772, file: !2, line: 73, baseType: !2782, size: 32, offset: 512)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !1300)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2772, file: !2, line: 75, baseType: !154, size: 16, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "from_utf8", scope: !2772, file: !2, line: 76, baseType: !154, size: 1, offset: 560, flags: DIFlagBitField, extraData: i64 544)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "to_utf8", scope: !2772, file: !2, line: 77, baseType: !154, size: 1, offset: 561, flags: DIFlagBitField, extraData: i64 544)
!2786 = !DILocation(line: 547, column: 50, scope: !2760)
!2787 = !DILocation(line: 547, column: 66, scope: !2760)
!2788 = !DILocation(line: 549, column: 5, scope: !2760)
!2789 = !DILocation(line: 549, column: 30, scope: !2760)
!2790 = !DILocation(line: 550, column: 5, scope: !2760)
!2791 = !DILocation(line: 550, column: 30, scope: !2760)
!2792 = !DILocation(line: 551, column: 5, scope: !2760)
!2793 = !DILocation(line: 551, column: 30, scope: !2760)
!2794 = !DILocation(line: 551, column: 35, scope: !2760)
!2795 = !DILocation(line: 551, column: 42, scope: !2760)
!2796 = !DILocation(line: 552, column: 5, scope: !2760)
!2797 = !DILocation(line: 552, column: 30, scope: !2760)
!2798 = !DILocation(line: 554, column: 11, scope: !2760)
!2799 = !{!2594, !2078, i64 16}
!2800 = !DILocation(line: 554, column: 9, scope: !2760)
!2801 = !DILocation(line: 556, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 556, column: 9)
!2803 = !DILocation(line: 556, column: 13, scope: !2802)
!2804 = !DILocation(line: 556, column: 21, scope: !2802)
!2805 = !DILocation(line: 556, column: 24, scope: !2802)
!2806 = !DILocation(line: 556, column: 29, scope: !2802)
!2807 = !{!2808, !2078, i64 0}
!2808 = !{!"", !2078, i64 0, !2101, i64 8, !2227, i64 16, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2101, i64 56, !2079, i64 64, !2228, i64 68, !2228, i64 70, !2228, i64 70}
!2809 = !DILocation(line: 556, column: 35, scope: !2802)
!2810 = !DILocation(line: 556, column: 9, scope: !2760)
!2811 = !DILocation(line: 557, column: 16, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 556, column: 44)
!2813 = !DILocation(line: 557, column: 42, scope: !2812)
!2814 = !DILocation(line: 557, column: 45, scope: !2812)
!2815 = !DILocation(line: 557, column: 9, scope: !2812)
!2816 = !DILocation(line: 560, column: 10, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 560, column: 9)
!2818 = !DILocation(line: 560, column: 15, scope: !2817)
!2819 = !DILocation(line: 560, column: 23, scope: !2817)
!2820 = !DILocation(line: 560, column: 26, scope: !2817)
!2821 = !DILocation(line: 560, column: 31, scope: !2817)
!2822 = !DILocation(line: 560, column: 42, scope: !2817)
!2823 = !DILocation(line: 560, column: 45, scope: !2817)
!2824 = !DILocation(line: 560, column: 50, scope: !2817)
!2825 = !{!2808, !2078, i64 32}
!2826 = !DILocation(line: 560, column: 9, scope: !2760)
!2827 = !DILocation(line: 562, column: 13, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2817, file: !2, line: 560, column: 56)
!2829 = !DILocation(line: 563, column: 12, scope: !2828)
!2830 = !DILocation(line: 565, column: 19, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 565, column: 9)
!2832 = !DILocation(line: 565, column: 17, scope: !2831)
!2833 = !DILocation(line: 565, column: 14, scope: !2831)
!2834 = !DILocation(line: 565, column: 23, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 565, column: 9)
!2836 = !DILocation(line: 565, column: 9, scope: !2831)
!2837 = !DILocation(line: 566, column: 17, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 565, column: 42)
!2839 = !DILocation(line: 566, column: 21, scope: !2838)
!2840 = !{!2841, !2078, i64 0}
!2841 = !{!"ngx_chain_s", !2078, i64 0, !2078, i64 8}
!2842 = !DILocation(line: 566, column: 15, scope: !2838)
!2843 = !DILocation(line: 568, column: 17, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 568, column: 17)
!2845 = !{!2846, !2078, i64 8}
!2846 = !{!"ngx_buf_s", !2078, i64 0, !2078, i64 8, !2101, i64 16, !2101, i64 24, !2078, i64 32, !2078, i64 40, !2078, i64 48, !2078, i64 56, !2078, i64 64, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 72, !2228, i64 73, !2228, i64 73, !2228, i64 73, !2228, i64 76}
!2847 = !{!2846, !2078, i64 0}
!2848 = !{!2846, !2101, i64 24}
!2849 = !{!2846, !2101, i64 16}
!2850 = !DILocation(line: 568, column: 33, scope: !2844)
!2851 = !DILocation(line: 568, column: 17, scope: !2838)
!2852 = !DILocation(line: 570, column: 44, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 568, column: 39)
!2854 = !DILocation(line: 570, column: 47, scope: !2853)
!2855 = !{!2594, !2078, i64 88}
!2856 = !DILocation(line: 570, column: 23, scope: !2853)
!2857 = !DILocation(line: 570, column: 18, scope: !2853)
!2858 = !DILocation(line: 570, column: 21, scope: !2853)
!2859 = !DILocation(line: 571, column: 22, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2853, file: !2, line: 571, column: 21)
!2861 = !DILocation(line: 571, column: 21, scope: !2860)
!2862 = !DILocation(line: 571, column: 25, scope: !2860)
!2863 = !DILocation(line: 571, column: 21, scope: !2853)
!2864 = !DILocation(line: 572, column: 21, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !2, line: 571, column: 34)
!2866 = !DILocation(line: 575, column: 30, scope: !2853)
!2867 = !DILocation(line: 575, column: 19, scope: !2853)
!2868 = !DILocation(line: 575, column: 18, scope: !2853)
!2869 = !DILocation(line: 575, column: 24, scope: !2853)
!2870 = !DILocation(line: 575, column: 28, scope: !2853)
!2871 = !DILocation(line: 576, column: 19, scope: !2853)
!2872 = !DILocation(line: 576, column: 18, scope: !2853)
!2873 = !DILocation(line: 576, column: 24, scope: !2853)
!2874 = !DILocation(line: 576, column: 29, scope: !2853)
!2875 = !{!2841, !2078, i64 8}
!2876 = !DILocation(line: 578, column: 25, scope: !2853)
!2877 = !DILocation(line: 578, column: 24, scope: !2853)
!2878 = !DILocation(line: 578, column: 30, scope: !2853)
!2879 = !DILocation(line: 578, column: 20, scope: !2853)
!2880 = !DILocation(line: 580, column: 17, scope: !2853)
!2881 = !DILocation(line: 583, column: 17, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 583, column: 17)
!2883 = !DILocation(line: 583, column: 22, scope: !2882)
!2884 = !DILocation(line: 583, column: 17, scope: !2838)
!2885 = !DILocation(line: 584, column: 55, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 583, column: 31)
!2887 = !DILocation(line: 584, column: 58, scope: !2886)
!2888 = !DILocation(line: 584, column: 64, scope: !2886)
!2889 = !DILocation(line: 584, column: 67, scope: !2886)
!2890 = !DILocation(line: 584, column: 23, scope: !2886)
!2891 = !DILocation(line: 584, column: 18, scope: !2886)
!2892 = !DILocation(line: 584, column: 21, scope: !2886)
!2893 = !DILocation(line: 586, column: 13, scope: !2886)
!2894 = !DILocation(line: 587, column: 57, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 586, column: 20)
!2896 = !DILocation(line: 587, column: 60, scope: !2895)
!2897 = !DILocation(line: 587, column: 66, scope: !2895)
!2898 = !DILocation(line: 587, column: 69, scope: !2895)
!2899 = !DILocation(line: 587, column: 23, scope: !2895)
!2900 = !DILocation(line: 587, column: 18, scope: !2895)
!2901 = !DILocation(line: 587, column: 21, scope: !2895)
!2902 = !DILocation(line: 590, column: 18, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 590, column: 17)
!2904 = !DILocation(line: 590, column: 17, scope: !2903)
!2905 = !DILocation(line: 590, column: 21, scope: !2903)
!2906 = !DILocation(line: 590, column: 17, scope: !2838)
!2907 = !DILocation(line: 591, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 590, column: 30)
!2909 = !DILocation(line: 594, column: 13, scope: !2838)
!2910 = !DILocation(line: 594, column: 21, scope: !2838)
!2911 = !DILocation(line: 594, column: 20, scope: !2838)
!2912 = !DILocation(line: 595, column: 25, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 594, column: 25)
!2914 = !DILocation(line: 595, column: 24, scope: !2913)
!2915 = !DILocation(line: 595, column: 30, scope: !2913)
!2916 = !DILocation(line: 595, column: 20, scope: !2913)
!2917 = distinct !{!2917, !2909, !2918, !2195}
!2918 = !DILocation(line: 596, column: 13, scope: !2838)
!2919 = !DILocation(line: 597, column: 9, scope: !2838)
!2920 = !DILocation(line: 565, column: 32, scope: !2835)
!2921 = !DILocation(line: 565, column: 36, scope: !2835)
!2922 = !DILocation(line: 565, column: 30, scope: !2835)
!2923 = !DILocation(line: 565, column: 9, scope: !2835)
!2924 = distinct !{!2924, !2836, !2925, !2195}
!2925 = !DILocation(line: 597, column: 9, scope: !2831)
!2926 = !DILocation(line: 599, column: 14, scope: !2828)
!2927 = !DILocation(line: 599, column: 40, scope: !2828)
!2928 = !DILocation(line: 599, column: 43, scope: !2828)
!2929 = !DILocation(line: 599, column: 12, scope: !2828)
!2930 = !DILocation(line: 601, column: 13, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 601, column: 13)
!2932 = !DILocation(line: 601, column: 13, scope: !2828)
!2933 = !DILocation(line: 602, column: 17, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2, line: 602, column: 17)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 601, column: 18)
!2936 = !DILocation(line: 602, column: 22, scope: !2934)
!2937 = !DILocation(line: 602, column: 27, scope: !2934)
!2938 = !DILocation(line: 602, column: 17, scope: !2935)
!2939 = !DILocation(line: 603, column: 29, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 602, column: 36)
!2941 = !DILocation(line: 603, column: 17, scope: !2940)
!2942 = !DILocation(line: 603, column: 22, scope: !2940)
!2943 = !DILocation(line: 603, column: 27, scope: !2940)
!2944 = !DILocation(line: 605, column: 13, scope: !2940)
!2945 = !DILocation(line: 606, column: 27, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !2, line: 606, column: 17)
!2947 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 605, column: 20)
!2948 = !DILocation(line: 606, column: 32, scope: !2946)
!2949 = !DILocation(line: 606, column: 25, scope: !2946)
!2950 = !DILocation(line: 606, column: 22, scope: !2946)
!2951 = !DILocation(line: 606, column: 38, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 606, column: 17)
!2953 = !DILocation(line: 606, column: 42, scope: !2952)
!2954 = !DILocation(line: 606, column: 17, scope: !2946)
!2955 = !DILocation(line: 606, column: 76, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !2, line: 606, column: 63)
!2957 = !DILocation(line: 606, column: 53, scope: !2952)
!2958 = !DILocation(line: 606, column: 57, scope: !2952)
!2959 = !DILocation(line: 606, column: 51, scope: !2952)
!2960 = !DILocation(line: 606, column: 17, scope: !2952)
!2961 = distinct !{!2961, !2954, !2962, !2195}
!2962 = !DILocation(line: 606, column: 76, scope: !2946)
!2963 = !DILocation(line: 607, column: 28, scope: !2947)
!2964 = !DILocation(line: 607, column: 17, scope: !2947)
!2965 = !DILocation(line: 607, column: 21, scope: !2947)
!2966 = !DILocation(line: 607, column: 26, scope: !2947)
!2967 = !DILocation(line: 609, column: 9, scope: !2935)
!2968 = !DILocation(line: 611, column: 9, scope: !2828)
!2969 = !DILocation(line: 611, column: 16, scope: !2828)
!2970 = !DILocation(line: 611, column: 21, scope: !2828)
!2971 = !DILocation(line: 613, column: 18, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 611, column: 27)
!2973 = !DILocation(line: 613, column: 23, scope: !2972)
!2974 = !DILocation(line: 613, column: 16, scope: !2972)
!2975 = !DILocation(line: 614, column: 17, scope: !2972)
!2976 = !DILocation(line: 614, column: 21, scope: !2972)
!2977 = !DILocation(line: 614, column: 15, scope: !2972)
!2978 = !DILocation(line: 616, column: 17, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 616, column: 17)
!2980 = !DILocation(line: 616, column: 33, scope: !2979)
!2981 = !DILocation(line: 616, column: 17, scope: !2972)
!2982 = !DILocation(line: 617, column: 17, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 616, column: 39)
!2984 = !DILocation(line: 620, column: 25, scope: !2972)
!2985 = !DILocation(line: 620, column: 29, scope: !2972)
!2986 = !DILocation(line: 620, column: 13, scope: !2972)
!2987 = !DILocation(line: 620, column: 18, scope: !2972)
!2988 = !DILocation(line: 620, column: 23, scope: !2972)
!2989 = !DILocation(line: 622, column: 17, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 622, column: 17)
!2991 = !DILocation(line: 622, column: 20, scope: !2990)
!2992 = !{!2846, !2078, i64 48}
!2993 = !DILocation(line: 622, column: 24, scope: !2990)
!2994 = !DILocation(line: 622, column: 17, scope: !2972)
!2995 = !DILocation(line: 623, column: 17, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 622, column: 76)
!2997 = distinct !{!2997, !2968, !2998, !2195}
!2998 = !DILocation(line: 638, column: 9, scope: !2828)
!2999 = !DILocation(line: 626, column: 17, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 626, column: 17)
!3001 = !DILocation(line: 626, column: 20, scope: !3000)
!3002 = !{!2846, !2078, i64 64}
!3003 = !DILocation(line: 626, column: 17, scope: !2972)
!3004 = !DILocation(line: 627, column: 34, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3000, file: !2, line: 626, column: 28)
!3006 = !DILocation(line: 627, column: 37, scope: !3005)
!3007 = !DILocation(line: 627, column: 45, scope: !3005)
!3008 = !DILocation(line: 627, column: 17, scope: !3005)
!3009 = !DILocation(line: 627, column: 20, scope: !3005)
!3010 = !DILocation(line: 627, column: 28, scope: !3005)
!3011 = !DILocation(line: 627, column: 32, scope: !3005)
!3012 = !DILocation(line: 628, column: 13, scope: !3005)
!3013 = !DILocation(line: 630, column: 17, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 630, column: 17)
!3015 = !DILocation(line: 630, column: 20, scope: !3014)
!3016 = !DILocation(line: 630, column: 17, scope: !2972)
!3017 = !DILocation(line: 631, column: 28, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !2, line: 630, column: 25)
!3019 = !DILocation(line: 631, column: 33, scope: !3018)
!3020 = !{!2808, !2078, i64 48}
!3021 = !DILocation(line: 631, column: 17, scope: !3018)
!3022 = !DILocation(line: 631, column: 21, scope: !3018)
!3023 = !DILocation(line: 631, column: 26, scope: !3018)
!3024 = !DILocation(line: 632, column: 37, scope: !3018)
!3025 = !DILocation(line: 632, column: 17, scope: !3018)
!3026 = !DILocation(line: 632, column: 22, scope: !3018)
!3027 = !DILocation(line: 632, column: 35, scope: !3018)
!3028 = !DILocation(line: 633, column: 17, scope: !3018)
!3029 = !DILocation(line: 636, column: 24, scope: !2972)
!3030 = !DILocation(line: 636, column: 29, scope: !2972)
!3031 = !{!2808, !2078, i64 40}
!3032 = !DILocation(line: 636, column: 13, scope: !2972)
!3033 = !DILocation(line: 636, column: 17, scope: !2972)
!3034 = !DILocation(line: 636, column: 22, scope: !2972)
!3035 = !DILocation(line: 637, column: 30, scope: !2972)
!3036 = !DILocation(line: 637, column: 13, scope: !2972)
!3037 = !DILocation(line: 637, column: 18, scope: !2972)
!3038 = !DILocation(line: 637, column: 28, scope: !2972)
!3039 = !DILocation(line: 640, column: 16, scope: !2828)
!3040 = !DILocation(line: 640, column: 9, scope: !2828)
!3041 = !DILocation(line: 643, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 643, column: 5)
!3043 = !DILocation(line: 643, column: 13, scope: !3042)
!3044 = !DILocation(line: 643, column: 10, scope: !3042)
!3045 = !DILocation(line: 643, column: 19, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !2, line: 643, column: 5)
!3047 = !DILocation(line: 643, column: 5, scope: !3042)
!3048 = !DILocation(line: 644, column: 40, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 643, column: 38)
!3050 = !DILocation(line: 644, column: 44, scope: !3049)
!3051 = !DILocation(line: 644, column: 49, scope: !3049)
!3052 = !DILocation(line: 644, column: 54, scope: !3049)
!3053 = !DILocation(line: 644, column: 16, scope: !3049)
!3054 = !DILocation(line: 645, column: 5, scope: !3049)
!3055 = !DILocation(line: 643, column: 28, scope: !3046)
!3056 = !DILocation(line: 643, column: 32, scope: !3046)
!3057 = !DILocation(line: 643, column: 26, scope: !3046)
!3058 = !DILocation(line: 643, column: 5, scope: !3046)
!3059 = distinct !{!3059, !3047, !3060, !2195}
!3060 = !DILocation(line: 645, column: 5, scope: !3042)
!3061 = !DILocation(line: 647, column: 12, scope: !2760)
!3062 = !DILocation(line: 647, column: 38, scope: !2760)
!3063 = !DILocation(line: 647, column: 41, scope: !2760)
!3064 = !DILocation(line: 647, column: 5, scope: !2760)
!3065 = !DILocation(line: 648, column: 1, scope: !2760)
!3066 = distinct !DISubprogram(name: "ngx_http_destination_charset", scope: !2, file: !2, line: 317, type: !3067, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!41, !623, !880}
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076}
!3070 = !DILocalVariable(name: "r", arg: 1, scope: !3066, file: !2, line: 317, type: !623)
!3071 = !DILocalVariable(name: "name", arg: 2, scope: !3066, file: !2, line: 317, type: !880)
!3072 = !DILocalVariable(name: "charset", scope: !3066, file: !2, line: 319, type: !41)
!3073 = !DILocalVariable(name: "charsets", scope: !3066, file: !2, line: 320, type: !2041)
!3074 = !DILocalVariable(name: "vv", scope: !3066, file: !2, line: 321, type: !1599)
!3075 = !DILocalVariable(name: "mlcf", scope: !3066, file: !2, line: 322, type: !2377)
!3076 = !DILocalVariable(name: "mcf", scope: !3066, file: !2, line: 323, type: !2066)
!3077 = !DILocation(line: 317, column: 50, scope: !3066)
!3078 = !DILocation(line: 317, column: 64, scope: !3066)
!3079 = !DILocation(line: 319, column: 5, scope: !3066)
!3080 = !DILocation(line: 319, column: 36, scope: !3066)
!3081 = !DILocation(line: 320, column: 5, scope: !3066)
!3082 = !DILocation(line: 320, column: 36, scope: !3066)
!3083 = !DILocation(line: 321, column: 5, scope: !3066)
!3084 = !DILocation(line: 321, column: 36, scope: !3066)
!3085 = !DILocation(line: 322, column: 5, scope: !3066)
!3086 = !DILocation(line: 322, column: 36, scope: !3066)
!3087 = !DILocation(line: 323, column: 5, scope: !3066)
!3088 = !DILocation(line: 323, column: 36, scope: !3066)
!3089 = !DILocation(line: 325, column: 9, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 325, column: 9)
!3091 = !DILocation(line: 325, column: 12, scope: !3090)
!3092 = !DILocation(line: 325, column: 24, scope: !3090)
!3093 = !DILocation(line: 325, column: 37, scope: !3090)
!3094 = !DILocation(line: 325, column: 41, scope: !3090)
!3095 = !DILocation(line: 325, column: 9, scope: !3066)
!3096 = !DILocation(line: 326, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3090, file: !2, line: 325, column: 47)
!3098 = !DILocation(line: 329, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 329, column: 9)
!3100 = !DILocation(line: 329, column: 12, scope: !3099)
!3101 = !DILocation(line: 329, column: 24, scope: !3099)
!3102 = !{!2594, !2078, i64 712}
!3103 = !DILocation(line: 330, column: 9, scope: !3099)
!3104 = !DILocation(line: 330, column: 12, scope: !3099)
!3105 = !DILocation(line: 330, column: 15, scope: !3099)
!3106 = !DILocation(line: 330, column: 27, scope: !3099)
!3107 = !DILocation(line: 330, column: 45, scope: !3099)
!3108 = !DILocation(line: 329, column: 9, scope: !3066)
!3109 = !DILocation(line: 332, column: 10, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 331, column: 5)
!3111 = !DILocation(line: 332, column: 18, scope: !3110)
!3112 = !DILocation(line: 332, column: 21, scope: !3110)
!3113 = !DILocation(line: 332, column: 33, scope: !3110)
!3114 = !DILocation(line: 332, column: 17, scope: !3110)
!3115 = !{i64 0, i64 8, !2125, i64 8, i64 8, !2077}
!3116 = !DILocation(line: 334, column: 40, scope: !3110)
!3117 = !DILocation(line: 334, column: 43, scope: !3110)
!3118 = !DILocation(line: 334, column: 19, scope: !3110)
!3119 = !DILocation(line: 334, column: 17, scope: !3110)
!3120 = !DILocation(line: 336, column: 13, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3110, file: !2, line: 336, column: 13)
!3122 = !DILocation(line: 336, column: 21, scope: !3121)
!3123 = !DILocation(line: 336, column: 13, scope: !3110)
!3124 = !DILocation(line: 337, column: 20, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !2, line: 336, column: 45)
!3126 = !DILocation(line: 337, column: 13, scope: !3125)
!3127 = !DILocation(line: 340, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3110, file: !2, line: 340, column: 9)
!3129 = !DILocation(line: 340, column: 9, scope: !3110)
!3130 = !DILocation(line: 343, column: 9, scope: !3110)
!3131 = !DILocation(line: 346, column: 12, scope: !3066)
!3132 = !{!2594, !2078, i64 40}
!3133 = !DILocation(line: 346, column: 10, scope: !3066)
!3134 = !DILocation(line: 347, column: 15, scope: !3066)
!3135 = !DILocation(line: 347, column: 21, scope: !3066)
!3136 = !DILocation(line: 347, column: 13, scope: !3066)
!3137 = !DILocation(line: 349, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 349, column: 9)
!3139 = !DILocation(line: 349, column: 17, scope: !3138)
!3140 = !DILocation(line: 349, column: 9, scope: !3066)
!3141 = !DILocation(line: 350, column: 9, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 349, column: 42)
!3143 = !DILocation(line: 353, column: 9, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 353, column: 9)
!3145 = !DILocation(line: 353, column: 12, scope: !3144)
!3146 = !DILocation(line: 353, column: 24, scope: !3144)
!3147 = !DILocation(line: 353, column: 32, scope: !3144)
!3148 = !{!2594, !2101, i64 744}
!3149 = !DILocation(line: 353, column: 9, scope: !3066)
!3150 = !DILocation(line: 354, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 354, column: 13)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 353, column: 37)
!3153 = !DILocation(line: 354, column: 19, scope: !3151)
!3154 = !DILocation(line: 354, column: 36, scope: !3151)
!3155 = !DILocation(line: 354, column: 13, scope: !3152)
!3156 = !DILocation(line: 355, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 354, column: 42)
!3158 = !DILocation(line: 358, column: 5, scope: !3152)
!3159 = !DILocation(line: 359, column: 40, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 359, column: 13)
!3161 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 358, column: 12)
!3162 = !DILocation(line: 359, column: 44, scope: !3160)
!3163 = !DILocation(line: 359, column: 50, scope: !3160)
!3164 = !DILocation(line: 359, column: 13, scope: !3160)
!3165 = !DILocation(line: 359, column: 57, scope: !3160)
!3166 = !DILocation(line: 359, column: 13, scope: !3161)
!3167 = !DILocation(line: 360, column: 13, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 359, column: 66)
!3169 = !DILocation(line: 364, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 364, column: 9)
!3171 = !DILocation(line: 364, column: 17, scope: !3170)
!3172 = !DILocation(line: 364, column: 9, scope: !3066)
!3173 = !DILocation(line: 365, column: 15, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !2, line: 364, column: 41)
!3175 = !DILocation(line: 365, column: 13, scope: !3174)
!3176 = !DILocation(line: 366, column: 20, scope: !3174)
!3177 = !DILocation(line: 366, column: 25, scope: !3174)
!3178 = !DILocation(line: 366, column: 34, scope: !3174)
!3179 = !DILocation(line: 366, column: 18, scope: !3174)
!3180 = !DILocation(line: 367, column: 10, scope: !3174)
!3181 = !DILocation(line: 367, column: 17, scope: !3174)
!3182 = !DILocation(line: 367, column: 26, scope: !3174)
!3183 = !DILocation(line: 367, column: 35, scope: !3174)
!3184 = !DILocation(line: 368, column: 16, scope: !3174)
!3185 = !DILocation(line: 368, column: 9, scope: !3174)
!3186 = !DILocation(line: 371, column: 40, scope: !3066)
!3187 = !DILocation(line: 371, column: 43, scope: !3066)
!3188 = !DILocation(line: 371, column: 51, scope: !3066)
!3189 = !DILocation(line: 371, column: 10, scope: !3066)
!3190 = !DILocation(line: 371, column: 8, scope: !3066)
!3191 = !DILocation(line: 373, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 373, column: 9)
!3193 = !DILocation(line: 373, column: 12, scope: !3192)
!3194 = !DILocation(line: 373, column: 20, scope: !3192)
!3195 = !DILocation(line: 373, column: 23, scope: !3192)
!3196 = !DILocation(line: 373, column: 27, scope: !3192)
!3197 = !DILocation(line: 373, column: 9, scope: !3066)
!3198 = !DILocation(line: 374, column: 9, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3192, file: !2, line: 373, column: 38)
!3200 = !DILocation(line: 377, column: 17, scope: !3066)
!3201 = !DILocation(line: 377, column: 21, scope: !3066)
!3202 = !DILocation(line: 377, column: 5, scope: !3066)
!3203 = !DILocation(line: 377, column: 11, scope: !3066)
!3204 = !DILocation(line: 377, column: 15, scope: !3066)
!3205 = !DILocation(line: 378, column: 18, scope: !3066)
!3206 = !DILocation(line: 378, column: 22, scope: !3066)
!3207 = !{!3208, !2078, i64 8}
!3208 = !{!"", !2228, i64 0, !2228, i64 3, !2228, i64 3, !2228, i64 3, !2228, i64 3, !2078, i64 8}
!3209 = !DILocation(line: 378, column: 5, scope: !3066)
!3210 = !DILocation(line: 378, column: 11, scope: !3066)
!3211 = !DILocation(line: 378, column: 16, scope: !3066)
!3212 = !DILocation(line: 380, column: 33, scope: !3066)
!3213 = !DILocation(line: 380, column: 36, scope: !3066)
!3214 = !DILocation(line: 380, column: 12, scope: !3066)
!3215 = !DILocation(line: 380, column: 5, scope: !3066)
!3216 = !DILocation(line: 381, column: 1, scope: !3066)
!3217 = distinct !DISubprogram(name: "ngx_http_main_request_charset", scope: !2, file: !2, line: 385, type: !3067, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3218)
!3218 = !{!3219, !3220, !3221, !3222, !3223}
!3219 = !DILocalVariable(name: "r", arg: 1, scope: !3217, file: !2, line: 385, type: !623)
!3220 = !DILocalVariable(name: "src", arg: 2, scope: !3217, file: !2, line: 385, type: !880)
!3221 = !DILocalVariable(name: "charset", scope: !3217, file: !2, line: 387, type: !41)
!3222 = !DILocalVariable(name: "main_charset", scope: !3217, file: !2, line: 388, type: !880)
!3223 = !DILocalVariable(name: "ctx", scope: !3217, file: !2, line: 389, type: !2770)
!3224 = !DILocation(line: 385, column: 51, scope: !3217)
!3225 = !DILocation(line: 385, column: 65, scope: !3217)
!3226 = !DILocation(line: 387, column: 5, scope: !3217)
!3227 = !DILocation(line: 387, column: 30, scope: !3217)
!3228 = !DILocation(line: 388, column: 5, scope: !3217)
!3229 = !DILocation(line: 388, column: 30, scope: !3217)
!3230 = !DILocation(line: 389, column: 5, scope: !3217)
!3231 = !DILocation(line: 389, column: 30, scope: !3217)
!3232 = !DILocation(line: 391, column: 11, scope: !3217)
!3233 = !DILocation(line: 391, column: 9, scope: !3217)
!3234 = !DILocation(line: 393, column: 9, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 393, column: 9)
!3236 = !DILocation(line: 393, column: 9, scope: !3217)
!3237 = !DILocation(line: 394, column: 10, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !2, line: 393, column: 14)
!3239 = !DILocation(line: 394, column: 16, scope: !3238)
!3240 = !DILocation(line: 394, column: 21, scope: !3238)
!3241 = !DILocation(line: 395, column: 16, scope: !3238)
!3242 = !DILocation(line: 395, column: 21, scope: !3238)
!3243 = !{!2808, !2101, i64 8}
!3244 = !DILocation(line: 395, column: 9, scope: !3238)
!3245 = !DILocation(line: 398, column: 21, scope: !3217)
!3246 = !DILocation(line: 398, column: 24, scope: !3217)
!3247 = !DILocation(line: 398, column: 30, scope: !3217)
!3248 = !DILocation(line: 398, column: 42, scope: !3217)
!3249 = !DILocation(line: 398, column: 18, scope: !3217)
!3250 = !DILocation(line: 400, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 400, column: 9)
!3252 = !DILocation(line: 400, column: 23, scope: !3251)
!3253 = !DILocation(line: 400, column: 27, scope: !3251)
!3254 = !DILocation(line: 400, column: 9, scope: !3217)
!3255 = !DILocation(line: 401, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 400, column: 33)
!3257 = !DILocation(line: 404, column: 23, scope: !3217)
!3258 = !DILocation(line: 404, column: 26, scope: !3217)
!3259 = !DILocation(line: 404, column: 11, scope: !3217)
!3260 = !DILocation(line: 404, column: 9, scope: !3217)
!3261 = !DILocation(line: 405, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 405, column: 9)
!3263 = !DILocation(line: 405, column: 13, scope: !3262)
!3264 = !DILocation(line: 405, column: 9, scope: !3217)
!3265 = !DILocation(line: 406, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !2, line: 405, column: 22)
!3267 = !DILocation(line: 409, column: 5, scope: !3217)
!3268 = !DILocation(line: 411, column: 36, scope: !3217)
!3269 = !DILocation(line: 411, column: 39, scope: !3217)
!3270 = !DILocation(line: 411, column: 15, scope: !3217)
!3271 = !DILocation(line: 411, column: 13, scope: !3217)
!3272 = !DILocation(line: 413, column: 20, scope: !3217)
!3273 = !DILocation(line: 413, column: 5, scope: !3217)
!3274 = !DILocation(line: 413, column: 10, scope: !3217)
!3275 = !DILocation(line: 413, column: 18, scope: !3217)
!3276 = !DILocation(line: 414, column: 5, scope: !3217)
!3277 = !DILocation(line: 414, column: 10, scope: !3217)
!3278 = !DILocation(line: 414, column: 26, scope: !3217)
!3279 = !DILocation(line: 414, column: 25, scope: !3217)
!3280 = !DILocation(line: 415, column: 6, scope: !3217)
!3281 = !DILocation(line: 415, column: 13, scope: !3217)
!3282 = !DILocation(line: 415, column: 12, scope: !3217)
!3283 = !DILocation(line: 417, column: 12, scope: !3217)
!3284 = !DILocation(line: 417, column: 5, scope: !3217)
!3285 = !DILocation(line: 418, column: 1, scope: !3217)
!3286 = distinct !DISubprogram(name: "ngx_http_source_charset", scope: !2, file: !2, line: 422, type: !3067, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3288 = !DILocalVariable(name: "r", arg: 1, scope: !3286, file: !2, line: 422, type: !623)
!3289 = !DILocalVariable(name: "name", arg: 2, scope: !3286, file: !2, line: 422, type: !880)
!3290 = !DILocalVariable(name: "charset", scope: !3286, file: !2, line: 424, type: !41)
!3291 = !DILocalVariable(name: "charsets", scope: !3286, file: !2, line: 425, type: !2041)
!3292 = !DILocalVariable(name: "vv", scope: !3286, file: !2, line: 426, type: !1599)
!3293 = !DILocalVariable(name: "lcf", scope: !3286, file: !2, line: 427, type: !2377)
!3294 = !DILocalVariable(name: "mcf", scope: !3286, file: !2, line: 428, type: !2066)
!3295 = !DILocation(line: 422, column: 45, scope: !3286)
!3296 = !DILocation(line: 422, column: 59, scope: !3286)
!3297 = !DILocation(line: 424, column: 5, scope: !3286)
!3298 = !DILocation(line: 424, column: 36, scope: !3286)
!3299 = !DILocation(line: 425, column: 5, scope: !3286)
!3300 = !DILocation(line: 425, column: 36, scope: !3286)
!3301 = !DILocation(line: 426, column: 5, scope: !3286)
!3302 = !DILocation(line: 426, column: 36, scope: !3286)
!3303 = !DILocation(line: 427, column: 5, scope: !3286)
!3304 = !DILocation(line: 427, column: 36, scope: !3286)
!3305 = !DILocation(line: 428, column: 5, scope: !3286)
!3306 = !DILocation(line: 428, column: 36, scope: !3286)
!3307 = !DILocation(line: 430, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 430, column: 9)
!3309 = !DILocation(line: 430, column: 12, scope: !3308)
!3310 = !DILocation(line: 430, column: 24, scope: !3308)
!3311 = !DILocation(line: 430, column: 32, scope: !3308)
!3312 = !DILocation(line: 430, column: 9, scope: !3286)
!3313 = !DILocation(line: 431, column: 10, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3308, file: !2, line: 430, column: 37)
!3315 = !DILocation(line: 431, column: 17, scope: !3314)
!3316 = !DILocation(line: 431, column: 20, scope: !3314)
!3317 = !DILocation(line: 431, column: 32, scope: !3314)
!3318 = !DILocation(line: 432, column: 37, scope: !3314)
!3319 = !DILocation(line: 432, column: 40, scope: !3314)
!3320 = !DILocation(line: 432, column: 16, scope: !3314)
!3321 = !DILocation(line: 432, column: 9, scope: !3314)
!3322 = !DILocation(line: 435, column: 11, scope: !3286)
!3323 = !DILocation(line: 435, column: 9, scope: !3286)
!3324 = !DILocation(line: 437, column: 15, scope: !3286)
!3325 = !DILocation(line: 437, column: 20, scope: !3286)
!3326 = !DILocation(line: 437, column: 13, scope: !3286)
!3327 = !DILocation(line: 439, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 439, column: 9)
!3329 = !DILocation(line: 439, column: 17, scope: !3328)
!3330 = !DILocation(line: 439, column: 9, scope: !3286)
!3331 = !DILocation(line: 440, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !2, line: 439, column: 42)
!3333 = !DILocation(line: 440, column: 15, scope: !3332)
!3334 = !DILocation(line: 440, column: 19, scope: !3332)
!3335 = !DILocation(line: 441, column: 16, scope: !3332)
!3336 = !DILocation(line: 441, column: 9, scope: !3332)
!3337 = !DILocation(line: 444, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 444, column: 9)
!3339 = !DILocation(line: 444, column: 17, scope: !3338)
!3340 = !DILocation(line: 444, column: 9, scope: !3286)
!3341 = !DILocation(line: 445, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !2, line: 444, column: 41)
!3343 = !DILocation(line: 445, column: 13, scope: !3342)
!3344 = !DILocation(line: 446, column: 20, scope: !3342)
!3345 = !DILocation(line: 446, column: 25, scope: !3342)
!3346 = !DILocation(line: 446, column: 34, scope: !3342)
!3347 = !DILocation(line: 446, column: 18, scope: !3342)
!3348 = !DILocation(line: 447, column: 10, scope: !3342)
!3349 = !DILocation(line: 447, column: 17, scope: !3342)
!3350 = !DILocation(line: 447, column: 26, scope: !3342)
!3351 = !DILocation(line: 447, column: 35, scope: !3342)
!3352 = !DILocation(line: 448, column: 16, scope: !3342)
!3353 = !DILocation(line: 448, column: 9, scope: !3342)
!3354 = !DILocation(line: 451, column: 40, scope: !3286)
!3355 = !DILocation(line: 451, column: 43, scope: !3286)
!3356 = !DILocation(line: 451, column: 51, scope: !3286)
!3357 = !DILocation(line: 451, column: 10, scope: !3286)
!3358 = !DILocation(line: 451, column: 8, scope: !3286)
!3359 = !DILocation(line: 453, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 453, column: 9)
!3361 = !DILocation(line: 453, column: 12, scope: !3360)
!3362 = !DILocation(line: 453, column: 20, scope: !3360)
!3363 = !DILocation(line: 453, column: 23, scope: !3360)
!3364 = !DILocation(line: 453, column: 27, scope: !3360)
!3365 = !DILocation(line: 453, column: 9, scope: !3286)
!3366 = !DILocation(line: 454, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3360, file: !2, line: 453, column: 38)
!3368 = !DILocation(line: 457, column: 17, scope: !3286)
!3369 = !DILocation(line: 457, column: 21, scope: !3286)
!3370 = !DILocation(line: 457, column: 5, scope: !3286)
!3371 = !DILocation(line: 457, column: 11, scope: !3286)
!3372 = !DILocation(line: 457, column: 15, scope: !3286)
!3373 = !DILocation(line: 458, column: 18, scope: !3286)
!3374 = !DILocation(line: 458, column: 22, scope: !3286)
!3375 = !DILocation(line: 458, column: 5, scope: !3286)
!3376 = !DILocation(line: 458, column: 11, scope: !3286)
!3377 = !DILocation(line: 458, column: 16, scope: !3286)
!3378 = !DILocation(line: 460, column: 33, scope: !3286)
!3379 = !DILocation(line: 460, column: 36, scope: !3286)
!3380 = !DILocation(line: 460, column: 12, scope: !3286)
!3381 = !DILocation(line: 460, column: 5, scope: !3286)
!3382 = !DILocation(line: 461, column: 1, scope: !3286)
!3383 = distinct !DISubprogram(name: "ngx_http_set_charset", scope: !2, file: !2, line: 491, type: !3384, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !623, !880}
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "r", arg: 1, scope: !3383, file: !2, line: 491, type: !623)
!3388 = !DILocalVariable(name: "charset", arg: 2, scope: !3383, file: !2, line: 491, type: !880)
!3389 = !DILocation(line: 491, column: 42, scope: !3383)
!3390 = !DILocation(line: 491, column: 56, scope: !3383)
!3391 = !DILocation(line: 493, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3383, file: !2, line: 493, column: 9)
!3393 = !DILocation(line: 493, column: 14, scope: !3392)
!3394 = !DILocation(line: 493, column: 17, scope: !3392)
!3395 = !DILocation(line: 493, column: 11, scope: !3392)
!3396 = !DILocation(line: 493, column: 9, scope: !3383)
!3397 = !DILocation(line: 494, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 493, column: 23)
!3399 = !DILocation(line: 497, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3383, file: !2, line: 497, column: 9)
!3401 = !DILocation(line: 497, column: 12, scope: !3400)
!3402 = !DILocation(line: 497, column: 24, scope: !3400)
!3403 = !{!2594, !2101, i64 592}
!3404 = !DILocation(line: 497, column: 31, scope: !3400)
!3405 = !DILocation(line: 498, column: 9, scope: !3400)
!3406 = !DILocation(line: 498, column: 12, scope: !3400)
!3407 = !DILocation(line: 498, column: 15, scope: !3400)
!3408 = !DILocation(line: 498, column: 27, scope: !3400)
!3409 = !DILocation(line: 498, column: 34, scope: !3400)
!3410 = !DILocation(line: 497, column: 9, scope: !3383)
!3411 = !DILocation(line: 505, column: 9, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3400, file: !2, line: 499, column: 5)
!3413 = !DILocation(line: 505, column: 12, scope: !3412)
!3414 = !DILocation(line: 505, column: 24, scope: !3412)
!3415 = !DILocation(line: 505, column: 32, scope: !3412)
!3416 = !DILocation(line: 505, column: 36, scope: !3412)
!3417 = !DILocation(line: 506, column: 9, scope: !3412)
!3418 = !DILocation(line: 509, column: 5, scope: !3383)
!3419 = !DILocation(line: 509, column: 8, scope: !3383)
!3420 = !DILocation(line: 509, column: 20, scope: !3383)
!3421 = !DILocation(line: 509, column: 31, scope: !3383)
!3422 = !DILocation(line: 509, column: 30, scope: !3383)
!3423 = !DILocation(line: 510, column: 1, scope: !3383)
!3424 = !DISubprogram(name: "ngx_strncasecmp", scope: !72, file: !72, line: 162, type: !3425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!41, !36, !36, !33}
!3427 = distinct !DISubprogram(name: "ngx_http_charset_ctx", scope: !2, file: !2, line: 514, type: !3428, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!41, !623, !2041, !41, !41}
!3430 = !{!3431, !3432, !3433, !3434, !3435}
!3431 = !DILocalVariable(name: "r", arg: 1, scope: !3427, file: !2, line: 514, type: !623)
!3432 = !DILocalVariable(name: "charsets", arg: 2, scope: !3427, file: !2, line: 514, type: !2041)
!3433 = !DILocalVariable(name: "charset", arg: 3, scope: !3427, file: !2, line: 515, type: !41)
!3434 = !DILocalVariable(name: "source_charset", arg: 4, scope: !3427, file: !2, line: 515, type: !41)
!3435 = !DILocalVariable(name: "ctx", scope: !3427, file: !2, line: 517, type: !2770)
!3436 = !DILocation(line: 514, column: 42, scope: !3427)
!3437 = !DILocation(line: 514, column: 65, scope: !3427)
!3438 = !DILocation(line: 515, column: 15, scope: !3427)
!3439 = !DILocation(line: 515, column: 34, scope: !3427)
!3440 = !DILocation(line: 517, column: 5, scope: !3427)
!3441 = !DILocation(line: 517, column: 30, scope: !3427)
!3442 = !DILocation(line: 519, column: 23, scope: !3427)
!3443 = !DILocation(line: 519, column: 26, scope: !3427)
!3444 = !DILocation(line: 519, column: 11, scope: !3427)
!3445 = !DILocation(line: 519, column: 9, scope: !3427)
!3446 = !DILocation(line: 520, column: 9, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3427, file: !2, line: 520, column: 9)
!3448 = !DILocation(line: 520, column: 13, scope: !3447)
!3449 = !DILocation(line: 520, column: 9, scope: !3427)
!3450 = !DILocation(line: 521, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 520, column: 22)
!3452 = !DILocation(line: 524, column: 5, scope: !3427)
!3453 = !DILocation(line: 526, column: 18, scope: !3427)
!3454 = !DILocation(line: 526, column: 27, scope: !3427)
!3455 = !DILocation(line: 526, column: 43, scope: !3427)
!3456 = !DILocation(line: 526, column: 50, scope: !3427)
!3457 = !DILocation(line: 526, column: 5, scope: !3427)
!3458 = !DILocation(line: 526, column: 10, scope: !3427)
!3459 = !DILocation(line: 526, column: 16, scope: !3427)
!3460 = !DILocation(line: 527, column: 20, scope: !3427)
!3461 = !DILocation(line: 527, column: 5, scope: !3427)
!3462 = !DILocation(line: 527, column: 10, scope: !3427)
!3463 = !DILocation(line: 527, column: 18, scope: !3427)
!3464 = !DILocation(line: 528, column: 5, scope: !3427)
!3465 = !DILocation(line: 528, column: 10, scope: !3427)
!3466 = !DILocation(line: 528, column: 25, scope: !3427)
!3467 = !DILocation(line: 528, column: 34, scope: !3427)
!3468 = !DILocation(line: 528, column: 43, scope: !3427)
!3469 = !DILocation(line: 529, column: 19, scope: !3427)
!3470 = !DILocation(line: 529, column: 28, scope: !3427)
!3471 = !DILocation(line: 529, column: 37, scope: !3427)
!3472 = !DILocation(line: 529, column: 5, scope: !3427)
!3473 = !DILocation(line: 529, column: 10, scope: !3427)
!3474 = !DILocation(line: 529, column: 17, scope: !3427)
!3475 = !DILocation(line: 530, column: 22, scope: !3427)
!3476 = !DILocation(line: 530, column: 31, scope: !3427)
!3477 = !DILocation(line: 530, column: 47, scope: !3427)
!3478 = !DILocation(line: 530, column: 5, scope: !3427)
!3479 = !DILocation(line: 530, column: 10, scope: !3427)
!3480 = !DILocation(line: 530, column: 20, scope: !3427)
!3481 = !DILocation(line: 531, column: 20, scope: !3427)
!3482 = !DILocation(line: 531, column: 29, scope: !3427)
!3483 = !DILocation(line: 531, column: 38, scope: !3427)
!3484 = !DILocation(line: 531, column: 5, scope: !3427)
!3485 = !DILocation(line: 531, column: 10, scope: !3427)
!3486 = !DILocation(line: 531, column: 18, scope: !3427)
!3487 = !DILocation(line: 533, column: 5, scope: !3427)
!3488 = !DILocation(line: 533, column: 8, scope: !3427)
!3489 = !DILocation(line: 533, column: 30, scope: !3427)
!3490 = !DILocation(line: 535, column: 10, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3427, file: !2, line: 535, column: 9)
!3492 = !DILocation(line: 535, column: 15, scope: !3491)
!3493 = !DILocation(line: 535, column: 23, scope: !3491)
!3494 = !DILocation(line: 535, column: 26, scope: !3491)
!3495 = !DILocation(line: 535, column: 31, scope: !3491)
!3496 = !DILocation(line: 535, column: 42, scope: !3491)
!3497 = !DILocation(line: 535, column: 45, scope: !3491)
!3498 = !DILocation(line: 535, column: 50, scope: !3491)
!3499 = !DILocation(line: 535, column: 53, scope: !3491)
!3500 = !DILocation(line: 535, column: 47, scope: !3491)
!3501 = !DILocation(line: 535, column: 9, scope: !3427)
!3502 = !DILocation(line: 536, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 535, column: 59)
!3504 = !{!2594, !2101, i64 856}
!3505 = !DILocation(line: 536, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !2, line: 536, column: 9)
!3507 = !{!2594, !2078, i64 632}
!3508 = !DILocation(line: 536, column: 9, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3506, file: !2, line: 536, column: 9)
!3510 = !{!2704, !2101, i64 0}
!3511 = !DILocation(line: 538, column: 5, scope: !3503)
!3512 = !DILocation(line: 539, column: 9, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 538, column: 12)
!3514 = !DILocation(line: 539, column: 12, scope: !3513)
!3515 = !DILocation(line: 539, column: 34, scope: !3513)
!3516 = !DILocation(line: 542, column: 12, scope: !3427)
!3517 = !DILocation(line: 542, column: 40, scope: !3427)
!3518 = !DILocation(line: 542, column: 5, scope: !3427)
!3519 = !DILocation(line: 543, column: 1, scope: !3427)
!3520 = distinct !DISubprogram(name: "ngx_http_get_charset", scope: !2, file: !2, line: 465, type: !3067, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527}
!3522 = !DILocalVariable(name: "r", arg: 1, scope: !3520, file: !2, line: 465, type: !623)
!3523 = !DILocalVariable(name: "name", arg: 2, scope: !3520, file: !2, line: 465, type: !880)
!3524 = !DILocalVariable(name: "i", scope: !3520, file: !2, line: 467, type: !11)
!3525 = !DILocalVariable(name: "n", scope: !3520, file: !2, line: 467, type: !11)
!3526 = !DILocalVariable(name: "charset", scope: !3520, file: !2, line: 468, type: !2041)
!3527 = !DILocalVariable(name: "mcf", scope: !3520, file: !2, line: 469, type: !2066)
!3528 = !DILocation(line: 465, column: 42, scope: !3520)
!3529 = !DILocation(line: 465, column: 56, scope: !3520)
!3530 = !DILocation(line: 467, column: 5, scope: !3520)
!3531 = !DILocation(line: 467, column: 36, scope: !3520)
!3532 = !DILocation(line: 467, column: 39, scope: !3520)
!3533 = !DILocation(line: 468, column: 5, scope: !3520)
!3534 = !DILocation(line: 468, column: 36, scope: !3520)
!3535 = !DILocation(line: 469, column: 5, scope: !3520)
!3536 = !DILocation(line: 469, column: 36, scope: !3520)
!3537 = !DILocation(line: 471, column: 11, scope: !3520)
!3538 = !DILocation(line: 471, column: 9, scope: !3520)
!3539 = !DILocation(line: 473, column: 15, scope: !3520)
!3540 = !DILocation(line: 473, column: 20, scope: !3520)
!3541 = !DILocation(line: 473, column: 29, scope: !3520)
!3542 = !DILocation(line: 473, column: 13, scope: !3520)
!3543 = !DILocation(line: 474, column: 9, scope: !3520)
!3544 = !DILocation(line: 474, column: 14, scope: !3520)
!3545 = !DILocation(line: 474, column: 23, scope: !3520)
!3546 = !DILocation(line: 474, column: 7, scope: !3520)
!3547 = !DILocation(line: 476, column: 12, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 476, column: 5)
!3549 = !DILocation(line: 476, column: 10, scope: !3548)
!3550 = !DILocation(line: 476, column: 17, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !2, line: 476, column: 5)
!3552 = !DILocation(line: 476, column: 21, scope: !3551)
!3553 = !DILocation(line: 476, column: 19, scope: !3551)
!3554 = !DILocation(line: 476, column: 5, scope: !3548)
!3555 = !DILocation(line: 477, column: 13, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 477, column: 13)
!3557 = distinct !DILexicalBlock(scope: !3551, file: !2, line: 476, column: 29)
!3558 = !DILocation(line: 477, column: 21, scope: !3556)
!3559 = !DILocation(line: 477, column: 24, scope: !3556)
!3560 = !DILocation(line: 477, column: 29, scope: !3556)
!3561 = !{!2226, !2101, i64 8}
!3562 = !DILocation(line: 477, column: 36, scope: !3556)
!3563 = !DILocation(line: 477, column: 42, scope: !3556)
!3564 = !DILocation(line: 477, column: 33, scope: !3556)
!3565 = !DILocation(line: 477, column: 13, scope: !3557)
!3566 = !DILocation(line: 478, column: 13, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3556, file: !2, line: 477, column: 47)
!3568 = !DILocation(line: 481, column: 29, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 481, column: 13)
!3570 = !DILocation(line: 481, column: 37, scope: !3569)
!3571 = !DILocation(line: 481, column: 40, scope: !3569)
!3572 = !DILocation(line: 481, column: 45, scope: !3569)
!3573 = !{!2226, !2078, i64 16}
!3574 = !DILocation(line: 481, column: 51, scope: !3569)
!3575 = !DILocation(line: 481, column: 57, scope: !3569)
!3576 = !DILocation(line: 481, column: 63, scope: !3569)
!3577 = !DILocation(line: 481, column: 69, scope: !3569)
!3578 = !DILocation(line: 481, column: 13, scope: !3569)
!3579 = !DILocation(line: 481, column: 74, scope: !3569)
!3580 = !DILocation(line: 481, column: 13, scope: !3557)
!3581 = !DILocation(line: 482, column: 20, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3569, file: !2, line: 481, column: 80)
!3583 = !DILocation(line: 482, column: 13, scope: !3582)
!3584 = !DILocation(line: 484, column: 5, scope: !3557)
!3585 = !DILocation(line: 476, column: 25, scope: !3551)
!3586 = !DILocation(line: 476, column: 5, scope: !3551)
!3587 = distinct !{!3587, !3554, !3588, !2195}
!3588 = !DILocation(line: 484, column: 5, scope: !3548)
!3589 = !DILocation(line: 486, column: 5, scope: !3520)
!3590 = !DILocation(line: 487, column: 1, scope: !3520)
!3591 = !DISubprogram(name: "ngx_http_test_content_type", scope: !619, file: !619, line: 486, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!16, !623, !3594}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!3595 = !DISubprogram(name: "ngx_http_get_indexed_variable", scope: !1601, file: !1601, line: 52, type: !3596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!1599, !623, !11}
!3598 = !DISubprogram(name: "ngx_alloc_chain_link", scope: !32, file: !32, line: 150, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!114, !98}
!3601 = distinct !DISubprogram(name: "ngx_http_charset_recode_to_utf8", scope: !2, file: !2, line: 966, type: !3602, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!114, !98, !119, !2770}
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3605 = !DILocalVariable(name: "pool", arg: 1, scope: !3601, file: !2, line: 966, type: !98)
!3606 = !DILocalVariable(name: "buf", arg: 2, scope: !3601, file: !2, line: 966, type: !119)
!3607 = !DILocalVariable(name: "ctx", arg: 3, scope: !3601, file: !2, line: 967, type: !2770)
!3608 = !DILocalVariable(name: "len", scope: !3601, file: !2, line: 969, type: !33)
!3609 = !DILocalVariable(name: "size", scope: !3601, file: !2, line: 969, type: !33)
!3610 = !DILocalVariable(name: "p", scope: !3601, file: !2, line: 970, type: !36)
!3611 = !DILocalVariable(name: "src", scope: !3601, file: !2, line: 970, type: !36)
!3612 = !DILocalVariable(name: "dst", scope: !3601, file: !2, line: 970, type: !36)
!3613 = !DILocalVariable(name: "table", scope: !3601, file: !2, line: 970, type: !36)
!3614 = !DILocalVariable(name: "b", scope: !3601, file: !2, line: 971, type: !119)
!3615 = !DILocalVariable(name: "out", scope: !3601, file: !2, line: 972, type: !114)
!3616 = !DILocalVariable(name: "cl", scope: !3601, file: !2, line: 972, type: !114)
!3617 = !DILocalVariable(name: "ll", scope: !3601, file: !2, line: 972, type: !931)
!3618 = !DILabel(scope: !3601, name: "recode", file: !2, line: 994)
!3619 = !DILocation(line: 966, column: 45, scope: !3601)
!3620 = !DILocation(line: 966, column: 62, scope: !3601)
!3621 = !DILocation(line: 967, column: 29, scope: !3601)
!3622 = !DILocation(line: 969, column: 5, scope: !3601)
!3623 = !DILocation(line: 969, column: 19, scope: !3601)
!3624 = !DILocation(line: 969, column: 24, scope: !3601)
!3625 = !DILocation(line: 970, column: 5, scope: !3601)
!3626 = !DILocation(line: 970, column: 19, scope: !3601)
!3627 = !DILocation(line: 970, column: 23, scope: !3601)
!3628 = !DILocation(line: 970, column: 29, scope: !3601)
!3629 = !DILocation(line: 970, column: 35, scope: !3601)
!3630 = !DILocation(line: 971, column: 5, scope: !3601)
!3631 = !DILocation(line: 971, column: 19, scope: !3601)
!3632 = !DILocation(line: 972, column: 5, scope: !3601)
!3633 = !DILocation(line: 972, column: 19, scope: !3601)
!3634 = !DILocation(line: 972, column: 25, scope: !3601)
!3635 = !DILocation(line: 972, column: 31, scope: !3601)
!3636 = !DILocation(line: 974, column: 13, scope: !3601)
!3637 = !DILocation(line: 974, column: 18, scope: !3601)
!3638 = !DILocation(line: 974, column: 11, scope: !3601)
!3639 = !DILocation(line: 976, column: 16, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 976, column: 5)
!3641 = !DILocation(line: 976, column: 21, scope: !3640)
!3642 = !DILocation(line: 976, column: 14, scope: !3640)
!3643 = !DILocation(line: 976, column: 10, scope: !3640)
!3644 = !DILocation(line: 976, column: 26, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3640, file: !2, line: 976, column: 5)
!3646 = !DILocation(line: 976, column: 32, scope: !3645)
!3647 = !DILocation(line: 976, column: 37, scope: !3645)
!3648 = !DILocation(line: 976, column: 30, scope: !3645)
!3649 = !DILocation(line: 976, column: 5, scope: !3640)
!3650 = !DILocation(line: 977, column: 13, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !2, line: 977, column: 13)
!3652 = distinct !DILexicalBlock(scope: !3645, file: !2, line: 976, column: 50)
!3653 = !DILocation(line: 977, column: 20, scope: !3651)
!3654 = !DILocation(line: 977, column: 19, scope: !3651)
!3655 = !{!2079, !2079, i64 0}
!3656 = !DILocation(line: 977, column: 24, scope: !3651)
!3657 = !DILocation(line: 977, column: 39, scope: !3651)
!3658 = !DILocation(line: 977, column: 13, scope: !3652)
!3659 = !DILocation(line: 978, column: 13, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3651, file: !2, line: 977, column: 48)
!3661 = !DILocation(line: 981, column: 9, scope: !3652)
!3662 = !DILocation(line: 976, column: 46, scope: !3645)
!3663 = !DILocation(line: 976, column: 5, scope: !3645)
!3664 = distinct !{!3664, !3649, !3665, !2195}
!3665 = !DILocation(line: 982, column: 5, scope: !3640)
!3666 = !DILocation(line: 984, column: 32, scope: !3601)
!3667 = !DILocation(line: 984, column: 11, scope: !3601)
!3668 = !DILocation(line: 984, column: 9, scope: !3601)
!3669 = !DILocation(line: 985, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 985, column: 9)
!3671 = !DILocation(line: 985, column: 13, scope: !3670)
!3672 = !DILocation(line: 985, column: 9, scope: !3601)
!3673 = !DILocation(line: 986, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !2, line: 985, column: 22)
!3675 = !DILocation(line: 989, column: 16, scope: !3601)
!3676 = !DILocation(line: 989, column: 5, scope: !3601)
!3677 = !DILocation(line: 989, column: 10, scope: !3601)
!3678 = !DILocation(line: 989, column: 14, scope: !3601)
!3679 = !DILocation(line: 990, column: 5, scope: !3601)
!3680 = !DILocation(line: 990, column: 10, scope: !3601)
!3681 = !DILocation(line: 990, column: 15, scope: !3601)
!3682 = !DILocation(line: 992, column: 12, scope: !3601)
!3683 = !DILocation(line: 992, column: 5, scope: !3601)
!3684 = !DILocation(line: 994, column: 1, scope: !3601)
!3685 = !DILocation(line: 1001, column: 11, scope: !3601)
!3686 = !DILocation(line: 1001, column: 17, scope: !3601)
!3687 = !DILocation(line: 1001, column: 22, scope: !3601)
!3688 = !DILocation(line: 1001, column: 15, scope: !3601)
!3689 = !DILocation(line: 1001, column: 9, scope: !3601)
!3690 = !DILocation(line: 1003, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1003, column: 9)
!3692 = !DILocation(line: 1003, column: 13, scope: !3691)
!3693 = !DILocation(line: 1003, column: 9, scope: !3601)
!3694 = !DILocation(line: 1004, column: 40, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 1003, column: 20)
!3696 = !DILocation(line: 1004, column: 46, scope: !3695)
!3697 = !DILocation(line: 1004, column: 15, scope: !3695)
!3698 = !DILocation(line: 1004, column: 13, scope: !3695)
!3699 = !DILocation(line: 1005, column: 13, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3695, file: !2, line: 1005, column: 13)
!3701 = !DILocation(line: 1005, column: 17, scope: !3700)
!3702 = !DILocation(line: 1005, column: 13, scope: !3695)
!3703 = !DILocation(line: 1006, column: 13, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !2, line: 1005, column: 26)
!3705 = !DILocation(line: 1009, column: 13, scope: !3695)
!3706 = !DILocation(line: 1009, column: 18, scope: !3695)
!3707 = !DILocation(line: 1009, column: 11, scope: !3695)
!3708 = !DILocation(line: 1011, column: 24, scope: !3695)
!3709 = !DILocation(line: 1011, column: 29, scope: !3695)
!3710 = !DILocation(line: 1011, column: 9, scope: !3695)
!3711 = !DILocation(line: 1011, column: 12, scope: !3695)
!3712 = !DILocation(line: 1011, column: 22, scope: !3695)
!3713 = !DILocation(line: 1012, column: 21, scope: !3695)
!3714 = !DILocation(line: 1012, column: 26, scope: !3695)
!3715 = !DILocation(line: 1012, column: 9, scope: !3695)
!3716 = !DILocation(line: 1012, column: 12, scope: !3695)
!3717 = !DILocation(line: 1012, column: 19, scope: !3695)
!3718 = !DILocation(line: 1013, column: 19, scope: !3695)
!3719 = !DILocation(line: 1013, column: 24, scope: !3695)
!3720 = !DILocation(line: 1013, column: 9, scope: !3695)
!3721 = !DILocation(line: 1013, column: 12, scope: !3695)
!3722 = !DILocation(line: 1013, column: 17, scope: !3695)
!3723 = !DILocation(line: 1014, column: 20, scope: !3695)
!3724 = !DILocation(line: 1014, column: 25, scope: !3695)
!3725 = !DILocation(line: 1014, column: 9, scope: !3695)
!3726 = !DILocation(line: 1014, column: 12, scope: !3695)
!3727 = !DILocation(line: 1014, column: 18, scope: !3695)
!3728 = !DILocation(line: 1016, column: 18, scope: !3695)
!3729 = !DILocation(line: 1016, column: 23, scope: !3695)
!3730 = !DILocation(line: 1016, column: 9, scope: !3695)
!3731 = !DILocation(line: 1016, column: 12, scope: !3695)
!3732 = !DILocation(line: 1016, column: 16, scope: !3695)
!3733 = !DILocation(line: 1017, column: 19, scope: !3695)
!3734 = !DILocation(line: 1017, column: 9, scope: !3695)
!3735 = !DILocation(line: 1017, column: 12, scope: !3695)
!3736 = !DILocation(line: 1017, column: 17, scope: !3695)
!3737 = !DILocation(line: 1019, column: 20, scope: !3695)
!3738 = !DILocation(line: 1019, column: 9, scope: !3695)
!3739 = !DILocation(line: 1019, column: 14, scope: !3695)
!3740 = !DILocation(line: 1019, column: 18, scope: !3695)
!3741 = !DILocation(line: 1020, column: 9, scope: !3695)
!3742 = !DILocation(line: 1020, column: 14, scope: !3695)
!3743 = !DILocation(line: 1020, column: 19, scope: !3695)
!3744 = !DILocation(line: 1022, column: 16, scope: !3695)
!3745 = !DILocation(line: 1022, column: 21, scope: !3695)
!3746 = !DILocation(line: 1022, column: 28, scope: !3695)
!3747 = !DILocation(line: 1022, column: 26, scope: !3695)
!3748 = !DILocation(line: 1022, column: 14, scope: !3695)
!3749 = !DILocation(line: 1023, column: 16, scope: !3695)
!3750 = !DILocation(line: 1023, column: 21, scope: !3695)
!3751 = !DILocation(line: 1023, column: 27, scope: !3695)
!3752 = !DILocation(line: 1023, column: 32, scope: !3695)
!3753 = !DILocation(line: 1023, column: 38, scope: !3695)
!3754 = !DILocation(line: 1023, column: 43, scope: !3695)
!3755 = !DILocation(line: 1023, column: 36, scope: !3695)
!3756 = !DILocation(line: 1023, column: 25, scope: !3695)
!3757 = !DILocation(line: 1023, column: 14, scope: !3695)
!3758 = !DILocation(line: 1025, column: 5, scope: !3695)
!3759 = !DILocation(line: 1026, column: 13, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 1025, column: 12)
!3761 = !DILocation(line: 1028, column: 16, scope: !3760)
!3762 = !DILocation(line: 1028, column: 21, scope: !3760)
!3763 = !DILocation(line: 1028, column: 28, scope: !3760)
!3764 = !DILocation(line: 1028, column: 26, scope: !3760)
!3765 = !DILocation(line: 1028, column: 14, scope: !3760)
!3766 = !DILocation(line: 1029, column: 16, scope: !3760)
!3767 = !DILocation(line: 1029, column: 22, scope: !3760)
!3768 = !DILocation(line: 1029, column: 27, scope: !3760)
!3769 = !DILocation(line: 1029, column: 20, scope: !3760)
!3770 = !DILocation(line: 1029, column: 33, scope: !3760)
!3771 = !DILocation(line: 1029, column: 38, scope: !3760)
!3772 = !DILocation(line: 1029, column: 44, scope: !3760)
!3773 = !DILocation(line: 1029, column: 49, scope: !3760)
!3774 = !DILocation(line: 1029, column: 42, scope: !3760)
!3775 = !DILocation(line: 1029, column: 31, scope: !3760)
!3776 = !DILocation(line: 1029, column: 14, scope: !3760)
!3777 = !DILocation(line: 1031, column: 15, scope: !3760)
!3778 = !DILocation(line: 1031, column: 20, scope: !3760)
!3779 = !DILocation(line: 1031, column: 13, scope: !3760)
!3780 = !DILocation(line: 1034, column: 38, scope: !3601)
!3781 = !DILocation(line: 1034, column: 44, scope: !3601)
!3782 = !DILocation(line: 1034, column: 49, scope: !3601)
!3783 = !DILocation(line: 1034, column: 10, scope: !3601)
!3784 = !DILocation(line: 1034, column: 8, scope: !3601)
!3785 = !DILocation(line: 1035, column: 9, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1035, column: 9)
!3787 = !DILocation(line: 1035, column: 12, scope: !3786)
!3788 = !DILocation(line: 1035, column: 9, scope: !3601)
!3789 = !DILocation(line: 1036, column: 9, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3786, file: !2, line: 1035, column: 21)
!3791 = !DILocation(line: 1039, column: 9, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1039, column: 9)
!3793 = !DILocation(line: 1039, column: 9, scope: !3601)
!3794 = !DILocation(line: 1040, column: 21, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 1039, column: 14)
!3796 = !DILocation(line: 1040, column: 9, scope: !3795)
!3797 = !DILocation(line: 1040, column: 14, scope: !3795)
!3798 = !DILocation(line: 1040, column: 19, scope: !3795)
!3799 = !DILocation(line: 1042, column: 5, scope: !3795)
!3800 = !DILocation(line: 1043, column: 15, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 1042, column: 12)
!3802 = !DILocation(line: 1043, column: 13, scope: !3801)
!3803 = !DILocation(line: 1046, column: 11, scope: !3601)
!3804 = !DILocation(line: 1046, column: 15, scope: !3601)
!3805 = !DILocation(line: 1046, column: 8, scope: !3601)
!3806 = !DILocation(line: 1048, column: 9, scope: !3601)
!3807 = !DILocation(line: 1048, column: 13, scope: !3601)
!3808 = !DILocation(line: 1048, column: 7, scope: !3601)
!3809 = !DILocation(line: 1049, column: 11, scope: !3601)
!3810 = !DILocation(line: 1049, column: 14, scope: !3601)
!3811 = !DILocation(line: 1049, column: 9, scope: !3601)
!3812 = !DILocation(line: 1051, column: 5, scope: !3601)
!3813 = !DILocation(line: 1051, column: 12, scope: !3601)
!3814 = !DILocation(line: 1051, column: 18, scope: !3601)
!3815 = !DILocation(line: 1051, column: 23, scope: !3601)
!3816 = !DILocation(line: 1051, column: 16, scope: !3601)
!3817 = !DILocation(line: 1053, column: 14, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 1051, column: 29)
!3819 = !DILocation(line: 1053, column: 24, scope: !3818)
!3820 = !DILocation(line: 1053, column: 20, scope: !3818)
!3821 = !DILocation(line: 1053, column: 27, scope: !3818)
!3822 = !DILocation(line: 1053, column: 11, scope: !3818)
!3823 = !DILocation(line: 1054, column: 17, scope: !3818)
!3824 = !DILocation(line: 1054, column: 15, scope: !3818)
!3825 = !DILocation(line: 1054, column: 13, scope: !3818)
!3826 = !DILocation(line: 1056, column: 23, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3818, file: !2, line: 1056, column: 13)
!3828 = !DILocation(line: 1056, column: 26, scope: !3827)
!3829 = !{!2846, !2078, i64 40}
!3830 = !DILocation(line: 1056, column: 32, scope: !3827)
!3831 = !DILocation(line: 1056, column: 30, scope: !3827)
!3832 = !DILocation(line: 1056, column: 39, scope: !3827)
!3833 = !DILocation(line: 1056, column: 37, scope: !3827)
!3834 = !DILocation(line: 1056, column: 13, scope: !3818)
!3835 = !DILocation(line: 1057, column: 23, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3827, file: !2, line: 1056, column: 44)
!3837 = !DILocation(line: 1057, column: 13, scope: !3836)
!3838 = !DILocation(line: 1057, column: 16, scope: !3836)
!3839 = !DILocation(line: 1057, column: 21, scope: !3836)
!3840 = !DILocation(line: 1059, column: 20, scope: !3836)
!3841 = !DILocation(line: 1059, column: 25, scope: !3836)
!3842 = !DILocation(line: 1059, column: 32, scope: !3836)
!3843 = !DILocation(line: 1059, column: 30, scope: !3836)
!3844 = !DILocation(line: 1059, column: 18, scope: !3836)
!3845 = !DILocation(line: 1060, column: 20, scope: !3836)
!3846 = !DILocation(line: 1060, column: 26, scope: !3836)
!3847 = !DILocation(line: 1060, column: 31, scope: !3836)
!3848 = !DILocation(line: 1060, column: 24, scope: !3836)
!3849 = !DILocation(line: 1060, column: 37, scope: !3836)
!3850 = !DILocation(line: 1060, column: 42, scope: !3836)
!3851 = !DILocation(line: 1060, column: 48, scope: !3836)
!3852 = !DILocation(line: 1060, column: 53, scope: !3836)
!3853 = !DILocation(line: 1060, column: 46, scope: !3836)
!3854 = !DILocation(line: 1060, column: 35, scope: !3836)
!3855 = !DILocation(line: 1060, column: 18, scope: !3836)
!3856 = !DILocation(line: 1062, column: 46, scope: !3836)
!3857 = !DILocation(line: 1062, column: 52, scope: !3836)
!3858 = !DILocation(line: 1062, column: 57, scope: !3836)
!3859 = !DILocation(line: 1062, column: 18, scope: !3836)
!3860 = !DILocation(line: 1062, column: 16, scope: !3836)
!3861 = !DILocation(line: 1063, column: 17, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3836, file: !2, line: 1063, column: 17)
!3863 = !DILocation(line: 1063, column: 20, scope: !3862)
!3864 = !DILocation(line: 1063, column: 17, scope: !3836)
!3865 = !DILocation(line: 1064, column: 17, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !2, line: 1063, column: 29)
!3867 = !DILocation(line: 1067, column: 19, scope: !3836)
!3868 = !DILocation(line: 1067, column: 14, scope: !3836)
!3869 = !DILocation(line: 1067, column: 17, scope: !3836)
!3870 = !DILocation(line: 1068, column: 19, scope: !3836)
!3871 = !DILocation(line: 1068, column: 23, scope: !3836)
!3872 = !DILocation(line: 1068, column: 16, scope: !3836)
!3873 = !DILocation(line: 1070, column: 17, scope: !3836)
!3874 = !DILocation(line: 1070, column: 21, scope: !3836)
!3875 = !DILocation(line: 1070, column: 15, scope: !3836)
!3876 = !DILocation(line: 1071, column: 19, scope: !3836)
!3877 = !DILocation(line: 1071, column: 22, scope: !3836)
!3878 = !DILocation(line: 1071, column: 17, scope: !3836)
!3879 = !DILocation(line: 1072, column: 9, scope: !3836)
!3880 = !DILocation(line: 1074, column: 9, scope: !3818)
!3881 = !DILocation(line: 1074, column: 16, scope: !3818)
!3882 = !DILocation(line: 1075, column: 24, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3818, file: !2, line: 1074, column: 21)
!3884 = !DILocation(line: 1075, column: 22, scope: !3883)
!3885 = !DILocation(line: 1075, column: 17, scope: !3883)
!3886 = !DILocation(line: 1075, column: 20, scope: !3883)
!3887 = !DILocation(line: 1076, column: 16, scope: !3883)
!3888 = distinct !{!3888, !3880, !3889, !2195}
!3889 = !DILocation(line: 1077, column: 9, scope: !3818)
!3890 = distinct !{!3890, !3812, !3891, !2195}
!3891 = !DILocation(line: 1078, column: 5, scope: !3601)
!3892 = !DILocation(line: 1080, column: 15, scope: !3601)
!3893 = !DILocation(line: 1080, column: 5, scope: !3601)
!3894 = !DILocation(line: 1080, column: 8, scope: !3601)
!3895 = !DILocation(line: 1080, column: 13, scope: !3601)
!3896 = !DILocation(line: 1082, column: 19, scope: !3601)
!3897 = !DILocation(line: 1082, column: 24, scope: !3601)
!3898 = !DILocation(line: 1082, column: 5, scope: !3601)
!3899 = !DILocation(line: 1082, column: 8, scope: !3601)
!3900 = !DILocation(line: 1082, column: 17, scope: !3601)
!3901 = !DILocation(line: 1083, column: 24, scope: !3601)
!3902 = !DILocation(line: 1083, column: 29, scope: !3601)
!3903 = !DILocation(line: 1083, column: 5, scope: !3601)
!3904 = !DILocation(line: 1083, column: 8, scope: !3601)
!3905 = !DILocation(line: 1083, column: 22, scope: !3601)
!3906 = !DILocation(line: 1084, column: 16, scope: !3601)
!3907 = !DILocation(line: 1084, column: 21, scope: !3601)
!3908 = !DILocation(line: 1084, column: 5, scope: !3601)
!3909 = !DILocation(line: 1084, column: 8, scope: !3601)
!3910 = !DILocation(line: 1084, column: 14, scope: !3601)
!3911 = !DILocation(line: 1086, column: 17, scope: !3601)
!3912 = !DILocation(line: 1086, column: 5, scope: !3601)
!3913 = !DILocation(line: 1086, column: 8, scope: !3601)
!3914 = !DILocation(line: 1086, column: 15, scope: !3601)
!3915 = !DILocation(line: 1088, column: 12, scope: !3601)
!3916 = !DILocation(line: 1088, column: 5, scope: !3601)
!3917 = !DILocation(line: 1089, column: 1, scope: !3601)
!3918 = distinct !DISubprogram(name: "ngx_http_charset_recode_from_utf8", scope: !2, file: !2, line: 685, type: !3602, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3920 = !DILocalVariable(name: "pool", arg: 1, scope: !3918, file: !2, line: 685, type: !98)
!3921 = !DILocalVariable(name: "buf", arg: 2, scope: !3918, file: !2, line: 685, type: !119)
!3922 = !DILocalVariable(name: "ctx", arg: 3, scope: !3918, file: !2, line: 686, type: !2770)
!3923 = !DILocalVariable(name: "len", scope: !3918, file: !2, line: 688, type: !33)
!3924 = !DILocalVariable(name: "size", scope: !3918, file: !2, line: 688, type: !33)
!3925 = !DILocalVariable(name: "c", scope: !3918, file: !2, line: 689, type: !37)
!3926 = !DILocalVariable(name: "p", scope: !3918, file: !2, line: 689, type: !36)
!3927 = !DILocalVariable(name: "src", scope: !3918, file: !2, line: 689, type: !36)
!3928 = !DILocalVariable(name: "dst", scope: !3918, file: !2, line: 689, type: !36)
!3929 = !DILocalVariable(name: "saved", scope: !3918, file: !2, line: 689, type: !36)
!3930 = !DILocalVariable(name: "table", scope: !3918, file: !2, line: 689, type: !35)
!3931 = !DILocalVariable(name: "n", scope: !3918, file: !2, line: 690, type: !630)
!3932 = !DILocalVariable(name: "b", scope: !3918, file: !2, line: 691, type: !119)
!3933 = !DILocalVariable(name: "i", scope: !3918, file: !2, line: 692, type: !11)
!3934 = !DILocalVariable(name: "out", scope: !3918, file: !2, line: 693, type: !114)
!3935 = !DILocalVariable(name: "cl", scope: !3918, file: !2, line: 693, type: !114)
!3936 = !DILocalVariable(name: "ll", scope: !3918, file: !2, line: 693, type: !931)
!3937 = !DILabel(scope: !3918, name: "recode", file: !2, line: 873)
!3938 = !DILocation(line: 685, column: 47, scope: !3918)
!3939 = !DILocation(line: 685, column: 64, scope: !3918)
!3940 = !DILocation(line: 686, column: 29, scope: !3918)
!3941 = !DILocation(line: 688, column: 5, scope: !3918)
!3942 = !DILocation(line: 688, column: 19, scope: !3918)
!3943 = !DILocation(line: 688, column: 24, scope: !3918)
!3944 = !DILocation(line: 689, column: 5, scope: !3918)
!3945 = !DILocation(line: 689, column: 19, scope: !3918)
!3946 = !DILocation(line: 689, column: 23, scope: !3918)
!3947 = !DILocation(line: 689, column: 27, scope: !3918)
!3948 = !DILocation(line: 689, column: 33, scope: !3918)
!3949 = !DILocation(line: 689, column: 39, scope: !3918)
!3950 = !DILocation(line: 689, column: 48, scope: !3918)
!3951 = !DILocation(line: 690, column: 5, scope: !3918)
!3952 = !DILocation(line: 690, column: 19, scope: !3918)
!3953 = !DILocation(line: 691, column: 5, scope: !3918)
!3954 = !DILocation(line: 691, column: 19, scope: !3918)
!3955 = !DILocation(line: 692, column: 5, scope: !3918)
!3956 = !DILocation(line: 692, column: 19, scope: !3918)
!3957 = !DILocation(line: 693, column: 5, scope: !3918)
!3958 = !DILocation(line: 693, column: 19, scope: !3918)
!3959 = !DILocation(line: 693, column: 25, scope: !3918)
!3960 = !DILocation(line: 693, column: 31, scope: !3918)
!3961 = !DILocation(line: 695, column: 11, scope: !3918)
!3962 = !DILocation(line: 695, column: 16, scope: !3918)
!3963 = !DILocation(line: 695, column: 9, scope: !3918)
!3964 = !DILocation(line: 697, column: 9, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 697, column: 9)
!3966 = !DILocation(line: 697, column: 14, scope: !3965)
!3967 = !{!2808, !2101, i64 56}
!3968 = !DILocation(line: 697, column: 24, scope: !3965)
!3969 = !DILocation(line: 697, column: 9, scope: !3918)
!3970 = !DILocation(line: 699, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3965, file: !2, line: 697, column: 30)
!3972 = !DILocation(line: 699, column: 28, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !2, line: 699, column: 9)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !2, line: 699, column: 9)
!3975 = !DILocation(line: 699, column: 34, scope: !3973)
!3976 = !DILocation(line: 699, column: 39, scope: !3973)
!3977 = !DILocation(line: 699, column: 32, scope: !3973)
!3978 = !DILocation(line: 699, column: 9, scope: !3974)
!3979 = !DILocation(line: 701, column: 18, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !2, line: 701, column: 17)
!3981 = distinct !DILexicalBlock(scope: !3973, file: !2, line: 699, column: 52)
!3982 = !DILocation(line: 701, column: 17, scope: !3980)
!3983 = !DILocation(line: 701, column: 22, scope: !3980)
!3984 = !DILocation(line: 701, column: 17, scope: !3981)
!3985 = !DILocation(line: 702, column: 17, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3980, file: !2, line: 701, column: 30)
!3987 = !DILocation(line: 705, column: 19, scope: !3981)
!3988 = !DILocation(line: 705, column: 25, scope: !3981)
!3989 = !DILocation(line: 705, column: 30, scope: !3981)
!3990 = !DILocation(line: 705, column: 23, scope: !3981)
!3991 = !DILocation(line: 705, column: 17, scope: !3981)
!3992 = !DILocation(line: 707, column: 17, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3981, file: !2, line: 707, column: 17)
!3994 = !DILocation(line: 707, column: 21, scope: !3993)
!3995 = !DILocation(line: 707, column: 17, scope: !3981)
!3996 = !DILocation(line: 708, column: 48, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 707, column: 28)
!3998 = !DILocation(line: 708, column: 54, scope: !3997)
!3999 = !DILocation(line: 708, column: 23, scope: !3997)
!4000 = !DILocation(line: 708, column: 21, scope: !3997)
!4001 = !DILocation(line: 709, column: 21, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 709, column: 21)
!4003 = !DILocation(line: 709, column: 25, scope: !4002)
!4004 = !DILocation(line: 709, column: 21, scope: !3997)
!4005 = !DILocation(line: 710, column: 21, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !2, line: 709, column: 34)
!4007 = !DILocation(line: 713, column: 21, scope: !3997)
!4008 = !DILocation(line: 713, column: 26, scope: !3997)
!4009 = !DILocation(line: 713, column: 19, scope: !3997)
!4010 = !DILocation(line: 715, column: 32, scope: !3997)
!4011 = !DILocation(line: 715, column: 37, scope: !3997)
!4012 = !DILocation(line: 715, column: 17, scope: !3997)
!4013 = !DILocation(line: 715, column: 20, scope: !3997)
!4014 = !DILocation(line: 715, column: 30, scope: !3997)
!4015 = !DILocation(line: 716, column: 29, scope: !3997)
!4016 = !DILocation(line: 716, column: 34, scope: !3997)
!4017 = !DILocation(line: 716, column: 17, scope: !3997)
!4018 = !DILocation(line: 716, column: 20, scope: !3997)
!4019 = !DILocation(line: 716, column: 27, scope: !3997)
!4020 = !DILocation(line: 717, column: 27, scope: !3997)
!4021 = !DILocation(line: 717, column: 32, scope: !3997)
!4022 = !DILocation(line: 717, column: 17, scope: !3997)
!4023 = !DILocation(line: 717, column: 20, scope: !3997)
!4024 = !DILocation(line: 717, column: 25, scope: !3997)
!4025 = !DILocation(line: 718, column: 28, scope: !3997)
!4026 = !DILocation(line: 718, column: 33, scope: !3997)
!4027 = !DILocation(line: 718, column: 17, scope: !3997)
!4028 = !DILocation(line: 718, column: 20, scope: !3997)
!4029 = !DILocation(line: 718, column: 26, scope: !3997)
!4030 = !DILocation(line: 720, column: 26, scope: !3997)
!4031 = !DILocation(line: 720, column: 31, scope: !3997)
!4032 = !DILocation(line: 720, column: 17, scope: !3997)
!4033 = !DILocation(line: 720, column: 20, scope: !3997)
!4034 = !DILocation(line: 720, column: 24, scope: !3997)
!4035 = !DILocation(line: 721, column: 27, scope: !3997)
!4036 = !DILocation(line: 721, column: 17, scope: !3997)
!4037 = !DILocation(line: 721, column: 20, scope: !3997)
!4038 = !DILocation(line: 721, column: 25, scope: !3997)
!4039 = !DILocation(line: 723, column: 28, scope: !3997)
!4040 = !DILocation(line: 723, column: 17, scope: !3997)
!4041 = !DILocation(line: 723, column: 22, scope: !3997)
!4042 = !DILocation(line: 723, column: 26, scope: !3997)
!4043 = !DILocation(line: 724, column: 17, scope: !3997)
!4044 = !DILocation(line: 724, column: 22, scope: !3997)
!4045 = !DILocation(line: 724, column: 27, scope: !3997)
!4046 = !DILocation(line: 726, column: 24, scope: !3997)
!4047 = !DILocation(line: 726, column: 29, scope: !3997)
!4048 = !DILocation(line: 726, column: 36, scope: !3997)
!4049 = !DILocation(line: 726, column: 34, scope: !3997)
!4050 = !DILocation(line: 726, column: 22, scope: !3997)
!4051 = !DILocation(line: 728, column: 25, scope: !3997)
!4052 = !DILocation(line: 728, column: 23, scope: !3997)
!4053 = !DILocation(line: 729, column: 45, scope: !3997)
!4054 = !DILocation(line: 729, column: 21, scope: !3997)
!4055 = !DILocation(line: 729, column: 19, scope: !3997)
!4056 = !{!2228, !2228, i64 0}
!4057 = !DILocation(line: 731, column: 21, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 731, column: 21)
!4059 = !DILocation(line: 731, column: 23, scope: !4058)
!4060 = !DILocation(line: 731, column: 21, scope: !3997)
!4061 = !DILocation(line: 734, column: 21, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !2, line: 731, column: 38)
!4063 = !DILocation(line: 735, column: 38, scope: !4062)
!4064 = !DILocation(line: 735, column: 21, scope: !4062)
!4065 = !DILocation(line: 735, column: 26, scope: !4062)
!4066 = !DILocation(line: 735, column: 36, scope: !4062)
!4067 = !DILocation(line: 737, column: 33, scope: !4062)
!4068 = !DILocation(line: 737, column: 21, scope: !4062)
!4069 = !DILocation(line: 737, column: 24, scope: !4062)
!4070 = !DILocation(line: 737, column: 31, scope: !4062)
!4071 = !DILocation(line: 739, column: 28, scope: !4062)
!4072 = !DILocation(line: 739, column: 21, scope: !4062)
!4073 = !DILocation(line: 742, column: 13, scope: !3997)
!4074 = !DILocation(line: 743, column: 21, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 742, column: 20)
!4076 = !DILocation(line: 744, column: 24, scope: !4075)
!4077 = !DILocation(line: 744, column: 30, scope: !4075)
!4078 = !DILocation(line: 744, column: 35, scope: !4075)
!4079 = !DILocation(line: 744, column: 28, scope: !4075)
!4080 = !DILocation(line: 744, column: 42, scope: !4075)
!4081 = !DILocation(line: 744, column: 40, scope: !4075)
!4082 = !DILocation(line: 744, column: 22, scope: !4075)
!4083 = !DILocation(line: 745, column: 23, scope: !4075)
!4084 = !DILocation(line: 745, column: 28, scope: !4075)
!4085 = !DILocation(line: 745, column: 21, scope: !4075)
!4086 = !DILocation(line: 748, column: 17, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3981, file: !2, line: 748, column: 17)
!4088 = !DILocation(line: 748, column: 22, scope: !4087)
!4089 = !DILocation(line: 748, column: 17, scope: !3981)
!4090 = !DILocation(line: 749, column: 22, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !2, line: 748, column: 45)
!4092 = !DILocation(line: 750, column: 13, scope: !4091)
!4093 = !DILocation(line: 752, column: 46, scope: !3981)
!4094 = !DILocation(line: 752, column: 52, scope: !3981)
!4095 = !DILocation(line: 752, column: 57, scope: !3981)
!4096 = !DILocation(line: 752, column: 18, scope: !3981)
!4097 = !DILocation(line: 752, column: 16, scope: !3981)
!4098 = !DILocation(line: 753, column: 17, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !3981, file: !2, line: 753, column: 17)
!4100 = !DILocation(line: 753, column: 20, scope: !4099)
!4101 = !DILocation(line: 753, column: 17, scope: !3981)
!4102 = !DILocation(line: 754, column: 17, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !2, line: 753, column: 29)
!4104 = !DILocation(line: 757, column: 17, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !3981, file: !2, line: 757, column: 17)
!4106 = !DILocation(line: 757, column: 17, scope: !3981)
!4107 = !DILocation(line: 758, column: 29, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4105, file: !2, line: 757, column: 22)
!4109 = !DILocation(line: 758, column: 17, scope: !4108)
!4110 = !DILocation(line: 758, column: 22, scope: !4108)
!4111 = !DILocation(line: 758, column: 27, scope: !4108)
!4112 = !DILocation(line: 760, column: 13, scope: !4108)
!4113 = !DILocation(line: 761, column: 23, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4105, file: !2, line: 760, column: 20)
!4115 = !DILocation(line: 761, column: 21, scope: !4114)
!4116 = !DILocation(line: 764, column: 17, scope: !3981)
!4117 = !DILocation(line: 764, column: 21, scope: !3981)
!4118 = !DILocation(line: 764, column: 15, scope: !3981)
!4119 = !DILocation(line: 765, column: 19, scope: !3981)
!4120 = !DILocation(line: 765, column: 22, scope: !3981)
!4121 = !DILocation(line: 765, column: 17, scope: !3981)
!4122 = !DILocation(line: 767, column: 13, scope: !3981)
!4123 = !DILocation(line: 699, column: 48, scope: !3973)
!4124 = !DILocation(line: 699, column: 9, scope: !3973)
!4125 = distinct !{!4125, !3978, !4126, !2195}
!4126 = !DILocation(line: 768, column: 9, scope: !3974)
!4127 = !DILocation(line: 770, column: 36, scope: !3971)
!4128 = !DILocation(line: 770, column: 15, scope: !3971)
!4129 = !DILocation(line: 770, column: 13, scope: !3971)
!4130 = !DILocation(line: 771, column: 13, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !3971, file: !2, line: 771, column: 13)
!4132 = !DILocation(line: 771, column: 17, scope: !4131)
!4133 = !DILocation(line: 771, column: 13, scope: !3971)
!4134 = !DILocation(line: 772, column: 13, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4131, file: !2, line: 771, column: 26)
!4136 = !DILocation(line: 775, column: 20, scope: !3971)
!4137 = !DILocation(line: 775, column: 9, scope: !3971)
!4138 = !DILocation(line: 775, column: 14, scope: !3971)
!4139 = !DILocation(line: 775, column: 18, scope: !3971)
!4140 = !DILocation(line: 776, column: 9, scope: !3971)
!4141 = !DILocation(line: 776, column: 14, scope: !3971)
!4142 = !DILocation(line: 776, column: 19, scope: !3971)
!4143 = !DILocation(line: 778, column: 16, scope: !3971)
!4144 = !DILocation(line: 778, column: 9, scope: !3971)
!4145 = !DILocation(line: 786, column: 9, scope: !3918)
!4146 = !DILocation(line: 786, column: 7, scope: !3918)
!4147 = !DILocation(line: 788, column: 14, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 788, column: 5)
!4149 = !DILocation(line: 788, column: 19, scope: !4148)
!4150 = !DILocation(line: 788, column: 12, scope: !4148)
!4151 = !DILocation(line: 788, column: 10, scope: !4148)
!4152 = !DILocation(line: 788, column: 30, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !2, line: 788, column: 5)
!4154 = !DILocation(line: 788, column: 32, scope: !4153)
!4155 = !DILocation(line: 788, column: 5, scope: !4148)
!4156 = !DILocation(line: 789, column: 27, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !2, line: 788, column: 52)
!4158 = !DILocation(line: 789, column: 25, scope: !4157)
!4159 = !DILocation(line: 789, column: 9, scope: !4157)
!4160 = !DILocation(line: 789, column: 14, scope: !4157)
!4161 = !DILocation(line: 789, column: 20, scope: !4157)
!4162 = !DILocation(line: 789, column: 23, scope: !4157)
!4163 = !DILocation(line: 791, column: 13, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4157, file: !2, line: 791, column: 13)
!4165 = !DILocation(line: 791, column: 18, scope: !4164)
!4166 = !DILocation(line: 791, column: 23, scope: !4164)
!4167 = !DILocation(line: 791, column: 15, scope: !4164)
!4168 = !DILocation(line: 791, column: 13, scope: !4157)
!4169 = !DILocation(line: 792, column: 13, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4164, file: !2, line: 791, column: 29)
!4171 = !DILocation(line: 794, column: 5, scope: !4157)
!4172 = !DILocation(line: 788, column: 48, scope: !4153)
!4173 = !DILocation(line: 788, column: 5, scope: !4153)
!4174 = distinct !{!4174, !4155, !4175, !2195}
!4175 = !DILocation(line: 794, column: 5, scope: !4148)
!4176 = !DILocation(line: 796, column: 13, scope: !3918)
!4177 = !DILocation(line: 796, column: 18, scope: !3918)
!4178 = !DILocation(line: 796, column: 11, scope: !3918)
!4179 = !DILocation(line: 797, column: 33, scope: !3918)
!4180 = !DILocation(line: 797, column: 9, scope: !3918)
!4181 = !DILocation(line: 797, column: 7, scope: !3918)
!4182 = !DILocation(line: 799, column: 7, scope: !3918)
!4183 = !DILocation(line: 801, column: 9, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 801, column: 9)
!4185 = !DILocation(line: 801, column: 11, scope: !4184)
!4186 = !DILocation(line: 801, column: 9, scope: !3918)
!4187 = !DILocation(line: 802, column: 29, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4184, file: !2, line: 801, column: 22)
!4189 = !DILocation(line: 802, column: 34, scope: !4188)
!4190 = !DILocation(line: 802, column: 15, scope: !4188)
!4191 = !DILocation(line: 803, column: 13, scope: !4188)
!4192 = !DILocation(line: 803, column: 19, scope: !4188)
!4193 = !DILocation(line: 803, column: 21, scope: !4188)
!4194 = !DILocation(line: 803, column: 11, scope: !4188)
!4195 = !DILocation(line: 805, column: 13, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4188, file: !2, line: 805, column: 13)
!4197 = !DILocation(line: 805, column: 13, scope: !4188)
!4198 = !DILocation(line: 806, column: 17, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4196, file: !2, line: 805, column: 16)
!4200 = !DILocation(line: 806, column: 19, scope: !4199)
!4201 = !DILocation(line: 806, column: 21, scope: !4199)
!4202 = !DILocation(line: 806, column: 15, scope: !4199)
!4203 = !DILocation(line: 807, column: 9, scope: !4199)
!4204 = !DILocation(line: 809, column: 5, scope: !4188)
!4205 = !DILocation(line: 809, column: 16, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4184, file: !2, line: 809, column: 16)
!4207 = !DILocation(line: 809, column: 18, scope: !4206)
!4208 = !DILocation(line: 809, column: 16, scope: !4184)
!4209 = !DILocation(line: 813, column: 13, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !2, line: 813, column: 13)
!4211 = distinct !DILexicalBlock(scope: !4206, file: !2, line: 809, column: 33)
!4212 = !DILocation(line: 813, column: 15, scope: !4210)
!4213 = !DILocation(line: 813, column: 13, scope: !4211)
!4214 = !DILocation(line: 814, column: 44, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4210, file: !2, line: 813, column: 30)
!4216 = !DILocation(line: 814, column: 50, scope: !4215)
!4217 = !DILocation(line: 814, column: 19, scope: !4215)
!4218 = !DILocation(line: 814, column: 17, scope: !4215)
!4219 = !DILocation(line: 815, column: 17, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4215, file: !2, line: 815, column: 17)
!4221 = !DILocation(line: 815, column: 21, scope: !4220)
!4222 = !DILocation(line: 815, column: 17, scope: !4215)
!4223 = !DILocation(line: 816, column: 17, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4220, file: !2, line: 815, column: 30)
!4225 = !DILocation(line: 819, column: 17, scope: !4215)
!4226 = !DILocation(line: 819, column: 22, scope: !4215)
!4227 = !DILocation(line: 819, column: 15, scope: !4215)
!4228 = !DILocation(line: 821, column: 22, scope: !4215)
!4229 = !DILocation(line: 821, column: 27, scope: !4215)
!4230 = !DILocation(line: 821, column: 13, scope: !4215)
!4231 = !DILocation(line: 821, column: 16, scope: !4215)
!4232 = !DILocation(line: 821, column: 20, scope: !4215)
!4233 = !DILocation(line: 822, column: 23, scope: !4215)
!4234 = !DILocation(line: 822, column: 28, scope: !4215)
!4235 = !DILocation(line: 822, column: 13, scope: !4215)
!4236 = !DILocation(line: 822, column: 16, scope: !4215)
!4237 = !DILocation(line: 822, column: 21, scope: !4215)
!4238 = !DILocation(line: 823, column: 13, scope: !4215)
!4239 = !DILocation(line: 823, column: 16, scope: !4215)
!4240 = !DILocation(line: 823, column: 21, scope: !4215)
!4241 = !DILocation(line: 824, column: 25, scope: !4215)
!4242 = !DILocation(line: 824, column: 13, scope: !4215)
!4243 = !DILocation(line: 824, column: 16, scope: !4215)
!4244 = !DILocation(line: 824, column: 23, scope: !4215)
!4245 = !DILocation(line: 826, column: 13, scope: !4215)
!4246 = !DILocation(line: 827, column: 31, scope: !4215)
!4247 = !DILocation(line: 827, column: 13, scope: !4215)
!4248 = !DILocation(line: 827, column: 18, scope: !4215)
!4249 = !DILocation(line: 827, column: 28, scope: !4215)
!4250 = !DILocation(line: 829, column: 20, scope: !4215)
!4251 = !DILocation(line: 829, column: 13, scope: !4215)
!4252 = !DILocation(line: 831, column: 5, scope: !4211)
!4253 = !DILocation(line: 833, column: 12, scope: !3918)
!4254 = !DILocation(line: 833, column: 17, scope: !3918)
!4255 = !DILocation(line: 833, column: 24, scope: !3918)
!4256 = !DILocation(line: 833, column: 29, scope: !3918)
!4257 = !DILocation(line: 833, column: 22, scope: !3918)
!4258 = !DILocation(line: 833, column: 10, scope: !3918)
!4259 = !DILocation(line: 835, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 835, column: 9)
!4261 = !DILocation(line: 835, column: 14, scope: !4260)
!4262 = !DILocation(line: 835, column: 9, scope: !3918)
!4263 = !DILocation(line: 836, column: 14, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4260, file: !2, line: 835, column: 37)
!4265 = !DILocation(line: 837, column: 5, scope: !4264)
!4266 = !DILocation(line: 839, column: 38, scope: !3918)
!4267 = !DILocation(line: 839, column: 44, scope: !3918)
!4268 = !DILocation(line: 839, column: 49, scope: !3918)
!4269 = !DILocation(line: 839, column: 10, scope: !3918)
!4270 = !DILocation(line: 839, column: 8, scope: !3918)
!4271 = !DILocation(line: 840, column: 9, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 840, column: 9)
!4273 = !DILocation(line: 840, column: 12, scope: !4272)
!4274 = !DILocation(line: 840, column: 9, scope: !3918)
!4275 = !DILocation(line: 841, column: 9, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 840, column: 21)
!4277 = !DILocation(line: 844, column: 11, scope: !3918)
!4278 = !DILocation(line: 844, column: 9, scope: !3918)
!4279 = !DILocation(line: 846, column: 9, scope: !3918)
!4280 = !DILocation(line: 846, column: 13, scope: !3918)
!4281 = !DILocation(line: 846, column: 7, scope: !3918)
!4282 = !DILocation(line: 847, column: 11, scope: !3918)
!4283 = !DILocation(line: 847, column: 14, scope: !3918)
!4284 = !DILocation(line: 847, column: 9, scope: !3918)
!4285 = !DILocation(line: 849, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 849, column: 9)
!4287 = !DILocation(line: 849, column: 9, scope: !3918)
!4288 = !DILocation(line: 850, column: 18, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 849, column: 12)
!4290 = !DILocation(line: 850, column: 13, scope: !4289)
!4291 = !DILocation(line: 850, column: 16, scope: !4289)
!4292 = !DILocation(line: 852, column: 5, scope: !4289)
!4293 = !DILocation(line: 852, column: 16, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 852, column: 16)
!4295 = !DILocation(line: 852, column: 18, scope: !4294)
!4296 = !DILocation(line: 852, column: 16, scope: !4286)
!4297 = !DILocation(line: 853, column: 13, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4294, file: !2, line: 852, column: 33)
!4299 = !DILocation(line: 853, column: 16, scope: !4298)
!4300 = !DILocation(line: 858, column: 18, scope: !4298)
!4301 = !DILocation(line: 858, column: 23, scope: !4298)
!4302 = !DILocation(line: 858, column: 15, scope: !4298)
!4303 = !DILocation(line: 860, column: 5, scope: !4298)
!4304 = !DILocation(line: 860, column: 16, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4294, file: !2, line: 860, column: 16)
!4306 = !DILocation(line: 860, column: 18, scope: !4305)
!4307 = !DILocation(line: 860, column: 16, scope: !4294)
!4308 = !DILocation(line: 861, column: 13, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !2, line: 860, column: 30)
!4310 = !DILocation(line: 861, column: 16, scope: !4309)
!4311 = !DILocation(line: 866, column: 5, scope: !4309)
!4312 = !DILocation(line: 867, column: 27, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !2, line: 866, column: 12)
!4314 = !DILocation(line: 867, column: 42, scope: !4313)
!4315 = !DILocation(line: 867, column: 15, scope: !4313)
!4316 = !DILocation(line: 867, column: 13, scope: !4313)
!4317 = !DILocation(line: 870, column: 13, scope: !3918)
!4318 = !DILocation(line: 870, column: 21, scope: !3918)
!4319 = !DILocation(line: 870, column: 26, scope: !3918)
!4320 = !DILocation(line: 870, column: 19, scope: !3918)
!4321 = !DILocation(line: 870, column: 35, scope: !3918)
!4322 = !DILocation(line: 870, column: 40, scope: !3918)
!4323 = !DILocation(line: 870, column: 33, scope: !3918)
!4324 = !DILocation(line: 870, column: 9, scope: !3918)
!4325 = !DILocation(line: 871, column: 5, scope: !3918)
!4326 = !DILocation(line: 871, column: 10, scope: !3918)
!4327 = !DILocation(line: 871, column: 20, scope: !3918)
!4328 = !DILocation(line: 873, column: 1, scope: !3918)
!4329 = !DILocation(line: 875, column: 11, scope: !3918)
!4330 = !DILocation(line: 875, column: 15, scope: !3918)
!4331 = !DILocation(line: 875, column: 8, scope: !3918)
!4332 = !DILocation(line: 877, column: 25, scope: !3918)
!4333 = !DILocation(line: 877, column: 30, scope: !3918)
!4334 = !DILocation(line: 877, column: 11, scope: !3918)
!4335 = !DILocation(line: 879, column: 5, scope: !3918)
!4336 = !DILocation(line: 879, column: 12, scope: !3918)
!4337 = !DILocation(line: 879, column: 18, scope: !3918)
!4338 = !DILocation(line: 879, column: 23, scope: !3918)
!4339 = !DILocation(line: 879, column: 16, scope: !3918)
!4340 = !DILocation(line: 881, column: 23, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 881, column: 13)
!4342 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 879, column: 29)
!4343 = !DILocation(line: 881, column: 26, scope: !4341)
!4344 = !DILocation(line: 881, column: 32, scope: !4341)
!4345 = !DILocation(line: 881, column: 30, scope: !4341)
!4346 = !DILocation(line: 881, column: 37, scope: !4341)
!4347 = !DILocation(line: 881, column: 13, scope: !4342)
!4348 = !DILocation(line: 882, column: 23, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4341, file: !2, line: 881, column: 60)
!4350 = !DILocation(line: 882, column: 13, scope: !4349)
!4351 = !DILocation(line: 882, column: 16, scope: !4349)
!4352 = !DILocation(line: 882, column: 21, scope: !4349)
!4353 = !DILocation(line: 884, column: 20, scope: !4349)
!4354 = !DILocation(line: 884, column: 25, scope: !4349)
!4355 = !DILocation(line: 884, column: 32, scope: !4349)
!4356 = !DILocation(line: 884, column: 30, scope: !4349)
!4357 = !DILocation(line: 884, column: 36, scope: !4349)
!4358 = !DILocation(line: 884, column: 18, scope: !4349)
!4359 = !DILocation(line: 886, column: 46, scope: !4349)
!4360 = !DILocation(line: 886, column: 52, scope: !4349)
!4361 = !DILocation(line: 886, column: 57, scope: !4349)
!4362 = !DILocation(line: 886, column: 18, scope: !4349)
!4363 = !DILocation(line: 886, column: 16, scope: !4349)
!4364 = !DILocation(line: 887, column: 17, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4349, file: !2, line: 887, column: 17)
!4366 = !DILocation(line: 887, column: 20, scope: !4365)
!4367 = !DILocation(line: 887, column: 17, scope: !4349)
!4368 = !DILocation(line: 888, column: 17, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !2, line: 887, column: 29)
!4370 = !DILocation(line: 891, column: 19, scope: !4349)
!4371 = !DILocation(line: 891, column: 14, scope: !4349)
!4372 = !DILocation(line: 891, column: 17, scope: !4349)
!4373 = !DILocation(line: 892, column: 19, scope: !4349)
!4374 = !DILocation(line: 892, column: 23, scope: !4349)
!4375 = !DILocation(line: 892, column: 16, scope: !4349)
!4376 = !DILocation(line: 894, column: 17, scope: !4349)
!4377 = !DILocation(line: 894, column: 21, scope: !4349)
!4378 = !DILocation(line: 894, column: 15, scope: !4349)
!4379 = !DILocation(line: 895, column: 19, scope: !4349)
!4380 = !DILocation(line: 895, column: 22, scope: !4349)
!4381 = !DILocation(line: 895, column: 17, scope: !4349)
!4382 = !DILocation(line: 896, column: 9, scope: !4349)
!4383 = !DILocation(line: 898, column: 14, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 898, column: 13)
!4385 = !DILocation(line: 898, column: 13, scope: !4384)
!4386 = !DILocation(line: 898, column: 18, scope: !4384)
!4387 = !DILocation(line: 898, column: 13, scope: !4342)
!4388 = !DILocation(line: 899, column: 26, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4384, file: !2, line: 898, column: 26)
!4390 = !DILocation(line: 899, column: 22, scope: !4389)
!4391 = !DILocation(line: 899, column: 17, scope: !4389)
!4392 = !DILocation(line: 899, column: 20, scope: !4389)
!4393 = !DILocation(line: 900, column: 13, scope: !4389)
!4394 = distinct !{!4394, !4335, !4395, !2195}
!4395 = !DILocation(line: 951, column: 5, scope: !3918)
!4396 = !DILocation(line: 903, column: 15, scope: !4342)
!4397 = !DILocation(line: 903, column: 20, scope: !4342)
!4398 = !DILocation(line: 903, column: 27, scope: !4342)
!4399 = !DILocation(line: 903, column: 25, scope: !4342)
!4400 = !DILocation(line: 903, column: 13, scope: !4342)
!4401 = !DILocation(line: 905, column: 35, scope: !4342)
!4402 = !DILocation(line: 905, column: 13, scope: !4342)
!4403 = !DILocation(line: 905, column: 11, scope: !4342)
!4404 = !DILocation(line: 907, column: 13, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 907, column: 13)
!4406 = !DILocation(line: 907, column: 15, scope: !4405)
!4407 = !DILocation(line: 907, column: 13, scope: !4342)
!4408 = !DILocation(line: 909, column: 17, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4405, file: !2, line: 907, column: 26)
!4410 = !DILocation(line: 909, column: 23, scope: !4409)
!4411 = !DILocation(line: 909, column: 25, scope: !4409)
!4412 = !DILocation(line: 909, column: 15, scope: !4409)
!4413 = !DILocation(line: 911, column: 17, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4409, file: !2, line: 911, column: 17)
!4415 = !DILocation(line: 911, column: 17, scope: !4409)
!4416 = !DILocation(line: 912, column: 21, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !2, line: 911, column: 20)
!4418 = !DILocation(line: 912, column: 23, scope: !4417)
!4419 = !DILocation(line: 912, column: 25, scope: !4417)
!4420 = !DILocation(line: 912, column: 19, scope: !4417)
!4421 = !DILocation(line: 914, column: 21, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4417, file: !2, line: 914, column: 21)
!4423 = !DILocation(line: 914, column: 21, scope: !4417)
!4424 = !DILocation(line: 915, column: 30, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !2, line: 914, column: 24)
!4426 = !DILocation(line: 915, column: 25, scope: !4425)
!4427 = !DILocation(line: 915, column: 28, scope: !4425)
!4428 = !DILocation(line: 916, column: 21, scope: !4425)
!4429 = !DILocation(line: 918, column: 13, scope: !4417)
!4430 = !DILocation(line: 920, column: 31, scope: !4409)
!4431 = !DILocation(line: 920, column: 46, scope: !4409)
!4432 = !DILocation(line: 920, column: 19, scope: !4409)
!4433 = !DILocation(line: 920, column: 17, scope: !4409)
!4434 = !DILocation(line: 922, column: 13, scope: !4409)
!4435 = !DILocation(line: 925, column: 13, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 925, column: 13)
!4437 = !DILocation(line: 925, column: 15, scope: !4436)
!4438 = !DILocation(line: 925, column: 13, scope: !4342)
!4439 = !DILocation(line: 928, column: 13, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4436, file: !2, line: 925, column: 30)
!4441 = !DILocation(line: 929, column: 30, scope: !4440)
!4442 = !DILocation(line: 929, column: 13, scope: !4440)
!4443 = !DILocation(line: 929, column: 18, scope: !4440)
!4444 = !DILocation(line: 929, column: 28, scope: !4440)
!4445 = !DILocation(line: 931, column: 17, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4440, file: !2, line: 931, column: 17)
!4447 = !DILocation(line: 931, column: 20, scope: !4446)
!4448 = !DILocation(line: 931, column: 27, scope: !4446)
!4449 = !DILocation(line: 931, column: 24, scope: !4446)
!4450 = !DILocation(line: 931, column: 17, scope: !4440)
!4451 = !DILocation(line: 932, column: 17, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4446, file: !2, line: 931, column: 32)
!4453 = !DILocation(line: 932, column: 20, scope: !4452)
!4454 = !DILocation(line: 932, column: 25, scope: !4452)
!4455 = !DILocation(line: 933, column: 17, scope: !4452)
!4456 = !DILocation(line: 933, column: 20, scope: !4452)
!4457 = !DILocation(line: 933, column: 30, scope: !4452)
!4458 = !DILocation(line: 934, column: 13, scope: !4452)
!4459 = !DILocation(line: 936, column: 13, scope: !4440)
!4460 = !DILocation(line: 939, column: 13, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 939, column: 13)
!4462 = !DILocation(line: 939, column: 15, scope: !4461)
!4463 = !DILocation(line: 939, column: 13, scope: !4342)
!4464 = !DILocation(line: 940, column: 17, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4461, file: !2, line: 939, column: 27)
!4466 = !DILocation(line: 940, column: 20, scope: !4465)
!4467 = !DILocation(line: 945, column: 13, scope: !4465)
!4468 = !DILocation(line: 950, column: 27, scope: !4342)
!4469 = !DILocation(line: 950, column: 42, scope: !4342)
!4470 = !DILocation(line: 950, column: 15, scope: !4342)
!4471 = !DILocation(line: 950, column: 13, scope: !4342)
!4472 = !DILocation(line: 953, column: 15, scope: !3918)
!4473 = !DILocation(line: 953, column: 5, scope: !3918)
!4474 = !DILocation(line: 953, column: 8, scope: !3918)
!4475 = !DILocation(line: 953, column: 13, scope: !3918)
!4476 = !DILocation(line: 955, column: 19, scope: !3918)
!4477 = !DILocation(line: 955, column: 24, scope: !3918)
!4478 = !DILocation(line: 955, column: 5, scope: !3918)
!4479 = !DILocation(line: 955, column: 8, scope: !3918)
!4480 = !DILocation(line: 955, column: 17, scope: !3918)
!4481 = !DILocation(line: 956, column: 24, scope: !3918)
!4482 = !DILocation(line: 956, column: 29, scope: !3918)
!4483 = !DILocation(line: 956, column: 5, scope: !3918)
!4484 = !DILocation(line: 956, column: 8, scope: !3918)
!4485 = !DILocation(line: 956, column: 22, scope: !3918)
!4486 = !DILocation(line: 957, column: 16, scope: !3918)
!4487 = !DILocation(line: 957, column: 21, scope: !3918)
!4488 = !DILocation(line: 957, column: 5, scope: !3918)
!4489 = !DILocation(line: 957, column: 8, scope: !3918)
!4490 = !DILocation(line: 957, column: 14, scope: !3918)
!4491 = !DILocation(line: 959, column: 17, scope: !3918)
!4492 = !DILocation(line: 959, column: 5, scope: !3918)
!4493 = !DILocation(line: 959, column: 8, scope: !3918)
!4494 = !DILocation(line: 959, column: 15, scope: !3918)
!4495 = !DILocation(line: 961, column: 12, scope: !3918)
!4496 = !DILocation(line: 961, column: 5, scope: !3918)
!4497 = !DILocation(line: 962, column: 1, scope: !3918)
!4498 = distinct !DISubprogram(name: "ngx_http_charset_recode", scope: !2, file: !2, line: 652, type: !4499, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4501)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!11, !119, !36}
!4501 = !{!4502, !4503, !4504, !4505, !4506}
!4502 = !DILocalVariable(name: "b", arg: 1, scope: !4498, file: !2, line: 652, type: !119)
!4503 = !DILocalVariable(name: "table", arg: 2, scope: !4498, file: !2, line: 652, type: !36)
!4504 = !DILocalVariable(name: "p", scope: !4498, file: !2, line: 654, type: !36)
!4505 = !DILocalVariable(name: "last", scope: !4498, file: !2, line: 654, type: !36)
!4506 = !DILabel(scope: !4498, name: "recode", file: !2, line: 667)
!4507 = !DILocation(line: 652, column: 36, scope: !4498)
!4508 = !DILocation(line: 652, column: 47, scope: !4498)
!4509 = !DILocation(line: 654, column: 5, scope: !4498)
!4510 = !DILocation(line: 654, column: 14, scope: !4498)
!4511 = !DILocation(line: 654, column: 18, scope: !4498)
!4512 = !DILocation(line: 656, column: 12, scope: !4498)
!4513 = !DILocation(line: 656, column: 15, scope: !4498)
!4514 = !DILocation(line: 656, column: 10, scope: !4498)
!4515 = !DILocation(line: 658, column: 14, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4498, file: !2, line: 658, column: 5)
!4517 = !DILocation(line: 658, column: 17, scope: !4516)
!4518 = !DILocation(line: 658, column: 12, scope: !4516)
!4519 = !DILocation(line: 658, column: 10, scope: !4516)
!4520 = !DILocation(line: 658, column: 22, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 658, column: 5)
!4522 = !DILocation(line: 658, column: 26, scope: !4521)
!4523 = !DILocation(line: 658, column: 24, scope: !4521)
!4524 = !DILocation(line: 658, column: 5, scope: !4516)
!4525 = !DILocation(line: 660, column: 14, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !2, line: 660, column: 13)
!4527 = distinct !DILexicalBlock(scope: !4521, file: !2, line: 658, column: 37)
!4528 = !DILocation(line: 660, column: 13, scope: !4526)
!4529 = !DILocation(line: 660, column: 19, scope: !4526)
!4530 = !DILocation(line: 660, column: 26, scope: !4526)
!4531 = !DILocation(line: 660, column: 25, scope: !4526)
!4532 = !DILocation(line: 660, column: 16, scope: !4526)
!4533 = !DILocation(line: 660, column: 13, scope: !4527)
!4534 = !DILocation(line: 661, column: 13, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4526, file: !2, line: 660, column: 30)
!4536 = !DILocation(line: 663, column: 5, scope: !4527)
!4537 = !DILocation(line: 658, column: 33, scope: !4521)
!4538 = !DILocation(line: 658, column: 5, scope: !4521)
!4539 = distinct !{!4539, !4524, !4540, !2195}
!4540 = !DILocation(line: 663, column: 5, scope: !4516)
!4541 = !DILocation(line: 665, column: 5, scope: !4498)
!4542 = !DILocation(line: 667, column: 1, scope: !4498)
!4543 = !DILocation(line: 669, column: 5, scope: !4498)
!4544 = !DILocation(line: 670, column: 14, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 670, column: 13)
!4546 = distinct !DILexicalBlock(scope: !4498, file: !2, line: 669, column: 8)
!4547 = !DILocation(line: 670, column: 13, scope: !4545)
!4548 = !DILocation(line: 670, column: 19, scope: !4545)
!4549 = !DILocation(line: 670, column: 26, scope: !4545)
!4550 = !DILocation(line: 670, column: 25, scope: !4545)
!4551 = !DILocation(line: 670, column: 16, scope: !4545)
!4552 = !DILocation(line: 670, column: 13, scope: !4546)
!4553 = !DILocation(line: 671, column: 18, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4545, file: !2, line: 670, column: 30)
!4555 = !DILocation(line: 671, column: 25, scope: !4554)
!4556 = !DILocation(line: 671, column: 24, scope: !4554)
!4557 = !DILocation(line: 671, column: 14, scope: !4554)
!4558 = !DILocation(line: 671, column: 16, scope: !4554)
!4559 = !DILocation(line: 672, column: 9, scope: !4554)
!4560 = !DILocation(line: 674, column: 10, scope: !4546)
!4561 = !DILocation(line: 676, column: 5, scope: !4546)
!4562 = !DILocation(line: 676, column: 14, scope: !4498)
!4563 = !DILocation(line: 676, column: 18, scope: !4498)
!4564 = !DILocation(line: 676, column: 16, scope: !4498)
!4565 = distinct !{!4565, !4543, !4566, !2195}
!4566 = !DILocation(line: 676, column: 22, scope: !4498)
!4567 = !DILocation(line: 678, column: 5, scope: !4498)
!4568 = !DILocation(line: 678, column: 8, scope: !4498)
!4569 = !DILocation(line: 678, column: 16, scope: !4498)
!4570 = !DILocation(line: 680, column: 5, scope: !4498)
!4571 = !DILocation(line: 681, column: 1, scope: !4498)
!4572 = distinct !DISubprogram(name: "ngx_http_charset_get_buf", scope: !2, file: !2, line: 1093, type: !4573, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4575)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!114, !98, !2770}
!4575 = !{!4576, !4577, !4578}
!4576 = !DILocalVariable(name: "pool", arg: 1, scope: !4572, file: !2, line: 1093, type: !98)
!4577 = !DILocalVariable(name: "ctx", arg: 2, scope: !4572, file: !2, line: 1093, type: !2770)
!4578 = !DILocalVariable(name: "cl", scope: !4572, file: !2, line: 1095, type: !114)
!4579 = !DILocation(line: 1093, column: 38, scope: !4572)
!4580 = !DILocation(line: 1093, column: 68, scope: !4572)
!4581 = !DILocation(line: 1095, column: 5, scope: !4572)
!4582 = !DILocation(line: 1095, column: 19, scope: !4572)
!4583 = !DILocation(line: 1097, column: 10, scope: !4572)
!4584 = !DILocation(line: 1097, column: 15, scope: !4572)
!4585 = !DILocation(line: 1097, column: 8, scope: !4572)
!4586 = !DILocation(line: 1099, column: 9, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 1099, column: 9)
!4588 = !DILocation(line: 1099, column: 9, scope: !4572)
!4589 = !DILocation(line: 1100, column: 26, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4587, file: !2, line: 1099, column: 13)
!4591 = !DILocation(line: 1100, column: 30, scope: !4590)
!4592 = !DILocation(line: 1100, column: 9, scope: !4590)
!4593 = !DILocation(line: 1100, column: 14, scope: !4590)
!4594 = !DILocation(line: 1100, column: 24, scope: !4590)
!4595 = !DILocation(line: 1102, column: 9, scope: !4590)
!4596 = !DILocation(line: 1102, column: 13, scope: !4590)
!4597 = !DILocation(line: 1102, column: 18, scope: !4590)
!4598 = !DILocation(line: 1102, column: 25, scope: !4590)
!4599 = !DILocation(line: 1103, column: 9, scope: !4590)
!4600 = !DILocation(line: 1103, column: 13, scope: !4590)
!4601 = !DILocation(line: 1103, column: 18, scope: !4590)
!4602 = !DILocation(line: 1105, column: 16, scope: !4590)
!4603 = !DILocation(line: 1105, column: 9, scope: !4590)
!4604 = !DILocation(line: 1108, column: 31, scope: !4572)
!4605 = !DILocation(line: 1108, column: 10, scope: !4572)
!4606 = !DILocation(line: 1108, column: 8, scope: !4572)
!4607 = !DILocation(line: 1109, column: 9, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 1109, column: 9)
!4609 = !DILocation(line: 1109, column: 12, scope: !4608)
!4610 = !DILocation(line: 1109, column: 9, scope: !4572)
!4611 = !DILocation(line: 1110, column: 9, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !2, line: 1109, column: 21)
!4613 = !DILocation(line: 1113, column: 15, scope: !4572)
!4614 = !DILocation(line: 1113, column: 5, scope: !4572)
!4615 = !DILocation(line: 1113, column: 9, scope: !4572)
!4616 = !DILocation(line: 1113, column: 13, scope: !4572)
!4617 = !DILocation(line: 1114, column: 9, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4572, file: !2, line: 1114, column: 9)
!4619 = !DILocation(line: 1114, column: 13, scope: !4618)
!4620 = !DILocation(line: 1114, column: 17, scope: !4618)
!4621 = !DILocation(line: 1114, column: 9, scope: !4572)
!4622 = !DILocation(line: 1115, column: 9, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4618, file: !2, line: 1114, column: 26)
!4624 = !DILocation(line: 1118, column: 5, scope: !4572)
!4625 = !DILocation(line: 1118, column: 9, scope: !4572)
!4626 = !DILocation(line: 1118, column: 14, scope: !4572)
!4627 = !DILocation(line: 1120, column: 5, scope: !4572)
!4628 = !DILocation(line: 1120, column: 9, scope: !4572)
!4629 = !DILocation(line: 1120, column: 14, scope: !4572)
!4630 = !DILocation(line: 1120, column: 18, scope: !4572)
!4631 = !DILocation(line: 1122, column: 12, scope: !4572)
!4632 = !DILocation(line: 1122, column: 5, scope: !4572)
!4633 = !DILocation(line: 1123, column: 1, scope: !4572)
!4634 = distinct !DISubprogram(name: "ngx_http_charset_get_buffer", scope: !2, file: !2, line: 1127, type: !4635, scopeLine: 1129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!114, !98, !2770, !33}
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4643}
!4638 = !DILocalVariable(name: "pool", arg: 1, scope: !4634, file: !2, line: 1127, type: !98)
!4639 = !DILocalVariable(name: "ctx", arg: 2, scope: !4634, file: !2, line: 1127, type: !2770)
!4640 = !DILocalVariable(name: "size", arg: 3, scope: !4634, file: !2, line: 1128, type: !33)
!4641 = !DILocalVariable(name: "b", scope: !4634, file: !2, line: 1130, type: !119)
!4642 = !DILocalVariable(name: "cl", scope: !4634, file: !2, line: 1131, type: !114)
!4643 = !DILocalVariable(name: "ll", scope: !4634, file: !2, line: 1131, type: !931)
!4644 = !DILocation(line: 1127, column: 41, scope: !4634)
!4645 = !DILocation(line: 1127, column: 71, scope: !4634)
!4646 = !DILocation(line: 1128, column: 12, scope: !4634)
!4647 = !DILocation(line: 1130, column: 5, scope: !4634)
!4648 = !DILocation(line: 1130, column: 19, scope: !4634)
!4649 = !DILocation(line: 1131, column: 5, scope: !4634)
!4650 = !DILocation(line: 1131, column: 19, scope: !4634)
!4651 = !DILocation(line: 1131, column: 25, scope: !4634)
!4652 = !DILocation(line: 1133, column: 16, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4634, file: !2, line: 1133, column: 5)
!4654 = !DILocation(line: 1133, column: 21, scope: !4653)
!4655 = !DILocation(line: 1133, column: 13, scope: !4653)
!4656 = !DILocation(line: 1133, column: 40, scope: !4653)
!4657 = !DILocation(line: 1133, column: 45, scope: !4653)
!4658 = !DILocation(line: 1133, column: 38, scope: !4653)
!4659 = !DILocation(line: 1133, column: 10, scope: !4653)
!4660 = !DILocation(line: 1134, column: 10, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4653, file: !2, line: 1133, column: 5)
!4662 = !DILocation(line: 1133, column: 5, scope: !4653)
!4663 = !DILocation(line: 1137, column: 13, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4661, file: !2, line: 1136, column: 5)
!4665 = !DILocation(line: 1137, column: 17, scope: !4664)
!4666 = !DILocation(line: 1137, column: 11, scope: !4664)
!4667 = !DILocation(line: 1139, column: 23, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !2, line: 1139, column: 13)
!4669 = !DILocation(line: 1139, column: 26, scope: !4668)
!4670 = !DILocation(line: 1139, column: 32, scope: !4668)
!4671 = !DILocation(line: 1139, column: 35, scope: !4668)
!4672 = !{!2846, !2078, i64 32}
!4673 = !DILocation(line: 1139, column: 30, scope: !4668)
!4674 = !DILocation(line: 1139, column: 45, scope: !4668)
!4675 = !DILocation(line: 1139, column: 42, scope: !4668)
!4676 = !DILocation(line: 1139, column: 13, scope: !4664)
!4677 = !DILocation(line: 1140, column: 19, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4668, file: !2, line: 1139, column: 51)
!4679 = !DILocation(line: 1140, column: 23, scope: !4678)
!4680 = !DILocation(line: 1140, column: 14, scope: !4678)
!4681 = !DILocation(line: 1140, column: 17, scope: !4678)
!4682 = !DILocation(line: 1141, column: 13, scope: !4678)
!4683 = !DILocation(line: 1141, column: 17, scope: !4678)
!4684 = !DILocation(line: 1141, column: 22, scope: !4678)
!4685 = !DILocation(line: 1143, column: 22, scope: !4678)
!4686 = !DILocation(line: 1143, column: 25, scope: !4678)
!4687 = !DILocation(line: 1143, column: 13, scope: !4678)
!4688 = !DILocation(line: 1143, column: 16, scope: !4678)
!4689 = !DILocation(line: 1143, column: 20, scope: !4678)
!4690 = !DILocation(line: 1144, column: 13, scope: !4678)
!4691 = !DILocation(line: 1144, column: 16, scope: !4678)
!4692 = !DILocation(line: 1144, column: 26, scope: !4678)
!4693 = !DILocation(line: 1145, column: 13, scope: !4678)
!4694 = !DILocation(line: 1145, column: 16, scope: !4678)
!4695 = !DILocation(line: 1145, column: 23, scope: !4678)
!4696 = !DILocation(line: 1147, column: 20, scope: !4678)
!4697 = !DILocation(line: 1147, column: 13, scope: !4678)
!4698 = !DILocation(line: 1149, column: 5, scope: !4664)
!4699 = !DILocation(line: 1135, column: 16, scope: !4661)
!4700 = !DILocation(line: 1135, column: 20, scope: !4661)
!4701 = !DILocation(line: 1135, column: 13, scope: !4661)
!4702 = !DILocation(line: 1135, column: 31, scope: !4661)
!4703 = !DILocation(line: 1135, column: 35, scope: !4661)
!4704 = !DILocation(line: 1135, column: 29, scope: !4661)
!4705 = !DILocation(line: 1133, column: 5, scope: !4661)
!4706 = distinct !{!4706, !4662, !4707, !2195}
!4707 = !DILocation(line: 1149, column: 5, scope: !4653)
!4708 = !DILocation(line: 1151, column: 31, scope: !4634)
!4709 = !DILocation(line: 1151, column: 10, scope: !4634)
!4710 = !DILocation(line: 1151, column: 8, scope: !4634)
!4711 = !DILocation(line: 1152, column: 9, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4634, file: !2, line: 1152, column: 9)
!4713 = !DILocation(line: 1152, column: 12, scope: !4712)
!4714 = !DILocation(line: 1152, column: 9, scope: !4634)
!4715 = !DILocation(line: 1153, column: 9, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4712, file: !2, line: 1152, column: 21)
!4717 = !DILocation(line: 1156, column: 35, scope: !4634)
!4718 = !DILocation(line: 1156, column: 41, scope: !4634)
!4719 = !DILocation(line: 1156, column: 15, scope: !4634)
!4720 = !DILocation(line: 1156, column: 5, scope: !4634)
!4721 = !DILocation(line: 1156, column: 9, scope: !4634)
!4722 = !DILocation(line: 1156, column: 13, scope: !4634)
!4723 = !DILocation(line: 1157, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4634, file: !2, line: 1157, column: 9)
!4725 = !DILocation(line: 1157, column: 13, scope: !4724)
!4726 = !DILocation(line: 1157, column: 17, scope: !4724)
!4727 = !DILocation(line: 1157, column: 9, scope: !4634)
!4728 = !DILocation(line: 1158, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4724, file: !2, line: 1157, column: 26)
!4730 = !DILocation(line: 1161, column: 5, scope: !4634)
!4731 = !DILocation(line: 1161, column: 9, scope: !4634)
!4732 = !DILocation(line: 1161, column: 14, scope: !4634)
!4733 = !DILocation(line: 1163, column: 5, scope: !4634)
!4734 = !DILocation(line: 1163, column: 9, scope: !4634)
!4735 = !DILocation(line: 1163, column: 14, scope: !4634)
!4736 = !DILocation(line: 1163, column: 24, scope: !4634)
!4737 = !DILocation(line: 1164, column: 5, scope: !4634)
!4738 = !DILocation(line: 1164, column: 9, scope: !4634)
!4739 = !DILocation(line: 1164, column: 14, scope: !4634)
!4740 = !DILocation(line: 1164, column: 18, scope: !4634)
!4741 = !DILocation(line: 1166, column: 12, scope: !4634)
!4742 = !DILocation(line: 1166, column: 5, scope: !4634)
!4743 = !DILocation(line: 1167, column: 1, scope: !4634)
!4744 = !DISubprogram(name: "ngx_create_temp_buf", scope: !32, file: !32, line: 143, type: !4745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!119, !98, !33}
!4747 = !DISubprogram(name: "ngx_utf8_decode", scope: !72, file: !72, line: 194, type: !4748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!630, !35, !33}
!4750 = !DISubprogram(name: "ngx_sprintf", scope: !72, file: !72, line: 153, type: !4751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!36, !36, !45, null}
!4753 = distinct !DISubprogram(name: "ngx_array_init", scope: !90, file: !90, line: 32, type: !4754, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!41, !88, !98, !11, !33}
!4756 = !{!4757, !4758, !4759, !4760}
!4757 = !DILocalVariable(name: "array", arg: 1, scope: !4753, file: !90, line: 32, type: !88)
!4758 = !DILocalVariable(name: "pool", arg: 2, scope: !4753, file: !90, line: 32, type: !98)
!4759 = !DILocalVariable(name: "n", arg: 3, scope: !4753, file: !90, line: 32, type: !11)
!4760 = !DILocalVariable(name: "size", arg: 4, scope: !4753, file: !90, line: 32, type: !33)
!4761 = !DILocation(line: 32, column: 29, scope: !4753)
!4762 = !DILocation(line: 32, column: 48, scope: !4753)
!4763 = !DILocation(line: 32, column: 65, scope: !4753)
!4764 = !DILocation(line: 32, column: 75, scope: !4753)
!4765 = !DILocation(line: 39, column: 5, scope: !4753)
!4766 = !DILocation(line: 39, column: 12, scope: !4753)
!4767 = !DILocation(line: 39, column: 18, scope: !4753)
!4768 = !{!2112, !2101, i64 8}
!4769 = !DILocation(line: 40, column: 19, scope: !4753)
!4770 = !DILocation(line: 40, column: 5, scope: !4753)
!4771 = !DILocation(line: 40, column: 12, scope: !4753)
!4772 = !DILocation(line: 40, column: 17, scope: !4753)
!4773 = !{!2112, !2101, i64 16}
!4774 = !DILocation(line: 41, column: 21, scope: !4753)
!4775 = !DILocation(line: 41, column: 5, scope: !4753)
!4776 = !DILocation(line: 41, column: 12, scope: !4753)
!4777 = !DILocation(line: 41, column: 19, scope: !4753)
!4778 = !{!2112, !2101, i64 24}
!4779 = !DILocation(line: 42, column: 19, scope: !4753)
!4780 = !DILocation(line: 42, column: 5, scope: !4753)
!4781 = !DILocation(line: 42, column: 12, scope: !4753)
!4782 = !DILocation(line: 42, column: 17, scope: !4753)
!4783 = !{!2112, !2078, i64 32}
!4784 = !DILocation(line: 44, column: 30, scope: !4753)
!4785 = !DILocation(line: 44, column: 36, scope: !4753)
!4786 = !DILocation(line: 44, column: 40, scope: !4753)
!4787 = !DILocation(line: 44, column: 38, scope: !4753)
!4788 = !DILocation(line: 44, column: 19, scope: !4753)
!4789 = !DILocation(line: 44, column: 5, scope: !4753)
!4790 = !DILocation(line: 44, column: 12, scope: !4753)
!4791 = !DILocation(line: 44, column: 17, scope: !4753)
!4792 = !{!2112, !2078, i64 0}
!4793 = !DILocation(line: 45, column: 9, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4753, file: !90, line: 45, column: 9)
!4795 = !DILocation(line: 45, column: 16, scope: !4794)
!4796 = !DILocation(line: 45, column: 21, scope: !4794)
!4797 = !DILocation(line: 45, column: 9, scope: !4753)
!4798 = !DILocation(line: 46, column: 9, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !90, line: 45, column: 30)
!4800 = !DILocation(line: 49, column: 5, scope: !4753)
!4801 = !DILocation(line: 50, column: 1, scope: !4753)
!4802 = !DISubprogram(name: "ngx_palloc", scope: !101, file: !101, line: 79, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4803 = !DISubprogram(name: "ngx_http_merge_types", scope: !625, file: !625, line: 155, type: !4804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!58, !82, !4806, !3594, !4806, !3594, !880}
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!4807 = !DISubprogram(name: "ngx_array_push", scope: !90, file: !90, line: 27, type: !4808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!16, !88}
!4810 = distinct !DISubprogram(name: "ngx_http_set_charset_slot", scope: !2, file: !2, line: 1397, type: !80, scopeLine: 1398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819}
!4812 = !DILocalVariable(name: "cf", arg: 1, scope: !4810, file: !2, line: 1397, type: !82)
!4813 = !DILocalVariable(name: "cmd", arg: 2, scope: !4810, file: !2, line: 1397, type: !65)
!4814 = !DILocalVariable(name: "conf", arg: 3, scope: !4810, file: !2, line: 1397, type: !16)
!4815 = !DILocalVariable(name: "p", scope: !4810, file: !2, line: 1399, type: !58)
!4816 = !DILocalVariable(name: "cp", scope: !4810, file: !2, line: 1401, type: !40)
!4817 = !DILocalVariable(name: "value", scope: !4810, file: !2, line: 1402, type: !880)
!4818 = !DILocalVariable(name: "var", scope: !4810, file: !2, line: 1402, type: !71)
!4819 = !DILocalVariable(name: "mcf", scope: !4810, file: !2, line: 1403, type: !2066)
!4820 = !DILocation(line: 1397, column: 39, scope: !4810)
!4821 = !DILocation(line: 1397, column: 58, scope: !4810)
!4822 = !DILocation(line: 1397, column: 69, scope: !4810)
!4823 = !DILocation(line: 1399, column: 5, scope: !4810)
!4824 = !DILocation(line: 1399, column: 12, scope: !4810)
!4825 = !DILocation(line: 1399, column: 16, scope: !4810)
!4826 = !DILocation(line: 1401, column: 5, scope: !4810)
!4827 = !DILocation(line: 1401, column: 36, scope: !4810)
!4828 = !DILocation(line: 1402, column: 5, scope: !4810)
!4829 = !DILocation(line: 1402, column: 36, scope: !4810)
!4830 = !DILocation(line: 1402, column: 43, scope: !4810)
!4831 = !DILocation(line: 1403, column: 5, scope: !4810)
!4832 = !DILocation(line: 1403, column: 36, scope: !4810)
!4833 = !DILocation(line: 1405, column: 25, scope: !4810)
!4834 = !DILocation(line: 1405, column: 29, scope: !4810)
!4835 = !DILocation(line: 1405, column: 34, scope: !4810)
!4836 = !{!4837, !2101, i64 40}
!4837 = !{!"ngx_command_s", !2227, i64 0, !2101, i64 16, !2078, i64 24, !2101, i64 32, !2101, i64 40, !2078, i64 48}
!4838 = !DILocation(line: 1405, column: 27, scope: !4810)
!4839 = !DILocation(line: 1405, column: 8, scope: !4810)
!4840 = !DILocation(line: 1407, column: 10, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 1407, column: 9)
!4842 = !DILocation(line: 1407, column: 9, scope: !4841)
!4843 = !DILocation(line: 1407, column: 13, scope: !4841)
!4844 = !DILocation(line: 1407, column: 9, scope: !4810)
!4845 = !DILocation(line: 1408, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4841, file: !2, line: 1407, column: 32)
!4847 = !DILocation(line: 1411, column: 13, scope: !4810)
!4848 = !DILocation(line: 1411, column: 17, scope: !4810)
!4849 = !{!2100, !2078, i64 8}
!4850 = !DILocation(line: 1411, column: 23, scope: !4810)
!4851 = !DILocation(line: 1411, column: 11, scope: !4810)
!4852 = !DILocation(line: 1413, column: 9, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 1413, column: 9)
!4854 = !DILocation(line: 1413, column: 14, scope: !4853)
!4855 = !DILocation(line: 1413, column: 21, scope: !4853)
!4856 = !DILocation(line: 1414, column: 9, scope: !4853)
!4857 = !DILocation(line: 1414, column: 12, scope: !4853)
!4858 = !DILocation(line: 1414, column: 45, scope: !4853)
!4859 = !DILocation(line: 1413, column: 9, scope: !4810)
!4860 = !DILocation(line: 1416, column: 10, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4853, file: !2, line: 1415, column: 5)
!4862 = !DILocation(line: 1416, column: 13, scope: !4861)
!4863 = !DILocation(line: 1417, column: 9, scope: !4861)
!4864 = !DILocation(line: 1421, column: 9, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 1421, column: 9)
!4866 = !DILocation(line: 1421, column: 18, scope: !4865)
!4867 = !DILocation(line: 1421, column: 26, scope: !4865)
!4868 = !DILocation(line: 1421, column: 9, scope: !4810)
!4869 = !DILocation(line: 1422, column: 19, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 1421, column: 34)
!4871 = !DILocation(line: 1422, column: 28, scope: !4870)
!4872 = !DILocation(line: 1422, column: 32, scope: !4870)
!4873 = !DILocation(line: 1422, column: 13, scope: !4870)
!4874 = !DILocation(line: 1422, column: 17, scope: !4870)
!4875 = !DILocation(line: 1423, column: 20, scope: !4870)
!4876 = !DILocation(line: 1423, column: 29, scope: !4870)
!4877 = !DILocation(line: 1423, column: 34, scope: !4870)
!4878 = !DILocation(line: 1423, column: 13, scope: !4870)
!4879 = !DILocation(line: 1423, column: 18, scope: !4870)
!4880 = !DILocation(line: 1425, column: 43, scope: !4870)
!4881 = !DILocation(line: 1425, column: 15, scope: !4870)
!4882 = !DILocation(line: 1425, column: 10, scope: !4870)
!4883 = !DILocation(line: 1425, column: 13, scope: !4870)
!4884 = !DILocation(line: 1427, column: 14, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4870, file: !2, line: 1427, column: 13)
!4886 = !DILocation(line: 1427, column: 13, scope: !4885)
!4887 = !DILocation(line: 1427, column: 17, scope: !4885)
!4888 = !DILocation(line: 1427, column: 13, scope: !4870)
!4889 = !DILocation(line: 1428, column: 13, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4885, file: !2, line: 1427, column: 31)
!4891 = !DILocation(line: 1431, column: 10, scope: !4870)
!4892 = !DILocation(line: 1431, column: 13, scope: !4870)
!4893 = !DILocation(line: 1433, column: 9, scope: !4870)
!4894 = !DILocation(line: 1436, column: 11, scope: !4810)
!4895 = !DILocation(line: 1436, column: 9, scope: !4810)
!4896 = !DILocation(line: 1439, column: 33, scope: !4810)
!4897 = !DILocation(line: 1439, column: 38, scope: !4810)
!4898 = !DILocation(line: 1439, column: 49, scope: !4810)
!4899 = !DILocation(line: 1439, column: 11, scope: !4810)
!4900 = !DILocation(line: 1439, column: 6, scope: !4810)
!4901 = !DILocation(line: 1439, column: 9, scope: !4810)
!4902 = !DILocation(line: 1440, column: 10, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 1440, column: 9)
!4904 = !DILocation(line: 1440, column: 9, scope: !4903)
!4905 = !DILocation(line: 1440, column: 13, scope: !4903)
!4906 = !DILocation(line: 1440, column: 9, scope: !4810)
!4907 = !DILocation(line: 1441, column: 9, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4903, file: !2, line: 1440, column: 27)
!4909 = !DILocation(line: 1444, column: 5, scope: !4810)
!4910 = !DILocation(line: 1445, column: 1, scope: !4810)
!4911 = distinct !DISubprogram(name: "ngx_http_charset_map_block", scope: !2, file: !2, line: 1171, type: !80, scopeLine: 1172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4912)
!4912 = !{!4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929}
!4913 = !DILocalVariable(name: "cf", arg: 1, scope: !4911, file: !2, line: 1171, type: !82)
!4914 = !DILocalVariable(name: "cmd", arg: 2, scope: !4911, file: !2, line: 1171, type: !65)
!4915 = !DILocalVariable(name: "conf", arg: 3, scope: !4911, file: !2, line: 1171, type: !16)
!4916 = !DILocalVariable(name: "mcf", scope: !4911, file: !2, line: 1173, type: !2066)
!4917 = !DILocalVariable(name: "rv", scope: !4911, file: !2, line: 1175, type: !58)
!4918 = !DILocalVariable(name: "p", scope: !4911, file: !2, line: 1176, type: !36)
!4919 = !DILocalVariable(name: "dst2src", scope: !4911, file: !2, line: 1176, type: !36)
!4920 = !DILocalVariable(name: "pp", scope: !4911, file: !2, line: 1176, type: !35)
!4921 = !DILocalVariable(name: "src", scope: !4911, file: !2, line: 1177, type: !41)
!4922 = !DILocalVariable(name: "dst", scope: !4911, file: !2, line: 1177, type: !41)
!4923 = !DILocalVariable(name: "i", scope: !4911, file: !2, line: 1178, type: !11)
!4924 = !DILocalVariable(name: "n", scope: !4911, file: !2, line: 1178, type: !11)
!4925 = !DILocalVariable(name: "value", scope: !4911, file: !2, line: 1179, type: !880)
!4926 = !DILocalVariable(name: "pvcf", scope: !4911, file: !2, line: 1180, type: !83)
!4927 = !DILocalVariable(name: "charset", scope: !4911, file: !2, line: 1181, type: !2041)
!4928 = !DILocalVariable(name: "table", scope: !4911, file: !2, line: 1182, type: !2057)
!4929 = !DILocalVariable(name: "ctx", scope: !4911, file: !2, line: 1183, type: !4930)
!4930 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_charset_conf_ctx_t", file: !2, line: 85, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 81, size: 192, elements: !4932)
!4932 = !{!4933, !4934, !4935}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4931, file: !2, line: 82, baseType: !2057, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4931, file: !2, line: 83, baseType: !2041, size: 64, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !4931, file: !2, line: 84, baseType: !11, size: 64, offset: 128)
!4936 = !DILocation(line: 1171, column: 40, scope: !4911)
!4937 = !DILocation(line: 1171, column: 59, scope: !4911)
!4938 = !DILocation(line: 1171, column: 70, scope: !4911)
!4939 = !DILocation(line: 1173, column: 5, scope: !4911)
!4940 = !DILocation(line: 1173, column: 36, scope: !4911)
!4941 = !DILocation(line: 1173, column: 42, scope: !4911)
!4942 = !DILocation(line: 1175, column: 5, scope: !4911)
!4943 = !DILocation(line: 1175, column: 35, scope: !4911)
!4944 = !DILocation(line: 1176, column: 5, scope: !4911)
!4945 = !DILocation(line: 1176, column: 35, scope: !4911)
!4946 = !DILocation(line: 1176, column: 39, scope: !4911)
!4947 = !DILocation(line: 1176, column: 50, scope: !4911)
!4948 = !DILocation(line: 1177, column: 5, scope: !4911)
!4949 = !DILocation(line: 1177, column: 35, scope: !4911)
!4950 = !DILocation(line: 1177, column: 40, scope: !4911)
!4951 = !DILocation(line: 1178, column: 5, scope: !4911)
!4952 = !DILocation(line: 1178, column: 35, scope: !4911)
!4953 = !DILocation(line: 1178, column: 38, scope: !4911)
!4954 = !DILocation(line: 1179, column: 5, scope: !4911)
!4955 = !DILocation(line: 1179, column: 35, scope: !4911)
!4956 = !DILocation(line: 1180, column: 5, scope: !4911)
!4957 = !DILocation(line: 1180, column: 35, scope: !4911)
!4958 = !DILocation(line: 1181, column: 5, scope: !4911)
!4959 = !DILocation(line: 1181, column: 35, scope: !4911)
!4960 = !DILocation(line: 1182, column: 5, scope: !4911)
!4961 = !DILocation(line: 1182, column: 35, scope: !4911)
!4962 = !DILocation(line: 1183, column: 5, scope: !4911)
!4963 = !DILocation(line: 1183, column: 35, scope: !4911)
!4964 = !DILocation(line: 1185, column: 13, scope: !4911)
!4965 = !DILocation(line: 1185, column: 17, scope: !4911)
!4966 = !DILocation(line: 1185, column: 23, scope: !4911)
!4967 = !DILocation(line: 1185, column: 11, scope: !4911)
!4968 = !DILocation(line: 1187, column: 33, scope: !4911)
!4969 = !DILocation(line: 1187, column: 38, scope: !4911)
!4970 = !DILocation(line: 1187, column: 49, scope: !4911)
!4971 = !DILocation(line: 1187, column: 11, scope: !4911)
!4972 = !DILocation(line: 1187, column: 9, scope: !4911)
!4973 = !DILocation(line: 1188, column: 9, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1188, column: 9)
!4975 = !DILocation(line: 1188, column: 13, scope: !4974)
!4976 = !DILocation(line: 1188, column: 9, scope: !4911)
!4977 = !DILocation(line: 1189, column: 9, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4974, file: !2, line: 1188, column: 27)
!4979 = !DILocation(line: 1192, column: 33, scope: !4911)
!4980 = !DILocation(line: 1192, column: 38, scope: !4911)
!4981 = !DILocation(line: 1192, column: 49, scope: !4911)
!4982 = !DILocation(line: 1192, column: 11, scope: !4911)
!4983 = !DILocation(line: 1192, column: 9, scope: !4911)
!4984 = !DILocation(line: 1193, column: 9, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1193, column: 9)
!4986 = !DILocation(line: 1193, column: 13, scope: !4985)
!4987 = !DILocation(line: 1193, column: 9, scope: !4911)
!4988 = !DILocation(line: 1194, column: 9, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4985, file: !2, line: 1193, column: 27)
!4990 = !DILocation(line: 1197, column: 9, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1197, column: 9)
!4992 = !DILocation(line: 1197, column: 16, scope: !4991)
!4993 = !DILocation(line: 1197, column: 13, scope: !4991)
!4994 = !DILocation(line: 1197, column: 9, scope: !4911)
!4995 = !DILocation(line: 1198, column: 43, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 1197, column: 21)
!4997 = !DILocation(line: 1200, column: 50, scope: !4996)
!4998 = !DILocation(line: 1200, column: 61, scope: !4996)
!4999 = !DILocation(line: 1198, column: 9, scope: !4996)
!5000 = !DILocation(line: 1201, column: 9, scope: !4996)
!5001 = !DILocation(line: 1204, column: 13, scope: !4911)
!5002 = !DILocation(line: 1204, column: 18, scope: !4911)
!5003 = !DILocation(line: 1204, column: 25, scope: !4911)
!5004 = !DILocation(line: 1204, column: 11, scope: !4911)
!5005 = !DILocation(line: 1205, column: 12, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1205, column: 5)
!5007 = !DILocation(line: 1205, column: 10, scope: !5006)
!5008 = !DILocation(line: 1205, column: 17, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 1205, column: 5)
!5010 = !DILocation(line: 1205, column: 21, scope: !5009)
!5011 = !DILocation(line: 1205, column: 26, scope: !5009)
!5012 = !DILocation(line: 1205, column: 33, scope: !5009)
!5013 = !DILocation(line: 1205, column: 19, scope: !5009)
!5014 = !DILocation(line: 1205, column: 5, scope: !5006)
!5015 = !DILocation(line: 1206, column: 14, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 1206, column: 13)
!5017 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 1205, column: 45)
!5018 = !DILocation(line: 1206, column: 21, scope: !5016)
!5019 = !DILocation(line: 1206, column: 28, scope: !5016)
!5020 = !DILocation(line: 1206, column: 18, scope: !5016)
!5021 = !DILocation(line: 1206, column: 32, scope: !5016)
!5022 = !DILocation(line: 1206, column: 35, scope: !5016)
!5023 = !DILocation(line: 1206, column: 42, scope: !5016)
!5024 = !DILocation(line: 1206, column: 49, scope: !5016)
!5025 = !DILocation(line: 1206, column: 39, scope: !5016)
!5026 = !DILocation(line: 1207, column: 14, scope: !5016)
!5027 = !DILocation(line: 1207, column: 18, scope: !5016)
!5028 = !DILocation(line: 1207, column: 25, scope: !5016)
!5029 = !DILocation(line: 1207, column: 32, scope: !5016)
!5030 = !DILocation(line: 1207, column: 22, scope: !5016)
!5031 = !DILocation(line: 1207, column: 36, scope: !5016)
!5032 = !DILocation(line: 1207, column: 39, scope: !5016)
!5033 = !DILocation(line: 1207, column: 46, scope: !5016)
!5034 = !DILocation(line: 1207, column: 53, scope: !5016)
!5035 = !DILocation(line: 1207, column: 43, scope: !5016)
!5036 = !DILocation(line: 1206, column: 13, scope: !5017)
!5037 = !DILocation(line: 1209, column: 47, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5016, file: !2, line: 1208, column: 9)
!5039 = !DILocation(line: 1211, column: 54, scope: !5038)
!5040 = !DILocation(line: 1211, column: 65, scope: !5038)
!5041 = !DILocation(line: 1209, column: 13, scope: !5038)
!5042 = !DILocation(line: 1212, column: 13, scope: !5038)
!5043 = !DILocation(line: 1214, column: 5, scope: !5017)
!5044 = !DILocation(line: 1205, column: 41, scope: !5009)
!5045 = !DILocation(line: 1205, column: 5, scope: !5009)
!5046 = distinct !{!5046, !5014, !5047, !2195}
!5047 = !DILocation(line: 1214, column: 5, scope: !5006)
!5048 = !DILocation(line: 1216, column: 29, scope: !4911)
!5049 = !DILocation(line: 1216, column: 34, scope: !4911)
!5050 = !DILocation(line: 1216, column: 13, scope: !4911)
!5051 = !DILocation(line: 1216, column: 11, scope: !4911)
!5052 = !DILocation(line: 1217, column: 9, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1217, column: 9)
!5054 = !DILocation(line: 1217, column: 15, scope: !5053)
!5055 = !DILocation(line: 1217, column: 9, scope: !4911)
!5056 = !DILocation(line: 1218, column: 9, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5053, file: !2, line: 1217, column: 24)
!5058 = !DILocation(line: 1221, column: 18, scope: !4911)
!5059 = !DILocation(line: 1221, column: 5, scope: !4911)
!5060 = !DILocation(line: 1221, column: 12, scope: !4911)
!5061 = !DILocation(line: 1221, column: 16, scope: !4911)
!5062 = !DILocation(line: 1222, column: 18, scope: !4911)
!5063 = !DILocation(line: 1222, column: 5, scope: !4911)
!5064 = !DILocation(line: 1222, column: 12, scope: !4911)
!5065 = !DILocation(line: 1222, column: 16, scope: !4911)
!5066 = !DILocation(line: 1224, column: 24, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1224, column: 9)
!5068 = !DILocation(line: 1224, column: 33, scope: !5067)
!5069 = !DILocation(line: 1224, column: 9, scope: !5067)
!5070 = !DILocation(line: 1224, column: 59, scope: !5067)
!5071 = !DILocation(line: 1224, column: 9, scope: !4911)
!5072 = !DILocation(line: 1225, column: 38, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5067, file: !2, line: 1224, column: 65)
!5074 = !DILocation(line: 1225, column: 42, scope: !5073)
!5075 = !DILocation(line: 1225, column: 26, scope: !5073)
!5076 = !DILocation(line: 1225, column: 9, scope: !5073)
!5077 = !DILocation(line: 1225, column: 16, scope: !5073)
!5078 = !DILocation(line: 1225, column: 24, scope: !5073)
!5079 = !DILocation(line: 1226, column: 13, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5073, file: !2, line: 1226, column: 13)
!5081 = !DILocation(line: 1226, column: 20, scope: !5080)
!5082 = !DILocation(line: 1226, column: 28, scope: !5080)
!5083 = !DILocation(line: 1226, column: 13, scope: !5073)
!5084 = !DILocation(line: 1227, column: 13, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5080, file: !2, line: 1226, column: 37)
!5086 = !DILocation(line: 1230, column: 38, scope: !5073)
!5087 = !DILocation(line: 1230, column: 42, scope: !5073)
!5088 = !DILocation(line: 1230, column: 26, scope: !5073)
!5089 = !DILocation(line: 1230, column: 9, scope: !5073)
!5090 = !DILocation(line: 1230, column: 16, scope: !5073)
!5091 = !DILocation(line: 1230, column: 24, scope: !5073)
!5092 = !DILocation(line: 1231, column: 13, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5073, file: !2, line: 1231, column: 13)
!5094 = !DILocation(line: 1231, column: 20, scope: !5093)
!5095 = !DILocation(line: 1231, column: 28, scope: !5093)
!5096 = !DILocation(line: 1231, column: 13, scope: !5073)
!5097 = !DILocation(line: 1232, column: 13, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5093, file: !2, line: 1231, column: 37)
!5099 = !DILocation(line: 1235, column: 31, scope: !5073)
!5100 = !DILocation(line: 1235, column: 35, scope: !5073)
!5101 = !DILocation(line: 1235, column: 19, scope: !5073)
!5102 = !DILocation(line: 1235, column: 17, scope: !5073)
!5103 = !DILocation(line: 1236, column: 13, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5073, file: !2, line: 1236, column: 13)
!5105 = !DILocation(line: 1236, column: 21, scope: !5104)
!5106 = !DILocation(line: 1236, column: 13, scope: !5073)
!5107 = !DILocation(line: 1237, column: 13, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 1236, column: 30)
!5109 = !DILocation(line: 1240, column: 27, scope: !5073)
!5110 = !DILocation(line: 1240, column: 34, scope: !5073)
!5111 = !DILocation(line: 1240, column: 12, scope: !5073)
!5112 = !DILocation(line: 1241, column: 17, scope: !5073)
!5113 = !DILocation(line: 1241, column: 9, scope: !5073)
!5114 = !DILocation(line: 1241, column: 15, scope: !5073)
!5115 = !DILocation(line: 1243, column: 16, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5073, file: !2, line: 1243, column: 9)
!5117 = !DILocation(line: 1243, column: 14, scope: !5116)
!5118 = !DILocation(line: 1243, column: 21, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5116, file: !2, line: 1243, column: 9)
!5120 = !DILocation(line: 1243, column: 23, scope: !5119)
!5121 = !DILocation(line: 1243, column: 9, scope: !5116)
!5122 = !DILocation(line: 1244, column: 18, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5119, file: !2, line: 1243, column: 35)
!5124 = !DILocation(line: 1244, column: 25, scope: !5123)
!5125 = !DILocation(line: 1244, column: 33, scope: !5123)
!5126 = !DILocation(line: 1244, column: 35, scope: !5123)
!5127 = !DILocation(line: 1244, column: 15, scope: !5123)
!5128 = !DILocation(line: 1245, column: 13, scope: !5123)
!5129 = !DILocation(line: 1245, column: 18, scope: !5123)
!5130 = !DILocation(line: 1246, column: 29, scope: !5123)
!5131 = !DILocation(line: 1246, column: 20, scope: !5123)
!5132 = !DILocation(line: 1246, column: 13, scope: !5123)
!5133 = !DILocation(line: 1246, column: 18, scope: !5123)
!5134 = !DILocation(line: 1247, column: 35, scope: !5123)
!5135 = !DILocation(line: 1247, column: 26, scope: !5123)
!5136 = !DILocation(line: 1247, column: 13, scope: !5123)
!5137 = !DILocation(line: 1247, column: 21, scope: !5123)
!5138 = !DILocation(line: 1247, column: 24, scope: !5123)
!5139 = !DILocation(line: 1248, column: 9, scope: !5123)
!5140 = !DILocation(line: 1243, column: 31, scope: !5119)
!5141 = !DILocation(line: 1243, column: 9, scope: !5119)
!5142 = distinct !{!5142, !5121, !5143, !2195}
!5143 = !DILocation(line: 1248, column: 9, scope: !5116)
!5144 = !DILocation(line: 1250, column: 9, scope: !5073)
!5145 = !DILocation(line: 1250, column: 26, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 1250, column: 9)
!5147 = distinct !DILexicalBlock(scope: !5073, file: !2, line: 1250, column: 9)
!5148 = !DILocation(line: 1250, column: 28, scope: !5146)
!5149 = !DILocation(line: 1250, column: 9, scope: !5147)
!5150 = !DILocation(line: 1251, column: 18, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5146, file: !2, line: 1250, column: 40)
!5152 = !DILocation(line: 1251, column: 25, scope: !5151)
!5153 = !DILocation(line: 1251, column: 33, scope: !5151)
!5154 = !DILocation(line: 1251, column: 35, scope: !5151)
!5155 = !DILocation(line: 1251, column: 15, scope: !5151)
!5156 = !DILocation(line: 1252, column: 13, scope: !5151)
!5157 = !DILocation(line: 1252, column: 18, scope: !5151)
!5158 = !DILocation(line: 1253, column: 13, scope: !5151)
!5159 = !DILocation(line: 1253, column: 18, scope: !5151)
!5160 = !DILocation(line: 1254, column: 9, scope: !5151)
!5161 = !DILocation(line: 1250, column: 36, scope: !5146)
!5162 = !DILocation(line: 1250, column: 9, scope: !5146)
!5163 = distinct !{!5163, !5149, !5164, !2195}
!5164 = !DILocation(line: 1254, column: 9, scope: !5147)
!5165 = !DILocation(line: 1256, column: 5, scope: !5073)
!5166 = !DILocation(line: 1257, column: 37, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5067, file: !2, line: 1256, column: 12)
!5168 = !DILocation(line: 1257, column: 41, scope: !5167)
!5169 = !DILocation(line: 1257, column: 26, scope: !5167)
!5170 = !DILocation(line: 1257, column: 9, scope: !5167)
!5171 = !DILocation(line: 1257, column: 16, scope: !5167)
!5172 = !DILocation(line: 1257, column: 24, scope: !5167)
!5173 = !DILocation(line: 1258, column: 13, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 1258, column: 13)
!5175 = !DILocation(line: 1258, column: 20, scope: !5174)
!5176 = !DILocation(line: 1258, column: 28, scope: !5174)
!5177 = !DILocation(line: 1258, column: 13, scope: !5167)
!5178 = !DILocation(line: 1259, column: 13, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 1258, column: 37)
!5180 = !DILocation(line: 1262, column: 37, scope: !5167)
!5181 = !DILocation(line: 1262, column: 41, scope: !5167)
!5182 = !DILocation(line: 1262, column: 26, scope: !5167)
!5183 = !DILocation(line: 1262, column: 9, scope: !5167)
!5184 = !DILocation(line: 1262, column: 16, scope: !5167)
!5185 = !DILocation(line: 1262, column: 24, scope: !5167)
!5186 = !DILocation(line: 1263, column: 13, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 1263, column: 13)
!5188 = !DILocation(line: 1263, column: 20, scope: !5187)
!5189 = !DILocation(line: 1263, column: 28, scope: !5187)
!5190 = !DILocation(line: 1263, column: 13, scope: !5167)
!5191 = !DILocation(line: 1264, column: 13, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5187, file: !2, line: 1263, column: 37)
!5193 = !DILocation(line: 1267, column: 16, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 1267, column: 9)
!5195 = !DILocation(line: 1267, column: 14, scope: !5194)
!5196 = !DILocation(line: 1267, column: 21, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5194, file: !2, line: 1267, column: 9)
!5198 = !DILocation(line: 1267, column: 23, scope: !5197)
!5199 = !DILocation(line: 1267, column: 9, scope: !5194)
!5200 = !DILocation(line: 1268, column: 42, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5197, file: !2, line: 1267, column: 35)
!5202 = !DILocation(line: 1268, column: 33, scope: !5201)
!5203 = !DILocation(line: 1268, column: 13, scope: !5201)
!5204 = !DILocation(line: 1268, column: 20, scope: !5201)
!5205 = !DILocation(line: 1268, column: 28, scope: !5201)
!5206 = !DILocation(line: 1268, column: 31, scope: !5201)
!5207 = !DILocation(line: 1269, column: 42, scope: !5201)
!5208 = !DILocation(line: 1269, column: 33, scope: !5201)
!5209 = !DILocation(line: 1269, column: 13, scope: !5201)
!5210 = !DILocation(line: 1269, column: 20, scope: !5201)
!5211 = !DILocation(line: 1269, column: 28, scope: !5201)
!5212 = !DILocation(line: 1269, column: 31, scope: !5201)
!5213 = !DILocation(line: 1270, column: 9, scope: !5201)
!5214 = !DILocation(line: 1267, column: 31, scope: !5197)
!5215 = !DILocation(line: 1267, column: 9, scope: !5197)
!5216 = distinct !{!5216, !5199, !5217, !2195}
!5217 = !DILocation(line: 1270, column: 9, scope: !5194)
!5218 = !DILocation(line: 1272, column: 9, scope: !5167)
!5219 = !DILocation(line: 1272, column: 26, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !2, line: 1272, column: 9)
!5221 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 1272, column: 9)
!5222 = !DILocation(line: 1272, column: 28, scope: !5220)
!5223 = !DILocation(line: 1272, column: 9, scope: !5221)
!5224 = !DILocation(line: 1273, column: 13, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5220, file: !2, line: 1272, column: 40)
!5226 = !DILocation(line: 1273, column: 20, scope: !5225)
!5227 = !DILocation(line: 1273, column: 28, scope: !5225)
!5228 = !DILocation(line: 1273, column: 31, scope: !5225)
!5229 = !DILocation(line: 1274, column: 13, scope: !5225)
!5230 = !DILocation(line: 1274, column: 20, scope: !5225)
!5231 = !DILocation(line: 1274, column: 28, scope: !5225)
!5232 = !DILocation(line: 1274, column: 31, scope: !5225)
!5233 = !DILocation(line: 1275, column: 9, scope: !5225)
!5234 = !DILocation(line: 1272, column: 36, scope: !5220)
!5235 = !DILocation(line: 1272, column: 9, scope: !5220)
!5236 = distinct !{!5236, !5223, !5237, !2195}
!5237 = !DILocation(line: 1275, column: 9, scope: !5221)
!5238 = !DILocation(line: 1278, column: 15, scope: !4911)
!5239 = !DILocation(line: 1278, column: 20, scope: !4911)
!5240 = !DILocation(line: 1278, column: 29, scope: !4911)
!5241 = !DILocation(line: 1278, column: 13, scope: !4911)
!5242 = !DILocation(line: 1280, column: 17, scope: !4911)
!5243 = !DILocation(line: 1280, column: 9, scope: !4911)
!5244 = !DILocation(line: 1280, column: 15, scope: !4911)
!5245 = !{!5246, !2078, i64 0}
!5246 = !{!"", !2078, i64 0, !2078, i64 8, !2101, i64 16}
!5247 = !DILocation(line: 1281, column: 20, scope: !4911)
!5248 = !DILocation(line: 1281, column: 28, scope: !4911)
!5249 = !DILocation(line: 1281, column: 9, scope: !4911)
!5250 = !DILocation(line: 1281, column: 17, scope: !4911)
!5251 = !{!5246, !2078, i64 8}
!5252 = !DILocation(line: 1282, column: 9, scope: !4911)
!5253 = !DILocation(line: 1282, column: 20, scope: !4911)
!5254 = !{!5246, !2101, i64 16}
!5255 = !DILocation(line: 1284, column: 13, scope: !4911)
!5256 = !DILocation(line: 1284, column: 12, scope: !4911)
!5257 = !{i64 0, i64 8, !2077, i64 8, i64 8, !2077, i64 16, i64 8, !2077, i64 24, i64 8, !2077, i64 32, i64 8, !2077, i64 40, i64 8, !2077, i64 48, i64 8, !2077, i64 56, i64 8, !2077, i64 64, i64 8, !2125, i64 72, i64 8, !2125, i64 80, i64 8, !2077, i64 88, i64 8, !2077}
!5258 = !DILocation(line: 1285, column: 5, scope: !4911)
!5259 = !DILocation(line: 1285, column: 9, scope: !4911)
!5260 = !DILocation(line: 1285, column: 13, scope: !4911)
!5261 = !DILocation(line: 1286, column: 5, scope: !4911)
!5262 = !DILocation(line: 1286, column: 9, scope: !4911)
!5263 = !DILocation(line: 1286, column: 17, scope: !4911)
!5264 = !{!2100, !2078, i64 80}
!5265 = !DILocation(line: 1287, column: 24, scope: !4911)
!5266 = !DILocation(line: 1287, column: 5, scope: !4911)
!5267 = !DILocation(line: 1287, column: 9, scope: !4911)
!5268 = !DILocation(line: 1287, column: 22, scope: !4911)
!5269 = !{!2100, !2078, i64 88}
!5270 = !DILocation(line: 1289, column: 25, scope: !4911)
!5271 = !DILocation(line: 1289, column: 10, scope: !4911)
!5272 = !DILocation(line: 1289, column: 8, scope: !4911)
!5273 = !DILocation(line: 1291, column: 6, scope: !4911)
!5274 = !DILocation(line: 1291, column: 11, scope: !4911)
!5275 = !DILocation(line: 1293, column: 13, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 1293, column: 9)
!5277 = !DILocation(line: 1293, column: 9, scope: !5276)
!5278 = !DILocation(line: 1293, column: 9, scope: !4911)
!5279 = !DILocation(line: 1294, column: 17, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5276, file: !2, line: 1293, column: 25)
!5281 = !DILocation(line: 1294, column: 26, scope: !5280)
!5282 = !DILocation(line: 1294, column: 13, scope: !5280)
!5283 = !DILocation(line: 1294, column: 11, scope: !5280)
!5284 = !DILocation(line: 1295, column: 36, scope: !5280)
!5285 = !DILocation(line: 1295, column: 13, scope: !5280)
!5286 = !DILocation(line: 1295, column: 22, scope: !5280)
!5287 = !DILocation(line: 1295, column: 29, scope: !5280)
!5288 = !DILocation(line: 1297, column: 15, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5280, file: !2, line: 1297, column: 13)
!5290 = !DILocation(line: 1297, column: 17, scope: !5289)
!5291 = !DILocation(line: 1297, column: 29, scope: !5289)
!5292 = !DILocation(line: 1297, column: 23, scope: !5289)
!5293 = !DILocation(line: 1297, column: 41, scope: !5289)
!5294 = !DILocation(line: 1297, column: 46, scope: !5289)
!5295 = !DILocation(line: 1297, column: 13, scope: !5280)
!5296 = !DILocation(line: 1298, column: 17, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 1297, column: 51)
!5298 = !DILocation(line: 1298, column: 26, scope: !5297)
!5299 = !DILocation(line: 1298, column: 32, scope: !5297)
!5300 = !DILocation(line: 1299, column: 9, scope: !5297)
!5301 = !DILocation(line: 1300, column: 5, scope: !5280)
!5302 = !DILocation(line: 1302, column: 12, scope: !4911)
!5303 = !DILocation(line: 1302, column: 5, scope: !4911)
!5304 = !DILocation(line: 1303, column: 1, scope: !4911)
!5305 = !DISubprogram(name: "strcmp", scope: !5306, file: !5306, line: 156, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5306 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!139, !45, !45}
!5309 = !DISubprogram(name: "ngx_http_get_variable_index", scope: !1601, file: !1601, line: 51, type: !5310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!41, !82, !880}
!5312 = distinct !DISubprogram(name: "ngx_http_add_charset", scope: !2, file: !2, line: 1449, type: !5313, scopeLine: 1450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5315)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!41, !88, !880}
!5315 = !{!5316, !5317, !5318, !5319}
!5316 = !DILocalVariable(name: "charsets", arg: 1, scope: !5312, file: !2, line: 1449, type: !88)
!5317 = !DILocalVariable(name: "name", arg: 2, scope: !5312, file: !2, line: 1449, type: !880)
!5318 = !DILocalVariable(name: "i", scope: !5312, file: !2, line: 1451, type: !11)
!5319 = !DILocalVariable(name: "c", scope: !5312, file: !2, line: 1452, type: !2041)
!5320 = !DILocation(line: 1449, column: 35, scope: !5312)
!5321 = !DILocation(line: 1449, column: 56, scope: !5312)
!5322 = !DILocation(line: 1451, column: 5, scope: !5312)
!5323 = !DILocation(line: 1451, column: 26, scope: !5312)
!5324 = !DILocation(line: 1452, column: 5, scope: !5312)
!5325 = !DILocation(line: 1452, column: 26, scope: !5312)
!5326 = !DILocation(line: 1454, column: 9, scope: !5312)
!5327 = !DILocation(line: 1454, column: 19, scope: !5312)
!5328 = !DILocation(line: 1454, column: 7, scope: !5312)
!5329 = !DILocation(line: 1455, column: 12, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5312, file: !2, line: 1455, column: 5)
!5331 = !DILocation(line: 1455, column: 10, scope: !5330)
!5332 = !DILocation(line: 1455, column: 17, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5330, file: !2, line: 1455, column: 5)
!5334 = !DILocation(line: 1455, column: 21, scope: !5333)
!5335 = !DILocation(line: 1455, column: 31, scope: !5333)
!5336 = !DILocation(line: 1455, column: 19, scope: !5333)
!5337 = !DILocation(line: 1455, column: 5, scope: !5330)
!5338 = !DILocation(line: 1456, column: 13, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 1456, column: 13)
!5340 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 1455, column: 43)
!5341 = !DILocation(line: 1456, column: 19, scope: !5339)
!5342 = !DILocation(line: 1456, column: 26, scope: !5339)
!5343 = !DILocation(line: 1456, column: 28, scope: !5339)
!5344 = !DILocation(line: 1456, column: 31, scope: !5339)
!5345 = !DILocation(line: 1456, column: 36, scope: !5339)
!5346 = !DILocation(line: 1456, column: 23, scope: !5339)
!5347 = !DILocation(line: 1456, column: 13, scope: !5340)
!5348 = !DILocation(line: 1457, column: 13, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5339, file: !2, line: 1456, column: 41)
!5350 = !DILocation(line: 1460, column: 28, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5340, file: !2, line: 1460, column: 13)
!5352 = !DILocation(line: 1460, column: 34, scope: !5351)
!5353 = !DILocation(line: 1460, column: 40, scope: !5351)
!5354 = !DILocation(line: 1460, column: 42, scope: !5351)
!5355 = !DILocation(line: 1460, column: 45, scope: !5351)
!5356 = !DILocation(line: 1460, column: 50, scope: !5351)
!5357 = !DILocation(line: 1460, column: 13, scope: !5351)
!5358 = !DILocation(line: 1460, column: 56, scope: !5351)
!5359 = !DILocation(line: 1460, column: 13, scope: !5340)
!5360 = !DILocation(line: 1461, column: 13, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 1460, column: 62)
!5362 = !DILocation(line: 1463, column: 5, scope: !5340)
!5363 = !DILocation(line: 1455, column: 39, scope: !5333)
!5364 = !DILocation(line: 1455, column: 5, scope: !5333)
!5365 = distinct !{!5365, !5337, !5366, !2195}
!5366 = !DILocation(line: 1463, column: 5, scope: !5330)
!5367 = !DILocation(line: 1465, column: 9, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5312, file: !2, line: 1465, column: 9)
!5369 = !DILocation(line: 1465, column: 13, scope: !5368)
!5370 = !DILocation(line: 1465, column: 23, scope: !5368)
!5371 = !DILocation(line: 1465, column: 11, scope: !5368)
!5372 = !DILocation(line: 1465, column: 9, scope: !5312)
!5373 = !DILocation(line: 1466, column: 16, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5368, file: !2, line: 1465, column: 30)
!5375 = !DILocation(line: 1466, column: 9, scope: !5374)
!5376 = !DILocation(line: 1469, column: 24, scope: !5312)
!5377 = !DILocation(line: 1469, column: 9, scope: !5312)
!5378 = !DILocation(line: 1469, column: 7, scope: !5312)
!5379 = !DILocation(line: 1470, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5312, file: !2, line: 1470, column: 9)
!5381 = !DILocation(line: 1470, column: 11, scope: !5380)
!5382 = !DILocation(line: 1470, column: 9, scope: !5312)
!5383 = !DILocation(line: 1471, column: 9, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !2, line: 1470, column: 20)
!5385 = !DILocation(line: 1474, column: 5, scope: !5312)
!5386 = !DILocation(line: 1474, column: 8, scope: !5312)
!5387 = !DILocation(line: 1474, column: 15, scope: !5312)
!5388 = !DILocation(line: 1475, column: 5, scope: !5312)
!5389 = !DILocation(line: 1475, column: 8, scope: !5312)
!5390 = !DILocation(line: 1475, column: 16, scope: !5312)
!5391 = !DILocation(line: 1475, column: 15, scope: !5312)
!5392 = !DILocation(line: 1476, column: 5, scope: !5312)
!5393 = !DILocation(line: 1476, column: 8, scope: !5312)
!5394 = !DILocation(line: 1476, column: 15, scope: !5312)
!5395 = !DILocation(line: 1478, column: 24, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5312, file: !2, line: 1478, column: 9)
!5397 = !DILocation(line: 1478, column: 30, scope: !5396)
!5398 = !DILocation(line: 1478, column: 9, scope: !5396)
!5399 = !DILocation(line: 1478, column: 56, scope: !5396)
!5400 = !DILocation(line: 1478, column: 9, scope: !5312)
!5401 = !DILocation(line: 1479, column: 9, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5396, file: !2, line: 1478, column: 62)
!5403 = !DILocation(line: 1479, column: 12, scope: !5402)
!5404 = !DILocation(line: 1479, column: 17, scope: !5402)
!5405 = !DILocation(line: 1481, column: 5, scope: !5402)
!5406 = !DILocation(line: 1482, column: 9, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5396, file: !2, line: 1481, column: 12)
!5408 = !DILocation(line: 1482, column: 12, scope: !5407)
!5409 = !DILocation(line: 1482, column: 17, scope: !5407)
!5410 = !DILocation(line: 1485, column: 12, scope: !5312)
!5411 = !DILocation(line: 1485, column: 5, scope: !5312)
!5412 = !DILocation(line: 1486, column: 1, scope: !5312)
!5413 = !DISubprogram(name: "ngx_strcasecmp", scope: !72, file: !72, line: 161, type: !5414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!41, !36, !36}
!5416 = !DISubprogram(name: "ngx_conf_log_error", scope: !68, file: !68, line: 276, type: !5417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{null, !11, !82, !2563, !45, null}
!5419 = distinct !DISubprogram(name: "ngx_http_charset_map", scope: !2, file: !2, line: 1307, type: !80, scopeLine: 1308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5420)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433}
!5421 = !DILocalVariable(name: "cf", arg: 1, scope: !5419, file: !2, line: 1307, type: !82)
!5422 = !DILocalVariable(name: "dummy", arg: 2, scope: !5419, file: !2, line: 1307, type: !65)
!5423 = !DILocalVariable(name: "conf", arg: 3, scope: !5419, file: !2, line: 1307, type: !16)
!5424 = !DILocalVariable(name: "p", scope: !5419, file: !2, line: 1309, type: !36)
!5425 = !DILocalVariable(name: "dst2src", scope: !5419, file: !2, line: 1309, type: !36)
!5426 = !DILocalVariable(name: "pp", scope: !5419, file: !2, line: 1309, type: !35)
!5427 = !DILocalVariable(name: "n", scope: !5419, file: !2, line: 1310, type: !630)
!5428 = !DILocalVariable(name: "src", scope: !5419, file: !2, line: 1311, type: !41)
!5429 = !DILocalVariable(name: "dst", scope: !5419, file: !2, line: 1311, type: !41)
!5430 = !DILocalVariable(name: "value", scope: !5419, file: !2, line: 1312, type: !880)
!5431 = !DILocalVariable(name: "i", scope: !5419, file: !2, line: 1313, type: !11)
!5432 = !DILocalVariable(name: "table", scope: !5419, file: !2, line: 1314, type: !2057)
!5433 = !DILocalVariable(name: "ctx", scope: !5419, file: !2, line: 1315, type: !5434)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!5435 = !DILocation(line: 1307, column: 34, scope: !5419)
!5436 = !DILocation(line: 1307, column: 53, scope: !5419)
!5437 = !DILocation(line: 1307, column: 66, scope: !5419)
!5438 = !DILocation(line: 1309, column: 5, scope: !5419)
!5439 = !DILocation(line: 1309, column: 35, scope: !5419)
!5440 = !DILocation(line: 1309, column: 39, scope: !5419)
!5441 = !DILocation(line: 1309, column: 50, scope: !5419)
!5442 = !DILocation(line: 1310, column: 5, scope: !5419)
!5443 = !DILocation(line: 1310, column: 35, scope: !5419)
!5444 = !DILocation(line: 1311, column: 5, scope: !5419)
!5445 = !DILocation(line: 1311, column: 35, scope: !5419)
!5446 = !DILocation(line: 1311, column: 40, scope: !5419)
!5447 = !DILocation(line: 1312, column: 5, scope: !5419)
!5448 = !DILocation(line: 1312, column: 35, scope: !5419)
!5449 = !DILocation(line: 1313, column: 5, scope: !5419)
!5450 = !DILocation(line: 1313, column: 35, scope: !5419)
!5451 = !DILocation(line: 1314, column: 5, scope: !5419)
!5452 = !DILocation(line: 1314, column: 35, scope: !5419)
!5453 = !DILocation(line: 1315, column: 5, scope: !5419)
!5454 = !DILocation(line: 1315, column: 35, scope: !5419)
!5455 = !DILocation(line: 1317, column: 9, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 1317, column: 9)
!5457 = !DILocation(line: 1317, column: 13, scope: !5456)
!5458 = !DILocation(line: 1317, column: 19, scope: !5456)
!5459 = !DILocation(line: 1317, column: 25, scope: !5456)
!5460 = !DILocation(line: 1317, column: 9, scope: !5419)
!5461 = !DILocation(line: 1318, column: 43, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5456, file: !2, line: 1317, column: 31)
!5463 = !DILocation(line: 1318, column: 9, scope: !5462)
!5464 = !DILocation(line: 1319, column: 9, scope: !5462)
!5465 = !DILocation(line: 1322, column: 13, scope: !5419)
!5466 = !DILocation(line: 1322, column: 17, scope: !5419)
!5467 = !DILocation(line: 1322, column: 23, scope: !5419)
!5468 = !DILocation(line: 1322, column: 11, scope: !5419)
!5469 = !DILocation(line: 1324, column: 22, scope: !5419)
!5470 = !DILocation(line: 1324, column: 31, scope: !5419)
!5471 = !DILocation(line: 1324, column: 37, scope: !5419)
!5472 = !DILocation(line: 1324, column: 46, scope: !5419)
!5473 = !DILocation(line: 1324, column: 11, scope: !5419)
!5474 = !DILocation(line: 1324, column: 9, scope: !5419)
!5475 = !DILocation(line: 1325, column: 9, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 1325, column: 9)
!5477 = !DILocation(line: 1325, column: 13, scope: !5476)
!5478 = !DILocation(line: 1325, column: 26, scope: !5476)
!5479 = !DILocation(line: 1325, column: 29, scope: !5476)
!5480 = !DILocation(line: 1325, column: 33, scope: !5476)
!5481 = !DILocation(line: 1325, column: 9, scope: !5419)
!5482 = !DILocation(line: 1326, column: 43, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5476, file: !2, line: 1325, column: 40)
!5484 = !DILocation(line: 1327, column: 53, scope: !5483)
!5485 = !DILocation(line: 1326, column: 9, scope: !5483)
!5486 = !DILocation(line: 1328, column: 9, scope: !5483)
!5487 = !DILocation(line: 1331, column: 11, scope: !5419)
!5488 = !DILocation(line: 1331, column: 15, scope: !5419)
!5489 = !DILocation(line: 1331, column: 9, scope: !5419)
!5490 = !DILocation(line: 1332, column: 13, scope: !5419)
!5491 = !DILocation(line: 1332, column: 18, scope: !5419)
!5492 = !DILocation(line: 1332, column: 11, scope: !5419)
!5493 = !DILocation(line: 1334, column: 9, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 1334, column: 9)
!5495 = !DILocation(line: 1334, column: 14, scope: !5494)
!5496 = !DILocation(line: 1334, column: 23, scope: !5494)
!5497 = !DILocation(line: 1334, column: 9, scope: !5419)
!5498 = !DILocation(line: 1335, column: 14, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5494, file: !2, line: 1334, column: 29)
!5500 = !DILocation(line: 1335, column: 21, scope: !5499)
!5501 = !DILocation(line: 1335, column: 29, scope: !5499)
!5502 = !DILocation(line: 1335, column: 33, scope: !5499)
!5503 = !DILocation(line: 1335, column: 11, scope: !5499)
!5504 = !DILocation(line: 1337, column: 26, scope: !5499)
!5505 = !DILocation(line: 1337, column: 35, scope: !5499)
!5506 = !DILocation(line: 1337, column: 39, scope: !5499)
!5507 = !DILocation(line: 1337, column: 16, scope: !5499)
!5508 = !DILocation(line: 1337, column: 11, scope: !5499)
!5509 = !DILocation(line: 1337, column: 14, scope: !5499)
!5510 = !DILocation(line: 1339, column: 16, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5499, file: !2, line: 1339, column: 9)
!5512 = !DILocation(line: 1339, column: 14, scope: !5511)
!5513 = !DILocation(line: 1339, column: 21, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !2, line: 1339, column: 9)
!5515 = !DILocation(line: 1339, column: 25, scope: !5514)
!5516 = !DILocation(line: 1339, column: 34, scope: !5514)
!5517 = !DILocation(line: 1339, column: 23, scope: !5514)
!5518 = !DILocation(line: 1339, column: 9, scope: !5511)
!5519 = !DILocation(line: 1340, column: 31, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 1339, column: 47)
!5521 = !DILocation(line: 1340, column: 40, scope: !5520)
!5522 = !DILocation(line: 1340, column: 45, scope: !5520)
!5523 = !DILocation(line: 1340, column: 19, scope: !5520)
!5524 = !DILocation(line: 1340, column: 17, scope: !5520)
!5525 = !DILocation(line: 1341, column: 17, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5520, file: !2, line: 1341, column: 17)
!5527 = !DILocation(line: 1341, column: 21, scope: !5526)
!5528 = !DILocation(line: 1341, column: 34, scope: !5526)
!5529 = !DILocation(line: 1341, column: 37, scope: !5526)
!5530 = !DILocation(line: 1341, column: 41, scope: !5526)
!5531 = !DILocation(line: 1341, column: 17, scope: !5520)
!5532 = !DILocation(line: 1342, column: 51, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 1341, column: 48)
!5534 = !DILocation(line: 1343, column: 61, scope: !5533)
!5535 = !DILocation(line: 1342, column: 17, scope: !5533)
!5536 = !DILocation(line: 1344, column: 17, scope: !5533)
!5537 = !DILocation(line: 1347, column: 29, scope: !5520)
!5538 = !DILocation(line: 1347, column: 20, scope: !5520)
!5539 = !DILocation(line: 1347, column: 15, scope: !5520)
!5540 = !DILocation(line: 1347, column: 18, scope: !5520)
!5541 = !DILocation(line: 1348, column: 9, scope: !5520)
!5542 = !DILocation(line: 1339, column: 41, scope: !5514)
!5543 = !DILocation(line: 1339, column: 9, scope: !5514)
!5544 = distinct !{!5544, !5518, !5545, !2195}
!5545 = !DILocation(line: 1348, column: 9, scope: !5511)
!5546 = !DILocation(line: 1350, column: 11, scope: !5499)
!5547 = !DILocation(line: 1352, column: 33, scope: !5499)
!5548 = !DILocation(line: 1352, column: 9, scope: !5499)
!5549 = !DILocation(line: 1352, column: 14, scope: !5499)
!5550 = !DILocation(line: 1352, column: 23, scope: !5499)
!5551 = !DILocation(line: 1352, column: 30, scope: !5499)
!5552 = !DILocation(line: 1353, column: 9, scope: !5499)
!5553 = !DILocation(line: 1353, column: 14, scope: !5499)
!5554 = !DILocation(line: 1353, column: 24, scope: !5499)
!5555 = !DILocation(line: 1355, column: 14, scope: !5499)
!5556 = !DILocation(line: 1355, column: 21, scope: !5499)
!5557 = !DILocation(line: 1355, column: 29, scope: !5499)
!5558 = !DILocation(line: 1355, column: 33, scope: !5499)
!5559 = !DILocation(line: 1355, column: 48, scope: !5499)
!5560 = !DILocation(line: 1355, column: 11, scope: !5499)
!5561 = !DILocation(line: 1357, column: 33, scope: !5499)
!5562 = !DILocation(line: 1357, column: 13, scope: !5499)
!5563 = !DILocation(line: 1357, column: 11, scope: !5499)
!5564 = !DILocation(line: 1359, column: 13, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5499, file: !2, line: 1359, column: 13)
!5566 = !DILocation(line: 1359, column: 15, scope: !5565)
!5567 = !DILocation(line: 1359, column: 13, scope: !5499)
!5568 = !DILocation(line: 1360, column: 47, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 1359, column: 25)
!5570 = !DILocation(line: 1361, column: 57, scope: !5569)
!5571 = !DILocation(line: 1360, column: 13, scope: !5569)
!5572 = !DILocation(line: 1362, column: 13, scope: !5569)
!5573 = !DILocation(line: 1365, column: 27, scope: !5499)
!5574 = !DILocation(line: 1365, column: 34, scope: !5499)
!5575 = !DILocation(line: 1365, column: 12, scope: !5499)
!5576 = !DILocation(line: 1367, column: 19, scope: !5499)
!5577 = !DILocation(line: 1367, column: 22, scope: !5499)
!5578 = !DILocation(line: 1367, column: 24, scope: !5499)
!5579 = !DILocation(line: 1367, column: 17, scope: !5499)
!5580 = !DILocation(line: 1369, column: 13, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5499, file: !2, line: 1369, column: 13)
!5582 = !DILocation(line: 1369, column: 21, scope: !5581)
!5583 = !DILocation(line: 1369, column: 13, scope: !5499)
!5584 = !DILocation(line: 1370, column: 35, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !2, line: 1369, column: 30)
!5586 = !DILocation(line: 1370, column: 39, scope: !5585)
!5587 = !DILocation(line: 1370, column: 23, scope: !5585)
!5588 = !DILocation(line: 1370, column: 21, scope: !5585)
!5589 = !DILocation(line: 1371, column: 17, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 1371, column: 17)
!5591 = !DILocation(line: 1371, column: 25, scope: !5590)
!5592 = !DILocation(line: 1371, column: 17, scope: !5585)
!5593 = !DILocation(line: 1372, column: 17, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5590, file: !2, line: 1371, column: 34)
!5595 = !DILocation(line: 1375, column: 26, scope: !5585)
!5596 = !DILocation(line: 1375, column: 13, scope: !5585)
!5597 = !DILocation(line: 1375, column: 16, scope: !5585)
!5598 = !DILocation(line: 1375, column: 18, scope: !5585)
!5599 = !DILocation(line: 1375, column: 24, scope: !5585)
!5600 = !DILocation(line: 1376, column: 9, scope: !5585)
!5601 = !DILocation(line: 1378, column: 38, scope: !5499)
!5602 = !DILocation(line: 1378, column: 29, scope: !5499)
!5603 = !DILocation(line: 1378, column: 9, scope: !5499)
!5604 = !DILocation(line: 1378, column: 17, scope: !5499)
!5605 = !DILocation(line: 1378, column: 19, scope: !5499)
!5606 = !DILocation(line: 1378, column: 27, scope: !5499)
!5607 = !DILocation(line: 1380, column: 5, scope: !5499)
!5608 = !DILocation(line: 1381, column: 26, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5494, file: !2, line: 1380, column: 12)
!5610 = !DILocation(line: 1381, column: 35, scope: !5609)
!5611 = !DILocation(line: 1381, column: 41, scope: !5609)
!5612 = !DILocation(line: 1381, column: 50, scope: !5609)
!5613 = !DILocation(line: 1381, column: 15, scope: !5609)
!5614 = !DILocation(line: 1381, column: 13, scope: !5609)
!5615 = !DILocation(line: 1382, column: 13, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5609, file: !2, line: 1382, column: 13)
!5617 = !DILocation(line: 1382, column: 17, scope: !5616)
!5618 = !DILocation(line: 1382, column: 30, scope: !5616)
!5619 = !DILocation(line: 1382, column: 33, scope: !5616)
!5620 = !DILocation(line: 1382, column: 37, scope: !5616)
!5621 = !DILocation(line: 1382, column: 13, scope: !5609)
!5622 = !DILocation(line: 1383, column: 47, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5616, file: !2, line: 1382, column: 44)
!5624 = !DILocation(line: 1384, column: 57, scope: !5623)
!5625 = !DILocation(line: 1383, column: 13, scope: !5623)
!5626 = !DILocation(line: 1385, column: 13, scope: !5623)
!5627 = !DILocation(line: 1388, column: 40, scope: !5609)
!5628 = !DILocation(line: 1388, column: 31, scope: !5609)
!5629 = !DILocation(line: 1388, column: 9, scope: !5609)
!5630 = !DILocation(line: 1388, column: 16, scope: !5609)
!5631 = !DILocation(line: 1388, column: 24, scope: !5609)
!5632 = !DILocation(line: 1388, column: 29, scope: !5609)
!5633 = !DILocation(line: 1389, column: 40, scope: !5609)
!5634 = !DILocation(line: 1389, column: 31, scope: !5609)
!5635 = !DILocation(line: 1389, column: 9, scope: !5609)
!5636 = !DILocation(line: 1389, column: 16, scope: !5609)
!5637 = !DILocation(line: 1389, column: 24, scope: !5609)
!5638 = !DILocation(line: 1389, column: 29, scope: !5609)
!5639 = !DILocation(line: 1392, column: 5, scope: !5419)
!5640 = !DILocation(line: 1393, column: 1, scope: !5419)
!5641 = !DISubprogram(name: "ngx_conf_parse", scope: !68, file: !68, line: 269, type: !5642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!58, !82, !880}
!5644 = !DISubprogram(name: "ngx_hextoi", scope: !72, file: !72, line: 181, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!41, !36, !33}
