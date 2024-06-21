; ModuleID = 'samples/483.bc'
source_filename = "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_stream_lua_request_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_cycle_s = type { ptr, ptr, ptr, %struct.ngx_log_s, i64, ptr, ptr, i64, ptr, i64, i64, %struct.ngx_queue_s, i64, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_list_t, %struct.ngx_list_t, i64, i64, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i32 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_rbtree_s = type { ptr, ptr, ptr }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_stream_lua_log_ringbuf_t = type { i64, ptr, ptr, ptr, ptr, i64, i64 }
%struct.lua_Debug = type { i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1, !dbg !7
@ngx_cycle = external global ptr, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"directive \22lua_capture_error_log\22 is not set\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [18 x i8] c"bad log level: %d\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [14 x i8] c"stream [lua] \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [4 x i8] c"Snl\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [45 x i8] c"expected table to have __tostring metamethod\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [49 x i8] c"string, number, boolean, or nil expected, got %s\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [25 x i8] c"impossible to reach here\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [22 x i8] c"buffer error: %d > %d\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [6 x i8] c"%s%*s\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [6 x i8] c"EMERG\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [6 x i8] c"ALERT\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [5 x i8] c"CRIT\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1, !dbg !74
@.str.19 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1, !dbg !76
@.str.20 = private unnamed_addr constant [7 x i8] c"NOTICE\00", align 1, !dbg !78
@.str.21 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1, !dbg !80
@.str.22 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1, !dbg !82

; Function Attrs: nounwind uwtable
define dso_local void @ngx_stream_lua_inject_log_api(ptr noundef %L) #0 !dbg !129 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !137, metadata !DIExpression()), !dbg !142
  %0 = load ptr, ptr %L.addr, align 8, !dbg !143, !tbaa !138
  call void @ngx_stream_lua_inject_log_consts(ptr noundef %0), !dbg !144
  %1 = load ptr, ptr %L.addr, align 8, !dbg !145, !tbaa !138
  call void @lua_pushcclosure(ptr noundef %1, ptr noundef @ngx_stream_lua_ngx_log, i32 noundef 0), !dbg !145
  %2 = load ptr, ptr %L.addr, align 8, !dbg !146, !tbaa !138
  call void @lua_setfield(ptr noundef %2, i32 noundef -2, ptr noundef @.str), !dbg !147
  %3 = load ptr, ptr %L.addr, align 8, !dbg !148, !tbaa !138
  call void @lua_pushcclosure(ptr noundef %3, ptr noundef @ngx_stream_lua_print, i32 noundef 0), !dbg !148
  %4 = load ptr, ptr %L.addr, align 8, !dbg !149, !tbaa !138
  call void @lua_setfield(ptr noundef %4, i32 noundef -10002, ptr noundef @.str.1), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: nounwind uwtable
define internal void @ngx_stream_lua_inject_log_consts(ptr noundef %L) #0 !dbg !151 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load ptr, ptr %L.addr, align 8, !dbg !155, !tbaa !138
  call void @lua_pushinteger(ptr noundef %0, i64 noundef 0), !dbg !156
  %1 = load ptr, ptr %L.addr, align 8, !dbg !157, !tbaa !138
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef @.str.14), !dbg !158
  %2 = load ptr, ptr %L.addr, align 8, !dbg !159, !tbaa !138
  call void @lua_pushinteger(ptr noundef %2, i64 noundef 1), !dbg !160
  %3 = load ptr, ptr %L.addr, align 8, !dbg !161, !tbaa !138
  call void @lua_setfield(ptr noundef %3, i32 noundef -2, ptr noundef @.str.15), !dbg !162
  %4 = load ptr, ptr %L.addr, align 8, !dbg !163, !tbaa !138
  call void @lua_pushinteger(ptr noundef %4, i64 noundef 2), !dbg !164
  %5 = load ptr, ptr %L.addr, align 8, !dbg !165, !tbaa !138
  call void @lua_setfield(ptr noundef %5, i32 noundef -2, ptr noundef @.str.16), !dbg !166
  %6 = load ptr, ptr %L.addr, align 8, !dbg !167, !tbaa !138
  call void @lua_pushinteger(ptr noundef %6, i64 noundef 3), !dbg !168
  %7 = load ptr, ptr %L.addr, align 8, !dbg !169, !tbaa !138
  call void @lua_setfield(ptr noundef %7, i32 noundef -2, ptr noundef @.str.17), !dbg !170
  %8 = load ptr, ptr %L.addr, align 8, !dbg !171, !tbaa !138
  call void @lua_pushinteger(ptr noundef %8, i64 noundef 4), !dbg !172
  %9 = load ptr, ptr %L.addr, align 8, !dbg !173, !tbaa !138
  call void @lua_setfield(ptr noundef %9, i32 noundef -2, ptr noundef @.str.18), !dbg !174
  %10 = load ptr, ptr %L.addr, align 8, !dbg !175, !tbaa !138
  call void @lua_pushinteger(ptr noundef %10, i64 noundef 5), !dbg !176
  %11 = load ptr, ptr %L.addr, align 8, !dbg !177, !tbaa !138
  call void @lua_setfield(ptr noundef %11, i32 noundef -2, ptr noundef @.str.19), !dbg !178
  %12 = load ptr, ptr %L.addr, align 8, !dbg !179, !tbaa !138
  call void @lua_pushinteger(ptr noundef %12, i64 noundef 6), !dbg !180
  %13 = load ptr, ptr %L.addr, align 8, !dbg !181, !tbaa !138
  call void @lua_setfield(ptr noundef %13, i32 noundef -2, ptr noundef @.str.20), !dbg !182
  %14 = load ptr, ptr %L.addr, align 8, !dbg !183, !tbaa !138
  call void @lua_pushinteger(ptr noundef %14, i64 noundef 7), !dbg !184
  %15 = load ptr, ptr %L.addr, align 8, !dbg !185, !tbaa !138
  call void @lua_setfield(ptr noundef %15, i32 noundef -2, ptr noundef @.str.21), !dbg !186
  %16 = load ptr, ptr %L.addr, align 8, !dbg !187, !tbaa !138
  call void @lua_pushinteger(ptr noundef %16, i64 noundef 8), !dbg !188
  %17 = load ptr, ptr %L.addr, align 8, !dbg !189, !tbaa !138
  call void @lua_setfield(ptr noundef %17, i32 noundef -2, ptr noundef @.str.22), !dbg !190
  ret void, !dbg !191
}

declare !dbg !192 void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ngx_stream_lua_ngx_log(ptr noundef %L) #0 !dbg !199 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %log = alloca ptr, align 8
  %r = alloca ptr, align 8
  %msg = alloca ptr, align 8
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !201, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #7, !dbg !1132
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !202, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7, !dbg !1134
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !252, metadata !DIExpression()), !dbg !1135
  call void @llvm.lifetime.start.p0(i64 8, ptr %msg) #7, !dbg !1136
  tail call void @llvm.dbg.declare(metadata ptr %msg, metadata !1129, metadata !DIExpression()), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #7, !dbg !1138
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !1130, metadata !DIExpression()), !dbg !1139
  %0 = load ptr, ptr %L.addr, align 8, !dbg !1140, !tbaa !138
  %call = call ptr @ngx_stream_lua_get_req(ptr noundef %0), !dbg !1141
  store ptr %call, ptr %r, align 8, !dbg !1142, !tbaa !138
  %1 = load ptr, ptr %r, align 8, !dbg !1143, !tbaa !138
  %tobool = icmp ne ptr %1, null, !dbg !1143
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1145

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r, align 8, !dbg !1146, !tbaa !138
  %connection = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %2, i32 0, i32 0, !dbg !1147
  %3 = load ptr, ptr %connection, align 8, !dbg !1147, !tbaa !1148
  %tobool1 = icmp ne ptr %3, null, !dbg !1146
  br i1 %tobool1, label %land.lhs.true2, label %if.else, !dbg !1150

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %r, align 8, !dbg !1151, !tbaa !138
  %connection3 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %4, i32 0, i32 0, !dbg !1152
  %5 = load ptr, ptr %connection3, align 8, !dbg !1152, !tbaa !1148
  %log4 = getelementptr inbounds %struct.ngx_connection_s, ptr %5, i32 0, i32 10, !dbg !1153
  %6 = load ptr, ptr %log4, align 8, !dbg !1153, !tbaa !1154
  %tobool5 = icmp ne ptr %6, null, !dbg !1151
  br i1 %tobool5, label %if.then, label %if.else, !dbg !1161

if.then:                                          ; preds = %land.lhs.true2
  %7 = load ptr, ptr %r, align 8, !dbg !1162, !tbaa !138
  %connection6 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %7, i32 0, i32 0, !dbg !1164
  %8 = load ptr, ptr %connection6, align 8, !dbg !1164, !tbaa !1148
  %log7 = getelementptr inbounds %struct.ngx_connection_s, ptr %8, i32 0, i32 10, !dbg !1165
  %9 = load ptr, ptr %log7, align 8, !dbg !1165, !tbaa !1154
  store ptr %9, ptr %log, align 8, !dbg !1166, !tbaa !138
  br label %if.end, !dbg !1167

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %10 = load ptr, ptr @ngx_cycle, align 8, !dbg !1168, !tbaa !138
  %log8 = getelementptr inbounds %struct.ngx_cycle_s, ptr %10, i32 0, i32 2, !dbg !1170
  %11 = load volatile ptr, ptr %log8, align 8, !dbg !1170, !tbaa !1171
  store ptr %11, ptr %log, align 8, !dbg !1179, !tbaa !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %L.addr, align 8, !dbg !1180, !tbaa !138
  %call9 = call i64 @luaL_checkinteger(ptr noundef %12, i32 noundef 1), !dbg !1180
  %conv = trunc i64 %call9 to i32, !dbg !1180
  store i32 %conv, ptr %level, align 4, !dbg !1181, !tbaa !1182
  %13 = load i32, ptr %level, align 4, !dbg !1183, !tbaa !1182
  %cmp = icmp slt i32 %13, 0, !dbg !1185
  br i1 %cmp, label %if.then13, label %lor.lhs.false, !dbg !1186

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i32, ptr %level, align 4, !dbg !1187, !tbaa !1182
  %cmp11 = icmp sgt i32 %14, 8, !dbg !1188
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !1189

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load ptr, ptr %L.addr, align 8, !dbg !1190, !tbaa !138
  %16 = load i32, ptr %level, align 4, !dbg !1192, !tbaa !1182
  %call14 = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %15, ptr noundef @.str.3, i32 noundef %16), !dbg !1193
  store ptr %call14, ptr %msg, align 8, !dbg !1194, !tbaa !138
  %17 = load ptr, ptr %L.addr, align 8, !dbg !1195, !tbaa !138
  %18 = load ptr, ptr %msg, align 8, !dbg !1196, !tbaa !138
  %call15 = call i32 @luaL_argerror(ptr noundef %17, i32 noundef 1, ptr noundef %18), !dbg !1197
  store i32 %call15, ptr %retval, align 4, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

if.end16:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %L.addr, align 8, !dbg !1199, !tbaa !138
  call void @lua_remove(ptr noundef %19, i32 noundef 1), !dbg !1200
  %20 = load ptr, ptr %log, align 8, !dbg !1201, !tbaa !138
  %21 = load i32, ptr %level, align 4, !dbg !1202, !tbaa !1182
  %conv17 = sext i32 %21 to i64, !dbg !1203
  %22 = load ptr, ptr %L.addr, align 8, !dbg !1204, !tbaa !138
  %call18 = call i32 @log_wrapper(ptr noundef %20, ptr noundef @.str.5, i64 noundef %conv17, ptr noundef %22), !dbg !1205
  store i32 %call18, ptr %retval, align 4, !dbg !1206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1206

cleanup:                                          ; preds = %if.end16, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #7, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr %msg) #7, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #7, !dbg !1207
  %23 = load i32, ptr %retval, align 4, !dbg !1207
  ret i32 %23, !dbg !1207
}

declare !dbg !1208 void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ngx_stream_lua_print(ptr noundef %L) #0 !dbg !1211 {
entry:
  %L.addr = alloca ptr, align 8
  %log = alloca ptr, align 8
  %r = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !1213, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #7, !dbg !1217
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !1214, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7, !dbg !1219
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1215, metadata !DIExpression()), !dbg !1220
  %0 = load ptr, ptr %L.addr, align 8, !dbg !1221, !tbaa !138
  %call = call ptr @ngx_stream_lua_get_req(ptr noundef %0), !dbg !1222
  store ptr %call, ptr %r, align 8, !dbg !1223, !tbaa !138
  %1 = load ptr, ptr %r, align 8, !dbg !1224, !tbaa !138
  %tobool = icmp ne ptr %1, null, !dbg !1224
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1226

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r, align 8, !dbg !1227, !tbaa !138
  %connection = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %2, i32 0, i32 0, !dbg !1228
  %3 = load ptr, ptr %connection, align 8, !dbg !1228, !tbaa !1148
  %tobool1 = icmp ne ptr %3, null, !dbg !1227
  br i1 %tobool1, label %land.lhs.true2, label %if.else, !dbg !1229

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %r, align 8, !dbg !1230, !tbaa !138
  %connection3 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %4, i32 0, i32 0, !dbg !1231
  %5 = load ptr, ptr %connection3, align 8, !dbg !1231, !tbaa !1148
  %log4 = getelementptr inbounds %struct.ngx_connection_s, ptr %5, i32 0, i32 10, !dbg !1232
  %6 = load ptr, ptr %log4, align 8, !dbg !1232, !tbaa !1154
  %tobool5 = icmp ne ptr %6, null, !dbg !1230
  br i1 %tobool5, label %if.then, label %if.else, !dbg !1233

if.then:                                          ; preds = %land.lhs.true2
  %7 = load ptr, ptr %r, align 8, !dbg !1234, !tbaa !138
  %connection6 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %7, i32 0, i32 0, !dbg !1236
  %8 = load ptr, ptr %connection6, align 8, !dbg !1236, !tbaa !1148
  %log7 = getelementptr inbounds %struct.ngx_connection_s, ptr %8, i32 0, i32 10, !dbg !1237
  %9 = load ptr, ptr %log7, align 8, !dbg !1237, !tbaa !1154
  store ptr %9, ptr %log, align 8, !dbg !1238, !tbaa !138
  br label %if.end, !dbg !1239

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %10 = load ptr, ptr @ngx_cycle, align 8, !dbg !1240, !tbaa !138
  %log8 = getelementptr inbounds %struct.ngx_cycle_s, ptr %10, i32 0, i32 2, !dbg !1242
  %11 = load volatile ptr, ptr %log8, align 8, !dbg !1242, !tbaa !1171
  store ptr %11, ptr %log, align 8, !dbg !1243, !tbaa !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %log, align 8, !dbg !1244, !tbaa !138
  %13 = load ptr, ptr %L.addr, align 8, !dbg !1245, !tbaa !138
  %call9 = call i32 @log_wrapper(ptr noundef %12, ptr noundef @.str.5, i64 noundef 6, ptr noundef %13), !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #7, !dbg !1247
  ret i32 %call9, !dbg !1248
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_stream_lua_capture_log_handler(ptr noundef %log, i64 noundef %level, ptr noundef %buf, i64 noundef %n) #0 !dbg !1249 {
entry:
  %retval = alloca i64, align 8
  %log.addr = alloca ptr, align 8
  %level.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ringbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %log, ptr %log.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %log.addr, metadata !1251, metadata !DIExpression()), !dbg !1256
  store i64 %level, ptr %level.addr, align 8, !tbaa !1257
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1252, metadata !DIExpression()), !dbg !1258
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1253, metadata !DIExpression()), !dbg !1259
  store i64 %n, ptr %n.addr, align 8, !tbaa !1257
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 8, ptr %ringbuf) #7, !dbg !1261
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf, metadata !1255, metadata !DIExpression()), !dbg !1262
  %0 = load ptr, ptr @ngx_cycle, align 8, !dbg !1263, !tbaa !138
  %intercept_error_log_data = getelementptr inbounds %struct.ngx_cycle_s, ptr %0, i32 0, i32 33, !dbg !1264
  %1 = load volatile ptr, ptr %intercept_error_log_data, align 8, !dbg !1264, !tbaa !1265
  store ptr %1, ptr %ringbuf, align 8, !dbg !1266, !tbaa !138
  %2 = load i64, ptr %level.addr, align 8, !dbg !1267, !tbaa !1257
  %3 = load ptr, ptr %ringbuf, align 8, !dbg !1269, !tbaa !138
  %filter_level = getelementptr inbounds %struct.ngx_stream_lua_log_ringbuf_t, ptr %3, i32 0, i32 0, !dbg !1270
  %4 = load i64, ptr %filter_level, align 8, !dbg !1270, !tbaa !1271
  %cmp = icmp ugt i64 %2, %4, !dbg !1273
  br i1 %cmp, label %if.then, label %if.end, !dbg !1274

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1275

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ringbuf, align 8, !dbg !1277, !tbaa !138
  %6 = load i64, ptr %level.addr, align 8, !dbg !1278, !tbaa !1257
  %conv = trunc i64 %6 to i32, !dbg !1278
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !1279, !tbaa !138
  %8 = load i64, ptr %n.addr, align 8, !dbg !1280, !tbaa !1257
  %call = call i64 @ngx_stream_lua_log_ringbuf_write(ptr noundef %5, i32 noundef %conv, ptr noundef %7, i64 noundef %8), !dbg !1281
  store i64 0, ptr %retval, align 8, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ringbuf) #7, !dbg !1283
  %9 = load i64, ptr %retval, align 8, !dbg !1283
  ret i64 %9, !dbg !1283
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1284 i64 @ngx_stream_lua_log_ringbuf_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_stream_lua_ffi_errlog_set_filter_level(i32 noundef %level, ptr noundef %err, ptr noundef %errlen) #0 !dbg !1287 {
entry:
  %retval = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %errlen.addr = alloca ptr, align 8
  %ringbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4, !tbaa !1182
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1292, metadata !DIExpression()), !dbg !1296
  store ptr %err, ptr %err.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1293, metadata !DIExpression()), !dbg !1297
  store ptr %errlen, ptr %errlen.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %errlen.addr, metadata !1294, metadata !DIExpression()), !dbg !1298
  call void @llvm.lifetime.start.p0(i64 8, ptr %ringbuf) #7, !dbg !1299
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf, metadata !1295, metadata !DIExpression()), !dbg !1300
  %0 = load ptr, ptr @ngx_cycle, align 8, !dbg !1301, !tbaa !138
  %intercept_error_log_data = getelementptr inbounds %struct.ngx_cycle_s, ptr %0, i32 0, i32 33, !dbg !1302
  %1 = load volatile ptr, ptr %intercept_error_log_data, align 8, !dbg !1302, !tbaa !1265
  store ptr %1, ptr %ringbuf, align 8, !dbg !1303, !tbaa !138
  %2 = load ptr, ptr %ringbuf, align 8, !dbg !1304, !tbaa !138
  %cmp = icmp eq ptr %2, null, !dbg !1306
  br i1 %cmp, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1308, !tbaa !138
  %4 = load ptr, ptr %errlen.addr, align 8, !dbg !1310, !tbaa !138
  %5 = load i64, ptr %4, align 8, !dbg !1311, !tbaa !1257
  %call = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %3, i64 noundef %5, ptr noundef @.str.2), !dbg !1312
  %6 = load ptr, ptr %err.addr, align 8, !dbg !1313, !tbaa !138
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64, !dbg !1314
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !1314
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1314
  %7 = load ptr, ptr %errlen.addr, align 8, !dbg !1315, !tbaa !138
  store i64 %sub.ptr.sub, ptr %7, align 8, !dbg !1316, !tbaa !1257
  store i32 -1, ptr %retval, align 4, !dbg !1317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1317

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %level.addr, align 4, !dbg !1318, !tbaa !1182
  %cmp1 = icmp sgt i32 %8, 8, !dbg !1320
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1321

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %level.addr, align 4, !dbg !1322, !tbaa !1182
  %cmp2 = icmp slt i32 %9, 0, !dbg !1323
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !1324

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %err.addr, align 8, !dbg !1325, !tbaa !138
  %11 = load ptr, ptr %errlen.addr, align 8, !dbg !1327, !tbaa !138
  %12 = load i64, ptr %11, align 8, !dbg !1328, !tbaa !1257
  %13 = load i32, ptr %level.addr, align 4, !dbg !1329, !tbaa !1182
  %call4 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %10, i64 noundef %12, ptr noundef @.str.3, i32 noundef %13), !dbg !1330
  %14 = load ptr, ptr %err.addr, align 8, !dbg !1331, !tbaa !138
  %sub.ptr.lhs.cast5 = ptrtoint ptr %call4 to i64, !dbg !1332
  %sub.ptr.rhs.cast6 = ptrtoint ptr %14 to i64, !dbg !1332
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6, !dbg !1332
  %15 = load ptr, ptr %errlen.addr, align 8, !dbg !1333, !tbaa !138
  store i64 %sub.ptr.sub7, ptr %15, align 8, !dbg !1334, !tbaa !1257
  store i32 -1, ptr %retval, align 4, !dbg !1335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1335

if.end8:                                          ; preds = %lor.lhs.false
  %16 = load i32, ptr %level.addr, align 4, !dbg !1336, !tbaa !1182
  %conv = sext i32 %16 to i64, !dbg !1336
  %17 = load ptr, ptr %ringbuf, align 8, !dbg !1337, !tbaa !138
  %filter_level = getelementptr inbounds %struct.ngx_stream_lua_log_ringbuf_t, ptr %17, i32 0, i32 0, !dbg !1338
  store i64 %conv, ptr %filter_level, align 8, !dbg !1339, !tbaa !1271
  store i32 0, ptr %retval, align 4, !dbg !1340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1340

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ringbuf) #7, !dbg !1341
  %18 = load i32, ptr %retval, align 4, !dbg !1341
  ret i32 %18, !dbg !1341
}

declare !dbg !1342 ptr @ngx_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_stream_lua_ffi_errlog_get_msg(ptr noundef %log, ptr noundef %loglevel, ptr noundef %err, ptr noundef %errlen, ptr noundef %log_time) #0 !dbg !1345 {
entry:
  %retval = alloca i32, align 4
  %log.addr = alloca ptr, align 8
  %loglevel.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %errlen.addr = alloca ptr, align 8
  %log_time.addr = alloca ptr, align 8
  %loglen = alloca i64, align 8
  %ringbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %log, ptr %log.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %log.addr, metadata !1353, metadata !DIExpression()), !dbg !1360
  store ptr %loglevel, ptr %loglevel.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %loglevel.addr, metadata !1354, metadata !DIExpression()), !dbg !1361
  store ptr %err, ptr %err.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1355, metadata !DIExpression()), !dbg !1362
  store ptr %errlen, ptr %errlen.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %errlen.addr, metadata !1356, metadata !DIExpression()), !dbg !1363
  store ptr %log_time, ptr %log_time.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %log_time.addr, metadata !1357, metadata !DIExpression()), !dbg !1364
  call void @llvm.lifetime.start.p0(i64 8, ptr %loglen) #7, !dbg !1365
  tail call void @llvm.dbg.declare(metadata ptr %loglen, metadata !1358, metadata !DIExpression()), !dbg !1366
  call void @llvm.lifetime.start.p0(i64 8, ptr %ringbuf) #7, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf, metadata !1359, metadata !DIExpression()), !dbg !1368
  %0 = load ptr, ptr @ngx_cycle, align 8, !dbg !1369, !tbaa !138
  %intercept_error_log_data = getelementptr inbounds %struct.ngx_cycle_s, ptr %0, i32 0, i32 33, !dbg !1370
  %1 = load volatile ptr, ptr %intercept_error_log_data, align 8, !dbg !1370, !tbaa !1265
  store ptr %1, ptr %ringbuf, align 8, !dbg !1371, !tbaa !138
  %2 = load ptr, ptr %ringbuf, align 8, !dbg !1372, !tbaa !138
  %cmp = icmp eq ptr %2, null, !dbg !1374
  br i1 %cmp, label %if.then, label %if.end, !dbg !1375

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1376, !tbaa !138
  %4 = load ptr, ptr %errlen.addr, align 8, !dbg !1378, !tbaa !138
  %5 = load i64, ptr %4, align 8, !dbg !1379, !tbaa !1257
  %call = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %3, i64 noundef %5, ptr noundef @.str.2), !dbg !1380
  %6 = load ptr, ptr %err.addr, align 8, !dbg !1381, !tbaa !138
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64, !dbg !1382
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !1382
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1382
  %7 = load ptr, ptr %errlen.addr, align 8, !dbg !1383, !tbaa !138
  store i64 %sub.ptr.sub, ptr %7, align 8, !dbg !1384, !tbaa !1257
  store i32 -1, ptr %retval, align 4, !dbg !1385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1385

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %ringbuf, align 8, !dbg !1386, !tbaa !138
  %count = getelementptr inbounds %struct.ngx_stream_lua_log_ringbuf_t, ptr %8, i32 0, i32 6, !dbg !1388
  %9 = load i64, ptr %count, align 8, !dbg !1388, !tbaa !1389
  %cmp1 = icmp eq i64 %9, 0, !dbg !1390
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1391

if.then2:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4, !dbg !1392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1392

if.end3:                                          ; preds = %if.end
  %10 = load ptr, ptr %ringbuf, align 8, !dbg !1394, !tbaa !138
  %11 = load ptr, ptr %loglevel.addr, align 8, !dbg !1395, !tbaa !138
  %12 = load ptr, ptr %log.addr, align 8, !dbg !1396, !tbaa !138
  %13 = load ptr, ptr %log_time.addr, align 8, !dbg !1397, !tbaa !138
  %call4 = call i64 @ngx_stream_lua_log_ringbuf_read(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %loglen, ptr noundef %13), !dbg !1398
  %14 = load i64, ptr %loglen, align 8, !dbg !1399, !tbaa !1257
  %conv = trunc i64 %14 to i32, !dbg !1399
  store i32 %conv, ptr %retval, align 4, !dbg !1400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1400

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ringbuf) #7, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 8, ptr %loglen) #7, !dbg !1401
  %15 = load i32, ptr %retval, align 4, !dbg !1401
  ret i32 %15, !dbg !1401
}

declare !dbg !1402 i64 @ngx_stream_lua_log_ringbuf_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_stream_lua_ffi_errlog_get_sys_filter_level(ptr noundef %r) #0 !dbg !1405 {
entry:
  %r.addr = alloca ptr, align 8
  %log = alloca ptr, align 8
  %log_level = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1409, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #7, !dbg !1413
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 4, ptr %log_level) #7, !dbg !1415
  tail call void @llvm.dbg.declare(metadata ptr %log_level, metadata !1411, metadata !DIExpression()), !dbg !1416
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1417, !tbaa !138
  %tobool = icmp ne ptr %0, null, !dbg !1417
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1419

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1420, !tbaa !138
  %connection = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %1, i32 0, i32 0, !dbg !1421
  %2 = load ptr, ptr %connection, align 8, !dbg !1421, !tbaa !1148
  %tobool1 = icmp ne ptr %2, null, !dbg !1420
  br i1 %tobool1, label %land.lhs.true2, label %if.else, !dbg !1422

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1423, !tbaa !138
  %connection3 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %3, i32 0, i32 0, !dbg !1424
  %4 = load ptr, ptr %connection3, align 8, !dbg !1424, !tbaa !1148
  %log4 = getelementptr inbounds %struct.ngx_connection_s, ptr %4, i32 0, i32 10, !dbg !1425
  %5 = load ptr, ptr %log4, align 8, !dbg !1425, !tbaa !1154
  %tobool5 = icmp ne ptr %5, null, !dbg !1423
  br i1 %tobool5, label %if.then, label %if.else, !dbg !1426

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1427, !tbaa !138
  %connection6 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %6, i32 0, i32 0, !dbg !1429
  %7 = load ptr, ptr %connection6, align 8, !dbg !1429, !tbaa !1148
  %log7 = getelementptr inbounds %struct.ngx_connection_s, ptr %7, i32 0, i32 10, !dbg !1430
  %8 = load ptr, ptr %log7, align 8, !dbg !1430, !tbaa !1154
  store ptr %8, ptr %log, align 8, !dbg !1431, !tbaa !138
  br label %if.end, !dbg !1432

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %9 = load ptr, ptr @ngx_cycle, align 8, !dbg !1433, !tbaa !138
  %log8 = getelementptr inbounds %struct.ngx_cycle_s, ptr %9, i32 0, i32 2, !dbg !1435
  %10 = load volatile ptr, ptr %log8, align 8, !dbg !1435, !tbaa !1171
  store ptr %10, ptr %log, align 8, !dbg !1436, !tbaa !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %log, align 8, !dbg !1437, !tbaa !138
  %log_level9 = getelementptr inbounds %struct.ngx_log_s, ptr %11, i32 0, i32 0, !dbg !1438
  %12 = load i64, ptr %log_level9, align 8, !dbg !1438, !tbaa !1439
  %conv = trunc i64 %12 to i32, !dbg !1437
  store i32 %conv, ptr %log_level, align 4, !dbg !1440, !tbaa !1182
  %13 = load i32, ptr %log_level, align 4, !dbg !1441, !tbaa !1182
  %cmp = icmp eq i32 %13, 2147483632, !dbg !1443
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !1444

if.then11:                                        ; preds = %if.end
  store i32 8, ptr %log_level, align 4, !dbg !1445, !tbaa !1182
  br label %if.end12, !dbg !1447

if.end12:                                         ; preds = %if.then11, %if.end
  %14 = load i32, ptr %log_level, align 4, !dbg !1448, !tbaa !1182
  call void @llvm.lifetime.end.p0(i64 4, ptr %log_level) #7, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #7, !dbg !1449
  ret i32 %14, !dbg !1450
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_stream_lua_ffi_raw_log(ptr noundef %r, i32 noundef %level, ptr noundef %s, i64 noundef %s_len) #0 !dbg !1451 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %s_len.addr = alloca i64, align 8
  %log = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1455, metadata !DIExpression()), !dbg !1460
  store i32 %level, ptr %level.addr, align 4, !tbaa !1182
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1456, metadata !DIExpression()), !dbg !1461
  store ptr %s, ptr %s.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1457, metadata !DIExpression()), !dbg !1462
  store i64 %s_len, ptr %s_len.addr, align 8, !tbaa !1257
  tail call void @llvm.dbg.declare(metadata ptr %s_len.addr, metadata !1458, metadata !DIExpression()), !dbg !1463
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #7, !dbg !1464
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !1459, metadata !DIExpression()), !dbg !1465
  %0 = load i32, ptr %level.addr, align 4, !dbg !1466, !tbaa !1182
  %cmp = icmp sgt i32 %0, 8, !dbg !1468
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1469

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4, !dbg !1470, !tbaa !1182
  %cmp1 = icmp slt i32 %1, 0, !dbg !1471
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1472

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1473

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1475, !tbaa !138
  %tobool = icmp ne ptr %2, null, !dbg !1475
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1477

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1478, !tbaa !138
  %connection = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %3, i32 0, i32 0, !dbg !1479
  %4 = load ptr, ptr %connection, align 8, !dbg !1479, !tbaa !1148
  %tobool2 = icmp ne ptr %4, null, !dbg !1478
  br i1 %tobool2, label %land.lhs.true3, label %if.else, !dbg !1480

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1481, !tbaa !138
  %connection4 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %5, i32 0, i32 0, !dbg !1482
  %6 = load ptr, ptr %connection4, align 8, !dbg !1482, !tbaa !1148
  %log5 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 10, !dbg !1483
  %7 = load ptr, ptr %log5, align 8, !dbg !1483, !tbaa !1154
  %tobool6 = icmp ne ptr %7, null, !dbg !1481
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1484

if.then7:                                         ; preds = %land.lhs.true3
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1485, !tbaa !138
  %connection8 = getelementptr inbounds %struct.ngx_stream_lua_request_s, ptr %8, i32 0, i32 0, !dbg !1487
  %9 = load ptr, ptr %connection8, align 8, !dbg !1487, !tbaa !1148
  %log9 = getelementptr inbounds %struct.ngx_connection_s, ptr %9, i32 0, i32 10, !dbg !1488
  %10 = load ptr, ptr %log9, align 8, !dbg !1488, !tbaa !1154
  store ptr %10, ptr %log, align 8, !dbg !1489, !tbaa !138
  br label %if.end11, !dbg !1490

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %11 = load ptr, ptr @ngx_cycle, align 8, !dbg !1491, !tbaa !138
  %log10 = getelementptr inbounds %struct.ngx_cycle_s, ptr %11, i32 0, i32 2, !dbg !1493
  %12 = load volatile ptr, ptr %log10, align 8, !dbg !1493, !tbaa !1171
  store ptr %12, ptr %log, align 8, !dbg !1494, !tbaa !138
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %13 = load ptr, ptr %log, align 8, !dbg !1495, !tbaa !138
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %13, i32 0, i32 0, !dbg !1495
  %14 = load i64, ptr %log_level, align 8, !dbg !1495, !tbaa !1439
  %15 = load i32, ptr %level.addr, align 4, !dbg !1495, !tbaa !1182
  %conv = zext i32 %15 to i64, !dbg !1495
  %cmp12 = icmp uge i64 %14, %conv, !dbg !1495
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !1497

if.then14:                                        ; preds = %if.end11
  %16 = load i32, ptr %level.addr, align 4, !dbg !1495, !tbaa !1182
  %conv15 = zext i32 %16 to i64, !dbg !1495
  %17 = load ptr, ptr %log, align 8, !dbg !1495, !tbaa !138
  %18 = load i64, ptr %s_len.addr, align 8, !dbg !1495, !tbaa !1257
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1495, !tbaa !138
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef %conv15, ptr noundef %17, i32 noundef 0, ptr noundef @.str.4, i64 noundef %18, ptr noundef %19), !dbg !1495
  br label %if.end16, !dbg !1495

if.end16:                                         ; preds = %if.then14, %if.end11
  store i32 0, ptr %retval, align 4, !dbg !1498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1498

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #7, !dbg !1499
  %20 = load i32, ptr %retval, align 4, !dbg !1499
  ret i32 %20, !dbg !1499
}

declare !dbg !1500 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ngx_stream_lua_get_req(ptr noundef %L) #3 !dbg !1505 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !1510, metadata !DIExpression()), !dbg !1511
  %0 = load ptr, ptr %L.addr, align 8, !dbg !1512, !tbaa !138
  %call = call ptr @lua_getexdata(ptr noundef %0), !dbg !1513
  ret ptr %call, !dbg !1514
}

declare !dbg !1515 i64 @luaL_checkinteger(ptr noundef, i32 noundef) #1

declare !dbg !1522 ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) #1

declare !dbg !1525 i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !1528 void @lua_remove(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @log_wrapper(ptr noundef %log, ptr noundef %ident, i64 noundef %level, ptr noundef %L) #0 !dbg !1531 {
entry:
  %retval = alloca i32, align 4
  %log.addr = alloca ptr, align 8
  %ident.addr = alloca ptr, align 8
  %level.addr = alloca i64, align 8
  %L.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %name = alloca %struct.ngx_str_t, align 8
  %nargs = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %len = alloca i64, align 8
  %src_len = alloca i64, align 8
  %type = alloca i32, align 4
  %msg = alloca ptr, align 8
  %ar = alloca %struct.lua_Debug, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %log, ptr %log.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %log.addr, metadata !1535, metadata !DIExpression()), !dbg !1568
  store ptr %ident, ptr %ident.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %ident.addr, metadata !1536, metadata !DIExpression()), !dbg !1569
  store i64 %level, ptr %level.addr, align 8, !tbaa !1257
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1537, metadata !DIExpression()), !dbg !1570
  store ptr %L, ptr %L.addr, align 8, !tbaa !138
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !1538, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !1572
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1539, metadata !DIExpression()), !dbg !1573
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1540, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #7, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %q, metadata !1541, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #7, !dbg !1577
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1542, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 4, ptr %nargs) #7, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %nargs, metadata !1543, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1544, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !1582
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1545, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !1582
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1546, metadata !DIExpression()), !dbg !1584
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_len) #7, !dbg !1585
  tail call void @llvm.dbg.declare(metadata ptr %src_len, metadata !1547, metadata !DIExpression()), !dbg !1586
  store i64 0, ptr %src_len, align 8, !dbg !1586, !tbaa !1257
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #7, !dbg !1587
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1548, metadata !DIExpression()), !dbg !1588
  call void @llvm.lifetime.start.p0(i64 8, ptr %msg) #7, !dbg !1589
  tail call void @llvm.dbg.declare(metadata ptr %msg, metadata !1549, metadata !DIExpression()), !dbg !1590
  call void @llvm.lifetime.start.p0(i64 120, ptr %ar) #7, !dbg !1591
  tail call void @llvm.dbg.declare(metadata ptr %ar, metadata !1550, metadata !DIExpression()), !dbg !1592
  %0 = load i64, ptr %level.addr, align 8, !dbg !1593, !tbaa !1257
  %1 = load ptr, ptr %log.addr, align 8, !dbg !1595, !tbaa !138
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %1, i32 0, i32 0, !dbg !1596
  %2 = load i64, ptr %log_level, align 8, !dbg !1596, !tbaa !1439
  %cmp = icmp ugt i64 %0, %2, !dbg !1597
  br i1 %cmp, label %if.then, label %if.end, !dbg !1598

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1599

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %L.addr, align 8, !dbg !1601, !tbaa !138
  %call = call i32 @lua_getstack(ptr noundef %3, i32 noundef 1, ptr noundef %ar), !dbg !1602
  %4 = load ptr, ptr %L.addr, align 8, !dbg !1603, !tbaa !138
  %call1 = call i32 @lua_getinfo(ptr noundef %4, ptr noundef @.str.6, ptr noundef %ar), !dbg !1604
  %short_src = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 9, !dbg !1605
  %arraydecay = getelementptr inbounds [60 x i8], ptr %short_src, i64 0, i64 0, !dbg !1606
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1607
  store ptr %arraydecay, ptr %data, align 8, !dbg !1608, !tbaa !1609
  %data2 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1610
  %5 = load ptr, ptr %data2, align 8, !dbg !1610, !tbaa !1609
  %cmp3 = icmp eq ptr %5, null, !dbg !1612
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1613

if.then4:                                         ; preds = %if.end
  %len5 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !1614
  store i64 0, ptr %len5, align 8, !dbg !1616, !tbaa !1617
  br label %if.end20, !dbg !1618

if.else:                                          ; preds = %if.end
  %data6 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1619
  %6 = load ptr, ptr %data6, align 8, !dbg !1619, !tbaa !1609
  store ptr %6, ptr %p, align 8, !dbg !1621, !tbaa !138
  br label %while.cond, !dbg !1622

while.cond:                                       ; preds = %if.end17, %if.else
  %7 = load ptr, ptr %p, align 8, !dbg !1623, !tbaa !138
  %8 = load i8, ptr %7, align 1, !dbg !1624, !tbaa !1625
  %conv = zext i8 %8 to i32, !dbg !1624
  %cmp7 = icmp ne i32 %conv, 0, !dbg !1626
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1622

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %p, align 8, !dbg !1627, !tbaa !138
  %10 = load i8, ptr %9, align 1, !dbg !1630, !tbaa !1625
  %conv9 = zext i8 %10 to i32, !dbg !1630
  %cmp10 = icmp eq i32 %conv9, 47, !dbg !1631
  br i1 %cmp10, label %if.then15, label %lor.lhs.false, !dbg !1632

lor.lhs.false:                                    ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !dbg !1633, !tbaa !138
  %12 = load i8, ptr %11, align 1, !dbg !1634, !tbaa !1625
  %conv12 = zext i8 %12 to i32, !dbg !1634
  %cmp13 = icmp eq i32 %conv12, 92, !dbg !1635
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !1636

if.then15:                                        ; preds = %lor.lhs.false, %while.body
  %13 = load ptr, ptr %p, align 8, !dbg !1637, !tbaa !138
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 1, !dbg !1639
  %data16 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1640
  store ptr %add.ptr, ptr %data16, align 8, !dbg !1641, !tbaa !1609
  br label %if.end17, !dbg !1642

if.end17:                                         ; preds = %if.then15, %lor.lhs.false
  %14 = load ptr, ptr %p, align 8, !dbg !1643, !tbaa !138
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1, !dbg !1643
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1643, !tbaa !138
  br label %while.cond, !dbg !1622, !llvm.loop !1644

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %p, align 8, !dbg !1647, !tbaa !138
  %data18 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1648
  %16 = load ptr, ptr %data18, align 8, !dbg !1648, !tbaa !1609
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64, !dbg !1649
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64, !dbg !1649
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1649
  %len19 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !1650
  store i64 %sub.ptr.sub, ptr %len19, align 8, !dbg !1651, !tbaa !1617
  br label %if.end20

if.end20:                                         ; preds = %while.end, %if.then4
  %17 = load ptr, ptr %L.addr, align 8, !dbg !1652, !tbaa !138
  %call21 = call i32 @lua_gettop(ptr noundef %17), !dbg !1653
  store i32 %call21, ptr %nargs, align 4, !dbg !1654, !tbaa !1182
  %len22 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !1655
  %18 = load i64, ptr %len22, align 8, !dbg !1655, !tbaa !1617
  %add = add i64 %18, 20, !dbg !1656
  %add23 = add i64 %add, 4, !dbg !1657
  %sub = sub i64 %add23, 1, !dbg !1658
  store i64 %sub, ptr %size, align 8, !dbg !1659, !tbaa !1257
  %namewhat = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 2, !dbg !1660
  %19 = load ptr, ptr %namewhat, align 8, !dbg !1660, !tbaa !1662
  %20 = load i8, ptr %19, align 1, !dbg !1664, !tbaa !1625
  %conv24 = sext i8 %20 to i32, !dbg !1664
  %cmp25 = icmp ne i32 %conv24, 0, !dbg !1665
  br i1 %cmp25, label %land.lhs.true, label %if.end36, !dbg !1666

land.lhs.true:                                    ; preds = %if.end20
  %what = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 3, !dbg !1667
  %21 = load ptr, ptr %what, align 8, !dbg !1667, !tbaa !1668
  %22 = load i8, ptr %21, align 1, !dbg !1669, !tbaa !1625
  %conv27 = sext i8 %22 to i32, !dbg !1669
  %cmp28 = icmp eq i32 %conv27, 76, !dbg !1670
  br i1 %cmp28, label %if.then30, label %if.end36, !dbg !1671

if.then30:                                        ; preds = %land.lhs.true
  %name31 = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 1, !dbg !1672
  %23 = load ptr, ptr %name31, align 8, !dbg !1672, !tbaa !1674
  %call32 = call i64 @strlen(ptr noundef %23) #8, !dbg !1672
  store i64 %call32, ptr %src_len, align 8, !dbg !1675, !tbaa !1257
  %24 = load i64, ptr %src_len, align 8, !dbg !1676, !tbaa !1257
  %add33 = add i64 %24, 5, !dbg !1677
  %sub34 = sub i64 %add33, 1, !dbg !1678
  %25 = load i64, ptr %size, align 8, !dbg !1679, !tbaa !1257
  %add35 = add i64 %25, %sub34, !dbg !1679
  store i64 %add35, ptr %size, align 8, !dbg !1679, !tbaa !1257
  br label %if.end36, !dbg !1680

if.end36:                                         ; preds = %if.then30, %land.lhs.true, %if.end20
  store i32 1, ptr %i, align 4, !dbg !1681, !tbaa !1182
  br label %for.cond, !dbg !1683

for.cond:                                         ; preds = %for.inc, %if.end36
  %26 = load i32, ptr %i, align 4, !dbg !1684, !tbaa !1182
  %27 = load i32, ptr %nargs, align 4, !dbg !1686, !tbaa !1182
  %cmp37 = icmp sle i32 %26, %27, !dbg !1687
  br i1 %cmp37, label %for.body, label %for.end, !dbg !1688

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %L.addr, align 8, !dbg !1689, !tbaa !138
  %29 = load i32, ptr %i, align 4, !dbg !1691, !tbaa !1182
  %call39 = call i32 @lua_type(ptr noundef %28, i32 noundef %29), !dbg !1692
  store i32 %call39, ptr %type, align 4, !dbg !1693, !tbaa !1182
  %30 = load i32, ptr %type, align 4, !dbg !1694, !tbaa !1182
  switch i32 %30, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb42
    i32 1, label %sw.bb44
    i32 5, label %sw.bb51
    i32 2, label %sw.bb59
  ], !dbg !1695

sw.bb:                                            ; preds = %for.body, %for.body
  %31 = load ptr, ptr %L.addr, align 8, !dbg !1696, !tbaa !138
  %32 = load i32, ptr %i, align 4, !dbg !1698, !tbaa !1182
  %call40 = call ptr @lua_tolstring(ptr noundef %31, i32 noundef %32, ptr noundef %len), !dbg !1699
  %33 = load i64, ptr %len, align 8, !dbg !1700, !tbaa !1257
  %34 = load i64, ptr %size, align 8, !dbg !1701, !tbaa !1257
  %add41 = add i64 %34, %33, !dbg !1701
  store i64 %add41, ptr %size, align 8, !dbg !1701, !tbaa !1257
  br label %sw.epilog, !dbg !1702

sw.bb42:                                          ; preds = %for.body
  %35 = load i64, ptr %size, align 8, !dbg !1703, !tbaa !1257
  %add43 = add i64 %35, 3, !dbg !1703
  store i64 %add43, ptr %size, align 8, !dbg !1703, !tbaa !1257
  br label %sw.epilog, !dbg !1704

sw.bb44:                                          ; preds = %for.body
  %36 = load ptr, ptr %L.addr, align 8, !dbg !1705, !tbaa !138
  %37 = load i32, ptr %i, align 4, !dbg !1707, !tbaa !1182
  %call45 = call i32 @lua_toboolean(ptr noundef %36, i32 noundef %37), !dbg !1708
  %tobool = icmp ne i32 %call45, 0, !dbg !1708
  br i1 %tobool, label %if.then46, label %if.else48, !dbg !1709

if.then46:                                        ; preds = %sw.bb44
  %38 = load i64, ptr %size, align 8, !dbg !1710, !tbaa !1257
  %add47 = add i64 %38, 4, !dbg !1710
  store i64 %add47, ptr %size, align 8, !dbg !1710, !tbaa !1257
  br label %if.end50, !dbg !1712

if.else48:                                        ; preds = %sw.bb44
  %39 = load i64, ptr %size, align 8, !dbg !1713, !tbaa !1257
  %add49 = add i64 %39, 5, !dbg !1713
  store i64 %add49, ptr %size, align 8, !dbg !1713, !tbaa !1257
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  br label %sw.epilog, !dbg !1715

sw.bb51:                                          ; preds = %for.body
  %40 = load ptr, ptr %L.addr, align 8, !dbg !1716, !tbaa !138
  %41 = load i32, ptr %i, align 4, !dbg !1718, !tbaa !1182
  %call52 = call i32 @luaL_callmeta(ptr noundef %40, i32 noundef %41, ptr noundef @.str.7), !dbg !1719
  %tobool53 = icmp ne i32 %call52, 0, !dbg !1719
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !1720

if.then54:                                        ; preds = %sw.bb51
  %42 = load ptr, ptr %L.addr, align 8, !dbg !1721, !tbaa !138
  %43 = load i32, ptr %i, align 4, !dbg !1723, !tbaa !1182
  %call55 = call i32 @luaL_argerror(ptr noundef %42, i32 noundef %43, ptr noundef @.str.8), !dbg !1724
  store i32 %call55, ptr %retval, align 4, !dbg !1725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1725

if.end56:                                         ; preds = %sw.bb51
  %44 = load ptr, ptr %L.addr, align 8, !dbg !1726, !tbaa !138
  %call57 = call ptr @lua_tolstring(ptr noundef %44, i32 noundef -1, ptr noundef %len), !dbg !1727
  %45 = load i64, ptr %len, align 8, !dbg !1728, !tbaa !1257
  %46 = load i64, ptr %size, align 8, !dbg !1729, !tbaa !1257
  %add58 = add i64 %46, %45, !dbg !1729
  store i64 %add58, ptr %size, align 8, !dbg !1729, !tbaa !1257
  br label %sw.epilog, !dbg !1730

sw.bb59:                                          ; preds = %for.body
  %47 = load ptr, ptr %L.addr, align 8, !dbg !1731, !tbaa !138
  %48 = load i32, ptr %i, align 4, !dbg !1733, !tbaa !1182
  %call60 = call ptr @lua_touserdata(ptr noundef %47, i32 noundef %48), !dbg !1734
  %cmp61 = icmp eq ptr %call60, null, !dbg !1735
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !1736

if.then63:                                        ; preds = %sw.bb59
  %49 = load i64, ptr %size, align 8, !dbg !1737, !tbaa !1257
  %add64 = add i64 %49, 4, !dbg !1737
  store i64 %add64, ptr %size, align 8, !dbg !1737, !tbaa !1257
  br label %sw.epilog, !dbg !1739

if.end65:                                         ; preds = %sw.bb59
  br label %for.inc, !dbg !1740

sw.default:                                       ; preds = %for.body
  %50 = load ptr, ptr %L.addr, align 8, !dbg !1741, !tbaa !138
  %51 = load ptr, ptr %L.addr, align 8, !dbg !1742, !tbaa !138
  %52 = load i32, ptr %type, align 4, !dbg !1743, !tbaa !1182
  %call66 = call ptr @lua_typename(ptr noundef %51, i32 noundef %52), !dbg !1744
  %call67 = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %50, ptr noundef @.str.9, ptr noundef %call66), !dbg !1745
  store ptr %call67, ptr %msg, align 8, !dbg !1746, !tbaa !138
  %53 = load ptr, ptr %L.addr, align 8, !dbg !1747, !tbaa !138
  %54 = load i32, ptr %i, align 4, !dbg !1748, !tbaa !1182
  %55 = load ptr, ptr %msg, align 8, !dbg !1749, !tbaa !138
  %call68 = call i32 @luaL_argerror(ptr noundef %53, i32 noundef %54, ptr noundef %55), !dbg !1750
  store i32 %call68, ptr %retval, align 4, !dbg !1751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1751

sw.epilog:                                        ; preds = %if.then63, %if.end56, %if.end50, %sw.bb42, %sw.bb
  br label %for.inc, !dbg !1752

for.inc:                                          ; preds = %sw.epilog, %if.end65
  %56 = load i32, ptr %i, align 4, !dbg !1753, !tbaa !1182
  %inc = add nsw i32 %56, 1, !dbg !1753
  store i32 %inc, ptr %i, align 4, !dbg !1753, !tbaa !1182
  br label %for.cond, !dbg !1754, !llvm.loop !1755

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %L.addr, align 8, !dbg !1757, !tbaa !138
  %58 = load i64, ptr %size, align 8, !dbg !1758, !tbaa !1257
  %call69 = call ptr @lua_newuserdata(ptr noundef %57, i64 noundef %58), !dbg !1759
  store ptr %call69, ptr %buf, align 8, !dbg !1760, !tbaa !138
  %59 = load ptr, ptr %buf, align 8, !dbg !1761, !tbaa !138
  %data70 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !1761
  %60 = load ptr, ptr %data70, align 8, !dbg !1761, !tbaa !1609
  %len71 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !1761
  %61 = load i64, ptr %len71, align 8, !dbg !1761, !tbaa !1617
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %60, i64 %61, i1 false), !dbg !1761
  %len72 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !1761
  %62 = load i64, ptr %len72, align 8, !dbg !1761, !tbaa !1617
  %add.ptr73 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !1761
  store ptr %add.ptr73, ptr %p, align 8, !dbg !1762, !tbaa !138
  %63 = load ptr, ptr %p, align 8, !dbg !1763, !tbaa !138
  %incdec.ptr74 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !1763
  store ptr %incdec.ptr74, ptr %p, align 8, !dbg !1763, !tbaa !138
  store i8 58, ptr %63, align 1, !dbg !1764, !tbaa !1625
  %64 = load ptr, ptr %p, align 8, !dbg !1765, !tbaa !138
  %currentline = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 5, !dbg !1766
  %65 = load i32, ptr %currentline, align 8, !dbg !1766, !tbaa !1767
  %tobool75 = icmp ne i32 %65, 0, !dbg !1768
  br i1 %tobool75, label %cond.true, label %cond.false, !dbg !1768

cond.true:                                        ; preds = %for.end
  %currentline76 = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 5, !dbg !1769
  %66 = load i32, ptr %currentline76, align 8, !dbg !1769, !tbaa !1767
  br label %cond.end, !dbg !1768

cond.false:                                       ; preds = %for.end
  %linedefined = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 7, !dbg !1770
  %67 = load i32, ptr %linedefined, align 8, !dbg !1770, !tbaa !1771
  br label %cond.end, !dbg !1768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %67, %cond.false ], !dbg !1768
  %call77 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %64, i64 noundef 20, ptr noundef @.str.10, i32 noundef %cond), !dbg !1772
  store ptr %call77, ptr %p, align 8, !dbg !1773, !tbaa !138
  %68 = load ptr, ptr %p, align 8, !dbg !1774, !tbaa !138
  %incdec.ptr78 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !1774
  store ptr %incdec.ptr78, ptr %p, align 8, !dbg !1774, !tbaa !138
  store i8 58, ptr %68, align 1, !dbg !1775, !tbaa !1625
  %69 = load ptr, ptr %p, align 8, !dbg !1776, !tbaa !138
  %incdec.ptr79 = getelementptr inbounds i8, ptr %69, i32 1, !dbg !1776
  store ptr %incdec.ptr79, ptr %p, align 8, !dbg !1776, !tbaa !138
  store i8 32, ptr %69, align 1, !dbg !1777, !tbaa !1625
  %namewhat80 = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 2, !dbg !1778
  %70 = load ptr, ptr %namewhat80, align 8, !dbg !1778, !tbaa !1662
  %71 = load i8, ptr %70, align 1, !dbg !1780, !tbaa !1625
  %conv81 = sext i8 %71 to i32, !dbg !1780
  %cmp82 = icmp ne i32 %conv81, 0, !dbg !1781
  br i1 %cmp82, label %land.lhs.true84, label %if.end96, !dbg !1782

land.lhs.true84:                                  ; preds = %cond.end
  %what85 = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 3, !dbg !1783
  %72 = load ptr, ptr %what85, align 8, !dbg !1783, !tbaa !1668
  %73 = load i8, ptr %72, align 1, !dbg !1784, !tbaa !1625
  %conv86 = sext i8 %73 to i32, !dbg !1784
  %cmp87 = icmp eq i32 %conv86, 76, !dbg !1785
  br i1 %cmp87, label %if.then89, label %if.end96, !dbg !1786

if.then89:                                        ; preds = %land.lhs.true84
  %74 = load ptr, ptr %p, align 8, !dbg !1787, !tbaa !138
  %name90 = getelementptr inbounds %struct.lua_Debug, ptr %ar, i32 0, i32 1, !dbg !1787
  %75 = load ptr, ptr %name90, align 8, !dbg !1787, !tbaa !1674
  %76 = load i64, ptr %src_len, align 8, !dbg !1787, !tbaa !1257
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %75, i64 %76, i1 false), !dbg !1787
  %77 = load i64, ptr %src_len, align 8, !dbg !1787, !tbaa !1257
  %add.ptr91 = getelementptr inbounds i8, ptr %74, i64 %77, !dbg !1787
  store ptr %add.ptr91, ptr %p, align 8, !dbg !1789, !tbaa !138
  %78 = load ptr, ptr %p, align 8, !dbg !1790, !tbaa !138
  %incdec.ptr92 = getelementptr inbounds i8, ptr %78, i32 1, !dbg !1790
  store ptr %incdec.ptr92, ptr %p, align 8, !dbg !1790, !tbaa !138
  store i8 40, ptr %78, align 1, !dbg !1791, !tbaa !1625
  %79 = load ptr, ptr %p, align 8, !dbg !1792, !tbaa !138
  %incdec.ptr93 = getelementptr inbounds i8, ptr %79, i32 1, !dbg !1792
  store ptr %incdec.ptr93, ptr %p, align 8, !dbg !1792, !tbaa !138
  store i8 41, ptr %79, align 1, !dbg !1793, !tbaa !1625
  %80 = load ptr, ptr %p, align 8, !dbg !1794, !tbaa !138
  %incdec.ptr94 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !1794
  store ptr %incdec.ptr94, ptr %p, align 8, !dbg !1794, !tbaa !138
  store i8 58, ptr %80, align 1, !dbg !1795, !tbaa !1625
  %81 = load ptr, ptr %p, align 8, !dbg !1796, !tbaa !138
  %incdec.ptr95 = getelementptr inbounds i8, ptr %81, i32 1, !dbg !1796
  store ptr %incdec.ptr95, ptr %p, align 8, !dbg !1796, !tbaa !138
  store i8 32, ptr %81, align 1, !dbg !1797, !tbaa !1625
  br label %if.end96, !dbg !1798

if.end96:                                         ; preds = %if.then89, %land.lhs.true84, %cond.end
  store i32 1, ptr %i, align 4, !dbg !1799, !tbaa !1182
  br label %for.cond97, !dbg !1801

for.cond97:                                       ; preds = %for.inc136, %if.end96
  %82 = load i32, ptr %i, align 4, !dbg !1802, !tbaa !1182
  %83 = load i32, ptr %nargs, align 4, !dbg !1804, !tbaa !1182
  %cmp98 = icmp sle i32 %82, %83, !dbg !1805
  br i1 %cmp98, label %for.body100, label %for.end138, !dbg !1806

for.body100:                                      ; preds = %for.cond97
  %84 = load ptr, ptr %L.addr, align 8, !dbg !1807, !tbaa !138
  %85 = load i32, ptr %i, align 4, !dbg !1809, !tbaa !1182
  %call101 = call i32 @lua_type(ptr noundef %84, i32 noundef %85), !dbg !1810
  store i32 %call101, ptr %type, align 4, !dbg !1811, !tbaa !1182
  %86 = load i32, ptr %type, align 4, !dbg !1812, !tbaa !1182
  switch i32 %86, label %sw.default133 [
    i32 3, label %sw.bb102
    i32 4, label %sw.bb102
    i32 0, label %sw.bb105
    i32 1, label %sw.bb109
    i32 5, label %sw.bb124
    i32 2, label %sw.bb128
  ], !dbg !1813

sw.bb102:                                         ; preds = %for.body100, %for.body100
  %87 = load ptr, ptr %L.addr, align 8, !dbg !1814, !tbaa !138
  %88 = load i32, ptr %i, align 4, !dbg !1816, !tbaa !1182
  %call103 = call ptr @lua_tolstring(ptr noundef %87, i32 noundef %88, ptr noundef %len), !dbg !1817
  store ptr %call103, ptr %q, align 8, !dbg !1818, !tbaa !138
  %89 = load ptr, ptr %p, align 8, !dbg !1819, !tbaa !138
  %90 = load ptr, ptr %q, align 8, !dbg !1819, !tbaa !138
  %91 = load i64, ptr %len, align 8, !dbg !1819, !tbaa !1257
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr align 1 %90, i64 %91, i1 false), !dbg !1819
  %92 = load i64, ptr %len, align 8, !dbg !1819, !tbaa !1257
  %add.ptr104 = getelementptr inbounds i8, ptr %89, i64 %92, !dbg !1819
  store ptr %add.ptr104, ptr %p, align 8, !dbg !1820, !tbaa !138
  br label %sw.epilog135, !dbg !1821

sw.bb105:                                         ; preds = %for.body100
  %93 = load ptr, ptr %p, align 8, !dbg !1822, !tbaa !138
  %incdec.ptr106 = getelementptr inbounds i8, ptr %93, i32 1, !dbg !1822
  store ptr %incdec.ptr106, ptr %p, align 8, !dbg !1822, !tbaa !138
  store i8 110, ptr %93, align 1, !dbg !1823, !tbaa !1625
  %94 = load ptr, ptr %p, align 8, !dbg !1824, !tbaa !138
  %incdec.ptr107 = getelementptr inbounds i8, ptr %94, i32 1, !dbg !1824
  store ptr %incdec.ptr107, ptr %p, align 8, !dbg !1824, !tbaa !138
  store i8 105, ptr %94, align 1, !dbg !1825, !tbaa !1625
  %95 = load ptr, ptr %p, align 8, !dbg !1826, !tbaa !138
  %incdec.ptr108 = getelementptr inbounds i8, ptr %95, i32 1, !dbg !1826
  store ptr %incdec.ptr108, ptr %p, align 8, !dbg !1826, !tbaa !138
  store i8 108, ptr %95, align 1, !dbg !1827, !tbaa !1625
  br label %sw.epilog135, !dbg !1828

sw.bb109:                                         ; preds = %for.body100
  %96 = load ptr, ptr %L.addr, align 8, !dbg !1829, !tbaa !138
  %97 = load i32, ptr %i, align 4, !dbg !1831, !tbaa !1182
  %call110 = call i32 @lua_toboolean(ptr noundef %96, i32 noundef %97), !dbg !1832
  %tobool111 = icmp ne i32 %call110, 0, !dbg !1832
  br i1 %tobool111, label %if.then112, label %if.else117, !dbg !1833

if.then112:                                       ; preds = %sw.bb109
  %98 = load ptr, ptr %p, align 8, !dbg !1834, !tbaa !138
  %incdec.ptr113 = getelementptr inbounds i8, ptr %98, i32 1, !dbg !1834
  store ptr %incdec.ptr113, ptr %p, align 8, !dbg !1834, !tbaa !138
  store i8 116, ptr %98, align 1, !dbg !1836, !tbaa !1625
  %99 = load ptr, ptr %p, align 8, !dbg !1837, !tbaa !138
  %incdec.ptr114 = getelementptr inbounds i8, ptr %99, i32 1, !dbg !1837
  store ptr %incdec.ptr114, ptr %p, align 8, !dbg !1837, !tbaa !138
  store i8 114, ptr %99, align 1, !dbg !1838, !tbaa !1625
  %100 = load ptr, ptr %p, align 8, !dbg !1839, !tbaa !138
  %incdec.ptr115 = getelementptr inbounds i8, ptr %100, i32 1, !dbg !1839
  store ptr %incdec.ptr115, ptr %p, align 8, !dbg !1839, !tbaa !138
  store i8 117, ptr %100, align 1, !dbg !1840, !tbaa !1625
  %101 = load ptr, ptr %p, align 8, !dbg !1841, !tbaa !138
  %incdec.ptr116 = getelementptr inbounds i8, ptr %101, i32 1, !dbg !1841
  store ptr %incdec.ptr116, ptr %p, align 8, !dbg !1841, !tbaa !138
  store i8 101, ptr %101, align 1, !dbg !1842, !tbaa !1625
  br label %if.end123, !dbg !1843

if.else117:                                       ; preds = %sw.bb109
  %102 = load ptr, ptr %p, align 8, !dbg !1844, !tbaa !138
  %incdec.ptr118 = getelementptr inbounds i8, ptr %102, i32 1, !dbg !1844
  store ptr %incdec.ptr118, ptr %p, align 8, !dbg !1844, !tbaa !138
  store i8 102, ptr %102, align 1, !dbg !1846, !tbaa !1625
  %103 = load ptr, ptr %p, align 8, !dbg !1847, !tbaa !138
  %incdec.ptr119 = getelementptr inbounds i8, ptr %103, i32 1, !dbg !1847
  store ptr %incdec.ptr119, ptr %p, align 8, !dbg !1847, !tbaa !138
  store i8 97, ptr %103, align 1, !dbg !1848, !tbaa !1625
  %104 = load ptr, ptr %p, align 8, !dbg !1849, !tbaa !138
  %incdec.ptr120 = getelementptr inbounds i8, ptr %104, i32 1, !dbg !1849
  store ptr %incdec.ptr120, ptr %p, align 8, !dbg !1849, !tbaa !138
  store i8 108, ptr %104, align 1, !dbg !1850, !tbaa !1625
  %105 = load ptr, ptr %p, align 8, !dbg !1851, !tbaa !138
  %incdec.ptr121 = getelementptr inbounds i8, ptr %105, i32 1, !dbg !1851
  store ptr %incdec.ptr121, ptr %p, align 8, !dbg !1851, !tbaa !138
  store i8 115, ptr %105, align 1, !dbg !1852, !tbaa !1625
  %106 = load ptr, ptr %p, align 8, !dbg !1853, !tbaa !138
  %incdec.ptr122 = getelementptr inbounds i8, ptr %106, i32 1, !dbg !1853
  store ptr %incdec.ptr122, ptr %p, align 8, !dbg !1853, !tbaa !138
  store i8 101, ptr %106, align 1, !dbg !1854, !tbaa !1625
  br label %if.end123

if.end123:                                        ; preds = %if.else117, %if.then112
  br label %sw.epilog135, !dbg !1855

sw.bb124:                                         ; preds = %for.body100
  %107 = load ptr, ptr %L.addr, align 8, !dbg !1856, !tbaa !138
  %108 = load i32, ptr %i, align 4, !dbg !1857, !tbaa !1182
  %call125 = call i32 @luaL_callmeta(ptr noundef %107, i32 noundef %108, ptr noundef @.str.7), !dbg !1858
  %109 = load ptr, ptr %L.addr, align 8, !dbg !1859, !tbaa !138
  %call126 = call ptr @lua_tolstring(ptr noundef %109, i32 noundef -1, ptr noundef %len), !dbg !1860
  store ptr %call126, ptr %q, align 8, !dbg !1861, !tbaa !138
  %110 = load ptr, ptr %p, align 8, !dbg !1862, !tbaa !138
  %111 = load ptr, ptr %q, align 8, !dbg !1862, !tbaa !138
  %112 = load i64, ptr %len, align 8, !dbg !1862, !tbaa !1257
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %111, i64 %112, i1 false), !dbg !1862
  %113 = load i64, ptr %len, align 8, !dbg !1862, !tbaa !1257
  %add.ptr127 = getelementptr inbounds i8, ptr %110, i64 %113, !dbg !1862
  store ptr %add.ptr127, ptr %p, align 8, !dbg !1863, !tbaa !138
  br label %sw.epilog135, !dbg !1864

sw.bb128:                                         ; preds = %for.body100
  %114 = load ptr, ptr %p, align 8, !dbg !1865, !tbaa !138
  %incdec.ptr129 = getelementptr inbounds i8, ptr %114, i32 1, !dbg !1865
  store ptr %incdec.ptr129, ptr %p, align 8, !dbg !1865, !tbaa !138
  store i8 110, ptr %114, align 1, !dbg !1866, !tbaa !1625
  %115 = load ptr, ptr %p, align 8, !dbg !1867, !tbaa !138
  %incdec.ptr130 = getelementptr inbounds i8, ptr %115, i32 1, !dbg !1867
  store ptr %incdec.ptr130, ptr %p, align 8, !dbg !1867, !tbaa !138
  store i8 117, ptr %115, align 1, !dbg !1868, !tbaa !1625
  %116 = load ptr, ptr %p, align 8, !dbg !1869, !tbaa !138
  %incdec.ptr131 = getelementptr inbounds i8, ptr %116, i32 1, !dbg !1869
  store ptr %incdec.ptr131, ptr %p, align 8, !dbg !1869, !tbaa !138
  store i8 108, ptr %116, align 1, !dbg !1870, !tbaa !1625
  %117 = load ptr, ptr %p, align 8, !dbg !1871, !tbaa !138
  %incdec.ptr132 = getelementptr inbounds i8, ptr %117, i32 1, !dbg !1871
  store ptr %incdec.ptr132, ptr %p, align 8, !dbg !1871, !tbaa !138
  store i8 108, ptr %117, align 1, !dbg !1872, !tbaa !1625
  br label %sw.epilog135, !dbg !1873

sw.default133:                                    ; preds = %for.body100
  %118 = load ptr, ptr %L.addr, align 8, !dbg !1874, !tbaa !138
  %call134 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %118, ptr noundef @.str.11), !dbg !1875
  store i32 %call134, ptr %retval, align 4, !dbg !1876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1876

sw.epilog135:                                     ; preds = %sw.bb128, %sw.bb124, %if.end123, %sw.bb105, %sw.bb102
  br label %for.inc136, !dbg !1877

for.inc136:                                       ; preds = %sw.epilog135
  %119 = load i32, ptr %i, align 4, !dbg !1878, !tbaa !1182
  %inc137 = add nsw i32 %119, 1, !dbg !1878
  store i32 %inc137, ptr %i, align 4, !dbg !1878, !tbaa !1182
  br label %for.cond97, !dbg !1879, !llvm.loop !1880

for.end138:                                       ; preds = %for.cond97
  %120 = load ptr, ptr %p, align 8, !dbg !1882, !tbaa !138
  %121 = load ptr, ptr %buf, align 8, !dbg !1884, !tbaa !138
  %sub.ptr.lhs.cast139 = ptrtoint ptr %120 to i64, !dbg !1885
  %sub.ptr.rhs.cast140 = ptrtoint ptr %121 to i64, !dbg !1885
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140, !dbg !1885
  %122 = load i64, ptr %size, align 8, !dbg !1886, !tbaa !1257
  %cmp142 = icmp sgt i64 %sub.ptr.sub141, %122, !dbg !1887
  br i1 %cmp142, label %if.then144, label %if.end151, !dbg !1888

if.then144:                                       ; preds = %for.end138
  %123 = load ptr, ptr %L.addr, align 8, !dbg !1889, !tbaa !138
  %124 = load ptr, ptr %p, align 8, !dbg !1891, !tbaa !138
  %125 = load ptr, ptr %buf, align 8, !dbg !1892, !tbaa !138
  %sub.ptr.lhs.cast145 = ptrtoint ptr %124 to i64, !dbg !1893
  %sub.ptr.rhs.cast146 = ptrtoint ptr %125 to i64, !dbg !1893
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146, !dbg !1893
  %conv148 = trunc i64 %sub.ptr.sub147 to i32, !dbg !1894
  %126 = load i64, ptr %size, align 8, !dbg !1895, !tbaa !1257
  %conv149 = trunc i64 %126 to i32, !dbg !1896
  %call150 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %123, ptr noundef @.str.12, i32 noundef %conv148, i32 noundef %conv149), !dbg !1897
  store i32 %call150, ptr %retval, align 4, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

if.end151:                                        ; preds = %for.end138
  %127 = load ptr, ptr %log.addr, align 8, !dbg !1899, !tbaa !138
  %log_level152 = getelementptr inbounds %struct.ngx_log_s, ptr %127, i32 0, i32 0, !dbg !1899
  %128 = load i64, ptr %log_level152, align 8, !dbg !1899, !tbaa !1439
  %129 = load i64, ptr %level.addr, align 8, !dbg !1899, !tbaa !1257
  %cmp153 = icmp uge i64 %128, %129, !dbg !1899
  br i1 %cmp153, label %if.then155, label %if.end159, !dbg !1901

if.then155:                                       ; preds = %if.end151
  %130 = load i64, ptr %level.addr, align 8, !dbg !1899, !tbaa !1257
  %131 = load ptr, ptr %log.addr, align 8, !dbg !1899, !tbaa !138
  %132 = load ptr, ptr %ident.addr, align 8, !dbg !1899, !tbaa !138
  %133 = load ptr, ptr %p, align 8, !dbg !1899, !tbaa !138
  %134 = load ptr, ptr %buf, align 8, !dbg !1899, !tbaa !138
  %sub.ptr.lhs.cast156 = ptrtoint ptr %133 to i64, !dbg !1899
  %sub.ptr.rhs.cast157 = ptrtoint ptr %134 to i64, !dbg !1899
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157, !dbg !1899
  %135 = load ptr, ptr %buf, align 8, !dbg !1899, !tbaa !138
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef %130, ptr noundef %131, i32 noundef 0, ptr noundef @.str.13, ptr noundef %132, i64 noundef %sub.ptr.sub158, ptr noundef %135), !dbg !1899
  br label %if.end159, !dbg !1899

if.end159:                                        ; preds = %if.then155, %if.end151
  store i32 0, ptr %retval, align 4, !dbg !1902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1902

cleanup:                                          ; preds = %if.end159, %if.then144, %sw.default133, %sw.default, %if.then54, %if.then
  call void @llvm.lifetime.end.p0(i64 120, ptr %ar) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %msg) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_len) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %nargs) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !1903
  %136 = load i32, ptr %retval, align 4, !dbg !1903
  ret i32 %136, !dbg !1903
}

declare !dbg !1904 ptr @lua_getexdata(ptr noundef) #1

declare !dbg !1907 i32 @lua_getstack(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !1911 i32 @lua_getinfo(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1914 i32 @lua_gettop(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1915 i64 @strlen(ptr noundef) #4

declare !dbg !1919 i32 @lua_type(ptr noundef, i32 noundef) #1

declare !dbg !1922 ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !1925 i32 @lua_toboolean(ptr noundef, i32 noundef) #1

declare !dbg !1926 i32 @luaL_callmeta(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !1927 ptr @lua_touserdata(ptr noundef, i32 noundef) #1

declare !dbg !1930 ptr @lua_typename(ptr noundef, i32 noundef) #1

declare !dbg !1933 ptr @lua_newuserdata(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !1936 i32 @luaL_error(ptr noundef, ptr noundef, ...) #1

declare !dbg !1939 void @lua_pushinteger(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!84}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_log.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "12e7a62e20d3d776724694c0819b80aa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 45)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 18)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !3, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 14)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 11)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !14, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 49)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 3)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 25)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 22)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !9, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 7)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !9, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !9, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 5)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !3, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !71, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !62, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !71, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !9, isLocal: true, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !85, globals: !121, splitDebugInlining: false, nameTableKind: None)
!85 = !{!86, !106, !107, !108, !109, !92, !110, !116, !118, !103}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_log_ringbuf_t", file: !88, line: 25, baseType: !89)
!88 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_log_ringbuf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "350109297ac1408c26b307eb225c3438")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 17, size: 448, elements: !90)
!90 = !{!91, !97, !99, !100, !101, !102, !105}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "filter_level", scope: !89, file: !88, line: 18, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !93, line: 79, baseType: !94)
!93 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !95, line: 90, baseType: !96)
!95 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !89, file: !88, line: 19, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !89, file: !88, line: 20, baseType: !98, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 21, baseType: !98, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !89, file: !88, line: 22, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !89, file: !88, line: 23, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 29, baseType: !96)
!104 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !88, line: 24, baseType: !103, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !112, line: 33, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !114, line: 31, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !112, line: 87, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !114, line: 153, baseType: !120)
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !{!0, !7, !12, !17, !22, !24, !29, !31, !36, !38, !43, !48, !53, !58, !60, !65, !67, !69, !74, !76, !78, !80, !82}
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 8, !"PIC Level", i32 2}
!126 = !{i32 7, !"PIE Level", i32 2}
!127 = !{i32 7, !"uwtable", i32 2}
!128 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!129 = distinct !DISubprogram(name: "ngx_stream_lua_inject_log_api", scope: !2, file: !2, line: 281, type: !130, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !134, line: 51, baseType: !135)
!134 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !134, line: 51, flags: DIFlagFwdDecl)
!136 = !{!137}
!137 = !DILocalVariable(name: "L", arg: 1, scope: !129, file: !2, line: 281, type: !132)
!138 = !{!139, !139, i64 0}
!139 = !{!"any pointer", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 281, column: 42, scope: !129)
!143 = !DILocation(line: 283, column: 38, scope: !129)
!144 = !DILocation(line: 283, column: 5, scope: !129)
!145 = !DILocation(line: 285, column: 5, scope: !129)
!146 = !DILocation(line: 286, column: 18, scope: !129)
!147 = !DILocation(line: 286, column: 5, scope: !129)
!148 = !DILocation(line: 288, column: 5, scope: !129)
!149 = !DILocation(line: 289, column: 5, scope: !129)
!150 = !DILocation(line: 290, column: 1, scope: !129)
!151 = distinct !DISubprogram(name: "ngx_stream_lua_inject_log_consts", scope: !2, file: !2, line: 294, type: !130, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !152)
!152 = !{!153}
!153 = !DILocalVariable(name: "L", arg: 1, scope: !151, file: !2, line: 294, type: !132)
!154 = !DILocation(line: 294, column: 45, scope: !151)
!155 = !DILocation(line: 297, column: 21, scope: !151)
!156 = !DILocation(line: 297, column: 5, scope: !151)
!157 = !DILocation(line: 298, column: 18, scope: !151)
!158 = !DILocation(line: 298, column: 5, scope: !151)
!159 = !DILocation(line: 300, column: 21, scope: !151)
!160 = !DILocation(line: 300, column: 5, scope: !151)
!161 = !DILocation(line: 301, column: 18, scope: !151)
!162 = !DILocation(line: 301, column: 5, scope: !151)
!163 = !DILocation(line: 303, column: 21, scope: !151)
!164 = !DILocation(line: 303, column: 5, scope: !151)
!165 = !DILocation(line: 304, column: 18, scope: !151)
!166 = !DILocation(line: 304, column: 5, scope: !151)
!167 = !DILocation(line: 306, column: 21, scope: !151)
!168 = !DILocation(line: 306, column: 5, scope: !151)
!169 = !DILocation(line: 307, column: 18, scope: !151)
!170 = !DILocation(line: 307, column: 5, scope: !151)
!171 = !DILocation(line: 309, column: 21, scope: !151)
!172 = !DILocation(line: 309, column: 5, scope: !151)
!173 = !DILocation(line: 310, column: 18, scope: !151)
!174 = !DILocation(line: 310, column: 5, scope: !151)
!175 = !DILocation(line: 312, column: 21, scope: !151)
!176 = !DILocation(line: 312, column: 5, scope: !151)
!177 = !DILocation(line: 313, column: 18, scope: !151)
!178 = !DILocation(line: 313, column: 5, scope: !151)
!179 = !DILocation(line: 315, column: 21, scope: !151)
!180 = !DILocation(line: 315, column: 5, scope: !151)
!181 = !DILocation(line: 316, column: 18, scope: !151)
!182 = !DILocation(line: 316, column: 5, scope: !151)
!183 = !DILocation(line: 318, column: 21, scope: !151)
!184 = !DILocation(line: 318, column: 5, scope: !151)
!185 = !DILocation(line: 319, column: 18, scope: !151)
!186 = !DILocation(line: 319, column: 5, scope: !151)
!187 = !DILocation(line: 321, column: 21, scope: !151)
!188 = !DILocation(line: 321, column: 5, scope: !151)
!189 = !DILocation(line: 322, column: 18, scope: !151)
!190 = !DILocation(line: 322, column: 5, scope: !151)
!191 = !DILocation(line: 324, column: 1, scope: !151)
!192 = !DISubprogram(name: "lua_pushcclosure", scope: !134, file: !134, line: 169, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !132, !195, !109}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !134, line: 53, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!109, !132}
!199 = distinct !DISubprogram(name: "ngx_stream_lua_ngx_log", scope: !2, file: !2, line: 43, type: !197, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !200)
!200 = !{!201, !202, !252, !1129, !1130}
!201 = !DILocalVariable(name: "L", arg: 1, scope: !199, file: !2, line: 43, type: !132)
!202 = !DILocalVariable(name: "log", scope: !199, file: !2, line: 45, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !205, line: 20, baseType: !206)
!205 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !207, line: 50, size: 640, elements: !208)
!207 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!208 = !{!209, !210, !231, !234, !238, !243, !244, !249, !250, !251}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !206, file: !207, line: 51, baseType: !92, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !206, file: !207, line: 52, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !205, line: 21, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !214, line: 89, size: 320, elements: !215)
!214 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!215 = !{!216, !219, !226, !230}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !213, file: !214, line: 90, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !218, line: 16, baseType: !109)
!218 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !214, line: 91, baseType: !220, size: 128, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !221, line: 19, baseType: !222)
!221 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 16, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !222, file: !221, line: 17, baseType: !103, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !221, line: 18, baseType: !110, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !213, file: !214, line: 93, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !211, !203}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !214, line: 94, baseType: !106, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !206, file: !207, line: 54, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !233, line: 98, baseType: !96)
!233 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!234 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !206, file: !207, line: 56, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !236, line: 10, baseType: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !114, line: 160, baseType: !120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !206, file: !207, line: 58, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !207, line: 45, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!110, !203, !110, !103}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !207, line: 59, baseType: !106, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !206, file: !207, line: 61, baseType: !245, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !207, line: 46, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !203, !92, !110, !103}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !206, file: !207, line: 62, baseType: !106, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !206, file: !207, line: 70, baseType: !98, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !207, line: 72, baseType: !203, size: 64, offset: 576)
!252 = !DILocalVariable(name: "r", scope: !199, file: !2, line: 46, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_request_t", file: !255, line: 22, baseType: !256)
!255 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ccaa5a9459f8752c4a35875ca3232d17")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_request_s", file: !255, line: 27, size: 384, elements: !257)
!257 = !{!258, !618, !1113, !1114, !1123, !1128}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !256, file: !255, line: 28, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !205, line: 26, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !262, line: 124, size: 1920, elements: !263)
!262 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!263 = !{!264, !265, !322, !323, !326, !334, !336, !422, !427, !503, !504, !505, !542, !543, !544, !545, !546, !547, !553, !594, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !261, file: !262, line: 125, baseType: !106, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !261, file: !262, line: 126, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !205, line: 24, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !269, line: 30, size: 768, elements: !270)
!269 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !299, !300, !301, !314}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !268, file: !269, line: 31, baseType: !106, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !268, file: !269, line: 33, baseType: !108, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !268, file: !269, line: 35, baseType: !108, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !268, file: !269, line: 38, baseType: !108, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !268, file: !269, line: 44, baseType: !108, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !268, file: !269, line: 46, baseType: !108, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !268, file: !269, line: 49, baseType: !108, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !268, file: !269, line: 51, baseType: !108, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !268, file: !269, line: 54, baseType: !108, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !268, file: !269, line: 56, baseType: !108, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !268, file: !269, line: 57, baseType: !108, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !268, file: !269, line: 59, baseType: !108, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !268, file: !269, line: 60, baseType: !108, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !268, file: !269, line: 62, baseType: !108, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !268, file: !269, line: 64, baseType: !108, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !268, file: !269, line: 67, baseType: !108, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !268, file: !269, line: 69, baseType: !108, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !268, file: !269, line: 71, baseType: !108, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !268, file: !269, line: 74, baseType: !108, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !268, file: !269, line: 75, baseType: !108, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !268, file: !269, line: 77, baseType: !108, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !268, file: !269, line: 80, baseType: !108, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !268, file: !269, line: 110, baseType: !108, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !268, file: !269, line: 113, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !205, line: 32, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !266}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !268, file: !269, line: 120, baseType: !92, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !268, file: !269, line: 122, baseType: !203, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !268, file: !269, line: 124, baseType: !302, size: 320, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !303, line: 20, baseType: !304)
!303 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !303, line: 22, size: 320, elements: !305)
!305 = !{!306, !308, !310, !311, !312, !313}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !304, file: !303, line: 23, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !303, line: 16, baseType: !92)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !304, file: !303, line: 24, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !304, file: !303, line: 25, baseType: !309, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !303, line: 26, baseType: !309, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !304, file: !303, line: 27, baseType: !111, size: 8, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !304, file: !303, line: 28, baseType: !111, size: 8, offset: 264)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !268, file: !269, line: 127, baseType: !315, size: 128, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !316, line: 16, baseType: !317)
!316 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !316, line: 18, size: 128, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !317, file: !316, line: 19, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !316, line: 20, baseType: !320, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !261, file: !262, line: 127, baseType: !266, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !261, file: !262, line: 129, baseType: !324, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !325, line: 17, baseType: !109)
!325 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !261, file: !262, line: 131, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !328, line: 19, baseType: !329)
!328 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !259, !110, !103}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !112, line: 108, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !114, line: 194, baseType: !120)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !261, file: !262, line: 132, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !328, line: 22, baseType: !329)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !261, file: !262, line: 133, baseType: !337, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !328, line: 20, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!332, !259, !341, !118}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !205, line: 19, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !344, line: 59, size: 128, elements: !345)
!344 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!345 = !{!346, !421}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !343, file: !344, line: 60, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !344, line: 18, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !344, line: 20, size: 640, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !359, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !349, file: !344, line: 21, baseType: !110, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !349, file: !344, line: 22, baseType: !110, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !349, file: !344, line: 23, baseType: !118, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !349, file: !344, line: 24, baseType: !118, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !349, file: !344, line: 26, baseType: !110, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !349, file: !344, line: 27, baseType: !110, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !349, file: !344, line: 28, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !344, line: 16, baseType: !106)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !349, file: !344, line: 29, baseType: !360, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !205, line: 23, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !363, line: 16, size: 1600, elements: !364)
!363 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!364 = !{!365, !366, !367, !403, !404, !405, !406, !407}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !362, file: !363, line: 17, baseType: !217, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !363, line: 18, baseType: !220, size: 128, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !362, file: !363, line: 19, baseType: !368, size: 1152, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !218, line: 17, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !370, line: 26, size: 1152, elements: !371)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!371 = !{!372, !374, !376, !378, !380, !382, !384, !385, !386, !388, !390, !392, !399, !400, !401}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !369, file: !370, line: 31, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !114, line: 145, baseType: !96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !369, file: !370, line: 36, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !114, line: 148, baseType: !96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !369, file: !370, line: 44, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !114, line: 151, baseType: !96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !369, file: !370, line: 45, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !114, line: 150, baseType: !108)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !369, file: !370, line: 47, baseType: !381, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !114, line: 146, baseType: !108)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !369, file: !370, line: 48, baseType: !383, size: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !114, line: 147, baseType: !108)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !369, file: !370, line: 50, baseType: !109, size: 32, offset: 288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !369, file: !370, line: 52, baseType: !373, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !369, file: !370, line: 57, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !114, line: 152, baseType: !120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !369, file: !370, line: 61, baseType: !389, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !114, line: 175, baseType: !120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !369, file: !370, line: 63, baseType: !391, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !114, line: 180, baseType: !120)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !369, file: !370, line: 74, baseType: !393, size: 128, offset: 576)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !394, line: 11, size: 128, elements: !395)
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !393, file: !394, line: 16, baseType: !237, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !393, file: !394, line: 21, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !114, line: 197, baseType: !120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !369, file: !370, line: 75, baseType: !393, size: 128, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !369, file: !370, line: 76, baseType: !393, size: 128, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !369, file: !370, line: 89, baseType: !402, size: 192, offset: 960)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !46)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !362, file: !363, line: 21, baseType: !118, size: 64, offset: 1344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !362, file: !363, line: 22, baseType: !118, size: 64, offset: 1408)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !362, file: !363, line: 24, baseType: !203, size: 64, offset: 1472)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !362, file: !363, line: 37, baseType: !108, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !362, file: !363, line: 38, baseType: !108, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !349, file: !344, line: 30, baseType: !347, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !349, file: !344, line: 34, baseType: !108, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !349, file: !344, line: 40, baseType: !108, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !344, line: 43, baseType: !108, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !349, file: !344, line: 45, baseType: !108, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !349, file: !344, line: 46, baseType: !108, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !349, file: !344, line: 47, baseType: !108, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !349, file: !344, line: 48, baseType: !108, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !349, file: !344, line: 49, baseType: !108, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !349, file: !344, line: 50, baseType: !108, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !349, file: !344, line: 52, baseType: !108, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !349, file: !344, line: 53, baseType: !108, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !349, file: !344, line: 55, baseType: !109, size: 32, offset: 608)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !344, line: 61, baseType: !341, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !261, file: !262, line: 134, baseType: !423, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !328, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!341, !259, !341, !118}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !261, file: !262, line: 136, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !262, line: 16, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !262, line: 18, size: 2432, elements: !431)
!431 = !{!432, !433, !443, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !461, !462, !463, !464, !465, !466, !469, !470, !471, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !430, file: !262, line: 19, baseType: !324, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !430, file: !262, line: 21, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !436, line: 180, size: 128, elements: !437)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!437 = !{!438, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !435, file: !436, line: 182, baseType: !439, size: 16)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !440, line: 28, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!441 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !435, file: !436, line: 183, baseType: !26, size: 112, offset: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !430, file: !262, line: 22, baseType: !444, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !445, line: 274, baseType: !446)
!445 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !114, line: 210, baseType: !108)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !430, file: !262, line: 23, baseType: !103, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !430, file: !262, line: 24, baseType: !220, size: 128, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !262, line: 26, baseType: !109, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !430, file: !262, line: 28, baseType: !109, size: 32, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !430, file: !262, line: 29, baseType: !109, size: 32, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !430, file: !262, line: 30, baseType: !109, size: 32, offset: 480)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !430, file: !262, line: 32, baseType: !109, size: 32, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !430, file: !262, line: 33, baseType: !109, size: 32, offset: 544)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !430, file: !262, line: 34, baseType: !109, size: 32, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !430, file: !262, line: 38, baseType: !457, size: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !205, line: 33, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !259}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !430, file: !262, line: 40, baseType: !106, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !430, file: !262, line: 42, baseType: !204, size: 640, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !430, file: !262, line: 43, baseType: !203, size: 64, offset: 1408)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !430, file: !262, line: 45, baseType: !103, size: 64, offset: 1472)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !430, file: !262, line: 47, baseType: !103, size: 64, offset: 1536)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !430, file: !262, line: 49, baseType: !467, size: 64, offset: 1600)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !468, line: 16, baseType: !307)
!468 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!469 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !430, file: !262, line: 51, baseType: !428, size: 64, offset: 1664)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !430, file: !262, line: 52, baseType: !259, size: 64, offset: 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !430, file: !262, line: 54, baseType: !472, size: 192, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !303, line: 32, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !303, line: 37, size: 192, elements: !474)
!474 = !{!475, !476, !477}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !473, file: !303, line: 38, baseType: !309, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !473, file: !303, line: 39, baseType: !309, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !473, file: !303, line: 40, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !303, line: 34, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !309, !309, !309}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !430, file: !262, line: 55, baseType: !302, size: 320, offset: 1984)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !430, file: !262, line: 57, baseType: !92, size: 64, offset: 2304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !430, file: !262, line: 59, baseType: !108, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !430, file: !262, line: 60, baseType: !108, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !430, file: !262, line: 61, baseType: !108, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !430, file: !262, line: 63, baseType: !108, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !430, file: !262, line: 64, baseType: !108, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !430, file: !262, line: 65, baseType: !108, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !430, file: !262, line: 66, baseType: !108, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !430, file: !262, line: 67, baseType: !108, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !430, file: !262, line: 68, baseType: !108, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !430, file: !262, line: 69, baseType: !108, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !430, file: !262, line: 70, baseType: !108, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !430, file: !262, line: 73, baseType: !108, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !430, file: !262, line: 75, baseType: !108, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !430, file: !262, line: 76, baseType: !108, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !430, file: !262, line: 77, baseType: !108, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !430, file: !262, line: 79, baseType: !108, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !430, file: !262, line: 80, baseType: !108, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !430, file: !262, line: 81, baseType: !108, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !430, file: !262, line: 90, baseType: !109, size: 32, offset: 2400)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !261, file: !262, line: 138, baseType: !118, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !261, file: !262, line: 140, baseType: !203, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !261, file: !262, line: 142, baseType: !506, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !205, line: 18, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !509, line: 57, size: 640, elements: !510)
!509 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!510 = !{!511, !519, !520, !521, !522, !529, !541}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !508, file: !509, line: 58, baseType: !512, size: 256)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !509, line: 54, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 49, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !513, file: !509, line: 50, baseType: !110, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !513, file: !509, line: 51, baseType: !110, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !509, line: 52, baseType: !506, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !513, file: !509, line: 53, baseType: !92, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !508, file: !509, line: 59, baseType: !103, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !508, file: !509, line: 60, baseType: !506, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !508, file: !509, line: 61, baseType: !341, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !508, file: !509, line: 62, baseType: !523, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !509, line: 41, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !509, line: 43, size: 128, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !509, line: 44, baseType: !523, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !525, file: !509, line: 45, baseType: !106, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !508, file: !509, line: 63, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !509, line: 32, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !509, line: 34, size: 192, elements: !533)
!533 = !{!534, !539, !540}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !509, line: 35, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !509, line: 30, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !106}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !532, file: !509, line: 36, baseType: !106, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !509, line: 37, baseType: !530, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !508, file: !509, line: 64, baseType: !203, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !262, line: 144, baseType: !109, size: 32, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !261, file: !262, line: 146, baseType: !434, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !261, file: !262, line: 147, baseType: !444, size: 32, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !261, file: !262, line: 148, baseType: !220, size: 128, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !261, file: !262, line: 150, baseType: !220, size: 128, offset: 1088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !261, file: !262, line: 151, baseType: !548, size: 16, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !549, line: 123, baseType: !550)
!549 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !551, line: 25, baseType: !552)
!551 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !114, line: 40, baseType: !441)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !261, file: !262, line: 154, baseType: !554, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !205, line: 29, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !557, line: 74, size: 704, elements: !558)
!557 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!558 = !{!559, !564, !568, !572, !573, !574, !575, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !556, file: !557, line: 75, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !562, line: 184, baseType: !563)
!562 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !562, line: 184, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !556, file: !557, line: 76, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !562, line: 185, baseType: !567)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !562, line: 185, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !556, file: !557, line: 78, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !93, line: 78, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !445, line: 267, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !114, line: 207, baseType: !120)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !556, file: !557, line: 79, baseType: !347, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !556, file: !557, line: 80, baseType: !103, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !556, file: !557, line: 82, baseType: !457, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !556, file: !557, line: 84, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !578, line: 231, baseType: !579)
!578 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !578, line: 231, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !556, file: !557, line: 85, baseType: !457, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !556, file: !557, line: 87, baseType: !295, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !556, file: !557, line: 88, baseType: !295, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !556, file: !557, line: 90, baseType: !111, size: 8, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !556, file: !557, line: 92, baseType: !108, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !556, file: !557, line: 93, baseType: !108, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !556, file: !557, line: 94, baseType: !108, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !556, file: !557, line: 95, baseType: !108, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !556, file: !557, line: 96, baseType: !108, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !556, file: !557, line: 97, baseType: !108, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !556, file: !557, line: 98, baseType: !108, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !556, file: !557, line: 99, baseType: !108, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !556, file: !557, line: 100, baseType: !108, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !556, file: !557, line: 101, baseType: !108, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !261, file: !262, line: 157, baseType: !595, size: 64, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !205, line: 30, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !205, line: 30, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !261, file: !262, line: 159, baseType: !434, size: 64, offset: 1408)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !261, file: !262, line: 160, baseType: !444, size: 32, offset: 1472)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !261, file: !262, line: 162, baseType: !347, size: 64, offset: 1536)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !261, file: !262, line: 164, baseType: !315, size: 128, offset: 1600)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !261, file: !262, line: 166, baseType: !232, size: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !261, file: !262, line: 168, baseType: !92, size: 64, offset: 1792)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !261, file: !262, line: 170, baseType: !108, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !261, file: !262, line: 172, baseType: !108, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !261, file: !262, line: 174, baseType: !108, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !261, file: !262, line: 175, baseType: !108, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !261, file: !262, line: 176, baseType: !108, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !261, file: !262, line: 178, baseType: !108, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !261, file: !262, line: 179, baseType: !108, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !261, file: !262, line: 180, baseType: !108, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !261, file: !262, line: 181, baseType: !108, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !261, file: !262, line: 183, baseType: !108, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !261, file: !262, line: 184, baseType: !108, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !261, file: !262, line: 185, baseType: !108, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !261, file: !262, line: 186, baseType: !108, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !261, file: !262, line: 188, baseType: !108, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !256, file: !255, line: 29, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_session_t", file: !621, line: 20, baseType: !622)
!621 = !DIFile(filename: "src/stream/ngx_stream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "5b43959b152802dd9a372cd63f29aa49")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_session_s", file: !621, line: 195, size: 960, elements: !623)
!623 = !{!624, !627, !628, !629, !630, !631, !632, !633, !634, !635, !1094, !1095, !1108, !1109, !1110, !1111, !1112}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !622, file: !621, line: 196, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !551, line: 26, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !114, line: 42, baseType: !108)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !622, file: !621, line: 198, baseType: !259, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !622, file: !621, line: 200, baseType: !118, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !622, file: !621, line: 201, baseType: !235, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !622, file: !621, line: 202, baseType: !467, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !622, file: !621, line: 204, baseType: !239, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !622, file: !621, line: 206, baseType: !107, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !622, file: !621, line: 207, baseType: !107, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !622, file: !621, line: 208, baseType: !107, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !622, file: !621, line: 210, baseType: !636, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_t", file: !638, line: 142, baseType: !639)
!638 = !DIFile(filename: "src/stream/ngx_stream_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "3f8e5475e314f6b689847c899b77180e")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 117, size: 3328, elements: !640)
!640 = !{!641, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !906, !1081, !1092, !1093}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !639, file: !638, line: 118, baseType: !642, size: 1024)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !643, line: 22, baseType: !644)
!643 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !643, line: 36, size: 1024, elements: !645)
!645 = !{!646, !647, !648, !649, !651, !652, !653, !659, !664, !666, !667, !669, !674, !683, !684, !685, !686, !687, !688, !689}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !644, file: !643, line: 37, baseType: !259, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !644, file: !643, line: 39, baseType: !434, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !644, file: !643, line: 40, baseType: !444, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !643, line: 41, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !644, file: !643, line: 43, baseType: !92, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !644, file: !643, line: 44, baseType: !467, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !644, file: !643, line: 46, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !643, line: 24, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!569, !658, !106}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !644, file: !643, line: 47, baseType: !660, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !643, line: 26, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !658, !106, !92}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !644, file: !643, line: 48, baseType: !665, size: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !643, line: 28, baseType: !661)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !644, file: !643, line: 49, baseType: !106, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !644, file: !643, line: 52, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !643, line: 30, baseType: !655)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !644, file: !643, line: 53, baseType: !670, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !643, line: 32, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !658, !106}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !644, file: !643, line: 56, baseType: !675, size: 64, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !677, line: 78, baseType: !678)
!677 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 74, size: 256, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !678, file: !677, line: 75, baseType: !434, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !678, file: !677, line: 76, baseType: !444, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !677, line: 77, baseType: !220, size: 128, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !643, line: 58, baseType: !109, size: 32, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !644, file: !643, line: 59, baseType: !109, size: 32, offset: 864)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !644, file: !643, line: 61, baseType: !203, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !644, file: !643, line: 63, baseType: !108, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !644, file: !643, line: 64, baseType: !108, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !644, file: !643, line: 65, baseType: !108, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !644, file: !643, line: 68, baseType: !108, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_buf", scope: !639, file: !638, line: 120, baseType: !348, size: 640, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_buf", scope: !639, file: !638, line: 121, baseType: !348, size: 640, offset: 1664)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !639, file: !638, line: 123, baseType: !341, size: 64, offset: 2304)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_out", scope: !639, file: !638, line: 124, baseType: !341, size: 64, offset: 2368)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_busy", scope: !639, file: !638, line: 125, baseType: !341, size: 64, offset: 2432)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_out", scope: !639, file: !638, line: 126, baseType: !341, size: 64, offset: 2496)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_busy", scope: !639, file: !638, line: 127, baseType: !341, size: 64, offset: 2560)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !639, file: !638, line: 129, baseType: !118, size: 64, offset: 2624)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !639, file: !638, line: 130, baseType: !235, size: 64, offset: 2688)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !639, file: !638, line: 131, baseType: !92, size: 64, offset: 2752)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "responses", scope: !639, file: !638, line: 132, baseType: !92, size: 64, offset: 2816)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !639, file: !638, line: 133, baseType: !467, size: 64, offset: 2880)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !639, file: !638, line: 135, baseType: !220, size: 128, offset: 2944)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !639, file: !638, line: 137, baseType: !704, size: 64, offset: 3072)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_srv_conf_t", file: !638, line: 36, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_upstream_srv_conf_s", file: !638, line: 70, size: 832, elements: !707)
!707 = !{!708, !874, !875, !876, !877, !878, !879, !880, !881, !882}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !706, file: !638, line: 71, baseType: !709, size: 192)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_peer_t", file: !638, line: 49, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 45, size: 192, elements: !711)
!711 = !{!712, !868, !873}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !710, file: !638, line: 46, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_pt", file: !638, line: 39, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!569, !717, !704}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !205, line: 16, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !214, line: 116, size: 768, elements: !720)
!720 = !{!721, !722, !733, !850, !851, !852, !861, !862, !863, !864, !865, !867}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !719, file: !214, line: 117, baseType: !98, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !719, file: !214, line: 118, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !725, line: 22, baseType: !726)
!725 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 16, size: 320, elements: !727)
!727 = !{!728, !729, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !726, file: !725, line: 17, baseType: !106, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !726, file: !725, line: 18, baseType: !92, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !726, file: !725, line: 19, baseType: !103, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !726, file: !725, line: 20, baseType: !92, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !726, file: !725, line: 21, baseType: !506, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !719, file: !214, line: 120, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !205, line: 17, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !737, line: 47, size: 5184, elements: !738)
!737 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!738 = !{!739, !742, !743, !744, !745, !746, !748, !749, !750, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !848, !849}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !736, file: !737, line: 48, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !736, file: !737, line: 49, baseType: !506, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !736, file: !737, line: 51, baseType: !203, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !736, file: !737, line: 52, baseType: !204, size: 640, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !736, file: !737, line: 54, baseType: !92, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !736, file: !737, line: 56, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !736, file: !737, line: 57, baseType: !259, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !736, file: !737, line: 58, baseType: !92, size: 64, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !736, file: !737, line: 60, baseType: !751, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !205, line: 15, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !755, line: 222, size: 1600, elements: !756)
!755 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !779, !780, !784, !788, !789, !790, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !754, file: !755, line: 223, baseType: !92, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !754, file: !755, line: 224, baseType: !92, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !754, file: !755, line: 226, baseType: !98, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !754, file: !755, line: 228, baseType: !92, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !754, file: !755, line: 229, baseType: !92, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !754, file: !755, line: 231, baseType: !92, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !754, file: !755, line: 232, baseType: !116, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !754, file: !755, line: 234, baseType: !106, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !754, file: !755, line: 235, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !205, line: 22, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !214, line: 77, size: 448, elements: !769)
!769 = !{!770, !771, !772, !776, !777, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !768, file: !214, line: 78, baseType: !220, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !214, line: 79, baseType: !92, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !768, file: !214, line: 80, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!98, !717, !766, !106}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !768, file: !214, line: 81, baseType: !92, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !768, file: !214, line: 82, baseType: !92, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !768, file: !214, line: 83, baseType: !106, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !755, line: 236, baseType: !92, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !754, file: !755, line: 238, baseType: !781, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!569, !203}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !754, file: !755, line: 240, baseType: !785, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!569, !734}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !754, file: !755, line: 242, baseType: !785, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !754, file: !755, line: 243, baseType: !785, size: 64, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !754, file: !755, line: 244, baseType: !791, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !734}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !754, file: !755, line: 245, baseType: !791, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !754, file: !755, line: 247, baseType: !791, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !754, file: !755, line: 249, baseType: !94, size: 64, offset: 1088)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !754, file: !755, line: 250, baseType: !94, size: 64, offset: 1152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !754, file: !755, line: 251, baseType: !94, size: 64, offset: 1216)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !754, file: !755, line: 252, baseType: !94, size: 64, offset: 1280)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !754, file: !755, line: 253, baseType: !94, size: 64, offset: 1344)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !754, file: !755, line: 254, baseType: !94, size: 64, offset: 1408)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !754, file: !755, line: 255, baseType: !94, size: 64, offset: 1472)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !754, file: !755, line: 256, baseType: !94, size: 64, offset: 1536)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !736, file: !737, line: 61, baseType: !92, size: 64, offset: 1152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !736, file: !737, line: 62, baseType: !92, size: 64, offset: 1216)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !736, file: !737, line: 64, baseType: !315, size: 128, offset: 1280)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !736, file: !737, line: 65, baseType: !92, size: 64, offset: 1408)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !736, file: !737, line: 67, baseType: !724, size: 320, offset: 1472)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !736, file: !737, line: 68, baseType: !724, size: 320, offset: 1792)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !736, file: !737, line: 70, baseType: !724, size: 320, offset: 2112)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !736, file: !737, line: 71, baseType: !472, size: 192, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !736, file: !737, line: 72, baseType: !302, size: 320, offset: 2624)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !736, file: !737, line: 74, baseType: !814, size: 448, offset: 2944)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !815, line: 31, baseType: !816)
!815 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !815, line: 25, size: 448, elements: !817)
!817 = !{!818, !826, !827, !828, !829}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !816, file: !815, line: 26, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !815, line: 16, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !815, line: 18, size: 192, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !821, file: !815, line: 19, baseType: !106, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !821, file: !815, line: 20, baseType: !92, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !815, line: 21, baseType: !819, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !816, file: !815, line: 27, baseType: !820, size: 192, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !816, file: !815, line: 28, baseType: !103, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !816, file: !815, line: 29, baseType: !92, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !816, file: !815, line: 30, baseType: !506, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !736, file: !737, line: 75, baseType: !814, size: 448, offset: 3392)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !736, file: !737, line: 77, baseType: !92, size: 64, offset: 3840)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !736, file: !737, line: 78, baseType: !92, size: 64, offset: 3904)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !736, file: !737, line: 80, baseType: !259, size: 64, offset: 3968)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !736, file: !737, line: 81, baseType: !266, size: 64, offset: 4032)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !736, file: !737, line: 82, baseType: !266, size: 64, offset: 4096)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !736, file: !737, line: 84, baseType: !734, size: 64, offset: 4160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !736, file: !737, line: 86, baseType: !220, size: 128, offset: 4224)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !736, file: !737, line: 87, baseType: !220, size: 128, offset: 4352)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !736, file: !737, line: 88, baseType: !220, size: 128, offset: 4480)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !736, file: !737, line: 89, baseType: !220, size: 128, offset: 4608)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !736, file: !737, line: 90, baseType: !220, size: 128, offset: 4736)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !736, file: !737, line: 91, baseType: !220, size: 128, offset: 4864)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !736, file: !737, line: 93, baseType: !844, size: 64, offset: 4992)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !737, line: 34, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!569, !203, !92, !110, !103}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !736, file: !737, line: 94, baseType: !106, size: 64, offset: 5056)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !736, file: !737, line: 95, baseType: !108, size: 32, offset: 5120)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !719, file: !214, line: 121, baseType: !506, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !719, file: !214, line: 122, baseType: !506, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !719, file: !214, line: 123, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !214, line: 103, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 98, size: 1792, elements: !856)
!856 = !{!857, !858, !859, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !855, file: !214, line: 99, baseType: !361, size: 1600)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !855, file: !214, line: 100, baseType: !347, size: 64, offset: 1600)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !855, file: !214, line: 101, baseType: !347, size: 64, offset: 1664)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !855, file: !214, line: 102, baseType: !92, size: 64, offset: 1728)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !719, file: !214, line: 124, baseType: !203, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !719, file: !214, line: 126, baseType: !106, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !719, file: !214, line: 127, baseType: !92, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !719, file: !214, line: 128, baseType: !92, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !214, line: 130, baseType: !866, size: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !214, line: 112, baseType: !773)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !719, file: !214, line: 131, baseType: !106, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !710, file: !638, line: 47, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_peer_pt", file: !638, line: 41, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!569, !619, !704}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !710, file: !638, line: 48, baseType: !106, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !706, file: !638, line: 72, baseType: !107, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !706, file: !638, line: 74, baseType: !723, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !638, line: 77, baseType: !92, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !706, file: !638, line: 78, baseType: !220, size: 128, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !706, file: !638, line: 79, baseType: !110, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !706, file: !638, line: 80, baseType: !92, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !706, file: !638, line: 81, baseType: !548, size: 16, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !706, file: !638, line: 82, baseType: !92, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !706, file: !638, line: 85, baseType: !883, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !737, line: 31, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !737, line: 37, size: 704, elements: !886)
!886 = !{!887, !888, !898, !903, !904, !905}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !885, file: !737, line: 38, baseType: !106, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !885, file: !737, line: 39, baseType: !889, size: 384, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !890, line: 22, baseType: !891)
!890 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !890, line: 16, size: 384, elements: !892)
!892 = !{!893, !894, !895, !896, !897}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !891, file: !890, line: 17, baseType: !110, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !891, file: !890, line: 18, baseType: !103, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !891, file: !890, line: 19, baseType: !220, size: 128, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !891, file: !890, line: 20, baseType: !203, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !891, file: !890, line: 21, baseType: !92, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !885, file: !737, line: 40, baseType: !899, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !737, line: 33, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!569, !883, !106}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !885, file: !737, line: 41, baseType: !106, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !885, file: !737, line: 42, baseType: !106, size: 64, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !885, file: !737, line: 43, baseType: !92, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !639, file: !638, line: 138, baseType: !907, size: 64, offset: 3136)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_resolved_t", file: !638, line: 114, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 101, size: 704, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !928, !929, !930, !931}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !909, file: !638, line: 102, baseType: !220, size: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !909, file: !638, line: 103, baseType: !548, size: 16, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !909, file: !638, line: 104, baseType: !92, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !909, file: !638, line: 106, baseType: !92, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !909, file: !638, line: 107, baseType: !916, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !918, line: 67, baseType: !919)
!918 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 61, size: 320, elements: !920)
!920 = !{!921, !922, !923, !924, !927}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !919, file: !918, line: 62, baseType: !434, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !919, file: !918, line: 63, baseType: !444, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !919, file: !918, line: 64, baseType: !220, size: 128, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !919, file: !918, line: 65, baseType: !925, size: 16, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !112, line: 34, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !114, line: 32, baseType: !441)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !919, file: !918, line: 66, baseType: !925, size: 16, offset: 272)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !909, file: !638, line: 109, baseType: !434, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !909, file: !638, line: 110, baseType: !444, size: 32, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !909, file: !638, line: 111, baseType: !220, size: 128, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !909, file: !638, line: 113, baseType: !932, size: 64, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !918, line: 56, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !918, line: 195, size: 1792, elements: !935)
!935 = !{!936, !937, !970, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1054, !1055, !1056, !1069, !1074, !1075, !1076, !1077, !1078, !1079, !1080}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !918, line: 196, baseType: !932, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !934, file: !918, line: 197, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !918, line: 40, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !918, line: 148, size: 4096, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !940, file: !918, line: 150, baseType: !266, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !940, file: !918, line: 151, baseType: !106, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !940, file: !918, line: 152, baseType: !203, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !940, file: !918, line: 155, baseType: !569, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !940, file: !918, line: 158, baseType: !724, size: 320, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !940, file: !918, line: 159, baseType: !92, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !940, file: !918, line: 161, baseType: !472, size: 192, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !940, file: !918, line: 162, baseType: !302, size: 320, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !940, file: !918, line: 164, baseType: !472, size: 192, offset: 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !940, file: !918, line: 165, baseType: !302, size: 320, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !940, file: !918, line: 167, baseType: !472, size: 192, offset: 1664)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !940, file: !918, line: 168, baseType: !302, size: 320, offset: 1856)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !940, file: !918, line: 170, baseType: !315, size: 128, offset: 2176)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !940, file: !918, line: 171, baseType: !315, size: 128, offset: 2304)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !940, file: !918, line: 172, baseType: !315, size: 128, offset: 2432)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !940, file: !918, line: 174, baseType: !315, size: 128, offset: 2560)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !940, file: !918, line: 175, baseType: !315, size: 128, offset: 2688)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !940, file: !918, line: 176, baseType: !315, size: 128, offset: 2816)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !940, file: !918, line: 179, baseType: !92, size: 64, offset: 2944)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !940, file: !918, line: 180, baseType: !472, size: 192, offset: 3008)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !940, file: !918, line: 181, baseType: !302, size: 320, offset: 3200)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !940, file: !918, line: 182, baseType: !315, size: 128, offset: 3520)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !940, file: !918, line: 183, baseType: !315, size: 128, offset: 3648)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !940, file: !918, line: 186, baseType: !235, size: 64, offset: 3776)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !940, file: !918, line: 187, baseType: !235, size: 64, offset: 3840)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !940, file: !918, line: 188, baseType: !235, size: 64, offset: 3904)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !940, file: !918, line: 189, baseType: !235, size: 64, offset: 3968)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !940, file: !918, line: 191, baseType: !92, size: 64, offset: 4032)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !934, file: !918, line: 198, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !918, line: 145, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 92, size: 1472, elements: !974)
!974 = !{!975, !976, !977, !978, !996, !997, !998, !999, !1000, !1017, !1018, !1019, !1020, !1021, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !973, file: !918, line: 93, baseType: !302, size: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !973, file: !918, line: 94, baseType: !315, size: 128, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !973, file: !918, line: 97, baseType: !110, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !973, file: !918, line: 101, baseType: !979, size: 128, offset: 512)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !549, line: 219, size: 128, elements: !980)
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !979, file: !549, line: 226, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !549, line: 221, size: 128, elements: !983)
!983 = !{!984, !990, !994}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !982, file: !549, line: 223, baseType: !985, size: 128)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 128, elements: !988)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !551, line: 24, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !114, line: 38, baseType: !115)
!988 = !{!989}
!989 = !DISubrange(count: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !982, file: !549, line: 224, baseType: !991, size: 128)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 128, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 8)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !982, file: !549, line: 225, baseType: !995, size: 128)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, elements: !5)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !973, file: !918, line: 104, baseType: !925, size: 16, offset: 640)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !973, file: !918, line: 105, baseType: !925, size: 16, offset: 656)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !973, file: !918, line: 107, baseType: !110, size: 64, offset: 704)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !973, file: !918, line: 109, baseType: !110, size: 64, offset: 768)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !973, file: !918, line: 117, baseType: !1001, size: 64, offset: 832)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !918, line: 112, size: 64, elements: !1002)
!1002 = !{!1003, !1005, !1007, !1008}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1001, file: !918, line: 113, baseType: !1004, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !549, line: 30, baseType: !625)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1001, file: !918, line: 114, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1001, file: !918, line: 115, baseType: !110, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1001, file: !918, line: 116, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !918, line: 75, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 70, size: 192, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1011, file: !918, line: 71, baseType: !220, size: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1011, file: !918, line: 72, baseType: !925, size: 16, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1011, file: !918, line: 73, baseType: !925, size: 16, offset: 144)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1011, file: !918, line: 74, baseType: !925, size: 16, offset: 160)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !973, file: !918, line: 119, baseType: !111, size: 8, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !973, file: !918, line: 120, baseType: !925, size: 16, offset: 912)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !973, file: !918, line: 121, baseType: !925, size: 16, offset: 928)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !973, file: !918, line: 122, baseType: !925, size: 16, offset: 944)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !973, file: !918, line: 128, baseType: !1022, size: 128, offset: 960)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !918, line: 125, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1022, file: !918, line: 126, baseType: !979, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1022, file: !918, line: 127, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !973, file: !918, line: 130, baseType: !925, size: 16, offset: 1088)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !973, file: !918, line: 133, baseType: !235, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !973, file: !918, line: 134, baseType: !235, size: 64, offset: 1216)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !973, file: !918, line: 135, baseType: !625, size: 32, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !973, file: !918, line: 137, baseType: !108, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !973, file: !918, line: 139, baseType: !108, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !973, file: !918, line: 142, baseType: !92, size: 64, offset: 1344)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !973, file: !918, line: 144, baseType: !932, size: 64, offset: 1408)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !934, file: !918, line: 201, baseType: !569, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !934, file: !918, line: 203, baseType: !569, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !934, file: !918, line: 204, baseType: !220, size: 128, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !934, file: !918, line: 205, baseType: !220, size: 128, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !934, file: !918, line: 207, baseType: !235, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !934, file: !918, line: 208, baseType: !92, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !934, file: !918, line: 209, baseType: !916, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !934, file: !918, line: 210, baseType: !917, size: 320, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !934, file: !918, line: 211, baseType: !1044, size: 128, offset: 1088)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !549, line: 245, size: 128, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1052}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1044, file: !549, line: 247, baseType: !439, size: 16)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1044, file: !549, line: 248, baseType: !548, size: 16, offset: 16)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1044, file: !549, line: 249, baseType: !1049, size: 32, offset: 32)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !549, line: 31, size: 32, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1049, file: !549, line: 33, baseType: !1004, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1044, file: !549, line: 252, baseType: !1053, size: 64, offset: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !992)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !934, file: !918, line: 213, baseType: !92, size: 64, offset: 1216)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !934, file: !918, line: 214, baseType: !92, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !934, file: !918, line: 215, baseType: !1057, size: 64, offset: 1344)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !918, line: 89, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 78, size: 448, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !918, line: 79, baseType: !220, size: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1059, file: !918, line: 80, baseType: !925, size: 16, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1059, file: !918, line: 81, baseType: !925, size: 16, offset: 144)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1059, file: !918, line: 82, baseType: !925, size: 16, offset: 160)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1059, file: !918, line: 84, baseType: !932, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1059, file: !918, line: 85, baseType: !569, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1059, file: !918, line: 87, baseType: !92, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1059, file: !918, line: 88, baseType: !675, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !934, file: !918, line: 217, baseType: !1070, size: 64, offset: 1408)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !918, line: 58, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !932}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !934, file: !918, line: 218, baseType: !106, size: 64, offset: 1472)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !934, file: !918, line: 219, baseType: !467, size: 64, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !934, file: !918, line: 221, baseType: !108, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !934, file: !918, line: 222, baseType: !108, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !934, file: !918, line: 223, baseType: !108, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !934, file: !918, line: 224, baseType: !92, size: 64, offset: 1664)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !934, file: !918, line: 225, baseType: !266, size: 64, offset: 1728)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !639, file: !638, line: 139, baseType: !1082, size: 64, offset: 3200)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_state_t", file: !638, line: 98, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 90, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1084, file: !638, line: 91, baseType: !467, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1084, file: !638, line: 92, baseType: !467, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "first_byte_time", scope: !1084, file: !638, line: 93, baseType: !467, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1084, file: !638, line: 94, baseType: !118, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1084, file: !638, line: 95, baseType: !118, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1084, file: !638, line: 97, baseType: !650, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !639, file: !638, line: 140, baseType: !108, size: 1, offset: 3264, flags: DIFlagBitField, extraData: i64 3264)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !639, file: !638, line: 141, baseType: !108, size: 1, offset: 3265, flags: DIFlagBitField, extraData: i64 3264)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !622, file: !621, line: 211, baseType: !723, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !622, file: !621, line: 213, baseType: !1096, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_variable_value_t", file: !1098, line: 17, baseType: !1099)
!1098 = !DIFile(filename: "src/stream/ngx_stream_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9fb175b04865878c75328ce50a6318ed")
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !221, line: 37, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 28, size: 128, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1100, file: !221, line: 29, baseType: !108, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1100, file: !221, line: 31, baseType: !108, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1100, file: !221, line: 32, baseType: !108, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1100, file: !221, line: 33, baseType: !108, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1100, file: !221, line: 34, baseType: !108, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1100, file: !221, line: 36, baseType: !110, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !622, file: !621, line: 221, baseType: !569, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !622, file: !621, line: 222, baseType: !92, size: 64, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !622, file: !621, line: 224, baseType: !108, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !622, file: !621, line: 226, baseType: !108, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !622, file: !621, line: 228, baseType: !108, size: 1, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !256, file: !255, line: 30, baseType: !506, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !256, file: !255, line: 31, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_cleanup_t", file: !255, line: 13, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_cleanup_s", file: !255, line: 15, size: 192, elements: !1118)
!1118 = !{!1119, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1117, file: !255, line: 16, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_cleanup_pt", file: !255, line: 11, baseType: !536)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1117, file: !255, line: 17, baseType: !106, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !255, line: 18, baseType: !1115, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !256, file: !255, line: 33, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_event_handler_pt", file: !255, line: 24, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !253}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !256, file: !255, line: 34, baseType: !1124, size: 64, offset: 320)
!1129 = !DILocalVariable(name: "msg", scope: !199, file: !2, line: 47, type: !116)
!1130 = !DILocalVariable(name: "level", scope: !199, file: !2, line: 48, type: !109)
!1131 = !DILocation(line: 43, column: 35, scope: !199)
!1132 = !DILocation(line: 45, column: 5, scope: !199)
!1133 = !DILocation(line: 45, column: 34, scope: !199)
!1134 = !DILocation(line: 46, column: 5, scope: !199)
!1135 = !DILocation(line: 46, column: 34, scope: !199)
!1136 = !DILocation(line: 47, column: 5, scope: !199)
!1137 = !DILocation(line: 47, column: 34, scope: !199)
!1138 = !DILocation(line: 48, column: 5, scope: !199)
!1139 = !DILocation(line: 48, column: 34, scope: !199)
!1140 = !DILocation(line: 50, column: 32, scope: !199)
!1141 = !DILocation(line: 50, column: 9, scope: !199)
!1142 = !DILocation(line: 50, column: 7, scope: !199)
!1143 = !DILocation(line: 52, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !199, file: !2, line: 52, column: 9)
!1145 = !DILocation(line: 52, column: 11, scope: !1144)
!1146 = !DILocation(line: 52, column: 14, scope: !1144)
!1147 = !DILocation(line: 52, column: 17, scope: !1144)
!1148 = !{!1149, !139, i64 0}
!1149 = !{!"ngx_stream_lua_request_s", !139, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !139, i64 32, !139, i64 40}
!1150 = !DILocation(line: 52, column: 28, scope: !1144)
!1151 = !DILocation(line: 52, column: 31, scope: !1144)
!1152 = !DILocation(line: 52, column: 34, scope: !1144)
!1153 = !DILocation(line: 52, column: 46, scope: !1144)
!1154 = !{!1155, !139, i64 80}
!1155 = !{!"ngx_connection_s", !139, i64 0, !139, i64 8, !139, i64 16, !1156, i64 24, !139, i64 32, !139, i64 40, !139, i64 48, !139, i64 56, !139, i64 64, !1157, i64 72, !139, i64 80, !139, i64 88, !1156, i64 96, !139, i64 104, !1156, i64 112, !1158, i64 120, !1158, i64 136, !1159, i64 152, !139, i64 160, !139, i64 168, !139, i64 176, !1156, i64 184, !139, i64 192, !1160, i64 200, !1157, i64 216, !1157, i64 224, !1156, i64 232, !1156, i64 233, !1156, i64 233, !1156, i64 233, !1156, i64 233, !1156, i64 233, !1156, i64 233, !1156, i64 234, !1156, i64 234, !1156, i64 234, !1156, i64 234, !1156, i64 234, !1156, i64 234, !1156, i64 235}
!1156 = !{!"int", !140, i64 0}
!1157 = !{!"long", !140, i64 0}
!1158 = !{!"", !1157, i64 0, !139, i64 8}
!1159 = !{!"short", !140, i64 0}
!1160 = !{!"ngx_queue_s", !139, i64 0, !139, i64 8}
!1161 = !DILocation(line: 52, column: 9, scope: !199)
!1162 = !DILocation(line: 53, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 52, column: 51)
!1164 = !DILocation(line: 53, column: 18, scope: !1163)
!1165 = !DILocation(line: 53, column: 30, scope: !1163)
!1166 = !DILocation(line: 53, column: 13, scope: !1163)
!1167 = !DILocation(line: 55, column: 5, scope: !1163)
!1168 = !DILocation(line: 56, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 55, column: 12)
!1170 = !DILocation(line: 56, column: 26, scope: !1169)
!1171 = !{!1172, !139, i64 16}
!1172 = !{!"ngx_cycle_s", !139, i64 0, !139, i64 8, !139, i64 16, !1173, i64 24, !1157, i64 104, !139, i64 112, !139, i64 120, !1157, i64 128, !139, i64 136, !1157, i64 144, !1157, i64 152, !1160, i64 160, !1157, i64 176, !1174, i64 184, !1174, i64 224, !1174, i64 264, !1175, i64 304, !1176, i64 328, !1177, i64 368, !1177, i64 424, !1157, i64 480, !1157, i64 488, !139, i64 496, !139, i64 504, !139, i64 512, !139, i64 520, !1158, i64 528, !1158, i64 544, !1158, i64 560, !1158, i64 576, !1158, i64 592, !1158, i64 608, !139, i64 624, !139, i64 632, !1156, i64 640}
!1173 = !{!"ngx_log_s", !1157, i64 0, !139, i64 8, !1157, i64 16, !1157, i64 24, !139, i64 32, !139, i64 40, !139, i64 48, !139, i64 56, !139, i64 64, !139, i64 72}
!1174 = !{!"", !139, i64 0, !1157, i64 8, !1157, i64 16, !1157, i64 24, !139, i64 32}
!1175 = !{!"ngx_rbtree_s", !139, i64 0, !139, i64 8, !139, i64 16}
!1176 = !{!"ngx_rbtree_node_s", !1157, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !140, i64 32, !140, i64 33}
!1177 = !{!"", !139, i64 0, !1178, i64 8, !1157, i64 32, !1157, i64 40, !139, i64 48}
!1178 = !{!"ngx_list_part_s", !139, i64 0, !1157, i64 8, !139, i64 16}
!1179 = !DILocation(line: 56, column: 13, scope: !1169)
!1180 = !DILocation(line: 59, column: 13, scope: !199)
!1181 = !DILocation(line: 59, column: 11, scope: !199)
!1182 = !{!1156, !1156, i64 0}
!1183 = !DILocation(line: 60, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !199, file: !2, line: 60, column: 9)
!1185 = !DILocation(line: 60, column: 15, scope: !1184)
!1186 = !DILocation(line: 60, column: 32, scope: !1184)
!1187 = !DILocation(line: 60, column: 35, scope: !1184)
!1188 = !DILocation(line: 60, column: 41, scope: !1184)
!1189 = !DILocation(line: 60, column: 9, scope: !199)
!1190 = !DILocation(line: 61, column: 31, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 60, column: 58)
!1192 = !DILocation(line: 61, column: 55, scope: !1191)
!1193 = !DILocation(line: 61, column: 15, scope: !1191)
!1194 = !DILocation(line: 61, column: 13, scope: !1191)
!1195 = !DILocation(line: 62, column: 30, scope: !1191)
!1196 = !DILocation(line: 62, column: 36, scope: !1191)
!1197 = !DILocation(line: 62, column: 16, scope: !1191)
!1198 = !DILocation(line: 62, column: 9, scope: !1191)
!1199 = !DILocation(line: 66, column: 16, scope: !199)
!1200 = !DILocation(line: 66, column: 5, scope: !199)
!1201 = !DILocation(line: 68, column: 24, scope: !199)
!1202 = !DILocation(line: 68, column: 59, scope: !199)
!1203 = !DILocation(line: 68, column: 46, scope: !199)
!1204 = !DILocation(line: 68, column: 66, scope: !199)
!1205 = !DILocation(line: 68, column: 12, scope: !199)
!1206 = !DILocation(line: 68, column: 5, scope: !199)
!1207 = !DILocation(line: 69, column: 1, scope: !199)
!1208 = !DISubprogram(name: "lua_setfield", scope: !134, file: !134, line: 192, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !132, !109, !116}
!1211 = distinct !DISubprogram(name: "ngx_stream_lua_print", scope: !2, file: !2, line: 80, type: !197, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DILocalVariable(name: "L", arg: 1, scope: !1211, file: !2, line: 80, type: !132)
!1214 = !DILocalVariable(name: "log", scope: !1211, file: !2, line: 82, type: !203)
!1215 = !DILocalVariable(name: "r", scope: !1211, file: !2, line: 83, type: !253)
!1216 = !DILocation(line: 80, column: 33, scope: !1211)
!1217 = !DILocation(line: 82, column: 5, scope: !1211)
!1218 = !DILocation(line: 82, column: 34, scope: !1211)
!1219 = !DILocation(line: 83, column: 5, scope: !1211)
!1220 = !DILocation(line: 83, column: 34, scope: !1211)
!1221 = !DILocation(line: 85, column: 32, scope: !1211)
!1222 = !DILocation(line: 85, column: 9, scope: !1211)
!1223 = !DILocation(line: 85, column: 7, scope: !1211)
!1224 = !DILocation(line: 87, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 87, column: 9)
!1226 = !DILocation(line: 87, column: 11, scope: !1225)
!1227 = !DILocation(line: 87, column: 14, scope: !1225)
!1228 = !DILocation(line: 87, column: 17, scope: !1225)
!1229 = !DILocation(line: 87, column: 28, scope: !1225)
!1230 = !DILocation(line: 87, column: 31, scope: !1225)
!1231 = !DILocation(line: 87, column: 34, scope: !1225)
!1232 = !DILocation(line: 87, column: 46, scope: !1225)
!1233 = !DILocation(line: 87, column: 9, scope: !1211)
!1234 = !DILocation(line: 88, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 87, column: 51)
!1236 = !DILocation(line: 88, column: 18, scope: !1235)
!1237 = !DILocation(line: 88, column: 30, scope: !1235)
!1238 = !DILocation(line: 88, column: 13, scope: !1235)
!1239 = !DILocation(line: 90, column: 5, scope: !1235)
!1240 = !DILocation(line: 91, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 90, column: 12)
!1242 = !DILocation(line: 91, column: 26, scope: !1241)
!1243 = !DILocation(line: 91, column: 13, scope: !1241)
!1244 = !DILocation(line: 94, column: 24, scope: !1211)
!1245 = !DILocation(line: 94, column: 62, scope: !1211)
!1246 = !DILocation(line: 94, column: 12, scope: !1211)
!1247 = !DILocation(line: 95, column: 1, scope: !1211)
!1248 = !DILocation(line: 94, column: 5, scope: !1211)
!1249 = distinct !DISubprogram(name: "ngx_stream_lua_capture_log_handler", scope: !2, file: !2, line: 329, type: !846, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255}
!1251 = !DILocalVariable(name: "log", arg: 1, scope: !1249, file: !2, line: 329, type: !203)
!1252 = !DILocalVariable(name: "level", arg: 2, scope: !1249, file: !2, line: 330, type: !92)
!1253 = !DILocalVariable(name: "buf", arg: 3, scope: !1249, file: !2, line: 330, type: !110)
!1254 = !DILocalVariable(name: "n", arg: 4, scope: !1249, file: !2, line: 330, type: !103)
!1255 = !DILocalVariable(name: "ringbuf", scope: !1249, file: !2, line: 332, type: !86)
!1256 = !DILocation(line: 329, column: 47, scope: !1249)
!1257 = !{!1157, !1157, i64 0}
!1258 = !DILocation(line: 330, column: 16, scope: !1249)
!1259 = !DILocation(line: 330, column: 31, scope: !1249)
!1260 = !DILocation(line: 330, column: 43, scope: !1249)
!1261 = !DILocation(line: 332, column: 5, scope: !1249)
!1262 = !DILocation(line: 332, column: 42, scope: !1249)
!1263 = !DILocation(line: 337, column: 21, scope: !1249)
!1264 = !DILocation(line: 337, column: 32, scope: !1249)
!1265 = !{!1172, !139, i64 632}
!1266 = !DILocation(line: 336, column: 13, scope: !1249)
!1267 = !DILocation(line: 339, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 339, column: 9)
!1269 = !DILocation(line: 339, column: 17, scope: !1268)
!1270 = !DILocation(line: 339, column: 26, scope: !1268)
!1271 = !{!1272, !1157, i64 0}
!1272 = !{!"", !1157, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !139, i64 32, !1157, i64 40, !1157, i64 48}
!1273 = !DILocation(line: 339, column: 15, scope: !1268)
!1274 = !DILocation(line: 339, column: 9, scope: !1249)
!1275 = !DILocation(line: 340, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 339, column: 40)
!1277 = !DILocation(line: 343, column: 38, scope: !1249)
!1278 = !DILocation(line: 343, column: 47, scope: !1249)
!1279 = !DILocation(line: 343, column: 54, scope: !1249)
!1280 = !DILocation(line: 343, column: 59, scope: !1249)
!1281 = !DILocation(line: 343, column: 5, scope: !1249)
!1282 = !DILocation(line: 347, column: 5, scope: !1249)
!1283 = !DILocation(line: 348, column: 1, scope: !1249)
!1284 = !DISubprogram(name: "ngx_stream_lua_log_ringbuf_write", scope: !88, file: !88, line: 33, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!569, !86, !109, !106, !103}
!1287 = distinct !DISubprogram(name: "ngx_stream_lua_ffi_errlog_set_filter_level", scope: !2, file: !2, line: 353, type: !1288, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1291)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!109, !109, !110, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1291 = !{!1292, !1293, !1294, !1295}
!1292 = !DILocalVariable(name: "level", arg: 1, scope: !1287, file: !2, line: 353, type: !109)
!1293 = !DILocalVariable(name: "err", arg: 2, scope: !1287, file: !2, line: 353, type: !110)
!1294 = !DILocalVariable(name: "errlen", arg: 3, scope: !1287, file: !2, line: 354, type: !1290)
!1295 = !DILocalVariable(name: "ringbuf", scope: !1287, file: !2, line: 357, type: !86)
!1296 = !DILocation(line: 353, column: 48, scope: !1287)
!1297 = !DILocation(line: 353, column: 63, scope: !1287)
!1298 = !DILocation(line: 354, column: 13, scope: !1287)
!1299 = !DILocation(line: 357, column: 5, scope: !1287)
!1300 = !DILocation(line: 357, column: 45, scope: !1287)
!1301 = !DILocation(line: 359, column: 15, scope: !1287)
!1302 = !DILocation(line: 359, column: 26, scope: !1287)
!1303 = !DILocation(line: 359, column: 13, scope: !1287)
!1304 = !DILocation(line: 361, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 361, column: 9)
!1306 = !DILocation(line: 361, column: 17, scope: !1305)
!1307 = !DILocation(line: 361, column: 9, scope: !1287)
!1308 = !DILocation(line: 362, column: 32, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 361, column: 26)
!1310 = !DILocation(line: 362, column: 38, scope: !1309)
!1311 = !DILocation(line: 362, column: 37, scope: !1309)
!1312 = !DILocation(line: 362, column: 19, scope: !1309)
!1313 = !DILocation(line: 364, column: 21, scope: !1309)
!1314 = !DILocation(line: 364, column: 19, scope: !1309)
!1315 = !DILocation(line: 362, column: 10, scope: !1309)
!1316 = !DILocation(line: 362, column: 17, scope: !1309)
!1317 = !DILocation(line: 365, column: 9, scope: !1309)
!1318 = !DILocation(line: 368, column: 9, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 368, column: 9)
!1320 = !DILocation(line: 368, column: 15, scope: !1319)
!1321 = !DILocation(line: 368, column: 31, scope: !1319)
!1322 = !DILocation(line: 368, column: 34, scope: !1319)
!1323 = !DILocation(line: 368, column: 40, scope: !1319)
!1324 = !DILocation(line: 368, column: 9, scope: !1287)
!1325 = !DILocation(line: 369, column: 32, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 368, column: 58)
!1327 = !DILocation(line: 369, column: 38, scope: !1326)
!1328 = !DILocation(line: 369, column: 37, scope: !1326)
!1329 = !DILocation(line: 369, column: 67, scope: !1326)
!1330 = !DILocation(line: 369, column: 19, scope: !1326)
!1331 = !DILocation(line: 370, column: 21, scope: !1326)
!1332 = !DILocation(line: 370, column: 19, scope: !1326)
!1333 = !DILocation(line: 369, column: 10, scope: !1326)
!1334 = !DILocation(line: 369, column: 17, scope: !1326)
!1335 = !DILocation(line: 371, column: 9, scope: !1326)
!1336 = !DILocation(line: 374, column: 29, scope: !1287)
!1337 = !DILocation(line: 374, column: 5, scope: !1287)
!1338 = !DILocation(line: 374, column: 14, scope: !1287)
!1339 = !DILocation(line: 374, column: 27, scope: !1287)
!1340 = !DILocation(line: 375, column: 5, scope: !1287)
!1341 = !DILocation(line: 382, column: 1, scope: !1287)
!1342 = !DISubprogram(name: "ngx_snprintf", scope: !221, file: !221, line: 154, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!110, !110, !103, !116, null}
!1345 = distinct !DISubprogram(name: "ngx_stream_lua_ffi_errlog_get_msg", scope: !2, file: !2, line: 386, type: !1346, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1352)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!109, !1348, !1349, !110, !1290, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1353 = !DILocalVariable(name: "log", arg: 1, scope: !1345, file: !2, line: 386, type: !1348)
!1354 = !DILocalVariable(name: "loglevel", arg: 2, scope: !1345, file: !2, line: 386, type: !1349)
!1355 = !DILocalVariable(name: "err", arg: 3, scope: !1345, file: !2, line: 386, type: !110)
!1356 = !DILocalVariable(name: "errlen", arg: 4, scope: !1345, file: !2, line: 387, type: !1290)
!1357 = !DILocalVariable(name: "log_time", arg: 5, scope: !1345, file: !2, line: 387, type: !1350)
!1358 = !DILocalVariable(name: "loglen", scope: !1345, file: !2, line: 390, type: !92)
!1359 = !DILocalVariable(name: "ringbuf", scope: !1345, file: !2, line: 392, type: !86)
!1360 = !DILocation(line: 386, column: 42, scope: !1345)
!1361 = !DILocation(line: 386, column: 52, scope: !1345)
!1362 = !DILocation(line: 386, column: 70, scope: !1345)
!1363 = !DILocation(line: 387, column: 13, scope: !1345)
!1364 = !DILocation(line: 387, column: 29, scope: !1345)
!1365 = !DILocation(line: 390, column: 5, scope: !1345)
!1366 = !DILocation(line: 390, column: 26, scope: !1345)
!1367 = !DILocation(line: 392, column: 5, scope: !1345)
!1368 = !DILocation(line: 392, column: 45, scope: !1345)
!1369 = !DILocation(line: 394, column: 15, scope: !1345)
!1370 = !DILocation(line: 394, column: 26, scope: !1345)
!1371 = !DILocation(line: 394, column: 13, scope: !1345)
!1372 = !DILocation(line: 396, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 396, column: 9)
!1374 = !DILocation(line: 396, column: 17, scope: !1373)
!1375 = !DILocation(line: 396, column: 9, scope: !1345)
!1376 = !DILocation(line: 397, column: 32, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 396, column: 26)
!1378 = !DILocation(line: 397, column: 38, scope: !1377)
!1379 = !DILocation(line: 397, column: 37, scope: !1377)
!1380 = !DILocation(line: 397, column: 19, scope: !1377)
!1381 = !DILocation(line: 399, column: 21, scope: !1377)
!1382 = !DILocation(line: 399, column: 19, scope: !1377)
!1383 = !DILocation(line: 397, column: 10, scope: !1377)
!1384 = !DILocation(line: 397, column: 17, scope: !1377)
!1385 = !DILocation(line: 400, column: 9, scope: !1377)
!1386 = !DILocation(line: 403, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 403, column: 9)
!1388 = !DILocation(line: 403, column: 18, scope: !1387)
!1389 = !{!1272, !1157, i64 48}
!1390 = !DILocation(line: 403, column: 24, scope: !1387)
!1391 = !DILocation(line: 403, column: 9, scope: !1345)
!1392 = !DILocation(line: 404, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 403, column: 30)
!1394 = !DILocation(line: 407, column: 37, scope: !1345)
!1395 = !DILocation(line: 407, column: 46, scope: !1345)
!1396 = !DILocation(line: 407, column: 66, scope: !1345)
!1397 = !DILocation(line: 408, column: 37, scope: !1345)
!1398 = !DILocation(line: 407, column: 5, scope: !1345)
!1399 = !DILocation(line: 409, column: 12, scope: !1345)
!1400 = !DILocation(line: 409, column: 5, scope: !1345)
!1401 = !DILocation(line: 416, column: 1, scope: !1345)
!1402 = !DISubprogram(name: "ngx_stream_lua_log_ringbuf_read", scope: !88, file: !88, line: 31, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!569, !86, !1349, !107, !1290, !1350}
!1405 = distinct !DISubprogram(name: "ngx_stream_lua_ffi_errlog_get_sys_filter_level", scope: !2, file: !2, line: 420, type: !1406, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!109, !253}
!1408 = !{!1409, !1410, !1411}
!1409 = !DILocalVariable(name: "r", arg: 1, scope: !1405, file: !2, line: 420, type: !253)
!1410 = !DILocalVariable(name: "log", scope: !1405, file: !2, line: 422, type: !203)
!1411 = !DILocalVariable(name: "log_level", scope: !1405, file: !2, line: 423, type: !109)
!1412 = !DILocation(line: 420, column: 74, scope: !1405)
!1413 = !DILocation(line: 422, column: 5, scope: !1405)
!1414 = !DILocation(line: 422, column: 34, scope: !1405)
!1415 = !DILocation(line: 423, column: 5, scope: !1405)
!1416 = !DILocation(line: 423, column: 34, scope: !1405)
!1417 = !DILocation(line: 425, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 425, column: 9)
!1419 = !DILocation(line: 425, column: 11, scope: !1418)
!1420 = !DILocation(line: 425, column: 14, scope: !1418)
!1421 = !DILocation(line: 425, column: 17, scope: !1418)
!1422 = !DILocation(line: 425, column: 28, scope: !1418)
!1423 = !DILocation(line: 425, column: 31, scope: !1418)
!1424 = !DILocation(line: 425, column: 34, scope: !1418)
!1425 = !DILocation(line: 425, column: 46, scope: !1418)
!1426 = !DILocation(line: 425, column: 9, scope: !1405)
!1427 = !DILocation(line: 426, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 425, column: 51)
!1429 = !DILocation(line: 426, column: 18, scope: !1428)
!1430 = !DILocation(line: 426, column: 30, scope: !1428)
!1431 = !DILocation(line: 426, column: 13, scope: !1428)
!1432 = !DILocation(line: 428, column: 5, scope: !1428)
!1433 = !DILocation(line: 429, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 428, column: 12)
!1435 = !DILocation(line: 429, column: 26, scope: !1434)
!1436 = !DILocation(line: 429, column: 13, scope: !1434)
!1437 = !DILocation(line: 432, column: 17, scope: !1405)
!1438 = !DILocation(line: 432, column: 22, scope: !1405)
!1439 = !{!1173, !1157, i64 0}
!1440 = !DILocation(line: 432, column: 15, scope: !1405)
!1441 = !DILocation(line: 433, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 433, column: 9)
!1443 = !DILocation(line: 433, column: 19, scope: !1442)
!1444 = !DILocation(line: 433, column: 9, scope: !1405)
!1445 = !DILocation(line: 434, column: 19, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 433, column: 41)
!1447 = !DILocation(line: 435, column: 5, scope: !1446)
!1448 = !DILocation(line: 437, column: 12, scope: !1405)
!1449 = !DILocation(line: 438, column: 1, scope: !1405)
!1450 = !DILocation(line: 437, column: 5, scope: !1405)
!1451 = distinct !DISubprogram(name: "ngx_stream_lua_ffi_raw_log", scope: !2, file: !2, line: 442, type: !1452, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!109, !253, !109, !110, !103}
!1454 = !{!1455, !1456, !1457, !1458, !1459}
!1455 = !DILocalVariable(name: "r", arg: 1, scope: !1451, file: !2, line: 442, type: !253)
!1456 = !DILocalVariable(name: "level", arg: 2, scope: !1451, file: !2, line: 442, type: !109)
!1457 = !DILocalVariable(name: "s", arg: 3, scope: !1451, file: !2, line: 442, type: !110)
!1458 = !DILocalVariable(name: "s_len", arg: 4, scope: !1451, file: !2, line: 443, type: !103)
!1459 = !DILocalVariable(name: "log", scope: !1451, file: !2, line: 445, type: !203)
!1460 = !DILocation(line: 442, column: 54, scope: !1451)
!1461 = !DILocation(line: 442, column: 61, scope: !1451)
!1462 = !DILocation(line: 442, column: 76, scope: !1451)
!1463 = !DILocation(line: 443, column: 12, scope: !1451)
!1464 = !DILocation(line: 445, column: 5, scope: !1451)
!1465 = !DILocation(line: 445, column: 26, scope: !1451)
!1466 = !DILocation(line: 447, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 447, column: 9)
!1468 = !DILocation(line: 447, column: 15, scope: !1467)
!1469 = !DILocation(line: 447, column: 31, scope: !1467)
!1470 = !DILocation(line: 447, column: 34, scope: !1467)
!1471 = !DILocation(line: 447, column: 40, scope: !1467)
!1472 = !DILocation(line: 447, column: 9, scope: !1451)
!1473 = !DILocation(line: 448, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 447, column: 58)
!1475 = !DILocation(line: 451, column: 9, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 451, column: 9)
!1477 = !DILocation(line: 451, column: 11, scope: !1476)
!1478 = !DILocation(line: 451, column: 14, scope: !1476)
!1479 = !DILocation(line: 451, column: 17, scope: !1476)
!1480 = !DILocation(line: 451, column: 28, scope: !1476)
!1481 = !DILocation(line: 451, column: 31, scope: !1476)
!1482 = !DILocation(line: 451, column: 34, scope: !1476)
!1483 = !DILocation(line: 451, column: 46, scope: !1476)
!1484 = !DILocation(line: 451, column: 9, scope: !1451)
!1485 = !DILocation(line: 452, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 451, column: 51)
!1487 = !DILocation(line: 452, column: 18, scope: !1486)
!1488 = !DILocation(line: 452, column: 30, scope: !1486)
!1489 = !DILocation(line: 452, column: 13, scope: !1486)
!1490 = !DILocation(line: 454, column: 5, scope: !1486)
!1491 = !DILocation(line: 455, column: 15, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 454, column: 12)
!1493 = !DILocation(line: 455, column: 26, scope: !1492)
!1494 = !DILocation(line: 455, column: 13, scope: !1492)
!1495 = !DILocation(line: 458, column: 5, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 458, column: 5)
!1497 = !DILocation(line: 458, column: 5, scope: !1451)
!1498 = !DILocation(line: 460, column: 5, scope: !1451)
!1499 = !DILocation(line: 461, column: 1, scope: !1451)
!1500 = !DISubprogram(name: "ngx_log_error_core", scope: !207, file: !207, line: 90, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !92, !203, !1503, !116, null}
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !1504, line: 16, baseType: !109)
!1504 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!1505 = distinct !DISubprogram(name: "ngx_stream_lua_get_req", scope: !1506, file: !1506, line: 385, type: !1507, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1509)
!1506 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_util.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b022de5ec41f9ea6c310e1c1512f615b")
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!253, !132}
!1509 = !{!1510}
!1510 = !DILocalVariable(name: "L", arg: 1, scope: !1505, file: !1506, line: 385, type: !132)
!1511 = !DILocation(line: 385, column: 35, scope: !1505)
!1512 = !DILocation(line: 388, column: 26, scope: !1505)
!1513 = !DILocation(line: 388, column: 12, scope: !1505)
!1514 = !DILocation(line: 388, column: 5, scope: !1505)
!1515 = !DISubprogram(name: "luaL_checkinteger", scope: !1516, file: !1516, line: 41, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lauxlib.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "fe4d1fbdf3f9191994e146a57f8e7a12")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1519, !132, !109}
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !134, line: 104, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1521, line: 59, baseType: !120)
!1521 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!1522 = !DISubprogram(name: "lua_pushfstring", scope: !134, file: !134, line: 168, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!116, !132, !116, null}
!1525 = !DISubprogram(name: "luaL_argerror", scope: !1516, file: !1516, line: 33, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!109, !132, !109, !116}
!1528 = !DISubprogram(name: "lua_remove", scope: !134, file: !134, line: 124, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !132, !109}
!1531 = distinct !DISubprogram(name: "log_wrapper", scope: !2, file: !2, line: 99, type: !1532, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!109, !203, !116, !92, !132}
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1535 = !DILocalVariable(name: "log", arg: 1, scope: !1531, file: !2, line: 99, type: !203)
!1536 = !DILocalVariable(name: "ident", arg: 2, scope: !1531, file: !2, line: 99, type: !116)
!1537 = !DILocalVariable(name: "level", arg: 3, scope: !1531, file: !2, line: 99, type: !92)
!1538 = !DILocalVariable(name: "L", arg: 4, scope: !1531, file: !2, line: 100, type: !132)
!1539 = !DILocalVariable(name: "buf", scope: !1531, file: !2, line: 102, type: !110)
!1540 = !DILocalVariable(name: "p", scope: !1531, file: !2, line: 103, type: !110)
!1541 = !DILocalVariable(name: "q", scope: !1531, file: !2, line: 103, type: !110)
!1542 = !DILocalVariable(name: "name", scope: !1531, file: !2, line: 104, type: !220)
!1543 = !DILocalVariable(name: "nargs", scope: !1531, file: !2, line: 105, type: !109)
!1544 = !DILocalVariable(name: "i", scope: !1531, file: !2, line: 105, type: !109)
!1545 = !DILocalVariable(name: "size", scope: !1531, file: !2, line: 106, type: !103)
!1546 = !DILocalVariable(name: "len", scope: !1531, file: !2, line: 106, type: !103)
!1547 = !DILocalVariable(name: "src_len", scope: !1531, file: !2, line: 107, type: !103)
!1548 = !DILocalVariable(name: "type", scope: !1531, file: !2, line: 108, type: !109)
!1549 = !DILocalVariable(name: "msg", scope: !1531, file: !2, line: 109, type: !116)
!1550 = !DILocalVariable(name: "ar", scope: !1531, file: !2, line: 110, type: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !134, line: 330, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !134, line: 362, size: 960, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1567}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1552, file: !134, line: 363, baseType: !109, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1552, file: !134, line: 364, baseType: !116, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !1552, file: !134, line: 365, baseType: !116, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !1552, file: !134, line: 366, baseType: !116, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1552, file: !134, line: 367, baseType: !116, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !1552, file: !134, line: 368, baseType: !109, size: 32, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !1552, file: !134, line: 369, baseType: !109, size: 32, offset: 352)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !1552, file: !134, line: 370, baseType: !109, size: 32, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !1552, file: !134, line: 371, baseType: !109, size: 32, offset: 416)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !1552, file: !134, line: 372, baseType: !1564, size: 480, offset: 448)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 60)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !1552, file: !134, line: 374, baseType: !109, size: 32, offset: 928)
!1568 = !DILocation(line: 99, column: 24, scope: !1531)
!1569 = !DILocation(line: 99, column: 41, scope: !1531)
!1570 = !DILocation(line: 99, column: 59, scope: !1531)
!1571 = !DILocation(line: 100, column: 16, scope: !1531)
!1572 = !DILocation(line: 102, column: 5, scope: !1531)
!1573 = !DILocation(line: 102, column: 26, scope: !1531)
!1574 = !DILocation(line: 103, column: 5, scope: !1531)
!1575 = !DILocation(line: 103, column: 26, scope: !1531)
!1576 = !DILocation(line: 103, column: 30, scope: !1531)
!1577 = !DILocation(line: 104, column: 5, scope: !1531)
!1578 = !DILocation(line: 104, column: 26, scope: !1531)
!1579 = !DILocation(line: 105, column: 5, scope: !1531)
!1580 = !DILocation(line: 105, column: 26, scope: !1531)
!1581 = !DILocation(line: 105, column: 33, scope: !1531)
!1582 = !DILocation(line: 106, column: 5, scope: !1531)
!1583 = !DILocation(line: 106, column: 26, scope: !1531)
!1584 = !DILocation(line: 106, column: 32, scope: !1531)
!1585 = !DILocation(line: 107, column: 5, scope: !1531)
!1586 = !DILocation(line: 107, column: 26, scope: !1531)
!1587 = !DILocation(line: 108, column: 5, scope: !1531)
!1588 = !DILocation(line: 108, column: 26, scope: !1531)
!1589 = !DILocation(line: 109, column: 5, scope: !1531)
!1590 = !DILocation(line: 109, column: 26, scope: !1531)
!1591 = !DILocation(line: 110, column: 5, scope: !1531)
!1592 = !DILocation(line: 110, column: 26, scope: !1531)
!1593 = !DILocation(line: 112, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 112, column: 9)
!1595 = !DILocation(line: 112, column: 17, scope: !1594)
!1596 = !DILocation(line: 112, column: 22, scope: !1594)
!1597 = !DILocation(line: 112, column: 15, scope: !1594)
!1598 = !DILocation(line: 112, column: 9, scope: !1531)
!1599 = !DILocation(line: 113, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 112, column: 33)
!1601 = !DILocation(line: 119, column: 18, scope: !1531)
!1602 = !DILocation(line: 119, column: 5, scope: !1531)
!1603 = !DILocation(line: 120, column: 17, scope: !1531)
!1604 = !DILocation(line: 120, column: 5, scope: !1531)
!1605 = !DILocation(line: 123, column: 31, scope: !1531)
!1606 = !DILocation(line: 123, column: 28, scope: !1531)
!1607 = !DILocation(line: 123, column: 10, scope: !1531)
!1608 = !DILocation(line: 123, column: 15, scope: !1531)
!1609 = !{!1158, !139, i64 8}
!1610 = !DILocation(line: 124, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 124, column: 9)
!1612 = !DILocation(line: 124, column: 19, scope: !1611)
!1613 = !DILocation(line: 124, column: 9, scope: !1531)
!1614 = !DILocation(line: 125, column: 14, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 124, column: 28)
!1616 = !DILocation(line: 125, column: 18, scope: !1615)
!1617 = !{!1158, !1157, i64 0}
!1618 = !DILocation(line: 127, column: 5, scope: !1615)
!1619 = !DILocation(line: 128, column: 18, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 127, column: 12)
!1621 = !DILocation(line: 128, column: 11, scope: !1620)
!1622 = !DILocation(line: 129, column: 9, scope: !1620)
!1623 = !DILocation(line: 129, column: 17, scope: !1620)
!1624 = !DILocation(line: 129, column: 16, scope: !1620)
!1625 = !{!140, !140, i64 0}
!1626 = !DILocation(line: 129, column: 19, scope: !1620)
!1627 = !DILocation(line: 130, column: 18, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 130, column: 17)
!1629 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 129, column: 28)
!1630 = !DILocation(line: 130, column: 17, scope: !1628)
!1631 = !DILocation(line: 130, column: 20, scope: !1628)
!1632 = !DILocation(line: 130, column: 27, scope: !1628)
!1633 = !DILocation(line: 130, column: 31, scope: !1628)
!1634 = !DILocation(line: 130, column: 30, scope: !1628)
!1635 = !DILocation(line: 130, column: 33, scope: !1628)
!1636 = !DILocation(line: 130, column: 17, scope: !1629)
!1637 = !DILocation(line: 131, column: 29, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 130, column: 42)
!1639 = !DILocation(line: 131, column: 31, scope: !1638)
!1640 = !DILocation(line: 131, column: 22, scope: !1638)
!1641 = !DILocation(line: 131, column: 27, scope: !1638)
!1642 = !DILocation(line: 132, column: 13, scope: !1638)
!1643 = !DILocation(line: 133, column: 14, scope: !1629)
!1644 = distinct !{!1644, !1622, !1645, !1646}
!1645 = !DILocation(line: 134, column: 9, scope: !1620)
!1646 = !{!"llvm.loop.mustprogress"}
!1647 = !DILocation(line: 136, column: 20, scope: !1620)
!1648 = !DILocation(line: 136, column: 29, scope: !1620)
!1649 = !DILocation(line: 136, column: 22, scope: !1620)
!1650 = !DILocation(line: 136, column: 14, scope: !1620)
!1651 = !DILocation(line: 136, column: 18, scope: !1620)
!1652 = !DILocation(line: 141, column: 24, scope: !1531)
!1653 = !DILocation(line: 141, column: 13, scope: !1531)
!1654 = !DILocation(line: 141, column: 11, scope: !1531)
!1655 = !DILocation(line: 143, column: 17, scope: !1531)
!1656 = !DILocation(line: 143, column: 21, scope: !1531)
!1657 = !DILocation(line: 143, column: 37, scope: !1531)
!1658 = !DILocation(line: 143, column: 53, scope: !1531)
!1659 = !DILocation(line: 143, column: 10, scope: !1531)
!1660 = !DILocation(line: 145, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 145, column: 9)
!1662 = !{!1663, !139, i64 16}
!1663 = !{!"lua_Debug", !1156, i64 0, !139, i64 8, !139, i64 16, !139, i64 24, !139, i64 32, !1156, i64 40, !1156, i64 44, !1156, i64 48, !1156, i64 52, !140, i64 56, !1156, i64 116}
!1664 = !DILocation(line: 145, column: 9, scope: !1661)
!1665 = !DILocation(line: 145, column: 22, scope: !1661)
!1666 = !DILocation(line: 145, column: 30, scope: !1661)
!1667 = !DILocation(line: 145, column: 37, scope: !1661)
!1668 = !{!1663, !139, i64 24}
!1669 = !DILocation(line: 145, column: 33, scope: !1661)
!1670 = !DILocation(line: 145, column: 42, scope: !1661)
!1671 = !DILocation(line: 145, column: 9, scope: !1531)
!1672 = !DILocation(line: 146, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 145, column: 50)
!1674 = !{!1663, !139, i64 8}
!1675 = !DILocation(line: 146, column: 17, scope: !1673)
!1676 = !DILocation(line: 147, column: 17, scope: !1673)
!1677 = !DILocation(line: 147, column: 25, scope: !1673)
!1678 = !DILocation(line: 147, column: 42, scope: !1673)
!1679 = !DILocation(line: 147, column: 14, scope: !1673)
!1680 = !DILocation(line: 148, column: 5, scope: !1673)
!1681 = !DILocation(line: 150, column: 12, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 150, column: 5)
!1683 = !DILocation(line: 150, column: 10, scope: !1682)
!1684 = !DILocation(line: 150, column: 17, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 150, column: 5)
!1686 = !DILocation(line: 150, column: 22, scope: !1685)
!1687 = !DILocation(line: 150, column: 19, scope: !1685)
!1688 = !DILocation(line: 150, column: 5, scope: !1682)
!1689 = !DILocation(line: 151, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 150, column: 34)
!1691 = !DILocation(line: 151, column: 28, scope: !1690)
!1692 = !DILocation(line: 151, column: 16, scope: !1690)
!1693 = !DILocation(line: 151, column: 14, scope: !1690)
!1694 = !DILocation(line: 152, column: 17, scope: !1690)
!1695 = !DILocation(line: 152, column: 9, scope: !1690)
!1696 = !DILocation(line: 155, column: 31, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 152, column: 23)
!1698 = !DILocation(line: 155, column: 34, scope: !1697)
!1699 = !DILocation(line: 155, column: 17, scope: !1697)
!1700 = !DILocation(line: 156, column: 25, scope: !1697)
!1701 = !DILocation(line: 156, column: 22, scope: !1697)
!1702 = !DILocation(line: 157, column: 17, scope: !1697)
!1703 = !DILocation(line: 160, column: 22, scope: !1697)
!1704 = !DILocation(line: 161, column: 17, scope: !1697)
!1705 = !DILocation(line: 164, column: 35, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 164, column: 21)
!1707 = !DILocation(line: 164, column: 38, scope: !1706)
!1708 = !DILocation(line: 164, column: 21, scope: !1706)
!1709 = !DILocation(line: 164, column: 21, scope: !1697)
!1710 = !DILocation(line: 165, column: 26, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 164, column: 42)
!1712 = !DILocation(line: 167, column: 17, scope: !1711)
!1713 = !DILocation(line: 168, column: 26, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 167, column: 24)
!1715 = !DILocation(line: 171, column: 17, scope: !1697)
!1716 = !DILocation(line: 174, column: 36, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 174, column: 21)
!1718 = !DILocation(line: 174, column: 39, scope: !1717)
!1719 = !DILocation(line: 174, column: 22, scope: !1717)
!1720 = !DILocation(line: 174, column: 21, scope: !1697)
!1721 = !DILocation(line: 175, column: 42, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 174, column: 57)
!1723 = !DILocation(line: 175, column: 45, scope: !1722)
!1724 = !DILocation(line: 175, column: 28, scope: !1722)
!1725 = !DILocation(line: 175, column: 21, scope: !1722)
!1726 = !DILocation(line: 179, column: 31, scope: !1697)
!1727 = !DILocation(line: 179, column: 17, scope: !1697)
!1728 = !DILocation(line: 180, column: 25, scope: !1697)
!1729 = !DILocation(line: 180, column: 22, scope: !1697)
!1730 = !DILocation(line: 181, column: 17, scope: !1697)
!1731 = !DILocation(line: 184, column: 36, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 184, column: 21)
!1733 = !DILocation(line: 184, column: 39, scope: !1732)
!1734 = !DILocation(line: 184, column: 21, scope: !1732)
!1735 = !DILocation(line: 184, column: 42, scope: !1732)
!1736 = !DILocation(line: 184, column: 21, scope: !1697)
!1737 = !DILocation(line: 185, column: 26, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 184, column: 51)
!1739 = !DILocation(line: 186, column: 21, scope: !1738)
!1740 = !DILocation(line: 189, column: 17, scope: !1697)
!1741 = !DILocation(line: 192, column: 39, scope: !1697)
!1742 = !DILocation(line: 194, column: 52, scope: !1697)
!1743 = !DILocation(line: 194, column: 55, scope: !1697)
!1744 = !DILocation(line: 194, column: 39, scope: !1697)
!1745 = !DILocation(line: 192, column: 23, scope: !1697)
!1746 = !DILocation(line: 192, column: 21, scope: !1697)
!1747 = !DILocation(line: 195, column: 38, scope: !1697)
!1748 = !DILocation(line: 195, column: 41, scope: !1697)
!1749 = !DILocation(line: 195, column: 44, scope: !1697)
!1750 = !DILocation(line: 195, column: 24, scope: !1697)
!1751 = !DILocation(line: 195, column: 17, scope: !1697)
!1752 = !DILocation(line: 197, column: 5, scope: !1690)
!1753 = !DILocation(line: 150, column: 30, scope: !1685)
!1754 = !DILocation(line: 150, column: 5, scope: !1685)
!1755 = distinct !{!1755, !1688, !1756, !1646}
!1756 = !DILocation(line: 197, column: 5, scope: !1682)
!1757 = !DILocation(line: 199, column: 27, scope: !1531)
!1758 = !DILocation(line: 199, column: 30, scope: !1531)
!1759 = !DILocation(line: 199, column: 11, scope: !1531)
!1760 = !DILocation(line: 199, column: 9, scope: !1531)
!1761 = !DILocation(line: 201, column: 9, scope: !1531)
!1762 = !DILocation(line: 201, column: 7, scope: !1531)
!1763 = !DILocation(line: 203, column: 7, scope: !1531)
!1764 = !DILocation(line: 203, column: 10, scope: !1531)
!1765 = !DILocation(line: 205, column: 22, scope: !1531)
!1766 = !DILocation(line: 206, column: 25, scope: !1531)
!1767 = !{!1663, !1156, i64 40}
!1768 = !DILocation(line: 206, column: 22, scope: !1531)
!1769 = !DILocation(line: 206, column: 42, scope: !1531)
!1770 = !DILocation(line: 206, column: 59, scope: !1531)
!1771 = !{!1663, !1156, i64 48}
!1772 = !DILocation(line: 205, column: 9, scope: !1531)
!1773 = !DILocation(line: 205, column: 7, scope: !1531)
!1774 = !DILocation(line: 208, column: 7, scope: !1531)
!1775 = !DILocation(line: 208, column: 10, scope: !1531)
!1776 = !DILocation(line: 208, column: 19, scope: !1531)
!1777 = !DILocation(line: 208, column: 22, scope: !1531)
!1778 = !DILocation(line: 210, column: 13, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 210, column: 9)
!1780 = !DILocation(line: 210, column: 9, scope: !1779)
!1781 = !DILocation(line: 210, column: 22, scope: !1779)
!1782 = !DILocation(line: 210, column: 30, scope: !1779)
!1783 = !DILocation(line: 210, column: 37, scope: !1779)
!1784 = !DILocation(line: 210, column: 33, scope: !1779)
!1785 = !DILocation(line: 210, column: 42, scope: !1779)
!1786 = !DILocation(line: 210, column: 9, scope: !1531)
!1787 = !DILocation(line: 211, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 210, column: 50)
!1789 = !DILocation(line: 211, column: 11, scope: !1788)
!1790 = !DILocation(line: 212, column: 11, scope: !1788)
!1791 = !DILocation(line: 212, column: 14, scope: !1788)
!1792 = !DILocation(line: 213, column: 11, scope: !1788)
!1793 = !DILocation(line: 213, column: 14, scope: !1788)
!1794 = !DILocation(line: 214, column: 11, scope: !1788)
!1795 = !DILocation(line: 214, column: 14, scope: !1788)
!1796 = !DILocation(line: 215, column: 11, scope: !1788)
!1797 = !DILocation(line: 215, column: 14, scope: !1788)
!1798 = !DILocation(line: 216, column: 5, scope: !1788)
!1799 = !DILocation(line: 218, column: 12, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 218, column: 5)
!1801 = !DILocation(line: 218, column: 10, scope: !1800)
!1802 = !DILocation(line: 218, column: 17, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 218, column: 5)
!1804 = !DILocation(line: 218, column: 22, scope: !1803)
!1805 = !DILocation(line: 218, column: 19, scope: !1803)
!1806 = !DILocation(line: 218, column: 5, scope: !1800)
!1807 = !DILocation(line: 219, column: 25, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 218, column: 34)
!1809 = !DILocation(line: 219, column: 28, scope: !1808)
!1810 = !DILocation(line: 219, column: 16, scope: !1808)
!1811 = !DILocation(line: 219, column: 14, scope: !1808)
!1812 = !DILocation(line: 220, column: 17, scope: !1808)
!1813 = !DILocation(line: 220, column: 9, scope: !1808)
!1814 = !DILocation(line: 223, column: 46, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 220, column: 23)
!1816 = !DILocation(line: 223, column: 49, scope: !1815)
!1817 = !DILocation(line: 223, column: 32, scope: !1815)
!1818 = !DILocation(line: 223, column: 19, scope: !1815)
!1819 = !DILocation(line: 224, column: 21, scope: !1815)
!1820 = !DILocation(line: 224, column: 19, scope: !1815)
!1821 = !DILocation(line: 225, column: 17, scope: !1815)
!1822 = !DILocation(line: 228, column: 19, scope: !1815)
!1823 = !DILocation(line: 228, column: 22, scope: !1815)
!1824 = !DILocation(line: 229, column: 19, scope: !1815)
!1825 = !DILocation(line: 229, column: 22, scope: !1815)
!1826 = !DILocation(line: 230, column: 19, scope: !1815)
!1827 = !DILocation(line: 230, column: 22, scope: !1815)
!1828 = !DILocation(line: 231, column: 17, scope: !1815)
!1829 = !DILocation(line: 234, column: 35, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 234, column: 21)
!1831 = !DILocation(line: 234, column: 38, scope: !1830)
!1832 = !DILocation(line: 234, column: 21, scope: !1830)
!1833 = !DILocation(line: 234, column: 21, scope: !1815)
!1834 = !DILocation(line: 235, column: 23, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 234, column: 42)
!1836 = !DILocation(line: 235, column: 26, scope: !1835)
!1837 = !DILocation(line: 236, column: 23, scope: !1835)
!1838 = !DILocation(line: 236, column: 26, scope: !1835)
!1839 = !DILocation(line: 237, column: 23, scope: !1835)
!1840 = !DILocation(line: 237, column: 26, scope: !1835)
!1841 = !DILocation(line: 238, column: 23, scope: !1835)
!1842 = !DILocation(line: 238, column: 26, scope: !1835)
!1843 = !DILocation(line: 240, column: 17, scope: !1835)
!1844 = !DILocation(line: 241, column: 23, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 240, column: 24)
!1846 = !DILocation(line: 241, column: 26, scope: !1845)
!1847 = !DILocation(line: 242, column: 23, scope: !1845)
!1848 = !DILocation(line: 242, column: 26, scope: !1845)
!1849 = !DILocation(line: 243, column: 23, scope: !1845)
!1850 = !DILocation(line: 243, column: 26, scope: !1845)
!1851 = !DILocation(line: 244, column: 23, scope: !1845)
!1852 = !DILocation(line: 244, column: 26, scope: !1845)
!1853 = !DILocation(line: 245, column: 23, scope: !1845)
!1854 = !DILocation(line: 245, column: 26, scope: !1845)
!1855 = !DILocation(line: 248, column: 17, scope: !1815)
!1856 = !DILocation(line: 251, column: 31, scope: !1815)
!1857 = !DILocation(line: 251, column: 34, scope: !1815)
!1858 = !DILocation(line: 251, column: 17, scope: !1815)
!1859 = !DILocation(line: 252, column: 46, scope: !1815)
!1860 = !DILocation(line: 252, column: 32, scope: !1815)
!1861 = !DILocation(line: 252, column: 19, scope: !1815)
!1862 = !DILocation(line: 253, column: 21, scope: !1815)
!1863 = !DILocation(line: 253, column: 19, scope: !1815)
!1864 = !DILocation(line: 254, column: 17, scope: !1815)
!1865 = !DILocation(line: 257, column: 19, scope: !1815)
!1866 = !DILocation(line: 257, column: 22, scope: !1815)
!1867 = !DILocation(line: 258, column: 19, scope: !1815)
!1868 = !DILocation(line: 258, column: 22, scope: !1815)
!1869 = !DILocation(line: 259, column: 19, scope: !1815)
!1870 = !DILocation(line: 259, column: 22, scope: !1815)
!1871 = !DILocation(line: 260, column: 19, scope: !1815)
!1872 = !DILocation(line: 260, column: 22, scope: !1815)
!1873 = !DILocation(line: 262, column: 17, scope: !1815)
!1874 = !DILocation(line: 265, column: 35, scope: !1815)
!1875 = !DILocation(line: 265, column: 24, scope: !1815)
!1876 = !DILocation(line: 265, column: 17, scope: !1815)
!1877 = !DILocation(line: 267, column: 5, scope: !1808)
!1878 = !DILocation(line: 218, column: 30, scope: !1803)
!1879 = !DILocation(line: 218, column: 5, scope: !1803)
!1880 = distinct !{!1880, !1806, !1881, !1646}
!1881 = !DILocation(line: 267, column: 5, scope: !1800)
!1882 = !DILocation(line: 269, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 269, column: 9)
!1884 = !DILocation(line: 269, column: 13, scope: !1883)
!1885 = !DILocation(line: 269, column: 11, scope: !1883)
!1886 = !DILocation(line: 269, column: 27, scope: !1883)
!1887 = !DILocation(line: 269, column: 17, scope: !1883)
!1888 = !DILocation(line: 269, column: 9, scope: !1531)
!1889 = !DILocation(line: 270, column: 27, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 269, column: 33)
!1891 = !DILocation(line: 270, column: 62, scope: !1890)
!1892 = !DILocation(line: 270, column: 66, scope: !1890)
!1893 = !DILocation(line: 270, column: 64, scope: !1890)
!1894 = !DILocation(line: 270, column: 55, scope: !1890)
!1895 = !DILocation(line: 271, column: 33, scope: !1890)
!1896 = !DILocation(line: 271, column: 27, scope: !1890)
!1897 = !DILocation(line: 270, column: 16, scope: !1890)
!1898 = !DILocation(line: 270, column: 9, scope: !1890)
!1899 = !DILocation(line: 274, column: 5, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 274, column: 5)
!1901 = !DILocation(line: 274, column: 5, scope: !1531)
!1902 = !DILocation(line: 276, column: 5, scope: !1531)
!1903 = !DILocation(line: 277, column: 1, scope: !1531)
!1904 = !DISubprogram(name: "lua_getexdata", scope: !134, file: !134, line: 249, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!106, !132}
!1907 = !DISubprogram(name: "lua_getstack", scope: !134, file: !134, line: 337, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!109, !132, !109, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1911 = !DISubprogram(name: "lua_getinfo", scope: !134, file: !134, line: 338, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!109, !132, !116, !1910}
!1914 = !DISubprogram(name: "lua_gettop", scope: !134, file: !134, line: 121, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DISubprogram(name: "strlen", scope: !1916, file: !1916, line: 407, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1916 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!96, !116}
!1919 = !DISubprogram(name: "lua_type", scope: !134, file: !134, line: 140, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!109, !132, !109}
!1922 = !DISubprogram(name: "lua_tolstring", scope: !134, file: !134, line: 150, type: !1923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!116, !132, !109, !1290}
!1925 = !DISubprogram(name: "lua_toboolean", scope: !134, file: !134, line: 149, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1926 = !DISubprogram(name: "luaL_callmeta", scope: !1516, file: !1516, line: 31, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1927 = !DISubprogram(name: "lua_touserdata", scope: !134, file: !134, line: 153, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!106, !132, !109}
!1930 = !DISubprogram(name: "lua_typename", scope: !134, file: !134, line: 141, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!116, !132, !109}
!1933 = !DISubprogram(name: "lua_newuserdata", scope: !134, file: !134, line: 183, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!106, !132, !103}
!1936 = !DISubprogram(name: "luaL_error", scope: !1516, file: !1516, line: 53, type: !1937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!109, !132, !116, null}
!1939 = !DISubprogram(name: "lua_pushinteger", scope: !134, file: !134, line: 163, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !132, !1519}
