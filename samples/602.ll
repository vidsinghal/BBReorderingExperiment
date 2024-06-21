; ModuleID = 'samples/602.bc'
source_filename = "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/mod_wstunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_plugin_keys_t = type { ptr, i8, i8, i8 }
%struct.plugin = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.plugin_data = type { i32, i32, ptr, ptr, i32, %struct.plugin_config, %struct.plugin_config }
%struct.plugin_config = type { %struct.gw_plugin_config, ptr, i32, i16 }
%struct.gw_plugin_config = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.config_plugin_value = type { i32, i32, %union.v_u }
%union.v_u = type { ptr }
%struct.gw_exts = type { ptr, i32, i32 }
%struct.server = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, [3 x double], ptr, %struct.server_config, ptr, %struct.server_socket_array, %struct.server_socket_array, %struct.anon, i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.server_config = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.array }
%struct.array = type { ptr, ptr, i32, i32 }
%struct.server_socket_array = type { ptr, i32 }
%struct.anon = type { ptr, i32 }
%struct.data_string = type { %struct.buffer, ptr, i32, i32, %struct.buffer }
%struct.buffer = type { ptr, i32, i32 }
%struct.request_st = type { i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.request_config, i32, i64, %struct.array, %struct.request_uri, %struct.physical, %struct.array, i64, i64, i64, ptr, ptr, %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer, i32, i64, %struct.array, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i64, i64, %struct.timespec, i32, i32, %struct.chunkqueue, %struct.chunkqueue, %struct.chunkqueue, ptr, i32, i32 }
%struct.request_config = type { ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i16, i16, i24, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.request_uri = type { %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer }
%struct.physical = type { %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer }
%struct.timespec = type { i64, i64 }
%struct.chunkqueue = type { ptr, ptr, i64, i64, ptr, i64, i32 }
%struct.connection = type { %struct.request_st, ptr, i32, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.sock_addr, %struct.buffer, ptr, i64, i64, i64, i64, i32, i32, ptr, ptr }
%union.sock_addr = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.handler_ctx = type { %struct.gw_handler_ctx, %struct.mod_wstunnel_frame_t, i32, i64, i32, ptr, %struct.plugin_config }
%struct.gw_handler_ctx = type { ptr, ptr, ptr, ptr, i16, i32, ptr, i64, %struct.chunkqueue, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.http_response_opts_t, %struct.gw_plugin_config, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.http_response_opts_t = type { i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.mod_wstunnel_frame_t = type { i32, %struct.mod_wstunnel_frame_control_t, i32, i32, i32, ptr }
%struct.mod_wstunnel_frame_control_t = type { i64, i32, i32, [4 x i8] }
%struct.chunk = type { ptr, i32, ptr, i64, %struct.anon.0 }
%struct.anon.0 = type { i64, i32, i32, ptr, ptr, ptr }
%struct._SHA_CTX = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.MD5_CTX = type { [4 x i32], [2 x i32], [64 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"wstunnel\00", align 1, !dbg !0
@mod_wstunnel_set_defaults.cpk = internal constant [8 x %struct.config_plugin_keys_t] [%struct.config_plugin_keys_t { ptr @.str.1, i8 15, i8 7, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.2, i8 16, i8 1, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.3, i8 14, i8 3, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.4, i8 23, i8 8, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.5, i8 19, i8 1, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.6, i8 16, i8 9, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.7, i8 22, i8 2, i8 2 }, %struct.config_plugin_keys_t zeroinitializer], align 16, !dbg !7
@.str.1 = private unnamed_addr constant [16 x i8] c"wstunnel.server\00", align 1, !dbg !1060
@.str.2 = private unnamed_addr constant [17 x i8] c"wstunnel.balance\00", align 1, !dbg !1063
@.str.3 = private unnamed_addr constant [15 x i8] c"wstunnel.debug\00", align 1, !dbg !1068
@.str.4 = private unnamed_addr constant [24 x i8] c"wstunnel.map-extensions\00", align 1, !dbg !1073
@.str.5 = private unnamed_addr constant [20 x i8] c"wstunnel.frame-type\00", align 1, !dbg !1078
@.str.6 = private unnamed_addr constant [17 x i8] c"wstunnel.origins\00", align 1, !dbg !1083
@.str.7 = private unnamed_addr constant [23 x i8] c"wstunnel.ping-interval\00", align 1, !dbg !1085
@.str.8 = private unnamed_addr constant [13 x i8] c"mod_wstunnel\00", align 1, !dbg !1090
@.str.9 = private unnamed_addr constant [158 x i8] c"/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/mod_wstunnel.c\00", align 1, !dbg !1095
@.str.10 = private unnamed_addr constant [66 x i8] c"%s must not define any hosts with attribute \22mode\22 = \22authorizer\22\00", align 1, !dbg !1100
@.str.11 = private unnamed_addr constant [7 x i8] c"binary\00", align 1, !dbg !1105
@.str.12 = private unnamed_addr constant [30 x i8] c"unexpected empty string in %s\00", align 1, !dbg !1110
@.str.13 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1, !dbg !1115
@.str.14 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1, !dbg !1118
@.str.15 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1, !dbg !1123
@.str.16 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1, !dbg !1128
@.str.17 = private unnamed_addr constant [23 x i8] c"WebSocket Version = %s\00", align 1, !dbg !1130
@.str.18 = private unnamed_addr constant [8 x i8] c"hybi-00\00", align 1, !dbg !1132
@.str.19 = private unnamed_addr constant [23 x i8] c"WebSocket Version = %d\00", align 1, !dbg !1134
@.str.20 = private unnamed_addr constant [23 x i8] c"Sec-WebSocket-Protocol\00", align 1, !dbg !1136
@.str.21 = private unnamed_addr constant [7 x i8] c"base64\00", align 1, !dbg !1138
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1140
@.str.23 = private unnamed_addr constant [35 x i8] c"will recv binary data from backend\00", align 1, !dbg !1143
@.str.24 = private unnamed_addr constant [33 x i8] c"will recv text data from backend\00", align 1, !dbg !1148
@.str.25 = private unnamed_addr constant [22 x i8] c"Sec-WebSocket-Version\00", align 1, !dbg !1153
@.str.26 = private unnamed_addr constant [30 x i8] c"invalid Sec-WebSocket-Version\00", align 1, !dbg !1158
@.str.27 = private unnamed_addr constant [27 x i8] c"Host header does not exist\00", align 1, !dbg !1160
@.str.28 = private unnamed_addr constant [30 x i8] c"allowed origins not specified\00", align 1, !dbg !1165
@.str.29 = private unnamed_addr constant [7 x i8] c"Origin\00", align 1, !dbg !1167
@.str.30 = private unnamed_addr constant [21 x i8] c"Sec-WebSocket-Origin\00", align 1, !dbg !1169
@.str.31 = private unnamed_addr constant [25 x i8] c"Origin header is invalid\00", align 1, !dbg !1174
@.str.32 = private unnamed_addr constant [30 x i8] c"%s matches allowed origin: %s\00", align 1, !dbg !1179
@.str.33 = private unnamed_addr constant [38 x i8] c"%s does not match any allowed origins\00", align 1, !dbg !1181
@.str.34 = private unnamed_addr constant [41 x i8] c"recv data from backend (fd=%d), size=%zx\00", align 1, !dbg !1186
@.str.35 = private unnamed_addr constant [28 x i8] c"fail to send data to client\00", align 1, !dbg !1191
@.str.36 = private unnamed_addr constant [12 x i8] c"type = text\00", align 1, !dbg !1196
@.str.37 = private unnamed_addr constant [14 x i8] c"type = binary\00", align 1, !dbg !1201
@.str.38 = private unnamed_addr constant [12 x i8] c"type = ping\00", align 1, !dbg !1203
@.str.39 = private unnamed_addr constant [12 x i8] c"type = pong\00", align 1, !dbg !1205
@.str.40 = private unnamed_addr constant [13 x i8] c"type = close\00", align 1, !dbg !1207
@.str.41 = private unnamed_addr constant [17 x i8] c"payload size=%zx\00", align 1, !dbg !1209
@.str.42 = private unnamed_addr constant [44 x i8] c"send data to client (fd=%d), frame size=%zx\00", align 1, !dbg !1211
@send_ietf_00.head = internal constant i8 0, align 1, !dbg !1216
@send_ietf_00.tail = internal constant i8 -1, align 1, !dbg !1230
@.str.43 = private unnamed_addr constant [19 x i8] c"invalid frame type\00", align 1, !dbg !1232
@.str.44 = private unnamed_addr constant [33 x i8] c"disconnected from client (fd=%d)\00", align 1, !dbg !1237
@.str.45 = private unnamed_addr constant [38 x i8] c"send close response to client (fd=%d)\00", align 1, !dbg !1239
@.str.46 = private unnamed_addr constant [5 x i8] c"1000\00", align 1, !dbg !1241
@.str.47 = private unnamed_addr constant [41 x i8] c"recv data from client (fd=%d), size=%llx\00", align 1, !dbg !1246
@.str.48 = private unnamed_addr constant [21 x i8] c"c->type == MEM_CHUNK\00", align 1, !dbg !1248
@.str.49 = private unnamed_addr constant [16 x i8] c"type = continue\00", align 1, !dbg !1250
@.str.50 = private unnamed_addr constant [16 x i8] c"type is invalid\00", align 1, !dbg !1252
@.str.51 = private unnamed_addr constant [23 x i8] c"payload was not masked\00", align 1, !dbg !1254
@.str.52 = private unnamed_addr constant [28 x i8] c"specified payload size=%llx\00", align 1, !dbg !1256
@.str.53 = private unnamed_addr constant [33 x i8] c"frame size has been exceeded: %x\00", align 1, !dbg !1258
@.str.54 = private unnamed_addr constant [24 x i8] c"read payload, size=%llx\00", align 1, !dbg !1260
@.str.55 = private unnamed_addr constant [23 x i8] c"rest of frame size=%zx\00", align 1, !dbg !1262
@.str.56 = private unnamed_addr constant [23 x i8] c"read payload, size=%zx\00", align 1, !dbg !1264
@.str.57 = private unnamed_addr constant [26 x i8] c"rest of payload size=%llx\00", align 1, !dbg !1266
@.str.58 = private unnamed_addr constant [24 x i8] c"BUG: invalid frame type\00", align 1, !dbg !1271
@.str.59 = private unnamed_addr constant [19 x i8] c"BUG: invalid state\00", align 1, !dbg !1273
@.str.60 = private unnamed_addr constant [17 x i8] c"recv close frame\00", align 1, !dbg !1275
@.str.61 = private unnamed_addr constant [19 x i8] c"recv invalid frame\00", align 1, !dbg !1277
@.str.62 = private unnamed_addr constant [33 x i8] c"got continuous payload, size=%zx\00", align 1, !dbg !1279
@.str.63 = private unnamed_addr constant [28 x i8] c"got final payload, size=%zx\00", align 1, !dbg !1281
@.str.64 = private unnamed_addr constant [25 x i8] c"try to base64 decode: %s\00", align 1, !dbg !1283
@.str.65 = private unnamed_addr constant [22 x i8] c"fail to base64-decode\00", align 1, !dbg !1285
@.str.66 = private unnamed_addr constant [19 x i8] c"BUG: unknown state\00", align 1, !dbg !1287
@log_monotonic_secs = external global i64, align 8
@.str.67 = private unnamed_addr constant [24 x i8] c"send handshake response\00", align 1, !dbg !1289
@.str.68 = private unnamed_addr constant [32 x i8] c"not supported WebSocket Version\00", align 1, !dbg !1291
@.str.69 = private unnamed_addr constant [18 x i8] c"Sec-WebSocket-Key\00", align 1, !dbg !1296
@.str.70 = private unnamed_addr constant [29 x i8] c"Sec-WebSocket-Key is invalid\00", align 1, !dbg !1301
@.str.71 = private unnamed_addr constant [37 x i8] c"258EAFA5-E914-47DA-95CA-C5AB0DC85B11\00", align 1, !dbg !1306
@.str.72 = private unnamed_addr constant [21 x i8] c"Sec-WebSocket-Accept\00", align 1, !dbg !1311
@.str.73 = private unnamed_addr constant [23 x i8] c"Sec-WebSocket-Location\00", align 1, !dbg !1313
@.str.74 = private unnamed_addr constant [6 x i8] c"https\00", align 1, !dbg !1315
@.str.75 = private unnamed_addr constant [7 x i8] c"wss://\00", align 1, !dbg !1320
@.str.76 = private unnamed_addr constant [6 x i8] c"ws://\00", align 1, !dbg !1322
@.str.77 = private unnamed_addr constant [19 x i8] c"Sec-WebSocket-Key1\00", align 1, !dbg !1324
@.str.78 = private unnamed_addr constant [19 x i8] c"Sec-WebSocket-Key2\00", align 1, !dbg !1326
@.str.79 = private unnamed_addr constant [5 x i8] c"1001\00", align 1, !dbg !1328
@.str.80 = private unnamed_addr constant [23 x i8] c"timeout client (fd=%d)\00", align 1, !dbg !1330
@.str.81 = private unnamed_addr constant [5 x i8] c"ping\00", align 1, !dbg !1332
@log_con_jqueue = external global ptr, align 8

; Function Attrs: cold nounwind optsize uwtable
define i32 @mod_wstunnel_plugin_init(ptr noundef %p) #0 !dbg !1386 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1391, metadata !DIExpression()), !dbg !1396
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1397, !tbaa !1392
  %version = getelementptr inbounds %struct.plugin, ptr %0, i32 0, i32 23, !dbg !1398
  store i64 66665, ptr %version, align 8, !dbg !1399, !tbaa !1400
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1403, !tbaa !1392
  %name = getelementptr inbounds %struct.plugin, ptr %1, i32 0, i32 22, !dbg !1404
  store ptr @.str, ptr %name, align 8, !dbg !1405, !tbaa !1406
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1407, !tbaa !1392
  %init = getelementptr inbounds %struct.plugin, ptr %2, i32 0, i32 17, !dbg !1408
  store ptr @mod_wstunnel_init, ptr %init, align 8, !dbg !1409, !tbaa !1410
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1411, !tbaa !1392
  %cleanup = getelementptr inbounds %struct.plugin, ptr %3, i32 0, i32 21, !dbg !1412
  store ptr @gw_free, ptr %cleanup, align 8, !dbg !1413, !tbaa !1414
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1415, !tbaa !1392
  %set_defaults = getelementptr inbounds %struct.plugin, ptr %4, i32 0, i32 19, !dbg !1416
  store ptr @mod_wstunnel_set_defaults, ptr %set_defaults, align 8, !dbg !1417, !tbaa !1418
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1419, !tbaa !1392
  %handle_request_reset = getelementptr inbounds %struct.plugin, ptr %5, i32 0, i32 10, !dbg !1420
  store ptr @gw_handle_request_reset, ptr %handle_request_reset, align 8, !dbg !1421, !tbaa !1422
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1423, !tbaa !1392
  %handle_uri_clean = getelementptr inbounds %struct.plugin, ptr %6, i32 0, i32 2, !dbg !1424
  store ptr @mod_wstunnel_check_extension, ptr %handle_uri_clean, align 8, !dbg !1425, !tbaa !1426
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1427, !tbaa !1392
  %handle_subrequest = getelementptr inbounds %struct.plugin, ptr %7, i32 0, i32 8, !dbg !1428
  store ptr @gw_handle_subrequest, ptr %handle_subrequest, align 8, !dbg !1429, !tbaa !1430
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1431, !tbaa !1392
  %handle_trigger = getelementptr inbounds %struct.plugin, ptr %8, i32 0, i32 14, !dbg !1432
  store ptr @mod_wstunnel_handle_trigger, ptr %handle_trigger, align 8, !dbg !1433, !tbaa !1434
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1435, !tbaa !1392
  %handle_waitpid = getelementptr inbounds %struct.plugin, ptr %9, i32 0, i32 16, !dbg !1436
  store ptr @gw_handle_waitpid_cb, ptr %handle_waitpid, align 8, !dbg !1437, !tbaa !1438
  ret i32 0, !dbg !1439
}

; Function Attrs: cold nounwind optsize uwtable
define internal ptr @mod_wstunnel_init() #0 !dbg !1440 {
entry:
  %call = call noalias nonnull ptr @ck_calloc(i64 noundef 1, i64 noundef 160), !dbg !1441
  ret ptr %call, !dbg !1442
}

; Function Attrs: cold
declare void @gw_free(ptr noundef) #1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @mod_wstunnel_set_defaults(ptr noundef %srv, ptr noundef %p_d) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %srv.addr = alloca ptr, align 8
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %cpv = alloca ptr, align 8
  %gw = alloca ptr, align 8
  %j = alloca i32, align 4
  %origin = alloca ptr, align 8
  %cpv86 = alloca ptr, align 8
  store ptr %srv, ptr %srv.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !1335, metadata !DIExpression()), !dbg !1443
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !1336, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !1444
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1337, metadata !DIExpression()), !dbg !1445
  %0 = load ptr, ptr %p_d.addr, align 8, !dbg !1446, !tbaa !1392
  store ptr %0, ptr %p, align 8, !dbg !1445, !tbaa !1392
  %1 = load ptr, ptr %srv.addr, align 8, !dbg !1447, !tbaa !1392
  %2 = load ptr, ptr %p, align 8, !dbg !1449, !tbaa !1392
  %call = call i32 @config_plugin_values_init(ptr noundef %1, ptr noundef %2, ptr noundef @mod_wstunnel_set_defaults.cpk, ptr noundef @.str.8) #13, !dbg !1450
  %tobool = icmp ne i32 %call, 0, !dbg !1450
  br i1 %tobool, label %if.end, label %if.then, !dbg !1451

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !1452

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1453
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1350, metadata !DIExpression()), !dbg !1454
  %3 = load ptr, ptr %p, align 8, !dbg !1455, !tbaa !1392
  %cvlist = getelementptr inbounds %struct.plugin_data, ptr %3, i32 0, i32 2, !dbg !1456
  %4 = load ptr, ptr %cvlist, align 8, !dbg !1456, !tbaa !1457
  %arrayidx = getelementptr inbounds %struct.config_plugin_value, ptr %4, i64 0, !dbg !1455
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx, i32 0, i32 2, !dbg !1463
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %v, i64 0, i64 1, !dbg !1455
  %5 = load i32, ptr %arrayidx1, align 4, !dbg !1455, !tbaa !1464
  %tobool2 = icmp ne i32 %5, 0, !dbg !1465
  %lnot = xor i1 %tobool2, true, !dbg !1465
  %lnot.ext = zext i1 %lnot to i32, !dbg !1465
  store i32 %lnot.ext, ptr %i, align 4, !dbg !1454, !tbaa !1466
  br label %for.cond, !dbg !1453

for.cond:                                         ; preds = %for.inc73, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !1467, !tbaa !1466
  %7 = load ptr, ptr %p, align 8, !dbg !1468, !tbaa !1392
  %nconfig = getelementptr inbounds %struct.plugin_data, ptr %7, i32 0, i32 1, !dbg !1469
  %8 = load i32, ptr %nconfig, align 4, !dbg !1469, !tbaa !1470
  %cmp = icmp slt i32 %6, %8, !dbg !1471
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1472

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup75, !dbg !1472

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpv) #12, !dbg !1473
  tail call void @llvm.dbg.declare(metadata ptr %cpv, metadata !1352, metadata !DIExpression()), !dbg !1474
  %9 = load ptr, ptr %p, align 8, !dbg !1475, !tbaa !1392
  %cvlist3 = getelementptr inbounds %struct.plugin_data, ptr %9, i32 0, i32 2, !dbg !1476
  %10 = load ptr, ptr %cvlist3, align 8, !dbg !1476, !tbaa !1457
  %11 = load ptr, ptr %p, align 8, !dbg !1477, !tbaa !1392
  %cvlist4 = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 2, !dbg !1478
  %12 = load ptr, ptr %cvlist4, align 8, !dbg !1478, !tbaa !1457
  %13 = load i32, ptr %i, align 4, !dbg !1479, !tbaa !1466
  %idxprom = sext i32 %13 to i64, !dbg !1477
  %arrayidx5 = getelementptr inbounds %struct.config_plugin_value, ptr %12, i64 %idxprom, !dbg !1477
  %v6 = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx5, i32 0, i32 2, !dbg !1480
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %v6, i64 0, i64 0, !dbg !1477
  %14 = load i32, ptr %arrayidx7, align 8, !dbg !1477, !tbaa !1464
  %idx.ext = zext i32 %14 to i64, !dbg !1481
  %add.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %10, i64 %idx.ext, !dbg !1481
  store ptr %add.ptr, ptr %cpv, align 8, !dbg !1474, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %gw) #12, !dbg !1482
  tail call void @llvm.dbg.declare(metadata ptr %gw, metadata !1355, metadata !DIExpression()), !dbg !1483
  store ptr null, ptr %gw, align 8, !dbg !1483, !tbaa !1392
  br label %for.cond8, !dbg !1484

for.cond8:                                        ; preds = %for.inc61, %for.body
  %15 = load ptr, ptr %cpv, align 8, !dbg !1485, !tbaa !1392
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %15, i32 0, i32 0, !dbg !1486
  %16 = load i32, ptr %k_id, align 8, !dbg !1486, !tbaa !1487
  %cmp9 = icmp ne i32 -1, %16, !dbg !1489
  br i1 %cmp9, label %for.body10, label %for.end62, !dbg !1490

for.body10:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %cpv, align 8, !dbg !1491, !tbaa !1392
  %k_id11 = getelementptr inbounds %struct.config_plugin_value, ptr %17, i32 0, i32 0, !dbg !1492
  %18 = load i32, ptr %k_id11, align 8, !dbg !1492, !tbaa !1487
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb35
    i32 3, label %sw.bb35
    i32 4, label %sw.bb36
    i32 5, label %sw.bb40
    i32 6, label %sw.epilog
  ], !dbg !1493

sw.bb:                                            ; preds = %for.body10
  %call12 = call noalias nonnull ptr @ck_calloc(i64 noundef 1, i64 noundef 48), !dbg !1494
  store ptr %call12, ptr %gw, align 8, !dbg !1495, !tbaa !1392
  %19 = load ptr, ptr %srv.addr, align 8, !dbg !1496, !tbaa !1392
  %20 = load ptr, ptr %p, align 8, !dbg !1498, !tbaa !1392
  %21 = load ptr, ptr %cpv, align 8, !dbg !1499, !tbaa !1392
  %v13 = getelementptr inbounds %struct.config_plugin_value, ptr %21, i32 0, i32 2, !dbg !1500
  %22 = load ptr, ptr %v13, align 8, !dbg !1501, !tbaa !1464
  %23 = load ptr, ptr %gw, align 8, !dbg !1502, !tbaa !1392
  %24 = load ptr, ptr %cpv, align 8, !dbg !1503, !tbaa !1392
  %k_id14 = getelementptr inbounds %struct.config_plugin_value, ptr %24, i32 0, i32 0, !dbg !1504
  %25 = load i32, ptr %k_id14, align 8, !dbg !1504, !tbaa !1487
  %idxprom15 = sext i32 %25 to i64, !dbg !1505
  %arrayidx16 = getelementptr inbounds [8 x %struct.config_plugin_keys_t], ptr @mod_wstunnel_set_defaults.cpk, i64 0, i64 %idxprom15, !dbg !1505
  %k = getelementptr inbounds %struct.config_plugin_keys_t, ptr %arrayidx16, i32 0, i32 0, !dbg !1506
  %26 = load ptr, ptr %k, align 16, !dbg !1506, !tbaa !1507
  %call17 = call i32 @gw_set_defaults_backend(ptr noundef %19, ptr noundef %20, ptr noundef %22, ptr noundef %23, i32 noundef 0, ptr noundef %26) #13, !dbg !1509
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1509
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1510

if.then19:                                        ; preds = %sw.bb
  %27 = load ptr, ptr %gw, align 8, !dbg !1511, !tbaa !1392
  call void @gw_plugin_config_free(ptr noundef %27) #13, !dbg !1513
  store i32 4, ptr %retval, align 4, !dbg !1514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !1514

if.end20:                                         ; preds = %sw.bb
  %28 = load ptr, ptr %gw, align 8, !dbg !1515, !tbaa !1392
  %exts_auth = getelementptr inbounds %struct.gw_plugin_config, ptr %28, i32 0, i32 1, !dbg !1517
  %29 = load ptr, ptr %exts_auth, align 8, !dbg !1517, !tbaa !1518
  %tobool21 = icmp ne ptr %29, null, !dbg !1515
  br i1 %tobool21, label %land.lhs.true, label %if.end29, !dbg !1519

land.lhs.true:                                    ; preds = %if.end20
  %30 = load ptr, ptr %gw, align 8, !dbg !1520, !tbaa !1392
  %exts_auth22 = getelementptr inbounds %struct.gw_plugin_config, ptr %30, i32 0, i32 1, !dbg !1521
  %31 = load ptr, ptr %exts_auth22, align 8, !dbg !1521, !tbaa !1518
  %used = getelementptr inbounds %struct.gw_exts, ptr %31, i32 0, i32 1, !dbg !1522
  %32 = load i32, ptr %used, align 8, !dbg !1522, !tbaa !1523
  %tobool23 = icmp ne i32 %32, 0, !dbg !1520
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !1525

if.then24:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %srv.addr, align 8, !dbg !1526, !tbaa !1392
  %errh = getelementptr inbounds %struct.server, ptr %33, i32 0, i32 15, !dbg !1528
  %34 = load ptr, ptr %errh, align 8, !dbg !1528, !tbaa !1529
  %35 = load ptr, ptr %cpv, align 8, !dbg !1534, !tbaa !1392
  %k_id25 = getelementptr inbounds %struct.config_plugin_value, ptr %35, i32 0, i32 0, !dbg !1535
  %36 = load i32, ptr %k_id25, align 8, !dbg !1535, !tbaa !1487
  %idxprom26 = sext i32 %36 to i64, !dbg !1536
  %arrayidx27 = getelementptr inbounds [8 x %struct.config_plugin_keys_t], ptr @mod_wstunnel_set_defaults.cpk, i64 0, i64 %idxprom26, !dbg !1536
  %k28 = getelementptr inbounds %struct.config_plugin_keys_t, ptr %arrayidx27, i32 0, i32 0, !dbg !1537
  %37 = load ptr, ptr %k28, align 16, !dbg !1537, !tbaa !1507
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %34, ptr noundef @.str.9, i32 noundef 290, ptr noundef @.str.10, ptr noundef %37) #13, !dbg !1538
  %38 = load ptr, ptr %gw, align 8, !dbg !1539, !tbaa !1392
  call void @gw_plugin_config_free(ptr noundef %38) #13, !dbg !1540
  store i32 4, ptr %retval, align 4, !dbg !1541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !1541

if.end29:                                         ; preds = %land.lhs.true, %if.end20
  %39 = load ptr, ptr %gw, align 8, !dbg !1542, !tbaa !1392
  %40 = load ptr, ptr %cpv, align 8, !dbg !1543, !tbaa !1392
  %v30 = getelementptr inbounds %struct.config_plugin_value, ptr %40, i32 0, i32 2, !dbg !1544
  store ptr %39, ptr %v30, align 8, !dbg !1545, !tbaa !1464
  %41 = load ptr, ptr %cpv, align 8, !dbg !1546, !tbaa !1392
  %vtype = getelementptr inbounds %struct.config_plugin_value, ptr %41, i32 0, i32 1, !dbg !1547
  store i32 10, ptr %vtype, align 4, !dbg !1548, !tbaa !1549
  br label %sw.epilog, !dbg !1550

sw.bb31:                                          ; preds = %for.body10
  %42 = load ptr, ptr %srv.addr, align 8, !dbg !1551, !tbaa !1392
  %43 = load ptr, ptr %cpv, align 8, !dbg !1552, !tbaa !1392
  %v32 = getelementptr inbounds %struct.config_plugin_value, ptr %43, i32 0, i32 2, !dbg !1553
  %44 = load ptr, ptr %v32, align 8, !dbg !1554, !tbaa !1464
  %call33 = call i32 @gw_get_defaults_balance(ptr noundef %42, ptr noundef %44) #13, !dbg !1555
  %45 = load ptr, ptr %cpv, align 8, !dbg !1556, !tbaa !1392
  %v34 = getelementptr inbounds %struct.config_plugin_value, ptr %45, i32 0, i32 2, !dbg !1557
  store i32 %call33, ptr %v34, align 8, !dbg !1558, !tbaa !1464
  br label %sw.epilog, !dbg !1559

sw.bb35:                                          ; preds = %for.body10, %for.body10
  br label %sw.epilog, !dbg !1560

sw.bb36:                                          ; preds = %for.body10
  %46 = load ptr, ptr %cpv, align 8, !dbg !1561, !tbaa !1392
  %v37 = getelementptr inbounds %struct.config_plugin_value, ptr %46, i32 0, i32 2, !dbg !1562
  %47 = load ptr, ptr %v37, align 8, !dbg !1563, !tbaa !1464
  %call38 = call i32 @buffer_eq_icase_slen(ptr noundef %47, ptr noundef @.str.11, i64 noundef 6) #14, !dbg !1564
  %48 = load ptr, ptr %cpv, align 8, !dbg !1565, !tbaa !1392
  %v39 = getelementptr inbounds %struct.config_plugin_value, ptr %48, i32 0, i32 2, !dbg !1566
  store i32 %call38, ptr %v39, align 8, !dbg !1567, !tbaa !1464
  br label %sw.epilog, !dbg !1568

sw.bb40:                                          ; preds = %for.body10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1569
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1357, metadata !DIExpression()), !dbg !1570
  store i32 0, ptr %j, align 4, !dbg !1570, !tbaa !1466
  br label %for.cond41, !dbg !1569

for.cond41:                                       ; preds = %for.inc, %sw.bb40
  %49 = load i32, ptr %j, align 4, !dbg !1571, !tbaa !1466
  %50 = load ptr, ptr %cpv, align 8, !dbg !1572, !tbaa !1392
  %v42 = getelementptr inbounds %struct.config_plugin_value, ptr %50, i32 0, i32 2, !dbg !1573
  %51 = load ptr, ptr %v42, align 8, !dbg !1574, !tbaa !1464
  %used43 = getelementptr inbounds %struct.array, ptr %51, i32 0, i32 2, !dbg !1575
  %52 = load i32, ptr %used43, align 8, !dbg !1575, !tbaa !1576
  %cmp44 = icmp ult i32 %49, %52, !dbg !1577
  br i1 %cmp44, label %for.body46, label %for.cond.cleanup45, !dbg !1578

for.cond.cleanup45:                               ; preds = %for.cond41
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !1578

for.body46:                                       ; preds = %for.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #12, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %origin, metadata !1363, metadata !DIExpression()), !dbg !1580
  %53 = load ptr, ptr %cpv, align 8, !dbg !1581, !tbaa !1392
  %v47 = getelementptr inbounds %struct.config_plugin_value, ptr %53, i32 0, i32 2, !dbg !1582
  %54 = load ptr, ptr %v47, align 8, !dbg !1583, !tbaa !1464
  %data = getelementptr inbounds %struct.array, ptr %54, i32 0, i32 0, !dbg !1584
  %55 = load ptr, ptr %data, align 8, !dbg !1584, !tbaa !1585
  %56 = load i32, ptr %j, align 4, !dbg !1586, !tbaa !1466
  %idxprom48 = zext i32 %56 to i64, !dbg !1581
  %arrayidx49 = getelementptr inbounds ptr, ptr %55, i64 %idxprom48, !dbg !1581
  %57 = load ptr, ptr %arrayidx49, align 8, !dbg !1581, !tbaa !1392
  %value = getelementptr inbounds %struct.data_string, ptr %57, i32 0, i32 4, !dbg !1587
  store ptr %value, ptr %origin, align 8, !dbg !1580, !tbaa !1392
  %58 = load ptr, ptr %origin, align 8, !dbg !1588, !tbaa !1392
  %call50 = call i32 @buffer_is_blank(ptr noundef %58) #14, !dbg !1590
  %tobool51 = icmp ne i32 %call50, 0, !dbg !1590
  br i1 %tobool51, label %if.then52, label %if.end58, !dbg !1591

if.then52:                                        ; preds = %for.body46
  %59 = load ptr, ptr %srv.addr, align 8, !dbg !1592, !tbaa !1392
  %errh53 = getelementptr inbounds %struct.server, ptr %59, i32 0, i32 15, !dbg !1594
  %60 = load ptr, ptr %errh53, align 8, !dbg !1594, !tbaa !1529
  %61 = load ptr, ptr %cpv, align 8, !dbg !1595, !tbaa !1392
  %k_id54 = getelementptr inbounds %struct.config_plugin_value, ptr %61, i32 0, i32 0, !dbg !1596
  %62 = load i32, ptr %k_id54, align 8, !dbg !1596, !tbaa !1487
  %idxprom55 = sext i32 %62 to i64, !dbg !1597
  %arrayidx56 = getelementptr inbounds [8 x %struct.config_plugin_keys_t], ptr @mod_wstunnel_set_defaults.cpk, i64 0, i64 %idxprom55, !dbg !1597
  %k57 = getelementptr inbounds %struct.config_plugin_keys_t, ptr %arrayidx56, i32 0, i32 0, !dbg !1598
  %63 = load ptr, ptr %k57, align 16, !dbg !1598, !tbaa !1507
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %60, ptr noundef @.str.9, i32 noundef 314, ptr noundef @.str.12, ptr noundef %63) #13, !dbg !1599
  store i32 4, ptr %retval, align 4, !dbg !1600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1600

if.end58:                                         ; preds = %for.body46
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1601
  br label %cleanup, !dbg !1601

cleanup:                                          ; preds = %if.end58, %if.then52
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #12, !dbg !1601
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1602

for.inc:                                          ; preds = %cleanup.cont
  %64 = load i32, ptr %j, align 4, !dbg !1603, !tbaa !1466
  %inc = add i32 %64, 1, !dbg !1603
  store i32 %inc, ptr %j, align 4, !dbg !1603, !tbaa !1466
  br label %for.cond41, !dbg !1604, !llvm.loop !1605

cleanup59:                                        ; preds = %cleanup, %for.cond.cleanup45
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1604
  %cleanup.dest60 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest60, label %cleanup69 [
    i32 9, label %for.end
  ]

for.end:                                          ; preds = %cleanup59
  br label %sw.epilog, !dbg !1608

sw.default:                                       ; preds = %for.body10
  br label %sw.epilog, !dbg !1609

sw.epilog:                                        ; preds = %sw.default, %for.body10, %for.end, %sw.bb36, %sw.bb35, %sw.bb31, %if.end29
  br label %for.inc61, !dbg !1610

for.inc61:                                        ; preds = %sw.epilog
  %65 = load ptr, ptr %cpv, align 8, !dbg !1611, !tbaa !1392
  %incdec.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %65, i32 1, !dbg !1611
  store ptr %incdec.ptr, ptr %cpv, align 8, !dbg !1611, !tbaa !1392
  br label %for.cond8, !dbg !1612, !llvm.loop !1613

for.end62:                                        ; preds = %for.cond8
  %66 = load ptr, ptr %gw, align 8, !dbg !1615, !tbaa !1392
  %tobool63 = icmp ne ptr %66, null, !dbg !1615
  br i1 %tobool63, label %land.lhs.true64, label %if.end68, !dbg !1617

land.lhs.true64:                                  ; preds = %for.end62
  %67 = load ptr, ptr %gw, align 8, !dbg !1618, !tbaa !1392
  %exts = getelementptr inbounds %struct.gw_plugin_config, ptr %67, i32 0, i32 0, !dbg !1619
  %68 = load ptr, ptr %exts, align 8, !dbg !1619, !tbaa !1620
  %tobool65 = icmp ne ptr %68, null, !dbg !1618
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !1621

if.then66:                                        ; preds = %land.lhs.true64
  %69 = load ptr, ptr %gw, align 8, !dbg !1622, !tbaa !1392
  %exts67 = getelementptr inbounds %struct.gw_plugin_config, ptr %69, i32 0, i32 0, !dbg !1624
  %70 = load ptr, ptr %exts67, align 8, !dbg !1624, !tbaa !1620
  call void @gw_exts_clear_check_local(ptr noundef %70) #13, !dbg !1625
  br label %if.end68, !dbg !1626

if.end68:                                         ; preds = %if.then66, %land.lhs.true64, %for.end62
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1627
  br label %cleanup69, !dbg !1627

cleanup69:                                        ; preds = %if.end68, %cleanup59, %if.then24, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %gw) #12, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpv) #12, !dbg !1627
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup75 [
    i32 0, label %cleanup.cont72
  ]

cleanup.cont72:                                   ; preds = %cleanup69
  br label %for.inc73, !dbg !1628

for.inc73:                                        ; preds = %cleanup.cont72
  %71 = load i32, ptr %i, align 4, !dbg !1629, !tbaa !1466
  %inc74 = add nsw i32 %71, 1, !dbg !1629
  store i32 %inc74, ptr %i, align 4, !dbg !1629, !tbaa !1466
  br label %for.cond, !dbg !1630, !llvm.loop !1631

cleanup75:                                        ; preds = %cleanup69, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1630
  %cleanup.dest76 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest76, label %cleanup99 [
    i32 2, label %for.end77
  ]

for.end77:                                        ; preds = %cleanup75
  %72 = load ptr, ptr %p, align 8, !dbg !1633, !tbaa !1392
  %defaults = getelementptr inbounds %struct.plugin_data, ptr %72, i32 0, i32 6, !dbg !1634
  %ping_interval = getelementptr inbounds %struct.plugin_config, ptr %defaults, i32 0, i32 3, !dbg !1635
  store i16 0, ptr %ping_interval, align 4, !dbg !1636, !tbaa !1637
  %73 = load ptr, ptr %p, align 8, !dbg !1638, !tbaa !1392
  %nconfig78 = getelementptr inbounds %struct.plugin_data, ptr %73, i32 0, i32 1, !dbg !1639
  %74 = load i32, ptr %nconfig78, align 4, !dbg !1639, !tbaa !1470
  %cmp79 = icmp sgt i32 %74, 0, !dbg !1640
  br i1 %cmp79, label %land.lhs.true80, label %if.end98, !dbg !1641

land.lhs.true80:                                  ; preds = %for.end77
  %75 = load ptr, ptr %p, align 8, !dbg !1642, !tbaa !1392
  %cvlist81 = getelementptr inbounds %struct.plugin_data, ptr %75, i32 0, i32 2, !dbg !1643
  %76 = load ptr, ptr %cvlist81, align 8, !dbg !1643, !tbaa !1457
  %v82 = getelementptr inbounds %struct.config_plugin_value, ptr %76, i32 0, i32 2, !dbg !1644
  %arrayidx83 = getelementptr inbounds [2 x i32], ptr %v82, i64 0, i64 1, !dbg !1642
  %77 = load i32, ptr %arrayidx83, align 4, !dbg !1642, !tbaa !1464
  %tobool84 = icmp ne i32 %77, 0, !dbg !1642
  br i1 %tobool84, label %if.then85, label %if.end98, !dbg !1645

if.then85:                                        ; preds = %land.lhs.true80
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpv86) #12, !dbg !1646
  tail call void @llvm.dbg.declare(metadata ptr %cpv86, metadata !1366, metadata !DIExpression()), !dbg !1647
  %78 = load ptr, ptr %p, align 8, !dbg !1648, !tbaa !1392
  %cvlist87 = getelementptr inbounds %struct.plugin_data, ptr %78, i32 0, i32 2, !dbg !1649
  %79 = load ptr, ptr %cvlist87, align 8, !dbg !1649, !tbaa !1457
  %80 = load ptr, ptr %p, align 8, !dbg !1650, !tbaa !1392
  %cvlist88 = getelementptr inbounds %struct.plugin_data, ptr %80, i32 0, i32 2, !dbg !1651
  %81 = load ptr, ptr %cvlist88, align 8, !dbg !1651, !tbaa !1457
  %v89 = getelementptr inbounds %struct.config_plugin_value, ptr %81, i32 0, i32 2, !dbg !1652
  %arrayidx90 = getelementptr inbounds [2 x i32], ptr %v89, i64 0, i64 0, !dbg !1650
  %82 = load i32, ptr %arrayidx90, align 8, !dbg !1650, !tbaa !1464
  %idx.ext91 = zext i32 %82 to i64, !dbg !1653
  %add.ptr92 = getelementptr inbounds %struct.config_plugin_value, ptr %79, i64 %idx.ext91, !dbg !1653
  store ptr %add.ptr92, ptr %cpv86, align 8, !dbg !1647, !tbaa !1392
  %83 = load ptr, ptr %cpv86, align 8, !dbg !1654, !tbaa !1392
  %k_id93 = getelementptr inbounds %struct.config_plugin_value, ptr %83, i32 0, i32 0, !dbg !1656
  %84 = load i32, ptr %k_id93, align 8, !dbg !1656, !tbaa !1487
  %cmp94 = icmp ne i32 -1, %84, !dbg !1657
  br i1 %cmp94, label %if.then95, label %if.end97, !dbg !1658

if.then95:                                        ; preds = %if.then85
  %85 = load ptr, ptr %p, align 8, !dbg !1659, !tbaa !1392
  %defaults96 = getelementptr inbounds %struct.plugin_data, ptr %85, i32 0, i32 6, !dbg !1660
  %86 = load ptr, ptr %cpv86, align 8, !dbg !1661, !tbaa !1392
  call void @mod_wstunnel_merge_config(ptr noundef %defaults96, ptr noundef %86), !dbg !1662
  br label %if.end97, !dbg !1662

if.end97:                                         ; preds = %if.then95, %if.then85
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpv86) #12, !dbg !1663
  br label %if.end98, !dbg !1664

if.end98:                                         ; preds = %if.end97, %land.lhs.true80, %for.end77
  store i32 0, ptr %retval, align 4, !dbg !1665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !1665

cleanup99:                                        ; preds = %if.end98, %cleanup75, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !1666
  %87 = load i32, ptr %retval, align 4, !dbg !1666
  ret i32 %87, !dbg !1666
}

declare !dbg !1667 i32 @gw_handle_request_reset(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @mod_wstunnel_check_extension(ptr noundef %r, ptr noundef %p_d) #3 !dbg !1668 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %vb = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1672, metadata !DIExpression()), !dbg !1679
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !1673, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !1681
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1674, metadata !DIExpression()), !dbg !1682
  %0 = load ptr, ptr %p_d.addr, align 8, !dbg !1683, !tbaa !1392
  store ptr %0, ptr %p, align 8, !dbg !1682, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !1684
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1675, metadata !DIExpression()), !dbg !1685
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1686, !tbaa !1392
  %handler_module = getelementptr inbounds %struct.request_st, ptr %1, i32 0, i32 10, !dbg !1688
  %2 = load ptr, ptr %handler_module, align 8, !dbg !1688, !tbaa !1689
  %cmp = icmp ne ptr null, %2, !dbg !1695
  br i1 %cmp, label %if.then, label %if.end, !dbg !1696

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1697

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1698, !tbaa !1392
  %http_version = getelementptr inbounds %struct.request_st, ptr %3, i32 0, i32 9, !dbg !1699
  %4 = load i32, ptr %http_version, align 8, !dbg !1699, !tbaa !1700
  %cmp1 = icmp sgt i32 %4, 1, !dbg !1701
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1702

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1703, !tbaa !1392
  %h2_connect_ext = getelementptr inbounds %struct.request_st, ptr %5, i32 0, i32 56, !dbg !1706
  %6 = load i32, ptr %h2_connect_ext, align 4, !dbg !1706, !tbaa !1707
  %tobool = icmp ne i32 %6, 0, !dbg !1703
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !1708

if.then3:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4, !dbg !1709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1709

if.end4:                                          ; preds = %if.then2
  br label %if.end27, !dbg !1710

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %r.addr, align 8, !dbg !1711, !tbaa !1392
  %http_method = getelementptr inbounds %struct.request_st, ptr %7, i32 0, i32 8, !dbg !1713
  %8 = load i32, ptr %http_method, align 4, !dbg !1713, !tbaa !1714
  %cmp5 = icmp ne i32 %8, 0, !dbg !1715
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1716

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !1717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1717

if.end7:                                          ; preds = %if.else
  %9 = load ptr, ptr %r.addr, align 8, !dbg !1718, !tbaa !1392
  %http_version8 = getelementptr inbounds %struct.request_st, ptr %9, i32 0, i32 9, !dbg !1720
  %10 = load i32, ptr %http_version8, align 8, !dbg !1720, !tbaa !1700
  %cmp9 = icmp ne i32 %10, 1, !dbg !1721
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1722

if.then10:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !1723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1723

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %vb) #12, !dbg !1724
  tail call void @llvm.dbg.declare(metadata ptr %vb, metadata !1676, metadata !DIExpression()), !dbg !1725
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1726, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %11, i32 noundef 50, ptr noundef @.str.13, i32 noundef 7) #14, !dbg !1727
  store ptr %call, ptr %vb, align 8, !dbg !1728, !tbaa !1392
  %12 = load ptr, ptr %vb, align 8, !dbg !1729, !tbaa !1392
  %cmp12 = icmp eq ptr null, %12, !dbg !1731
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !1732

lor.lhs.false:                                    ; preds = %if.end11
  %13 = load ptr, ptr %vb, align 8, !dbg !1733, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %13, i32 0, i32 0, !dbg !1733
  %14 = load ptr, ptr %ptr, align 8, !dbg !1733, !tbaa !1734
  %15 = load ptr, ptr %vb, align 8, !dbg !1733, !tbaa !1392
  %call13 = call i32 @buffer_clen(ptr noundef %15) #14, !dbg !1733
  %call14 = call i32 @http_header_str_contains_token(ptr noundef %14, i32 noundef %call13, ptr noundef @.str.14, i32 noundef 9) #14, !dbg !1735
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1735
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1736

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  store i32 0, ptr %retval, align 4, !dbg !1737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1737

if.end17:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %r.addr, align 8, !dbg !1738, !tbaa !1392
  %call18 = call ptr @http_header_request_get(ptr noundef %16, i32 noundef 12, ptr noundef @.str.15, i32 noundef 10) #14, !dbg !1739
  store ptr %call18, ptr %vb, align 8, !dbg !1740, !tbaa !1392
  %17 = load ptr, ptr %vb, align 8, !dbg !1741, !tbaa !1392
  %cmp19 = icmp eq ptr null, %17, !dbg !1743
  br i1 %cmp19, label %if.then25, label %lor.lhs.false20, !dbg !1744

lor.lhs.false20:                                  ; preds = %if.end17
  %18 = load ptr, ptr %vb, align 8, !dbg !1745, !tbaa !1392
  %ptr21 = getelementptr inbounds %struct.buffer, ptr %18, i32 0, i32 0, !dbg !1745
  %19 = load ptr, ptr %ptr21, align 8, !dbg !1745, !tbaa !1734
  %20 = load ptr, ptr %vb, align 8, !dbg !1745, !tbaa !1392
  %call22 = call i32 @buffer_clen(ptr noundef %20) #14, !dbg !1745
  %call23 = call i32 @http_header_str_contains_token(ptr noundef %19, i32 noundef %call22, ptr noundef @.str.16, i32 noundef 7) #14, !dbg !1746
  %tobool24 = icmp ne i32 %call23, 0, !dbg !1746
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1747

if.then25:                                        ; preds = %lor.lhs.false20, %if.end17
  store i32 0, ptr %retval, align 4, !dbg !1748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1748

if.end26:                                         ; preds = %lor.lhs.false20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1749
  br label %cleanup, !dbg !1749

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %vb) #12, !dbg !1749
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27

if.end27:                                         ; preds = %cleanup.cont, %if.end4
  %21 = load ptr, ptr %r.addr, align 8, !dbg !1750, !tbaa !1392
  %22 = load ptr, ptr %p, align 8, !dbg !1751, !tbaa !1392
  call void @mod_wstunnel_patch_config(ptr noundef %21, ptr noundef %22), !dbg !1752
  %23 = load ptr, ptr %p, align 8, !dbg !1753, !tbaa !1392
  %conf = getelementptr inbounds %struct.plugin_data, ptr %23, i32 0, i32 5, !dbg !1755
  %gw = getelementptr inbounds %struct.plugin_config, ptr %conf, i32 0, i32 0, !dbg !1756
  %exts = getelementptr inbounds %struct.gw_plugin_config, ptr %gw, i32 0, i32 0, !dbg !1757
  %24 = load ptr, ptr %exts, align 8, !dbg !1757, !tbaa !1758
  %cmp28 = icmp eq ptr null, %24, !dbg !1759
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1760

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4, !dbg !1761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1761

if.end30:                                         ; preds = %if.end27
  %25 = load ptr, ptr %r.addr, align 8, !dbg !1762, !tbaa !1392
  %26 = load ptr, ptr %p, align 8, !dbg !1763, !tbaa !1392
  %call31 = call i32 @gw_check_extension(ptr noundef %25, ptr noundef %26, i32 noundef 1, i64 noundef 504), !dbg !1764
  store i32 %call31, ptr %rc, align 4, !dbg !1765, !tbaa !1464
  %27 = load i32, ptr %rc, align 4, !dbg !1766, !tbaa !1464
  %cmp32 = icmp eq i32 0, %27, !dbg !1767
  br i1 %cmp32, label %land.lhs.true, label %cond.false, !dbg !1768

land.lhs.true:                                    ; preds = %if.end30
  %28 = load ptr, ptr %r.addr, align 8, !dbg !1769, !tbaa !1392
  %handler_module33 = getelementptr inbounds %struct.request_st, ptr %28, i32 0, i32 10, !dbg !1770
  %29 = load ptr, ptr %handler_module33, align 8, !dbg !1770, !tbaa !1689
  %30 = load ptr, ptr %p, align 8, !dbg !1771, !tbaa !1392
  %self = getelementptr inbounds %struct.plugin_data, ptr %30, i32 0, i32 3, !dbg !1772
  %31 = load ptr, ptr %self, align 8, !dbg !1772, !tbaa !1773
  %cmp34 = icmp eq ptr %29, %31, !dbg !1774
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !1775

cond.true:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1776, !tbaa !1392
  %33 = load ptr, ptr %p, align 8, !dbg !1777, !tbaa !1392
  %call35 = call i32 @wstunnel_handler_setup(ptr noundef %32, ptr noundef %33), !dbg !1778
  br label %cond.end, !dbg !1775

cond.false:                                       ; preds = %land.lhs.true, %if.end30
  %34 = load i32, ptr %rc, align 4, !dbg !1779, !tbaa !1464
  br label %cond.end, !dbg !1775

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call35, %cond.true ], [ %34, %cond.false ], !dbg !1775
  store i32 %cond, ptr %retval, align 4, !dbg !1780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !1780

cleanup36:                                        ; preds = %cond.end, %if.then29, %cleanup, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !1781
  %35 = load i32, ptr %retval, align 4, !dbg !1781
  ret i32 %35, !dbg !1781
}

declare i32 @gw_handle_subrequest(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @mod_wstunnel_handle_trigger(ptr noundef %srv, ptr noundef %p_d) #3 !dbg !1782 {
entry:
  %srv.addr = alloca ptr, align 8
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cur_ts = alloca i64, align 8
  %con = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  store ptr %srv, ptr %srv.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !1784, metadata !DIExpression()), !dbg !1798
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !1785, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1786, metadata !DIExpression()), !dbg !1800
  %0 = load ptr, ptr %p_d.addr, align 8, !dbg !1801, !tbaa !1392
  store ptr %0, ptr %p, align 8, !dbg !1800, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_ts) #12, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %cur_ts, metadata !1790, metadata !DIExpression()), !dbg !1803
  %1 = load i64, ptr @log_monotonic_secs, align 8, !dbg !1804, !tbaa !1805
  %add = add nsw i64 %1, 1, !dbg !1806
  store i64 %add, ptr %cur_ts, align 8, !dbg !1803, !tbaa !1805
  %2 = load ptr, ptr %srv.addr, align 8, !dbg !1807, !tbaa !1392
  %3 = load ptr, ptr %p_d.addr, align 8, !dbg !1808, !tbaa !1392
  %call = call i32 @gw_handle_trigger(ptr noundef %2, ptr noundef %3), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #12, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %con, metadata !1792, metadata !DIExpression()), !dbg !1811
  %4 = load ptr, ptr %srv.addr, align 8, !dbg !1812, !tbaa !1392
  %conns = getelementptr inbounds %struct.server, ptr %4, i32 0, i32 13, !dbg !1813
  %5 = load ptr, ptr %conns, align 8, !dbg !1813, !tbaa !1814
  store ptr %5, ptr %con, align 8, !dbg !1811, !tbaa !1392
  br label %for.cond, !dbg !1810

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %con, align 8, !dbg !1815, !tbaa !1392
  %tobool = icmp ne ptr %6, null, !dbg !1816
  br i1 %tobool, label %for.body, label %for.cond.cleanup, !dbg !1816

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #12, !dbg !1817
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !1818
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1794, metadata !DIExpression()), !dbg !1819
  %7 = load ptr, ptr %con, align 8, !dbg !1820, !tbaa !1392
  %request = getelementptr inbounds %struct.connection, ptr %7, i32 0, i32 0, !dbg !1821
  store ptr %request, ptr %r, align 8, !dbg !1819, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !1822
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !1797, metadata !DIExpression()), !dbg !1823
  %8 = load ptr, ptr %r, align 8, !dbg !1824, !tbaa !1392
  %plugin_ctx = getelementptr inbounds %struct.request_st, ptr %8, i32 0, i32 11, !dbg !1825
  %9 = load ptr, ptr %plugin_ctx, align 8, !dbg !1825, !tbaa !1826
  %10 = load ptr, ptr %p, align 8, !dbg !1827, !tbaa !1392
  %id = getelementptr inbounds %struct.plugin_data, ptr %10, i32 0, i32 0, !dbg !1828
  %11 = load i32, ptr %id, align 8, !dbg !1828, !tbaa !1829
  %idxprom = sext i32 %11 to i64, !dbg !1824
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1824
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !1824, !tbaa !1392
  store ptr %12, ptr %hctx, align 8, !dbg !1823, !tbaa !1392
  %13 = load ptr, ptr %hctx, align 8, !dbg !1830, !tbaa !1392
  %cmp = icmp eq ptr null, %13, !dbg !1832
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1833

lor.lhs.false:                                    ; preds = %for.body
  %14 = load ptr, ptr %r, align 8, !dbg !1834, !tbaa !1392
  %handler_module = getelementptr inbounds %struct.request_st, ptr %14, i32 0, i32 10, !dbg !1835
  %15 = load ptr, ptr %handler_module, align 8, !dbg !1835, !tbaa !1689
  %16 = load ptr, ptr %p, align 8, !dbg !1836, !tbaa !1392
  %self = getelementptr inbounds %struct.plugin_data, ptr %16, i32 0, i32 3, !dbg !1837
  %17 = load ptr, ptr %self, align 8, !dbg !1837, !tbaa !1773
  %cmp1 = icmp ne ptr %15, %17, !dbg !1838
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1839

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1840

if.end:                                           ; preds = %lor.lhs.false
  %18 = load ptr, ptr %hctx, align 8, !dbg !1841, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %18, i32 0, i32 0, !dbg !1843
  %state = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 5, !dbg !1844
  %19 = load i32, ptr %state, align 4, !dbg !1844, !tbaa !1845
  %cmp2 = icmp ne i32 %19, 3, !dbg !1851
  br i1 %cmp2, label %land.lhs.true, label %if.end7, !dbg !1852

land.lhs.true:                                    ; preds = %if.end
  %20 = load ptr, ptr %hctx, align 8, !dbg !1853, !tbaa !1392
  %gw3 = getelementptr inbounds %struct.handler_ctx, ptr %20, i32 0, i32 0, !dbg !1854
  %state4 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw3, i32 0, i32 5, !dbg !1855
  %21 = load i32, ptr %state4, align 4, !dbg !1855, !tbaa !1845
  %cmp5 = icmp ne i32 %21, 4, !dbg !1856
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1857

if.then6:                                         ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1858

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %22 = load i64, ptr %cur_ts, align 8, !dbg !1859, !tbaa !1805
  %23 = load ptr, ptr %con, align 8, !dbg !1861, !tbaa !1392
  %read_idle_ts = getelementptr inbounds %struct.connection, ptr %23, i32 0, i32 24, !dbg !1862
  %24 = load i64, ptr %read_idle_ts, align 8, !dbg !1862, !tbaa !1863
  %sub = sub nsw i64 %22, %24, !dbg !1865
  %25 = load ptr, ptr %r, align 8, !dbg !1866, !tbaa !1392
  %conf = getelementptr inbounds %struct.request_st, ptr %25, i32 0, i32 17, !dbg !1867
  %max_read_idle = getelementptr inbounds %struct.request_config, ptr %conf, i32 0, i32 10, !dbg !1868
  %26 = load i16, ptr %max_read_idle, align 8, !dbg !1868, !tbaa !1869
  %conv = zext i16 %26 to i64, !dbg !1866
  %cmp8 = icmp sgt i64 %sub, %conv, !dbg !1870
  br i1 %cmp8, label %if.then10, label %if.end20, !dbg !1871

if.then10:                                        ; preds = %if.end7
  %27 = load ptr, ptr %hctx, align 8, !dbg !1872, !tbaa !1392
  %gw11 = getelementptr inbounds %struct.handler_ctx, ptr %27, i32 0, i32 0, !dbg !1872
  %conf12 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw11, i32 0, i32 19, !dbg !1872
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf12, i32 0, i32 6, !dbg !1872
  %28 = load i32, ptr %debug, align 8, !dbg !1872, !tbaa !1875
  %cmp13 = icmp sge i32 %28, 3, !dbg !1872
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1876

if.then15:                                        ; preds = %if.then10
  %29 = load ptr, ptr %hctx, align 8, !dbg !1877, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %29, i32 0, i32 5, !dbg !1877
  %30 = load ptr, ptr %errh, align 8, !dbg !1877, !tbaa !1879
  %31 = load ptr, ptr %con, align 8, !dbg !1877, !tbaa !1392
  %fd = getelementptr inbounds %struct.connection, ptr %31, i32 0, i32 2, !dbg !1877
  %32 = load i32, ptr %fd, align 8, !dbg !1877, !tbaa !1880
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %30, ptr noundef @.str.9, i32 noundef 614, ptr noundef @.str.80, i32 noundef %32) #13, !dbg !1877
  br label %if.end16, !dbg !1877

if.end16:                                         ; preds = %if.then15, %if.then10
  %33 = load ptr, ptr %hctx, align 8, !dbg !1881, !tbaa !1392
  %call17 = call i32 @mod_wstunnel_frame_send(ptr noundef %33, i32 noundef 2, ptr noundef null, i64 noundef 0), !dbg !1882
  %34 = load ptr, ptr %r, align 8, !dbg !1883, !tbaa !1392
  %35 = load ptr, ptr %p_d.addr, align 8, !dbg !1884, !tbaa !1392
  %call18 = call i32 @gw_handle_request_reset(ptr noundef %34, ptr noundef %35), !dbg !1885
  %36 = load ptr, ptr %con, align 8, !dbg !1886, !tbaa !1392
  call void @connection_jq_append(ptr noundef %36), !dbg !1886
  %37 = load i64, ptr %cur_ts, align 8, !dbg !1887, !tbaa !1805
  %38 = load ptr, ptr %con, align 8, !dbg !1888, !tbaa !1392
  %read_idle_ts19 = getelementptr inbounds %struct.connection, ptr %38, i32 0, i32 24, !dbg !1889
  store i64 %37, ptr %read_idle_ts19, align 8, !dbg !1890, !tbaa !1863
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1891

if.end20:                                         ; preds = %if.end7
  %39 = load ptr, ptr %hctx, align 8, !dbg !1892, !tbaa !1392
  %hybivers = getelementptr inbounds %struct.handler_ctx, ptr %39, i32 0, i32 2, !dbg !1894
  %40 = load i32, ptr %hybivers, align 8, !dbg !1894, !tbaa !1895
  %cmp21 = icmp ne i32 0, %40, !dbg !1896
  br i1 %cmp21, label %land.lhs.true23, label %if.end39, !dbg !1897

land.lhs.true23:                                  ; preds = %if.end20
  %41 = load ptr, ptr %hctx, align 8, !dbg !1898, !tbaa !1392
  %conf24 = getelementptr inbounds %struct.handler_ctx, ptr %41, i32 0, i32 6, !dbg !1899
  %ping_interval = getelementptr inbounds %struct.plugin_config, ptr %conf24, i32 0, i32 3, !dbg !1900
  %42 = load i16, ptr %ping_interval, align 4, !dbg !1900, !tbaa !1901
  %conv25 = zext i16 %42 to i32, !dbg !1898
  %cmp26 = icmp sgt i32 %conv25, 0, !dbg !1902
  br i1 %cmp26, label %land.lhs.true28, label %if.end39, !dbg !1903

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %43 = load ptr, ptr %hctx, align 8, !dbg !1904, !tbaa !1392
  %conf29 = getelementptr inbounds %struct.handler_ctx, ptr %43, i32 0, i32 6, !dbg !1905
  %ping_interval30 = getelementptr inbounds %struct.plugin_config, ptr %conf29, i32 0, i32 3, !dbg !1906
  %44 = load i16, ptr %ping_interval30, align 4, !dbg !1906, !tbaa !1901
  %conv31 = zext i16 %44 to i32, !dbg !1907
  %conv32 = sext i32 %conv31 to i64, !dbg !1907
  %45 = load ptr, ptr %hctx, align 8, !dbg !1908, !tbaa !1392
  %ping_ts = getelementptr inbounds %struct.handler_ctx, ptr %45, i32 0, i32 3, !dbg !1909
  %46 = load i64, ptr %ping_ts, align 8, !dbg !1909, !tbaa !1910
  %add33 = add nsw i64 %conv32, %46, !dbg !1911
  %47 = load i64, ptr %cur_ts, align 8, !dbg !1912, !tbaa !1805
  %cmp34 = icmp slt i64 %add33, %47, !dbg !1913
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !1914

if.then36:                                        ; preds = %land.lhs.true28
  %48 = load i64, ptr %cur_ts, align 8, !dbg !1915, !tbaa !1805
  %49 = load ptr, ptr %hctx, align 8, !dbg !1917, !tbaa !1392
  %ping_ts37 = getelementptr inbounds %struct.handler_ctx, ptr %49, i32 0, i32 3, !dbg !1918
  store i64 %48, ptr %ping_ts37, align 8, !dbg !1919, !tbaa !1910
  %50 = load ptr, ptr %hctx, align 8, !dbg !1920, !tbaa !1392
  %call38 = call i32 @mod_wstunnel_frame_send(ptr noundef %50, i32 noundef 3, ptr noundef @.str.81, i64 noundef 4), !dbg !1921
  %51 = load ptr, ptr %con, align 8, !dbg !1922, !tbaa !1392
  call void @connection_jq_append(ptr noundef %51), !dbg !1922
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1923

if.end39:                                         ; preds = %land.lhs.true28, %land.lhs.true23, %if.end20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1924
  br label %cleanup, !dbg !1924

cleanup:                                          ; preds = %if.end39, %if.then36, %if.end16, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !1924
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !1924
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1925

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %52 = load ptr, ptr %con, align 8, !dbg !1926, !tbaa !1392
  %next = getelementptr inbounds %struct.connection, ptr %52, i32 0, i32 30, !dbg !1927
  %53 = load ptr, ptr %next, align 8, !dbg !1927, !tbaa !1928
  store ptr %53, ptr %con, align 8, !dbg !1929, !tbaa !1392
  br label %for.cond, !dbg !1817, !llvm.loop !1930

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_ts) #12, !dbg !1932
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !1932
  ret i32 0, !dbg !1933

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gw_handle_waitpid_cb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare !dbg !1934 noalias nonnull ptr @ck_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold
declare !dbg !1938 i32 @config_plugin_values_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold
declare !dbg !1942 i32 @gw_set_defaults_backend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold
declare !dbg !1945 void @gw_plugin_config_free(ptr noundef) #1

; Function Attrs: cold
declare !dbg !1948 void @log_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: cold
declare !dbg !1952 i32 @gw_get_defaults_balance(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1955 i32 @buffer_eq_icase_slen(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @buffer_is_blank(ptr noundef nonnull %b) #6 !dbg !1961 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1965, metadata !DIExpression()), !dbg !1966
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1967, !tbaa !1392
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !1968
  %1 = load i32, ptr %used, align 8, !dbg !1968, !tbaa !1523
  %cmp = icmp ult i32 %1, 2, !dbg !1969
  %conv = zext i1 %cmp to i32, !dbg !1969
  ret i32 %conv, !dbg !1970
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold
declare !dbg !1971 void @gw_exts_clear_check_local(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @mod_wstunnel_merge_config(ptr noundef %pconf, ptr noundef %cpv) #3 !dbg !1974 {
entry:
  %pconf.addr = alloca ptr, align 8
  %cpv.addr = alloca ptr, align 8
  store ptr %pconf, ptr %pconf.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %pconf.addr, metadata !1980, metadata !DIExpression()), !dbg !1982
  store ptr %cpv, ptr %cpv.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %cpv.addr, metadata !1981, metadata !DIExpression()), !dbg !1983
  br label %do.body, !dbg !1984

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %pconf.addr, align 8, !dbg !1985, !tbaa !1392
  %1 = load ptr, ptr %cpv.addr, align 8, !dbg !1987, !tbaa !1392
  call void @mod_wstunnel_merge_config_cpv(ptr noundef %0, ptr noundef %1), !dbg !1988
  br label %do.cond, !dbg !1989

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %cpv.addr, align 8, !dbg !1990, !tbaa !1392
  %incdec.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %2, i32 1, !dbg !1990
  store ptr %incdec.ptr, ptr %cpv.addr, align 8, !dbg !1990, !tbaa !1392
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %incdec.ptr, i32 0, i32 0, !dbg !1991
  %3 = load i32, ptr %k_id, align 8, !dbg !1991, !tbaa !1487
  %cmp = icmp ne i32 %3, -1, !dbg !1992
  br i1 %cmp, label %do.body, label %do.end, !dbg !1989, !llvm.loop !1993

do.end:                                           ; preds = %do.cond
  ret void, !dbg !1995
}

; Function Attrs: nounwind uwtable
define internal void @mod_wstunnel_merge_config_cpv(ptr noundef %pconf, ptr noundef %cpv) #3 !dbg !1996 {
entry:
  %pconf.addr = alloca ptr, align 8
  %cpv.addr = alloca ptr, align 8
  %gw = alloca ptr, align 8
  store ptr %pconf, ptr %pconf.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %pconf.addr, metadata !2001, metadata !DIExpression()), !dbg !2008
  store ptr %cpv, ptr %cpv.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %cpv.addr, metadata !2002, metadata !DIExpression()), !dbg !2009
  %0 = load ptr, ptr %cpv.addr, align 8, !dbg !2010, !tbaa !1392
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %0, i32 0, i32 0, !dbg !2011
  %1 = load i32, ptr %k_id, align 8, !dbg !2011, !tbaa !1487
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb10
    i32 3, label %sw.bb13
    i32 4, label %sw.bb16
    i32 5, label %sw.bb18
    i32 6, label %sw.bb20
  ], !dbg !2012

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cpv.addr, align 8, !dbg !2013, !tbaa !1392
  %vtype = getelementptr inbounds %struct.config_plugin_value, ptr %2, i32 0, i32 1, !dbg !2014
  %3 = load i32, ptr %vtype, align 4, !dbg !2014, !tbaa !1549
  %cmp = icmp eq i32 %3, 10, !dbg !2015
  br i1 %cmp, label %if.then, label %if.end, !dbg !2016

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %gw) #12, !dbg !2017
  tail call void @llvm.dbg.declare(metadata ptr %gw, metadata !2003, metadata !DIExpression()), !dbg !2018
  %4 = load ptr, ptr %cpv.addr, align 8, !dbg !2019, !tbaa !1392
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %4, i32 0, i32 2, !dbg !2020
  %5 = load ptr, ptr %v, align 8, !dbg !2021, !tbaa !1464
  store ptr %5, ptr %gw, align 8, !dbg !2018, !tbaa !1392
  %6 = load ptr, ptr %gw, align 8, !dbg !2022, !tbaa !1392
  %exts = getelementptr inbounds %struct.gw_plugin_config, ptr %6, i32 0, i32 0, !dbg !2023
  %7 = load ptr, ptr %exts, align 8, !dbg !2023, !tbaa !1620
  %8 = load ptr, ptr %pconf.addr, align 8, !dbg !2024, !tbaa !1392
  %gw1 = getelementptr inbounds %struct.plugin_config, ptr %8, i32 0, i32 0, !dbg !2025
  %exts2 = getelementptr inbounds %struct.gw_plugin_config, ptr %gw1, i32 0, i32 0, !dbg !2026
  store ptr %7, ptr %exts2, align 8, !dbg !2027, !tbaa !2028
  %9 = load ptr, ptr %gw, align 8, !dbg !2029, !tbaa !1392
  %exts_auth = getelementptr inbounds %struct.gw_plugin_config, ptr %9, i32 0, i32 1, !dbg !2030
  %10 = load ptr, ptr %exts_auth, align 8, !dbg !2030, !tbaa !1518
  %11 = load ptr, ptr %pconf.addr, align 8, !dbg !2031, !tbaa !1392
  %gw3 = getelementptr inbounds %struct.plugin_config, ptr %11, i32 0, i32 0, !dbg !2032
  %exts_auth4 = getelementptr inbounds %struct.gw_plugin_config, ptr %gw3, i32 0, i32 1, !dbg !2033
  store ptr %10, ptr %exts_auth4, align 8, !dbg !2034, !tbaa !2035
  %12 = load ptr, ptr %gw, align 8, !dbg !2036, !tbaa !1392
  %exts_resp = getelementptr inbounds %struct.gw_plugin_config, ptr %12, i32 0, i32 2, !dbg !2037
  %13 = load ptr, ptr %exts_resp, align 8, !dbg !2037, !tbaa !2038
  %14 = load ptr, ptr %pconf.addr, align 8, !dbg !2039, !tbaa !1392
  %gw5 = getelementptr inbounds %struct.plugin_config, ptr %14, i32 0, i32 0, !dbg !2040
  %exts_resp6 = getelementptr inbounds %struct.gw_plugin_config, ptr %gw5, i32 0, i32 2, !dbg !2041
  store ptr %13, ptr %exts_resp6, align 8, !dbg !2042, !tbaa !2043
  call void @llvm.lifetime.end.p0(i64 8, ptr %gw) #12, !dbg !2044
  br label %if.end, !dbg !2045

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !2046

sw.bb7:                                           ; preds = %entry
  %15 = load ptr, ptr %cpv.addr, align 8, !dbg !2047, !tbaa !1392
  %v8 = getelementptr inbounds %struct.config_plugin_value, ptr %15, i32 0, i32 2, !dbg !2048
  %16 = load i32, ptr %v8, align 8, !dbg !2049, !tbaa !1464
  %17 = load ptr, ptr %pconf.addr, align 8, !dbg !2050, !tbaa !1392
  %gw9 = getelementptr inbounds %struct.plugin_config, ptr %17, i32 0, i32 0, !dbg !2051
  %balance = getelementptr inbounds %struct.gw_plugin_config, ptr %gw9, i32 0, i32 4, !dbg !2052
  store i32 %16, ptr %balance, align 8, !dbg !2053, !tbaa !2054
  br label %sw.epilog, !dbg !2055

sw.bb10:                                          ; preds = %entry
  %18 = load ptr, ptr %cpv.addr, align 8, !dbg !2056, !tbaa !1392
  %v11 = getelementptr inbounds %struct.config_plugin_value, ptr %18, i32 0, i32 2, !dbg !2057
  %19 = load i32, ptr %v11, align 8, !dbg !2058, !tbaa !1464
  %20 = load ptr, ptr %pconf.addr, align 8, !dbg !2059, !tbaa !1392
  %gw12 = getelementptr inbounds %struct.plugin_config, ptr %20, i32 0, i32 0, !dbg !2060
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %gw12, i32 0, i32 6, !dbg !2061
  store i32 %19, ptr %debug, align 8, !dbg !2062, !tbaa !2063
  br label %sw.epilog, !dbg !2064

sw.bb13:                                          ; preds = %entry
  %21 = load ptr, ptr %cpv.addr, align 8, !dbg !2065, !tbaa !1392
  %v14 = getelementptr inbounds %struct.config_plugin_value, ptr %21, i32 0, i32 2, !dbg !2066
  %22 = load ptr, ptr %v14, align 8, !dbg !2067, !tbaa !1464
  %23 = load ptr, ptr %pconf.addr, align 8, !dbg !2068, !tbaa !1392
  %gw15 = getelementptr inbounds %struct.plugin_config, ptr %23, i32 0, i32 0, !dbg !2069
  %ext_mapping = getelementptr inbounds %struct.gw_plugin_config, ptr %gw15, i32 0, i32 3, !dbg !2070
  store ptr %22, ptr %ext_mapping, align 8, !dbg !2071, !tbaa !2072
  br label %sw.epilog, !dbg !2073

sw.bb16:                                          ; preds = %entry
  %24 = load ptr, ptr %cpv.addr, align 8, !dbg !2074, !tbaa !1392
  %v17 = getelementptr inbounds %struct.config_plugin_value, ptr %24, i32 0, i32 2, !dbg !2075
  %25 = load i32, ptr %v17, align 8, !dbg !2076, !tbaa !1464
  %26 = load ptr, ptr %pconf.addr, align 8, !dbg !2077, !tbaa !1392
  %frame_type = getelementptr inbounds %struct.plugin_config, ptr %26, i32 0, i32 2, !dbg !2078
  store i32 %25, ptr %frame_type, align 8, !dbg !2079, !tbaa !2080
  br label %sw.epilog, !dbg !2081

sw.bb18:                                          ; preds = %entry
  %27 = load ptr, ptr %cpv.addr, align 8, !dbg !2082, !tbaa !1392
  %v19 = getelementptr inbounds %struct.config_plugin_value, ptr %27, i32 0, i32 2, !dbg !2083
  %28 = load ptr, ptr %v19, align 8, !dbg !2084, !tbaa !1464
  %29 = load ptr, ptr %pconf.addr, align 8, !dbg !2085, !tbaa !1392
  %origins = getelementptr inbounds %struct.plugin_config, ptr %29, i32 0, i32 1, !dbg !2086
  store ptr %28, ptr %origins, align 8, !dbg !2087, !tbaa !2088
  br label %sw.epilog, !dbg !2089

sw.bb20:                                          ; preds = %entry
  %30 = load ptr, ptr %cpv.addr, align 8, !dbg !2090, !tbaa !1392
  %v21 = getelementptr inbounds %struct.config_plugin_value, ptr %30, i32 0, i32 2, !dbg !2091
  %31 = load i16, ptr %v21, align 8, !dbg !2092, !tbaa !1464
  %32 = load ptr, ptr %pconf.addr, align 8, !dbg !2093, !tbaa !1392
  %ping_interval = getelementptr inbounds %struct.plugin_config, ptr %32, i32 0, i32 3, !dbg !2094
  store i16 %31, ptr %ping_interval, align 4, !dbg !2095, !tbaa !2096
  br label %sw.epilog, !dbg !2097

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2098

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %if.end
  ret void, !dbg !2099
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2100 ptr @http_header_request_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2105 i32 @http_header_str_contains_token(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @buffer_clen(ptr noundef nonnull %b) #6 !dbg !2108 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2112, metadata !DIExpression()), !dbg !2113
  %0 = load ptr, ptr %b.addr, align 8, !dbg !2114, !tbaa !1392
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !2115
  %1 = load i32, ptr %used, align 8, !dbg !2115, !tbaa !1523
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2116, !tbaa !1392
  %used1 = getelementptr inbounds %struct.buffer, ptr %2, i32 0, i32 1, !dbg !2117
  %3 = load i32, ptr %used1, align 8, !dbg !2117, !tbaa !1523
  %cmp = icmp ne i32 0, %3, !dbg !2118
  %conv = zext i1 %cmp to i32, !dbg !2118
  %sub = sub i32 %1, %conv, !dbg !2119
  ret i32 %sub, !dbg !2120
}

; Function Attrs: nounwind uwtable
define internal void @mod_wstunnel_patch_config(ptr noundef %r, ptr noundef %p) #3 !dbg !2121 {
entry:
  %r.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %used = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2125, metadata !DIExpression()), !dbg !2130
  store ptr %p, ptr %p.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2126, metadata !DIExpression()), !dbg !2131
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2132, !tbaa !1392
  %conf = getelementptr inbounds %struct.plugin_data, ptr %0, i32 0, i32 5, !dbg !2133
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2134, !tbaa !1392
  %defaults = getelementptr inbounds %struct.plugin_data, ptr %1, i32 0, i32 6, !dbg !2135
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %conf, ptr align 8 %defaults, i64 64, i1 false), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2137
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2127, metadata !DIExpression()), !dbg !2138
  store i32 1, ptr %i, align 4, !dbg !2138, !tbaa !1466
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #12, !dbg !2137
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !2129, metadata !DIExpression()), !dbg !2139
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2140, !tbaa !1392
  %nconfig = getelementptr inbounds %struct.plugin_data, ptr %2, i32 0, i32 1, !dbg !2141
  %3 = load i32, ptr %nconfig, align 4, !dbg !2141, !tbaa !1470
  store i32 %3, ptr %used, align 4, !dbg !2139, !tbaa !1466
  br label %for.cond, !dbg !2137

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !2142, !tbaa !1466
  %5 = load i32, ptr %used, align 4, !dbg !2144, !tbaa !1466
  %cmp = icmp slt i32 %4, %5, !dbg !2145
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !2146

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #12, !dbg !2147
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2147
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2148, !tbaa !1392
  %7 = load ptr, ptr %p.addr, align 8, !dbg !2151, !tbaa !1392
  %cvlist = getelementptr inbounds %struct.plugin_data, ptr %7, i32 0, i32 2, !dbg !2152
  %8 = load ptr, ptr %cvlist, align 8, !dbg !2152, !tbaa !1457
  %9 = load i32, ptr %i, align 4, !dbg !2153, !tbaa !1466
  %idxprom = sext i32 %9 to i64, !dbg !2151
  %arrayidx = getelementptr inbounds %struct.config_plugin_value, ptr %8, i64 %idxprom, !dbg !2151
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx, i32 0, i32 0, !dbg !2154
  %10 = load i32, ptr %k_id, align 8, !dbg !2154, !tbaa !1487
  %call = call i32 @config_check_cond(ptr noundef %6, i32 noundef %10), !dbg !2155
  %tobool = icmp ne i32 %call, 0, !dbg !2155
  br i1 %tobool, label %if.then, label %if.end, !dbg !2156

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %p.addr, align 8, !dbg !2157, !tbaa !1392
  %conf1 = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 5, !dbg !2158
  %12 = load ptr, ptr %p.addr, align 8, !dbg !2159, !tbaa !1392
  %cvlist2 = getelementptr inbounds %struct.plugin_data, ptr %12, i32 0, i32 2, !dbg !2160
  %13 = load ptr, ptr %cvlist2, align 8, !dbg !2160, !tbaa !1457
  %14 = load ptr, ptr %p.addr, align 8, !dbg !2161, !tbaa !1392
  %cvlist3 = getelementptr inbounds %struct.plugin_data, ptr %14, i32 0, i32 2, !dbg !2162
  %15 = load ptr, ptr %cvlist3, align 8, !dbg !2162, !tbaa !1457
  %16 = load i32, ptr %i, align 4, !dbg !2163, !tbaa !1466
  %idxprom4 = sext i32 %16 to i64, !dbg !2161
  %arrayidx5 = getelementptr inbounds %struct.config_plugin_value, ptr %15, i64 %idxprom4, !dbg !2161
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx5, i32 0, i32 2, !dbg !2164
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %v, i64 0, i64 0, !dbg !2161
  %17 = load i32, ptr %arrayidx6, align 8, !dbg !2161, !tbaa !1464
  %idx.ext = zext i32 %17 to i64, !dbg !2165
  %add.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %13, i64 %idx.ext, !dbg !2165
  call void @mod_wstunnel_merge_config(ptr noundef %conf1, ptr noundef %add.ptr), !dbg !2166
  br label %if.end, !dbg !2166

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2167

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !dbg !2168, !tbaa !1466
  %inc = add nsw i32 %18, 1, !dbg !2168
  store i32 %inc, ptr %i, align 4, !dbg !2168, !tbaa !1466
  br label %for.cond, !dbg !2147, !llvm.loop !2169

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !2171
}

declare !dbg !2172 i32 @gw_check_extension(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_handler_setup(ptr noundef %r, ptr noundef %p) #3 !dbg !2175 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %hybivers = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %binary = alloca i32, align 4
  %vb = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2179, metadata !DIExpression()), !dbg !2191
  store ptr %p, ptr %p.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2180, metadata !DIExpression()), !dbg !2192
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2193
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2181, metadata !DIExpression()), !dbg !2194
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2195, !tbaa !1392
  %plugin_ctx = getelementptr inbounds %struct.request_st, ptr %0, i32 0, i32 11, !dbg !2196
  %1 = load ptr, ptr %plugin_ctx, align 8, !dbg !2196, !tbaa !1826
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2197, !tbaa !1392
  %id = getelementptr inbounds %struct.plugin_data, ptr %2, i32 0, i32 0, !dbg !2198
  %3 = load i32, ptr %id, align 8, !dbg !2198, !tbaa !1829
  %idxprom = sext i32 %3 to i64, !dbg !2195
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !2195
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2195, !tbaa !1392
  store ptr %4, ptr %hctx, align 8, !dbg !2194, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 4, ptr %hybivers) #12, !dbg !2199
  tail call void @llvm.dbg.declare(metadata ptr %hybivers, metadata !2182, metadata !DIExpression()), !dbg !2200
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2201, !tbaa !1392
  %conf = getelementptr inbounds %struct.request_st, ptr %5, i32 0, i32 17, !dbg !2202
  %errh = getelementptr inbounds %struct.request_config, ptr %conf, i32 0, i32 0, !dbg !2203
  %6 = load ptr, ptr %errh, align 8, !dbg !2203, !tbaa !2204
  %7 = load ptr, ptr %hctx, align 8, !dbg !2205, !tbaa !1392
  %errh1 = getelementptr inbounds %struct.handler_ctx, ptr %7, i32 0, i32 5, !dbg !2206
  store ptr %6, ptr %errh1, align 8, !dbg !2207, !tbaa !1879
  %8 = load ptr, ptr %hctx, align 8, !dbg !2208, !tbaa !1392
  %conf2 = getelementptr inbounds %struct.handler_ctx, ptr %8, i32 0, i32 6, !dbg !2209
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2210, !tbaa !1392
  %conf3 = getelementptr inbounds %struct.plugin_data, ptr %9, i32 0, i32 5, !dbg !2211
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %conf2, ptr align 8 %conf3, i64 64, i1 false), !dbg !2211, !tbaa.struct !2212
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2214, !tbaa !1392
  %11 = load ptr, ptr %hctx, align 8, !dbg !2215, !tbaa !1392
  %call = call i32 @wstunnel_check_request(ptr noundef %10, ptr noundef %11), !dbg !2216
  store i32 %call, ptr %hybivers, align 4, !dbg !2217, !tbaa !1466
  %12 = load i32, ptr %hybivers, align 4, !dbg !2218, !tbaa !1466
  %cmp = icmp slt i32 %12, 0, !dbg !2220
  br i1 %cmp, label %if.then, label %if.end, !dbg !2221

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2222, !tbaa !1392
  %handler_module = getelementptr inbounds %struct.request_st, ptr %13, i32 0, i32 10, !dbg !2224
  store ptr null, ptr %handler_module, align 8, !dbg !2225, !tbaa !1689
  store i32 1, ptr %retval, align 4, !dbg !2226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159, !dbg !2226

if.end:                                           ; preds = %entry
  %14 = load i32, ptr %hybivers, align 4, !dbg !2227, !tbaa !1466
  %15 = load ptr, ptr %hctx, align 8, !dbg !2228, !tbaa !1392
  %hybivers4 = getelementptr inbounds %struct.handler_ctx, ptr %15, i32 0, i32 2, !dbg !2229
  store i32 %14, ptr %hybivers4, align 8, !dbg !2230, !tbaa !1895
  %16 = load i32, ptr %hybivers, align 4, !dbg !2231, !tbaa !1466
  %cmp5 = icmp eq i32 0, %16, !dbg !2233
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2234

if.then6:                                         ; preds = %if.end
  %17 = load ptr, ptr %hctx, align 8, !dbg !2235, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %17, i32 0, i32 0, !dbg !2235
  %conf7 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 19, !dbg !2235
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf7, i32 0, i32 6, !dbg !2235
  %18 = load i32, ptr %debug, align 8, !dbg !2235, !tbaa !1875
  %cmp8 = icmp sge i32 %18, 3, !dbg !2235
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2238

if.then9:                                         ; preds = %if.then6
  %19 = load ptr, ptr %hctx, align 8, !dbg !2239, !tbaa !1392
  %errh10 = getelementptr inbounds %struct.handler_ctx, ptr %19, i32 0, i32 5, !dbg !2239
  %20 = load ptr, ptr %errh10, align 8, !dbg !2239, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %20, ptr noundef @.str.9, i32 noundef 493, ptr noundef @.str.17, ptr noundef @.str.18) #13, !dbg !2239
  br label %if.end11, !dbg !2239

if.end11:                                         ; preds = %if.then9, %if.then6
  br label %if.end19, !dbg !2241

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %hctx, align 8, !dbg !2242, !tbaa !1392
  %gw12 = getelementptr inbounds %struct.handler_ctx, ptr %21, i32 0, i32 0, !dbg !2242
  %conf13 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw12, i32 0, i32 19, !dbg !2242
  %debug14 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf13, i32 0, i32 6, !dbg !2242
  %22 = load i32, ptr %debug14, align 8, !dbg !2242, !tbaa !1875
  %cmp15 = icmp sge i32 %22, 3, !dbg !2242
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2245

if.then16:                                        ; preds = %if.else
  %23 = load ptr, ptr %hctx, align 8, !dbg !2246, !tbaa !1392
  %errh17 = getelementptr inbounds %struct.handler_ctx, ptr %23, i32 0, i32 5, !dbg !2246
  %24 = load ptr, ptr %errh17, align 8, !dbg !2246, !tbaa !1879
  %25 = load i32, ptr %hybivers, align 4, !dbg !2246, !tbaa !1466
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %24, ptr noundef @.str.9, i32 noundef 496, ptr noundef @.str.19, i32 noundef %25) #13, !dbg !2246
  br label %if.end18, !dbg !2246

if.end18:                                         ; preds = %if.then16, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %26 = load ptr, ptr %hctx, align 8, !dbg !2248, !tbaa !1392
  %gw20 = getelementptr inbounds %struct.handler_ctx, ptr %26, i32 0, i32 0, !dbg !2249
  %opts = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw20, i32 0, i32 18, !dbg !2250
  %backend = getelementptr inbounds %struct.http_response_opts_t, ptr %opts, i32 0, i32 2, !dbg !2251
  store i32 0, ptr %backend, align 8, !dbg !2252, !tbaa !2253
  %27 = load ptr, ptr %hctx, align 8, !dbg !2254, !tbaa !1392
  %28 = load ptr, ptr %hctx, align 8, !dbg !2255, !tbaa !1392
  %gw21 = getelementptr inbounds %struct.handler_ctx, ptr %28, i32 0, i32 0, !dbg !2256
  %opts22 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw21, i32 0, i32 18, !dbg !2257
  %pdata = getelementptr inbounds %struct.http_response_opts_t, ptr %opts22, i32 0, i32 8, !dbg !2258
  store ptr %27, ptr %pdata, align 8, !dbg !2259, !tbaa !2260
  %29 = load ptr, ptr %hctx, align 8, !dbg !2261, !tbaa !1392
  %gw23 = getelementptr inbounds %struct.handler_ctx, ptr %29, i32 0, i32 0, !dbg !2262
  %opts24 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw23, i32 0, i32 18, !dbg !2263
  %parse = getelementptr inbounds %struct.http_response_opts_t, ptr %opts24, i32 0, i32 9, !dbg !2264
  store ptr @wstunnel_recv_parse, ptr %parse, align 8, !dbg !2265, !tbaa !2266
  %30 = load ptr, ptr %hctx, align 8, !dbg !2267, !tbaa !1392
  %gw25 = getelementptr inbounds %struct.handler_ctx, ptr %30, i32 0, i32 0, !dbg !2268
  %stdin_append = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw25, i32 0, i32 25, !dbg !2269
  store ptr @wstunnel_stdin_append, ptr %stdin_append, align 8, !dbg !2270, !tbaa !2271
  %31 = load ptr, ptr %hctx, align 8, !dbg !2272, !tbaa !1392
  %gw26 = getelementptr inbounds %struct.handler_ctx, ptr %31, i32 0, i32 0, !dbg !2273
  %create_env = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw26, i32 0, i32 26, !dbg !2274
  store ptr @wstunnel_create_env, ptr %create_env, align 8, !dbg !2275, !tbaa !2276
  %32 = load ptr, ptr %hctx, align 8, !dbg !2277, !tbaa !1392
  %gw27 = getelementptr inbounds %struct.handler_ctx, ptr %32, i32 0, i32 0, !dbg !2278
  %handler_ctx_free = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw27, i32 0, i32 30, !dbg !2279
  store ptr @wstunnel_handler_ctx_free, ptr %handler_ctx_free, align 8, !dbg !2280, !tbaa !2281
  %33 = load ptr, ptr %hctx, align 8, !dbg !2282, !tbaa !1392
  %gw28 = getelementptr inbounds %struct.handler_ctx, ptr %33, i32 0, i32 0, !dbg !2283
  %backend_error = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw28, i32 0, i32 29, !dbg !2284
  store ptr @wstunnel_backend_error, ptr %backend_error, align 8, !dbg !2285, !tbaa !2286
  %call29 = call nonnull ptr @chunk_buffer_acquire(), !dbg !2287
  %34 = load ptr, ptr %hctx, align 8, !dbg !2288, !tbaa !1392
  %gw30 = getelementptr inbounds %struct.handler_ctx, ptr %34, i32 0, i32 0, !dbg !2289
  %response = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw30, i32 0, i32 9, !dbg !2290
  store ptr %call29, ptr %response, align 8, !dbg !2291, !tbaa !2292
  %35 = load ptr, ptr %hctx, align 8, !dbg !2293, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %35, i32 0, i32 1, !dbg !2294
  %state = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 0, !dbg !2295
  store i32 0, ptr %state, align 8, !dbg !2296, !tbaa !2297
  %36 = load ptr, ptr %hctx, align 8, !dbg !2298, !tbaa !1392
  %frame31 = getelementptr inbounds %struct.handler_ctx, ptr %36, i32 0, i32 1, !dbg !2299
  %ctl = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame31, i32 0, i32 1, !dbg !2300
  %siz = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl, i32 0, i32 0, !dbg !2301
  store i64 0, ptr %siz, align 8, !dbg !2302, !tbaa !2303
  %call32 = call nonnull ptr @chunk_buffer_acquire(), !dbg !2304
  %37 = load ptr, ptr %hctx, align 8, !dbg !2305, !tbaa !1392
  %frame33 = getelementptr inbounds %struct.handler_ctx, ptr %37, i32 0, i32 1, !dbg !2306
  %payload = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame33, i32 0, i32 5, !dbg !2307
  store ptr %call32, ptr %payload, align 8, !dbg !2308, !tbaa !2309
  call void @llvm.lifetime.start.p0(i64 4, ptr %binary) #12, !dbg !2310
  tail call void @llvm.dbg.declare(metadata ptr %binary, metadata !2183, metadata !DIExpression()), !dbg !2311
  %38 = load ptr, ptr %hctx, align 8, !dbg !2312, !tbaa !1392
  %conf34 = getelementptr inbounds %struct.handler_ctx, ptr %38, i32 0, i32 6, !dbg !2313
  %frame_type = getelementptr inbounds %struct.plugin_config, ptr %conf34, i32 0, i32 2, !dbg !2314
  %39 = load i32, ptr %frame_type, align 8, !dbg !2314, !tbaa !2315
  store i32 %39, ptr %binary, align 4, !dbg !2311, !tbaa !1466
  %40 = load i32, ptr %binary, align 4, !dbg !2316, !tbaa !1466
  %tobool = icmp ne i32 %40, 0, !dbg !2316
  br i1 %tobool, label %if.end128, label %if.then35, !dbg !2317

if.then35:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %vb) #12, !dbg !2318
  tail call void @llvm.dbg.declare(metadata ptr %vb, metadata !2184, metadata !DIExpression()), !dbg !2319
  %41 = load ptr, ptr %r.addr, align 8, !dbg !2320, !tbaa !1392
  %call36 = call ptr @http_header_request_get(ptr noundef %41, i32 noundef 0, ptr noundef @.str.20, i32 noundef 22) #14, !dbg !2321
  store ptr %call36, ptr %vb, align 8, !dbg !2319, !tbaa !1392
  %42 = load ptr, ptr %vb, align 8, !dbg !2322, !tbaa !1392
  %cmp37 = icmp ne ptr null, %42, !dbg !2323
  br i1 %cmp37, label %if.then38, label %if.end127, !dbg !2324

if.then38:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !2325
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2187, metadata !DIExpression()), !dbg !2326
  %43 = load ptr, ptr %vb, align 8, !dbg !2327, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %43, i32 0, i32 0, !dbg !2328
  %44 = load ptr, ptr %ptr, align 8, !dbg !2328, !tbaa !1734
  store ptr %44, ptr %s, align 8, !dbg !2326, !tbaa !1392
  br label %for.cond, !dbg !2325

for.cond:                                         ; preds = %for.inc, %if.then38
  %45 = load ptr, ptr %s, align 8, !dbg !2329, !tbaa !1392
  %46 = load i8, ptr %45, align 1, !dbg !2331, !tbaa !1464
  %tobool39 = icmp ne i8 %46, 0, !dbg !2332
  br i1 %tobool39, label %for.body, label %for.cond.cleanup, !dbg !2332

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2332

for.body:                                         ; preds = %for.cond
  br label %while.cond, !dbg !2333

while.cond:                                       ; preds = %while.body, %for.body
  %47 = load ptr, ptr %s, align 8, !dbg !2335, !tbaa !1392
  %48 = load i8, ptr %47, align 1, !dbg !2336, !tbaa !1464
  %conv = sext i8 %48 to i32, !dbg !2336
  %cmp40 = icmp eq i32 %conv, 32, !dbg !2337
  br i1 %cmp40, label %lor.end, label %lor.lhs.false, !dbg !2338

lor.lhs.false:                                    ; preds = %while.cond
  %49 = load ptr, ptr %s, align 8, !dbg !2339, !tbaa !1392
  %50 = load i8, ptr %49, align 1, !dbg !2340, !tbaa !1464
  %conv42 = sext i8 %50 to i32, !dbg !2340
  %cmp43 = icmp eq i32 %conv42, 9, !dbg !2341
  br i1 %cmp43, label %lor.end, label %lor.lhs.false45, !dbg !2342

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %51 = load ptr, ptr %s, align 8, !dbg !2343, !tbaa !1392
  %52 = load i8, ptr %51, align 1, !dbg !2344, !tbaa !1464
  %conv46 = sext i8 %52 to i32, !dbg !2344
  %cmp47 = icmp eq i32 %conv46, 13, !dbg !2345
  br i1 %cmp47, label %lor.end, label %lor.rhs, !dbg !2346

lor.rhs:                                          ; preds = %lor.lhs.false45
  %53 = load ptr, ptr %s, align 8, !dbg !2347, !tbaa !1392
  %54 = load i8, ptr %53, align 1, !dbg !2348, !tbaa !1464
  %conv49 = sext i8 %54 to i32, !dbg !2348
  %cmp50 = icmp eq i32 %conv49, 10, !dbg !2349
  br label %lor.end, !dbg !2346

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false45, %lor.lhs.false, %while.cond
  %55 = phi i1 [ true, %lor.lhs.false45 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp50, %lor.rhs ]
  br i1 %55, label %while.body, label %while.end, !dbg !2333

while.body:                                       ; preds = %lor.end
  %56 = load ptr, ptr %s, align 8, !dbg !2350, !tbaa !1392
  %incdec.ptr = getelementptr inbounds i8, ptr %56, i32 1, !dbg !2350
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !2350, !tbaa !1392
  br label %while.cond, !dbg !2333, !llvm.loop !2351

while.end:                                        ; preds = %lor.end
  %57 = load ptr, ptr %s, align 8, !dbg !2353, !tbaa !1392
  %call52 = call i32 @buffer_eq_icase_ssn(ptr noundef %57, ptr noundef @.str.11, i64 noundef 6) #14, !dbg !2355
  %tobool53 = icmp ne i32 %call52, 0, !dbg !2355
  br i1 %tobool53, label %if.then54, label %if.else84, !dbg !2356

if.then54:                                        ; preds = %while.end
  %58 = load ptr, ptr %s, align 8, !dbg !2357, !tbaa !1392
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 6, !dbg !2357
  store ptr %add.ptr, ptr %s, align 8, !dbg !2357, !tbaa !1392
  br label %while.cond55, !dbg !2359

while.cond55:                                     ; preds = %while.body72, %if.then54
  %59 = load ptr, ptr %s, align 8, !dbg !2360, !tbaa !1392
  %60 = load i8, ptr %59, align 1, !dbg !2361, !tbaa !1464
  %conv56 = sext i8 %60 to i32, !dbg !2361
  %cmp57 = icmp eq i32 %conv56, 32, !dbg !2362
  br i1 %cmp57, label %lor.end71, label %lor.lhs.false59, !dbg !2363

lor.lhs.false59:                                  ; preds = %while.cond55
  %61 = load ptr, ptr %s, align 8, !dbg !2364, !tbaa !1392
  %62 = load i8, ptr %61, align 1, !dbg !2365, !tbaa !1464
  %conv60 = sext i8 %62 to i32, !dbg !2365
  %cmp61 = icmp eq i32 %conv60, 9, !dbg !2366
  br i1 %cmp61, label %lor.end71, label %lor.lhs.false63, !dbg !2367

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %63 = load ptr, ptr %s, align 8, !dbg !2368, !tbaa !1392
  %64 = load i8, ptr %63, align 1, !dbg !2369, !tbaa !1464
  %conv64 = sext i8 %64 to i32, !dbg !2369
  %cmp65 = icmp eq i32 %conv64, 13, !dbg !2370
  br i1 %cmp65, label %lor.end71, label %lor.rhs67, !dbg !2371

lor.rhs67:                                        ; preds = %lor.lhs.false63
  %65 = load ptr, ptr %s, align 8, !dbg !2372, !tbaa !1392
  %66 = load i8, ptr %65, align 1, !dbg !2373, !tbaa !1464
  %conv68 = sext i8 %66 to i32, !dbg !2373
  %cmp69 = icmp eq i32 %conv68, 10, !dbg !2374
  br label %lor.end71, !dbg !2371

lor.end71:                                        ; preds = %lor.rhs67, %lor.lhs.false63, %lor.lhs.false59, %while.cond55
  %67 = phi i1 [ true, %lor.lhs.false63 ], [ true, %lor.lhs.false59 ], [ true, %while.cond55 ], [ %cmp69, %lor.rhs67 ]
  br i1 %67, label %while.body72, label %while.end74, !dbg !2359

while.body72:                                     ; preds = %lor.end71
  %68 = load ptr, ptr %s, align 8, !dbg !2375, !tbaa !1392
  %incdec.ptr73 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !2375
  store ptr %incdec.ptr73, ptr %s, align 8, !dbg !2375, !tbaa !1392
  br label %while.cond55, !dbg !2359, !llvm.loop !2376

while.end74:                                      ; preds = %lor.end71
  %69 = load ptr, ptr %s, align 8, !dbg !2378, !tbaa !1392
  %70 = load i8, ptr %69, align 1, !dbg !2380, !tbaa !1464
  %conv75 = sext i8 %70 to i32, !dbg !2380
  %cmp76 = icmp eq i32 %conv75, 44, !dbg !2381
  br i1 %cmp76, label %if.then82, label %lor.lhs.false78, !dbg !2382

lor.lhs.false78:                                  ; preds = %while.end74
  %71 = load ptr, ptr %s, align 8, !dbg !2383, !tbaa !1392
  %72 = load i8, ptr %71, align 1, !dbg !2384, !tbaa !1464
  %conv79 = sext i8 %72 to i32, !dbg !2384
  %cmp80 = icmp eq i32 %conv79, 0, !dbg !2385
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2386

if.then82:                                        ; preds = %lor.lhs.false78, %while.end74
  %73 = load ptr, ptr %hctx, align 8, !dbg !2387, !tbaa !1392
  %subproto = getelementptr inbounds %struct.handler_ctx, ptr %73, i32 0, i32 4, !dbg !2389
  store i32 1, ptr %subproto, align 8, !dbg !2390, !tbaa !2391
  store i32 1, ptr %binary, align 4, !dbg !2392, !tbaa !1466
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2393

if.end83:                                         ; preds = %lor.lhs.false78
  br label %if.end120, !dbg !2394

if.else84:                                        ; preds = %while.end
  %74 = load ptr, ptr %s, align 8, !dbg !2395, !tbaa !1392
  %call85 = call i32 @buffer_eq_icase_ssn(ptr noundef %74, ptr noundef @.str.21, i64 noundef 6) #14, !dbg !2397
  %tobool86 = icmp ne i32 %call85, 0, !dbg !2397
  br i1 %tobool86, label %if.then87, label %if.end119, !dbg !2398

if.then87:                                        ; preds = %if.else84
  %75 = load ptr, ptr %s, align 8, !dbg !2399, !tbaa !1392
  %add.ptr88 = getelementptr inbounds i8, ptr %75, i64 6, !dbg !2399
  store ptr %add.ptr88, ptr %s, align 8, !dbg !2399, !tbaa !1392
  br label %while.cond89, !dbg !2401

while.cond89:                                     ; preds = %while.body106, %if.then87
  %76 = load ptr, ptr %s, align 8, !dbg !2402, !tbaa !1392
  %77 = load i8, ptr %76, align 1, !dbg !2403, !tbaa !1464
  %conv90 = sext i8 %77 to i32, !dbg !2403
  %cmp91 = icmp eq i32 %conv90, 32, !dbg !2404
  br i1 %cmp91, label %lor.end105, label %lor.lhs.false93, !dbg !2405

lor.lhs.false93:                                  ; preds = %while.cond89
  %78 = load ptr, ptr %s, align 8, !dbg !2406, !tbaa !1392
  %79 = load i8, ptr %78, align 1, !dbg !2407, !tbaa !1464
  %conv94 = sext i8 %79 to i32, !dbg !2407
  %cmp95 = icmp eq i32 %conv94, 9, !dbg !2408
  br i1 %cmp95, label %lor.end105, label %lor.lhs.false97, !dbg !2409

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %80 = load ptr, ptr %s, align 8, !dbg !2410, !tbaa !1392
  %81 = load i8, ptr %80, align 1, !dbg !2411, !tbaa !1464
  %conv98 = sext i8 %81 to i32, !dbg !2411
  %cmp99 = icmp eq i32 %conv98, 13, !dbg !2412
  br i1 %cmp99, label %lor.end105, label %lor.rhs101, !dbg !2413

lor.rhs101:                                       ; preds = %lor.lhs.false97
  %82 = load ptr, ptr %s, align 8, !dbg !2414, !tbaa !1392
  %83 = load i8, ptr %82, align 1, !dbg !2415, !tbaa !1464
  %conv102 = sext i8 %83 to i32, !dbg !2415
  %cmp103 = icmp eq i32 %conv102, 10, !dbg !2416
  br label %lor.end105, !dbg !2413

lor.end105:                                       ; preds = %lor.rhs101, %lor.lhs.false97, %lor.lhs.false93, %while.cond89
  %84 = phi i1 [ true, %lor.lhs.false97 ], [ true, %lor.lhs.false93 ], [ true, %while.cond89 ], [ %cmp103, %lor.rhs101 ]
  br i1 %84, label %while.body106, label %while.end108, !dbg !2401

while.body106:                                    ; preds = %lor.end105
  %85 = load ptr, ptr %s, align 8, !dbg !2417, !tbaa !1392
  %incdec.ptr107 = getelementptr inbounds i8, ptr %85, i32 1, !dbg !2417
  store ptr %incdec.ptr107, ptr %s, align 8, !dbg !2417, !tbaa !1392
  br label %while.cond89, !dbg !2401, !llvm.loop !2418

while.end108:                                     ; preds = %lor.end105
  %86 = load ptr, ptr %s, align 8, !dbg !2420, !tbaa !1392
  %87 = load i8, ptr %86, align 1, !dbg !2422, !tbaa !1464
  %conv109 = sext i8 %87 to i32, !dbg !2422
  %cmp110 = icmp eq i32 %conv109, 44, !dbg !2423
  br i1 %cmp110, label %if.then116, label %lor.lhs.false112, !dbg !2424

lor.lhs.false112:                                 ; preds = %while.end108
  %88 = load ptr, ptr %s, align 8, !dbg !2425, !tbaa !1392
  %89 = load i8, ptr %88, align 1, !dbg !2426, !tbaa !1464
  %conv113 = sext i8 %89 to i32, !dbg !2426
  %cmp114 = icmp eq i32 %conv113, 0, !dbg !2427
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !2428

if.then116:                                       ; preds = %lor.lhs.false112, %while.end108
  %90 = load ptr, ptr %hctx, align 8, !dbg !2429, !tbaa !1392
  %subproto117 = getelementptr inbounds %struct.handler_ctx, ptr %90, i32 0, i32 4, !dbg !2431
  store i32 -1, ptr %subproto117, align 8, !dbg !2432, !tbaa !2391
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2433

if.end118:                                        ; preds = %lor.lhs.false112
  br label %if.end119, !dbg !2434

if.end119:                                        ; preds = %if.end118, %if.else84
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end83
  %91 = load ptr, ptr %s, align 8, !dbg !2435, !tbaa !1392
  %call121 = call ptr @strchr(ptr noundef %91, i32 noundef 44) #14, !dbg !2436
  store ptr %call121, ptr %s, align 8, !dbg !2437, !tbaa !1392
  %92 = load ptr, ptr %s, align 8, !dbg !2438, !tbaa !1392
  %cmp122 = icmp eq ptr null, %92, !dbg !2440
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !2441

if.then124:                                       ; preds = %if.end120
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2442

if.end125:                                        ; preds = %if.end120
  br label %for.inc, !dbg !2443

for.inc:                                          ; preds = %if.end125
  %93 = load ptr, ptr %s, align 8, !dbg !2444, !tbaa !1392
  %incdec.ptr126 = getelementptr inbounds i8, ptr %93, i32 1, !dbg !2444
  store ptr %incdec.ptr126, ptr %s, align 8, !dbg !2444, !tbaa !1392
  br label %for.cond, !dbg !2445, !llvm.loop !2446

cleanup:                                          ; preds = %if.then124, %if.then116, %if.then82, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !2445
  br label %for.end

for.end:                                          ; preds = %cleanup
  br label %if.end127, !dbg !2448

if.end127:                                        ; preds = %for.end, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %vb) #12, !dbg !2449
  br label %if.end128, !dbg !2450

if.end128:                                        ; preds = %if.end127, %if.end19
  %94 = load i32, ptr %binary, align 4, !dbg !2451, !tbaa !1466
  %tobool129 = icmp ne i32 %94, 0, !dbg !2451
  br i1 %tobool129, label %if.then130, label %if.else142, !dbg !2453

if.then130:                                       ; preds = %if.end128
  %95 = load ptr, ptr %hctx, align 8, !dbg !2454, !tbaa !1392
  %gw131 = getelementptr inbounds %struct.handler_ctx, ptr %95, i32 0, i32 0, !dbg !2454
  %conf132 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw131, i32 0, i32 19, !dbg !2454
  %debug133 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf132, i32 0, i32 6, !dbg !2454
  %96 = load i32, ptr %debug133, align 8, !dbg !2454, !tbaa !1875
  %cmp134 = icmp sge i32 %96, 3, !dbg !2454
  br i1 %cmp134, label %if.then136, label %if.end138, !dbg !2457

if.then136:                                       ; preds = %if.then130
  %97 = load ptr, ptr %hctx, align 8, !dbg !2458, !tbaa !1392
  %errh137 = getelementptr inbounds %struct.handler_ctx, ptr %97, i32 0, i32 5, !dbg !2458
  %98 = load ptr, ptr %errh137, align 8, !dbg !2458, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %98, ptr noundef @.str.9, i32 noundef 543, ptr noundef @.str.22, ptr noundef @.str.23) #13, !dbg !2458
  br label %if.end138, !dbg !2458

if.end138:                                        ; preds = %if.then136, %if.then130
  %99 = load ptr, ptr %hctx, align 8, !dbg !2460, !tbaa !1392
  %frame139 = getelementptr inbounds %struct.handler_ctx, ptr %99, i32 0, i32 1, !dbg !2461
  %type = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame139, i32 0, i32 2, !dbg !2462
  store i32 1, ptr %type, align 8, !dbg !2463, !tbaa !2464
  %100 = load ptr, ptr %hctx, align 8, !dbg !2465, !tbaa !1392
  %frame140 = getelementptr inbounds %struct.handler_ctx, ptr %100, i32 0, i32 1, !dbg !2466
  %type_before = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame140, i32 0, i32 3, !dbg !2467
  store i32 1, ptr %type_before, align 4, !dbg !2468, !tbaa !2469
  %101 = load ptr, ptr %hctx, align 8, !dbg !2470, !tbaa !1392
  %frame141 = getelementptr inbounds %struct.handler_ctx, ptr %101, i32 0, i32 1, !dbg !2471
  %type_backend = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame141, i32 0, i32 4, !dbg !2472
  store i32 1, ptr %type_backend, align 8, !dbg !2473, !tbaa !2474
  br label %if.end157, !dbg !2475

if.else142:                                       ; preds = %if.end128
  %102 = load ptr, ptr %hctx, align 8, !dbg !2476, !tbaa !1392
  %gw143 = getelementptr inbounds %struct.handler_ctx, ptr %102, i32 0, i32 0, !dbg !2476
  %conf144 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw143, i32 0, i32 19, !dbg !2476
  %debug145 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf144, i32 0, i32 6, !dbg !2476
  %103 = load i32, ptr %debug145, align 8, !dbg !2476, !tbaa !1875
  %cmp146 = icmp sge i32 %103, 3, !dbg !2476
  br i1 %cmp146, label %if.then148, label %if.end150, !dbg !2479

if.then148:                                       ; preds = %if.else142
  %104 = load ptr, ptr %hctx, align 8, !dbg !2480, !tbaa !1392
  %errh149 = getelementptr inbounds %struct.handler_ctx, ptr %104, i32 0, i32 5, !dbg !2480
  %105 = load ptr, ptr %errh149, align 8, !dbg !2480, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %105, ptr noundef @.str.9, i32 noundef 549, ptr noundef @.str.22, ptr noundef @.str.24) #13, !dbg !2480
  br label %if.end150, !dbg !2480

if.end150:                                        ; preds = %if.then148, %if.else142
  %106 = load ptr, ptr %hctx, align 8, !dbg !2482, !tbaa !1392
  %frame151 = getelementptr inbounds %struct.handler_ctx, ptr %106, i32 0, i32 1, !dbg !2483
  %type152 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame151, i32 0, i32 2, !dbg !2484
  store i32 0, ptr %type152, align 8, !dbg !2485, !tbaa !2464
  %107 = load ptr, ptr %hctx, align 8, !dbg !2486, !tbaa !1392
  %frame153 = getelementptr inbounds %struct.handler_ctx, ptr %107, i32 0, i32 1, !dbg !2487
  %type_before154 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame153, i32 0, i32 3, !dbg !2488
  store i32 0, ptr %type_before154, align 4, !dbg !2489, !tbaa !2469
  %108 = load ptr, ptr %hctx, align 8, !dbg !2490, !tbaa !1392
  %frame155 = getelementptr inbounds %struct.handler_ctx, ptr %108, i32 0, i32 1, !dbg !2491
  %type_backend156 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame155, i32 0, i32 4, !dbg !2492
  store i32 0, ptr %type_backend156, align 8, !dbg !2493, !tbaa !2474
  br label %if.end157

if.end157:                                        ; preds = %if.end150, %if.end138
  store i32 0, ptr %retval, align 4, !dbg !2494
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %binary) #12, !dbg !2495
  br label %cleanup159

cleanup159:                                       ; preds = %if.end157, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hybivers) #12, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2495
  %109 = load i32, ptr %retval, align 4, !dbg !2495
  ret i32 %109, !dbg !2495
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare !dbg !2496 i32 @config_check_cond(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_check_request(ptr noundef %r, ptr noundef %hctx) #3 !dbg !2499 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %hctx.addr = alloca ptr, align 8
  %vers = alloca ptr, align 8
  %hybivers = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2504, metadata !DIExpression()), !dbg !2509
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !2505, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 8, ptr %vers) #12, !dbg !2511
  tail call void @llvm.dbg.declare(metadata ptr %vers, metadata !2506, metadata !DIExpression()), !dbg !2512
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2513, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %0, i32 noundef 0, ptr noundef @.str.25, i32 noundef 21) #14, !dbg !2514
  store ptr %call, ptr %vers, align 8, !dbg !2512, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %hybivers) #12, !dbg !2515
  tail call void @llvm.dbg.declare(metadata ptr %hybivers, metadata !2507, metadata !DIExpression()), !dbg !2516
  %1 = load ptr, ptr %vers, align 8, !dbg !2517, !tbaa !1392
  %cmp = icmp ne ptr null, %1, !dbg !2518
  br i1 %cmp, label %cond.true, label %cond.false5, !dbg !2519

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %vers, align 8, !dbg !2520, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %2, i32 0, i32 0, !dbg !2521
  %3 = load ptr, ptr %ptr, align 8, !dbg !2521, !tbaa !1734
  %4 = load i8, ptr %3, align 1, !dbg !2522, !tbaa !1464
  %conv = sext i8 %4 to i32, !dbg !2522
  %call1 = call i32 @light_isdigit(i32 noundef %conv) #14, !dbg !2523
  %tobool = icmp ne i32 %call1, 0, !dbg !2523
  br i1 %tobool, label %cond.true2, label %cond.false, !dbg !2523

cond.true2:                                       ; preds = %cond.true
  %5 = load ptr, ptr %vers, align 8, !dbg !2524, !tbaa !1392
  %ptr3 = getelementptr inbounds %struct.buffer, ptr %5, i32 0, i32 0, !dbg !2525
  %6 = load ptr, ptr %ptr3, align 8, !dbg !2525, !tbaa !1734
  %call4 = call i64 @strtol(ptr noundef %6, ptr noundef null, i32 noundef 10) #12, !dbg !2526
  br label %cond.end, !dbg !2523

cond.false:                                       ; preds = %cond.true
  br label %cond.end, !dbg !2523

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i64 [ %call4, %cond.true2 ], [ -1, %cond.false ], !dbg !2523
  br label %cond.end6, !dbg !2519

cond.false5:                                      ; preds = %entry
  br label %cond.end6, !dbg !2519

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi i64 [ %cond, %cond.end ], [ 0, %cond.false5 ], !dbg !2519
  store i64 %cond7, ptr %hybivers, align 8, !dbg !2516, !tbaa !1805
  %7 = load i64, ptr %hybivers, align 8, !dbg !2527, !tbaa !1805
  %cmp8 = icmp slt i64 %7, 0, !dbg !2529
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !2530

lor.lhs.false:                                    ; preds = %cond.end6
  %8 = load i64, ptr %hybivers, align 8, !dbg !2531, !tbaa !1805
  %cmp10 = icmp sgt i64 %8, 2147483647, !dbg !2532
  br i1 %cmp10, label %if.then, label %if.end15, !dbg !2533

if.then:                                          ; preds = %lor.lhs.false, %cond.end6
  %9 = load ptr, ptr %hctx.addr, align 8, !dbg !2534, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %9, i32 0, i32 0, !dbg !2534
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 19, !dbg !2534
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !2534
  %10 = load i32, ptr %debug, align 8, !dbg !2534, !tbaa !1875
  %cmp12 = icmp sge i32 %10, 1, !dbg !2534
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !2537

if.then14:                                        ; preds = %if.then
  %11 = load ptr, ptr %hctx.addr, align 8, !dbg !2538, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %11, i32 0, i32 5, !dbg !2538
  %12 = load ptr, ptr %errh, align 8, !dbg !2538, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %12, ptr noundef @.str.9, i32 noundef 450, ptr noundef @.str.22, ptr noundef @.str.26) #13, !dbg !2538
  br label %if.end, !dbg !2538

if.end:                                           ; preds = %if.then14, %if.then
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2540, !tbaa !1392
  %http_status = getelementptr inbounds %struct.request_st, ptr %13, i32 0, i32 1, !dbg !2541
  store i32 400, ptr %http_status, align 4, !dbg !2542, !tbaa !2543
  store i32 -1, ptr %retval, align 4, !dbg !2544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2544

if.end15:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2545, !tbaa !1392
  %http_host = getelementptr inbounds %struct.request_st, ptr %14, i32 0, i32 27, !dbg !2547
  %15 = load ptr, ptr %http_host, align 8, !dbg !2547, !tbaa !2548
  %tobool16 = icmp ne ptr %15, null, !dbg !2545
  br i1 %tobool16, label %lor.lhs.false17, label %if.then21, !dbg !2549

lor.lhs.false17:                                  ; preds = %if.end15
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2550, !tbaa !1392
  %http_host18 = getelementptr inbounds %struct.request_st, ptr %16, i32 0, i32 27, !dbg !2551
  %17 = load ptr, ptr %http_host18, align 8, !dbg !2551, !tbaa !2548
  %call19 = call i32 @buffer_is_blank(ptr noundef %17) #14, !dbg !2552
  %tobool20 = icmp ne i32 %call19, 0, !dbg !2552
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !2553

if.then21:                                        ; preds = %lor.lhs.false17, %if.end15
  %18 = load ptr, ptr %hctx.addr, align 8, !dbg !2554, !tbaa !1392
  %gw22 = getelementptr inbounds %struct.handler_ctx, ptr %18, i32 0, i32 0, !dbg !2554
  %conf23 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw22, i32 0, i32 19, !dbg !2554
  %debug24 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf23, i32 0, i32 6, !dbg !2554
  %19 = load i32, ptr %debug24, align 8, !dbg !2554, !tbaa !1875
  %cmp25 = icmp sge i32 %19, 1, !dbg !2554
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !2557

if.then27:                                        ; preds = %if.then21
  %20 = load ptr, ptr %hctx.addr, align 8, !dbg !2558, !tbaa !1392
  %errh28 = getelementptr inbounds %struct.handler_ctx, ptr %20, i32 0, i32 5, !dbg !2558
  %21 = load ptr, ptr %errh28, align 8, !dbg !2558, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %21, ptr noundef @.str.9, i32 noundef 457, ptr noundef @.str.22, ptr noundef @.str.27) #13, !dbg !2558
  br label %if.end29, !dbg !2558

if.end29:                                         ; preds = %if.then27, %if.then21
  %22 = load ptr, ptr %r.addr, align 8, !dbg !2560, !tbaa !1392
  %http_status30 = getelementptr inbounds %struct.request_st, ptr %22, i32 0, i32 1, !dbg !2561
  store i32 400, ptr %http_status30, align 4, !dbg !2562, !tbaa !2543
  store i32 -1, ptr %retval, align 4, !dbg !2563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2563

if.end31:                                         ; preds = %lor.lhs.false17
  %23 = load ptr, ptr %r.addr, align 8, !dbg !2564, !tbaa !1392
  %24 = load ptr, ptr %hctx.addr, align 8, !dbg !2566, !tbaa !1392
  %call32 = call i32 @wstunnel_is_allowed_origin(ptr noundef %23, ptr noundef %24), !dbg !2567
  %tobool33 = icmp ne i32 %call32, 0, !dbg !2567
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2568

if.then34:                                        ; preds = %if.end31
  store i32 -1, ptr %retval, align 4, !dbg !2569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2569

if.end35:                                         ; preds = %if.end31
  %25 = load i64, ptr %hybivers, align 8, !dbg !2571, !tbaa !1805
  %conv36 = trunc i64 %25 to i32, !dbg !2572
  store i32 %conv36, ptr %retval, align 4, !dbg !2573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end35, %if.then34, %if.end29, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %hybivers) #12, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %vers) #12, !dbg !2574
  %26 = load i32, ptr %retval, align 4, !dbg !2574
  ret i32 %26, !dbg !2574
}

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_recv_parse(ptr noundef %r, ptr noundef %opts, ptr noundef %b, i64 noundef %n) #3 !dbg !2575 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %hctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2582, metadata !DIExpression()), !dbg !2587
  store ptr %opts, ptr %opts.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !2583, metadata !DIExpression()), !dbg !2588
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2584, metadata !DIExpression()), !dbg !2589
  store i64 %n, ptr %n.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2585, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2591
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2586, metadata !DIExpression()), !dbg !2592
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !2593, !tbaa !1392
  %pdata = getelementptr inbounds %struct.http_response_opts_t, ptr %0, i32 0, i32 8, !dbg !2594
  %1 = load ptr, ptr %pdata, align 8, !dbg !2594, !tbaa !2595
  store ptr %1, ptr %hctx, align 8, !dbg !2592, !tbaa !1392
  %2 = load ptr, ptr %hctx, align 8, !dbg !2596, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %2, i32 0, i32 0, !dbg !2596
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 19, !dbg !2596
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !2596
  %3 = load i32, ptr %debug, align 8, !dbg !2596, !tbaa !1875
  %cmp = icmp sge i32 %3, 4, !dbg !2596
  br i1 %cmp, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hctx, align 8, !dbg !2599, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %4, i32 0, i32 5, !dbg !2599
  %5 = load ptr, ptr %errh, align 8, !dbg !2599, !tbaa !1879
  %6 = load ptr, ptr %hctx, align 8, !dbg !2599, !tbaa !1392
  %gw1 = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 0, !dbg !2599
  %fd = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw1, i32 0, i32 12, !dbg !2599
  %7 = load i32, ptr %fd, align 8, !dbg !2599, !tbaa !2601
  %8 = load i64, ptr %n.addr, align 8, !dbg !2599, !tbaa !1805
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %5, ptr noundef @.str.9, i32 noundef 391, ptr noundef @.str.34, i32 noundef %7, i64 noundef %8) #13, !dbg !2599
  br label %if.end, !dbg !2599

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr %n.addr, align 8, !dbg !2602, !tbaa !1805
  %cmp2 = icmp eq i64 0, %9, !dbg !2604
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2605

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2606

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %hctx, align 8, !dbg !2607, !tbaa !1392
  %11 = load ptr, ptr %hctx, align 8, !dbg !2609, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %11, i32 0, i32 1, !dbg !2610
  %type_backend = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 4, !dbg !2611
  %12 = load i32, ptr %type_backend, align 8, !dbg !2611, !tbaa !2474
  %13 = load ptr, ptr %b.addr, align 8, !dbg !2612, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %13, i32 0, i32 0, !dbg !2613
  %14 = load ptr, ptr %ptr, align 8, !dbg !2613, !tbaa !1734
  %15 = load i64, ptr %n.addr, align 8, !dbg !2614, !tbaa !1805
  %call = call i32 @mod_wstunnel_frame_send(ptr noundef %10, i32 noundef %12, ptr noundef %14, i64 noundef %15), !dbg !2615
  %cmp5 = icmp slt i32 %call, 0, !dbg !2616
  br i1 %cmp5, label %if.then6, label %if.end14, !dbg !2617

if.then6:                                         ; preds = %if.end4
  %16 = load ptr, ptr %hctx, align 8, !dbg !2618, !tbaa !1392
  %gw7 = getelementptr inbounds %struct.handler_ctx, ptr %16, i32 0, i32 0, !dbg !2618
  %conf8 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw7, i32 0, i32 19, !dbg !2618
  %debug9 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf8, i32 0, i32 6, !dbg !2618
  %17 = load i32, ptr %debug9, align 8, !dbg !2618, !tbaa !1875
  %cmp10 = icmp sge i32 %17, 1, !dbg !2618
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2621

if.then11:                                        ; preds = %if.then6
  %18 = load ptr, ptr %hctx, align 8, !dbg !2622, !tbaa !1392
  %errh12 = getelementptr inbounds %struct.handler_ctx, ptr %18, i32 0, i32 5, !dbg !2622
  %19 = load ptr, ptr %errh12, align 8, !dbg !2622, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %19, ptr noundef @.str.9, i32 noundef 394, ptr noundef @.str.22, ptr noundef @.str.35) #13, !dbg !2622
  br label %if.end13, !dbg !2622

if.end13:                                         ; preds = %if.then11, %if.then6
  store i32 4, ptr %retval, align 4, !dbg !2624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2624

if.end14:                                         ; preds = %if.end4
  %20 = load ptr, ptr %b.addr, align 8, !dbg !2625, !tbaa !1392
  call void @buffer_clear(ptr noundef %20), !dbg !2626
  %21 = load ptr, ptr %r.addr, align 8, !dbg !2627, !tbaa !1392
  store i32 0, ptr %retval, align 4, !dbg !2628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2628

cleanup:                                          ; preds = %if.end14, %if.end13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2629
  %22 = load i32, ptr %retval, align 4, !dbg !2629
  ret i32 %22, !dbg !2629
}

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_stdin_append(ptr noundef %gwhctx) #3 !dbg !2630 {
entry:
  %retval = alloca i32, align 4
  %gwhctx.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %gwhctx, ptr %gwhctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %gwhctx.addr, metadata !2635, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2641
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2636, metadata !DIExpression()), !dbg !2642
  %0 = load ptr, ptr %gwhctx.addr, align 8, !dbg !2643, !tbaa !1392
  store ptr %0, ptr %hctx, align 8, !dbg !2642, !tbaa !1392
  %1 = load ptr, ptr %hctx, align 8, !dbg !2644, !tbaa !1392
  %call = call i32 @mod_wstunnel_frame_recv(ptr noundef %1), !dbg !2645
  %cmp = icmp eq i32 0, %call, !dbg !2646
  br i1 %cmp, label %if.then, label %if.else, !dbg !2647

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !2649
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2637, metadata !DIExpression()), !dbg !2650
  %2 = load ptr, ptr %hctx, align 8, !dbg !2651, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %2, i32 0, i32 0, !dbg !2652
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !2653
  %3 = load ptr, ptr %r1, align 8, !dbg !2653, !tbaa !2654
  store ptr %3, ptr %r, align 8, !dbg !2650, !tbaa !1392
  %4 = load ptr, ptr %hctx, align 8, !dbg !2655, !tbaa !1392
  %gw2 = getelementptr inbounds %struct.handler_ctx, ptr %4, i32 0, i32 0, !dbg !2655
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw2, i32 0, i32 19, !dbg !2655
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !2655
  %5 = load i32, ptr %debug, align 8, !dbg !2655, !tbaa !1875
  %cmp3 = icmp sge i32 %5, 3, !dbg !2655
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2657

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %hctx, align 8, !dbg !2658, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 5, !dbg !2658
  %7 = load ptr, ptr %errh, align 8, !dbg !2658, !tbaa !1879
  %8 = load ptr, ptr %r, align 8, !dbg !2658, !tbaa !1392
  %con = getelementptr inbounds %struct.request_st, ptr %8, i32 0, i32 12, !dbg !2658
  %9 = load ptr, ptr %con, align 8, !dbg !2658, !tbaa !2660
  %fd = getelementptr inbounds %struct.connection, ptr %9, i32 0, i32 2, !dbg !2658
  %10 = load i32, ptr %fd, align 8, !dbg !2658, !tbaa !1880
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %7, ptr noundef @.str.9, i32 noundef 381, ptr noundef @.str.44, i32 noundef %10) #13, !dbg !2658
  br label %if.end, !dbg !2658

if.end:                                           ; preds = %if.then4, %if.else
  %11 = load ptr, ptr %hctx, align 8, !dbg !2661, !tbaa !1392
  %gw5 = getelementptr inbounds %struct.handler_ctx, ptr %11, i32 0, i32 0, !dbg !2661
  %conf6 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw5, i32 0, i32 19, !dbg !2661
  %debug7 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf6, i32 0, i32 6, !dbg !2661
  %12 = load i32, ptr %debug7, align 8, !dbg !2661, !tbaa !1875
  %cmp8 = icmp sge i32 %12, 4, !dbg !2661
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !2663

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %hctx, align 8, !dbg !2664, !tbaa !1392
  %errh10 = getelementptr inbounds %struct.handler_ctx, ptr %13, i32 0, i32 5, !dbg !2664
  %14 = load ptr, ptr %errh10, align 8, !dbg !2664, !tbaa !1879
  %15 = load ptr, ptr %r, align 8, !dbg !2664, !tbaa !1392
  %con11 = getelementptr inbounds %struct.request_st, ptr %15, i32 0, i32 12, !dbg !2664
  %16 = load ptr, ptr %con11, align 8, !dbg !2664, !tbaa !2660
  %fd12 = getelementptr inbounds %struct.connection, ptr %16, i32 0, i32 2, !dbg !2664
  %17 = load i32, ptr %fd12, align 8, !dbg !2664, !tbaa !1880
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %14, ptr noundef @.str.9, i32 noundef 382, ptr noundef @.str.45, i32 noundef %17) #13, !dbg !2664
  br label %if.end13, !dbg !2664

if.end13:                                         ; preds = %if.then9, %if.end
  %18 = load ptr, ptr %hctx, align 8, !dbg !2666, !tbaa !1392
  %call14 = call i32 @mod_wstunnel_frame_send(ptr noundef %18, i32 noundef 2, ptr noundef @.str.46, i64 noundef 4), !dbg !2667
  %19 = load ptr, ptr %r, align 8, !dbg !2668, !tbaa !1392
  %20 = load ptr, ptr %hctx, align 8, !dbg !2669, !tbaa !1392
  %gw15 = getelementptr inbounds %struct.handler_ctx, ptr %20, i32 0, i32 0, !dbg !2670
  %plugin_data = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw15, i32 0, i32 22, !dbg !2671
  %21 = load ptr, ptr %plugin_data, align 8, !dbg !2671, !tbaa !2672
  %call16 = call i32 @gw_handle_request_reset(ptr noundef %19, ptr noundef %21), !dbg !2673
  store i32 1, ptr %retval, align 4, !dbg !2674
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !2675
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2676
  %22 = load i32, ptr %retval, align 4, !dbg !2676
  ret i32 %22, !dbg !2676
}

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_create_env(ptr noundef %gwhctx) #3 !dbg !2677 {
entry:
  %retval = alloca i32, align 4
  %gwhctx.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  %r = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gwhctx, ptr %gwhctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %gwhctx.addr, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2684
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2680, metadata !DIExpression()), !dbg !2685
  %0 = load ptr, ptr %gwhctx.addr, align 8, !dbg !2686, !tbaa !1392
  store ptr %0, ptr %hctx, align 8, !dbg !2685, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !2687
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2681, metadata !DIExpression()), !dbg !2688
  %1 = load ptr, ptr %hctx, align 8, !dbg !2689, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %1, i32 0, i32 0, !dbg !2690
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !2691
  %2 = load ptr, ptr %r1, align 8, !dbg !2691, !tbaa !2654
  store ptr %2, ptr %r, align 8, !dbg !2688, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #12, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2682, metadata !DIExpression()), !dbg !2693
  %3 = load ptr, ptr %r, align 8, !dbg !2694, !tbaa !1392
  %reqbody_length = getelementptr inbounds %struct.request_st, ptr %3, i32 0, i32 24, !dbg !2696
  %4 = load i64, ptr %reqbody_length, align 8, !dbg !2696, !tbaa !2697
  %cmp = icmp eq i64 0, %4, !dbg !2698
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2699

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %r, align 8, !dbg !2700, !tbaa !1392
  %http_version = getelementptr inbounds %struct.request_st, ptr %5, i32 0, i32 9, !dbg !2701
  %6 = load i32, ptr %http_version, align 8, !dbg !2701, !tbaa !1700
  %cmp2 = icmp sgt i32 %6, 1, !dbg !2702
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2703

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %r, align 8, !dbg !2704, !tbaa !1392
  call void @http_response_upgrade_read_body_unknown(ptr noundef %7), !dbg !2706
  %8 = load ptr, ptr %r, align 8, !dbg !2707, !tbaa !1392
  %reqbody_queue = getelementptr inbounds %struct.request_st, ptr %8, i32 0, i32 53, !dbg !2708
  %9 = load ptr, ptr %r, align 8, !dbg !2709, !tbaa !1392
  %read_queue = getelementptr inbounds %struct.request_st, ptr %9, i32 0, i32 52, !dbg !2710
  call void @chunkqueue_append_chunkqueue(ptr noundef %reqbody_queue, ptr noundef %read_queue), !dbg !2711
  br label %if.end, !dbg !2712

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load ptr, ptr %hctx, align 8, !dbg !2713, !tbaa !1392
  %call = call i32 @mod_wstunnel_handshake_create_response(ptr noundef %10), !dbg !2714
  store i32 %call, ptr %rc, align 4, !dbg !2715, !tbaa !1464
  %11 = load i32, ptr %rc, align 4, !dbg !2716, !tbaa !1464
  %cmp3 = icmp ne i32 %11, 0, !dbg !2718
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2719

if.then4:                                         ; preds = %if.end
  %12 = load i32, ptr %rc, align 4, !dbg !2720, !tbaa !1464
  store i32 %12, ptr %retval, align 4, !dbg !2721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2721

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %r, align 8, !dbg !2722, !tbaa !1392
  %http_version6 = getelementptr inbounds %struct.request_st, ptr %13, i32 0, i32 9, !dbg !2723
  %14 = load i32, ptr %http_version6, align 8, !dbg !2723, !tbaa !1700
  %cmp7 = icmp sgt i32 %14, 1, !dbg !2724
  %15 = zext i1 %cmp7 to i64, !dbg !2725
  %cond = select i1 %cmp7, i32 200, i32 101, !dbg !2725
  %16 = load ptr, ptr %r, align 8, !dbg !2726, !tbaa !1392
  %http_status = getelementptr inbounds %struct.request_st, ptr %16, i32 0, i32 1, !dbg !2727
  store i32 %cond, ptr %http_status, align 4, !dbg !2728, !tbaa !2543
  %17 = load ptr, ptr %r, align 8, !dbg !2729, !tbaa !1392
  %resp_body_started = getelementptr inbounds %struct.request_st, ptr %17, i32 0, i32 37, !dbg !2730
  store i8 1, ptr %resp_body_started, align 1, !dbg !2731, !tbaa !2732
  %18 = load i64, ptr @log_monotonic_secs, align 8, !dbg !2733, !tbaa !1805
  %19 = load ptr, ptr %hctx, align 8, !dbg !2734, !tbaa !1392
  %ping_ts = getelementptr inbounds %struct.handler_ctx, ptr %19, i32 0, i32 3, !dbg !2735
  store i64 %18, ptr %ping_ts, align 8, !dbg !2736, !tbaa !1910
  %20 = load ptr, ptr %hctx, align 8, !dbg !2737, !tbaa !1392
  %gw8 = getelementptr inbounds %struct.handler_ctx, ptr %20, i32 0, i32 0, !dbg !2738
  call void @gw_set_transparent(ptr noundef %gw8), !dbg !2739
  store i32 0, ptr %retval, align 4, !dbg !2740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2740

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #12, !dbg !2741
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !2741
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2741
  %21 = load i32, ptr %retval, align 4, !dbg !2741
  ret i32 %21, !dbg !2741
}

; Function Attrs: nounwind uwtable
define internal void @wstunnel_handler_ctx_free(ptr noundef %gwhctx) #3 !dbg !2742 {
entry:
  %gwhctx.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  store ptr %gwhctx, ptr %gwhctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %gwhctx.addr, metadata !2744, metadata !DIExpression()), !dbg !2746
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2747
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2745, metadata !DIExpression()), !dbg !2748
  %0 = load ptr, ptr %gwhctx.addr, align 8, !dbg !2749, !tbaa !1392
  store ptr %0, ptr %hctx, align 8, !dbg !2748, !tbaa !1392
  %1 = load ptr, ptr %hctx, align 8, !dbg !2750, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %1, i32 0, i32 1, !dbg !2751
  %payload = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 5, !dbg !2752
  %2 = load ptr, ptr %payload, align 8, !dbg !2752, !tbaa !2309
  call void @chunk_buffer_release(ptr noundef %2), !dbg !2753
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2754
  ret void, !dbg !2754
}

; Function Attrs: nounwind uwtable
define internal void @wstunnel_backend_error(ptr noundef %gwhctx) #3 !dbg !2755 {
entry:
  %gwhctx.addr = alloca ptr, align 8
  %hctx = alloca ptr, align 8
  store ptr %gwhctx, ptr %gwhctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %gwhctx.addr, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.lifetime.start.p0(i64 8, ptr %hctx) #12, !dbg !2762
  tail call void @llvm.dbg.declare(metadata ptr %hctx, metadata !2760, metadata !DIExpression()), !dbg !2763
  %0 = load ptr, ptr %gwhctx.addr, align 8, !dbg !2764, !tbaa !1392
  store ptr %0, ptr %hctx, align 8, !dbg !2763, !tbaa !1392
  %1 = load ptr, ptr %hctx, align 8, !dbg !2765, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %1, i32 0, i32 0, !dbg !2767
  %state = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 5, !dbg !2768
  %2 = load i32, ptr %state, align 4, !dbg !2768, !tbaa !1845
  %cmp = icmp eq i32 %2, 3, !dbg !2769
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2770

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %hctx, align 8, !dbg !2771, !tbaa !1392
  %gw1 = getelementptr inbounds %struct.handler_ctx, ptr %3, i32 0, i32 0, !dbg !2772
  %state2 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw1, i32 0, i32 5, !dbg !2773
  %4 = load i32, ptr %state2, align 4, !dbg !2773, !tbaa !1845
  %cmp3 = icmp eq i32 %4, 4, !dbg !2774
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2775

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %hctx, align 8, !dbg !2776, !tbaa !1392
  %call = call i32 @mod_wstunnel_frame_send(ptr noundef %5, i32 noundef 2, ptr noundef @.str.79, i64 noundef 4), !dbg !2778
  br label %if.end, !dbg !2779

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %hctx) #12, !dbg !2780
  ret void, !dbg !2780
}

declare !dbg !2781 nonnull ptr @chunk_buffer_acquire() #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2784 i32 @buffer_eq_icase_ssn(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2787 ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @light_isdigit(i32 noundef %c) #6 !dbg !2791 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !1466
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2795, metadata !DIExpression()), !dbg !2796
  %0 = load i32, ptr %c.addr, align 4, !dbg !2797, !tbaa !1466
  %sub = sub i32 %0, 48, !dbg !2798
  %cmp = icmp ule i32 %sub, 9, !dbg !2799
  %conv = zext i1 %cmp to i32, !dbg !2799
  ret i32 %conv, !dbg !2800
}

; Function Attrs: nounwind
declare !dbg !2801 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: nounwind uwtable
define internal i32 @wstunnel_is_allowed_origin(ptr noundef %r, ptr noundef %hctx) #3 !dbg !2807 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %hctx.addr = alloca ptr, align 8
  %allowed_origins = alloca ptr, align 8
  %origin = alloca ptr, align 8
  %olen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %b = alloca ptr, align 8
  %blen = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2809, metadata !DIExpression()), !dbg !2821
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !2810, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 8, ptr %allowed_origins) #12, !dbg !2823
  tail call void @llvm.dbg.declare(metadata ptr %allowed_origins, metadata !2811, metadata !DIExpression()), !dbg !2824
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !2825, !tbaa !1392
  %conf = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 6, !dbg !2826
  %origins = getelementptr inbounds %struct.plugin_config, ptr %conf, i32 0, i32 1, !dbg !2827
  %1 = load ptr, ptr %origins, align 8, !dbg !2827, !tbaa !2828
  store ptr %1, ptr %allowed_origins, align 8, !dbg !2824, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #12, !dbg !2829
  tail call void @llvm.dbg.declare(metadata ptr %origin, metadata !2813, metadata !DIExpression()), !dbg !2830
  store ptr null, ptr %origin, align 8, !dbg !2830, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %olen) #12, !dbg !2831
  tail call void @llvm.dbg.declare(metadata ptr %olen, metadata !2814, metadata !DIExpression()), !dbg !2832
  %2 = load ptr, ptr %allowed_origins, align 8, !dbg !2833, !tbaa !1392
  %cmp = icmp eq ptr null, %2, !dbg !2835
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2836

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %allowed_origins, align 8, !dbg !2837, !tbaa !1392
  %used = getelementptr inbounds %struct.array, ptr %3, i32 0, i32 2, !dbg !2838
  %4 = load i32, ptr %used, align 8, !dbg !2838, !tbaa !1576
  %cmp1 = icmp eq i32 0, %4, !dbg !2839
  br i1 %cmp1, label %if.then, label %if.end5, !dbg !2840

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !2841, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %5, i32 0, i32 0, !dbg !2841
  %conf2 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 19, !dbg !2841
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf2, i32 0, i32 6, !dbg !2841
  %6 = load i32, ptr %debug, align 8, !dbg !2841, !tbaa !1875
  %cmp3 = icmp sge i32 %6, 3, !dbg !2841
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2844

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !2845, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %7, i32 0, i32 5, !dbg !2845
  %8 = load ptr, ptr %errh, align 8, !dbg !2845, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %8, ptr noundef @.str.9, i32 noundef 411, ptr noundef @.str.22, ptr noundef @.str.28) #13, !dbg !2845
  br label %if.end, !dbg !2845

if.end:                                           ; preds = %if.then4, %if.then
  store i32 1, ptr %retval, align 4, !dbg !2847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2847

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2848, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %9, i32 noundef 0, ptr noundef @.str.29, i32 noundef 6) #14, !dbg !2849
  store ptr %call, ptr %origin, align 8, !dbg !2850, !tbaa !1392
  %10 = load ptr, ptr %origin, align 8, !dbg !2851, !tbaa !1392
  %cmp6 = icmp eq ptr null, %10, !dbg !2853
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !2854

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2855, !tbaa !1392
  %call8 = call ptr @http_header_request_get(ptr noundef %11, i32 noundef 0, ptr noundef @.str.30, i32 noundef 20) #14, !dbg !2857
  store ptr %call8, ptr %origin, align 8, !dbg !2858, !tbaa !1392
  br label %if.end9, !dbg !2859

if.end9:                                          ; preds = %if.then7, %if.end5
  %12 = load ptr, ptr %origin, align 8, !dbg !2860, !tbaa !1392
  %tobool = icmp ne ptr %12, null, !dbg !2860
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2860

cond.true:                                        ; preds = %if.end9
  %13 = load ptr, ptr %origin, align 8, !dbg !2861, !tbaa !1392
  %call10 = call i32 @buffer_clen(ptr noundef %13) #14, !dbg !2862
  br label %cond.end, !dbg !2860

cond.false:                                       ; preds = %if.end9
  br label %cond.end, !dbg !2860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call10, %cond.true ], [ 0, %cond.false ], !dbg !2860
  %conv = zext i32 %cond to i64, !dbg !2860
  store i64 %conv, ptr %olen, align 8, !dbg !2863, !tbaa !1805
  %14 = load i64, ptr %olen, align 8, !dbg !2864, !tbaa !1805
  %cmp11 = icmp eq i64 0, %14, !dbg !2866
  br i1 %cmp11, label %if.then13, label %if.end22, !dbg !2867

if.then13:                                        ; preds = %cond.end
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !2868, !tbaa !1392
  %gw14 = getelementptr inbounds %struct.handler_ctx, ptr %15, i32 0, i32 0, !dbg !2868
  %conf15 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw14, i32 0, i32 19, !dbg !2868
  %debug16 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf15, i32 0, i32 6, !dbg !2868
  %16 = load i32, ptr %debug16, align 8, !dbg !2868, !tbaa !1875
  %cmp17 = icmp sge i32 %16, 1, !dbg !2868
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2871

if.then19:                                        ; preds = %if.then13
  %17 = load ptr, ptr %hctx.addr, align 8, !dbg !2872, !tbaa !1392
  %errh20 = getelementptr inbounds %struct.handler_ctx, ptr %17, i32 0, i32 5, !dbg !2872
  %18 = load ptr, ptr %errh20, align 8, !dbg !2872, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %18, ptr noundef @.str.9, i32 noundef 424, ptr noundef @.str.22, ptr noundef @.str.31) #13, !dbg !2872
  br label %if.end21, !dbg !2872

if.end21:                                         ; preds = %if.then19, %if.then13
  %19 = load ptr, ptr %r.addr, align 8, !dbg !2874, !tbaa !1392
  %http_status = getelementptr inbounds %struct.request_st, ptr %19, i32 0, i32 1, !dbg !2875
  store i32 400, ptr %http_status, align 4, !dbg !2876, !tbaa !2543
  store i32 0, ptr %retval, align 4, !dbg !2877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2877

if.end22:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12, !dbg !2878
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2815, metadata !DIExpression()), !dbg !2879
  store i64 0, ptr %i, align 8, !dbg !2879, !tbaa !1805
  br label %for.cond, !dbg !2878

for.cond:                                         ; preds = %for.inc, %if.end22
  %20 = load i64, ptr %i, align 8, !dbg !2880, !tbaa !1805
  %21 = load ptr, ptr %allowed_origins, align 8, !dbg !2881, !tbaa !1392
  %used23 = getelementptr inbounds %struct.array, ptr %21, i32 0, i32 2, !dbg !2882
  %22 = load i32, ptr %used23, align 8, !dbg !2882, !tbaa !1576
  %conv24 = zext i32 %22 to i64, !dbg !2881
  %cmp25 = icmp ult i64 %20, %conv24, !dbg !2883
  br i1 %cmp25, label %for.body, label %for.cond.cleanup, !dbg !2884

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !2884

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !2885
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2817, metadata !DIExpression()), !dbg !2886
  %23 = load ptr, ptr %allowed_origins, align 8, !dbg !2887, !tbaa !1392
  %data = getelementptr inbounds %struct.array, ptr %23, i32 0, i32 0, !dbg !2888
  %24 = load ptr, ptr %data, align 8, !dbg !2888, !tbaa !1585
  %25 = load i64, ptr %i, align 8, !dbg !2889, !tbaa !1805
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !2887
  %26 = load ptr, ptr %arrayidx, align 8, !dbg !2887, !tbaa !1392
  %value = getelementptr inbounds %struct.data_string, ptr %26, i32 0, i32 4, !dbg !2890
  store ptr %value, ptr %b, align 8, !dbg !2886, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %blen) #12, !dbg !2891
  tail call void @llvm.dbg.declare(metadata ptr %blen, metadata !2820, metadata !DIExpression()), !dbg !2892
  %27 = load ptr, ptr %b, align 8, !dbg !2893, !tbaa !1392
  %call27 = call i32 @buffer_clen(ptr noundef %27) #14, !dbg !2894
  %conv28 = zext i32 %call27 to i64, !dbg !2894
  store i64 %conv28, ptr %blen, align 8, !dbg !2892, !tbaa !1805
  %28 = load i64, ptr %olen, align 8, !dbg !2895, !tbaa !1805
  %29 = load i64, ptr %blen, align 8, !dbg !2897, !tbaa !1805
  %cmp29 = icmp ugt i64 %28, %29, !dbg !2898
  br i1 %cmp29, label %cond.true31, label %cond.false37, !dbg !2899

cond.true31:                                      ; preds = %for.body
  %30 = load ptr, ptr %origin, align 8, !dbg !2900, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %30, i32 0, i32 0, !dbg !2901
  %31 = load ptr, ptr %ptr, align 8, !dbg !2901, !tbaa !1734
  %32 = load i64, ptr %olen, align 8, !dbg !2902, !tbaa !1805
  %33 = load i64, ptr %blen, align 8, !dbg !2903, !tbaa !1805
  %sub = sub i64 %32, %33, !dbg !2904
  %sub32 = sub i64 %sub, 1, !dbg !2905
  %arrayidx33 = getelementptr inbounds i8, ptr %31, i64 %sub32, !dbg !2900
  %34 = load i8, ptr %arrayidx33, align 1, !dbg !2900, !tbaa !1464
  %conv34 = sext i8 %34 to i32, !dbg !2900
  %cmp35 = icmp eq i32 %conv34, 46, !dbg !2906
  br i1 %cmp35, label %land.lhs.true, label %if.end57, !dbg !2895

cond.false37:                                     ; preds = %for.body
  %35 = load i64, ptr %olen, align 8, !dbg !2907, !tbaa !1805
  %36 = load i64, ptr %blen, align 8, !dbg !2908, !tbaa !1805
  %cmp38 = icmp eq i64 %35, %36, !dbg !2909
  br i1 %cmp38, label %land.lhs.true, label %if.end57, !dbg !2899

land.lhs.true:                                    ; preds = %cond.false37, %cond.true31
  %37 = load ptr, ptr %origin, align 8, !dbg !2910, !tbaa !1392
  %ptr40 = getelementptr inbounds %struct.buffer, ptr %37, i32 0, i32 0, !dbg !2911
  %38 = load ptr, ptr %ptr40, align 8, !dbg !2911, !tbaa !1734
  %39 = load i64, ptr %olen, align 8, !dbg !2912, !tbaa !1805
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2913
  %40 = load i64, ptr %blen, align 8, !dbg !2914, !tbaa !1805
  %idx.neg = sub i64 0, %40, !dbg !2915
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg, !dbg !2915
  %41 = load ptr, ptr %b, align 8, !dbg !2916, !tbaa !1392
  %ptr42 = getelementptr inbounds %struct.buffer, ptr %41, i32 0, i32 0, !dbg !2917
  %42 = load ptr, ptr %ptr42, align 8, !dbg !2917, !tbaa !1734
  %43 = load i64, ptr %blen, align 8, !dbg !2918, !tbaa !1805
  %call43 = call i32 @memcmp(ptr noundef %add.ptr41, ptr noundef %42, i64 noundef %43) #14, !dbg !2919
  %cmp44 = icmp eq i32 0, %call43, !dbg !2920
  br i1 %cmp44, label %if.then46, label %if.end57, !dbg !2921

if.then46:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %hctx.addr, align 8, !dbg !2922, !tbaa !1392
  %gw47 = getelementptr inbounds %struct.handler_ctx, ptr %44, i32 0, i32 0, !dbg !2922
  %conf48 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw47, i32 0, i32 19, !dbg !2922
  %debug49 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf48, i32 0, i32 6, !dbg !2922
  %45 = load i32, ptr %debug49, align 8, !dbg !2922, !tbaa !1875
  %cmp50 = icmp sge i32 %45, 3, !dbg !2922
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !2925

if.then52:                                        ; preds = %if.then46
  %46 = load ptr, ptr %hctx.addr, align 8, !dbg !2926, !tbaa !1392
  %errh53 = getelementptr inbounds %struct.handler_ctx, ptr %46, i32 0, i32 5, !dbg !2926
  %47 = load ptr, ptr %errh53, align 8, !dbg !2926, !tbaa !1879
  %48 = load ptr, ptr %origin, align 8, !dbg !2926, !tbaa !1392
  %ptr54 = getelementptr inbounds %struct.buffer, ptr %48, i32 0, i32 0, !dbg !2926
  %49 = load ptr, ptr %ptr54, align 8, !dbg !2926, !tbaa !1734
  %50 = load ptr, ptr %b, align 8, !dbg !2926, !tbaa !1392
  %ptr55 = getelementptr inbounds %struct.buffer, ptr %50, i32 0, i32 0, !dbg !2926
  %51 = load ptr, ptr %ptr55, align 8, !dbg !2926, !tbaa !1734
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %47, ptr noundef @.str.9, i32 noundef 434, ptr noundef @.str.32, ptr noundef %49, ptr noundef %51) #13, !dbg !2926
  br label %if.end56, !dbg !2926

if.end56:                                         ; preds = %if.then52, %if.then46
  store i32 1, ptr %retval, align 4, !dbg !2928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2928

if.end57:                                         ; preds = %land.lhs.true, %cond.false37, %cond.true31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2929
  br label %cleanup, !dbg !2929

cleanup:                                          ; preds = %if.end57, %if.end56
  call void @llvm.lifetime.end.p0(i64 8, ptr %blen) #12, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !2929
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2930

for.inc:                                          ; preds = %cleanup.cont
  %52 = load i64, ptr %i, align 8, !dbg !2931, !tbaa !1805
  %inc = add i64 %52, 1, !dbg !2931
  store i64 %inc, ptr %i, align 8, !dbg !2931, !tbaa !1805
  br label %for.cond, !dbg !2932, !llvm.loop !2933

cleanup59:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12, !dbg !2932
  %cleanup.dest60 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest60, label %cleanup71 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup59
  %53 = load ptr, ptr %hctx.addr, align 8, !dbg !2935, !tbaa !1392
  %gw61 = getelementptr inbounds %struct.handler_ctx, ptr %53, i32 0, i32 0, !dbg !2935
  %conf62 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw61, i32 0, i32 19, !dbg !2935
  %debug63 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf62, i32 0, i32 6, !dbg !2935
  %54 = load i32, ptr %debug63, align 8, !dbg !2935, !tbaa !1875
  %cmp64 = icmp sge i32 %54, 3, !dbg !2935
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !2937

if.then66:                                        ; preds = %for.end
  %55 = load ptr, ptr %hctx.addr, align 8, !dbg !2938, !tbaa !1392
  %errh67 = getelementptr inbounds %struct.handler_ctx, ptr %55, i32 0, i32 5, !dbg !2938
  %56 = load ptr, ptr %errh67, align 8, !dbg !2938, !tbaa !1879
  %57 = load ptr, ptr %origin, align 8, !dbg !2938, !tbaa !1392
  %ptr68 = getelementptr inbounds %struct.buffer, ptr %57, i32 0, i32 0, !dbg !2938
  %58 = load ptr, ptr %ptr68, align 8, !dbg !2938, !tbaa !1734
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %56, ptr noundef @.str.9, i32 noundef 438, ptr noundef @.str.33, ptr noundef %58) #13, !dbg !2938
  br label %if.end69, !dbg !2938

if.end69:                                         ; preds = %if.then66, %for.end
  %59 = load ptr, ptr %r.addr, align 8, !dbg !2940, !tbaa !1392
  %http_status70 = getelementptr inbounds %struct.request_st, ptr %59, i32 0, i32 1, !dbg !2941
  store i32 403, ptr %http_status70, align 4, !dbg !2942, !tbaa !2543
  store i32 0, ptr %retval, align 4, !dbg !2943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup71, !dbg !2943

cleanup71:                                        ; preds = %if.end69, %cleanup59, %if.end21, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %olen) #12, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #12, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 8, ptr %allowed_origins) #12, !dbg !2944
  %60 = load i32, ptr %retval, align 4, !dbg !2944
  ret i32 %60, !dbg !2944
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2945 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @mod_wstunnel_frame_send(ptr noundef %hctx, i32 noundef %type, ptr noundef %payload, i64 noundef %siz) #3 !dbg !2950 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %payload.addr = alloca ptr, align 8
  %siz.addr = alloca i64, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !2952, metadata !DIExpression()), !dbg !2956
  store i32 %type, ptr %type.addr, align 4, !tbaa !1464
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2953, metadata !DIExpression()), !dbg !2957
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !2954, metadata !DIExpression()), !dbg !2958
  store i64 %siz, ptr %siz.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %siz.addr, metadata !2955, metadata !DIExpression()), !dbg !2959
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !2960, !tbaa !1392
  %hybivers = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 2, !dbg !2962
  %1 = load i32, ptr %hybivers, align 8, !dbg !2962, !tbaa !1895
  %cmp = icmp sge i32 %1, 8, !dbg !2963
  br i1 %cmp, label %if.then, label %if.end, !dbg !2964

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !2965, !tbaa !1392
  %3 = load i32, ptr %type.addr, align 4, !dbg !2966, !tbaa !1464
  %4 = load ptr, ptr %payload.addr, align 8, !dbg !2967, !tbaa !1392
  %5 = load i64, ptr %siz.addr, align 8, !dbg !2968, !tbaa !1805
  %call = call i32 @send_rfc_6455(ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5), !dbg !2969
  store i32 %call, ptr %retval, align 4, !dbg !2970
  br label %return, !dbg !2970

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !2971, !tbaa !1392
  %hybivers1 = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 2, !dbg !2973
  %7 = load i32, ptr %hybivers1, align 8, !dbg !2973, !tbaa !1895
  %cmp2 = icmp eq i32 0, %7, !dbg !2974
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !2975

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !2976, !tbaa !1392
  %9 = load i32, ptr %type.addr, align 4, !dbg !2977, !tbaa !1464
  %10 = load ptr, ptr %payload.addr, align 8, !dbg !2978, !tbaa !1392
  %11 = load i64, ptr %siz.addr, align 8, !dbg !2979, !tbaa !1805
  %call4 = call i32 @send_ietf_00(ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef %11), !dbg !2980
  store i32 %call4, ptr %retval, align 4, !dbg !2981
  br label %return, !dbg !2981

if.end5:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !2983
  ret i32 %12, !dbg !2983
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @buffer_clear(ptr noundef nonnull %b) #9 !dbg !2984 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2988, metadata !DIExpression()), !dbg !2989
  %0 = load ptr, ptr %b.addr, align 8, !dbg !2990, !tbaa !1392
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !2991
  store i32 0, ptr %used, align 8, !dbg !2992, !tbaa !1523
  ret void, !dbg !2993
}

; Function Attrs: nounwind uwtable
define internal i32 @send_rfc_6455(ptr noundef %hctx, i32 noundef %type, ptr noundef %payload, i64 noundef %siz) #3 !dbg !2994 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %payload.addr = alloca ptr, align 8
  %siz.addr = alloca i64, align 8
  %mem = alloca [10 x i8], align 1
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !2996, metadata !DIExpression()), !dbg !3003
  store i32 %type, ptr %type.addr, align 4, !tbaa !1464
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2997, metadata !DIExpression()), !dbg !3004
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !2998, metadata !DIExpression()), !dbg !3005
  store i64 %siz, ptr %siz.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %siz.addr, metadata !2999, metadata !DIExpression()), !dbg !3006
  call void @llvm.lifetime.start.p0(i64 10, ptr %mem) #12, !dbg !3007
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !3000, metadata !DIExpression()), !dbg !3008
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !3009
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3001, metadata !DIExpression()), !dbg !3010
  %0 = load ptr, ptr %payload.addr, align 8, !dbg !3011, !tbaa !1392
  %cmp = icmp eq ptr %0, null, !dbg !3013
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3014

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3015, !tbaa !1464
  %cmp1 = icmp eq i32 %1, 0, !dbg !3016
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !3017

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, ptr %type.addr, align 4, !dbg !3018, !tbaa !1464
  %cmp2 = icmp eq i32 %2, 1, !dbg !3019
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3020

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !3021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3021

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !3023, !tbaa !1464
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 3, label %sw.bb15
    i32 4, label %sw.bb24
    i32 2, label %sw.bb33
  ], !dbg !3024

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3025
  store i8 -127, ptr %arrayidx, align 1, !dbg !3027, !tbaa !1464
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !3028, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %4, i32 0, i32 0, !dbg !3028
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 19, !dbg !3028
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !3028
  %5 = load i32, ptr %debug, align 8, !dbg !3028, !tbaa !1875
  %cmp3 = icmp sge i32 %5, 4, !dbg !3028
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3030

if.then4:                                         ; preds = %sw.bb
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !3031, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 5, !dbg !3031
  %7 = load ptr, ptr %errh, align 8, !dbg !3031, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %7, ptr noundef @.str.9, i32 noundef 1061, ptr noundef @.str.22, ptr noundef @.str.36) #13, !dbg !3031
  br label %if.end5, !dbg !3031

if.end5:                                          ; preds = %if.then4, %sw.bb
  br label %sw.epilog, !dbg !3033

sw.bb6:                                           ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3034
  store i8 -126, ptr %arrayidx7, align 1, !dbg !3035, !tbaa !1464
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !3036, !tbaa !1392
  %gw8 = getelementptr inbounds %struct.handler_ctx, ptr %8, i32 0, i32 0, !dbg !3036
  %conf9 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw8, i32 0, i32 19, !dbg !3036
  %debug10 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf9, i32 0, i32 6, !dbg !3036
  %9 = load i32, ptr %debug10, align 8, !dbg !3036, !tbaa !1875
  %cmp11 = icmp sge i32 %9, 4, !dbg !3036
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !3038

if.then12:                                        ; preds = %sw.bb6
  %10 = load ptr, ptr %hctx.addr, align 8, !dbg !3039, !tbaa !1392
  %errh13 = getelementptr inbounds %struct.handler_ctx, ptr %10, i32 0, i32 5, !dbg !3039
  %11 = load ptr, ptr %errh13, align 8, !dbg !3039, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %11, ptr noundef @.str.9, i32 noundef 1065, ptr noundef @.str.22, ptr noundef @.str.37) #13, !dbg !3039
  br label %if.end14, !dbg !3039

if.end14:                                         ; preds = %if.then12, %sw.bb6
  br label %sw.epilog, !dbg !3041

sw.bb15:                                          ; preds = %if.end
  %arrayidx16 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3042
  store i8 -119, ptr %arrayidx16, align 1, !dbg !3043, !tbaa !1464
  %12 = load ptr, ptr %hctx.addr, align 8, !dbg !3044, !tbaa !1392
  %gw17 = getelementptr inbounds %struct.handler_ctx, ptr %12, i32 0, i32 0, !dbg !3044
  %conf18 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw17, i32 0, i32 19, !dbg !3044
  %debug19 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf18, i32 0, i32 6, !dbg !3044
  %13 = load i32, ptr %debug19, align 8, !dbg !3044, !tbaa !1875
  %cmp20 = icmp sge i32 %13, 4, !dbg !3044
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !3046

if.then21:                                        ; preds = %sw.bb15
  %14 = load ptr, ptr %hctx.addr, align 8, !dbg !3047, !tbaa !1392
  %errh22 = getelementptr inbounds %struct.handler_ctx, ptr %14, i32 0, i32 5, !dbg !3047
  %15 = load ptr, ptr %errh22, align 8, !dbg !3047, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %15, ptr noundef @.str.9, i32 noundef 1069, ptr noundef @.str.22, ptr noundef @.str.38) #13, !dbg !3047
  br label %if.end23, !dbg !3047

if.end23:                                         ; preds = %if.then21, %sw.bb15
  br label %sw.epilog, !dbg !3049

sw.bb24:                                          ; preds = %if.end
  %arrayidx25 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3050
  store i8 -118, ptr %arrayidx25, align 1, !dbg !3051, !tbaa !1464
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !3052, !tbaa !1392
  %gw26 = getelementptr inbounds %struct.handler_ctx, ptr %16, i32 0, i32 0, !dbg !3052
  %conf27 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw26, i32 0, i32 19, !dbg !3052
  %debug28 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf27, i32 0, i32 6, !dbg !3052
  %17 = load i32, ptr %debug28, align 8, !dbg !3052, !tbaa !1875
  %cmp29 = icmp sge i32 %17, 4, !dbg !3052
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !3054

if.then30:                                        ; preds = %sw.bb24
  %18 = load ptr, ptr %hctx.addr, align 8, !dbg !3055, !tbaa !1392
  %errh31 = getelementptr inbounds %struct.handler_ctx, ptr %18, i32 0, i32 5, !dbg !3055
  %19 = load ptr, ptr %errh31, align 8, !dbg !3055, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %19, ptr noundef @.str.9, i32 noundef 1073, ptr noundef @.str.22, ptr noundef @.str.39) #13, !dbg !3055
  br label %if.end32, !dbg !3055

if.end32:                                         ; preds = %if.then30, %sw.bb24
  br label %sw.epilog, !dbg !3057

sw.bb33:                                          ; preds = %if.end
  br label %sw.default, !dbg !3058

sw.default:                                       ; preds = %if.end, %sw.bb33
  %arrayidx34 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3059
  store i8 -120, ptr %arrayidx34, align 1, !dbg !3060, !tbaa !1464
  %20 = load ptr, ptr %hctx.addr, align 8, !dbg !3061, !tbaa !1392
  %gw35 = getelementptr inbounds %struct.handler_ctx, ptr %20, i32 0, i32 0, !dbg !3061
  %conf36 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw35, i32 0, i32 19, !dbg !3061
  %debug37 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf36, i32 0, i32 6, !dbg !3061
  %21 = load i32, ptr %debug37, align 8, !dbg !3061, !tbaa !1875
  %cmp38 = icmp sge i32 %21, 4, !dbg !3061
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !3063

if.then39:                                        ; preds = %sw.default
  %22 = load ptr, ptr %hctx.addr, align 8, !dbg !3064, !tbaa !1392
  %errh40 = getelementptr inbounds %struct.handler_ctx, ptr %22, i32 0, i32 5, !dbg !3064
  %23 = load ptr, ptr %errh40, align 8, !dbg !3064, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %23, ptr noundef @.str.9, i32 noundef 1078, ptr noundef @.str.22, ptr noundef @.str.40) #13, !dbg !3064
  br label %if.end41, !dbg !3064

if.end41:                                         ; preds = %if.then39, %sw.default
  br label %sw.epilog, !dbg !3066

sw.epilog:                                        ; preds = %if.end41, %if.end32, %if.end23, %if.end14, %if.end5
  %24 = load ptr, ptr %hctx.addr, align 8, !dbg !3067, !tbaa !1392
  %gw42 = getelementptr inbounds %struct.handler_ctx, ptr %24, i32 0, i32 0, !dbg !3067
  %conf43 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw42, i32 0, i32 19, !dbg !3067
  %debug44 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf43, i32 0, i32 6, !dbg !3067
  %25 = load i32, ptr %debug44, align 8, !dbg !3067, !tbaa !1875
  %cmp45 = icmp sge i32 %25, 4, !dbg !3067
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !3069

if.then46:                                        ; preds = %sw.epilog
  %26 = load ptr, ptr %hctx.addr, align 8, !dbg !3070, !tbaa !1392
  %errh47 = getelementptr inbounds %struct.handler_ctx, ptr %26, i32 0, i32 5, !dbg !3070
  %27 = load ptr, ptr %errh47, align 8, !dbg !3070, !tbaa !1879
  %28 = load i64, ptr %siz.addr, align 8, !dbg !3070, !tbaa !1805
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %27, ptr noundef @.str.9, i32 noundef 1082, ptr noundef @.str.41, i64 noundef %28) #13, !dbg !3070
  br label %if.end48, !dbg !3070

if.end48:                                         ; preds = %if.then46, %sw.epilog
  %29 = load i64, ptr %siz.addr, align 8, !dbg !3072, !tbaa !1805
  %cmp49 = icmp ult i64 %29, 126, !dbg !3074
  br i1 %cmp49, label %if.then50, label %if.else, !dbg !3075

if.then50:                                        ; preds = %if.end48
  %30 = load i64, ptr %siz.addr, align 8, !dbg !3076, !tbaa !1805
  %conv = trunc i64 %30 to i8, !dbg !3076
  %arrayidx51 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 1, !dbg !3078
  store i8 %conv, ptr %arrayidx51, align 1, !dbg !3079, !tbaa !1464
  store i64 2, ptr %len, align 8, !dbg !3080, !tbaa !1805
  br label %if.end83, !dbg !3081

if.else:                                          ; preds = %if.end48
  %31 = load i64, ptr %siz.addr, align 8, !dbg !3082, !tbaa !1805
  %cmp52 = icmp ule i64 %31, 65535, !dbg !3084
  br i1 %cmp52, label %if.then54, label %if.else61, !dbg !3085

if.then54:                                        ; preds = %if.else
  %arrayidx55 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 1, !dbg !3086
  store i8 126, ptr %arrayidx55, align 1, !dbg !3088, !tbaa !1464
  %32 = load i64, ptr %siz.addr, align 8, !dbg !3089, !tbaa !1805
  %shr = lshr i64 %32, 8, !dbg !3090
  %and = and i64 %shr, 255, !dbg !3091
  %conv56 = trunc i64 %and to i8, !dbg !3092
  %arrayidx57 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 2, !dbg !3093
  store i8 %conv56, ptr %arrayidx57, align 1, !dbg !3094, !tbaa !1464
  %33 = load i64, ptr %siz.addr, align 8, !dbg !3095, !tbaa !1805
  %and58 = and i64 %33, 255, !dbg !3096
  %conv59 = trunc i64 %and58 to i8, !dbg !3095
  %arrayidx60 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 3, !dbg !3097
  store i8 %conv59, ptr %arrayidx60, align 1, !dbg !3098, !tbaa !1464
  store i64 4, ptr %len, align 8, !dbg !3099, !tbaa !1805
  br label %if.end82, !dbg !3100

if.else61:                                        ; preds = %if.else
  %arrayidx62 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 1, !dbg !3101
  store i8 127, ptr %arrayidx62, align 1, !dbg !3103, !tbaa !1464
  %arrayidx63 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 2, !dbg !3104
  store i8 0, ptr %arrayidx63, align 1, !dbg !3105, !tbaa !1464
  %arrayidx64 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 3, !dbg !3106
  store i8 0, ptr %arrayidx64, align 1, !dbg !3107, !tbaa !1464
  %arrayidx65 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 4, !dbg !3108
  store i8 0, ptr %arrayidx65, align 1, !dbg !3109, !tbaa !1464
  %arrayidx66 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 5, !dbg !3110
  store i8 0, ptr %arrayidx66, align 1, !dbg !3111, !tbaa !1464
  %34 = load i64, ptr %siz.addr, align 8, !dbg !3112, !tbaa !1805
  %shr67 = lshr i64 %34, 24, !dbg !3113
  %and68 = and i64 %shr67, 255, !dbg !3114
  %conv69 = trunc i64 %and68 to i8, !dbg !3115
  %arrayidx70 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 6, !dbg !3116
  store i8 %conv69, ptr %arrayidx70, align 1, !dbg !3117, !tbaa !1464
  %35 = load i64, ptr %siz.addr, align 8, !dbg !3118, !tbaa !1805
  %shr71 = lshr i64 %35, 16, !dbg !3119
  %and72 = and i64 %shr71, 255, !dbg !3120
  %conv73 = trunc i64 %and72 to i8, !dbg !3121
  %arrayidx74 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 7, !dbg !3122
  store i8 %conv73, ptr %arrayidx74, align 1, !dbg !3123, !tbaa !1464
  %36 = load i64, ptr %siz.addr, align 8, !dbg !3124, !tbaa !1805
  %shr75 = lshr i64 %36, 8, !dbg !3125
  %and76 = and i64 %shr75, 255, !dbg !3126
  %conv77 = trunc i64 %and76 to i8, !dbg !3127
  %arrayidx78 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 8, !dbg !3128
  store i8 %conv77, ptr %arrayidx78, align 1, !dbg !3129, !tbaa !1464
  %37 = load i64, ptr %siz.addr, align 8, !dbg !3130, !tbaa !1805
  %and79 = and i64 %37, 255, !dbg !3131
  %conv80 = trunc i64 %and79 to i8, !dbg !3130
  %arrayidx81 = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 9, !dbg !3132
  store i8 %conv80, ptr %arrayidx81, align 1, !dbg !3133, !tbaa !1464
  store i64 10, ptr %len, align 8, !dbg !3134, !tbaa !1805
  br label %if.end82

if.end82:                                         ; preds = %if.else61, %if.then54
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then50
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !3135
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !3002, metadata !DIExpression()), !dbg !3136
  %38 = load ptr, ptr %hctx.addr, align 8, !dbg !3137, !tbaa !1392
  %gw84 = getelementptr inbounds %struct.handler_ctx, ptr %38, i32 0, i32 0, !dbg !3138
  %r85 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw84, i32 0, i32 20, !dbg !3139
  %39 = load ptr, ptr %r85, align 8, !dbg !3139, !tbaa !2654
  store ptr %39, ptr %r, align 8, !dbg !3136, !tbaa !1392
  %40 = load ptr, ptr %r, align 8, !dbg !3140, !tbaa !1392
  %arraydecay = getelementptr inbounds [10 x i8], ptr %mem, i64 0, i64 0, !dbg !3141
  %41 = load i64, ptr %len, align 8, !dbg !3142, !tbaa !1805
  %call = call i32 @http_chunk_append_mem(ptr noundef %40, ptr noundef %arraydecay, i64 noundef %41), !dbg !3143
  %42 = load i64, ptr %siz.addr, align 8, !dbg !3144, !tbaa !1805
  %tobool = icmp ne i64 %42, 0, !dbg !3144
  br i1 %tobool, label %if.then86, label %if.end88, !dbg !3146

if.then86:                                        ; preds = %if.end83
  %43 = load ptr, ptr %r, align 8, !dbg !3147, !tbaa !1392
  %44 = load ptr, ptr %payload.addr, align 8, !dbg !3148, !tbaa !1392
  %45 = load i64, ptr %siz.addr, align 8, !dbg !3149, !tbaa !1805
  %call87 = call i32 @http_chunk_append_mem(ptr noundef %43, ptr noundef %44, i64 noundef %45), !dbg !3150
  br label %if.end88, !dbg !3150

if.end88:                                         ; preds = %if.then86, %if.end83
  %46 = load ptr, ptr %hctx.addr, align 8, !dbg !3151, !tbaa !1392
  %gw89 = getelementptr inbounds %struct.handler_ctx, ptr %46, i32 0, i32 0, !dbg !3151
  %conf90 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw89, i32 0, i32 19, !dbg !3151
  %debug91 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf90, i32 0, i32 6, !dbg !3151
  %47 = load i32, ptr %debug91, align 8, !dbg !3151, !tbaa !1875
  %cmp92 = icmp sge i32 %47, 4, !dbg !3151
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !3153

if.then94:                                        ; preds = %if.end88
  %48 = load ptr, ptr %hctx.addr, align 8, !dbg !3154, !tbaa !1392
  %errh95 = getelementptr inbounds %struct.handler_ctx, ptr %48, i32 0, i32 5, !dbg !3154
  %49 = load ptr, ptr %errh95, align 8, !dbg !3154, !tbaa !1879
  %50 = load ptr, ptr %r, align 8, !dbg !3154, !tbaa !1392
  %con = getelementptr inbounds %struct.request_st, ptr %50, i32 0, i32 12, !dbg !3154
  %51 = load ptr, ptr %con, align 8, !dbg !3154, !tbaa !2660
  %fd = getelementptr inbounds %struct.connection, ptr %51, i32 0, i32 2, !dbg !3154
  %52 = load i32, ptr %fd, align 8, !dbg !3154, !tbaa !1880
  %53 = load i64, ptr %len, align 8, !dbg !3154, !tbaa !1805
  %54 = load i64, ptr %siz.addr, align 8, !dbg !3154, !tbaa !1805
  %add = add i64 %53, %54, !dbg !3154
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %49, ptr noundef @.str.9, i32 noundef 1109, ptr noundef @.str.42, i32 noundef %52, i64 noundef %add) #13, !dbg !3154
  br label %if.end96, !dbg !3154

if.end96:                                         ; preds = %if.then94, %if.end88
  store i32 0, ptr %retval, align 4, !dbg !3156
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !3157
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !3157
  call void @llvm.lifetime.end.p0(i64 10, ptr %mem) #12, !dbg !3157
  %55 = load i32, ptr %retval, align 4, !dbg !3157
  ret i32 %55, !dbg !3157
}

; Function Attrs: nounwind uwtable
define internal i32 @send_ietf_00(ptr noundef %hctx, i32 noundef %type, ptr noundef %payload, i64 noundef %siz) #3 !dbg !1218 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %payload.addr = alloca ptr, align 8
  %siz.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !1222, metadata !DIExpression()), !dbg !3158
  store i32 %type, ptr %type.addr, align 4, !tbaa !1464
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1223, metadata !DIExpression()), !dbg !3159
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !1224, metadata !DIExpression()), !dbg !3160
  store i64 %siz, ptr %siz.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %siz.addr, metadata !1225, metadata !DIExpression()), !dbg !3161
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !3162
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1226, metadata !DIExpression()), !dbg !3163
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !3164, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !3165
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !3166
  %1 = load ptr, ptr %r1, align 8, !dbg !3166, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !3163, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #12, !dbg !3167
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1228, metadata !DIExpression()), !dbg !3168
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !3169
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1229, metadata !DIExpression()), !dbg !3170
  %2 = load i32, ptr %type.addr, align 4, !dbg !3171, !tbaa !1464
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb16
  ], !dbg !3172

sw.bb:                                            ; preds = %entry
  %3 = load i64, ptr %siz.addr, align 8, !dbg !3173, !tbaa !1805
  %cmp = icmp eq i64 0, %3, !dbg !3176
  br i1 %cmp, label %if.then, label %if.end, !dbg !3177

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3178

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %r, align 8, !dbg !3179, !tbaa !1392
  %call = call i32 @http_chunk_append_mem(ptr noundef %4, ptr noundef @send_ietf_00.head, i64 noundef 1), !dbg !3180
  %5 = load ptr, ptr %r, align 8, !dbg !3181, !tbaa !1392
  %6 = load ptr, ptr %payload.addr, align 8, !dbg !3182, !tbaa !1392
  %7 = load i64, ptr %siz.addr, align 8, !dbg !3183, !tbaa !1805
  %call2 = call i32 @http_chunk_append_mem(ptr noundef %5, ptr noundef %6, i64 noundef %7), !dbg !3184
  %8 = load ptr, ptr %r, align 8, !dbg !3185, !tbaa !1392
  %call3 = call i32 @http_chunk_append_mem(ptr noundef %8, ptr noundef @send_ietf_00.tail, i64 noundef 1), !dbg !3186
  %9 = load i64, ptr %siz.addr, align 8, !dbg !3187, !tbaa !1805
  %add = add i64 %9, 2, !dbg !3188
  store i64 %add, ptr %len, align 8, !dbg !3189, !tbaa !1805
  br label %sw.epilog, !dbg !3190

sw.bb4:                                           ; preds = %entry
  %10 = load i64, ptr %siz.addr, align 8, !dbg !3191, !tbaa !1805
  %cmp5 = icmp eq i64 0, %10, !dbg !3193
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3194

if.then6:                                         ; preds = %sw.bb4
  store i32 0, ptr %retval, align 4, !dbg !3195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3195

if.end7:                                          ; preds = %sw.bb4
  %11 = load ptr, ptr %r, align 8, !dbg !3196, !tbaa !1392
  %call8 = call i32 @http_chunk_append_mem(ptr noundef %11, ptr noundef @send_ietf_00.head, i64 noundef 1), !dbg !3197
  %12 = load i64, ptr %siz.addr, align 8, !dbg !3198, !tbaa !1805
  %div = udiv i64 %12, 3, !dbg !3199
  %mul = mul i64 4, %div, !dbg !3200
  %add9 = add i64 %mul, 4, !dbg !3201
  %add10 = add i64 %add9, 1, !dbg !3202
  store i64 %add10, ptr %len, align 8, !dbg !3203, !tbaa !1805
  %13 = load i64, ptr %len, align 8, !dbg !3204, !tbaa !1805
  %call11 = call noalias nonnull ptr @ck_malloc(i64 noundef %13), !dbg !3205
  store ptr %call11, ptr %mem, align 8, !dbg !3206, !tbaa !1392
  %14 = load ptr, ptr %mem, align 8, !dbg !3207, !tbaa !1392
  %15 = load i64, ptr %len, align 8, !dbg !3207, !tbaa !1805
  %16 = load ptr, ptr %payload.addr, align 8, !dbg !3207, !tbaa !1392
  %17 = load i64, ptr %siz.addr, align 8, !dbg !3207, !tbaa !1805
  %call12 = call i64 @li_base64_enc(ptr noundef %14, i64 noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef 0, i32 noundef 1), !dbg !3207
  store i64 %call12, ptr %len, align 8, !dbg !3208, !tbaa !1805
  %18 = load ptr, ptr %r, align 8, !dbg !3209, !tbaa !1392
  %19 = load ptr, ptr %mem, align 8, !dbg !3210, !tbaa !1392
  %20 = load i64, ptr %len, align 8, !dbg !3211, !tbaa !1805
  %call13 = call i32 @http_chunk_append_mem(ptr noundef %18, ptr noundef %19, i64 noundef %20), !dbg !3212
  %21 = load ptr, ptr %mem, align 8, !dbg !3213, !tbaa !1392
  call void @free(ptr noundef %21) #12, !dbg !3214
  %22 = load ptr, ptr %r, align 8, !dbg !3215, !tbaa !1392
  %call14 = call i32 @http_chunk_append_mem(ptr noundef %22, ptr noundef @send_ietf_00.tail, i64 noundef 1), !dbg !3216
  %23 = load i64, ptr %len, align 8, !dbg !3217, !tbaa !1805
  %add15 = add i64 %23, 2, !dbg !3217
  store i64 %add15, ptr %len, align 8, !dbg !3217, !tbaa !1805
  br label %sw.epilog, !dbg !3218

sw.bb16:                                          ; preds = %entry
  %24 = load ptr, ptr %r, align 8, !dbg !3219, !tbaa !1392
  %call17 = call i32 @http_chunk_append_mem(ptr noundef %24, ptr noundef @send_ietf_00.tail, i64 noundef 1), !dbg !3220
  %25 = load ptr, ptr %r, align 8, !dbg !3221, !tbaa !1392
  %call18 = call i32 @http_chunk_append_mem(ptr noundef %25, ptr noundef @send_ietf_00.head, i64 noundef 1), !dbg !3222
  store i64 2, ptr %len, align 8, !dbg !3223, !tbaa !1805
  br label %sw.epilog, !dbg !3224

sw.default:                                       ; preds = %entry
  %26 = load ptr, ptr %hctx.addr, align 8, !dbg !3225, !tbaa !1392
  %gw19 = getelementptr inbounds %struct.handler_ctx, ptr %26, i32 0, i32 0, !dbg !3225
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw19, i32 0, i32 19, !dbg !3225
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !3225
  %27 = load i32, ptr %debug, align 8, !dbg !3225, !tbaa !1875
  %cmp20 = icmp sge i32 %27, 1, !dbg !3225
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3227

if.then21:                                        ; preds = %sw.default
  %28 = load ptr, ptr %hctx.addr, align 8, !dbg !3228, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %28, i32 0, i32 5, !dbg !3228
  %29 = load ptr, ptr %errh, align 8, !dbg !3228, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %29, ptr noundef @.str.9, i32 noundef 925, ptr noundef @.str.22, ptr noundef @.str.43) #13, !dbg !3228
  br label %if.end22, !dbg !3228

if.end22:                                         ; preds = %if.then21, %sw.default
  store i32 -1, ptr %retval, align 4, !dbg !3230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3230

sw.epilog:                                        ; preds = %sw.bb16, %if.end7, %if.end
  %30 = load ptr, ptr %hctx.addr, align 8, !dbg !3231, !tbaa !1392
  %gw23 = getelementptr inbounds %struct.handler_ctx, ptr %30, i32 0, i32 0, !dbg !3231
  %conf24 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw23, i32 0, i32 19, !dbg !3231
  %debug25 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf24, i32 0, i32 6, !dbg !3231
  %31 = load i32, ptr %debug25, align 8, !dbg !3231, !tbaa !1875
  %cmp26 = icmp sge i32 %31, 4, !dbg !3231
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !3233

if.then27:                                        ; preds = %sw.epilog
  %32 = load ptr, ptr %hctx.addr, align 8, !dbg !3234, !tbaa !1392
  %errh28 = getelementptr inbounds %struct.handler_ctx, ptr %32, i32 0, i32 5, !dbg !3234
  %33 = load ptr, ptr %errh28, align 8, !dbg !3234, !tbaa !1879
  %34 = load ptr, ptr %r, align 8, !dbg !3234, !tbaa !1392
  %con = getelementptr inbounds %struct.request_st, ptr %34, i32 0, i32 12, !dbg !3234
  %35 = load ptr, ptr %con, align 8, !dbg !3234, !tbaa !2660
  %fd = getelementptr inbounds %struct.connection, ptr %35, i32 0, i32 2, !dbg !3234
  %36 = load i32, ptr %fd, align 8, !dbg !3234, !tbaa !1880
  %37 = load i64, ptr %len, align 8, !dbg !3234, !tbaa !1805
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %33, ptr noundef @.str.9, i32 noundef 929, ptr noundef @.str.42, i32 noundef %36, i64 noundef %37) #13, !dbg !3234
  br label %if.end29, !dbg !3234

if.end29:                                         ; preds = %if.then27, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !3236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3236

cleanup:                                          ; preds = %if.end29, %if.end22, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !3237
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #12, !dbg !3237
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !3237
  %38 = load i32, ptr %retval, align 4, !dbg !3237
  ret i32 %38, !dbg !3237
}

declare !dbg !3238 i32 @http_chunk_append_mem(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !3242 noalias nonnull ptr @ck_malloc(i64 noundef) #2

declare !dbg !3245 i64 @li_base64_enc(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !3251 void @free(ptr noundef) #8

; Function Attrs: nounwind uwtable
define internal i32 @mod_wstunnel_frame_recv(ptr noundef %hctx) #3 !dbg !3252 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !3258, !tbaa !1392
  %hybivers = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 2, !dbg !3260
  %1 = load i32, ptr %hybivers, align 8, !dbg !3260, !tbaa !1895
  %cmp = icmp sge i32 %1, 8, !dbg !3261
  br i1 %cmp, label %if.then, label %if.end, !dbg !3262

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !3263, !tbaa !1392
  %call = call i32 @recv_rfc_6455(ptr noundef %2), !dbg !3264
  store i32 %call, ptr %retval, align 4, !dbg !3265
  br label %return, !dbg !3265

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %hctx.addr, align 8, !dbg !3266, !tbaa !1392
  %hybivers1 = getelementptr inbounds %struct.handler_ctx, ptr %3, i32 0, i32 2, !dbg !3268
  %4 = load i32, ptr %hybivers1, align 8, !dbg !3268, !tbaa !1895
  %cmp2 = icmp eq i32 0, %4, !dbg !3269
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !3270

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !3271, !tbaa !1392
  %call4 = call i32 @recv_ietf_00(ptr noundef %5), !dbg !3272
  store i32 %call4, ptr %retval, align 4, !dbg !3273
  br label %return, !dbg !3273

if.end5:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !3275
  ret i32 %6, !dbg !3275
}

; Function Attrs: nounwind uwtable
define internal i32 @recv_rfc_6455(ptr noundef %hctx) #3 !dbg !3276 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cq = alloca ptr, align 8
  %payload = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frame4 = alloca ptr, align 8
  %flen = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !3278, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !3291
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !3279, metadata !DIExpression()), !dbg !3292
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !3293, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !3294
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !3295
  %1 = load ptr, ptr %r1, align 8, !dbg !3295, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !3292, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %cq) #12, !dbg !3296
  tail call void @llvm.dbg.declare(metadata ptr %cq, metadata !3280, metadata !DIExpression()), !dbg !3297
  %2 = load ptr, ptr %r, align 8, !dbg !3298, !tbaa !1392
  %reqbody_queue = getelementptr inbounds %struct.request_st, ptr %2, i32 0, i32 53, !dbg !3299
  store ptr %reqbody_queue, ptr %cq, align 8, !dbg !3297, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %payload) #12, !dbg !3300
  tail call void @llvm.dbg.declare(metadata ptr %payload, metadata !3281, metadata !DIExpression()), !dbg !3301
  %3 = load ptr, ptr %hctx.addr, align 8, !dbg !3302, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %3, i32 0, i32 1, !dbg !3303
  %payload2 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 5, !dbg !3304
  %4 = load ptr, ptr %payload2, align 8, !dbg !3304, !tbaa !2309
  store ptr %4, ptr %payload, align 8, !dbg !3301, !tbaa !1392
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !3305, !tbaa !1392
  %gw3 = getelementptr inbounds %struct.handler_ctx, ptr %5, i32 0, i32 0, !dbg !3305
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw3, i32 0, i32 19, !dbg !3305
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !3305
  %6 = load i32, ptr %debug, align 8, !dbg !3305, !tbaa !1875
  %cmp = icmp sge i32 %6, 4, !dbg !3305
  br i1 %cmp, label %if.then, label %if.end, !dbg !3307

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !3308, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %7, i32 0, i32 5, !dbg !3308
  %8 = load ptr, ptr %errh, align 8, !dbg !3308, !tbaa !1879
  %9 = load ptr, ptr %r, align 8, !dbg !3308, !tbaa !1392
  %con = getelementptr inbounds %struct.request_st, ptr %9, i32 0, i32 12, !dbg !3308
  %10 = load ptr, ptr %con, align 8, !dbg !3308, !tbaa !2660
  %fd = getelementptr inbounds %struct.connection, ptr %10, i32 0, i32 2, !dbg !3308
  %11 = load i32, ptr %fd, align 8, !dbg !3308, !tbaa !1880
  %12 = load ptr, ptr %cq, align 8, !dbg !3308, !tbaa !1392
  %call = call i64 @chunkqueue_length(ptr noundef %12) #14, !dbg !3308
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %8, ptr noundef @.str.9, i32 noundef 1126, ptr noundef @.str.47, i32 noundef %11, i64 noundef %call) #13, !dbg !3308
  br label %if.end, !dbg !3308

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #12, !dbg !3310
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3282, metadata !DIExpression()), !dbg !3311
  %13 = load ptr, ptr %cq, align 8, !dbg !3312, !tbaa !1392
  %first = getelementptr inbounds %struct.chunkqueue, ptr %13, i32 0, i32 0, !dbg !3313
  %14 = load ptr, ptr %first, align 8, !dbg !3313, !tbaa !3314
  store ptr %14, ptr %c, align 8, !dbg !3311, !tbaa !1392
  br label %for.cond, !dbg !3310

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load ptr, ptr %c, align 8, !dbg !3315, !tbaa !1392
  %tobool = icmp ne ptr %15, null, !dbg !3316
  br i1 %tobool, label %for.body, label %for.cond.cleanup, !dbg !3316

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup409, !dbg !3316

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame4) #12, !dbg !3317
  tail call void @llvm.dbg.declare(metadata ptr %frame4, metadata !3284, metadata !DIExpression()), !dbg !3318
  %16 = load ptr, ptr %c, align 8, !dbg !3319, !tbaa !1392
  %mem = getelementptr inbounds %struct.chunk, ptr %16, i32 0, i32 2, !dbg !3320
  %17 = load ptr, ptr %mem, align 8, !dbg !3320, !tbaa !3321
  %ptr = getelementptr inbounds %struct.buffer, ptr %17, i32 0, i32 0, !dbg !3324
  %18 = load ptr, ptr %ptr, align 8, !dbg !3324, !tbaa !1734
  %19 = load ptr, ptr %c, align 8, !dbg !3325, !tbaa !1392
  %offset = getelementptr inbounds %struct.chunk, ptr %19, i32 0, i32 3, !dbg !3326
  %20 = load i64, ptr %offset, align 8, !dbg !3326, !tbaa !3327
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %20, !dbg !3328
  store ptr %add.ptr, ptr %frame4, align 8, !dbg !3318, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %flen) #12, !dbg !3329
  tail call void @llvm.dbg.declare(metadata ptr %flen, metadata !3287, metadata !DIExpression()), !dbg !3330
  %21 = load ptr, ptr %c, align 8, !dbg !3331, !tbaa !1392
  %mem5 = getelementptr inbounds %struct.chunk, ptr %21, i32 0, i32 2, !dbg !3332
  %22 = load ptr, ptr %mem5, align 8, !dbg !3332, !tbaa !3321
  %call6 = call i32 @buffer_clen(ptr noundef %22) #14, !dbg !3333
  %conv = zext i32 %call6 to i64, !dbg !3333
  %23 = load ptr, ptr %c, align 8, !dbg !3334, !tbaa !1392
  %offset7 = getelementptr inbounds %struct.chunk, ptr %23, i32 0, i32 3, !dbg !3335
  %24 = load i64, ptr %offset7, align 8, !dbg !3335, !tbaa !3327
  %sub = sub nsw i64 %conv, %24, !dbg !3336
  store i64 %sub, ptr %flen, align 8, !dbg !3330, !tbaa !1805
  br label %do.body, !dbg !3337

do.body:                                          ; preds = %for.body
  %25 = load ptr, ptr %c, align 8, !dbg !3338, !tbaa !1392
  %type = getelementptr inbounds %struct.chunk, ptr %25, i32 0, i32 1, !dbg !3338
  %26 = load i32, ptr %type, align 8, !dbg !3338, !tbaa !3341
  %cmp8 = icmp eq i32 %26, 0, !dbg !3338
  br i1 %cmp8, label %if.end11, label %if.then10, !dbg !3342

if.then10:                                        ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str.9, i32 noundef 1132, ptr noundef @.str.48) #15, !dbg !3338
  unreachable, !dbg !3338

if.end11:                                         ; preds = %do.body
  br label %do.cond, !dbg !3342

do.cond:                                          ; preds = %if.end11
  br label %do.end, !dbg !3342

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12, !dbg !3343
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3288, metadata !DIExpression()), !dbg !3344
  store i64 0, ptr %i, align 8, !dbg !3344, !tbaa !1805
  br label %for.cond12, !dbg !3343

for.cond12:                                       ; preds = %sw.epilog405, %do.end
  %27 = load i64, ptr %i, align 8, !dbg !3345, !tbaa !1805
  %28 = load i64, ptr %flen, align 8, !dbg !3347, !tbaa !1805
  %cmp13 = icmp ult i64 %27, %28, !dbg !3348
  br i1 %cmp13, label %for.body16, label %for.cond.cleanup15, !dbg !3349

for.cond.cleanup15:                               ; preds = %for.cond12
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3349

for.body16:                                       ; preds = %for.cond12
  %29 = load ptr, ptr %hctx.addr, align 8, !dbg !3350, !tbaa !1392
  %frame17 = getelementptr inbounds %struct.handler_ctx, ptr %29, i32 0, i32 1, !dbg !3352
  %state = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame17, i32 0, i32 0, !dbg !3353
  %30 = load i32, ptr %state, align 8, !dbg !3353, !tbaa !2297
  switch i32 %30, label %sw.default396 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb104
    i32 2, label %sw.bb192
    i32 3, label %sw.bb246
    i32 4, label %sw.bb294
  ], !dbg !3354

sw.bb:                                            ; preds = %for.body16
  %31 = load ptr, ptr %frame4, align 8, !dbg !3355, !tbaa !1392
  %32 = load i64, ptr %i, align 8, !dbg !3357, !tbaa !1805
  %arrayidx = getelementptr inbounds i8, ptr %31, i64 %32, !dbg !3355
  %33 = load i8, ptr %arrayidx, align 1, !dbg !3355, !tbaa !1464
  %conv18 = sext i8 %33 to i32, !dbg !3355
  %and = and i32 %conv18, 15, !dbg !3358
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb19
    i32 1, label %sw.bb31
    i32 2, label %sw.bb46
    i32 9, label %sw.bb61
    i32 10, label %sw.bb72
    i32 8, label %sw.bb83
  ], !dbg !3359

sw.bb19:                                          ; preds = %sw.bb
  %34 = load ptr, ptr %hctx.addr, align 8, !dbg !3360, !tbaa !1392
  %gw20 = getelementptr inbounds %struct.handler_ctx, ptr %34, i32 0, i32 0, !dbg !3360
  %conf21 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw20, i32 0, i32 19, !dbg !3360
  %debug22 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf21, i32 0, i32 6, !dbg !3360
  %35 = load i32, ptr %debug22, align 8, !dbg !3360, !tbaa !1875
  %cmp23 = icmp sge i32 %35, 4, !dbg !3360
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !3363

if.then25:                                        ; preds = %sw.bb19
  %36 = load ptr, ptr %hctx.addr, align 8, !dbg !3364, !tbaa !1392
  %errh26 = getelementptr inbounds %struct.handler_ctx, ptr %36, i32 0, i32 5, !dbg !3364
  %37 = load ptr, ptr %errh26, align 8, !dbg !3364, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %37, ptr noundef @.str.9, i32 noundef 1138, ptr noundef @.str.22, ptr noundef @.str.49) #13, !dbg !3364
  br label %if.end27, !dbg !3364

if.end27:                                         ; preds = %if.then25, %sw.bb19
  %38 = load ptr, ptr %hctx.addr, align 8, !dbg !3366, !tbaa !1392
  %frame28 = getelementptr inbounds %struct.handler_ctx, ptr %38, i32 0, i32 1, !dbg !3367
  %type_before = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame28, i32 0, i32 3, !dbg !3368
  %39 = load i32, ptr %type_before, align 4, !dbg !3368, !tbaa !2469
  %40 = load ptr, ptr %hctx.addr, align 8, !dbg !3369, !tbaa !1392
  %frame29 = getelementptr inbounds %struct.handler_ctx, ptr %40, i32 0, i32 1, !dbg !3370
  %type30 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame29, i32 0, i32 2, !dbg !3371
  store i32 %39, ptr %type30, align 8, !dbg !3372, !tbaa !2464
  br label %sw.epilog, !dbg !3373

sw.bb31:                                          ; preds = %sw.bb
  %41 = load ptr, ptr %hctx.addr, align 8, !dbg !3374, !tbaa !1392
  %gw32 = getelementptr inbounds %struct.handler_ctx, ptr %41, i32 0, i32 0, !dbg !3374
  %conf33 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw32, i32 0, i32 19, !dbg !3374
  %debug34 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf33, i32 0, i32 6, !dbg !3374
  %42 = load i32, ptr %debug34, align 8, !dbg !3374, !tbaa !1875
  %cmp35 = icmp sge i32 %42, 4, !dbg !3374
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !3376

if.then37:                                        ; preds = %sw.bb31
  %43 = load ptr, ptr %hctx.addr, align 8, !dbg !3377, !tbaa !1392
  %errh38 = getelementptr inbounds %struct.handler_ctx, ptr %43, i32 0, i32 5, !dbg !3377
  %44 = load ptr, ptr %errh38, align 8, !dbg !3377, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %44, ptr noundef @.str.9, i32 noundef 1142, ptr noundef @.str.22, ptr noundef @.str.36) #13, !dbg !3377
  br label %if.end39, !dbg !3377

if.end39:                                         ; preds = %if.then37, %sw.bb31
  %45 = load ptr, ptr %hctx.addr, align 8, !dbg !3379, !tbaa !1392
  %frame40 = getelementptr inbounds %struct.handler_ctx, ptr %45, i32 0, i32 1, !dbg !3380
  %type41 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame40, i32 0, i32 2, !dbg !3381
  store i32 0, ptr %type41, align 8, !dbg !3382, !tbaa !2464
  %46 = load ptr, ptr %hctx.addr, align 8, !dbg !3383, !tbaa !1392
  %frame42 = getelementptr inbounds %struct.handler_ctx, ptr %46, i32 0, i32 1, !dbg !3384
  %type43 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame42, i32 0, i32 2, !dbg !3385
  %47 = load i32, ptr %type43, align 8, !dbg !3385, !tbaa !2464
  %48 = load ptr, ptr %hctx.addr, align 8, !dbg !3386, !tbaa !1392
  %frame44 = getelementptr inbounds %struct.handler_ctx, ptr %48, i32 0, i32 1, !dbg !3387
  %type_before45 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame44, i32 0, i32 3, !dbg !3388
  store i32 %47, ptr %type_before45, align 4, !dbg !3389, !tbaa !2469
  br label %sw.epilog, !dbg !3390

sw.bb46:                                          ; preds = %sw.bb
  %49 = load ptr, ptr %hctx.addr, align 8, !dbg !3391, !tbaa !1392
  %gw47 = getelementptr inbounds %struct.handler_ctx, ptr %49, i32 0, i32 0, !dbg !3391
  %conf48 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw47, i32 0, i32 19, !dbg !3391
  %debug49 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf48, i32 0, i32 6, !dbg !3391
  %50 = load i32, ptr %debug49, align 8, !dbg !3391, !tbaa !1875
  %cmp50 = icmp sge i32 %50, 4, !dbg !3391
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !3393

if.then52:                                        ; preds = %sw.bb46
  %51 = load ptr, ptr %hctx.addr, align 8, !dbg !3394, !tbaa !1392
  %errh53 = getelementptr inbounds %struct.handler_ctx, ptr %51, i32 0, i32 5, !dbg !3394
  %52 = load ptr, ptr %errh53, align 8, !dbg !3394, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %52, ptr noundef @.str.9, i32 noundef 1147, ptr noundef @.str.22, ptr noundef @.str.37) #13, !dbg !3394
  br label %if.end54, !dbg !3394

if.end54:                                         ; preds = %if.then52, %sw.bb46
  %53 = load ptr, ptr %hctx.addr, align 8, !dbg !3396, !tbaa !1392
  %frame55 = getelementptr inbounds %struct.handler_ctx, ptr %53, i32 0, i32 1, !dbg !3397
  %type56 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame55, i32 0, i32 2, !dbg !3398
  store i32 1, ptr %type56, align 8, !dbg !3399, !tbaa !2464
  %54 = load ptr, ptr %hctx.addr, align 8, !dbg !3400, !tbaa !1392
  %frame57 = getelementptr inbounds %struct.handler_ctx, ptr %54, i32 0, i32 1, !dbg !3401
  %type58 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame57, i32 0, i32 2, !dbg !3402
  %55 = load i32, ptr %type58, align 8, !dbg !3402, !tbaa !2464
  %56 = load ptr, ptr %hctx.addr, align 8, !dbg !3403, !tbaa !1392
  %frame59 = getelementptr inbounds %struct.handler_ctx, ptr %56, i32 0, i32 1, !dbg !3404
  %type_before60 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame59, i32 0, i32 3, !dbg !3405
  store i32 %55, ptr %type_before60, align 4, !dbg !3406, !tbaa !2469
  br label %sw.epilog, !dbg !3407

sw.bb61:                                          ; preds = %sw.bb
  %57 = load ptr, ptr %hctx.addr, align 8, !dbg !3408, !tbaa !1392
  %gw62 = getelementptr inbounds %struct.handler_ctx, ptr %57, i32 0, i32 0, !dbg !3408
  %conf63 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw62, i32 0, i32 19, !dbg !3408
  %debug64 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf63, i32 0, i32 6, !dbg !3408
  %58 = load i32, ptr %debug64, align 8, !dbg !3408, !tbaa !1875
  %cmp65 = icmp sge i32 %58, 4, !dbg !3408
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !3410

if.then67:                                        ; preds = %sw.bb61
  %59 = load ptr, ptr %hctx.addr, align 8, !dbg !3411, !tbaa !1392
  %errh68 = getelementptr inbounds %struct.handler_ctx, ptr %59, i32 0, i32 5, !dbg !3411
  %60 = load ptr, ptr %errh68, align 8, !dbg !3411, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %60, ptr noundef @.str.9, i32 noundef 1152, ptr noundef @.str.22, ptr noundef @.str.38) #13, !dbg !3411
  br label %if.end69, !dbg !3411

if.end69:                                         ; preds = %if.then67, %sw.bb61
  %61 = load ptr, ptr %hctx.addr, align 8, !dbg !3413, !tbaa !1392
  %frame70 = getelementptr inbounds %struct.handler_ctx, ptr %61, i32 0, i32 1, !dbg !3414
  %type71 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame70, i32 0, i32 2, !dbg !3415
  store i32 3, ptr %type71, align 8, !dbg !3416, !tbaa !2464
  br label %sw.epilog, !dbg !3417

sw.bb72:                                          ; preds = %sw.bb
  %62 = load ptr, ptr %hctx.addr, align 8, !dbg !3418, !tbaa !1392
  %gw73 = getelementptr inbounds %struct.handler_ctx, ptr %62, i32 0, i32 0, !dbg !3418
  %conf74 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw73, i32 0, i32 19, !dbg !3418
  %debug75 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf74, i32 0, i32 6, !dbg !3418
  %63 = load i32, ptr %debug75, align 8, !dbg !3418, !tbaa !1875
  %cmp76 = icmp sge i32 %63, 4, !dbg !3418
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !3420

if.then78:                                        ; preds = %sw.bb72
  %64 = load ptr, ptr %hctx.addr, align 8, !dbg !3421, !tbaa !1392
  %errh79 = getelementptr inbounds %struct.handler_ctx, ptr %64, i32 0, i32 5, !dbg !3421
  %65 = load ptr, ptr %errh79, align 8, !dbg !3421, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %65, ptr noundef @.str.9, i32 noundef 1156, ptr noundef @.str.22, ptr noundef @.str.39) #13, !dbg !3421
  br label %if.end80, !dbg !3421

if.end80:                                         ; preds = %if.then78, %sw.bb72
  %66 = load ptr, ptr %hctx.addr, align 8, !dbg !3423, !tbaa !1392
  %frame81 = getelementptr inbounds %struct.handler_ctx, ptr %66, i32 0, i32 1, !dbg !3424
  %type82 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame81, i32 0, i32 2, !dbg !3425
  store i32 4, ptr %type82, align 8, !dbg !3426, !tbaa !2464
  br label %sw.epilog, !dbg !3427

sw.bb83:                                          ; preds = %sw.bb
  %67 = load ptr, ptr %hctx.addr, align 8, !dbg !3428, !tbaa !1392
  %gw84 = getelementptr inbounds %struct.handler_ctx, ptr %67, i32 0, i32 0, !dbg !3428
  %conf85 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw84, i32 0, i32 19, !dbg !3428
  %debug86 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf85, i32 0, i32 6, !dbg !3428
  %68 = load i32, ptr %debug86, align 8, !dbg !3428, !tbaa !1875
  %cmp87 = icmp sge i32 %68, 4, !dbg !3428
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !3430

if.then89:                                        ; preds = %sw.bb83
  %69 = load ptr, ptr %hctx.addr, align 8, !dbg !3431, !tbaa !1392
  %errh90 = getelementptr inbounds %struct.handler_ctx, ptr %69, i32 0, i32 5, !dbg !3431
  %70 = load ptr, ptr %errh90, align 8, !dbg !3431, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %70, ptr noundef @.str.9, i32 noundef 1160, ptr noundef @.str.22, ptr noundef @.str.40) #13, !dbg !3431
  br label %if.end91, !dbg !3431

if.end91:                                         ; preds = %if.then89, %sw.bb83
  %71 = load ptr, ptr %hctx.addr, align 8, !dbg !3433, !tbaa !1392
  %frame92 = getelementptr inbounds %struct.handler_ctx, ptr %71, i32 0, i32 1, !dbg !3434
  %type93 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame92, i32 0, i32 2, !dbg !3435
  store i32 2, ptr %type93, align 8, !dbg !3436, !tbaa !2464
  store i32 -1, ptr %retval, align 4, !dbg !3437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3437

sw.default:                                       ; preds = %sw.bb
  %72 = load ptr, ptr %hctx.addr, align 8, !dbg !3438, !tbaa !1392
  %gw94 = getelementptr inbounds %struct.handler_ctx, ptr %72, i32 0, i32 0, !dbg !3438
  %conf95 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw94, i32 0, i32 19, !dbg !3438
  %debug96 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf95, i32 0, i32 6, !dbg !3438
  %73 = load i32, ptr %debug96, align 8, !dbg !3438, !tbaa !1875
  %cmp97 = icmp sge i32 %73, 1, !dbg !3438
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !3440

if.then99:                                        ; preds = %sw.default
  %74 = load ptr, ptr %hctx.addr, align 8, !dbg !3441, !tbaa !1392
  %errh100 = getelementptr inbounds %struct.handler_ctx, ptr %74, i32 0, i32 5, !dbg !3441
  %75 = load ptr, ptr %errh100, align 8, !dbg !3441, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %75, ptr noundef @.str.9, i32 noundef 1165, ptr noundef @.str.22, ptr noundef @.str.50) #13, !dbg !3441
  br label %if.end101, !dbg !3441

if.end101:                                        ; preds = %if.then99, %sw.default
  store i32 -1, ptr %retval, align 4, !dbg !3443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3443

sw.epilog:                                        ; preds = %if.end80, %if.end69, %if.end54, %if.end39, %if.end27
  %76 = load i64, ptr %i, align 8, !dbg !3444, !tbaa !1805
  %inc = add i64 %76, 1, !dbg !3444
  store i64 %inc, ptr %i, align 8, !dbg !3444, !tbaa !1805
  %77 = load ptr, ptr %hctx.addr, align 8, !dbg !3445, !tbaa !1392
  %frame102 = getelementptr inbounds %struct.handler_ctx, ptr %77, i32 0, i32 1, !dbg !3446
  %state103 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame102, i32 0, i32 0, !dbg !3447
  store i32 1, ptr %state103, align 8, !dbg !3448, !tbaa !2297
  br label %sw.epilog405, !dbg !3449

sw.bb104:                                         ; preds = %for.body16
  %78 = load ptr, ptr %frame4, align 8, !dbg !3450, !tbaa !1392
  %79 = load i64, ptr %i, align 8, !dbg !3452, !tbaa !1805
  %arrayidx105 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !3450
  %80 = load i8, ptr %arrayidx105, align 1, !dbg !3450, !tbaa !1464
  %conv106 = sext i8 %80 to i32, !dbg !3450
  %and107 = and i32 %conv106, 128, !dbg !3453
  %cmp108 = icmp ne i32 %and107, 128, !dbg !3454
  br i1 %cmp108, label %if.then110, label %if.end119, !dbg !3455

if.then110:                                       ; preds = %sw.bb104
  %81 = load ptr, ptr %hctx.addr, align 8, !dbg !3456, !tbaa !1392
  %gw111 = getelementptr inbounds %struct.handler_ctx, ptr %81, i32 0, i32 0, !dbg !3456
  %conf112 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw111, i32 0, i32 19, !dbg !3456
  %debug113 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf112, i32 0, i32 6, !dbg !3456
  %82 = load i32, ptr %debug113, align 8, !dbg !3456, !tbaa !1875
  %cmp114 = icmp sge i32 %82, 1, !dbg !3456
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !3459

if.then116:                                       ; preds = %if.then110
  %83 = load ptr, ptr %hctx.addr, align 8, !dbg !3460, !tbaa !1392
  %errh117 = getelementptr inbounds %struct.handler_ctx, ptr %83, i32 0, i32 5, !dbg !3460
  %84 = load ptr, ptr %errh117, align 8, !dbg !3460, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %84, ptr noundef @.str.9, i32 noundef 1174, ptr noundef @.str.22, ptr noundef @.str.51) #13, !dbg !3460
  br label %if.end118, !dbg !3460

if.end118:                                        ; preds = %if.then116, %if.then110
  store i32 -1, ptr %retval, align 4, !dbg !3462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3462

if.end119:                                        ; preds = %sw.bb104
  %85 = load ptr, ptr %hctx.addr, align 8, !dbg !3463, !tbaa !1392
  %frame120 = getelementptr inbounds %struct.handler_ctx, ptr %85, i32 0, i32 1, !dbg !3464
  %ctl = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame120, i32 0, i32 1, !dbg !3465
  %mask_cnt = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl, i32 0, i32 2, !dbg !3466
  store i32 0, ptr %mask_cnt, align 4, !dbg !3467, !tbaa !3468
  %86 = load ptr, ptr %frame4, align 8, !dbg !3469, !tbaa !1392
  %87 = load i64, ptr %i, align 8, !dbg !3470, !tbaa !1805
  %arrayidx121 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !3469
  %88 = load i8, ptr %arrayidx121, align 1, !dbg !3469, !tbaa !1464
  %conv122 = sext i8 %88 to i32, !dbg !3469
  %and123 = and i32 %conv122, 127, !dbg !3471
  %conv124 = sext i32 %and123 to i64, !dbg !3472
  %89 = load ptr, ptr %hctx.addr, align 8, !dbg !3473, !tbaa !1392
  %frame125 = getelementptr inbounds %struct.handler_ctx, ptr %89, i32 0, i32 1, !dbg !3474
  %ctl126 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame125, i32 0, i32 1, !dbg !3475
  %siz = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl126, i32 0, i32 0, !dbg !3476
  store i64 %conv124, ptr %siz, align 8, !dbg !3477, !tbaa !2303
  %90 = load ptr, ptr %hctx.addr, align 8, !dbg !3478, !tbaa !1392
  %frame127 = getelementptr inbounds %struct.handler_ctx, ptr %90, i32 0, i32 1, !dbg !3480
  %ctl128 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame127, i32 0, i32 1, !dbg !3481
  %siz129 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl128, i32 0, i32 0, !dbg !3482
  %91 = load i64, ptr %siz129, align 8, !dbg !3482, !tbaa !2303
  %cmp130 = icmp eq i64 %91, 0, !dbg !3483
  br i1 %cmp130, label %if.then132, label %if.else, !dbg !3484

if.then132:                                       ; preds = %if.end119
  %92 = load ptr, ptr %hctx.addr, align 8, !dbg !3485, !tbaa !1392
  %gw133 = getelementptr inbounds %struct.handler_ctx, ptr %92, i32 0, i32 0, !dbg !3485
  %conf134 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw133, i32 0, i32 19, !dbg !3485
  %debug135 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf134, i32 0, i32 6, !dbg !3485
  %93 = load i32, ptr %debug135, align 8, !dbg !3485, !tbaa !1875
  %cmp136 = icmp sge i32 %93, 4, !dbg !3485
  br i1 %cmp136, label %if.then138, label %if.end143, !dbg !3488

if.then138:                                       ; preds = %if.then132
  %94 = load ptr, ptr %hctx.addr, align 8, !dbg !3489, !tbaa !1392
  %errh139 = getelementptr inbounds %struct.handler_ctx, ptr %94, i32 0, i32 5, !dbg !3489
  %95 = load ptr, ptr %errh139, align 8, !dbg !3489, !tbaa !1879
  %96 = load ptr, ptr %hctx.addr, align 8, !dbg !3489, !tbaa !1392
  %frame140 = getelementptr inbounds %struct.handler_ctx, ptr %96, i32 0, i32 1, !dbg !3489
  %ctl141 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame140, i32 0, i32 1, !dbg !3489
  %siz142 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl141, i32 0, i32 0, !dbg !3489
  %97 = load i64, ptr %siz142, align 8, !dbg !3489, !tbaa !2303
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %95, ptr noundef @.str.9, i32 noundef 1181, ptr noundef @.str.52, i64 noundef %97) #13, !dbg !3489
  br label %if.end143, !dbg !3489

if.end143:                                        ; preds = %if.then138, %if.then132
  %98 = load ptr, ptr %hctx.addr, align 8, !dbg !3491, !tbaa !1392
  %frame144 = getelementptr inbounds %struct.handler_ctx, ptr %98, i32 0, i32 1, !dbg !3492
  %state145 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame144, i32 0, i32 0, !dbg !3493
  store i32 3, ptr %state145, align 8, !dbg !3494, !tbaa !2297
  br label %if.end190, !dbg !3495

if.else:                                          ; preds = %if.end119
  %99 = load ptr, ptr %hctx.addr, align 8, !dbg !3496, !tbaa !1392
  %frame146 = getelementptr inbounds %struct.handler_ctx, ptr %99, i32 0, i32 1, !dbg !3498
  %ctl147 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame146, i32 0, i32 1, !dbg !3499
  %siz148 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl147, i32 0, i32 0, !dbg !3500
  %100 = load i64, ptr %siz148, align 8, !dbg !3500, !tbaa !2303
  %cmp149 = icmp eq i64 %100, 126, !dbg !3501
  br i1 %cmp149, label %if.then151, label %if.else159, !dbg !3502

if.then151:                                       ; preds = %if.else
  %101 = load ptr, ptr %hctx.addr, align 8, !dbg !3503, !tbaa !1392
  %frame152 = getelementptr inbounds %struct.handler_ctx, ptr %101, i32 0, i32 1, !dbg !3505
  %ctl153 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame152, i32 0, i32 1, !dbg !3506
  %siz154 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl153, i32 0, i32 0, !dbg !3507
  store i64 0, ptr %siz154, align 8, !dbg !3508, !tbaa !2303
  %102 = load ptr, ptr %hctx.addr, align 8, !dbg !3509, !tbaa !1392
  %frame155 = getelementptr inbounds %struct.handler_ctx, ptr %102, i32 0, i32 1, !dbg !3510
  %ctl156 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame155, i32 0, i32 1, !dbg !3511
  %siz_cnt = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl156, i32 0, i32 1, !dbg !3512
  store i32 2, ptr %siz_cnt, align 8, !dbg !3513, !tbaa !3514
  %103 = load ptr, ptr %hctx.addr, align 8, !dbg !3515, !tbaa !1392
  %frame157 = getelementptr inbounds %struct.handler_ctx, ptr %103, i32 0, i32 1, !dbg !3516
  %state158 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame157, i32 0, i32 0, !dbg !3517
  store i32 2, ptr %state158, align 8, !dbg !3518, !tbaa !2297
  br label %if.end189, !dbg !3519

if.else159:                                       ; preds = %if.else
  %104 = load ptr, ptr %hctx.addr, align 8, !dbg !3520, !tbaa !1392
  %frame160 = getelementptr inbounds %struct.handler_ctx, ptr %104, i32 0, i32 1, !dbg !3522
  %ctl161 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame160, i32 0, i32 1, !dbg !3523
  %siz162 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl161, i32 0, i32 0, !dbg !3524
  %105 = load i64, ptr %siz162, align 8, !dbg !3524, !tbaa !2303
  %cmp163 = icmp eq i64 %105, 127, !dbg !3525
  br i1 %cmp163, label %if.then165, label %if.else174, !dbg !3526

if.then165:                                       ; preds = %if.else159
  %106 = load ptr, ptr %hctx.addr, align 8, !dbg !3527, !tbaa !1392
  %frame166 = getelementptr inbounds %struct.handler_ctx, ptr %106, i32 0, i32 1, !dbg !3529
  %ctl167 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame166, i32 0, i32 1, !dbg !3530
  %siz168 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl167, i32 0, i32 0, !dbg !3531
  store i64 0, ptr %siz168, align 8, !dbg !3532, !tbaa !2303
  %107 = load ptr, ptr %hctx.addr, align 8, !dbg !3533, !tbaa !1392
  %frame169 = getelementptr inbounds %struct.handler_ctx, ptr %107, i32 0, i32 1, !dbg !3534
  %ctl170 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame169, i32 0, i32 1, !dbg !3535
  %siz_cnt171 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl170, i32 0, i32 1, !dbg !3536
  store i32 8, ptr %siz_cnt171, align 8, !dbg !3537, !tbaa !3514
  %108 = load ptr, ptr %hctx.addr, align 8, !dbg !3538, !tbaa !1392
  %frame172 = getelementptr inbounds %struct.handler_ctx, ptr %108, i32 0, i32 1, !dbg !3539
  %state173 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame172, i32 0, i32 0, !dbg !3540
  store i32 2, ptr %state173, align 8, !dbg !3541, !tbaa !2297
  br label %if.end188, !dbg !3542

if.else174:                                       ; preds = %if.else159
  %109 = load ptr, ptr %hctx.addr, align 8, !dbg !3543, !tbaa !1392
  %gw175 = getelementptr inbounds %struct.handler_ctx, ptr %109, i32 0, i32 0, !dbg !3543
  %conf176 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw175, i32 0, i32 19, !dbg !3543
  %debug177 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf176, i32 0, i32 6, !dbg !3543
  %110 = load i32, ptr %debug177, align 8, !dbg !3543, !tbaa !1875
  %cmp178 = icmp sge i32 %110, 4, !dbg !3543
  br i1 %cmp178, label %if.then180, label %if.end185, !dbg !3546

if.then180:                                       ; preds = %if.else174
  %111 = load ptr, ptr %hctx.addr, align 8, !dbg !3547, !tbaa !1392
  %errh181 = getelementptr inbounds %struct.handler_ctx, ptr %111, i32 0, i32 5, !dbg !3547
  %112 = load ptr, ptr %errh181, align 8, !dbg !3547, !tbaa !1879
  %113 = load ptr, ptr %hctx.addr, align 8, !dbg !3547, !tbaa !1392
  %frame182 = getelementptr inbounds %struct.handler_ctx, ptr %113, i32 0, i32 1, !dbg !3547
  %ctl183 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame182, i32 0, i32 1, !dbg !3547
  %siz184 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl183, i32 0, i32 0, !dbg !3547
  %114 = load i64, ptr %siz184, align 8, !dbg !3547, !tbaa !2303
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %112, ptr noundef @.str.9, i32 noundef 1198, ptr noundef @.str.52, i64 noundef %114) #13, !dbg !3547
  br label %if.end185, !dbg !3547

if.end185:                                        ; preds = %if.then180, %if.else174
  %115 = load ptr, ptr %hctx.addr, align 8, !dbg !3549, !tbaa !1392
  %frame186 = getelementptr inbounds %struct.handler_ctx, ptr %115, i32 0, i32 1, !dbg !3550
  %state187 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame186, i32 0, i32 0, !dbg !3551
  store i32 3, ptr %state187, align 8, !dbg !3552, !tbaa !2297
  br label %if.end188

if.end188:                                        ; preds = %if.end185, %if.then165
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then151
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end143
  %116 = load i64, ptr %i, align 8, !dbg !3553, !tbaa !1805
  %inc191 = add i64 %116, 1, !dbg !3553
  store i64 %inc191, ptr %i, align 8, !dbg !3553, !tbaa !1805
  br label %sw.epilog405, !dbg !3554

sw.bb192:                                         ; preds = %for.body16
  %117 = load ptr, ptr %hctx.addr, align 8, !dbg !3555, !tbaa !1392
  %frame193 = getelementptr inbounds %struct.handler_ctx, ptr %117, i32 0, i32 1, !dbg !3556
  %ctl194 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame193, i32 0, i32 1, !dbg !3557
  %siz195 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl194, i32 0, i32 0, !dbg !3558
  %118 = load i64, ptr %siz195, align 8, !dbg !3558, !tbaa !2303
  %shl = shl i64 %118, 8, !dbg !3559
  %119 = load ptr, ptr %frame4, align 8, !dbg !3560, !tbaa !1392
  %120 = load i64, ptr %i, align 8, !dbg !3561, !tbaa !1805
  %arrayidx196 = getelementptr inbounds i8, ptr %119, i64 %120, !dbg !3560
  %121 = load i8, ptr %arrayidx196, align 1, !dbg !3560, !tbaa !1464
  %conv197 = sext i8 %121 to i32, !dbg !3560
  %and198 = and i32 %conv197, 255, !dbg !3562
  %conv199 = sext i32 %and198 to i64, !dbg !3563
  %add = add i64 %shl, %conv199, !dbg !3564
  %122 = load ptr, ptr %hctx.addr, align 8, !dbg !3565, !tbaa !1392
  %frame200 = getelementptr inbounds %struct.handler_ctx, ptr %122, i32 0, i32 1, !dbg !3566
  %ctl201 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame200, i32 0, i32 1, !dbg !3567
  %siz202 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl201, i32 0, i32 0, !dbg !3568
  store i64 %add, ptr %siz202, align 8, !dbg !3569, !tbaa !2303
  %123 = load ptr, ptr %hctx.addr, align 8, !dbg !3570, !tbaa !1392
  %frame203 = getelementptr inbounds %struct.handler_ctx, ptr %123, i32 0, i32 1, !dbg !3571
  %ctl204 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame203, i32 0, i32 1, !dbg !3572
  %siz_cnt205 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl204, i32 0, i32 1, !dbg !3573
  %124 = load i32, ptr %siz_cnt205, align 8, !dbg !3574, !tbaa !3514
  %dec = add nsw i32 %124, -1, !dbg !3574
  store i32 %dec, ptr %siz_cnt205, align 8, !dbg !3574, !tbaa !3514
  %125 = load ptr, ptr %hctx.addr, align 8, !dbg !3575, !tbaa !1392
  %frame206 = getelementptr inbounds %struct.handler_ctx, ptr %125, i32 0, i32 1, !dbg !3577
  %ctl207 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame206, i32 0, i32 1, !dbg !3578
  %siz_cnt208 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl207, i32 0, i32 1, !dbg !3579
  %126 = load i32, ptr %siz_cnt208, align 8, !dbg !3579, !tbaa !3514
  %cmp209 = icmp sle i32 %126, 0, !dbg !3580
  br i1 %cmp209, label %if.then211, label %if.end244, !dbg !3581

if.then211:                                       ; preds = %sw.bb192
  %127 = load ptr, ptr %hctx.addr, align 8, !dbg !3582, !tbaa !1392
  %frame212 = getelementptr inbounds %struct.handler_ctx, ptr %127, i32 0, i32 1, !dbg !3585
  %type213 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame212, i32 0, i32 2, !dbg !3586
  %128 = load i32, ptr %type213, align 8, !dbg !3586, !tbaa !2464
  %cmp214 = icmp eq i32 %128, 3, !dbg !3587
  br i1 %cmp214, label %land.lhs.true, label %if.end230, !dbg !3588

land.lhs.true:                                    ; preds = %if.then211
  %129 = load ptr, ptr %hctx.addr, align 8, !dbg !3589, !tbaa !1392
  %frame216 = getelementptr inbounds %struct.handler_ctx, ptr %129, i32 0, i32 1, !dbg !3590
  %ctl217 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame216, i32 0, i32 1, !dbg !3591
  %siz218 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl217, i32 0, i32 0, !dbg !3592
  %130 = load i64, ptr %siz218, align 8, !dbg !3592, !tbaa !2303
  %cmp219 = icmp ugt i64 %130, 1048575, !dbg !3593
  br i1 %cmp219, label %if.then221, label %if.end230, !dbg !3594

if.then221:                                       ; preds = %land.lhs.true
  %131 = load ptr, ptr %hctx.addr, align 8, !dbg !3595, !tbaa !1392
  %gw222 = getelementptr inbounds %struct.handler_ctx, ptr %131, i32 0, i32 0, !dbg !3595
  %conf223 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw222, i32 0, i32 19, !dbg !3595
  %debug224 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf223, i32 0, i32 6, !dbg !3595
  %132 = load i32, ptr %debug224, align 8, !dbg !3595, !tbaa !1875
  %cmp225 = icmp sge i32 %132, 2, !dbg !3595
  br i1 %cmp225, label %if.then227, label %if.end229, !dbg !3598

if.then227:                                       ; preds = %if.then221
  %133 = load ptr, ptr %hctx.addr, align 8, !dbg !3599, !tbaa !1392
  %errh228 = getelementptr inbounds %struct.handler_ctx, ptr %133, i32 0, i32 5, !dbg !3599
  %134 = load ptr, ptr %errh228, align 8, !dbg !3599, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %134, ptr noundef @.str.9, i32 noundef 1211, ptr noundef @.str.53, i32 noundef 1048575) #13, !dbg !3599
  br label %if.end229, !dbg !3599

if.end229:                                        ; preds = %if.then227, %if.then221
  store i32 -1, ptr %retval, align 4, !dbg !3601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3601

if.end230:                                        ; preds = %land.lhs.true, %if.then211
  %135 = load ptr, ptr %hctx.addr, align 8, !dbg !3602, !tbaa !1392
  %gw231 = getelementptr inbounds %struct.handler_ctx, ptr %135, i32 0, i32 0, !dbg !3602
  %conf232 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw231, i32 0, i32 19, !dbg !3602
  %debug233 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf232, i32 0, i32 6, !dbg !3602
  %136 = load i32, ptr %debug233, align 8, !dbg !3602, !tbaa !1875
  %cmp234 = icmp sge i32 %136, 4, !dbg !3602
  br i1 %cmp234, label %if.then236, label %if.end241, !dbg !3604

if.then236:                                       ; preds = %if.end230
  %137 = load ptr, ptr %hctx.addr, align 8, !dbg !3605, !tbaa !1392
  %errh237 = getelementptr inbounds %struct.handler_ctx, ptr %137, i32 0, i32 5, !dbg !3605
  %138 = load ptr, ptr %errh237, align 8, !dbg !3605, !tbaa !1879
  %139 = load ptr, ptr %hctx.addr, align 8, !dbg !3605, !tbaa !1392
  %frame238 = getelementptr inbounds %struct.handler_ctx, ptr %139, i32 0, i32 1, !dbg !3605
  %ctl239 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame238, i32 0, i32 1, !dbg !3605
  %siz240 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl239, i32 0, i32 0, !dbg !3605
  %140 = load i64, ptr %siz240, align 8, !dbg !3605, !tbaa !2303
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %138, ptr noundef @.str.9, i32 noundef 1215, ptr noundef @.str.52, i64 noundef %140) #13, !dbg !3605
  br label %if.end241, !dbg !3605

if.end241:                                        ; preds = %if.then236, %if.end230
  %141 = load ptr, ptr %hctx.addr, align 8, !dbg !3607, !tbaa !1392
  %frame242 = getelementptr inbounds %struct.handler_ctx, ptr %141, i32 0, i32 1, !dbg !3608
  %state243 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame242, i32 0, i32 0, !dbg !3609
  store i32 3, ptr %state243, align 8, !dbg !3610, !tbaa !2297
  br label %if.end244, !dbg !3611

if.end244:                                        ; preds = %if.end241, %sw.bb192
  %142 = load i64, ptr %i, align 8, !dbg !3612, !tbaa !1805
  %inc245 = add i64 %142, 1, !dbg !3612
  store i64 %inc245, ptr %i, align 8, !dbg !3612, !tbaa !1805
  br label %sw.epilog405, !dbg !3613

sw.bb246:                                         ; preds = %for.body16
  %143 = load ptr, ptr %frame4, align 8, !dbg !3614, !tbaa !1392
  %144 = load i64, ptr %i, align 8, !dbg !3615, !tbaa !1805
  %arrayidx247 = getelementptr inbounds i8, ptr %143, i64 %144, !dbg !3614
  %145 = load i8, ptr %arrayidx247, align 1, !dbg !3614, !tbaa !1464
  %146 = load ptr, ptr %hctx.addr, align 8, !dbg !3616, !tbaa !1392
  %frame248 = getelementptr inbounds %struct.handler_ctx, ptr %146, i32 0, i32 1, !dbg !3617
  %ctl249 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame248, i32 0, i32 1, !dbg !3618
  %mask = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl249, i32 0, i32 3, !dbg !3619
  %147 = load ptr, ptr %hctx.addr, align 8, !dbg !3620, !tbaa !1392
  %frame250 = getelementptr inbounds %struct.handler_ctx, ptr %147, i32 0, i32 1, !dbg !3621
  %ctl251 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame250, i32 0, i32 1, !dbg !3622
  %mask_cnt252 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl251, i32 0, i32 2, !dbg !3623
  %148 = load i32, ptr %mask_cnt252, align 4, !dbg !3623, !tbaa !3468
  %idxprom = sext i32 %148 to i64, !dbg !3616
  %arrayidx253 = getelementptr inbounds [4 x i8], ptr %mask, i64 0, i64 %idxprom, !dbg !3616
  store i8 %145, ptr %arrayidx253, align 1, !dbg !3624, !tbaa !1464
  %149 = load ptr, ptr %hctx.addr, align 8, !dbg !3625, !tbaa !1392
  %frame254 = getelementptr inbounds %struct.handler_ctx, ptr %149, i32 0, i32 1, !dbg !3626
  %ctl255 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame254, i32 0, i32 1, !dbg !3627
  %mask_cnt256 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl255, i32 0, i32 2, !dbg !3628
  %150 = load i32, ptr %mask_cnt256, align 4, !dbg !3629, !tbaa !3468
  %inc257 = add nsw i32 %150, 1, !dbg !3629
  store i32 %inc257, ptr %mask_cnt256, align 4, !dbg !3629, !tbaa !3468
  %151 = load ptr, ptr %hctx.addr, align 8, !dbg !3630, !tbaa !1392
  %frame258 = getelementptr inbounds %struct.handler_ctx, ptr %151, i32 0, i32 1, !dbg !3632
  %ctl259 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame258, i32 0, i32 1, !dbg !3633
  %mask_cnt260 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl259, i32 0, i32 2, !dbg !3634
  %152 = load i32, ptr %mask_cnt260, align 4, !dbg !3634, !tbaa !3468
  %cmp261 = icmp sge i32 %152, 4, !dbg !3635
  br i1 %cmp261, label %if.then263, label %if.end292, !dbg !3636

if.then263:                                       ; preds = %sw.bb246
  %153 = load ptr, ptr %hctx.addr, align 8, !dbg !3637, !tbaa !1392
  %frame264 = getelementptr inbounds %struct.handler_ctx, ptr %153, i32 0, i32 1, !dbg !3639
  %ctl265 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame264, i32 0, i32 1, !dbg !3640
  %mask_cnt266 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl265, i32 0, i32 2, !dbg !3641
  store i32 0, ptr %mask_cnt266, align 4, !dbg !3642, !tbaa !3468
  %154 = load ptr, ptr %hctx.addr, align 8, !dbg !3643, !tbaa !1392
  %frame267 = getelementptr inbounds %struct.handler_ctx, ptr %154, i32 0, i32 1, !dbg !3645
  %type268 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame267, i32 0, i32 2, !dbg !3646
  %155 = load i32, ptr %type268, align 8, !dbg !3646, !tbaa !2464
  %cmp269 = icmp eq i32 %155, 3, !dbg !3647
  br i1 %cmp269, label %land.lhs.true271, label %if.end279, !dbg !3648

land.lhs.true271:                                 ; preds = %if.then263
  %156 = load ptr, ptr %hctx.addr, align 8, !dbg !3649, !tbaa !1392
  %frame272 = getelementptr inbounds %struct.handler_ctx, ptr %156, i32 0, i32 1, !dbg !3650
  %ctl273 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame272, i32 0, i32 1, !dbg !3651
  %siz274 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl273, i32 0, i32 0, !dbg !3652
  %157 = load i64, ptr %siz274, align 8, !dbg !3652, !tbaa !2303
  %cmp275 = icmp eq i64 %157, 0, !dbg !3653
  br i1 %cmp275, label %if.then277, label %if.end279, !dbg !3654

if.then277:                                       ; preds = %land.lhs.true271
  %158 = load ptr, ptr %hctx.addr, align 8, !dbg !3655, !tbaa !1392
  %call278 = call i32 @mod_wstunnel_frame_send(ptr noundef %158, i32 noundef 4, ptr noundef null, i64 noundef 0), !dbg !3657
  br label %if.end279, !dbg !3658

if.end279:                                        ; preds = %if.then277, %land.lhs.true271, %if.then263
  %159 = load ptr, ptr %hctx.addr, align 8, !dbg !3659, !tbaa !1392
  %frame280 = getelementptr inbounds %struct.handler_ctx, ptr %159, i32 0, i32 1, !dbg !3661
  %ctl281 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame280, i32 0, i32 1, !dbg !3662
  %siz282 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl281, i32 0, i32 0, !dbg !3663
  %160 = load i64, ptr %siz282, align 8, !dbg !3663, !tbaa !2303
  %cmp283 = icmp eq i64 %160, 0, !dbg !3664
  br i1 %cmp283, label %if.then285, label %if.else288, !dbg !3665

if.then285:                                       ; preds = %if.end279
  %161 = load ptr, ptr %hctx.addr, align 8, !dbg !3666, !tbaa !1392
  %frame286 = getelementptr inbounds %struct.handler_ctx, ptr %161, i32 0, i32 1, !dbg !3668
  %state287 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame286, i32 0, i32 0, !dbg !3669
  store i32 0, ptr %state287, align 8, !dbg !3670, !tbaa !2297
  br label %if.end291, !dbg !3671

if.else288:                                       ; preds = %if.end279
  %162 = load ptr, ptr %hctx.addr, align 8, !dbg !3672, !tbaa !1392
  %frame289 = getelementptr inbounds %struct.handler_ctx, ptr %162, i32 0, i32 1, !dbg !3674
  %state290 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame289, i32 0, i32 0, !dbg !3675
  store i32 4, ptr %state290, align 8, !dbg !3676, !tbaa !2297
  br label %if.end291

if.end291:                                        ; preds = %if.else288, %if.then285
  br label %if.end292, !dbg !3677

if.end292:                                        ; preds = %if.end291, %sw.bb246
  %163 = load i64, ptr %i, align 8, !dbg !3678, !tbaa !1805
  %inc293 = add i64 %163, 1, !dbg !3678
  store i64 %inc293, ptr %i, align 8, !dbg !3678, !tbaa !1805
  br label %sw.epilog405, !dbg !3679

sw.bb294:                                         ; preds = %for.body16
  %164 = load ptr, ptr %hctx.addr, align 8, !dbg !3680, !tbaa !1392
  %frame295 = getelementptr inbounds %struct.handler_ctx, ptr %164, i32 0, i32 1, !dbg !3682
  %ctl296 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame295, i32 0, i32 1, !dbg !3683
  %siz297 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl296, i32 0, i32 0, !dbg !3684
  %165 = load i64, ptr %siz297, align 8, !dbg !3684, !tbaa !2303
  %166 = load i64, ptr %flen, align 8, !dbg !3685, !tbaa !1805
  %167 = load i64, ptr %i, align 8, !dbg !3686, !tbaa !1805
  %sub298 = sub i64 %166, %167, !dbg !3687
  %cmp299 = icmp ule i64 %165, %sub298, !dbg !3688
  br i1 %cmp299, label %if.then301, label %if.else337, !dbg !3689

if.then301:                                       ; preds = %sw.bb294
  %168 = load ptr, ptr %hctx.addr, align 8, !dbg !3690, !tbaa !1392
  %gw302 = getelementptr inbounds %struct.handler_ctx, ptr %168, i32 0, i32 0, !dbg !3690
  %conf303 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw302, i32 0, i32 19, !dbg !3690
  %debug304 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf303, i32 0, i32 6, !dbg !3690
  %169 = load i32, ptr %debug304, align 8, !dbg !3690, !tbaa !1875
  %cmp305 = icmp sge i32 %169, 4, !dbg !3690
  br i1 %cmp305, label %if.then307, label %if.end312, !dbg !3693

if.then307:                                       ; preds = %if.then301
  %170 = load ptr, ptr %hctx.addr, align 8, !dbg !3694, !tbaa !1392
  %errh308 = getelementptr inbounds %struct.handler_ctx, ptr %170, i32 0, i32 5, !dbg !3694
  %171 = load ptr, ptr %errh308, align 8, !dbg !3694, !tbaa !1879
  %172 = load ptr, ptr %hctx.addr, align 8, !dbg !3694, !tbaa !1392
  %frame309 = getelementptr inbounds %struct.handler_ctx, ptr %172, i32 0, i32 1, !dbg !3694
  %ctl310 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame309, i32 0, i32 1, !dbg !3694
  %siz311 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl310, i32 0, i32 0, !dbg !3694
  %173 = load i64, ptr %siz311, align 8, !dbg !3694, !tbaa !2303
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %171, ptr noundef @.str.9, i32 noundef 1245, ptr noundef @.str.54, i64 noundef %173) #13, !dbg !3694
  br label %if.end312, !dbg !3694

if.end312:                                        ; preds = %if.then307, %if.then301
  %174 = load ptr, ptr %payload, align 8, !dbg !3696, !tbaa !1392
  %175 = load ptr, ptr %frame4, align 8, !dbg !3697, !tbaa !1392
  %176 = load i64, ptr %i, align 8, !dbg !3698, !tbaa !1805
  %add.ptr313 = getelementptr inbounds i8, ptr %175, i64 %176, !dbg !3699
  %177 = load ptr, ptr %hctx.addr, align 8, !dbg !3700, !tbaa !1392
  %frame314 = getelementptr inbounds %struct.handler_ctx, ptr %177, i32 0, i32 1, !dbg !3701
  %ctl315 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame314, i32 0, i32 1, !dbg !3702
  %siz316 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl315, i32 0, i32 0, !dbg !3703
  %178 = load i64, ptr %siz316, align 8, !dbg !3703, !tbaa !2303
  %and317 = and i64 %178, -1, !dbg !3704
  call void @buffer_append_string_len(ptr noundef %174, ptr noundef %add.ptr313, i64 noundef %and317), !dbg !3705
  %179 = load ptr, ptr %hctx.addr, align 8, !dbg !3706, !tbaa !1392
  %frame318 = getelementptr inbounds %struct.handler_ctx, ptr %179, i32 0, i32 1, !dbg !3707
  %ctl319 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame318, i32 0, i32 1, !dbg !3708
  %siz320 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl319, i32 0, i32 0, !dbg !3709
  %180 = load i64, ptr %siz320, align 8, !dbg !3709, !tbaa !2303
  %and321 = and i64 %180, -1, !dbg !3710
  %181 = load i64, ptr %i, align 8, !dbg !3711, !tbaa !1805
  %add322 = add i64 %181, %and321, !dbg !3711
  store i64 %add322, ptr %i, align 8, !dbg !3711, !tbaa !1805
  %182 = load ptr, ptr %hctx.addr, align 8, !dbg !3712, !tbaa !1392
  %frame323 = getelementptr inbounds %struct.handler_ctx, ptr %182, i32 0, i32 1, !dbg !3713
  %ctl324 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame323, i32 0, i32 1, !dbg !3714
  %siz325 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl324, i32 0, i32 0, !dbg !3715
  store i64 0, ptr %siz325, align 8, !dbg !3716, !tbaa !2303
  %183 = load ptr, ptr %hctx.addr, align 8, !dbg !3717, !tbaa !1392
  %frame326 = getelementptr inbounds %struct.handler_ctx, ptr %183, i32 0, i32 1, !dbg !3718
  %state327 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame326, i32 0, i32 0, !dbg !3719
  store i32 0, ptr %state327, align 8, !dbg !3720, !tbaa !2297
  %184 = load ptr, ptr %hctx.addr, align 8, !dbg !3721, !tbaa !1392
  %gw328 = getelementptr inbounds %struct.handler_ctx, ptr %184, i32 0, i32 0, !dbg !3721
  %conf329 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw328, i32 0, i32 19, !dbg !3721
  %debug330 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf329, i32 0, i32 6, !dbg !3721
  %185 = load i32, ptr %debug330, align 8, !dbg !3721, !tbaa !1875
  %cmp331 = icmp sge i32 %185, 4, !dbg !3721
  br i1 %cmp331, label %if.then333, label %if.end336, !dbg !3723

if.then333:                                       ; preds = %if.end312
  %186 = load ptr, ptr %hctx.addr, align 8, !dbg !3724, !tbaa !1392
  %errh334 = getelementptr inbounds %struct.handler_ctx, ptr %186, i32 0, i32 5, !dbg !3724
  %187 = load ptr, ptr %errh334, align 8, !dbg !3724, !tbaa !1879
  %188 = load i64, ptr %flen, align 8, !dbg !3724, !tbaa !1805
  %189 = load i64, ptr %i, align 8, !dbg !3724, !tbaa !1805
  %sub335 = sub i64 %188, %189, !dbg !3724
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %187, ptr noundef @.str.9, i32 noundef 1251, ptr noundef @.str.55, i64 noundef %sub335) #13, !dbg !3724
  br label %if.end336, !dbg !3724

if.end336:                                        ; preds = %if.then333, %if.end312
  br label %if.end367, !dbg !3726

if.else337:                                       ; preds = %sw.bb294
  %190 = load ptr, ptr %hctx.addr, align 8, !dbg !3727, !tbaa !1392
  %gw338 = getelementptr inbounds %struct.handler_ctx, ptr %190, i32 0, i32 0, !dbg !3727
  %conf339 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw338, i32 0, i32 19, !dbg !3727
  %debug340 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf339, i32 0, i32 6, !dbg !3727
  %191 = load i32, ptr %debug340, align 8, !dbg !3727, !tbaa !1875
  %cmp341 = icmp sge i32 %191, 4, !dbg !3727
  br i1 %cmp341, label %if.then343, label %if.end346, !dbg !3730

if.then343:                                       ; preds = %if.else337
  %192 = load ptr, ptr %hctx.addr, align 8, !dbg !3731, !tbaa !1392
  %errh344 = getelementptr inbounds %struct.handler_ctx, ptr %192, i32 0, i32 5, !dbg !3731
  %193 = load ptr, ptr %errh344, align 8, !dbg !3731, !tbaa !1879
  %194 = load i64, ptr %flen, align 8, !dbg !3731, !tbaa !1805
  %195 = load i64, ptr %i, align 8, !dbg !3731, !tbaa !1805
  %sub345 = sub i64 %194, %195, !dbg !3731
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %193, ptr noundef @.str.9, i32 noundef 1255, ptr noundef @.str.56, i64 noundef %sub345) #13, !dbg !3731
  br label %if.end346, !dbg !3731

if.end346:                                        ; preds = %if.then343, %if.else337
  %196 = load ptr, ptr %payload, align 8, !dbg !3733, !tbaa !1392
  %197 = load ptr, ptr %frame4, align 8, !dbg !3734, !tbaa !1392
  %198 = load i64, ptr %i, align 8, !dbg !3735, !tbaa !1805
  %add.ptr347 = getelementptr inbounds i8, ptr %197, i64 %198, !dbg !3736
  %199 = load i64, ptr %flen, align 8, !dbg !3737, !tbaa !1805
  %200 = load i64, ptr %i, align 8, !dbg !3738, !tbaa !1805
  %sub348 = sub i64 %199, %200, !dbg !3739
  call void @buffer_append_string_len(ptr noundef %196, ptr noundef %add.ptr347, i64 noundef %sub348), !dbg !3740
  %201 = load i64, ptr %flen, align 8, !dbg !3741, !tbaa !1805
  %202 = load i64, ptr %i, align 8, !dbg !3742, !tbaa !1805
  %sub349 = sub i64 %201, %202, !dbg !3743
  %203 = load ptr, ptr %hctx.addr, align 8, !dbg !3744, !tbaa !1392
  %frame350 = getelementptr inbounds %struct.handler_ctx, ptr %203, i32 0, i32 1, !dbg !3745
  %ctl351 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame350, i32 0, i32 1, !dbg !3746
  %siz352 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl351, i32 0, i32 0, !dbg !3747
  %204 = load i64, ptr %siz352, align 8, !dbg !3748, !tbaa !2303
  %sub353 = sub i64 %204, %sub349, !dbg !3748
  store i64 %sub353, ptr %siz352, align 8, !dbg !3748, !tbaa !2303
  %205 = load i64, ptr %flen, align 8, !dbg !3749, !tbaa !1805
  %206 = load i64, ptr %i, align 8, !dbg !3750, !tbaa !1805
  %sub354 = sub i64 %205, %206, !dbg !3751
  %207 = load i64, ptr %i, align 8, !dbg !3752, !tbaa !1805
  %add355 = add i64 %207, %sub354, !dbg !3752
  store i64 %add355, ptr %i, align 8, !dbg !3752, !tbaa !1805
  %208 = load ptr, ptr %hctx.addr, align 8, !dbg !3753, !tbaa !1392
  %gw356 = getelementptr inbounds %struct.handler_ctx, ptr %208, i32 0, i32 0, !dbg !3753
  %conf357 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw356, i32 0, i32 19, !dbg !3753
  %debug358 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf357, i32 0, i32 6, !dbg !3753
  %209 = load i32, ptr %debug358, align 8, !dbg !3753, !tbaa !1875
  %cmp359 = icmp sge i32 %209, 4, !dbg !3753
  br i1 %cmp359, label %if.then361, label %if.end366, !dbg !3755

if.then361:                                       ; preds = %if.end346
  %210 = load ptr, ptr %hctx.addr, align 8, !dbg !3756, !tbaa !1392
  %errh362 = getelementptr inbounds %struct.handler_ctx, ptr %210, i32 0, i32 5, !dbg !3756
  %211 = load ptr, ptr %errh362, align 8, !dbg !3756, !tbaa !1879
  %212 = load ptr, ptr %hctx.addr, align 8, !dbg !3756, !tbaa !1392
  %frame363 = getelementptr inbounds %struct.handler_ctx, ptr %212, i32 0, i32 1, !dbg !3756
  %ctl364 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame363, i32 0, i32 1, !dbg !3756
  %siz365 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl364, i32 0, i32 0, !dbg !3756
  %213 = load i64, ptr %siz365, align 8, !dbg !3756, !tbaa !2303
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %211, ptr noundef @.str.9, i32 noundef 1260, ptr noundef @.str.57, i64 noundef %213) #13, !dbg !3756
  br label %if.end366, !dbg !3756

if.end366:                                        ; preds = %if.then361, %if.end346
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %if.end336
  %214 = load ptr, ptr %hctx.addr, align 8, !dbg !3758, !tbaa !1392
  %frame368 = getelementptr inbounds %struct.handler_ctx, ptr %214, i32 0, i32 1, !dbg !3759
  %type369 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame368, i32 0, i32 2, !dbg !3760
  %215 = load i32, ptr %type369, align 8, !dbg !3760, !tbaa !2464
  switch i32 %215, label %sw.default386 [
    i32 0, label %sw.bb370
    i32 1, label %sw.bb370
    i32 3, label %sw.bb372
    i32 4, label %sw.bb384
    i32 2, label %sw.bb385
  ], !dbg !3761

sw.bb370:                                         ; preds = %if.end367, %if.end367
  %216 = load ptr, ptr %hctx.addr, align 8, !dbg !3762, !tbaa !1392
  call void @unmask_payload(ptr noundef %216), !dbg !3765
  %217 = load ptr, ptr %hctx.addr, align 8, !dbg !3766, !tbaa !1392
  %gw371 = getelementptr inbounds %struct.handler_ctx, ptr %217, i32 0, i32 0, !dbg !3767
  %wb = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw371, i32 0, i32 8, !dbg !3768
  %218 = load ptr, ptr %payload, align 8, !dbg !3769, !tbaa !1392
  call void @chunkqueue_append_buffer(ptr noundef %wb, ptr noundef %218), !dbg !3770
  br label %sw.epilog395, !dbg !3771

sw.bb372:                                         ; preds = %if.end367
  %219 = load ptr, ptr %hctx.addr, align 8, !dbg !3772, !tbaa !1392
  %frame373 = getelementptr inbounds %struct.handler_ctx, ptr %219, i32 0, i32 1, !dbg !3774
  %ctl374 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame373, i32 0, i32 1, !dbg !3775
  %siz375 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl374, i32 0, i32 0, !dbg !3776
  %220 = load i64, ptr %siz375, align 8, !dbg !3776, !tbaa !2303
  %cmp376 = icmp eq i64 %220, 0, !dbg !3777
  br i1 %cmp376, label %if.then378, label %if.end383, !dbg !3778

if.then378:                                       ; preds = %sw.bb372
  %221 = load ptr, ptr %hctx.addr, align 8, !dbg !3779, !tbaa !1392
  call void @unmask_payload(ptr noundef %221), !dbg !3781
  %222 = load ptr, ptr %hctx.addr, align 8, !dbg !3782, !tbaa !1392
  %223 = load ptr, ptr %payload, align 8, !dbg !3783, !tbaa !1392
  %ptr379 = getelementptr inbounds %struct.buffer, ptr %223, i32 0, i32 0, !dbg !3784
  %224 = load ptr, ptr %ptr379, align 8, !dbg !3784, !tbaa !1734
  %225 = load ptr, ptr %payload, align 8, !dbg !3785, !tbaa !1392
  %call380 = call i32 @buffer_clen(ptr noundef %225) #14, !dbg !3786
  %conv381 = zext i32 %call380 to i64, !dbg !3786
  %call382 = call i32 @mod_wstunnel_frame_send(ptr noundef %222, i32 noundef 4, ptr noundef %224, i64 noundef %conv381), !dbg !3787
  %226 = load ptr, ptr %payload, align 8, !dbg !3788, !tbaa !1392
  call void @buffer_clear(ptr noundef %226), !dbg !3789
  br label %if.end383, !dbg !3790

if.end383:                                        ; preds = %if.then378, %sw.bb372
  br label %sw.epilog395, !dbg !3791

sw.bb384:                                         ; preds = %if.end367
  %227 = load ptr, ptr %payload, align 8, !dbg !3792, !tbaa !1392
  call void @buffer_clear(ptr noundef %227), !dbg !3793
  br label %sw.epilog395, !dbg !3794

sw.bb385:                                         ; preds = %if.end367
  br label %sw.default386, !dbg !3795

sw.default386:                                    ; preds = %if.end367, %sw.bb385
  %228 = load ptr, ptr %hctx.addr, align 8, !dbg !3796, !tbaa !1392
  %gw387 = getelementptr inbounds %struct.handler_ctx, ptr %228, i32 0, i32 0, !dbg !3796
  %conf388 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw387, i32 0, i32 19, !dbg !3796
  %debug389 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf388, i32 0, i32 6, !dbg !3796
  %229 = load i32, ptr %debug389, align 8, !dbg !3796, !tbaa !1875
  %cmp390 = icmp sge i32 %229, 1, !dbg !3796
  br i1 %cmp390, label %if.then392, label %if.end394, !dbg !3798

if.then392:                                       ; preds = %sw.default386
  %230 = load ptr, ptr %hctx.addr, align 8, !dbg !3799, !tbaa !1392
  %errh393 = getelementptr inbounds %struct.handler_ctx, ptr %230, i32 0, i32 5, !dbg !3799
  %231 = load ptr, ptr %errh393, align 8, !dbg !3799, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %231, ptr noundef @.str.9, i32 noundef 1285, ptr noundef @.str.22, ptr noundef @.str.58) #13, !dbg !3799
  br label %if.end394, !dbg !3799

if.end394:                                        ; preds = %if.then392, %sw.default386
  store i32 -1, ptr %retval, align 4, !dbg !3801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3801

sw.epilog395:                                     ; preds = %sw.bb384, %if.end383, %sw.bb370
  br label %sw.epilog405, !dbg !3802

sw.default396:                                    ; preds = %for.body16
  %232 = load ptr, ptr %hctx.addr, align 8, !dbg !3803, !tbaa !1392
  %gw397 = getelementptr inbounds %struct.handler_ctx, ptr %232, i32 0, i32 0, !dbg !3803
  %conf398 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw397, i32 0, i32 19, !dbg !3803
  %debug399 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf398, i32 0, i32 6, !dbg !3803
  %233 = load i32, ptr %debug399, align 8, !dbg !3803, !tbaa !1875
  %cmp400 = icmp sge i32 %233, 1, !dbg !3803
  br i1 %cmp400, label %if.then402, label %if.end404, !dbg !3805

if.then402:                                       ; preds = %sw.default396
  %234 = load ptr, ptr %hctx.addr, align 8, !dbg !3806, !tbaa !1392
  %errh403 = getelementptr inbounds %struct.handler_ctx, ptr %234, i32 0, i32 5, !dbg !3806
  %235 = load ptr, ptr %errh403, align 8, !dbg !3806, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %235, ptr noundef @.str.9, i32 noundef 1290, ptr noundef @.str.22, ptr noundef @.str.59) #13, !dbg !3806
  br label %if.end404, !dbg !3806

if.end404:                                        ; preds = %if.then402, %sw.default396
  store i32 -1, ptr %retval, align 4, !dbg !3808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3808

sw.epilog405:                                     ; preds = %sw.epilog395, %if.end292, %if.end244, %if.end190, %sw.epilog
  br label %for.cond12, !dbg !3809, !llvm.loop !3810

cleanup:                                          ; preds = %if.end404, %if.end394, %if.end229, %if.end118, %if.end101, %if.end91, %for.cond.cleanup15
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12, !dbg !3809
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup406 [
    i32 7, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3812
  br label %cleanup406, !dbg !3812

cleanup406:                                       ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %flen) #12, !dbg !3812
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame4) #12, !dbg !3812
  %cleanup.dest408 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest408, label %cleanup409 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup406
  br label %for.inc, !dbg !3813

for.inc:                                          ; preds = %cleanup.cont
  %236 = load ptr, ptr %c, align 8, !dbg !3814, !tbaa !1392
  %next = getelementptr inbounds %struct.chunk, ptr %236, i32 0, i32 0, !dbg !3815
  %237 = load ptr, ptr %next, align 8, !dbg !3815, !tbaa !3816
  store ptr %237, ptr %c, align 8, !dbg !3817, !tbaa !1392
  br label %for.cond, !dbg !3818, !llvm.loop !3819

cleanup409:                                       ; preds = %cleanup406, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #12, !dbg !3818
  %cleanup.dest410 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest410, label %cleanup413 [
    i32 2, label %for.end411
  ]

for.end411:                                       ; preds = %cleanup409
  %238 = load ptr, ptr %cq, align 8, !dbg !3821, !tbaa !1392
  %239 = load ptr, ptr %cq, align 8, !dbg !3822, !tbaa !1392
  %call412 = call i64 @chunkqueue_length(ptr noundef %239) #14, !dbg !3823
  call void @chunkqueue_mark_written(ptr noundef %238, i64 noundef %call412), !dbg !3824
  store i32 0, ptr %retval, align 4, !dbg !3825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup413, !dbg !3825

cleanup413:                                       ; preds = %for.end411, %cleanup409
  call void @llvm.lifetime.end.p0(i64 8, ptr %payload) #12, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %cq) #12, !dbg !3826
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !3826
  %240 = load i32, ptr %retval, align 4, !dbg !3826
  ret i32 %240, !dbg !3826
}

; Function Attrs: nounwind uwtable
define internal i32 @recv_ietf_00(ptr noundef %hctx) #3 !dbg !3827 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cq = alloca ptr, align 8
  %payload = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frame4 = alloca ptr, align 8
  %flen = alloca i64, align 8
  %i = alloca i64, align 8
  %b = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !3829, metadata !DIExpression()), !dbg !3851
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !3852
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !3830, metadata !DIExpression()), !dbg !3853
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !3854, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !3855
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !3856
  %1 = load ptr, ptr %r1, align 8, !dbg !3856, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !3853, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %cq) #12, !dbg !3857
  tail call void @llvm.dbg.declare(metadata ptr %cq, metadata !3831, metadata !DIExpression()), !dbg !3858
  %2 = load ptr, ptr %r, align 8, !dbg !3859, !tbaa !1392
  %reqbody_queue = getelementptr inbounds %struct.request_st, ptr %2, i32 0, i32 53, !dbg !3860
  store ptr %reqbody_queue, ptr %cq, align 8, !dbg !3858, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %payload) #12, !dbg !3861
  tail call void @llvm.dbg.declare(metadata ptr %payload, metadata !3832, metadata !DIExpression()), !dbg !3862
  %3 = load ptr, ptr %hctx.addr, align 8, !dbg !3863, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %3, i32 0, i32 1, !dbg !3864
  %payload2 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 5, !dbg !3865
  %4 = load ptr, ptr %payload2, align 8, !dbg !3865, !tbaa !2309
  store ptr %4, ptr %payload, align 8, !dbg !3862, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #12, !dbg !3866
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !3833, metadata !DIExpression()), !dbg !3867
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !3868, !tbaa !1392
  %gw3 = getelementptr inbounds %struct.handler_ctx, ptr %5, i32 0, i32 0, !dbg !3868
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw3, i32 0, i32 19, !dbg !3868
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !3868
  %6 = load i32, ptr %debug, align 8, !dbg !3868, !tbaa !1875
  %cmp = icmp sge i32 %6, 4, !dbg !3868
  br i1 %cmp, label %if.then, label %if.end, !dbg !3870

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %hctx.addr, align 8, !dbg !3871, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %7, i32 0, i32 5, !dbg !3871
  %8 = load ptr, ptr %errh, align 8, !dbg !3871, !tbaa !1879
  %9 = load ptr, ptr %r, align 8, !dbg !3871, !tbaa !1392
  %con = getelementptr inbounds %struct.request_st, ptr %9, i32 0, i32 12, !dbg !3871
  %10 = load ptr, ptr %con, align 8, !dbg !3871, !tbaa !2660
  %fd = getelementptr inbounds %struct.connection, ptr %10, i32 0, i32 2, !dbg !3871
  %11 = load i32, ptr %fd, align 8, !dbg !3871, !tbaa !1880
  %12 = load ptr, ptr %cq, align 8, !dbg !3871, !tbaa !1392
  %call = call i64 @chunkqueue_length(ptr noundef %12) #14, !dbg !3871
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %8, ptr noundef @.str.9, i32 noundef 939, ptr noundef @.str.47, i32 noundef %11, i64 noundef %call) #13, !dbg !3871
  br label %if.end, !dbg !3871

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #12, !dbg !3873
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3834, metadata !DIExpression()), !dbg !3874
  %13 = load ptr, ptr %cq, align 8, !dbg !3875, !tbaa !1392
  %first = getelementptr inbounds %struct.chunkqueue, ptr %13, i32 0, i32 0, !dbg !3876
  %14 = load ptr, ptr %first, align 8, !dbg !3876, !tbaa !3314
  store ptr %14, ptr %c, align 8, !dbg !3874, !tbaa !1392
  br label %for.cond, !dbg !3873

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load ptr, ptr %c, align 8, !dbg !3877, !tbaa !1392
  %tobool = icmp ne ptr %15, null, !dbg !3878
  br i1 %tobool, label %for.body, label %for.cond.cleanup, !dbg !3878

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup215, !dbg !3878

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame4) #12, !dbg !3879
  tail call void @llvm.dbg.declare(metadata ptr %frame4, metadata !3836, metadata !DIExpression()), !dbg !3880
  %16 = load ptr, ptr %c, align 8, !dbg !3881, !tbaa !1392
  %mem5 = getelementptr inbounds %struct.chunk, ptr %16, i32 0, i32 2, !dbg !3882
  %17 = load ptr, ptr %mem5, align 8, !dbg !3882, !tbaa !3321
  %ptr = getelementptr inbounds %struct.buffer, ptr %17, i32 0, i32 0, !dbg !3883
  %18 = load ptr, ptr %ptr, align 8, !dbg !3883, !tbaa !1734
  %19 = load ptr, ptr %c, align 8, !dbg !3884, !tbaa !1392
  %offset = getelementptr inbounds %struct.chunk, ptr %19, i32 0, i32 3, !dbg !3885
  %20 = load i64, ptr %offset, align 8, !dbg !3885, !tbaa !3327
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %20, !dbg !3886
  store ptr %add.ptr, ptr %frame4, align 8, !dbg !3880, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %flen) #12, !dbg !3887
  tail call void @llvm.dbg.declare(metadata ptr %flen, metadata !3839, metadata !DIExpression()), !dbg !3888
  %21 = load ptr, ptr %c, align 8, !dbg !3889, !tbaa !1392
  %mem6 = getelementptr inbounds %struct.chunk, ptr %21, i32 0, i32 2, !dbg !3890
  %22 = load ptr, ptr %mem6, align 8, !dbg !3890, !tbaa !3321
  %call7 = call i32 @buffer_clen(ptr noundef %22) #14, !dbg !3891
  %conv = zext i32 %call7 to i64, !dbg !3891
  %23 = load ptr, ptr %c, align 8, !dbg !3892, !tbaa !1392
  %offset8 = getelementptr inbounds %struct.chunk, ptr %23, i32 0, i32 3, !dbg !3893
  %24 = load i64, ptr %offset8, align 8, !dbg !3893, !tbaa !3327
  %sub = sub nsw i64 %conv, %24, !dbg !3894
  store i64 %sub, ptr %flen, align 8, !dbg !3888, !tbaa !1805
  br label %do.body, !dbg !3895

do.body:                                          ; preds = %for.body
  %25 = load ptr, ptr %c, align 8, !dbg !3896, !tbaa !1392
  %type = getelementptr inbounds %struct.chunk, ptr %25, i32 0, i32 1, !dbg !3896
  %26 = load i32, ptr %type, align 8, !dbg !3896, !tbaa !3341
  %cmp9 = icmp eq i32 %26, 0, !dbg !3896
  br i1 %cmp9, label %if.end12, label %if.then11, !dbg !3899

if.then11:                                        ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str.9, i32 noundef 945, ptr noundef @.str.48) #15, !dbg !3896
  unreachable, !dbg !3896

if.end12:                                         ; preds = %do.body
  br label %do.cond, !dbg !3899

do.cond:                                          ; preds = %if.end12
  br label %do.end, !dbg !3899

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12, !dbg !3900
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3840, metadata !DIExpression()), !dbg !3901
  store i64 0, ptr %i, align 8, !dbg !3901, !tbaa !1805
  br label %for.cond13, !dbg !3900

for.cond13:                                       ; preds = %sw.epilog, %do.end
  %27 = load i64, ptr %i, align 8, !dbg !3902, !tbaa !1805
  %28 = load i64, ptr %flen, align 8, !dbg !3903, !tbaa !1805
  %cmp14 = icmp ult i64 %27, %28, !dbg !3904
  br i1 %cmp14, label %for.body17, label %for.cond.cleanup16, !dbg !3905

for.cond.cleanup16:                               ; preds = %for.cond13
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !3905

for.body17:                                       ; preds = %for.cond13
  %29 = load ptr, ptr %hctx.addr, align 8, !dbg !3906, !tbaa !1392
  %frame18 = getelementptr inbounds %struct.handler_ctx, ptr %29, i32 0, i32 1, !dbg !3907
  %state = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame18, i32 0, i32 0, !dbg !3908
  %30 = load i32, ptr %state, align 8, !dbg !3908, !tbaa !2297
  switch i32 %30, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb49
  ], !dbg !3909

sw.bb:                                            ; preds = %for.body17
  %31 = load ptr, ptr %hctx.addr, align 8, !dbg !3910, !tbaa !1392
  %frame19 = getelementptr inbounds %struct.handler_ctx, ptr %31, i32 0, i32 1, !dbg !3911
  %ctl = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame19, i32 0, i32 1, !dbg !3912
  %siz = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl, i32 0, i32 0, !dbg !3913
  store i64 0, ptr %siz, align 8, !dbg !3914, !tbaa !2303
  %32 = load ptr, ptr %frame4, align 8, !dbg !3915, !tbaa !1392
  %33 = load i64, ptr %i, align 8, !dbg !3917, !tbaa !1805
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !3915
  %34 = load i8, ptr %arrayidx, align 1, !dbg !3915, !tbaa !1464
  %conv20 = sext i8 %34 to i32, !dbg !3915
  %cmp21 = icmp eq i32 %conv20, 0, !dbg !3918
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !3919

if.then23:                                        ; preds = %sw.bb
  %35 = load ptr, ptr %hctx.addr, align 8, !dbg !3920, !tbaa !1392
  %frame24 = getelementptr inbounds %struct.handler_ctx, ptr %35, i32 0, i32 1, !dbg !3922
  %state25 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame24, i32 0, i32 0, !dbg !3923
  store i32 4, ptr %state25, align 8, !dbg !3924, !tbaa !2297
  %36 = load i64, ptr %i, align 8, !dbg !3925, !tbaa !1805
  %inc = add i64 %36, 1, !dbg !3925
  store i64 %inc, ptr %i, align 8, !dbg !3925, !tbaa !1805
  br label %if.end48, !dbg !3926

if.else:                                          ; preds = %sw.bb
  %37 = load ptr, ptr %frame4, align 8, !dbg !3927, !tbaa !1392
  %38 = load i64, ptr %i, align 8, !dbg !3929, !tbaa !1805
  %arrayidx26 = getelementptr inbounds i8, ptr %37, i64 %38, !dbg !3930
  %39 = load i8, ptr %arrayidx26, align 1, !dbg !3930, !tbaa !1464
  %conv27 = zext i8 %39 to i32, !dbg !3930
  %cmp28 = icmp eq i32 %conv27, 255, !dbg !3931
  br i1 %cmp28, label %if.then30, label %if.else39, !dbg !3932

if.then30:                                        ; preds = %if.else
  %40 = load ptr, ptr %hctx.addr, align 8, !dbg !3933, !tbaa !1392
  %gw31 = getelementptr inbounds %struct.handler_ctx, ptr %40, i32 0, i32 0, !dbg !3933
  %conf32 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw31, i32 0, i32 19, !dbg !3933
  %debug33 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf32, i32 0, i32 6, !dbg !3933
  %41 = load i32, ptr %debug33, align 8, !dbg !3933, !tbaa !1875
  %cmp34 = icmp sge i32 %41, 4, !dbg !3933
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !3936

if.then36:                                        ; preds = %if.then30
  %42 = load ptr, ptr %hctx.addr, align 8, !dbg !3937, !tbaa !1392
  %errh37 = getelementptr inbounds %struct.handler_ctx, ptr %42, i32 0, i32 5, !dbg !3937
  %43 = load ptr, ptr %errh37, align 8, !dbg !3937, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %43, ptr noundef @.str.9, i32 noundef 955, ptr noundef @.str.22, ptr noundef @.str.60) #13, !dbg !3937
  br label %if.end38, !dbg !3937

if.end38:                                         ; preds = %if.then36, %if.then30
  store i32 -1, ptr %retval, align 4, !dbg !3939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !3939

if.else39:                                        ; preds = %if.else
  %44 = load ptr, ptr %hctx.addr, align 8, !dbg !3940, !tbaa !1392
  %gw40 = getelementptr inbounds %struct.handler_ctx, ptr %44, i32 0, i32 0, !dbg !3940
  %conf41 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw40, i32 0, i32 19, !dbg !3940
  %debug42 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf41, i32 0, i32 6, !dbg !3940
  %45 = load i32, ptr %debug42, align 8, !dbg !3940, !tbaa !1875
  %cmp43 = icmp sge i32 %45, 4, !dbg !3940
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !3943

if.then45:                                        ; preds = %if.else39
  %46 = load ptr, ptr %hctx.addr, align 8, !dbg !3944, !tbaa !1392
  %errh46 = getelementptr inbounds %struct.handler_ctx, ptr %46, i32 0, i32 5, !dbg !3944
  %47 = load ptr, ptr %errh46, align 8, !dbg !3944, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %47, ptr noundef @.str.9, i32 noundef 959, ptr noundef @.str.22, ptr noundef @.str.61) #13, !dbg !3944
  br label %if.end47, !dbg !3944

if.end47:                                         ; preds = %if.then45, %if.else39
  store i32 -1, ptr %retval, align 4, !dbg !3946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !3946

if.end48:                                         ; preds = %if.then23
  br label %sw.epilog, !dbg !3947

sw.bb49:                                          ; preds = %for.body17
  %48 = load ptr, ptr %frame4, align 8, !dbg !3948, !tbaa !1392
  %49 = load i64, ptr %i, align 8, !dbg !3949, !tbaa !1805
  %add.ptr50 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !3950
  %50 = load i64, ptr %flen, align 8, !dbg !3951, !tbaa !1805
  %51 = load i64, ptr %i, align 8, !dbg !3952, !tbaa !1805
  %sub51 = sub i64 %50, %51, !dbg !3953
  %call52 = call ptr @memchr(ptr noundef %add.ptr50, i32 noundef 255, i64 noundef %sub51) #14, !dbg !3954
  store ptr %call52, ptr %mem, align 8, !dbg !3955, !tbaa !1392
  %52 = load ptr, ptr %mem, align 8, !dbg !3956, !tbaa !1392
  %cmp53 = icmp eq ptr %52, null, !dbg !3958
  br i1 %cmp53, label %if.then55, label %if.else88, !dbg !3959

if.then55:                                        ; preds = %sw.bb49
  %53 = load ptr, ptr %hctx.addr, align 8, !dbg !3960, !tbaa !1392
  %gw56 = getelementptr inbounds %struct.handler_ctx, ptr %53, i32 0, i32 0, !dbg !3960
  %conf57 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw56, i32 0, i32 19, !dbg !3960
  %debug58 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf57, i32 0, i32 6, !dbg !3960
  %54 = load i32, ptr %debug58, align 8, !dbg !3960, !tbaa !1875
  %cmp59 = icmp sge i32 %54, 4, !dbg !3960
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !3963

if.then61:                                        ; preds = %if.then55
  %55 = load ptr, ptr %hctx.addr, align 8, !dbg !3964, !tbaa !1392
  %errh62 = getelementptr inbounds %struct.handler_ctx, ptr %55, i32 0, i32 5, !dbg !3964
  %56 = load ptr, ptr %errh62, align 8, !dbg !3964, !tbaa !1879
  %57 = load i64, ptr %flen, align 8, !dbg !3964, !tbaa !1805
  %58 = load i64, ptr %i, align 8, !dbg !3964, !tbaa !1805
  %sub63 = sub i64 %57, %58, !dbg !3964
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %56, ptr noundef @.str.9, i32 noundef 966, ptr noundef @.str.62, i64 noundef %sub63) #13, !dbg !3964
  br label %if.end64, !dbg !3964

if.end64:                                         ; preds = %if.then61, %if.then55
  %59 = load i64, ptr %flen, align 8, !dbg !3966, !tbaa !1805
  %60 = load i64, ptr %i, align 8, !dbg !3967, !tbaa !1805
  %sub65 = sub i64 %59, %60, !dbg !3968
  %61 = load ptr, ptr %hctx.addr, align 8, !dbg !3969, !tbaa !1392
  %frame66 = getelementptr inbounds %struct.handler_ctx, ptr %61, i32 0, i32 1, !dbg !3970
  %ctl67 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame66, i32 0, i32 1, !dbg !3971
  %siz68 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl67, i32 0, i32 0, !dbg !3972
  %62 = load i64, ptr %siz68, align 8, !dbg !3973, !tbaa !2303
  %add = add i64 %62, %sub65, !dbg !3973
  store i64 %add, ptr %siz68, align 8, !dbg !3973, !tbaa !2303
  %63 = load ptr, ptr %hctx.addr, align 8, !dbg !3974, !tbaa !1392
  %frame69 = getelementptr inbounds %struct.handler_ctx, ptr %63, i32 0, i32 1, !dbg !3976
  %ctl70 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame69, i32 0, i32 1, !dbg !3977
  %siz71 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl70, i32 0, i32 0, !dbg !3978
  %64 = load i64, ptr %siz71, align 8, !dbg !3978, !tbaa !2303
  %cmp72 = icmp ugt i64 %64, 1048575, !dbg !3979
  br i1 %cmp72, label %if.then74, label %if.end83, !dbg !3980

if.then74:                                        ; preds = %if.end64
  %65 = load ptr, ptr %hctx.addr, align 8, !dbg !3981, !tbaa !1392
  %gw75 = getelementptr inbounds %struct.handler_ctx, ptr %65, i32 0, i32 0, !dbg !3981
  %conf76 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw75, i32 0, i32 19, !dbg !3981
  %debug77 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf76, i32 0, i32 6, !dbg !3981
  %66 = load i32, ptr %debug77, align 8, !dbg !3981, !tbaa !1875
  %cmp78 = icmp sge i32 %66, 2, !dbg !3981
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !3984

if.then80:                                        ; preds = %if.then74
  %67 = load ptr, ptr %hctx.addr, align 8, !dbg !3985, !tbaa !1392
  %errh81 = getelementptr inbounds %struct.handler_ctx, ptr %67, i32 0, i32 5, !dbg !3985
  %68 = load ptr, ptr %errh81, align 8, !dbg !3985, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %68, ptr noundef @.str.9, i32 noundef 970, ptr noundef @.str.53, i32 noundef 1048575) #13, !dbg !3985
  br label %if.end82, !dbg !3985

if.end82:                                         ; preds = %if.then80, %if.then74
  store i32 -1, ptr %retval, align 4, !dbg !3987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !3987

if.end83:                                         ; preds = %if.end64
  %69 = load ptr, ptr %payload, align 8, !dbg !3988, !tbaa !1392
  %70 = load ptr, ptr %frame4, align 8, !dbg !3989, !tbaa !1392
  %71 = load i64, ptr %i, align 8, !dbg !3990, !tbaa !1805
  %add.ptr84 = getelementptr inbounds i8, ptr %70, i64 %71, !dbg !3991
  %72 = load i64, ptr %flen, align 8, !dbg !3992, !tbaa !1805
  %73 = load i64, ptr %i, align 8, !dbg !3993, !tbaa !1805
  %sub85 = sub i64 %72, %73, !dbg !3994
  call void @buffer_append_string_len(ptr noundef %69, ptr noundef %add.ptr84, i64 noundef %sub85), !dbg !3995
  %74 = load i64, ptr %flen, align 8, !dbg !3996, !tbaa !1805
  %75 = load i64, ptr %i, align 8, !dbg !3997, !tbaa !1805
  %sub86 = sub i64 %74, %75, !dbg !3998
  %76 = load i64, ptr %i, align 8, !dbg !3999, !tbaa !1805
  %add87 = add i64 %76, %sub86, !dbg !3999
  store i64 %add87, ptr %i, align 8, !dbg !3999, !tbaa !1805
  br label %if.end133, !dbg !4000

if.else88:                                        ; preds = %sw.bb49
  %77 = load ptr, ptr %hctx.addr, align 8, !dbg !4001, !tbaa !1392
  %gw89 = getelementptr inbounds %struct.handler_ctx, ptr %77, i32 0, i32 0, !dbg !4001
  %conf90 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw89, i32 0, i32 19, !dbg !4001
  %debug91 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf90, i32 0, i32 6, !dbg !4001
  %78 = load i32, ptr %debug91, align 8, !dbg !4001, !tbaa !1875
  %cmp92 = icmp sge i32 %78, 4, !dbg !4001
  br i1 %cmp92, label %if.then94, label %if.end97, !dbg !4004

if.then94:                                        ; preds = %if.else88
  %79 = load ptr, ptr %hctx.addr, align 8, !dbg !4005, !tbaa !1392
  %errh95 = getelementptr inbounds %struct.handler_ctx, ptr %79, i32 0, i32 5, !dbg !4005
  %80 = load ptr, ptr %errh95, align 8, !dbg !4005, !tbaa !1879
  %81 = load ptr, ptr %mem, align 8, !dbg !4005, !tbaa !1392
  %82 = load ptr, ptr %frame4, align 8, !dbg !4005, !tbaa !1392
  %83 = load i64, ptr %i, align 8, !dbg !4005, !tbaa !1805
  %add.ptr96 = getelementptr inbounds i8, ptr %82, i64 %83, !dbg !4005
  %sub.ptr.lhs.cast = ptrtoint ptr %81 to i64, !dbg !4005
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr96 to i64, !dbg !4005
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4005
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %80, ptr noundef @.str.9, i32 noundef 978, ptr noundef @.str.63, i64 noundef %sub.ptr.sub) #13, !dbg !4005
  br label %if.end97, !dbg !4005

if.end97:                                         ; preds = %if.then94, %if.else88
  %84 = load ptr, ptr %mem, align 8, !dbg !4007, !tbaa !1392
  %85 = load ptr, ptr %frame4, align 8, !dbg !4008, !tbaa !1392
  %86 = load i64, ptr %i, align 8, !dbg !4009, !tbaa !1805
  %add.ptr98 = getelementptr inbounds i8, ptr %85, i64 %86, !dbg !4010
  %sub.ptr.lhs.cast99 = ptrtoint ptr %84 to i64, !dbg !4011
  %sub.ptr.rhs.cast100 = ptrtoint ptr %add.ptr98 to i64, !dbg !4011
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100, !dbg !4011
  %87 = load ptr, ptr %hctx.addr, align 8, !dbg !4012, !tbaa !1392
  %frame102 = getelementptr inbounds %struct.handler_ctx, ptr %87, i32 0, i32 1, !dbg !4013
  %ctl103 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame102, i32 0, i32 1, !dbg !4014
  %siz104 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl103, i32 0, i32 0, !dbg !4015
  %88 = load i64, ptr %siz104, align 8, !dbg !4016, !tbaa !2303
  %add105 = add i64 %88, %sub.ptr.sub101, !dbg !4016
  store i64 %add105, ptr %siz104, align 8, !dbg !4016, !tbaa !2303
  %89 = load ptr, ptr %hctx.addr, align 8, !dbg !4017, !tbaa !1392
  %frame106 = getelementptr inbounds %struct.handler_ctx, ptr %89, i32 0, i32 1, !dbg !4019
  %ctl107 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame106, i32 0, i32 1, !dbg !4020
  %siz108 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl107, i32 0, i32 0, !dbg !4021
  %90 = load i64, ptr %siz108, align 8, !dbg !4021, !tbaa !2303
  %cmp109 = icmp ugt i64 %90, 1048575, !dbg !4022
  br i1 %cmp109, label %if.then111, label %if.end120, !dbg !4023

if.then111:                                       ; preds = %if.end97
  %91 = load ptr, ptr %hctx.addr, align 8, !dbg !4024, !tbaa !1392
  %gw112 = getelementptr inbounds %struct.handler_ctx, ptr %91, i32 0, i32 0, !dbg !4024
  %conf113 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw112, i32 0, i32 19, !dbg !4024
  %debug114 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf113, i32 0, i32 6, !dbg !4024
  %92 = load i32, ptr %debug114, align 8, !dbg !4024, !tbaa !1875
  %cmp115 = icmp sge i32 %92, 2, !dbg !4024
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !4027

if.then117:                                       ; preds = %if.then111
  %93 = load ptr, ptr %hctx.addr, align 8, !dbg !4028, !tbaa !1392
  %errh118 = getelementptr inbounds %struct.handler_ctx, ptr %93, i32 0, i32 5, !dbg !4028
  %94 = load ptr, ptr %errh118, align 8, !dbg !4028, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %94, ptr noundef @.str.9, i32 noundef 982, ptr noundef @.str.53, i32 noundef 1048575) #13, !dbg !4028
  br label %if.end119, !dbg !4028

if.end119:                                        ; preds = %if.then117, %if.then111
  store i32 -1, ptr %retval, align 4, !dbg !4030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !4030

if.end120:                                        ; preds = %if.end97
  %95 = load ptr, ptr %payload, align 8, !dbg !4031, !tbaa !1392
  %96 = load ptr, ptr %frame4, align 8, !dbg !4032, !tbaa !1392
  %97 = load i64, ptr %i, align 8, !dbg !4033, !tbaa !1805
  %add.ptr121 = getelementptr inbounds i8, ptr %96, i64 %97, !dbg !4034
  %98 = load ptr, ptr %mem, align 8, !dbg !4035, !tbaa !1392
  %99 = load ptr, ptr %frame4, align 8, !dbg !4036, !tbaa !1392
  %100 = load i64, ptr %i, align 8, !dbg !4037, !tbaa !1805
  %add.ptr122 = getelementptr inbounds i8, ptr %99, i64 %100, !dbg !4038
  %sub.ptr.lhs.cast123 = ptrtoint ptr %98 to i64, !dbg !4039
  %sub.ptr.rhs.cast124 = ptrtoint ptr %add.ptr122 to i64, !dbg !4039
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124, !dbg !4039
  call void @buffer_append_string_len(ptr noundef %95, ptr noundef %add.ptr121, i64 noundef %sub.ptr.sub125), !dbg !4040
  %101 = load ptr, ptr %mem, align 8, !dbg !4041, !tbaa !1392
  %102 = load ptr, ptr %frame4, align 8, !dbg !4042, !tbaa !1392
  %103 = load i64, ptr %i, align 8, !dbg !4043, !tbaa !1805
  %add.ptr126 = getelementptr inbounds i8, ptr %102, i64 %103, !dbg !4044
  %sub.ptr.lhs.cast127 = ptrtoint ptr %101 to i64, !dbg !4045
  %sub.ptr.rhs.cast128 = ptrtoint ptr %add.ptr126 to i64, !dbg !4045
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128, !dbg !4045
  %104 = load i64, ptr %i, align 8, !dbg !4046, !tbaa !1805
  %add130 = add i64 %104, %sub.ptr.sub129, !dbg !4046
  store i64 %add130, ptr %i, align 8, !dbg !4046, !tbaa !1805
  %105 = load ptr, ptr %hctx.addr, align 8, !dbg !4047, !tbaa !1392
  %frame131 = getelementptr inbounds %struct.handler_ctx, ptr %105, i32 0, i32 1, !dbg !4048
  %state132 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame131, i32 0, i32 0, !dbg !4049
  store i32 0, ptr %state132, align 8, !dbg !4050, !tbaa !2297
  br label %if.end133

if.end133:                                        ; preds = %if.end120, %if.end83
  %106 = load i64, ptr %i, align 8, !dbg !4051, !tbaa !1805
  %inc134 = add i64 %106, 1, !dbg !4051
  store i64 %inc134, ptr %i, align 8, !dbg !4051, !tbaa !1805
  %107 = load ptr, ptr %hctx.addr, align 8, !dbg !4052, !tbaa !1392
  %frame135 = getelementptr inbounds %struct.handler_ctx, ptr %107, i32 0, i32 1, !dbg !4053
  %type136 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame135, i32 0, i32 2, !dbg !4054
  %108 = load i32, ptr %type136, align 8, !dbg !4054, !tbaa !2464
  %cmp137 = icmp eq i32 %108, 0, !dbg !4055
  br i1 %cmp137, label %land.lhs.true, label %if.else146, !dbg !4056

land.lhs.true:                                    ; preds = %if.end133
  %109 = load ptr, ptr %payload, align 8, !dbg !4057, !tbaa !1392
  %call139 = call i32 @buffer_is_unset(ptr noundef %109) #14, !dbg !4058
  %tobool140 = icmp ne i32 %call139, 0, !dbg !4058
  br i1 %tobool140, label %if.else146, label %if.then141, !dbg !4059

if.then141:                                       ; preds = %land.lhs.true
  %110 = load ptr, ptr %hctx.addr, align 8, !dbg !4060, !tbaa !1392
  %frame142 = getelementptr inbounds %struct.handler_ctx, ptr %110, i32 0, i32 1, !dbg !4062
  %ctl143 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame142, i32 0, i32 1, !dbg !4063
  %siz144 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl143, i32 0, i32 0, !dbg !4064
  store i64 0, ptr %siz144, align 8, !dbg !4065, !tbaa !2303
  %111 = load ptr, ptr %hctx.addr, align 8, !dbg !4066, !tbaa !1392
  %gw145 = getelementptr inbounds %struct.handler_ctx, ptr %111, i32 0, i32 0, !dbg !4067
  %wb = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw145, i32 0, i32 8, !dbg !4068
  %112 = load ptr, ptr %payload, align 8, !dbg !4069, !tbaa !1392
  call void @chunkqueue_append_buffer(ptr noundef %wb, ptr noundef %112), !dbg !4070
  br label %if.end200, !dbg !4071

if.else146:                                       ; preds = %land.lhs.true, %if.end133
  %113 = load ptr, ptr %hctx.addr, align 8, !dbg !4072, !tbaa !1392
  %frame147 = getelementptr inbounds %struct.handler_ctx, ptr %113, i32 0, i32 1, !dbg !4073
  %state148 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame147, i32 0, i32 0, !dbg !4074
  %114 = load i32, ptr %state148, align 8, !dbg !4074, !tbaa !2297
  %cmp149 = icmp eq i32 %114, 0, !dbg !4075
  br i1 %cmp149, label %land.lhs.true151, label %if.end199, !dbg !4076

land.lhs.true151:                                 ; preds = %if.else146
  %115 = load ptr, ptr %payload, align 8, !dbg !4077, !tbaa !1392
  %call152 = call i32 @buffer_is_unset(ptr noundef %115) #14, !dbg !4078
  %tobool153 = icmp ne i32 %call152, 0, !dbg !4078
  br i1 %tobool153, label %if.end199, label %if.then154, !dbg !4079

if.then154:                                       ; preds = %land.lhs.true151
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !4080
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3842, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !4082
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3850, metadata !DIExpression()), !dbg !4083
  %116 = load ptr, ptr %payload, align 8, !dbg !4084, !tbaa !1392
  %call155 = call i32 @buffer_clen(ptr noundef %116) #14, !dbg !4085
  %conv156 = zext i32 %call155 to i64, !dbg !4085
  store i64 %conv156, ptr %len, align 8, !dbg !4083, !tbaa !1805
  %117 = load i64, ptr %len, align 8, !dbg !4086, !tbaa !1805
  %add157 = add i64 %117, 3, !dbg !4087
  %div = udiv i64 %add157, 4, !dbg !4088
  %mul = mul i64 %div, 3, !dbg !4089
  %add158 = add i64 %mul, 1, !dbg !4090
  store i64 %add158, ptr %len, align 8, !dbg !4091, !tbaa !1805
  %118 = load ptr, ptr %hctx.addr, align 8, !dbg !4092, !tbaa !1392
  %gw159 = getelementptr inbounds %struct.handler_ctx, ptr %118, i32 0, i32 0, !dbg !4093
  %wb160 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw159, i32 0, i32 8, !dbg !4094
  %call161 = call nonnull ptr @chunkqueue_get_memory(ptr noundef %wb160, ptr noundef %len), !dbg !4095
  %119 = load ptr, ptr %hctx.addr, align 8, !dbg !4096, !tbaa !1392
  %gw162 = getelementptr inbounds %struct.handler_ctx, ptr %119, i32 0, i32 0, !dbg !4097
  %wb163 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw162, i32 0, i32 8, !dbg !4098
  %last = getelementptr inbounds %struct.chunkqueue, ptr %wb163, i32 0, i32 1, !dbg !4099
  %120 = load ptr, ptr %last, align 8, !dbg !4099, !tbaa !4100
  %mem164 = getelementptr inbounds %struct.chunk, ptr %120, i32 0, i32 2, !dbg !4101
  %121 = load ptr, ptr %mem164, align 8, !dbg !4101, !tbaa !3321
  store ptr %121, ptr %b, align 8, !dbg !4102, !tbaa !1392
  %122 = load ptr, ptr %b, align 8, !dbg !4103, !tbaa !1392
  %call165 = call i32 @buffer_clen(ptr noundef %122) #14, !dbg !4104
  %conv166 = zext i32 %call165 to i64, !dbg !4104
  store i64 %conv166, ptr %len, align 8, !dbg !4105, !tbaa !1805
  %123 = load ptr, ptr %hctx.addr, align 8, !dbg !4106, !tbaa !1392
  %gw167 = getelementptr inbounds %struct.handler_ctx, ptr %123, i32 0, i32 0, !dbg !4106
  %conf168 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw167, i32 0, i32 19, !dbg !4106
  %debug169 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf168, i32 0, i32 6, !dbg !4106
  %124 = load i32, ptr %debug169, align 8, !dbg !4106, !tbaa !1875
  %cmp170 = icmp sge i32 %124, 4, !dbg !4106
  br i1 %cmp170, label %if.then172, label %if.end175, !dbg !4108

if.then172:                                       ; preds = %if.then154
  %125 = load ptr, ptr %hctx.addr, align 8, !dbg !4109, !tbaa !1392
  %errh173 = getelementptr inbounds %struct.handler_ctx, ptr %125, i32 0, i32 5, !dbg !4109
  %126 = load ptr, ptr %errh173, align 8, !dbg !4109, !tbaa !1879
  %127 = load ptr, ptr %payload, align 8, !dbg !4109, !tbaa !1392
  %ptr174 = getelementptr inbounds %struct.buffer, ptr %127, i32 0, i32 0, !dbg !4109
  %128 = load ptr, ptr %ptr174, align 8, !dbg !4109, !tbaa !1734
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %126, ptr noundef @.str.9, i32 noundef 1006, ptr noundef @.str.64, ptr noundef %128) #13, !dbg !4109
  br label %if.end175, !dbg !4109

if.end175:                                        ; preds = %if.then172, %if.then154
  %129 = load ptr, ptr %b, align 8, !dbg !4111, !tbaa !1392
  %130 = load ptr, ptr %payload, align 8, !dbg !4113, !tbaa !1392
  %ptr176 = getelementptr inbounds %struct.buffer, ptr %130, i32 0, i32 0, !dbg !4113
  %131 = load ptr, ptr %ptr176, align 8, !dbg !4113, !tbaa !1734
  %132 = load ptr, ptr %payload, align 8, !dbg !4113, !tbaa !1392
  %call177 = call i32 @buffer_clen(ptr noundef %132) #14, !dbg !4113
  %conv178 = zext i32 %call177 to i64, !dbg !4113
  %call179 = call ptr @buffer_append_base64_decode(ptr noundef %129, ptr noundef %131, i64 noundef %conv178, i32 noundef 0), !dbg !4114
  %cmp180 = icmp eq ptr null, %call179, !dbg !4115
  br i1 %cmp180, label %if.then182, label %if.end191, !dbg !4116

if.then182:                                       ; preds = %if.end175
  %133 = load ptr, ptr %hctx.addr, align 8, !dbg !4117, !tbaa !1392
  %gw183 = getelementptr inbounds %struct.handler_ctx, ptr %133, i32 0, i32 0, !dbg !4117
  %conf184 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw183, i32 0, i32 19, !dbg !4117
  %debug185 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf184, i32 0, i32 6, !dbg !4117
  %134 = load i32, ptr %debug185, align 8, !dbg !4117, !tbaa !1875
  %cmp186 = icmp sge i32 %134, 1, !dbg !4117
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !4120

if.then188:                                       ; preds = %if.then182
  %135 = load ptr, ptr %hctx.addr, align 8, !dbg !4121, !tbaa !1392
  %errh189 = getelementptr inbounds %struct.handler_ctx, ptr %135, i32 0, i32 5, !dbg !4121
  %136 = load ptr, ptr %errh189, align 8, !dbg !4121, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %136, ptr noundef @.str.9, i32 noundef 1010, ptr noundef @.str.22, ptr noundef @.str.65) #13, !dbg !4121
  br label %if.end190, !dbg !4121

if.end190:                                        ; preds = %if.then188, %if.then182
  store i32 -1, ptr %retval, align 4, !dbg !4123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4123

if.end191:                                        ; preds = %if.end175
  %137 = load ptr, ptr %payload, align 8, !dbg !4124, !tbaa !1392
  call void @buffer_clear(ptr noundef %137), !dbg !4125
  %138 = load ptr, ptr %b, align 8, !dbg !4126, !tbaa !1392
  %call192 = call i32 @buffer_clen(ptr noundef %138) #14, !dbg !4127
  %conv193 = zext i32 %call192 to i64, !dbg !4127
  %139 = load i64, ptr %len, align 8, !dbg !4128, !tbaa !1805
  %sub194 = sub i64 %conv193, %139, !dbg !4129
  %140 = load ptr, ptr %hctx.addr, align 8, !dbg !4130, !tbaa !1392
  %gw195 = getelementptr inbounds %struct.handler_ctx, ptr %140, i32 0, i32 0, !dbg !4131
  %wb196 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw195, i32 0, i32 8, !dbg !4132
  %bytes_in = getelementptr inbounds %struct.chunkqueue, ptr %wb196, i32 0, i32 2, !dbg !4133
  %141 = load i64, ptr %bytes_in, align 8, !dbg !4134, !tbaa !4135
  %add197 = add i64 %141, %sub194, !dbg !4134
  store i64 %add197, ptr %bytes_in, align 8, !dbg !4134, !tbaa !4135
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4136
  br label %cleanup, !dbg !4136

cleanup:                                          ; preds = %if.end191, %if.end190
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !4136
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !4136
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup209 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end199, !dbg !4137

if.end199:                                        ; preds = %cleanup.cont, %land.lhs.true151, %if.else146
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.then141
  br label %sw.epilog, !dbg !4138

sw.default:                                       ; preds = %for.body17
  %142 = load ptr, ptr %hctx.addr, align 8, !dbg !4139, !tbaa !1392
  %gw201 = getelementptr inbounds %struct.handler_ctx, ptr %142, i32 0, i32 0, !dbg !4139
  %conf202 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw201, i32 0, i32 19, !dbg !4139
  %debug203 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf202, i32 0, i32 6, !dbg !4139
  %143 = load i32, ptr %debug203, align 8, !dbg !4139, !tbaa !1875
  %cmp204 = icmp sge i32 %143, 1, !dbg !4139
  br i1 %cmp204, label %if.then206, label %if.end208, !dbg !4141

if.then206:                                       ; preds = %sw.default
  %144 = load ptr, ptr %hctx.addr, align 8, !dbg !4142, !tbaa !1392
  %errh207 = getelementptr inbounds %struct.handler_ctx, ptr %144, i32 0, i32 5, !dbg !4142
  %145 = load ptr, ptr %errh207, align 8, !dbg !4142, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %145, ptr noundef @.str.9, i32 noundef 1020, ptr noundef @.str.22, ptr noundef @.str.66) #13, !dbg !4142
  br label %if.end208, !dbg !4142

if.end208:                                        ; preds = %if.then206, %sw.default
  store i32 -1, ptr %retval, align 4, !dbg !4144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup209, !dbg !4144

sw.epilog:                                        ; preds = %if.end200, %if.end48
  br label %for.cond13, !dbg !4145, !llvm.loop !4146

cleanup209:                                       ; preds = %if.end208, %cleanup, %if.end119, %if.end82, %if.end47, %if.end38, %for.cond.cleanup16
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12, !dbg !4145
  %cleanup.dest210 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest210, label %cleanup211 [
    i32 7, label %for.end
  ]

for.end:                                          ; preds = %cleanup209
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4148
  br label %cleanup211, !dbg !4148

cleanup211:                                       ; preds = %for.end, %cleanup209
  call void @llvm.lifetime.end.p0(i64 8, ptr %flen) #12, !dbg !4148
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame4) #12, !dbg !4148
  %cleanup.dest213 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest213, label %cleanup215 [
    i32 0, label %cleanup.cont214
  ]

cleanup.cont214:                                  ; preds = %cleanup211
  br label %for.inc, !dbg !4149

for.inc:                                          ; preds = %cleanup.cont214
  %146 = load ptr, ptr %c, align 8, !dbg !4150, !tbaa !1392
  %next = getelementptr inbounds %struct.chunk, ptr %146, i32 0, i32 0, !dbg !4151
  %147 = load ptr, ptr %next, align 8, !dbg !4151, !tbaa !3816
  store ptr %147, ptr %c, align 8, !dbg !4152, !tbaa !1392
  br label %for.cond, !dbg !4153, !llvm.loop !4154

cleanup215:                                       ; preds = %cleanup211, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #12, !dbg !4153
  %cleanup.dest216 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest216, label %cleanup219 [
    i32 2, label %for.end217
  ]

for.end217:                                       ; preds = %cleanup215
  %148 = load ptr, ptr %cq, align 8, !dbg !4156, !tbaa !1392
  %149 = load ptr, ptr %cq, align 8, !dbg !4157, !tbaa !1392
  %call218 = call i64 @chunkqueue_length(ptr noundef %149) #14, !dbg !4158
  call void @chunkqueue_mark_written(ptr noundef %148, i64 noundef %call218), !dbg !4159
  store i32 0, ptr %retval, align 4, !dbg !4160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup219, !dbg !4160

cleanup219:                                       ; preds = %for.end217, %cleanup215
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #12, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %payload) #12, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %cq) #12, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !4161
  %150 = load i32, ptr %retval, align 4, !dbg !4161
  ret i32 %150, !dbg !4161
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i64 @chunkqueue_length(ptr noundef nonnull %cq) #6 !dbg !4162 {
entry:
  %cq.addr = alloca ptr, align 8
  store ptr %cq, ptr %cq.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %cq.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  %0 = load ptr, ptr %cq.addr, align 8, !dbg !4170, !tbaa !1392
  %bytes_in = getelementptr inbounds %struct.chunkqueue, ptr %0, i32 0, i32 2, !dbg !4171
  %1 = load i64, ptr %bytes_in, align 8, !dbg !4171, !tbaa !4172
  %2 = load ptr, ptr %cq.addr, align 8, !dbg !4173, !tbaa !1392
  %bytes_out = getelementptr inbounds %struct.chunkqueue, ptr %2, i32 0, i32 3, !dbg !4174
  %3 = load i64, ptr %bytes_out, align 8, !dbg !4174, !tbaa !4175
  %sub = sub nsw i64 %1, %3, !dbg !4176
  ret i64 %sub, !dbg !4177
}

; Function Attrs: cold noreturn
declare !dbg !4178 void @ck_assert_failed(ptr noundef, i32 noundef, ptr noundef) #10

declare !dbg !4181 void @buffer_append_string_len(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @unmask_payload(ptr noundef %hctx) #3 !dbg !4185 {
entry:
  %hctx.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %i = alloca i64, align 8
  %used = alloca i64, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !4189, metadata !DIExpression()), !dbg !4194
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !4195
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !4190, metadata !DIExpression()), !dbg !4196
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !4197, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 1, !dbg !4198
  %payload = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 5, !dbg !4199
  %1 = load ptr, ptr %payload, align 8, !dbg !4199, !tbaa !2309
  store ptr %1, ptr %b, align 8, !dbg !4196, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12, !dbg !4200
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4191, metadata !DIExpression()), !dbg !4201
  store i64 0, ptr %i, align 8, !dbg !4201, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %used) #12, !dbg !4200
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !4193, metadata !DIExpression()), !dbg !4202
  %2 = load ptr, ptr %b, align 8, !dbg !4203, !tbaa !1392
  %call = call i32 @buffer_clen(ptr noundef %2) #14, !dbg !4204
  %conv = zext i32 %call to i64, !dbg !4204
  store i64 %conv, ptr %used, align 8, !dbg !4202, !tbaa !1805
  br label %for.cond, !dbg !4200

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !dbg !4205, !tbaa !1805
  %4 = load i64, ptr %used, align 8, !dbg !4207, !tbaa !1805
  %cmp = icmp ult i64 %3, %4, !dbg !4208
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !4209

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %used) #12, !dbg !4210
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12, !dbg !4210
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %hctx.addr, align 8, !dbg !4211, !tbaa !1392
  %frame2 = getelementptr inbounds %struct.handler_ctx, ptr %5, i32 0, i32 1, !dbg !4213
  %ctl = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame2, i32 0, i32 1, !dbg !4214
  %mask = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl, i32 0, i32 3, !dbg !4215
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !4216, !tbaa !1392
  %frame3 = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 1, !dbg !4217
  %ctl4 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame3, i32 0, i32 1, !dbg !4218
  %mask_cnt = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl4, i32 0, i32 2, !dbg !4219
  %7 = load i32, ptr %mask_cnt, align 4, !dbg !4219, !tbaa !3468
  %idxprom = sext i32 %7 to i64, !dbg !4211
  %arrayidx = getelementptr inbounds [4 x i8], ptr %mask, i64 0, i64 %idxprom, !dbg !4211
  %8 = load i8, ptr %arrayidx, align 1, !dbg !4211, !tbaa !1464
  %conv5 = zext i8 %8 to i32, !dbg !4211
  %9 = load ptr, ptr %b, align 8, !dbg !4220, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %9, i32 0, i32 0, !dbg !4221
  %10 = load ptr, ptr %ptr, align 8, !dbg !4221, !tbaa !1734
  %11 = load i64, ptr %i, align 8, !dbg !4222, !tbaa !1805
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 %11, !dbg !4220
  %12 = load i8, ptr %arrayidx6, align 1, !dbg !4223, !tbaa !1464
  %conv7 = sext i8 %12 to i32, !dbg !4223
  %xor = xor i32 %conv7, %conv5, !dbg !4223
  %conv8 = trunc i32 %xor to i8, !dbg !4223
  store i8 %conv8, ptr %arrayidx6, align 1, !dbg !4223, !tbaa !1464
  %13 = load ptr, ptr %hctx.addr, align 8, !dbg !4224, !tbaa !1392
  %frame9 = getelementptr inbounds %struct.handler_ctx, ptr %13, i32 0, i32 1, !dbg !4225
  %ctl10 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame9, i32 0, i32 1, !dbg !4226
  %mask_cnt11 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl10, i32 0, i32 2, !dbg !4227
  %14 = load i32, ptr %mask_cnt11, align 4, !dbg !4227, !tbaa !3468
  %add = add nsw i32 %14, 1, !dbg !4228
  %rem = srem i32 %add, 4, !dbg !4229
  %15 = load ptr, ptr %hctx.addr, align 8, !dbg !4230, !tbaa !1392
  %frame12 = getelementptr inbounds %struct.handler_ctx, ptr %15, i32 0, i32 1, !dbg !4231
  %ctl13 = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame12, i32 0, i32 1, !dbg !4232
  %mask_cnt14 = getelementptr inbounds %struct.mod_wstunnel_frame_control_t, ptr %ctl13, i32 0, i32 2, !dbg !4233
  store i32 %rem, ptr %mask_cnt14, align 4, !dbg !4234, !tbaa !3468
  br label %for.inc, !dbg !4235

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %i, align 8, !dbg !4236, !tbaa !1805
  %inc = add i64 %16, 1, !dbg !4236
  store i64 %inc, ptr %i, align 8, !dbg !4236, !tbaa !1805
  br label %for.cond, !dbg !4210, !llvm.loop !4237

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !4239
  ret void, !dbg !4239
}

declare !dbg !4240 void @chunkqueue_append_buffer(ptr noundef, ptr noundef) #2

declare !dbg !4244 void @chunkqueue_mark_written(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4247 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @buffer_is_unset(ptr noundef nonnull %b) #6 !dbg !4250 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4252, metadata !DIExpression()), !dbg !4253
  %0 = load ptr, ptr %b.addr, align 8, !dbg !4254, !tbaa !1392
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !4255
  %1 = load i32, ptr %used, align 8, !dbg !4255, !tbaa !1523
  %cmp = icmp eq i32 0, %1, !dbg !4256
  %conv = zext i1 %cmp to i32, !dbg !4256
  ret i32 %conv, !dbg !4257
}

declare !dbg !4258 nonnull ptr @chunkqueue_get_memory(ptr noundef, ptr noundef) #2

declare !dbg !4263 ptr @buffer_append_base64_decode(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare !dbg !4266 void @http_response_upgrade_read_body_unknown(ptr noundef) #2

declare !dbg !4269 void @chunkqueue_append_chunkqueue(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @mod_wstunnel_handshake_create_response(ptr noundef %hctx) #3 !dbg !4272 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cq = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !4276, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !4282
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4277, metadata !DIExpression()), !dbg !4283
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !4284, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !4285
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !4286
  %1 = load ptr, ptr %r1, align 8, !dbg !4286, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !4283, !tbaa !1392
  %2 = load ptr, ptr %hctx.addr, align 8, !dbg !4287, !tbaa !1392
  %hybivers = getelementptr inbounds %struct.handler_ctx, ptr %2, i32 0, i32 2, !dbg !4289
  %3 = load i32, ptr %hybivers, align 8, !dbg !4289, !tbaa !1895
  %cmp = icmp sge i32 %3, 8, !dbg !4290
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4291

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hctx.addr, align 8, !dbg !4292, !tbaa !1392
  %gw2 = getelementptr inbounds %struct.handler_ctx, ptr %4, i32 0, i32 0, !dbg !4292
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw2, i32 0, i32 19, !dbg !4292
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !4292
  %5 = load i32, ptr %debug, align 8, !dbg !4292, !tbaa !1875
  %cmp3 = icmp sge i32 %5, 4, !dbg !4292
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4295

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !4296, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 5, !dbg !4296
  %7 = load ptr, ptr %errh, align 8, !dbg !4296, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %7, ptr noundef @.str.9, i32 noundef 844, ptr noundef @.str.22, ptr noundef @.str.67) #13, !dbg !4296
  br label %if.end, !dbg !4296

if.end:                                           ; preds = %if.then4, %if.then
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !4298, !tbaa !1392
  %call = call i32 @create_response_rfc_6455(ptr noundef %8), !dbg !4300
  %cmp5 = icmp ne i32 0, %call, !dbg !4301
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4302

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %r, align 8, !dbg !4303, !tbaa !1392
  %http_status = getelementptr inbounds %struct.request_st, ptr %9, i32 0, i32 1, !dbg !4305
  store i32 400, ptr %http_status, align 4, !dbg !4306, !tbaa !2543
  store i32 4, ptr %retval, align 4, !dbg !4307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !4307

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !4308

if.end8:                                          ; preds = %entry
  %10 = load ptr, ptr %hctx.addr, align 8, !dbg !4309, !tbaa !1392
  %hybivers9 = getelementptr inbounds %struct.handler_ctx, ptr %10, i32 0, i32 2, !dbg !4310
  %11 = load i32, ptr %hybivers9, align 8, !dbg !4310, !tbaa !1895
  %cmp10 = icmp eq i32 %11, 0, !dbg !4311
  br i1 %cmp10, label %land.lhs.true, label %if.end29, !dbg !4312

land.lhs.true:                                    ; preds = %if.end8
  %12 = load ptr, ptr %r, align 8, !dbg !4313, !tbaa !1392
  %http_version = getelementptr inbounds %struct.request_st, ptr %12, i32 0, i32 9, !dbg !4314
  %13 = load i32, ptr %http_version, align 8, !dbg !4314, !tbaa !1700
  %cmp11 = icmp eq i32 %13, 1, !dbg !4315
  br i1 %cmp11, label %if.then12, label %if.end29, !dbg !4316

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %cq) #12, !dbg !4317
  tail call void @llvm.dbg.declare(metadata ptr %cq, metadata !4278, metadata !DIExpression()), !dbg !4318
  %14 = load ptr, ptr %r, align 8, !dbg !4319, !tbaa !1392
  %reqbody_queue = getelementptr inbounds %struct.request_st, ptr %14, i32 0, i32 53, !dbg !4320
  store ptr %reqbody_queue, ptr %cq, align 8, !dbg !4318, !tbaa !1392
  %15 = load ptr, ptr %cq, align 8, !dbg !4321, !tbaa !1392
  %call13 = call i64 @chunkqueue_length(ptr noundef %15) #14, !dbg !4323
  %cmp14 = icmp slt i64 %call13, 8, !dbg !4324
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4325

if.then15:                                        ; preds = %if.then12
  store i32 3, ptr %retval, align 4, !dbg !4326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4326

if.end16:                                         ; preds = %if.then12
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !4327, !tbaa !1392
  %gw17 = getelementptr inbounds %struct.handler_ctx, ptr %16, i32 0, i32 0, !dbg !4327
  %conf18 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw17, i32 0, i32 19, !dbg !4327
  %debug19 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf18, i32 0, i32 6, !dbg !4327
  %17 = load i32, ptr %debug19, align 8, !dbg !4327, !tbaa !1875
  %cmp20 = icmp sge i32 %17, 4, !dbg !4327
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !4329

if.then21:                                        ; preds = %if.end16
  %18 = load ptr, ptr %hctx.addr, align 8, !dbg !4330, !tbaa !1392
  %errh22 = getelementptr inbounds %struct.handler_ctx, ptr %18, i32 0, i32 5, !dbg !4330
  %19 = load ptr, ptr %errh22, align 8, !dbg !4330, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %19, ptr noundef @.str.9, i32 noundef 863, ptr noundef @.str.22, ptr noundef @.str.67) #13, !dbg !4330
  br label %if.end23, !dbg !4330

if.end23:                                         ; preds = %if.then21, %if.end16
  %20 = load ptr, ptr %hctx.addr, align 8, !dbg !4332, !tbaa !1392
  %call24 = call i32 @create_response_ietf_00(ptr noundef %20), !dbg !4334
  %cmp25 = icmp ne i32 0, %call24, !dbg !4335
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !4336

if.then26:                                        ; preds = %if.end23
  %21 = load ptr, ptr %r, align 8, !dbg !4337, !tbaa !1392
  %http_status27 = getelementptr inbounds %struct.request_st, ptr %21, i32 0, i32 1, !dbg !4339
  store i32 400, ptr %http_status27, align 4, !dbg !4340, !tbaa !2543
  store i32 4, ptr %retval, align 4, !dbg !4341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4341

if.end28:                                         ; preds = %if.end23
  store i32 0, ptr %retval, align 4, !dbg !4342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4342

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %cq) #12, !dbg !4343
  br label %cleanup38

if.end29:                                         ; preds = %land.lhs.true, %if.end8
  %22 = load ptr, ptr %hctx.addr, align 8, !dbg !4344, !tbaa !1392
  %gw30 = getelementptr inbounds %struct.handler_ctx, ptr %22, i32 0, i32 0, !dbg !4344
  %conf31 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw30, i32 0, i32 19, !dbg !4344
  %debug32 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf31, i32 0, i32 6, !dbg !4344
  %23 = load i32, ptr %debug32, align 8, !dbg !4344, !tbaa !1875
  %cmp33 = icmp sge i32 %23, 1, !dbg !4344
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !4346

if.then34:                                        ; preds = %if.end29
  %24 = load ptr, ptr %hctx.addr, align 8, !dbg !4347, !tbaa !1392
  %errh35 = getelementptr inbounds %struct.handler_ctx, ptr %24, i32 0, i32 5, !dbg !4347
  %25 = load ptr, ptr %errh35, align 8, !dbg !4347, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %25, ptr noundef @.str.9, i32 noundef 872, ptr noundef @.str.22, ptr noundef @.str.68) #13, !dbg !4347
  br label %if.end36, !dbg !4347

if.end36:                                         ; preds = %if.then34, %if.end29
  %26 = load ptr, ptr %r, align 8, !dbg !4349, !tbaa !1392
  %http_status37 = getelementptr inbounds %struct.request_st, ptr %26, i32 0, i32 1, !dbg !4350
  store i32 503, ptr %http_status37, align 4, !dbg !4351, !tbaa !2543
  store i32 4, ptr %retval, align 4, !dbg !4352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !4352

cleanup38:                                        ; preds = %if.end36, %cleanup, %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !4353
  %27 = load i32, ptr %retval, align 4, !dbg !4353
  ret i32 %27, !dbg !4353
}

declare !dbg !4354 void @gw_set_transparent(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @create_response_rfc_6455(ptr noundef %hctx) #3 !dbg !4355 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %sha = alloca %struct._SHA_CTX, align 4
  %sha_digest = alloca [20 x i8], align 16
  %value_wskey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !4357, metadata !DIExpression()), !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !4381
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4358, metadata !DIExpression()), !dbg !4382
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !4383, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !4384
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !4385
  %1 = load ptr, ptr %r1, align 8, !dbg !4385, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !4382, !tbaa !1392
  %2 = load ptr, ptr %r, align 8, !dbg !4386, !tbaa !1392
  %http_version = getelementptr inbounds %struct.request_st, ptr %2, i32 0, i32 9, !dbg !4387
  %3 = load i32, ptr %http_version, align 8, !dbg !4387, !tbaa !1700
  %cmp = icmp eq i32 %3, 1, !dbg !4388
  br i1 %cmp, label %if.then, label %if.end14, !dbg !4389

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 92, ptr %sha) #12, !dbg !4390
  tail call void @llvm.dbg.declare(metadata ptr %sha, metadata !4359, metadata !DIExpression()), !dbg !4391
  call void @llvm.lifetime.start.p0(i64 20, ptr %sha_digest) #12, !dbg !4392
  tail call void @llvm.dbg.declare(metadata ptr %sha_digest, metadata !4376, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 8, ptr %value_wskey) #12, !dbg !4394
  tail call void @llvm.dbg.declare(metadata ptr %value_wskey, metadata !4378, metadata !DIExpression()), !dbg !4395
  %4 = load ptr, ptr %r, align 8, !dbg !4396, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %4, i32 noundef 0, ptr noundef @.str.69, i32 noundef 17) #14, !dbg !4397
  store ptr %call, ptr %value_wskey, align 8, !dbg !4395, !tbaa !1392
  %5 = load ptr, ptr %value_wskey, align 8, !dbg !4398, !tbaa !1392
  %cmp2 = icmp eq ptr null, %5, !dbg !4400
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !4401

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !4402, !tbaa !1392
  %gw4 = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 0, !dbg !4402
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw4, i32 0, i32 19, !dbg !4402
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !4402
  %7 = load i32, ptr %debug, align 8, !dbg !4402, !tbaa !1875
  %cmp5 = icmp sge i32 %7, 1, !dbg !4402
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !4405

if.then6:                                         ; preds = %if.then3
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !4406, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %8, i32 0, i32 5, !dbg !4406
  %9 = load ptr, ptr %errh, align 8, !dbg !4406, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %9, ptr noundef @.str.9, i32 noundef 799, ptr noundef @.str.22, ptr noundef @.str.70) #13, !dbg !4406
  br label %if.end, !dbg !4406

if.end:                                           ; preds = %if.then6, %if.then3
  store i32 -1, ptr %retval, align 4, !dbg !4408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4408

if.end7:                                          ; preds = %if.then
  call void @SHA1_Init(ptr noundef %sha), !dbg !4409
  %10 = load ptr, ptr %value_wskey, align 8, !dbg !4410, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %10, i32 0, i32 0, !dbg !4410
  %11 = load ptr, ptr %ptr, align 8, !dbg !4410, !tbaa !1734
  %12 = load ptr, ptr %value_wskey, align 8, !dbg !4410, !tbaa !1392
  %call8 = call i32 @buffer_clen(ptr noundef %12) #14, !dbg !4410
  call void @SHA1_Update(ptr noundef %sha, ptr noundef %11, i32 noundef %call8), !dbg !4411
  call void @SHA1_Update(ptr noundef %sha, ptr noundef @.str.71, i32 noundef 36), !dbg !4412
  %arraydecay = getelementptr inbounds [20 x i8], ptr %sha_digest, i64 0, i64 0, !dbg !4413
  call void @SHA1_Final(ptr noundef %arraydecay, ptr noundef %sha), !dbg !4414
  %13 = load ptr, ptr %r, align 8, !dbg !4415, !tbaa !1392
  call void @http_header_response_set(ptr noundef %13, i32 noundef 50, ptr noundef @.str.13, i32 noundef 7, ptr noundef @.str.14, i32 noundef 9), !dbg !4416
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #12, !dbg !4417
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !4379, metadata !DIExpression()), !dbg !4418
  %14 = load ptr, ptr %r, align 8, !dbg !4419, !tbaa !1392
  %call9 = call nonnull ptr @http_header_response_set_ptr(ptr noundef %14, i32 noundef 0, ptr noundef @.str.72, i32 noundef 20), !dbg !4420
  store ptr %call9, ptr %value, align 8, !dbg !4418, !tbaa !1392
  %15 = load ptr, ptr %value, align 8, !dbg !4421, !tbaa !1392
  %arraydecay10 = getelementptr inbounds [20 x i8], ptr %sha_digest, i64 0, i64 0, !dbg !4421
  %call11 = call nonnull ptr @buffer_append_base64_enc(ptr noundef %15, ptr noundef %arraydecay10, i64 noundef 20, i32 noundef 0, i32 noundef 1), !dbg !4421
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #12, !dbg !4422
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4422
  br label %cleanup, !dbg !4422

cleanup:                                          ; preds = %if.end7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %value_wskey) #12, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 20, ptr %sha_digest) #12, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 92, ptr %sha) #12, !dbg !4422
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end14, !dbg !4423

if.end14:                                         ; preds = %cleanup.cont, %entry
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !4424, !tbaa !1392
  %frame = getelementptr inbounds %struct.handler_ctx, ptr %16, i32 0, i32 1, !dbg !4426
  %type = getelementptr inbounds %struct.mod_wstunnel_frame_t, ptr %frame, i32 0, i32 2, !dbg !4427
  %17 = load i32, ptr %type, align 8, !dbg !4427, !tbaa !2464
  %cmp15 = icmp eq i32 %17, 1, !dbg !4428
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !4429

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %r, align 8, !dbg !4430, !tbaa !1392
  call void @http_header_response_set(ptr noundef %18, i32 noundef 0, ptr noundef @.str.20, i32 noundef 22, ptr noundef @.str.11, i32 noundef 6), !dbg !4431
  br label %if.end20, !dbg !4431

if.else:                                          ; preds = %if.end14
  %19 = load ptr, ptr %hctx.addr, align 8, !dbg !4432, !tbaa !1392
  %subproto = getelementptr inbounds %struct.handler_ctx, ptr %19, i32 0, i32 4, !dbg !4434
  %20 = load i32, ptr %subproto, align 8, !dbg !4434, !tbaa !2391
  %cmp17 = icmp eq i32 -1, %20, !dbg !4435
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !4436

if.then18:                                        ; preds = %if.else
  %21 = load ptr, ptr %r, align 8, !dbg !4437, !tbaa !1392
  call void @http_header_response_set(ptr noundef %21, i32 noundef 0, ptr noundef @.str.20, i32 noundef 22, ptr noundef @.str.21, i32 noundef 6), !dbg !4438
  br label %if.end19, !dbg !4438

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then16
  store i32 0, ptr %retval, align 4, !dbg !4439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4439

cleanup21:                                        ; preds = %if.end20, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !4440
  %22 = load i32, ptr %retval, align 4, !dbg !4440
  ret i32 %22, !dbg !4440
}

; Function Attrs: nounwind uwtable
define internal i32 @create_response_ietf_00(ptr noundef %hctx) #3 !dbg !4441 {
entry:
  %retval = alloca i32, align 4
  %hctx.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %origin = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  store ptr %hctx, ptr %hctx.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %hctx.addr, metadata !4443, metadata !DIExpression()), !dbg !4447
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !4448
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4444, metadata !DIExpression()), !dbg !4449
  %0 = load ptr, ptr %hctx.addr, align 8, !dbg !4450, !tbaa !1392
  %gw = getelementptr inbounds %struct.handler_ctx, ptr %0, i32 0, i32 0, !dbg !4451
  %r1 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw, i32 0, i32 20, !dbg !4452
  %1 = load ptr, ptr %r1, align 8, !dbg !4452, !tbaa !2654
  store ptr %1, ptr %r, align 8, !dbg !4449, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #12, !dbg !4453
  tail call void @llvm.dbg.declare(metadata ptr %origin, metadata !4445, metadata !DIExpression()), !dbg !4454
  %2 = load ptr, ptr %r, align 8, !dbg !4455, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %2, i32 noundef 0, ptr noundef @.str.29, i32 noundef 6) #14, !dbg !4456
  store ptr %call, ptr %origin, align 8, !dbg !4454, !tbaa !1392
  %3 = load ptr, ptr %origin, align 8, !dbg !4457, !tbaa !1392
  %cmp = icmp eq ptr null, %3, !dbg !4459
  br i1 %cmp, label %if.then, label %if.end, !dbg !4460

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %r, align 8, !dbg !4461, !tbaa !1392
  %call2 = call ptr @http_header_request_get(ptr noundef %4, i32 noundef 0, ptr noundef @.str.30, i32 noundef 20) #14, !dbg !4463
  store ptr %call2, ptr %origin, align 8, !dbg !4464, !tbaa !1392
  br label %if.end, !dbg !4465

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %origin, align 8, !dbg !4466, !tbaa !1392
  %cmp3 = icmp eq ptr null, %5, !dbg !4468
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !4469

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %hctx.addr, align 8, !dbg !4470, !tbaa !1392
  %gw5 = getelementptr inbounds %struct.handler_ctx, ptr %6, i32 0, i32 0, !dbg !4470
  %conf = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw5, i32 0, i32 19, !dbg !4470
  %debug = getelementptr inbounds %struct.gw_plugin_config, ptr %conf, i32 0, i32 6, !dbg !4470
  %7 = load i32, ptr %debug, align 8, !dbg !4470, !tbaa !1875
  %cmp6 = icmp sge i32 %7, 1, !dbg !4470
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4473

if.then7:                                         ; preds = %if.then4
  %8 = load ptr, ptr %hctx.addr, align 8, !dbg !4474, !tbaa !1392
  %errh = getelementptr inbounds %struct.handler_ctx, ptr %8, i32 0, i32 5, !dbg !4474
  %9 = load ptr, ptr %errh, align 8, !dbg !4474, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %9, ptr noundef @.str.9, i32 noundef 739, ptr noundef @.str.22, ptr noundef @.str.31) #13, !dbg !4474
  br label %if.end8, !dbg !4474

if.end8:                                          ; preds = %if.then7, %if.then4
  store i32 -1, ptr %retval, align 4, !dbg !4476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4476

if.end9:                                          ; preds = %if.end
  %10 = load ptr, ptr %r, align 8, !dbg !4477, !tbaa !1392
  %http_host = getelementptr inbounds %struct.request_st, ptr %10, i32 0, i32 27, !dbg !4479
  %11 = load ptr, ptr %http_host, align 8, !dbg !4479, !tbaa !2548
  %tobool = icmp ne ptr %11, null, !dbg !4477
  br i1 %tobool, label %lor.lhs.false, label %if.then13, !dbg !4480

lor.lhs.false:                                    ; preds = %if.end9
  %12 = load ptr, ptr %r, align 8, !dbg !4481, !tbaa !1392
  %http_host10 = getelementptr inbounds %struct.request_st, ptr %12, i32 0, i32 27, !dbg !4482
  %13 = load ptr, ptr %http_host10, align 8, !dbg !4482, !tbaa !2548
  %call11 = call i32 @buffer_is_blank(ptr noundef %13) #14, !dbg !4483
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4483
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !4484

if.then13:                                        ; preds = %lor.lhs.false, %if.end9
  %14 = load ptr, ptr %hctx.addr, align 8, !dbg !4485, !tbaa !1392
  %gw14 = getelementptr inbounds %struct.handler_ctx, ptr %14, i32 0, i32 0, !dbg !4485
  %conf15 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw14, i32 0, i32 19, !dbg !4485
  %debug16 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf15, i32 0, i32 6, !dbg !4485
  %15 = load i32, ptr %debug16, align 8, !dbg !4485, !tbaa !1875
  %cmp17 = icmp sge i32 %15, 1, !dbg !4485
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4488

if.then18:                                        ; preds = %if.then13
  %16 = load ptr, ptr %hctx.addr, align 8, !dbg !4489, !tbaa !1392
  %errh19 = getelementptr inbounds %struct.handler_ctx, ptr %16, i32 0, i32 5, !dbg !4489
  %17 = load ptr, ptr %errh19, align 8, !dbg !4489, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %17, ptr noundef @.str.9, i32 noundef 743, ptr noundef @.str.22, ptr noundef @.str.27) #13, !dbg !4489
  br label %if.end20, !dbg !4489

if.end20:                                         ; preds = %if.then18, %if.then13
  store i32 -1, ptr %retval, align 4, !dbg !4491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4491

if.end21:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %r, align 8, !dbg !4492, !tbaa !1392
  %call22 = call i32 @create_MD5_sum(ptr noundef %18), !dbg !4494
  %cmp23 = icmp slt i32 %call22, 0, !dbg !4495
  br i1 %cmp23, label %if.then24, label %if.end32, !dbg !4496

if.then24:                                        ; preds = %if.end21
  %19 = load ptr, ptr %hctx.addr, align 8, !dbg !4497, !tbaa !1392
  %gw25 = getelementptr inbounds %struct.handler_ctx, ptr %19, i32 0, i32 0, !dbg !4497
  %conf26 = getelementptr inbounds %struct.gw_handler_ctx, ptr %gw25, i32 0, i32 19, !dbg !4497
  %debug27 = getelementptr inbounds %struct.gw_plugin_config, ptr %conf26, i32 0, i32 6, !dbg !4497
  %20 = load i32, ptr %debug27, align 8, !dbg !4497, !tbaa !1875
  %cmp28 = icmp sge i32 %20, 1, !dbg !4497
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !4500

if.then29:                                        ; preds = %if.then24
  %21 = load ptr, ptr %hctx.addr, align 8, !dbg !4501, !tbaa !1392
  %errh30 = getelementptr inbounds %struct.handler_ctx, ptr %21, i32 0, i32 5, !dbg !4501
  %22 = load ptr, ptr %errh30, align 8, !dbg !4501, !tbaa !1879
  call void (ptr, ptr, i32, ptr, ...) @log_error(ptr noundef %22, ptr noundef @.str.9, i32 noundef 749, ptr noundef @.str.22, ptr noundef @.str.70) #13, !dbg !4501
  br label %if.end31, !dbg !4501

if.end31:                                         ; preds = %if.then29, %if.then24
  store i32 -1, ptr %retval, align 4, !dbg !4503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4503

if.end32:                                         ; preds = %if.end21
  %23 = load ptr, ptr %r, align 8, !dbg !4504, !tbaa !1392
  call void @http_header_response_set(ptr noundef %23, i32 noundef 50, ptr noundef @.str.13, i32 noundef 7, ptr noundef @.str.14, i32 noundef 9), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #12, !dbg !4506
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !4446, metadata !DIExpression()), !dbg !4507
  %24 = load ptr, ptr %r, align 8, !dbg !4508, !tbaa !1392
  %call33 = call nonnull ptr @http_header_response_set_ptr(ptr noundef %24, i32 noundef 0, ptr noundef @.str.73, i32 noundef 22), !dbg !4509
  store ptr %call33, ptr %value, align 8, !dbg !4507, !tbaa !1392
  %25 = load ptr, ptr %r, align 8, !dbg !4510, !tbaa !1392
  %uri = getelementptr inbounds %struct.request_st, ptr %25, i32 0, i32 21, !dbg !4512
  %scheme = getelementptr inbounds %struct.request_uri, ptr %uri, i32 0, i32 0, !dbg !4513
  %call34 = call i32 @buffer_eq_slen(ptr noundef %scheme, ptr noundef @.str.74, i64 noundef 5) #14, !dbg !4514
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4514
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !4515

if.then36:                                        ; preds = %if.end32
  %26 = load ptr, ptr %value, align 8, !dbg !4516, !tbaa !1392
  call void @buffer_copy_string_len(ptr noundef %26, ptr noundef @.str.75, i64 noundef 6), !dbg !4517
  br label %if.end37, !dbg !4517

if.else:                                          ; preds = %if.end32
  %27 = load ptr, ptr %value, align 8, !dbg !4518, !tbaa !1392
  call void @buffer_copy_string_len(ptr noundef %27, ptr noundef @.str.76, i64 noundef 5), !dbg !4519
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  %28 = load ptr, ptr %value, align 8, !dbg !4520, !tbaa !1392
  %29 = load ptr, ptr %r, align 8, !dbg !4521, !tbaa !1392
  %http_host38 = getelementptr inbounds %struct.request_st, ptr %29, i32 0, i32 27, !dbg !4521
  %30 = load ptr, ptr %http_host38, align 8, !dbg !4521, !tbaa !2548
  %ptr = getelementptr inbounds %struct.buffer, ptr %30, i32 0, i32 0, !dbg !4521
  %31 = load ptr, ptr %ptr, align 8, !dbg !4521, !tbaa !1734
  %32 = load ptr, ptr %r, align 8, !dbg !4521, !tbaa !1392
  %http_host39 = getelementptr inbounds %struct.request_st, ptr %32, i32 0, i32 27, !dbg !4521
  %33 = load ptr, ptr %http_host39, align 8, !dbg !4521, !tbaa !2548
  %call40 = call i32 @buffer_clen(ptr noundef %33) #14, !dbg !4521
  %conv = zext i32 %call40 to i64, !dbg !4521
  %34 = load ptr, ptr %r, align 8, !dbg !4522, !tbaa !1392
  %uri41 = getelementptr inbounds %struct.request_st, ptr %34, i32 0, i32 21, !dbg !4522
  %path = getelementptr inbounds %struct.request_uri, ptr %uri41, i32 0, i32 2, !dbg !4522
  %ptr42 = getelementptr inbounds %struct.buffer, ptr %path, i32 0, i32 0, !dbg !4522
  %35 = load ptr, ptr %ptr42, align 8, !dbg !4522, !tbaa !4523
  %36 = load ptr, ptr %r, align 8, !dbg !4522, !tbaa !1392
  %uri43 = getelementptr inbounds %struct.request_st, ptr %36, i32 0, i32 21, !dbg !4522
  %path44 = getelementptr inbounds %struct.request_uri, ptr %uri43, i32 0, i32 2, !dbg !4522
  %call45 = call i32 @buffer_clen(ptr noundef %path44) #14, !dbg !4522
  %conv46 = zext i32 %call45 to i64, !dbg !4522
  call void @buffer_append_str2(ptr noundef %28, ptr noundef %31, i64 noundef %conv, ptr noundef %35, i64 noundef %conv46), !dbg !4524
  store i32 0, ptr %retval, align 4, !dbg !4525
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #12, !dbg !4526
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end31, %if.end20, %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #12, !dbg !4526
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !4526
  %37 = load i32, ptr %retval, align 4, !dbg !4526
  ret i32 %37, !dbg !4526
}

declare !dbg !4527 void @SHA1_Init(ptr noundef) #2

declare !dbg !4531 void @SHA1_Update(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !4536 void @SHA1_Final(ptr noundef, ptr noundef) #2

declare !dbg !4540 void @http_header_response_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !4543 nonnull ptr @http_header_response_set_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !4546 nonnull ptr @buffer_append_base64_enc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @create_MD5_sum(ptr noundef %r) #3 !dbg !4549 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %buf = alloca [4 x i32], align 16
  %key1 = alloca ptr, align 8
  %key2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4553, metadata !DIExpression()), !dbg !4557
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #12, !dbg !4558
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !4554, metadata !DIExpression()), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 8, ptr %key1) #12, !dbg !4560
  tail call void @llvm.dbg.declare(metadata ptr %key1, metadata !4555, metadata !DIExpression()), !dbg !4561
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4562, !tbaa !1392
  %call = call ptr @http_header_request_get(ptr noundef %0, i32 noundef 0, ptr noundef @.str.77, i32 noundef 18) #14, !dbg !4563
  store ptr %call, ptr %key1, align 8, !dbg !4561, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %key2) #12, !dbg !4564
  tail call void @llvm.dbg.declare(metadata ptr %key2, metadata !4556, metadata !DIExpression()), !dbg !4565
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4566, !tbaa !1392
  %call1 = call ptr @http_header_request_get(ptr noundef %1, i32 noundef 0, ptr noundef @.str.78, i32 noundef 18) #14, !dbg !4567
  store ptr %call1, ptr %key2, align 8, !dbg !4565, !tbaa !1392
  %2 = load ptr, ptr %key1, align 8, !dbg !4568, !tbaa !1392
  %cmp = icmp eq ptr null, %2, !dbg !4570
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4571

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4572
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay, i64 0, !dbg !4573
  %3 = load ptr, ptr %key1, align 8, !dbg !4574, !tbaa !1392
  %call2 = call i32 @get_key_number(ptr noundef %add.ptr, ptr noundef %3), !dbg !4575
  %cmp3 = icmp slt i32 %call2, 0, !dbg !4576
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4577

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %key2, align 8, !dbg !4578, !tbaa !1392
  %cmp5 = icmp eq ptr null, %4, !dbg !4579
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !4580

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %arraydecay7 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4581
  %add.ptr8 = getelementptr inbounds i32, ptr %arraydecay7, i64 1, !dbg !4582
  %5 = load ptr, ptr %key2, align 8, !dbg !4583, !tbaa !1392
  %call9 = call i32 @get_key_number(ptr noundef %add.ptr8, ptr noundef %5), !dbg !4584
  %cmp10 = icmp slt i32 %call9, 0, !dbg !4585
  br i1 %cmp10, label %if.then, label %lor.lhs.false11, !dbg !4586

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4587, !tbaa !1392
  %arraydecay12 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4588
  %add.ptr13 = getelementptr inbounds i32, ptr %arraydecay12, i64 2, !dbg !4589
  %call14 = call i32 @get_key3(ptr noundef %6, ptr noundef %add.ptr13, i32 noundef 8), !dbg !4590
  %cmp15 = icmp slt i32 %call14, 0, !dbg !4591
  br i1 %cmp15, label %if.then, label %if.end, !dbg !4592

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !4593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4593

if.end:                                           ; preds = %lor.lhs.false11
  %arraydecay16 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4595
  %arraydecay17 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4596
  call void @MD5_once(ptr noundef %arraydecay16, ptr noundef %arraydecay17, i64 noundef 16), !dbg !4597
  %7 = load ptr, ptr %r.addr, align 8, !dbg !4598, !tbaa !1392
  %write_queue = getelementptr inbounds %struct.request_st, ptr %7, i32 0, i32 51, !dbg !4599
  %arraydecay18 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !4600
  call void @chunkqueue_append_mem(ptr noundef %write_queue, ptr noundef %arraydecay18, i64 noundef 16), !dbg !4601
  store i32 0, ptr %retval, align 4, !dbg !4602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4602

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key2) #12, !dbg !4603
  call void @llvm.lifetime.end.p0(i64 8, ptr %key1) #12, !dbg !4603
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #12, !dbg !4603
  %8 = load i32, ptr %retval, align 4, !dbg !4603
  ret i32 %8, !dbg !4603
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4604 i32 @buffer_eq_slen(ptr noundef, ptr noundef, i64 noundef) #5

declare !dbg !4605 void @buffer_copy_string_len(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !4606 void @buffer_append_str2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_key_number(ptr noundef %ret, ptr noundef %b) #3 !dbg !4609 {
entry:
  %retval = alloca i32, align 4
  %ret.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %sp = alloca i32, align 4
  %tmp = alloca [11 x i8], align 1
  %i = alloca i64, align 8
  %used = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !4614, metadata !DIExpression()), !dbg !4624
  store ptr %b, ptr %b.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4615, metadata !DIExpression()), !dbg !4625
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !4626
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !4616, metadata !DIExpression()), !dbg !4627
  %0 = load ptr, ptr %b.addr, align 8, !dbg !4628, !tbaa !1392
  %ptr = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 0, !dbg !4629
  %1 = load ptr, ptr %ptr, align 8, !dbg !4629, !tbaa !1734
  store ptr %1, ptr %s, align 8, !dbg !4627, !tbaa !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #12, !dbg !4630
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4617, metadata !DIExpression()), !dbg !4631
  store i64 0, ptr %j, align 8, !dbg !4631, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !4632
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !4618, metadata !DIExpression()), !dbg !4633
  call void @llvm.lifetime.start.p0(i64 4, ptr %sp) #12, !dbg !4634
  tail call void @llvm.dbg.declare(metadata ptr %sp, metadata !4619, metadata !DIExpression()), !dbg !4635
  store i32 0, ptr %sp, align 4, !dbg !4635, !tbaa !1466
  call void @llvm.lifetime.start.p0(i64 11, ptr %tmp) #12, !dbg !4636
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4620, metadata !DIExpression()), !dbg !4637
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12, !dbg !4638
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4621, metadata !DIExpression()), !dbg !4639
  store i64 0, ptr %i, align 8, !dbg !4639, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %used) #12, !dbg !4638
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !4623, metadata !DIExpression()), !dbg !4640
  %2 = load ptr, ptr %b.addr, align 8, !dbg !4641, !tbaa !1392
  %call = call i32 @buffer_clen(ptr noundef %2) #14, !dbg !4642
  %conv = zext i32 %call to i64, !dbg !4642
  store i64 %conv, ptr %used, align 8, !dbg !4640, !tbaa !1805
  br label %for.cond, !dbg !4638

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !dbg !4643, !tbaa !1805
  %4 = load i64, ptr %used, align 8, !dbg !4645, !tbaa !1805
  %cmp = icmp ult i64 %3, %4, !dbg !4646
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !4647

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4647

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s, align 8, !dbg !4648, !tbaa !1392
  %6 = load i64, ptr %i, align 8, !dbg !4651, !tbaa !1805
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !4648
  %7 = load i8, ptr %arrayidx, align 1, !dbg !4648, !tbaa !1464
  %conv2 = sext i8 %7 to i32, !dbg !4648
  %call3 = call i32 @light_isdigit(i32 noundef %conv2) #14, !dbg !4652
  %tobool = icmp ne i32 %call3, 0, !dbg !4652
  br i1 %tobool, label %if.then, label %if.else, !dbg !4653

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %s, align 8, !dbg !4654, !tbaa !1392
  %9 = load i64, ptr %i, align 8, !dbg !4656, !tbaa !1805
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !4654
  %10 = load i8, ptr %arrayidx4, align 1, !dbg !4654, !tbaa !1464
  %11 = load i64, ptr %j, align 8, !dbg !4657, !tbaa !1805
  %arrayidx5 = getelementptr inbounds [11 x i8], ptr %tmp, i64 0, i64 %11, !dbg !4658
  store i8 %10, ptr %arrayidx5, align 1, !dbg !4659, !tbaa !1464
  %12 = load i64, ptr %j, align 8, !dbg !4660, !tbaa !1805
  %inc = add i64 %12, 1, !dbg !4660
  store i64 %inc, ptr %j, align 8, !dbg !4660, !tbaa !1805
  %cmp6 = icmp uge i64 %inc, 11, !dbg !4662
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !4663

if.then8:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !4664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4664

if.end:                                           ; preds = %if.then
  br label %if.end16, !dbg !4665

if.else:                                          ; preds = %for.body
  %13 = load ptr, ptr %s, align 8, !dbg !4666, !tbaa !1392
  %14 = load i64, ptr %i, align 8, !dbg !4668, !tbaa !1805
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4666
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !4666, !tbaa !1464
  %conv10 = sext i8 %15 to i32, !dbg !4666
  %cmp11 = icmp eq i32 %conv10, 32, !dbg !4669
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4670

if.then13:                                        ; preds = %if.else
  %16 = load i32, ptr %sp, align 4, !dbg !4671, !tbaa !1466
  %inc14 = add i32 %16, 1, !dbg !4671
  store i32 %inc14, ptr %sp, align 4, !dbg !4671, !tbaa !1466
  br label %if.end15, !dbg !4671

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %for.inc, !dbg !4672

for.inc:                                          ; preds = %if.end16
  %17 = load i64, ptr %i, align 8, !dbg !4673, !tbaa !1805
  %inc17 = add i64 %17, 1, !dbg !4673
  store i64 %inc17, ptr %i, align 8, !dbg !4673, !tbaa !1805
  br label %for.cond, !dbg !4674, !llvm.loop !4675

cleanup:                                          ; preds = %if.then8, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %used) #12, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12, !dbg !4674
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %18 = load i64, ptr %j, align 8, !dbg !4677, !tbaa !1805
  %arrayidx19 = getelementptr inbounds [11 x i8], ptr %tmp, i64 0, i64 %18, !dbg !4678
  store i8 0, ptr %arrayidx19, align 1, !dbg !4679, !tbaa !1464
  %arraydecay = getelementptr inbounds [11 x i8], ptr %tmp, i64 0, i64 0, !dbg !4680
  %call20 = call i64 @strtoul(ptr noundef %arraydecay, ptr noundef null, i32 noundef 10) #12, !dbg !4681
  store i64 %call20, ptr %n, align 8, !dbg !4682, !tbaa !1805
  %19 = load i64, ptr %n, align 8, !dbg !4683, !tbaa !1805
  %cmp21 = icmp ugt i64 %19, 4294967295, !dbg !4685
  br i1 %cmp21, label %if.then30, label %lor.lhs.false, !dbg !4686

lor.lhs.false:                                    ; preds = %for.end
  %20 = load i32, ptr %sp, align 4, !dbg !4687, !tbaa !1466
  %cmp23 = icmp eq i32 0, %20, !dbg !4688
  br i1 %cmp23, label %if.then30, label %lor.lhs.false25, !dbg !4689

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %arraydecay26 = getelementptr inbounds [11 x i8], ptr %tmp, i64 0, i64 0, !dbg !4690
  %21 = load i8, ptr %arraydecay26, align 1, !dbg !4690, !tbaa !1464
  %conv27 = sext i8 %21 to i32, !dbg !4690
  %call28 = call i32 @light_isdigit(i32 noundef %conv27) #14, !dbg !4691
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4691
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !4692

if.then30:                                        ; preds = %lor.lhs.false25, %lor.lhs.false, %for.end
  store i32 -1, ptr %retval, align 4, !dbg !4693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4693

if.end31:                                         ; preds = %lor.lhs.false25
  %22 = load i64, ptr %n, align 8, !dbg !4694, !tbaa !1805
  %conv32 = trunc i64 %22 to i32, !dbg !4695
  %23 = load i32, ptr %sp, align 4, !dbg !4696, !tbaa !1466
  %div = udiv i32 %conv32, %23, !dbg !4697
  %24 = load ptr, ptr %ret.addr, align 8, !dbg !4698, !tbaa !1392
  store i32 %div, ptr %24, align 4, !dbg !4699, !tbaa !1466
  store i32 0, ptr %retval, align 4, !dbg !4700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4700

cleanup33:                                        ; preds = %if.end31, %if.then30, %cleanup
  call void @llvm.lifetime.end.p0(i64 11, ptr %tmp) #12, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 4, ptr %sp) #12, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #12, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !4701
  %25 = load i32, ptr %retval, align 4, !dbg !4701
  ret i32 %25, !dbg !4701
}

; Function Attrs: nounwind uwtable
define internal i32 @get_key3(ptr noundef %r, ptr noundef %buf, i32 noundef %bytes) #3 !dbg !4702 {
entry:
  %r.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i32, align 4
  %cq = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4706, metadata !DIExpression()), !dbg !4710
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4707, metadata !DIExpression()), !dbg !4711
  store i32 %bytes, ptr %bytes.addr, align 4, !tbaa !1466
  tail call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4708, metadata !DIExpression()), !dbg !4712
  call void @llvm.lifetime.start.p0(i64 8, ptr %cq) #12, !dbg !4713
  tail call void @llvm.dbg.declare(metadata ptr %cq, metadata !4709, metadata !DIExpression()), !dbg !4714
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4715, !tbaa !1392
  %reqbody_queue = getelementptr inbounds %struct.request_st, ptr %0, i32 0, i32 53, !dbg !4716
  store ptr %reqbody_queue, ptr %cq, align 8, !dbg !4714, !tbaa !1392
  %1 = load ptr, ptr %cq, align 8, !dbg !4717, !tbaa !1392
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4718, !tbaa !1392
  %3 = load i32, ptr %bytes.addr, align 4, !dbg !4719, !tbaa !1466
  %4 = load ptr, ptr %r.addr, align 8, !dbg !4720, !tbaa !1392
  %conf = getelementptr inbounds %struct.request_st, ptr %4, i32 0, i32 17, !dbg !4721
  %errh = getelementptr inbounds %struct.request_config, ptr %conf, i32 0, i32 0, !dbg !4722
  %5 = load ptr, ptr %errh, align 8, !dbg !4722, !tbaa !2204
  %call = call i32 @chunkqueue_read_data(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %5), !dbg !4723
  call void @llvm.lifetime.end.p0(i64 8, ptr %cq) #12, !dbg !4724
  ret i32 %call, !dbg !4725
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MD5_once(ptr noundef %digest, ptr noundef %data, i64 noundef %n) #9 !dbg !4726 {
entry:
  %digest.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ctx = alloca %struct.MD5_CTX, align 4
  store ptr %digest, ptr %digest.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %digest.addr, metadata !4733, metadata !DIExpression()), !dbg !4745
  store ptr %data, ptr %data.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4734, metadata !DIExpression()), !dbg !4745
  store i64 %n, ptr %n.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4735, metadata !DIExpression()), !dbg !4745
  call void @llvm.lifetime.start.p0(i64 88, ptr %ctx) #12, !dbg !4745
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !4736, metadata !DIExpression()), !dbg !4745
  call void @MD5_Init(ptr noundef %ctx), !dbg !4745
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4745, !tbaa !1392
  %1 = load i64, ptr %n.addr, align 8, !dbg !4745, !tbaa !1805
  %conv = trunc i64 %1 to i32, !dbg !4745
  call void @MD5_Update(ptr noundef %ctx, ptr noundef %0, i32 noundef %conv), !dbg !4745
  %2 = load ptr, ptr %digest.addr, align 8, !dbg !4745, !tbaa !1392
  call void @MD5_Final(ptr noundef %2, ptr noundef %ctx), !dbg !4745
  call void @llvm.lifetime.end.p0(i64 88, ptr %ctx) #12, !dbg !4745
  ret void, !dbg !4745
}

declare !dbg !4746 void @chunkqueue_append_mem(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare !dbg !4749 i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #8

declare !dbg !4752 i32 @chunkqueue_read_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !4756 void @MD5_Init(ptr noundef) #2

declare !dbg !4760 void @MD5_Update(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !4763 void @MD5_Final(ptr noundef, ptr noundef) #2

declare !dbg !4766 void @chunk_buffer_release(ptr noundef) #2

declare !dbg !4767 i32 @gw_handle_trigger(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @connection_jq_append(ptr noalias noundef %con) #9 !dbg !4768 {
entry:
  %con.addr = alloca ptr, align 8
  store ptr %con, ptr %con.addr, align 8, !tbaa !1392
  tail call void @llvm.dbg.declare(metadata ptr %con.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  %0 = load ptr, ptr %con.addr, align 8, !dbg !4776, !tbaa !1392
  %jqnext = getelementptr inbounds %struct.connection, ptr %0, i32 0, i32 4, !dbg !4778
  %1 = load ptr, ptr %jqnext, align 8, !dbg !4778, !tbaa !4779
  %tobool = icmp ne ptr %1, null, !dbg !4776
  br i1 %tobool, label %if.end, label %if.then, !dbg !4780

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @log_con_jqueue, align 8, !dbg !4781, !tbaa !1392
  %3 = load ptr, ptr %con.addr, align 8, !dbg !4783, !tbaa !1392
  %jqnext1 = getelementptr inbounds %struct.connection, ptr %3, i32 0, i32 4, !dbg !4784
  store ptr %2, ptr %jqnext1, align 8, !dbg !4785, !tbaa !4779
  %4 = load ptr, ptr %con.addr, align 8, !dbg !4786, !tbaa !1392
  store ptr %4, ptr @log_con_jqueue, align 8, !dbg !4787, !tbaa !1392
  br label %if.end, !dbg !4788

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4789
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold noreturn }

!llvm.dbg.cu = !{!689}
!llvm.module.flags = !{!1380, !1381, !1382, !1383, !1384}
!llvm.ident = !{!1385}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "spack-src/src/mod_wstunnel.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "555fd87eec0e713d8c8fafcbc2859b02")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cpk", scope: !9, file: !2, line: 241, type: !1371, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "mod_wstunnel_set_defaults", scope: !2, file: !2, line: 240, type: !10, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1334)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !22, !28}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "handler_t", file: !13, line: 38, baseType: !14)
!13 = !DIFile(filename: "spack-src/src/base_decls.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "8960b8ee22f07d697e266aa4c1b4b9fa")
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "handler_t", file: !13, line: 31, baseType: !15, size: 32, elements: !16)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "HANDLER_GO_ON", value: 0)
!18 = !DIEnumerator(name: "HANDLER_FINISHED", value: 1)
!19 = !DIEnumerator(name: "HANDLER_COMEBACK", value: 2)
!20 = !DIEnumerator(name: "HANDLER_WAIT_FOR_EVENT", value: 3)
!21 = !DIEnumerator(name: "HANDLER_ERROR", value: 4)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "server", file: !13, line: 7, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server", file: !25, line: 142, size: 3392, elements: !26)
!25 = !DIFile(filename: "spack-src/src/base.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "688d87806a27e3440599218f92fa31fd")
!26 = !{!27, !29, !86, !88, !92, !165, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !617, !618, !659, !660, !669, !670, !675, !676, !677, !680, !683, !684, !685, !686, !688}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_slots", scope: !24, file: !25, line: 143, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "config_context", scope: !24, file: !25, line: 144, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "array", file: !32, line: 31, baseType: !33)
!32 = !DIFile(filename: "spack-src/src/array.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "1cf4a1ef37ac70f79ceaa3d29a995d97")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 25, size: 192, elements: !34)
!34 = !{!35, !83, !84, !85}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 26, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_unset", file: !32, line: 23, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_unset", file: !32, line: 21, size: 256, elements: !40)
!40 = !{!41, !54, !74}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !39, file: !32, line: 22, baseType: !42, size: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "buffer", file: !43, line: 29, baseType: !44)
!43 = !DIFile(filename: "spack-src/src/buffer.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "83c8b506d008193bd35bbe68f14e1c2a")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 22, size: 128, elements: !45)
!45 = !{!46, !48, !53}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !44, file: !43, line: 23, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !44, file: !43, line: 26, baseType: !49, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !15)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !43, line: 28, baseType: !49, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !39, file: !32, line: 22, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_methods", file: !32, line: 9, size: 192, elements: !58)
!58 = !{!59, !66, !70}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !57, file: !32, line: 10, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !57, file: !32, line: 11, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !63}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "insert_dup", scope: !57, file: !32, line: 12, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !63, !63}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !32, line: 22, baseType: !75, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_type_t", file: !32, line: 15, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 15, baseType: !15, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "TYPE_STRING", value: 0)
!79 = !DIEnumerator(name: "TYPE_ARRAY", value: 1)
!80 = !DIEnumerator(name: "TYPE_INTEGER", value: 2)
!81 = !DIEnumerator(name: "TYPE_CONFIG", value: 3)
!82 = !DIEnumerator(name: "TYPE_OTHER", value: 4)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !33, file: !32, line: 27, baseType: !36, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !33, file: !32, line: 29, baseType: !49, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 30, baseType: !49, size: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "config_captures", scope: !24, file: !25, line: 145, baseType: !87, size: 32, offset: 128)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !24, file: !25, line: 147, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "fdevents", file: !91, line: 294, flags: DIFlagFwdDecl)
!91 = !DIFile(filename: "spack-src/src/gw_backend.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "69c17243e65de239e9168b875f34faf4")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "network_backend_write", scope: !24, file: !25, line: 148, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!87, !87, !96, !116, !148}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunkqueue", file: !98, line: 55, baseType: !99)
!98 = !DIFile(filename: "spack-src/src/chunk.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "68721e47e09305b31f90225c328df0d0")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunkqueue", file: !98, line: 46, size: 448, elements: !100)
!100 = !{!101, !140, !141, !142, !143, !146, !147}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !99, file: !98, line: 47, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk", file: !98, line: 44, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk", file: !98, line: 20, size: 576, elements: !105)
!105 = !{!106, !108, !113, !115, !120}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !98, line: 21, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !98, line: 22, baseType: !109, size: 32, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !104, file: !98, line: 22, baseType: !15, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "MEM_CHUNK", value: 0)
!112 = !DIEnumerator(name: "FILE_CHUNK", value: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !104, file: !98, line: 24, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !104, file: !98, line: 30, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !117, line: 87, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !52, line: 153, baseType: !119)
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !104, file: !98, line: 43, baseType: !121, size: 320, offset: 256)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !98, line: 32, size: 320, elements: !122)
!122 = !{!123, !124, !125, !126, !135, !136}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !121, file: !98, line: 34, baseType: !116, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !121, file: !98, line: 36, baseType: !87, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "is_temp", scope: !121, file: !98, line: 37, baseType: !87, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !121, file: !98, line: 39, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk_file_view", file: !98, line: 18, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_file_view", file: !98, line: 13, size: 256, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mptr", scope: !129, file: !98, line: 14, baseType: !47, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mlen", scope: !129, file: !98, line: 15, baseType: !116, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "foff", scope: !129, file: !98, line: 16, baseType: !116, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !129, file: !98, line: 17, baseType: !87, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !121, file: !98, line: 41, baseType: !28, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "refchg", scope: !121, file: !98, line: 42, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !28, !87}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !99, file: !98, line: 48, baseType: !102, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in", scope: !99, file: !98, line: 50, baseType: !116, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_out", scope: !99, file: !98, line: 50, baseType: !116, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tempdirs", scope: !99, file: !98, line: 52, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "upload_temp_file_size", scope: !99, file: !98, line: 53, baseType: !116, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tempdir_idx", scope: !99, file: !98, line: 54, baseType: !15, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_error_st", file: !13, line: 29, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdlog_st", file: !151, line: 8, size: 256, elements: !152)
!151 = !DIFile(filename: "spack-src/src/fdlog.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "1dfced3d6e6326ccc981df3627f31bb1")
!152 = !{!153, !160, !161, !162}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !150, file: !151, line: 9, baseType: !154, size: 32)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !150, file: !151, line: 9, baseType: !15, size: 32, elements: !155)
!155 = !{!156, !157, !158, !159}
!156 = !DIEnumerator(name: "FDLOG_FILE", value: 0)
!157 = !DIEnumerator(name: "FDLOG_FD", value: 1)
!158 = !DIEnumerator(name: "FDLOG_SYSLOG", value: 2)
!159 = !DIEnumerator(name: "FDLOG_PIPE", value: 3)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !150, file: !151, line: 10, baseType: !87, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !150, file: !151, line: 11, baseType: !42, size: 128, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !150, file: !151, line: 12, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "request_env", scope: !24, file: !25, line: 149, baseType: !166, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!12, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_st", file: !13, line: 19, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_st", file: !172, line: 122, size: 6400, elements: !173)
!172 = !DIFile(filename: "spack-src/src/request.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "416cbf9145278ec22de51666187d6d5a")
!173 = !{!174, !189, !190, !191, !192, !196, !197, !201, !205, !251, !259, !458, !459, !460, !461, !470, !483, !484, !529, !530, !533, !534, !542, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !580, !581, !582, !590, !591, !592, !593, !594, !595, !599, !600}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !171, file: !172, line: 123, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_state_t", file: !172, line: 120, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 108, baseType: !15, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!178 = !DIEnumerator(name: "CON_STATE_CONNECT", value: 0)
!179 = !DIEnumerator(name: "CON_STATE_REQUEST_START", value: 1)
!180 = !DIEnumerator(name: "CON_STATE_READ", value: 2)
!181 = !DIEnumerator(name: "CON_STATE_REQUEST_END", value: 3)
!182 = !DIEnumerator(name: "CON_STATE_READ_POST", value: 4)
!183 = !DIEnumerator(name: "CON_STATE_HANDLE_REQUEST", value: 5)
!184 = !DIEnumerator(name: "CON_STATE_RESPONSE_START", value: 6)
!185 = !DIEnumerator(name: "CON_STATE_WRITE", value: 7)
!186 = !DIEnumerator(name: "CON_STATE_RESPONSE_END", value: 8)
!187 = !DIEnumerator(name: "CON_STATE_ERROR", value: 9)
!188 = !DIEnumerator(name: "CON_STATE_CLOSE", value: 10)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "http_status", scope: !171, file: !172, line: 124, baseType: !87, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "h2state", scope: !171, file: !172, line: 125, baseType: !49, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "h2id", scope: !171, file: !172, line: 126, baseType: !49, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "h2_rwin", scope: !171, file: !172, line: 127, baseType: !193, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !194, line: 26, baseType: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !52, line: 41, baseType: !87)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "h2_swin", scope: !171, file: !172, line: 128, baseType: !193, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "h2_rwin_fudge", scope: !171, file: !172, line: 129, baseType: !198, size: 16, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !194, line: 25, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !52, line: 39, baseType: !200)
!200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "h2_prio", scope: !171, file: !172, line: 130, baseType: !202, size: 8, offset: 208)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !204)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "http_method", scope: !171, file: !172, line: 132, baseType: !206, size: 32, offset: 224)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_method_t", file: !207, line: 59, baseType: !208)
!207 = !DIFile(filename: "spack-src/src/http_kv.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "839af8f5796c73517231eb7758755092")
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 17, baseType: !87, size: 32, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!210 = !DIEnumerator(name: "HTTP_METHOD_PRI", value: -2)
!211 = !DIEnumerator(name: "HTTP_METHOD_UNSET", value: -1)
!212 = !DIEnumerator(name: "HTTP_METHOD_GET", value: 0)
!213 = !DIEnumerator(name: "HTTP_METHOD_HEAD", value: 1)
!214 = !DIEnumerator(name: "HTTP_METHOD_QUERY", value: 2)
!215 = !DIEnumerator(name: "HTTP_METHOD_POST", value: 3)
!216 = !DIEnumerator(name: "HTTP_METHOD_PUT", value: 4)
!217 = !DIEnumerator(name: "HTTP_METHOD_DELETE", value: 5)
!218 = !DIEnumerator(name: "HTTP_METHOD_CONNECT", value: 6)
!219 = !DIEnumerator(name: "HTTP_METHOD_OPTIONS", value: 7)
!220 = !DIEnumerator(name: "HTTP_METHOD_TRACE", value: 8)
!221 = !DIEnumerator(name: "HTTP_METHOD_ACL", value: 9)
!222 = !DIEnumerator(name: "HTTP_METHOD_BASELINE_CONTROL", value: 10)
!223 = !DIEnumerator(name: "HTTP_METHOD_BIND", value: 11)
!224 = !DIEnumerator(name: "HTTP_METHOD_CHECKIN", value: 12)
!225 = !DIEnumerator(name: "HTTP_METHOD_CHECKOUT", value: 13)
!226 = !DIEnumerator(name: "HTTP_METHOD_COPY", value: 14)
!227 = !DIEnumerator(name: "HTTP_METHOD_LABEL", value: 15)
!228 = !DIEnumerator(name: "HTTP_METHOD_LINK", value: 16)
!229 = !DIEnumerator(name: "HTTP_METHOD_LOCK", value: 17)
!230 = !DIEnumerator(name: "HTTP_METHOD_MERGE", value: 18)
!231 = !DIEnumerator(name: "HTTP_METHOD_MKACTIVITY", value: 19)
!232 = !DIEnumerator(name: "HTTP_METHOD_MKCALENDAR", value: 20)
!233 = !DIEnumerator(name: "HTTP_METHOD_MKCOL", value: 21)
!234 = !DIEnumerator(name: "HTTP_METHOD_MKREDIRECTREF", value: 22)
!235 = !DIEnumerator(name: "HTTP_METHOD_MKWORKSPACE", value: 23)
!236 = !DIEnumerator(name: "HTTP_METHOD_MOVE", value: 24)
!237 = !DIEnumerator(name: "HTTP_METHOD_ORDERPATCH", value: 25)
!238 = !DIEnumerator(name: "HTTP_METHOD_PATCH", value: 26)
!239 = !DIEnumerator(name: "HTTP_METHOD_PROPFIND", value: 27)
!240 = !DIEnumerator(name: "HTTP_METHOD_PROPPATCH", value: 28)
!241 = !DIEnumerator(name: "HTTP_METHOD_REBIND", value: 29)
!242 = !DIEnumerator(name: "HTTP_METHOD_REPORT", value: 30)
!243 = !DIEnumerator(name: "HTTP_METHOD_SEARCH", value: 31)
!244 = !DIEnumerator(name: "HTTP_METHOD_UNBIND", value: 32)
!245 = !DIEnumerator(name: "HTTP_METHOD_UNCHECKOUT", value: 33)
!246 = !DIEnumerator(name: "HTTP_METHOD_UNLINK", value: 34)
!247 = !DIEnumerator(name: "HTTP_METHOD_UNLOCK", value: 35)
!248 = !DIEnumerator(name: "HTTP_METHOD_UPDATE", value: 36)
!249 = !DIEnumerator(name: "HTTP_METHOD_UPDATEREDIRECTREF", value: 37)
!250 = !DIEnumerator(name: "HTTP_METHOD_VERSION_CONTROL", value: 38)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !171, file: !172, line: 133, baseType: !252, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_version_t", file: !207, line: 61, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 61, baseType: !87, size: 32, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "HTTP_VERSION_UNSET", value: -1)
!256 = !DIEnumerator(name: "HTTP_VERSION_1_0", value: 0)
!257 = !DIEnumerator(name: "HTTP_VERSION_1_1", value: 1)
!258 = !DIEnumerator(name: "HTTP_VERSION_2", value: 2)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "handler_module", scope: !171, file: !172, line: 135, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin", file: !13, line: 16, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin", file: !264, line: 44, size: 1600, elements: !265)
!264 = !DIFile(filename: "spack-src/src/plugin.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "192af98aba6a36b0ed1725683acdb1fd")
!265 = !{!266, !267, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !430, !431, !432, !434, !435, !441, !445, !446, !447, !448, !452, !453, !457}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !263, file: !264, line: 45, baseType: !28, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "handle_uri_raw", scope: !263, file: !264, line: 47, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!12, !169, !28}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "handle_uri_clean", scope: !263, file: !264, line: 48, baseType: !268, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "handle_docroot", scope: !263, file: !264, line: 49, baseType: !268, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "handle_physical", scope: !263, file: !264, line: 50, baseType: !268, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_env", scope: !263, file: !264, line: 51, baseType: !268, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_done", scope: !263, file: !264, line: 52, baseType: !268, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "handle_subrequest_start", scope: !263, file: !264, line: 53, baseType: !268, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "handle_subrequest", scope: !263, file: !264, line: 54, baseType: !268, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "handle_response_start", scope: !263, file: !264, line: 55, baseType: !268, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_reset", scope: !263, file: !264, line: 56, baseType: !268, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_accept", scope: !263, file: !264, line: 58, baseType: !281, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!12, !284, !28}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !13, line: 10, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !25, line: 19, size: 8896, elements: !287)
!287 = !{!288, !289, !293, !294, !309, !310, !312, !313, !314, !315, !319, !320, !321, !322, !323, !328, !329, !334, !335, !336, !338, !339, !403, !404, !417, !423, !424, !425, !426, !427, !428, !429}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !286, file: !25, line: 21, baseType: !170, size: 6400)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "h2", scope: !286, file: !25, line: 22, baseType: !290, size: 64, offset: 6400)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "h2con", file: !13, line: 13, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "h2con", file: !13, line: 12, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !286, file: !25, line: 24, baseType: !87, size: 32, offset: 6464)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fdn", scope: !286, file: !25, line: 25, baseType: !295, size: 64, offset: 6528)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "fdnode", file: !13, line: 25, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdnode_st", file: !298, line: 12, size: 256, elements: !299)
!298 = !DIFile(filename: "spack-src/src/fdevent.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "36d3174096afc31592c961fe781a7313")
!299 = !{!300, !305, !306, !307, !308}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !297, file: !298, line: 13, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "fdevent_handler", file: !298, line: 10, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!12, !28, !87}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !297, file: !298, line: 14, baseType: !28, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !297, file: !298, line: 15, baseType: !87, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !297, file: !298, line: 16, baseType: !87, size: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "fde_ndx", scope: !297, file: !298, line: 17, baseType: !87, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "jqnext", scope: !286, file: !25, line: 26, baseType: !284, size: 64, offset: 6592)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !286, file: !25, line: 29, baseType: !311, size: 8, offset: 6656)
!311 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_writable", scope: !286, file: !25, line: 30, baseType: !311, size: 8, offset: 6664)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_ssl_sock", scope: !286, file: !25, line: 31, baseType: !4, size: 8, offset: 6672)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "traffic_limit_reached", scope: !286, file: !25, line: 32, baseType: !4, size: 8, offset: 6680)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "revents_err", scope: !286, file: !25, line: 33, baseType: !316, size: 16, offset: 6688)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !318)
!318 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "proto_default_port", scope: !286, file: !25, line: 34, baseType: !316, size: 16, offset: 6704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "write_queue", scope: !286, file: !25, line: 36, baseType: !96, size: 64, offset: 6720)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read_queue", scope: !286, file: !25, line: 37, baseType: !96, size: 64, offset: 6784)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written_cur_second", scope: !286, file: !25, line: 39, baseType: !116, size: 64, offset: 6848)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "network_write", scope: !286, file: !25, line: 41, baseType: !324, size: 64, offset: 6912)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!87, !327, !96, !116}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "network_read", scope: !286, file: !25, line: 42, baseType: !324, size: 64, offset: 6976)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reqbody_read", scope: !286, file: !25, line: 43, baseType: !330, size: 64, offset: 7040)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!12, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "srv", scope: !286, file: !25, line: 45, baseType: !22, size: 64, offset: 7104)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_slots", scope: !286, file: !25, line: 46, baseType: !28, size: 64, offset: 7168)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_ctx", scope: !286, file: !25, line: 47, baseType: !337, size: 64, offset: 7232)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "config_data_base", scope: !286, file: !25, line: 48, baseType: !28, size: 64, offset: 7296)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !286, file: !25, line: 50, baseType: !340, size: 896, offset: 7360)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_addr", file: !13, line: 22, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sock_addr", file: !342, line: 12, size: 896, elements: !343)
!342 = !DIFile(filename: "spack-src/src/sock_addr.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "9e09db4f4a31239a49673d956e2f0808")
!343 = !{!344, !373, !385, !394}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !341, file: !342, line: 14, baseType: !345, size: 224)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !346, line: 260, size: 224, elements: !347)
!346 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!347 = !{!348, !351, !353, !354, !372}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !345, file: !346, line: 262, baseType: !349, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !350, line: 28, baseType: !318)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !345, file: !346, line: 263, baseType: !352, size: 16, offset: 16)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !346, line: 123, baseType: !316)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !345, file: !346, line: 264, baseType: !49, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !345, file: !346, line: 265, baseType: !355, size: 128, offset: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !346, line: 219, size: 128, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !355, file: !346, line: 226, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !346, line: 221, size: 128, elements: !359)
!359 = !{!360, !364, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !358, file: !346, line: 223, baseType: !361, size: 128)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !358, file: !346, line: 224, baseType: !365, size: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !358, file: !346, line: 225, baseType: !369, size: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 4)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !345, file: !346, line: 266, baseType: !49, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !341, file: !342, line: 16, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !346, line: 245, size: 128, elements: !375)
!375 = !{!376, !377, !378, !383}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !374, file: !346, line: 247, baseType: !349, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !374, file: !346, line: 248, baseType: !352, size: 16, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !374, file: !346, line: 249, baseType: !379, size: 32, offset: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !346, line: 31, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !379, file: !346, line: 33, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !346, line: 30, baseType: !49)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !374, file: !346, line: 252, baseType: !384, size: 64, offset: 64)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !366)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !341, file: !342, line: 18, baseType: !386, size: 880)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !387, line: 29, size: 880, elements: !388)
!387 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !386, file: !387, line: 31, baseType: !349, size: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !386, file: !387, line: 32, baseType: !391, size: 864, offset: 16)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 108)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !341, file: !342, line: 20, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !396, line: 180, size: 128, elements: !397)
!396 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !395, file: !396, line: 182, baseType: !349, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !395, file: !396, line: 183, baseType: !400, size: 112, offset: 16)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 14)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_buf", scope: !286, file: !25, line: 51, baseType: !42, size: 128, offset: 8256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "srv_socket", scope: !286, file: !25, line: 52, baseType: !405, size: 64, offset: 8384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_socket", file: !25, line: 124, size: 1152, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !407, file: !25, line: 125, baseType: !340, size: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !407, file: !25, line: 126, baseType: !87, size: 32, offset: 896)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "is_ssl", scope: !407, file: !25, line: 128, baseType: !202, size: 8, offset: 928)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "srv_token_colon", scope: !407, file: !25, line: 129, baseType: !202, size: 8, offset: 936)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sidx", scope: !407, file: !25, line: 130, baseType: !318, size: 16, offset: 944)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fdn", scope: !407, file: !25, line: 132, baseType: !295, size: 64, offset: 960)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "srv", scope: !407, file: !25, line: 133, baseType: !22, size: 64, offset: 1024)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "srv_token", scope: !407, file: !25, line: 134, baseType: !114, size: 64, offset: 1088)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "read_idle_ts", scope: !286, file: !25, line: 55, baseType: !418, size: 64, offset: 8448)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "unix_time64_t", file: !419, line: 134, baseType: !420)
!419 = !DIFile(filename: "spack-src/src/first.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "db942007b87b5a60f6bd859b991a2b7a")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !421, line: 10, baseType: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !52, line: 160, baseType: !119)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "close_timeout_ts", scope: !286, file: !25, line: 56, baseType: !418, size: 64, offset: 8512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "write_request_ts", scope: !286, file: !25, line: 57, baseType: !418, size: 64, offset: 8576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "connection_start", scope: !286, file: !25, line: 58, baseType: !418, size: 64, offset: 8640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "request_count", scope: !286, file: !25, line: 60, baseType: !49, size: 32, offset: 8704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_idle", scope: !286, file: !25, line: 61, baseType: !87, size: 32, offset: 8736)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !25, line: 63, baseType: !284, size: 64, offset: 8768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !286, file: !25, line: 64, baseType: !284, size: 64, offset: 8832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_shut_wr", scope: !263, file: !264, line: 59, baseType: !281, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_close", scope: !263, file: !264, line: 60, baseType: !281, size: 64, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "handle_trigger", scope: !263, file: !264, line: 62, baseType: !433, size: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "handle_sighup", scope: !263, file: !264, line: 63, baseType: !433, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handle_waitpid", scope: !263, file: !264, line: 64, baseType: !436, size: 64, offset: 1024)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!12, !22, !28, !439, !87}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 97, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !52, line: 154, baseType: !87)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !263, file: !264, line: 66, baseType: !442, size: 64, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!28}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "priv_defaults", scope: !263, file: !264, line: 67, baseType: !433, size: 64, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "set_defaults", scope: !263, file: !264, line: 68, baseType: !433, size: 64, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "worker_init", scope: !263, file: !264, line: 69, baseType: !433, size: 64, offset: 1280)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !263, file: !264, line: 70, baseType: !449, size: 64, offset: 1344)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !28}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !264, line: 72, baseType: !163, size: 64, offset: 1408)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !263, file: !264, line: 73, baseType: !454, size: 64, offset: 1472)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !455, line: 70, baseType: !456)
!455 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!456 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lib", scope: !263, file: !264, line: 74, baseType: !28, size: 64, offset: 1536)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_ctx", scope: !171, file: !172, line: 136, baseType: !337, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !171, file: !172, line: 137, baseType: !284, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "conditional_is_valid", scope: !171, file: !172, line: 140, baseType: !49, size: 32, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cond_cache", scope: !171, file: !172, line: 141, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_cache_t", file: !464, line: 164, size: 16, elements: !465)
!464 = !DIFile(filename: "spack-src/src/plugin_config.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "b826c888c36ea41e9e12a5dcb73a23da")
!465 = !{!466, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !463, file: !464, line: 166, baseType: !467, size: 8)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !194, line: 24, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !52, line: 37, baseType: !311)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "local_result", scope: !463, file: !464, line: 168, baseType: !467, size: 8, offset: 8)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cond_match", scope: !171, file: !172, line: 142, baseType: !471, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_match_t", file: !464, line: 175, size: 256, elements: !474)
!474 = !{!475, !478, !481, !482}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "comp_value", scope: !473, file: !464, line: 176, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !473, file: !464, line: 178, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcre2_real_match_data_8", file: !464, line: 172, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !473, file: !464, line: 180, baseType: !87, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !473, file: !464, line: 181, baseType: !28, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cond_match_data", scope: !171, file: !172, line: 143, baseType: !472, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !171, file: !172, line: 145, baseType: !485, size: 960, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_config", file: !172, line: 78, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_config", file: !172, line: 18, size: 960, elements: !487)
!487 = !{!488, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !525, !526, !527, !528}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "errh", scope: !486, file: !172, line: 19, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "fdlog_st", file: !13, line: 28, baseType: !150)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "http_parseopts", scope: !486, file: !172, line: 20, baseType: !15, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_field_size", scope: !486, file: !172, line: 21, baseType: !49, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mimetypes", scope: !486, file: !172, line: 22, baseType: !144, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "document_root", scope: !486, file: !172, line: 25, baseType: !476, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !486, file: !172, line: 26, baseType: !476, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !486, file: !172, line: 27, baseType: !476, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_size", scope: !486, file: !172, line: 29, baseType: !15, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "max_keep_alive_requests", scope: !486, file: !172, line: 30, baseType: !318, size: 16, offset: 416)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "max_keep_alive_idle", scope: !486, file: !172, line: 31, baseType: !318, size: 16, offset: 432)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_idle", scope: !486, file: !172, line: 32, baseType: !318, size: 16, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_idle", scope: !486, file: !172, line: 33, baseType: !318, size: 16, offset: 464)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "stream_request_body", scope: !486, file: !172, line: 34, baseType: !318, size: 16, offset: 480)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "stream_response_body", scope: !486, file: !172, line: 35, baseType: !318, size: 16, offset: 496)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "high_precision_timestamps", scope: !486, file: !172, line: 36, baseType: !15, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "allow_http11", scope: !486, file: !172, line: 37, baseType: !15, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "range_requests", scope: !486, file: !172, line: 38, baseType: !15, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "follow_symlink", scope: !486, file: !172, line: 39, baseType: !15, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "etag_flags", scope: !486, file: !172, line: 40, baseType: !15, size: 3, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "use_xattr", scope: !486, file: !172, line: 41, baseType: !15, size: 1, offset: 519, flags: DIFlagBitField, extraData: i64 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "force_lowercase_filenames", scope: !486, file: !172, line: 42, baseType: !15, size: 2, offset: 520, flags: DIFlagBitField, extraData: i64 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "error_intercept", scope: !486, file: !172, line: 43, baseType: !15, size: 1, offset: 522, flags: DIFlagBitField, extraData: i64 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "h2proto", scope: !486, file: !172, line: 45, baseType: !15, size: 2, offset: 523, flags: DIFlagBitField, extraData: i64 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_handling", scope: !486, file: !172, line: 48, baseType: !15, size: 1, offset: 525, flags: DIFlagBitField, extraData: i64 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "log_state_handling", scope: !486, file: !172, line: 49, baseType: !15, size: 1, offset: 526, flags: DIFlagBitField, extraData: i64 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "log_condition_handling", scope: !486, file: !172, line: 50, baseType: !15, size: 1, offset: 527, flags: DIFlagBitField, extraData: i64 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "log_response_header", scope: !486, file: !172, line: 51, baseType: !15, size: 1, offset: 528, flags: DIFlagBitField, extraData: i64 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_header", scope: !486, file: !172, line: 52, baseType: !15, size: 1, offset: 529, flags: DIFlagBitField, extraData: i64 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_header_on_error", scope: !486, file: !172, line: 53, baseType: !15, size: 1, offset: 530, flags: DIFlagBitField, extraData: i64 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "log_file_not_found", scope: !486, file: !172, line: 54, baseType: !15, size: 1, offset: 531, flags: DIFlagBitField, extraData: i64 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "log_timeouts", scope: !486, file: !172, line: 55, baseType: !15, size: 1, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_second", scope: !486, file: !172, line: 57, baseType: !15, size: 32, offset: 544)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "global_bytes_per_second", scope: !486, file: !172, line: 58, baseType: !15, size: 32, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "global_bytes_per_second_cnt_ptr", scope: !486, file: !172, line: 72, baseType: !524, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler", scope: !486, file: !172, line: 74, baseType: !476, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_404", scope: !486, file: !172, line: 75, baseType: !476, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "errorfile_prefix", scope: !486, file: !172, line: 76, baseType: !476, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "serrh", scope: !486, file: !172, line: 77, baseType: !489, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_header_len", scope: !171, file: !172, line: 148, baseType: !49, size: 32, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_htags", scope: !171, file: !172, line: 149, baseType: !531, size: 64, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !456)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_headers", scope: !171, file: !172, line: 150, baseType: !31, size: 192, offset: 1856)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !171, file: !172, line: 152, baseType: !535, size: 512, offset: 2048)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_uri", file: !172, line: 89, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 80, size: 512, elements: !537)
!537 = !{!538, !539, !540, !541}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !536, file: !172, line: 81, baseType: !42, size: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !536, file: !172, line: 84, baseType: !42, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !536, file: !172, line: 87, baseType: !42, size: 128, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !536, file: !172, line: 88, baseType: !42, size: 128, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !171, file: !172, line: 153, baseType: !543, size: 512, offset: 2560)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "physical", file: !172, line: 97, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 91, size: 512, elements: !545)
!545 = !{!546, !547, !548, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !544, file: !172, line: 92, baseType: !42, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "basedir", scope: !544, file: !172, line: 93, baseType: !42, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "doc_root", scope: !544, file: !172, line: 95, baseType: !42, size: 128, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rel_path", scope: !544, file: !172, line: 96, baseType: !42, size: 128, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !171, file: !172, line: 154, baseType: !31, size: 192, offset: 3072)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reqbody_length", scope: !171, file: !172, line: 156, baseType: !116, size: 64, offset: 3264)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "te_chunked", scope: !171, file: !172, line: 157, baseType: !116, size: 64, offset: 3328)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_scratchpad", scope: !171, file: !172, line: 158, baseType: !116, size: 64, offset: 3392)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "http_host", scope: !171, file: !172, line: 160, baseType: !114, size: 64, offset: 3456)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !171, file: !172, line: 161, baseType: !476, size: 64, offset: 3520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !171, file: !172, line: 163, baseType: !42, size: 128, offset: 3584)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "target_orig", scope: !171, file: !172, line: 164, baseType: !42, size: 128, offset: 3712)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pathinfo", scope: !171, file: !172, line: 166, baseType: !42, size: 128, offset: 3840)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_buf", scope: !171, file: !172, line: 167, baseType: !42, size: 128, offset: 3968)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "resp_header_len", scope: !171, file: !172, line: 170, baseType: !49, size: 32, offset: 4096)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "resp_htags", scope: !171, file: !172, line: 171, baseType: !531, size: 64, offset: 4160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "resp_headers", scope: !171, file: !172, line: 172, baseType: !31, size: 192, offset: 4224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_finished", scope: !171, file: !172, line: 173, baseType: !4, size: 8, offset: 4416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_started", scope: !171, file: !172, line: 174, baseType: !4, size: 8, offset: 4424)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "resp_send_chunked", scope: !171, file: !172, line: 175, baseType: !4, size: 8, offset: 4432)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "resp_decode_chunked", scope: !171, file: !172, line: 176, baseType: !4, size: 8, offset: 4440)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "resp_header_repeated", scope: !171, file: !172, line: 177, baseType: !4, size: 8, offset: 4448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_request", scope: !171, file: !172, line: 179, baseType: !4, size: 8, offset: 4456)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !171, file: !172, line: 180, baseType: !467, size: 8, offset: 4464)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "async_callback", scope: !171, file: !172, line: 181, baseType: !4, size: 8, offset: 4472)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !171, file: !172, line: 183, baseType: !114, size: 64, offset: 4480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gw_dechunk", scope: !171, file: !172, line: 184, baseType: !573, size: 64, offset: 4544)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "response_dechunk", file: !172, line: 103, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 99, size: 256, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gw_chunked", scope: !575, file: !172, line: 100, baseType: !116, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !575, file: !172, line: 101, baseType: !42, size: 128, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !575, file: !172, line: 102, baseType: !87, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written_ckpt", scope: !171, file: !172, line: 186, baseType: !116, size: 64, offset: 4608)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read_ckpt", scope: !171, file: !172, line: 187, baseType: !116, size: 64, offset: 4672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "start_hp", scope: !171, file: !172, line: 188, baseType: !583, size: 128, offset: 4736)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "unix_timespec64_t", file: !419, line: 135, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !585, line: 11, size: 128, elements: !586)
!585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !584, file: !585, line: 16, baseType: !422, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !584, file: !585, line: 21, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !52, line: 197, baseType: !119)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_saved_status", scope: !171, file: !172, line: 190, baseType: !87, size: 32, offset: 4864)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_saved_method", scope: !171, file: !172, line: 191, baseType: !206, size: 32, offset: 4896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "write_queue", scope: !171, file: !172, line: 193, baseType: !99, size: 448, offset: 4928)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "read_queue", scope: !171, file: !172, line: 194, baseType: !99, size: 448, offset: 5376)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reqbody_queue", scope: !171, file: !172, line: 195, baseType: !99, size: 448, offset: 5824)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_sce", scope: !171, file: !172, line: 197, baseType: !596, size: 64, offset: 6272)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat_cache_entry", file: !598, line: 11, flags: DIFlagFwdDecl)
!598 = !DIFile(filename: "spack-src/src/response.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "ace3bc7588d2fb066701bb10c515f1ff")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cond_captures", scope: !171, file: !172, line: 198, baseType: !87, size: 32, offset: 6336)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "h2_connect_ext", scope: !171, file: !172, line: 199, baseType: !87, size: 32, offset: 6368)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !24, file: !25, line: 152, baseType: !114, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !24, file: !25, line: 154, baseType: !87, size: 32, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds_lowat", scope: !24, file: !25, line: 155, baseType: !87, size: 32, offset: 480)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds_hiwat", scope: !24, file: !25, line: 156, baseType: !87, size: 32, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cur_fds", scope: !24, file: !25, line: 157, baseType: !87, size: 32, offset: 544)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_disabled", scope: !24, file: !25, line: 158, baseType: !87, size: 32, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lim_conns", scope: !24, file: !25, line: 160, baseType: !49, size: 32, offset: 608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !24, file: !25, line: 161, baseType: !284, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "conns_pool", scope: !24, file: !25, line: 162, baseType: !284, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "errh", scope: !24, file: !25, line: 164, baseType: !148, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "loadts", scope: !24, file: !25, line: 166, baseType: !418, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "loadavg", scope: !24, file: !25, line: 167, baseType: !613, size: 192, offset: 896)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 192, elements: !615)
!614 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!615 = !{!616}
!616 = !DISubrange(count: 3)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "plugins_request_reset", scope: !24, file: !25, line: 171, baseType: !166, size: 64, offset: 1088)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "srvconf", scope: !24, file: !25, line: 173, baseType: !619, size: 1344, offset: 1152)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_config", file: !25, line: 122, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 79, size: 1344, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_field_size", scope: !620, file: !25, line: 82, baseType: !49, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_header_on_error", scope: !620, file: !25, line: 83, baseType: !204, size: 8, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "http_header_strict", scope: !620, file: !25, line: 84, baseType: !204, size: 8, offset: 40)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "http_host_strict", scope: !620, file: !25, line: 85, baseType: !204, size: 8, offset: 48)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "http_host_normalize", scope: !620, file: !25, line: 86, baseType: !204, size: 8, offset: 56)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "http_method_get_body", scope: !620, file: !25, line: 87, baseType: !204, size: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "high_precision_timestamps", scope: !620, file: !25, line: 88, baseType: !204, size: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "h2proto", scope: !620, file: !25, line: 89, baseType: !204, size: 8, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_dir_redirect", scope: !620, file: !25, line: 90, baseType: !204, size: 8, offset: 88)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "http_url_normalize", scope: !620, file: !25, line: 91, baseType: !318, size: 16, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "max_worker", scope: !620, file: !25, line: 93, baseType: !318, size: 16, offset: 112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !620, file: !25, line: 94, baseType: !318, size: 16, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "max_conns", scope: !620, file: !25, line: 95, baseType: !318, size: 16, offset: 144)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !620, file: !25, line: 96, baseType: !318, size: 16, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "upload_temp_file_size", scope: !620, file: !25, line: 98, baseType: !15, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "upload_tempdirs", scope: !620, file: !25, line: 99, baseType: !30, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dont_daemonize", scope: !620, file: !25, line: 101, baseType: !204, size: 8, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "preflight_check", scope: !620, file: !25, line: 102, baseType: !204, size: 8, offset: 328)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cores", scope: !620, file: !25, line: 103, baseType: !204, size: 8, offset: 336)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "compat_module_load", scope: !620, file: !25, line: 104, baseType: !204, size: 8, offset: 344)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "config_deprecated", scope: !620, file: !25, line: 105, baseType: !204, size: 8, offset: 352)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "config_unsupported", scope: !620, file: !25, line: 106, baseType: !204, size: 8, offset: 360)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "systemd_socket_activation", scope: !620, file: !25, line: 107, baseType: !204, size: 8, offset: 368)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "errorlog_use_syslog", scope: !620, file: !25, line: 108, baseType: !204, size: 8, offset: 376)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "syslog_facility", scope: !620, file: !25, line: 109, baseType: !476, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bindhost", scope: !620, file: !25, line: 110, baseType: !476, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "changeroot", scope: !620, file: !25, line: 111, baseType: !476, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !620, file: !25, line: 112, baseType: !476, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !620, file: !25, line: 113, baseType: !476, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "network_backend", scope: !620, file: !25, line: 114, baseType: !476, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "feature_flags", scope: !620, file: !25, line: 115, baseType: !144, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !620, file: !25, line: 116, baseType: !163, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "modules_dir", scope: !620, file: !25, line: 117, baseType: !163, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_file", scope: !620, file: !25, line: 118, baseType: !114, size: 64, offset: 960)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !620, file: !25, line: 119, baseType: !30, size: 64, offset: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "config_touched", scope: !620, file: !25, line: 120, baseType: !30, size: 64, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "empty_array", scope: !620, file: !25, line: 121, baseType: !31, size: 192, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "config_data_base", scope: !24, file: !25, line: 174, baseType: !28, size: 64, offset: 2496)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sockets", scope: !24, file: !25, line: 176, baseType: !661, size: 128, offset: 2560)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_socket_array", file: !25, line: 140, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 137, size: 128, elements: !663)
!663 = !{!664, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !662, file: !25, line: 138, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_socket", file: !25, line: 135, baseType: !407)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !662, file: !25, line: 139, baseType: !49, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sockets_inherited", scope: !24, file: !25, line: 177, baseType: !661, size: 128, offset: 2688)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !24, file: !25, line: 178, baseType: !671, size: 128, offset: 2816)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !25, line: 178, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !671, file: !25, line: 178, baseType: !28, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !671, file: !25, line: 178, baseType: !49, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "startup_ts", scope: !24, file: !25, line: 180, baseType: !418, size: 64, offset: 2944)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "graceful_expire_ts", scope: !24, file: !25, line: 181, baseType: !418, size: 64, offset: 3008)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !24, file: !25, line: 183, baseType: !678, size: 32, offset: 3072)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 79, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !52, line: 146, baseType: !15)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !24, file: !25, line: 184, baseType: !681, size: 32, offset: 3104)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 64, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !52, line: 147, baseType: !15)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !24, file: !25, line: 185, baseType: !439, size: 32, offset: 3136)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_fd", scope: !24, file: !25, line: 186, baseType: !87, size: 32, offset: 3168)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "default_server_tag", scope: !24, file: !25, line: 188, baseType: !476, size: 64, offset: 3200)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !24, file: !25, line: 189, baseType: !687, size: 64, offset: 3264)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !24, file: !25, line: 191, baseType: !28, size: 64, offset: 3328)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !691, retainedTypes: !833, globals: !1059, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/mod_wstunnel.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-build-rpmcfxe/build", checksumkind: CSK_MD5, checksum: "555fd87eec0e713d8c8fafcbc2859b02")
!691 = !{!14, !176, !208, !253, !109, !76, !154, !692, !707, !737, !744, !807, !814, !821, !828}
!692 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !464, line: 89, baseType: !15, size: 32, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!694 = !DIEnumerator(name: "T_CONFIG_UNSET", value: 0)
!695 = !DIEnumerator(name: "T_CONFIG_STRING", value: 1)
!696 = !DIEnumerator(name: "T_CONFIG_SHORT", value: 2)
!697 = !DIEnumerator(name: "T_CONFIG_INT", value: 3)
!698 = !DIEnumerator(name: "T_CONFIG_BOOL", value: 4)
!699 = !DIEnumerator(name: "T_CONFIG_ARRAY", value: 5)
!700 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVANY", value: 6)
!701 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVARRAY", value: 7)
!702 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVSTRING", value: 8)
!703 = !DIEnumerator(name: "T_CONFIG_ARRAY_VLIST", value: 9)
!704 = !DIEnumerator(name: "T_CONFIG_LOCAL", value: 10)
!705 = !DIEnumerator(name: "T_CONFIG_DEPRECATED", value: 11)
!706 = !DIEnumerator(name: "T_CONFIG_UNSUPPORTED", value: 12)
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !708, file: !91, line: 19, baseType: !15, size: 32, elements: !731)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gw_proc", file: !91, line: 17, size: 832, elements: !709)
!709 = !{!710, !712, !713, !714, !715, !717, !718, !719, !720, !721, !724, !726, !727, !728, !729, !730}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !91, line: 18, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !708, file: !91, line: 25, baseType: !707, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !708, file: !91, line: 26, baseType: !49, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !708, file: !91, line: 27, baseType: !418, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "stats_load", scope: !708, file: !91, line: 28, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "stats_connected", scope: !708, file: !91, line: 29, baseType: !716, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !708, file: !91, line: 30, baseType: !439, size: 32, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "is_local", scope: !708, file: !91, line: 31, baseType: !87, size: 32, offset: 352)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !708, file: !91, line: 32, baseType: !49, size: 32, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "saddrlen", scope: !708, file: !91, line: 33, baseType: !722, size: 32, offset: 416)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !396, line: 33, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !52, line: 210, baseType: !15)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !708, file: !91, line: 34, baseType: !725, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "disabled_until", scope: !708, file: !91, line: 36, baseType: !418, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !708, file: !91, line: 37, baseType: !711, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "connection_name", scope: !708, file: !91, line: 40, baseType: !114, size: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "unixsocket", scope: !708, file: !91, line: 41, baseType: !114, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !708, file: !91, line: 42, baseType: !318, size: 16, offset: 768)
!731 = !{!732, !733, !734, !735, !736}
!732 = !DIEnumerator(name: "PROC_STATE_RUNNING", value: 0)
!733 = !DIEnumerator(name: "PROC_STATE_OVERLOADED", value: 1)
!734 = !DIEnumerator(name: "PROC_STATE_DIED_WAIT_FOR_PID", value: 2)
!735 = !DIEnumerator(name: "PROC_STATE_DIED", value: 3)
!736 = !DIEnumerator(name: "PROC_STATE_KILLED", value: 4)
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 286, baseType: !15, size: 32, elements: !738)
!738 = !{!739, !740, !741, !742, !743}
!739 = !DIEnumerator(name: "GW_STATE_INIT", value: 0)
!740 = !DIEnumerator(name: "GW_STATE_CONNECT_DELAYED", value: 1)
!741 = !DIEnumerator(name: "GW_STATE_PREPARE_WRITE", value: 2)
!742 = !DIEnumerator(name: "GW_STATE_WRITE", value: 3)
!743 = !DIEnumerator(name: "GW_STATE_READ", value: 4)
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "http_header_e", file: !745, line: 39, baseType: !15, size: 32, elements: !746)
!745 = !DIFile(filename: "spack-src/src/http_header.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "ec0afffac211a7e212791b4a91317971")
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!747 = !DIEnumerator(name: "HTTP_HEADER_OTHER", value: 0)
!748 = !DIEnumerator(name: "HTTP_HEADER_ACCEPT", value: 1)
!749 = !DIEnumerator(name: "HTTP_HEADER_ACCEPT_ENCODING", value: 2)
!750 = !DIEnumerator(name: "HTTP_HEADER_ACCEPT_LANGUAGE", value: 3)
!751 = !DIEnumerator(name: "HTTP_HEADER_ACCEPT_RANGES", value: 4)
!752 = !DIEnumerator(name: "HTTP_HEADER_ACCESS_CONTROL_ALLOW_ORIGIN", value: 5)
!753 = !DIEnumerator(name: "HTTP_HEADER_AGE", value: 6)
!754 = !DIEnumerator(name: "HTTP_HEADER_ALLOW", value: 7)
!755 = !DIEnumerator(name: "HTTP_HEADER_ALT_SVC", value: 8)
!756 = !DIEnumerator(name: "HTTP_HEADER_ALT_USED", value: 9)
!757 = !DIEnumerator(name: "HTTP_HEADER_AUTHORIZATION", value: 10)
!758 = !DIEnumerator(name: "HTTP_HEADER_CACHE_CONTROL", value: 11)
!759 = !DIEnumerator(name: "HTTP_HEADER_CONNECTION", value: 12)
!760 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_ENCODING", value: 13)
!761 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_LENGTH", value: 14)
!762 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_LOCATION", value: 15)
!763 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_RANGE", value: 16)
!764 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_SECURITY_POLICY", value: 17)
!765 = !DIEnumerator(name: "HTTP_HEADER_CONTENT_TYPE", value: 18)
!766 = !DIEnumerator(name: "HTTP_HEADER_COOKIE", value: 19)
!767 = !DIEnumerator(name: "HTTP_HEADER_DATE", value: 20)
!768 = !DIEnumerator(name: "HTTP_HEADER_DNT", value: 21)
!769 = !DIEnumerator(name: "HTTP_HEADER_ETAG", value: 22)
!770 = !DIEnumerator(name: "HTTP_HEADER_EXPECT", value: 23)
!771 = !DIEnumerator(name: "HTTP_HEADER_EXPECT_CT", value: 24)
!772 = !DIEnumerator(name: "HTTP_HEADER_EXPIRES", value: 25)
!773 = !DIEnumerator(name: "HTTP_HEADER_FORWARDED", value: 26)
!774 = !DIEnumerator(name: "HTTP_HEADER_HOST", value: 27)
!775 = !DIEnumerator(name: "HTTP_HEADER_HTTP2_SETTINGS", value: 28)
!776 = !DIEnumerator(name: "HTTP_HEADER_IF_MATCH", value: 29)
!777 = !DIEnumerator(name: "HTTP_HEADER_IF_MODIFIED_SINCE", value: 30)
!778 = !DIEnumerator(name: "HTTP_HEADER_IF_NONE_MATCH", value: 31)
!779 = !DIEnumerator(name: "HTTP_HEADER_IF_RANGE", value: 32)
!780 = !DIEnumerator(name: "HTTP_HEADER_IF_UNMODIFIED_SINCE", value: 33)
!781 = !DIEnumerator(name: "HTTP_HEADER_LAST_MODIFIED", value: 34)
!782 = !DIEnumerator(name: "HTTP_HEADER_LINK", value: 35)
!783 = !DIEnumerator(name: "HTTP_HEADER_LOCATION", value: 36)
!784 = !DIEnumerator(name: "HTTP_HEADER_ONION_LOCATION", value: 37)
!785 = !DIEnumerator(name: "HTTP_HEADER_P3P", value: 38)
!786 = !DIEnumerator(name: "HTTP_HEADER_PRAGMA", value: 39)
!787 = !DIEnumerator(name: "HTTP_HEADER_PRIORITY", value: 40)
!788 = !DIEnumerator(name: "HTTP_HEADER_RANGE", value: 41)
!789 = !DIEnumerator(name: "HTTP_HEADER_REFERER", value: 42)
!790 = !DIEnumerator(name: "HTTP_HEADER_REFERRER_POLICY", value: 43)
!791 = !DIEnumerator(name: "HTTP_HEADER_SERVER", value: 44)
!792 = !DIEnumerator(name: "HTTP_HEADER_SET_COOKIE", value: 45)
!793 = !DIEnumerator(name: "HTTP_HEADER_STATUS", value: 46)
!794 = !DIEnumerator(name: "HTTP_HEADER_STRICT_TRANSPORT_SECURITY", value: 47)
!795 = !DIEnumerator(name: "HTTP_HEADER_TE", value: 48)
!796 = !DIEnumerator(name: "HTTP_HEADER_TRANSFER_ENCODING", value: 49)
!797 = !DIEnumerator(name: "HTTP_HEADER_UPGRADE", value: 50)
!798 = !DIEnumerator(name: "HTTP_HEADER_UPGRADE_INSECURE_REQUESTS", value: 51)
!799 = !DIEnumerator(name: "HTTP_HEADER_USER_AGENT", value: 52)
!800 = !DIEnumerator(name: "HTTP_HEADER_VARY", value: 53)
!801 = !DIEnumerator(name: "HTTP_HEADER_WWW_AUTHENTICATE", value: 54)
!802 = !DIEnumerator(name: "HTTP_HEADER_X_CONTENT_TYPE_OPTIONS", value: 55)
!803 = !DIEnumerator(name: "HTTP_HEADER_X_FORWARDED_FOR", value: 56)
!804 = !DIEnumerator(name: "HTTP_HEADER_X_FORWARDED_PROTO", value: 57)
!805 = !DIEnumerator(name: "HTTP_HEADER_X_FRAME_OPTIONS", value: 58)
!806 = !DIEnumerator(name: "HTTP_HEADER_X_XSS_PROTECTION", value: 59)
!807 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 126, baseType: !15, size: 32, elements: !808)
!808 = !{!809, !810, !811, !812, !813}
!809 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_STATE_INIT", value: 0)
!810 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_STATE_READ_LENGTH", value: 1)
!811 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_STATE_READ_EX_LENGTH", value: 2)
!812 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_STATE_READ_MASK", value: 3)
!813 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_STATE_READ_PAYLOAD", value: 4)
!814 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 138, baseType: !15, size: 32, elements: !815)
!815 = !{!816, !817, !818, !819, !820}
!816 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_TYPE_TEXT", value: 0)
!817 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_TYPE_BIN", value: 1)
!818 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_TYPE_CLOSE", value: 2)
!819 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_TYPE_PING", value: 3)
!820 = !DIEnumerator(name: "MOD_WEBSOCKET_FRAME_TYPE_PONG", value: 4)
!821 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !598, line: 16, baseType: !15, size: 32, elements: !822)
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIEnumerator(name: "BACKEND_PROXY", value: 0)
!824 = !DIEnumerator(name: "BACKEND_CGI", value: 1)
!825 = !DIEnumerator(name: "BACKEND_FASTCGI", value: 2)
!826 = !DIEnumerator(name: "BACKEND_SCGI", value: 3)
!827 = !DIEnumerator(name: "BACKEND_AJP13", value: 4)
!828 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !829, line: 7, baseType: !15, size: 32, elements: !830)
!829 = !DIFile(filename: "spack-src/src/base64.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "34cccdb3ccaf9748e170a5a70cd9656a")
!830 = !{!831, !832}
!831 = !DIEnumerator(name: "BASE64_STANDARD", value: 0)
!832 = !DIEnumerator(name: "BASE64_URL", value: 1)
!833 = !{!28, !834, !15, !49, !1007, !87, !1016, !4, !1054, !1055, !454, !531, !1056, !47, !1057, !193}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_plugin_data", file: !91, line: 283, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gw_plugin_data", file: !91, line: 278, size: 1024, elements: !837)
!837 = !{!838, !839, !840, !863, !865, !866, !1006}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !836, file: !91, line: 279, baseType: !87, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nconfig", scope: !836, file: !91, line: 279, baseType: !87, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cvlist", scope: !836, file: !91, line: 279, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_plugin_value_t", file: !464, line: 124, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_plugin_value", file: !464, line: 110, size: 128, elements: !844)
!844 = !{!845, !846, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "k_id", scope: !843, file: !464, line: 111, baseType: !87, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !843, file: !464, line: 112, baseType: !847, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_values_type_t", file: !464, line: 102, baseType: !692)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !843, file: !464, line: 123, baseType: !849, size: 64, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "v_u", file: !464, line: 113, size: 64, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !849, file: !464, line: 114, baseType: !28, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !849, file: !464, line: 115, baseType: !144, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !849, file: !464, line: 116, baseType: !476, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !849, file: !464, line: 117, baseType: !163, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !849, file: !464, line: 118, baseType: !15, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "shrt", scope: !849, file: !464, line: 119, baseType: !318, size: 16)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !849, file: !464, line: 120, baseType: !614, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !849, file: !464, line: 121, baseType: !116, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "u2", scope: !849, file: !464, line: 122, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 2)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !836, file: !91, line: 279, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srv_pid", scope: !836, file: !91, line: 280, baseType: !439, size: 32, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !836, file: !91, line: 281, baseType: !867, size: 384, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_plugin_config", file: !91, line: 275, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gw_plugin_config", file: !91, line: 267, size: 384, elements: !869)
!869 = !{!870, !1000, !1001, !1002, !1003, !1004, !1005}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "exts", scope: !868, file: !91, line: 268, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_exts", file: !91, line: 257, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 253, size: 128, elements: !874)
!874 = !{!875, !998, !999}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "exts", scope: !873, file: !91, line: 254, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_extension", file: !91, line: 251, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 242, size: 320, elements: !879)
!879 = !{!880, !881, !882, !883, !996, !997}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !878, file: !91, line: 243, baseType: !477, size: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "note_is_sent", scope: !878, file: !91, line: 245, baseType: !87, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_ndx", scope: !878, file: !91, line: 246, baseType: !87, size: 32, offset: 160)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "hosts", scope: !878, file: !91, line: 248, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_host", file: !91, line: 221, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 47, size: 1664, elements: !888)
!888 = !{!889, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !887, file: !91, line: 55, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_proc", file: !91, line: 43, baseType: !708)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "active_procs", scope: !887, file: !91, line: 57, baseType: !49, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gw_hash", scope: !887, file: !91, line: 58, baseType: !49, size: 32, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !887, file: !91, line: 60, baseType: !193, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "stats_load", scope: !887, file: !91, line: 61, baseType: !716, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "stats_global_active", scope: !887, file: !91, line: 62, baseType: !716, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !887, file: !91, line: 74, baseType: !318, size: 16, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !887, file: !91, line: 75, baseType: !318, size: 16, offset: 336)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !887, file: !91, line: 76, baseType: !476, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !887, file: !91, line: 79, baseType: !476, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "unused_procs", scope: !887, file: !91, line: 80, baseType: !890, size: 64, offset: 512)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "min_procs", scope: !887, file: !91, line: 92, baseType: !318, size: 16, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "max_procs", scope: !887, file: !91, line: 93, baseType: !318, size: 16, offset: 592)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_procs", scope: !887, file: !91, line: 94, baseType: !49, size: 32, offset: 608)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "max_load_per_proc", scope: !887, file: !91, line: 96, baseType: !318, size: 16, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !887, file: !91, line: 106, baseType: !318, size: 16, offset: 656)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "disable_time", scope: !887, file: !91, line: 114, baseType: !318, size: 16, offset: 672)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !887, file: !91, line: 116, baseType: !318, size: 16, offset: 688)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !887, file: !91, line: 117, baseType: !318, size: 16, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !887, file: !91, line: 118, baseType: !318, size: 16, offset: 720)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hctxs", scope: !887, file: !91, line: 119, baseType: !912, size: 64, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gw_handler_ctx", file: !91, line: 300, size: 2816, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !956, !957, !958, !959, !960, !961, !962, !966, !967, !968, !969, !973}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !913, file: !91, line: 301, baseType: !890, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !913, file: !91, line: 302, baseType: !885, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !913, file: !91, line: 303, baseType: !876, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ext_auth", scope: !913, file: !91, line: 304, baseType: !876, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gw_mode", scope: !913, file: !91, line: 305, baseType: !318, size: 16, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !913, file: !91, line: 307, baseType: !921, size: 32, offset: 288)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_connection_state_t", file: !91, line: 292, baseType: !737)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !913, file: !91, line: 309, baseType: !96, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wb_reqlen", scope: !913, file: !91, line: 310, baseType: !116, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !913, file: !91, line: 311, baseType: !97, size: 448, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !913, file: !91, line: 313, baseType: !114, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !913, file: !91, line: 315, baseType: !89, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "fdn", scope: !913, file: !91, line: 316, baseType: !295, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !913, file: !91, line: 317, baseType: !87, size: 32, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !913, file: !91, line: 318, baseType: !87, size: 32, offset: 1120)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !913, file: !91, line: 320, baseType: !439, size: 32, offset: 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "reconnects", scope: !913, file: !91, line: 321, baseType: !87, size: 32, offset: 1184)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !913, file: !91, line: 323, baseType: !87, size: 32, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "send_content_body", scope: !913, file: !91, line: 324, baseType: !87, size: 32, offset: 1248)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !913, file: !91, line: 326, baseType: !935, size: 448, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_response_opts", file: !598, line: 36, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "http_response_opts_t", file: !598, line: 24, size: 448, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !952}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "max_per_read", scope: !936, file: !598, line: 25, baseType: !49, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "fdfmt", scope: !936, file: !598, line: 26, baseType: !87, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "backend", scope: !936, file: !598, line: 27, baseType: !87, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "authorizer", scope: !936, file: !598, line: 28, baseType: !87, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "simple_accum", scope: !936, file: !598, line: 29, baseType: !202, size: 8, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "local_redir", scope: !936, file: !598, line: 30, baseType: !202, size: 8, offset: 136)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "xsendfile_allow", scope: !936, file: !598, line: 31, baseType: !202, size: 8, offset: 144)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "xsendfile_docroot", scope: !936, file: !598, line: 32, baseType: !144, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !936, file: !598, line: 33, baseType: !28, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !936, file: !598, line: 34, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!12, !169, !951, !114, !454}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !936, file: !598, line: 35, baseType: !953, size: 64, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!12, !169, !951}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !913, file: !91, line: 327, baseType: !867, size: 384, offset: 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !913, file: !91, line: 329, baseType: !169, size: 64, offset: 2112)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !913, file: !91, line: 330, baseType: !284, size: 64, offset: 2176)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_data", scope: !913, file: !91, line: 331, baseType: !834, size: 64, offset: 2240)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "read_ts", scope: !913, file: !91, line: 332, baseType: !418, size: 64, offset: 2304)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "write_ts", scope: !913, file: !91, line: 333, baseType: !418, size: 64, offset: 2368)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "stdin_append", scope: !913, file: !91, line: 334, baseType: !963, size: 64, offset: 2432)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!12, !912}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "create_env", scope: !913, file: !91, line: 335, baseType: !963, size: 64, offset: 2496)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !913, file: !91, line: 336, baseType: !912, size: 64, offset: 2560)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !91, line: 337, baseType: !912, size: 64, offset: 2624)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "backend_error", scope: !913, file: !91, line: 338, baseType: !970, size: 64, offset: 2688)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !912}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "handler_ctx_free", scope: !913, file: !91, line: 339, baseType: !449, size: 64, offset: 2752)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "unixsocket", scope: !887, file: !91, line: 140, baseType: !476, size: 64, offset: 832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "bin_path", scope: !887, file: !91, line: 149, baseType: !476, size: 64, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bin_env", scope: !887, file: !91, line: 156, baseType: !144, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bin_env_copy", scope: !887, file: !91, line: 158, baseType: !144, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "docroot", scope: !887, file: !91, line: 169, baseType: !476, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "break_scriptfilename_for_php", scope: !887, file: !91, line: 178, baseType: !318, size: 16, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "check_local", scope: !887, file: !91, line: 187, baseType: !318, size: 16, offset: 1168)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fix_root_path_name", scope: !887, file: !91, line: 197, baseType: !318, size: 16, offset: 1184)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "xsendfile_allow", scope: !887, file: !91, line: 204, baseType: !318, size: 16, offset: 1200)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "xsendfile_docroot", scope: !887, file: !91, line: 205, baseType: !144, size: 64, offset: 1216)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "max_id", scope: !887, file: !91, line: 207, baseType: !49, size: 32, offset: 1280)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "strip_request_uri", scope: !887, file: !91, line: 209, baseType: !476, size: 64, offset: 1344)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fin_propagate", scope: !887, file: !91, line: 211, baseType: !318, size: 16, offset: 1408)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "kill_signal", scope: !887, file: !91, line: 212, baseType: !318, size: 16, offset: 1424)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "listen_backlog", scope: !887, file: !91, line: 217, baseType: !87, size: 32, offset: 1440)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !887, file: !91, line: 218, baseType: !87, size: 32, offset: 1472)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !887, file: !91, line: 220, baseType: !991, size: 128, offset: 1536)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_array", file: !91, line: 15, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 12, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !992, file: !91, line: 13, baseType: !687, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !992, file: !91, line: 14, baseType: !49, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !878, file: !91, line: 249, baseType: !49, size: 32, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !878, file: !91, line: 250, baseType: !49, size: 32, offset: 288)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !873, file: !91, line: 255, baseType: !49, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !873, file: !91, line: 256, baseType: !49, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "exts_auth", scope: !868, file: !91, line: 269, baseType: !871, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "exts_resp", scope: !868, file: !91, line: 270, baseType: !871, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mapping", scope: !868, file: !91, line: 271, baseType: !144, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !868, file: !91, line: 272, baseType: !87, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !868, file: !91, line: 273, baseType: !87, size: 32, offset: 288)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !868, file: !91, line: 274, baseType: !87, size: 32, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !836, file: !91, line: 282, baseType: !867, size: 384, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_string", file: !32, line: 37, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 33, size: 384, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1009, file: !32, line: 34, baseType: !42, size: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1009, file: !32, line: 34, baseType: !55, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1009, file: !32, line: 34, baseType: !75, size: 32, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !1009, file: !32, line: 35, baseType: !87, size: 32, offset: 224)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1009, file: !32, line: 36, baseType: !42, size: 128, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "handler_ctx", file: !2, line: 179, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 169, size: 4032, elements: !1019)
!1019 = !{!1020, !1022, !1042, !1043, !1044, !1045, !1046}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1018, file: !2, line: 170, baseType: !1021, size: 2816)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "gw_handler_ctx", file: !91, line: 340, baseType: !913)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1018, file: !2, line: 171, baseType: !1023, size: 448, offset: 2816)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "mod_wstunnel_frame_t", file: !2, line: 167, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 162, size: 448, elements: !1025)
!1025 = !{!1026, !1028, !1037, !1039, !1040, !1041}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1024, file: !2, line: 163, baseType: !1027, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "mod_wstunnel_frame_state_t", file: !2, line: 136, baseType: !807)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !1024, file: !2, line: 164, baseType: !1029, size: 192, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "mod_wstunnel_frame_control_t", file: !2, line: 160, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 150, size: 192, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "siz", scope: !1030, file: !2, line: 151, baseType: !531, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "siz_cnt", scope: !1030, file: !2, line: 154, baseType: !87, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cnt", scope: !1030, file: !2, line: 155, baseType: !87, size: 32, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1030, file: !2, line: 157, baseType: !1036, size: 32, offset: 128)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32, elements: !370)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1024, file: !2, line: 165, baseType: !1038, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "mod_wstunnel_frame_type_t", file: !2, line: 148, baseType: !814)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type_before", scope: !1024, file: !2, line: 165, baseType: !1038, size: 32, offset: 288)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "type_backend", scope: !1024, file: !2, line: 165, baseType: !1038, size: 32, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1024, file: !2, line: 166, baseType: !114, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "hybivers", scope: !1018, file: !2, line: 173, baseType: !87, size: 32, offset: 3264)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ping_ts", scope: !1018, file: !2, line: 174, baseType: !418, size: 64, offset: 3328)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "subproto", scope: !1018, file: !2, line: 175, baseType: !87, size: 32, offset: 3392)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "errh", scope: !1018, file: !2, line: 177, baseType: !148, size: 64, offset: 3456)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !1018, file: !2, line: 178, baseType: !1047, size: 512, offset: 3520)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin_config", file: !2, line: 117, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 112, size: 512, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1048, file: !2, line: 113, baseType: !867, size: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "origins", scope: !1048, file: !2, line: 114, baseType: !144, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "frame_type", scope: !1048, file: !2, line: 115, baseType: !15, size: 32, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ping_interval", scope: !1048, file: !2, line: 116, baseType: !318, size: 16, offset: 480)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1055 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1056 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!1059 = !{!0, !1060, !1063, !1068, !1073, !1078, !1083, !1085, !7, !1090, !1095, !1100, !1105, !1110, !1115, !1118, !1123, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1143, !1148, !1153, !1158, !1160, !1165, !1167, !1169, !1174, !1179, !1181, !1186, !1191, !1196, !1201, !1203, !1205, !1207, !1209, !1211, !1216, !1230, !1232, !1237, !1239, !1241, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1271, !1273, !1275, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1296, !1301, !1306, !1311, !1313, !1315, !1320, !1322, !1324, !1326, !1328, !1330, !1332}
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !1062, isLocal: true, isDefinition: true)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !362)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !1065, isLocal: true, isDefinition: true)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 17)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !1070, isLocal: true, isDefinition: true)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 15)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !1075, isLocal: true, isDefinition: true)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 24)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !1080, isLocal: true, isDefinition: true)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 20)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !1065, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !1087, isLocal: true, isDefinition: true)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !1088)
!1088 = !{!1089}
!1089 = !DISubrange(count: 23)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !1092, isLocal: true, isDefinition: true)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 13)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !1097, isLocal: true, isDefinition: true)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1264, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 158)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !1102, isLocal: true, isDefinition: true)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 66)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !1107, isLocal: true, isDefinition: true)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 7)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !1112, isLocal: true, isDefinition: true)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 30)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !366)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !1120, isLocal: true, isDefinition: true)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 10)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !1125, isLocal: true, isDefinition: true)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 11)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !1117, isLocal: true, isDefinition: true)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !1087, isLocal: true, isDefinition: true)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !1117, isLocal: true, isDefinition: true)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !1087, isLocal: true, isDefinition: true)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 515, type: !1087, isLocal: true, isDefinition: true)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !1107, isLocal: true, isDefinition: true)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !1142, isLocal: true, isDefinition: true)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !615)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !1145, isLocal: true, isDefinition: true)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 35)
!1148 = !DIGlobalVariableExpression(var: !1149, expr: !DIExpression())
!1149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !1150, isLocal: true, isDefinition: true)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 33)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !1155, isLocal: true, isDefinition: true)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 22)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !1112, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !1162, isLocal: true, isDefinition: true)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 27)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !1112, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !1107, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !1171, isLocal: true, isDefinition: true)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 21)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !1176, isLocal: true, isDefinition: true)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 25)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 434, type: !1112, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !1183, isLocal: true, isDefinition: true)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 38)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !1188, isLocal: true, isDefinition: true)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 41)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !1193, isLocal: true, isDefinition: true)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 28)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1061, type: !1198, isLocal: true, isDefinition: true)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 12)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1065, type: !400, isLocal: true, isDefinition: true)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression())
!1204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1069, type: !1198, isLocal: true, isDefinition: true)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1073, type: !1198, isLocal: true, isDefinition: true)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1078, type: !1092, isLocal: true, isDefinition: true)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1082, type: !1065, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1108, type: !1213, isLocal: true, isDefinition: true)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 44)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(name: "head", scope: !1218, file: !2, line: 893, type: !164, isLocal: true, isDefinition: true)
!1218 = distinct !DISubprogram(name: "send_ietf_00", scope: !2, file: !2, line: 892, type: !1219, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!87, !1016, !1038, !163, !454}
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1228, !1229}
!1222 = !DILocalVariable(name: "hctx", arg: 1, scope: !1218, file: !2, line: 892, type: !1016)
!1223 = !DILocalVariable(name: "type", arg: 2, scope: !1218, file: !2, line: 892, type: !1038)
!1224 = !DILocalVariable(name: "payload", arg: 3, scope: !1218, file: !2, line: 892, type: !163)
!1225 = !DILocalVariable(name: "siz", arg: 4, scope: !1218, file: !2, line: 892, type: !454)
!1226 = !DILocalVariable(name: "r", scope: !1218, file: !2, line: 895, type: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1228 = !DILocalVariable(name: "mem", scope: !1218, file: !2, line: 896, type: !47)
!1229 = !DILocalVariable(name: "len", scope: !1218, file: !2, line: 897, type: !454)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "tail", scope: !1218, file: !2, line: 894, type: !164, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 925, type: !1234, isLocal: true, isDefinition: true)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 19)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !1150, isLocal: true, isDefinition: true)
!1239 = !DIGlobalVariableExpression(var: !1240, expr: !DIExpression())
!1240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !1183, isLocal: true, isDefinition: true)
!1241 = !DIGlobalVariableExpression(var: !1242, expr: !DIExpression())
!1242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !1243, isLocal: true, isDefinition: true)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 5)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1125, type: !1188, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1132, type: !1171, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1138, type: !1062, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1165, type: !1062, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1174, type: !1087, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1180, type: !1193, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1210, type: !1150, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1244, type: !1075, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1251, type: !1087, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1255, type: !1087, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1259, type: !1268, isLocal: true, isDefinition: true)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 26)
!1271 = !DIGlobalVariableExpression(var: !1272, expr: !DIExpression())
!1272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1285, type: !1075, isLocal: true, isDefinition: true)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1290, type: !1234, isLocal: true, isDefinition: true)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 955, type: !1065, isLocal: true, isDefinition: true)
!1277 = !DIGlobalVariableExpression(var: !1278, expr: !DIExpression())
!1278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 959, type: !1234, isLocal: true, isDefinition: true)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 966, type: !1150, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 977, type: !1193, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1005, type: !1176, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1010, type: !1155, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1020, type: !1234, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 844, type: !1075, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 872, type: !1293, isLocal: true, isDefinition: true)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 32)
!1296 = !DIGlobalVariableExpression(var: !1297, expr: !DIExpression())
!1297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !1298, isLocal: true, isDefinition: true)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 18)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 799, type: !1303, isLocal: true, isDefinition: true)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 29)
!1306 = !DIGlobalVariableExpression(var: !1307, expr: !DIExpression())
!1307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 807, type: !1308, isLocal: true, isDefinition: true)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 37)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !1171, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !1087, isLocal: true, isDefinition: true)
!1315 = !DIGlobalVariableExpression(var: !1316, expr: !DIExpression())
!1316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !1317, isLocal: true, isDefinition: true)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 6)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !1107, isLocal: true, isDefinition: true)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 776, type: !1317, isLocal: true, isDefinition: true)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !1234, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !1234, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !1243, isLocal: true, isDefinition: true)
!1330 = !DIGlobalVariableExpression(var: !1331, expr: !DIExpression())
!1331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !1087, isLocal: true, isDefinition: true)
!1332 = !DIGlobalVariableExpression(var: !1333, expr: !DIExpression())
!1333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 628, type: !1243, isLocal: true, isDefinition: true)
!1334 = !{!1335, !1336, !1337, !1350, !1352, !1355, !1357, !1363, !1366}
!1335 = !DILocalVariable(name: "srv", arg: 1, scope: !9, file: !2, line: 240, type: !22)
!1336 = !DILocalVariable(name: "p_d", arg: 2, scope: !9, file: !2, line: 240, type: !28)
!1337 = !DILocalVariable(name: "p", scope: !9, file: !2, line: 268, type: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin_data", file: !2, line: 124, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin_data", file: !2, line: 119, size: 1280, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1341, file: !2, line: 120, baseType: !87, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nconfig", scope: !1341, file: !2, line: 120, baseType: !87, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cvlist", scope: !1341, file: !2, line: 120, baseType: !841, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1341, file: !2, line: 120, baseType: !864, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "srv_pid", scope: !1341, file: !2, line: 121, baseType: !439, size: 32, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !1341, file: !2, line: 122, baseType: !1047, size: 512, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !1341, file: !2, line: 123, baseType: !1047, size: 512, offset: 768)
!1350 = !DILocalVariable(name: "i", scope: !1351, file: !2, line: 274, type: !87)
!1351 = distinct !DILexicalBlock(scope: !9, file: !2, line: 274, column: 5)
!1352 = !DILocalVariable(name: "cpv", scope: !1353, file: !2, line: 275, type: !841)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 274, column: 62)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 274, column: 5)
!1355 = !DILocalVariable(name: "gw", scope: !1353, file: !2, line: 276, type: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!1357 = !DILocalVariable(name: "j", scope: !1358, file: !2, line: 311, type: !49)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 311, column: 17)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 278, column: 32)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 277, column: 40)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 277, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 277, column: 9)
!1363 = !DILocalVariable(name: "origin", scope: !1364, file: !2, line: 312, type: !114)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 311, column: 63)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 311, column: 17)
!1366 = !DILocalVariable(name: "cpv", scope: !1367, file: !2, line: 339, type: !1369)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 338, column: 47)
!1368 = distinct !DILexicalBlock(scope: !9, file: !2, line: 338, column: 9)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 1024, elements: !366)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_plugin_keys_t", file: !464, line: 132, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 126, size: 128, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1374, file: !464, line: 127, baseType: !163, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "klen", scope: !1374, file: !464, line: 128, baseType: !202, size: 8, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1374, file: !464, line: 130, baseType: !202, size: 8, offset: 72)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1374, file: !464, line: 131, baseType: !202, size: 8, offset: 80)
!1380 = !{i32 7, !"Dwarf Version", i32 5}
!1381 = !{i32 2, !"Debug Info Version", i32 3}
!1382 = !{i32 1, !"wchar_size", i32 4}
!1383 = !{i32 8, !"PIC Level", i32 2}
!1384 = !{i32 7, !"uwtable", i32 2}
!1385 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1386 = distinct !DISubprogram(name: "mod_wstunnel_plugin_init", scope: !2, file: !2, line: 640, type: !1387, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1390)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!87, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "p", arg: 1, scope: !1386, file: !2, line: 640, type: !1389)
!1392 = !{!1393, !1393, i64 0}
!1393 = !{!"any pointer", !1394, i64 0}
!1394 = !{!"omnipotent char", !1395, i64 0}
!1395 = !{!"Simple C/C++ TBAA"}
!1396 = !DILocation(line: 640, column: 38, scope: !1386)
!1397 = !DILocation(line: 641, column: 5, scope: !1386)
!1398 = !DILocation(line: 641, column: 8, scope: !1386)
!1399 = !DILocation(line: 641, column: 26, scope: !1386)
!1400 = !{!1401, !1402, i64 184}
!1401 = !{!"plugin", !1393, i64 0, !1393, i64 8, !1393, i64 16, !1393, i64 24, !1393, i64 32, !1393, i64 40, !1393, i64 48, !1393, i64 56, !1393, i64 64, !1393, i64 72, !1393, i64 80, !1393, i64 88, !1393, i64 96, !1393, i64 104, !1393, i64 112, !1393, i64 120, !1393, i64 128, !1393, i64 136, !1393, i64 144, !1393, i64 152, !1393, i64 160, !1393, i64 168, !1393, i64 176, !1402, i64 184, !1393, i64 192}
!1402 = !{!"long", !1394, i64 0}
!1403 = !DILocation(line: 642, column: 5, scope: !1386)
!1404 = !DILocation(line: 642, column: 8, scope: !1386)
!1405 = !DILocation(line: 642, column: 26, scope: !1386)
!1406 = !{!1401, !1393, i64 176}
!1407 = !DILocation(line: 643, column: 5, scope: !1386)
!1408 = !DILocation(line: 643, column: 8, scope: !1386)
!1409 = !DILocation(line: 643, column: 26, scope: !1386)
!1410 = !{!1401, !1393, i64 136}
!1411 = !DILocation(line: 644, column: 5, scope: !1386)
!1412 = !DILocation(line: 644, column: 8, scope: !1386)
!1413 = !DILocation(line: 644, column: 26, scope: !1386)
!1414 = !{!1401, !1393, i64 168}
!1415 = !DILocation(line: 645, column: 5, scope: !1386)
!1416 = !DILocation(line: 645, column: 8, scope: !1386)
!1417 = !DILocation(line: 645, column: 26, scope: !1386)
!1418 = !{!1401, !1393, i64 152}
!1419 = !DILocation(line: 646, column: 5, scope: !1386)
!1420 = !DILocation(line: 646, column: 8, scope: !1386)
!1421 = !DILocation(line: 646, column: 29, scope: !1386)
!1422 = !{!1401, !1393, i64 80}
!1423 = !DILocation(line: 647, column: 5, scope: !1386)
!1424 = !DILocation(line: 647, column: 8, scope: !1386)
!1425 = !DILocation(line: 647, column: 26, scope: !1386)
!1426 = !{!1401, !1393, i64 16}
!1427 = !DILocation(line: 648, column: 5, scope: !1386)
!1428 = !DILocation(line: 648, column: 8, scope: !1386)
!1429 = !DILocation(line: 648, column: 26, scope: !1386)
!1430 = !{!1401, !1393, i64 64}
!1431 = !DILocation(line: 649, column: 5, scope: !1386)
!1432 = !DILocation(line: 649, column: 8, scope: !1386)
!1433 = !DILocation(line: 649, column: 26, scope: !1386)
!1434 = !{!1401, !1393, i64 112}
!1435 = !DILocation(line: 650, column: 5, scope: !1386)
!1436 = !DILocation(line: 650, column: 8, scope: !1386)
!1437 = !DILocation(line: 650, column: 26, scope: !1386)
!1438 = !{!1401, !1393, i64 128}
!1439 = !DILocation(line: 651, column: 5, scope: !1386)
!1440 = distinct !DISubprogram(name: "mod_wstunnel_init", scope: !2, file: !2, line: 188, type: !443, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689)
!1441 = !DILocation(line: 189, column: 12, scope: !1440)
!1442 = !DILocation(line: 189, column: 5, scope: !1440)
!1443 = !DILocation(line: 240, column: 1, scope: !9)
!1444 = !DILocation(line: 268, column: 5, scope: !9)
!1445 = !DILocation(line: 268, column: 25, scope: !9)
!1446 = !DILocation(line: 268, column: 29, scope: !9)
!1447 = !DILocation(line: 269, column: 36, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !9, file: !2, line: 269, column: 9)
!1449 = !DILocation(line: 269, column: 41, scope: !1448)
!1450 = !DILocation(line: 269, column: 10, scope: !1448)
!1451 = !DILocation(line: 269, column: 9, scope: !9)
!1452 = !DILocation(line: 270, column: 9, scope: !1448)
!1453 = !DILocation(line: 274, column: 10, scope: !1351)
!1454 = !DILocation(line: 274, column: 14, scope: !1351)
!1455 = !DILocation(line: 274, column: 19, scope: !1351)
!1456 = !DILocation(line: 274, column: 22, scope: !1351)
!1457 = !{!1458, !1393, i64 8}
!1458 = !{!"plugin_data", !1459, i64 0, !1459, i64 4, !1393, i64 8, !1393, i64 16, !1459, i64 24, !1460, i64 32, !1460, i64 96}
!1459 = !{!"int", !1394, i64 0}
!1460 = !{!"", !1461, i64 0, !1393, i64 48, !1459, i64 56, !1462, i64 60}
!1461 = !{!"gw_plugin_config", !1393, i64 0, !1393, i64 8, !1393, i64 16, !1393, i64 24, !1459, i64 32, !1459, i64 36, !1459, i64 40}
!1462 = !{!"short", !1394, i64 0}
!1463 = !DILocation(line: 274, column: 32, scope: !1351)
!1464 = !{!1394, !1394, i64 0}
!1465 = !DILocation(line: 274, column: 18, scope: !1351)
!1466 = !{!1459, !1459, i64 0}
!1467 = !DILocation(line: 274, column: 41, scope: !1354)
!1468 = !DILocation(line: 274, column: 45, scope: !1354)
!1469 = !DILocation(line: 274, column: 48, scope: !1354)
!1470 = !{!1458, !1459, i64 4}
!1471 = !DILocation(line: 274, column: 43, scope: !1354)
!1472 = !DILocation(line: 274, column: 5, scope: !1351)
!1473 = !DILocation(line: 275, column: 9, scope: !1353)
!1474 = !DILocation(line: 275, column: 32, scope: !1353)
!1475 = !DILocation(line: 275, column: 38, scope: !1353)
!1476 = !DILocation(line: 275, column: 41, scope: !1353)
!1477 = !DILocation(line: 275, column: 50, scope: !1353)
!1478 = !DILocation(line: 275, column: 53, scope: !1353)
!1479 = !DILocation(line: 275, column: 60, scope: !1353)
!1480 = !DILocation(line: 275, column: 63, scope: !1353)
!1481 = !DILocation(line: 275, column: 48, scope: !1353)
!1482 = !DILocation(line: 276, column: 9, scope: !1353)
!1483 = !DILocation(line: 276, column: 27, scope: !1353)
!1484 = !DILocation(line: 277, column: 9, scope: !1353)
!1485 = !DILocation(line: 277, column: 22, scope: !1361)
!1486 = !DILocation(line: 277, column: 27, scope: !1361)
!1487 = !{!1488, !1459, i64 0}
!1488 = !{!"config_plugin_value", !1459, i64 0, !1394, i64 4, !1394, i64 8}
!1489 = !DILocation(line: 277, column: 19, scope: !1361)
!1490 = !DILocation(line: 277, column: 9, scope: !1362)
!1491 = !DILocation(line: 278, column: 21, scope: !1360)
!1492 = !DILocation(line: 278, column: 26, scope: !1360)
!1493 = !DILocation(line: 278, column: 13, scope: !1360)
!1494 = !DILocation(line: 280, column: 22, scope: !1359)
!1495 = !DILocation(line: 280, column: 20, scope: !1359)
!1496 = !DILocation(line: 281, column: 46, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 281, column: 21)
!1498 = !DILocation(line: 281, column: 69, scope: !1497)
!1499 = !DILocation(line: 281, column: 72, scope: !1497)
!1500 = !DILocation(line: 281, column: 77, scope: !1497)
!1501 = !DILocation(line: 281, column: 79, scope: !1497)
!1502 = !DILocation(line: 282, column: 46, scope: !1497)
!1503 = !DILocation(line: 282, column: 57, scope: !1497)
!1504 = !DILocation(line: 282, column: 62, scope: !1497)
!1505 = !DILocation(line: 282, column: 53, scope: !1497)
!1506 = !DILocation(line: 282, column: 68, scope: !1497)
!1507 = !{!1508, !1393, i64 0}
!1508 = !{!"", !1393, i64 0, !1394, i64 8, !1394, i64 9, !1394, i64 10}
!1509 = !DILocation(line: 281, column: 22, scope: !1497)
!1510 = !DILocation(line: 281, column: 21, scope: !1359)
!1511 = !DILocation(line: 283, column: 43, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 282, column: 72)
!1513 = !DILocation(line: 283, column: 21, scope: !1512)
!1514 = !DILocation(line: 284, column: 21, scope: !1512)
!1515 = !DILocation(line: 289, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 289, column: 21)
!1517 = !DILocation(line: 289, column: 25, scope: !1516)
!1518 = !{!1461, !1393, i64 8}
!1519 = !DILocation(line: 289, column: 35, scope: !1516)
!1520 = !DILocation(line: 289, column: 38, scope: !1516)
!1521 = !DILocation(line: 289, column: 42, scope: !1516)
!1522 = !DILocation(line: 289, column: 53, scope: !1516)
!1523 = !{!1524, !1459, i64 8}
!1524 = !{!"", !1393, i64 0, !1459, i64 8, !1459, i64 12}
!1525 = !DILocation(line: 289, column: 21, scope: !1359)
!1526 = !DILocation(line: 290, column: 31, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 289, column: 59)
!1528 = !DILocation(line: 290, column: 36, scope: !1527)
!1529 = !{!1530, !1393, i64 96}
!1530 = !{!"server", !1393, i64 0, !1393, i64 8, !1459, i64 16, !1393, i64 24, !1393, i64 32, !1393, i64 40, !1393, i64 48, !1459, i64 56, !1459, i64 60, !1459, i64 64, !1459, i64 68, !1459, i64 72, !1459, i64 76, !1393, i64 80, !1393, i64 88, !1393, i64 96, !1402, i64 104, !1394, i64 112, !1393, i64 136, !1531, i64 144, !1393, i64 312, !1533, i64 320, !1533, i64 336, !1533, i64 352, !1402, i64 368, !1402, i64 376, !1459, i64 384, !1459, i64 388, !1459, i64 392, !1459, i64 396, !1393, i64 400, !1393, i64 408, !1393, i64 416}
!1531 = !{!"", !1459, i64 0, !1394, i64 4, !1394, i64 5, !1394, i64 6, !1394, i64 7, !1394, i64 8, !1394, i64 9, !1394, i64 10, !1394, i64 11, !1462, i64 12, !1462, i64 14, !1462, i64 16, !1462, i64 18, !1462, i64 20, !1459, i64 24, !1393, i64 32, !1394, i64 40, !1394, i64 41, !1394, i64 42, !1394, i64 43, !1394, i64 44, !1394, i64 45, !1394, i64 46, !1394, i64 47, !1393, i64 48, !1393, i64 56, !1393, i64 64, !1393, i64 72, !1393, i64 80, !1393, i64 88, !1393, i64 96, !1393, i64 104, !1393, i64 112, !1393, i64 120, !1393, i64 128, !1393, i64 136, !1532, i64 144}
!1532 = !{!"", !1393, i64 0, !1393, i64 8, !1459, i64 16, !1459, i64 20}
!1533 = !{!"", !1393, i64 0, !1459, i64 8}
!1534 = !DILocation(line: 292, column: 66, scope: !1527)
!1535 = !DILocation(line: 292, column: 71, scope: !1527)
!1536 = !DILocation(line: 292, column: 62, scope: !1527)
!1537 = !DILocation(line: 292, column: 77, scope: !1527)
!1538 = !DILocation(line: 290, column: 21, scope: !1527)
!1539 = !DILocation(line: 293, column: 43, scope: !1527)
!1540 = !DILocation(line: 293, column: 21, scope: !1527)
!1541 = !DILocation(line: 294, column: 21, scope: !1527)
!1542 = !DILocation(line: 296, column: 28, scope: !1359)
!1543 = !DILocation(line: 296, column: 17, scope: !1359)
!1544 = !DILocation(line: 296, column: 22, scope: !1359)
!1545 = !DILocation(line: 296, column: 26, scope: !1359)
!1546 = !DILocation(line: 297, column: 17, scope: !1359)
!1547 = !DILocation(line: 297, column: 22, scope: !1359)
!1548 = !DILocation(line: 297, column: 28, scope: !1359)
!1549 = !{!1488, !1394, i64 4}
!1550 = !DILocation(line: 298, column: 17, scope: !1359)
!1551 = !DILocation(line: 300, column: 66, scope: !1359)
!1552 = !DILocation(line: 300, column: 71, scope: !1359)
!1553 = !DILocation(line: 300, column: 76, scope: !1359)
!1554 = !DILocation(line: 300, column: 78, scope: !1359)
!1555 = !DILocation(line: 300, column: 42, scope: !1359)
!1556 = !DILocation(line: 300, column: 17, scope: !1359)
!1557 = !DILocation(line: 300, column: 22, scope: !1359)
!1558 = !DILocation(line: 300, column: 26, scope: !1359)
!1559 = !DILocation(line: 301, column: 17, scope: !1359)
!1560 = !DILocation(line: 304, column: 17, scope: !1359)
!1561 = !DILocation(line: 308, column: 40, scope: !1359)
!1562 = !DILocation(line: 308, column: 45, scope: !1359)
!1563 = !DILocation(line: 308, column: 47, scope: !1359)
!1564 = !DILocation(line: 308, column: 19, scope: !1359)
!1565 = !DILocation(line: 307, column: 17, scope: !1359)
!1566 = !DILocation(line: 307, column: 22, scope: !1359)
!1567 = !DILocation(line: 307, column: 26, scope: !1359)
!1568 = !DILocation(line: 309, column: 17, scope: !1359)
!1569 = !DILocation(line: 311, column: 22, scope: !1358)
!1570 = !DILocation(line: 311, column: 31, scope: !1358)
!1571 = !DILocation(line: 311, column: 38, scope: !1365)
!1572 = !DILocation(line: 311, column: 42, scope: !1365)
!1573 = !DILocation(line: 311, column: 47, scope: !1365)
!1574 = !DILocation(line: 311, column: 49, scope: !1365)
!1575 = !DILocation(line: 311, column: 52, scope: !1365)
!1576 = !{!1532, !1459, i64 16}
!1577 = !DILocation(line: 311, column: 40, scope: !1365)
!1578 = !DILocation(line: 311, column: 17, scope: !1358)
!1579 = !DILocation(line: 312, column: 21, scope: !1364)
!1580 = !DILocation(line: 312, column: 29, scope: !1364)
!1581 = !DILocation(line: 312, column: 55, scope: !1364)
!1582 = !DILocation(line: 312, column: 60, scope: !1364)
!1583 = !DILocation(line: 312, column: 62, scope: !1364)
!1584 = !DILocation(line: 312, column: 65, scope: !1364)
!1585 = !{!1532, !1393, i64 0}
!1586 = !DILocation(line: 312, column: 70, scope: !1364)
!1587 = !DILocation(line: 312, column: 75, scope: !1364)
!1588 = !DILocation(line: 313, column: 41, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 313, column: 25)
!1590 = !DILocation(line: 313, column: 25, scope: !1589)
!1591 = !DILocation(line: 313, column: 25, scope: !1364)
!1592 = !DILocation(line: 314, column: 35, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 313, column: 50)
!1594 = !DILocation(line: 314, column: 40, scope: !1593)
!1595 = !DILocation(line: 315, column: 64, scope: !1593)
!1596 = !DILocation(line: 315, column: 69, scope: !1593)
!1597 = !DILocation(line: 315, column: 60, scope: !1593)
!1598 = !DILocation(line: 315, column: 75, scope: !1593)
!1599 = !DILocation(line: 314, column: 25, scope: !1593)
!1600 = !DILocation(line: 316, column: 25, scope: !1593)
!1601 = !DILocation(line: 318, column: 17, scope: !1365)
!1602 = !DILocation(line: 318, column: 17, scope: !1364)
!1603 = !DILocation(line: 311, column: 58, scope: !1365)
!1604 = !DILocation(line: 311, column: 17, scope: !1365)
!1605 = distinct !{!1605, !1578, !1606, !1607}
!1606 = !DILocation(line: 318, column: 17, scope: !1358)
!1607 = !{!"llvm.loop.mustprogress"}
!1608 = !DILocation(line: 319, column: 17, scope: !1359)
!1609 = !DILocation(line: 323, column: 17, scope: !1359)
!1610 = !DILocation(line: 325, column: 9, scope: !1360)
!1611 = !DILocation(line: 277, column: 33, scope: !1361)
!1612 = !DILocation(line: 277, column: 9, scope: !1361)
!1613 = distinct !{!1613, !1490, !1614, !1607}
!1614 = !DILocation(line: 325, column: 9, scope: !1362)
!1615 = !DILocation(line: 328, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 328, column: 13)
!1617 = !DILocation(line: 328, column: 16, scope: !1616)
!1618 = !DILocation(line: 328, column: 19, scope: !1616)
!1619 = !DILocation(line: 328, column: 23, scope: !1616)
!1620 = !{!1461, !1393, i64 0}
!1621 = !DILocation(line: 328, column: 13, scope: !1353)
!1622 = !DILocation(line: 329, column: 39, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 328, column: 29)
!1624 = !DILocation(line: 329, column: 43, scope: !1623)
!1625 = !DILocation(line: 329, column: 13, scope: !1623)
!1626 = !DILocation(line: 330, column: 9, scope: !1623)
!1627 = !DILocation(line: 331, column: 5, scope: !1354)
!1628 = !DILocation(line: 331, column: 5, scope: !1353)
!1629 = !DILocation(line: 274, column: 57, scope: !1354)
!1630 = !DILocation(line: 274, column: 5, scope: !1354)
!1631 = distinct !{!1631, !1472, !1632, !1607}
!1632 = !DILocation(line: 331, column: 5, scope: !1351)
!1633 = !DILocation(line: 335, column: 5, scope: !9)
!1634 = !DILocation(line: 335, column: 8, scope: !9)
!1635 = !DILocation(line: 335, column: 17, scope: !9)
!1636 = !DILocation(line: 335, column: 31, scope: !9)
!1637 = !{!1458, !1462, i64 156}
!1638 = !DILocation(line: 338, column: 9, scope: !1368)
!1639 = !DILocation(line: 338, column: 12, scope: !1368)
!1640 = !DILocation(line: 338, column: 20, scope: !1368)
!1641 = !DILocation(line: 338, column: 24, scope: !1368)
!1642 = !DILocation(line: 338, column: 27, scope: !1368)
!1643 = !DILocation(line: 338, column: 30, scope: !1368)
!1644 = !DILocation(line: 338, column: 38, scope: !1368)
!1645 = !DILocation(line: 338, column: 9, scope: !9)
!1646 = !DILocation(line: 339, column: 9, scope: !1367)
!1647 = !DILocation(line: 339, column: 38, scope: !1367)
!1648 = !DILocation(line: 339, column: 44, scope: !1367)
!1649 = !DILocation(line: 339, column: 47, scope: !1367)
!1650 = !DILocation(line: 339, column: 56, scope: !1367)
!1651 = !DILocation(line: 339, column: 59, scope: !1367)
!1652 = !DILocation(line: 339, column: 67, scope: !1367)
!1653 = !DILocation(line: 339, column: 54, scope: !1367)
!1654 = !DILocation(line: 340, column: 19, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 340, column: 13)
!1656 = !DILocation(line: 340, column: 24, scope: !1655)
!1657 = !DILocation(line: 340, column: 16, scope: !1655)
!1658 = !DILocation(line: 340, column: 13, scope: !1367)
!1659 = !DILocation(line: 341, column: 40, scope: !1655)
!1660 = !DILocation(line: 341, column: 43, scope: !1655)
!1661 = !DILocation(line: 341, column: 53, scope: !1655)
!1662 = !DILocation(line: 341, column: 13, scope: !1655)
!1663 = !DILocation(line: 342, column: 5, scope: !1368)
!1664 = !DILocation(line: 342, column: 5, scope: !1367)
!1665 = !DILocation(line: 344, column: 5, scope: !9)
!1666 = !DILocation(line: 345, column: 1, scope: !9)
!1667 = !DISubprogram(name: "gw_handle_request_reset", scope: !91, file: !91, line: 363, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = distinct !DISubprogram(name: "mod_wstunnel_check_extension", scope: !2, file: !2, line: 558, type: !1669, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!12, !1227, !28}
!1671 = !{!1672, !1673, !1674, !1675, !1676}
!1672 = !DILocalVariable(name: "r", arg: 1, scope: !1668, file: !2, line: 558, type: !1227)
!1673 = !DILocalVariable(name: "p_d", arg: 2, scope: !1668, file: !2, line: 558, type: !28)
!1674 = !DILocalVariable(name: "p", scope: !1668, file: !2, line: 559, type: !1339)
!1675 = !DILocalVariable(name: "rc", scope: !1668, file: !2, line: 560, type: !12)
!1676 = !DILocalVariable(name: "vb", scope: !1677, file: !2, line: 578, type: !476)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 568, column: 8)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 564, column: 7)
!1679 = !DILocation(line: 558, column: 66, scope: !1668)
!1680 = !DILocation(line: 558, column: 75, scope: !1668)
!1681 = !DILocation(line: 559, column: 5, scope: !1668)
!1682 = !DILocation(line: 559, column: 18, scope: !1668)
!1683 = !DILocation(line: 559, column: 22, scope: !1668)
!1684 = !DILocation(line: 560, column: 5, scope: !1668)
!1685 = !DILocation(line: 560, column: 15, scope: !1668)
!1686 = !DILocation(line: 562, column: 17, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 562, column: 9)
!1688 = !DILocation(line: 562, column: 20, scope: !1687)
!1689 = !{!1690, !1393, i64 40}
!1690 = !{!"request_st", !1394, i64 0, !1459, i64 4, !1459, i64 8, !1459, i64 12, !1459, i64 16, !1459, i64 20, !1462, i64 24, !1394, i64 26, !1394, i64 28, !1394, i64 32, !1393, i64 40, !1393, i64 48, !1393, i64 56, !1459, i64 64, !1393, i64 72, !1393, i64 80, !1393, i64 88, !1691, i64 96, !1459, i64 216, !1402, i64 224, !1532, i64 232, !1692, i64 256, !1692, i64 320, !1532, i64 384, !1402, i64 408, !1402, i64 416, !1402, i64 424, !1393, i64 432, !1393, i64 440, !1524, i64 448, !1524, i64 464, !1524, i64 480, !1524, i64 496, !1459, i64 512, !1402, i64 520, !1532, i64 528, !1394, i64 552, !1394, i64 553, !1394, i64 554, !1394, i64 555, !1394, i64 556, !1394, i64 557, !1394, i64 558, !1394, i64 559, !1393, i64 560, !1393, i64 568, !1402, i64 576, !1402, i64 584, !1693, i64 592, !1459, i64 608, !1394, i64 612, !1694, i64 616, !1694, i64 672, !1694, i64 728, !1393, i64 784, !1459, i64 792, !1459, i64 796}
!1691 = !{!"request_config", !1393, i64 0, !1459, i64 8, !1459, i64 12, !1393, i64 16, !1393, i64 24, !1393, i64 32, !1393, i64 40, !1459, i64 48, !1462, i64 52, !1462, i64 54, !1462, i64 56, !1462, i64 58, !1462, i64 60, !1462, i64 62, !1459, i64 64, !1459, i64 64, !1459, i64 64, !1459, i64 64, !1459, i64 64, !1459, i64 64, !1459, i64 65, !1459, i64 65, !1459, i64 65, !1459, i64 65, !1459, i64 65, !1459, i64 65, !1459, i64 66, !1459, i64 66, !1459, i64 66, !1459, i64 66, !1459, i64 66, !1459, i64 68, !1459, i64 72, !1393, i64 80, !1393, i64 88, !1393, i64 96, !1393, i64 104, !1393, i64 112}
!1692 = !{!"", !1524, i64 0, !1524, i64 16, !1524, i64 32, !1524, i64 48}
!1693 = !{!"timespec", !1402, i64 0, !1402, i64 8}
!1694 = !{!"chunkqueue", !1393, i64 0, !1393, i64 8, !1402, i64 16, !1402, i64 24, !1393, i64 32, !1402, i64 40, !1459, i64 48}
!1695 = !DILocation(line: 562, column: 14, scope: !1687)
!1696 = !DILocation(line: 562, column: 9, scope: !1668)
!1697 = !DILocation(line: 563, column: 9, scope: !1687)
!1698 = !DILocation(line: 564, column: 7, scope: !1678)
!1699 = !DILocation(line: 564, column: 10, scope: !1678)
!1700 = !{!1690, !1394, i64 32}
!1701 = !DILocation(line: 564, column: 23, scope: !1678)
!1702 = !DILocation(line: 564, column: 7, scope: !1668)
!1703 = !DILocation(line: 565, column: 10, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 565, column: 9)
!1705 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 564, column: 43)
!1706 = !DILocation(line: 565, column: 13, scope: !1704)
!1707 = !{!1690, !1459, i64 796}
!1708 = !DILocation(line: 565, column: 9, scope: !1705)
!1709 = !DILocation(line: 566, column: 9, scope: !1704)
!1710 = !DILocation(line: 567, column: 3, scope: !1705)
!1711 = !DILocation(line: 569, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 569, column: 9)
!1713 = !DILocation(line: 569, column: 12, scope: !1712)
!1714 = !{!1690, !1394, i64 28}
!1715 = !DILocation(line: 569, column: 24, scope: !1712)
!1716 = !DILocation(line: 569, column: 9, scope: !1677)
!1717 = !DILocation(line: 570, column: 9, scope: !1712)
!1718 = !DILocation(line: 571, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 571, column: 9)
!1720 = !DILocation(line: 571, column: 12, scope: !1719)
!1721 = !DILocation(line: 571, column: 25, scope: !1719)
!1722 = !DILocation(line: 571, column: 9, scope: !1677)
!1723 = !DILocation(line: 572, column: 9, scope: !1719)
!1724 = !DILocation(line: 578, column: 5, scope: !1677)
!1725 = !DILocation(line: 578, column: 19, scope: !1677)
!1726 = !DILocation(line: 579, column: 34, scope: !1677)
!1727 = !DILocation(line: 579, column: 10, scope: !1677)
!1728 = !DILocation(line: 579, column: 8, scope: !1677)
!1729 = !DILocation(line: 580, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 580, column: 9)
!1731 = !DILocation(line: 580, column: 14, scope: !1730)
!1732 = !DILocation(line: 581, column: 9, scope: !1730)
!1733 = !DILocation(line: 581, column: 44, scope: !1730)
!1734 = !{!1524, !1393, i64 0}
!1735 = !DILocation(line: 581, column: 13, scope: !1730)
!1736 = !DILocation(line: 580, column: 9, scope: !1677)
!1737 = !DILocation(line: 582, column: 9, scope: !1730)
!1738 = !DILocation(line: 583, column: 34, scope: !1677)
!1739 = !DILocation(line: 583, column: 10, scope: !1677)
!1740 = !DILocation(line: 583, column: 8, scope: !1677)
!1741 = !DILocation(line: 584, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 584, column: 9)
!1743 = !DILocation(line: 584, column: 14, scope: !1742)
!1744 = !DILocation(line: 585, column: 9, scope: !1742)
!1745 = !DILocation(line: 585, column: 44, scope: !1742)
!1746 = !DILocation(line: 585, column: 13, scope: !1742)
!1747 = !DILocation(line: 584, column: 9, scope: !1677)
!1748 = !DILocation(line: 586, column: 9, scope: !1742)
!1749 = !DILocation(line: 587, column: 3, scope: !1678)
!1750 = !DILocation(line: 589, column: 31, scope: !1668)
!1751 = !DILocation(line: 589, column: 34, scope: !1668)
!1752 = !DILocation(line: 589, column: 5, scope: !1668)
!1753 = !DILocation(line: 590, column: 17, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 590, column: 9)
!1755 = !DILocation(line: 590, column: 20, scope: !1754)
!1756 = !DILocation(line: 590, column: 25, scope: !1754)
!1757 = !DILocation(line: 590, column: 28, scope: !1754)
!1758 = !{!1458, !1393, i64 32}
!1759 = !DILocation(line: 590, column: 14, scope: !1754)
!1760 = !DILocation(line: 590, column: 9, scope: !1668)
!1761 = !DILocation(line: 590, column: 34, scope: !1754)
!1762 = !DILocation(line: 592, column: 29, scope: !1668)
!1763 = !DILocation(line: 592, column: 50, scope: !1668)
!1764 = !DILocation(line: 592, column: 10, scope: !1668)
!1765 = !DILocation(line: 592, column: 8, scope: !1668)
!1766 = !DILocation(line: 593, column: 30, scope: !1668)
!1767 = !DILocation(line: 593, column: 27, scope: !1668)
!1768 = !DILocation(line: 593, column: 33, scope: !1668)
!1769 = !DILocation(line: 593, column: 36, scope: !1668)
!1770 = !DILocation(line: 593, column: 39, scope: !1668)
!1771 = !DILocation(line: 593, column: 57, scope: !1668)
!1772 = !DILocation(line: 593, column: 60, scope: !1668)
!1773 = !{!1458, !1393, i64 16}
!1774 = !DILocation(line: 593, column: 54, scope: !1668)
!1775 = !DILocation(line: 593, column: 12, scope: !1668)
!1776 = !DILocation(line: 594, column: 32, scope: !1668)
!1777 = !DILocation(line: 594, column: 35, scope: !1668)
!1778 = !DILocation(line: 594, column: 9, scope: !1668)
!1779 = !DILocation(line: 595, column: 9, scope: !1668)
!1780 = !DILocation(line: 593, column: 5, scope: !1668)
!1781 = !DILocation(line: 596, column: 1, scope: !1668)
!1782 = distinct !DISubprogram(name: "mod_wstunnel_handle_trigger", scope: !2, file: !2, line: 598, type: !10, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1783)
!1783 = !{!1784, !1785, !1786, !1790, !1792, !1794, !1797}
!1784 = !DILocalVariable(name: "srv", arg: 1, scope: !1782, file: !2, line: 598, type: !22)
!1785 = !DILocalVariable(name: "p_d", arg: 2, scope: !1782, file: !2, line: 598, type: !28)
!1786 = !DILocalVariable(name: "p", scope: !1782, file: !2, line: 599, type: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1790 = !DILocalVariable(name: "cur_ts", scope: !1782, file: !2, line: 600, type: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!1792 = !DILocalVariable(name: "con", scope: !1793, file: !2, line: 604, type: !284)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 604, column: 5)
!1794 = !DILocalVariable(name: "r", scope: !1795, file: !2, line: 605, type: !1227)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 604, column: 62)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 604, column: 5)
!1797 = !DILocalVariable(name: "hctx", scope: !1795, file: !2, line: 606, type: !1016)
!1798 = !DILocation(line: 598, column: 1, scope: !1782)
!1799 = !DILocation(line: 599, column: 5, scope: !1782)
!1800 = !DILocation(line: 599, column: 31, scope: !1782)
!1801 = !DILocation(line: 599, column: 35, scope: !1782)
!1802 = !DILocation(line: 600, column: 5, scope: !1782)
!1803 = !DILocation(line: 600, column: 25, scope: !1782)
!1804 = !DILocation(line: 600, column: 34, scope: !1782)
!1805 = !{!1402, !1402, i64 0}
!1806 = !DILocation(line: 600, column: 53, scope: !1782)
!1807 = !DILocation(line: 602, column: 23, scope: !1782)
!1808 = !DILocation(line: 602, column: 28, scope: !1782)
!1809 = !DILocation(line: 602, column: 5, scope: !1782)
!1810 = !DILocation(line: 604, column: 10, scope: !1793)
!1811 = !DILocation(line: 604, column: 22, scope: !1793)
!1812 = !DILocation(line: 604, column: 28, scope: !1793)
!1813 = !DILocation(line: 604, column: 33, scope: !1793)
!1814 = !{!1530, !1393, i64 80}
!1815 = !DILocation(line: 604, column: 40, scope: !1796)
!1816 = !DILocation(line: 604, column: 5, scope: !1793)
!1817 = !DILocation(line: 604, column: 5, scope: !1796)
!1818 = !DILocation(line: 605, column: 9, scope: !1795)
!1819 = !DILocation(line: 605, column: 28, scope: !1795)
!1820 = !DILocation(line: 605, column: 33, scope: !1795)
!1821 = !DILocation(line: 605, column: 38, scope: !1795)
!1822 = !DILocation(line: 606, column: 9, scope: !1795)
!1823 = !DILocation(line: 606, column: 22, scope: !1795)
!1824 = !DILocation(line: 606, column: 29, scope: !1795)
!1825 = !DILocation(line: 606, column: 32, scope: !1795)
!1826 = !{!1690, !1393, i64 48}
!1827 = !DILocation(line: 606, column: 43, scope: !1795)
!1828 = !DILocation(line: 606, column: 46, scope: !1795)
!1829 = !{!1458, !1459, i64 0}
!1830 = !DILocation(line: 607, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 607, column: 13)
!1832 = !DILocation(line: 607, column: 18, scope: !1831)
!1833 = !DILocation(line: 607, column: 26, scope: !1831)
!1834 = !DILocation(line: 607, column: 29, scope: !1831)
!1835 = !DILocation(line: 607, column: 32, scope: !1831)
!1836 = !DILocation(line: 607, column: 50, scope: !1831)
!1837 = !DILocation(line: 607, column: 53, scope: !1831)
!1838 = !DILocation(line: 607, column: 47, scope: !1831)
!1839 = !DILocation(line: 607, column: 13, scope: !1795)
!1840 = !DILocation(line: 608, column: 13, scope: !1831)
!1841 = !DILocation(line: 610, column: 13, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 610, column: 13)
!1843 = !DILocation(line: 610, column: 19, scope: !1842)
!1844 = !DILocation(line: 610, column: 22, scope: !1842)
!1845 = !{!1846, !1394, i64 36}
!1846 = !{!"", !1847, i64 0, !1849, i64 352, !1459, i64 408, !1402, i64 416, !1459, i64 424, !1393, i64 432, !1460, i64 440}
!1847 = !{!"gw_handler_ctx", !1393, i64 0, !1393, i64 8, !1393, i64 16, !1393, i64 24, !1462, i64 32, !1394, i64 36, !1393, i64 40, !1402, i64 48, !1694, i64 56, !1393, i64 112, !1393, i64 120, !1393, i64 128, !1459, i64 136, !1459, i64 140, !1459, i64 144, !1459, i64 148, !1459, i64 152, !1459, i64 156, !1848, i64 160, !1461, i64 216, !1393, i64 264, !1393, i64 272, !1393, i64 280, !1402, i64 288, !1402, i64 296, !1393, i64 304, !1393, i64 312, !1393, i64 320, !1393, i64 328, !1393, i64 336, !1393, i64 344}
!1848 = !{!"http_response_opts_t", !1459, i64 0, !1459, i64 4, !1459, i64 8, !1459, i64 12, !1394, i64 16, !1394, i64 17, !1394, i64 18, !1393, i64 24, !1393, i64 32, !1393, i64 40, !1393, i64 48}
!1849 = !{!"", !1394, i64 0, !1850, i64 8, !1394, i64 32, !1394, i64 36, !1394, i64 40, !1393, i64 48}
!1850 = !{!"", !1402, i64 0, !1459, i64 8, !1459, i64 12, !1394, i64 16}
!1851 = !DILocation(line: 610, column: 28, scope: !1842)
!1852 = !DILocation(line: 610, column: 46, scope: !1842)
!1853 = !DILocation(line: 610, column: 49, scope: !1842)
!1854 = !DILocation(line: 610, column: 55, scope: !1842)
!1855 = !DILocation(line: 610, column: 58, scope: !1842)
!1856 = !DILocation(line: 610, column: 64, scope: !1842)
!1857 = !DILocation(line: 610, column: 13, scope: !1795)
!1858 = !DILocation(line: 611, column: 13, scope: !1842)
!1859 = !DILocation(line: 613, column: 13, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 613, column: 13)
!1861 = !DILocation(line: 613, column: 22, scope: !1860)
!1862 = !DILocation(line: 613, column: 27, scope: !1860)
!1863 = !{!1864, !1402, i64 1056}
!1864 = !{!"connection", !1690, i64 0, !1393, i64 800, !1459, i64 808, !1393, i64 816, !1393, i64 824, !1394, i64 832, !1394, i64 833, !1394, i64 834, !1394, i64 835, !1462, i64 836, !1462, i64 838, !1393, i64 840, !1393, i64 848, !1402, i64 856, !1393, i64 864, !1393, i64 872, !1393, i64 880, !1393, i64 888, !1393, i64 896, !1393, i64 904, !1393, i64 912, !1394, i64 920, !1524, i64 1032, !1393, i64 1048, !1402, i64 1056, !1402, i64 1064, !1402, i64 1072, !1402, i64 1080, !1459, i64 1088, !1459, i64 1092, !1393, i64 1096, !1393, i64 1104}
!1865 = !DILocation(line: 613, column: 20, scope: !1860)
!1866 = !DILocation(line: 613, column: 42, scope: !1860)
!1867 = !DILocation(line: 613, column: 45, scope: !1860)
!1868 = !DILocation(line: 613, column: 50, scope: !1860)
!1869 = !{!1690, !1462, i64 152}
!1870 = !DILocation(line: 613, column: 40, scope: !1860)
!1871 = !DILocation(line: 613, column: 13, scope: !1795)
!1872 = !DILocation(line: 614, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 614, column: 13)
!1874 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 613, column: 65)
!1875 = !{!1846, !1459, i64 256}
!1876 = !DILocation(line: 614, column: 13, scope: !1874)
!1877 = !DILocation(line: 614, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 614, column: 13)
!1879 = !{!1846, !1393, i64 432}
!1880 = !{!1864, !1459, i64 808}
!1881 = !DILocation(line: 615, column: 37, scope: !1874)
!1882 = !DILocation(line: 615, column: 13, scope: !1874)
!1883 = !DILocation(line: 616, column: 37, scope: !1874)
!1884 = !DILocation(line: 616, column: 40, scope: !1874)
!1885 = !DILocation(line: 616, column: 13, scope: !1874)
!1886 = !DILocation(line: 617, column: 13, scope: !1874)
!1887 = !DILocation(line: 620, column: 33, scope: !1874)
!1888 = !DILocation(line: 620, column: 13, scope: !1874)
!1889 = !DILocation(line: 620, column: 18, scope: !1874)
!1890 = !DILocation(line: 620, column: 31, scope: !1874)
!1891 = !DILocation(line: 621, column: 13, scope: !1874)
!1892 = !DILocation(line: 624, column: 18, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 624, column: 13)
!1894 = !DILocation(line: 624, column: 24, scope: !1893)
!1895 = !{!1846, !1459, i64 408}
!1896 = !DILocation(line: 624, column: 15, scope: !1893)
!1897 = !DILocation(line: 625, column: 13, scope: !1893)
!1898 = !DILocation(line: 625, column: 16, scope: !1893)
!1899 = !DILocation(line: 625, column: 22, scope: !1893)
!1900 = !DILocation(line: 625, column: 27, scope: !1893)
!1901 = !{!1846, !1462, i64 500}
!1902 = !DILocation(line: 625, column: 41, scope: !1893)
!1903 = !DILocation(line: 626, column: 13, scope: !1893)
!1904 = !DILocation(line: 626, column: 25, scope: !1893)
!1905 = !DILocation(line: 626, column: 31, scope: !1893)
!1906 = !DILocation(line: 626, column: 36, scope: !1893)
!1907 = !DILocation(line: 626, column: 16, scope: !1893)
!1908 = !DILocation(line: 626, column: 52, scope: !1893)
!1909 = !DILocation(line: 626, column: 58, scope: !1893)
!1910 = !{!1846, !1402, i64 416}
!1911 = !DILocation(line: 626, column: 50, scope: !1893)
!1912 = !DILocation(line: 626, column: 68, scope: !1893)
!1913 = !DILocation(line: 626, column: 66, scope: !1893)
!1914 = !DILocation(line: 624, column: 13, scope: !1795)
!1915 = !DILocation(line: 627, column: 29, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 626, column: 76)
!1917 = !DILocation(line: 627, column: 13, scope: !1916)
!1918 = !DILocation(line: 627, column: 19, scope: !1916)
!1919 = !DILocation(line: 627, column: 27, scope: !1916)
!1920 = !DILocation(line: 628, column: 37, scope: !1916)
!1921 = !DILocation(line: 628, column: 13, scope: !1916)
!1922 = !DILocation(line: 629, column: 13, scope: !1916)
!1923 = !DILocation(line: 630, column: 13, scope: !1916)
!1924 = !DILocation(line: 632, column: 5, scope: !1796)
!1925 = !DILocation(line: 632, column: 5, scope: !1795)
!1926 = !DILocation(line: 604, column: 51, scope: !1796)
!1927 = !DILocation(line: 604, column: 56, scope: !1796)
!1928 = !{!1864, !1393, i64 1096}
!1929 = !DILocation(line: 604, column: 49, scope: !1796)
!1930 = distinct !{!1930, !1816, !1931, !1607}
!1931 = !DILocation(line: 632, column: 5, scope: !1793)
!1932 = !DILocation(line: 635, column: 1, scope: !1782)
!1933 = !DILocation(line: 634, column: 5, scope: !1782)
!1934 = !DISubprogram(name: "ck_calloc", scope: !1935, file: !1935, line: 78, type: !1936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DIFile(filename: "spack-src/src/ck.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "734bf373e0ae340c3941f9a893874c6a")
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!28, !454, !454}
!1938 = !DISubprogram(name: "config_plugin_values_init", scope: !464, file: !464, line: 146, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!87, !22, !28, !1941, !163}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1942 = !DISubprogram(name: "gw_set_defaults_backend", scope: !91, file: !91, line: 357, type: !1943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!87, !22, !834, !144, !1356, !87, !163}
!1945 = !DISubprogram(name: "gw_plugin_config_free", scope: !91, file: !91, line: 348, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1356}
!1948 = !DISubprogram(name: "log_error", scope: !1949, file: !1949, line: 23, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1949 = !DIFile(filename: "spack-src/src/log.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "67f73ee27baf1f1bbfd9fefdd3d8ba02")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !148, !163, !15, !163, null}
!1952 = !DISubprogram(name: "gw_get_defaults_balance", scope: !91, file: !91, line: 360, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!87, !22, !476}
!1955 = !DISubprogram(name: "buffer_eq_icase_slen", scope: !43, file: !43, line: 155, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!87, !1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!1961 = distinct !DISubprogram(name: "buffer_is_blank", scope: !43, file: !43, line: 275, type: !1962, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!87, !476}
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "b", arg: 1, scope: !1961, file: !43, line: 275, type: !476)
!1966 = !DILocation(line: 275, column: 49, scope: !1961)
!1967 = !DILocation(line: 276, column: 12, scope: !1961)
!1968 = !DILocation(line: 276, column: 15, scope: !1961)
!1969 = !DILocation(line: 276, column: 20, scope: !1961)
!1970 = !DILocation(line: 276, column: 5, scope: !1961)
!1971 = !DISubprogram(name: "gw_exts_clear_check_local", scope: !91, file: !91, line: 354, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !871}
!1974 = distinct !DISubprogram(name: "mod_wstunnel_merge_config", scope: !2, file: !2, line: 226, type: !1975, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !1979)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1977, !1369}
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1979 = !{!1980, !1981}
!1980 = !DILocalVariable(name: "pconf", arg: 1, scope: !1974, file: !2, line: 226, type: !1977)
!1981 = !DILocalVariable(name: "cpv", arg: 2, scope: !1974, file: !2, line: 226, type: !1369)
!1982 = !DILocation(line: 226, column: 61, scope: !1974)
!1983 = !DILocation(line: 226, column: 97, scope: !1974)
!1984 = !DILocation(line: 227, column: 5, scope: !1974)
!1985 = !DILocation(line: 228, column: 39, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 227, column: 8)
!1987 = !DILocation(line: 228, column: 46, scope: !1986)
!1988 = !DILocation(line: 228, column: 9, scope: !1986)
!1989 = !DILocation(line: 229, column: 5, scope: !1986)
!1990 = !DILocation(line: 229, column: 15, scope: !1974)
!1991 = !DILocation(line: 229, column: 23, scope: !1974)
!1992 = !DILocation(line: 229, column: 28, scope: !1974)
!1993 = distinct !{!1993, !1984, !1994, !1607}
!1994 = !DILocation(line: 229, column: 33, scope: !1974)
!1995 = !DILocation(line: 230, column: 1, scope: !1974)
!1996 = distinct !DISubprogram(name: "mod_wstunnel_merge_config_cpv", scope: !2, file: !2, line: 192, type: !1997, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2000)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1977, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!2000 = !{!2001, !2002, !2003}
!2001 = !DILocalVariable(name: "pconf", arg: 1, scope: !1996, file: !2, line: 192, type: !1977)
!2002 = !DILocalVariable(name: "cpv", arg: 2, scope: !1996, file: !2, line: 192, type: !1999)
!2003 = !DILocalVariable(name: "gw", scope: !2004, file: !2, line: 196, type: !2007)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 195, column: 43)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 195, column: 13)
!2006 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 193, column: 24)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!2008 = !DILocation(line: 192, column: 65, scope: !1996)
!2009 = !DILocation(line: 192, column: 108, scope: !1996)
!2010 = !DILocation(line: 193, column: 13, scope: !1996)
!2011 = !DILocation(line: 193, column: 18, scope: !1996)
!2012 = !DILocation(line: 193, column: 5, scope: !1996)
!2013 = !DILocation(line: 195, column: 13, scope: !2005)
!2014 = !DILocation(line: 195, column: 18, scope: !2005)
!2015 = !DILocation(line: 195, column: 24, scope: !2005)
!2016 = !DILocation(line: 195, column: 13, scope: !2006)
!2017 = !DILocation(line: 196, column: 13, scope: !2004)
!2018 = !DILocation(line: 196, column: 38, scope: !2004)
!2019 = !DILocation(line: 196, column: 43, scope: !2004)
!2020 = !DILocation(line: 196, column: 48, scope: !2004)
!2021 = !DILocation(line: 196, column: 50, scope: !2004)
!2022 = !DILocation(line: 197, column: 35, scope: !2004)
!2023 = !DILocation(line: 197, column: 39, scope: !2004)
!2024 = !DILocation(line: 197, column: 13, scope: !2004)
!2025 = !DILocation(line: 197, column: 20, scope: !2004)
!2026 = !DILocation(line: 197, column: 23, scope: !2004)
!2027 = !DILocation(line: 197, column: 33, scope: !2004)
!2028 = !{!1460, !1393, i64 0}
!2029 = !DILocation(line: 198, column: 35, scope: !2004)
!2030 = !DILocation(line: 198, column: 39, scope: !2004)
!2031 = !DILocation(line: 198, column: 13, scope: !2004)
!2032 = !DILocation(line: 198, column: 20, scope: !2004)
!2033 = !DILocation(line: 198, column: 23, scope: !2004)
!2034 = !DILocation(line: 198, column: 33, scope: !2004)
!2035 = !{!1460, !1393, i64 8}
!2036 = !DILocation(line: 199, column: 35, scope: !2004)
!2037 = !DILocation(line: 199, column: 39, scope: !2004)
!2038 = !{!1461, !1393, i64 16}
!2039 = !DILocation(line: 199, column: 13, scope: !2004)
!2040 = !DILocation(line: 199, column: 20, scope: !2004)
!2041 = !DILocation(line: 199, column: 23, scope: !2004)
!2042 = !DILocation(line: 199, column: 33, scope: !2004)
!2043 = !{!1460, !1393, i64 16}
!2044 = !DILocation(line: 200, column: 9, scope: !2005)
!2045 = !DILocation(line: 200, column: 9, scope: !2004)
!2046 = !DILocation(line: 201, column: 9, scope: !2006)
!2047 = !DILocation(line: 204, column: 38, scope: !2006)
!2048 = !DILocation(line: 204, column: 43, scope: !2006)
!2049 = !DILocation(line: 204, column: 45, scope: !2006)
!2050 = !DILocation(line: 204, column: 13, scope: !2006)
!2051 = !DILocation(line: 204, column: 20, scope: !2006)
!2052 = !DILocation(line: 204, column: 23, scope: !2006)
!2053 = !DILocation(line: 204, column: 31, scope: !2006)
!2054 = !{!1460, !1459, i64 32}
!2055 = !DILocation(line: 205, column: 9, scope: !2006)
!2056 = !DILocation(line: 207, column: 32, scope: !2006)
!2057 = !DILocation(line: 207, column: 37, scope: !2006)
!2058 = !DILocation(line: 207, column: 39, scope: !2006)
!2059 = !DILocation(line: 207, column: 9, scope: !2006)
!2060 = !DILocation(line: 207, column: 16, scope: !2006)
!2061 = !DILocation(line: 207, column: 19, scope: !2006)
!2062 = !DILocation(line: 207, column: 25, scope: !2006)
!2063 = !{!1460, !1459, i64 40}
!2064 = !DILocation(line: 208, column: 9, scope: !2006)
!2065 = !DILocation(line: 210, column: 33, scope: !2006)
!2066 = !DILocation(line: 210, column: 38, scope: !2006)
!2067 = !DILocation(line: 210, column: 40, scope: !2006)
!2068 = !DILocation(line: 210, column: 9, scope: !2006)
!2069 = !DILocation(line: 210, column: 16, scope: !2006)
!2070 = !DILocation(line: 210, column: 19, scope: !2006)
!2071 = !DILocation(line: 210, column: 31, scope: !2006)
!2072 = !{!1460, !1393, i64 24}
!2073 = !DILocation(line: 211, column: 9, scope: !2006)
!2074 = !DILocation(line: 213, column: 29, scope: !2006)
!2075 = !DILocation(line: 213, column: 34, scope: !2006)
!2076 = !DILocation(line: 213, column: 36, scope: !2006)
!2077 = !DILocation(line: 213, column: 9, scope: !2006)
!2078 = !DILocation(line: 213, column: 16, scope: !2006)
!2079 = !DILocation(line: 213, column: 27, scope: !2006)
!2080 = !{!1460, !1459, i64 56}
!2081 = !DILocation(line: 214, column: 9, scope: !2006)
!2082 = !DILocation(line: 216, column: 26, scope: !2006)
!2083 = !DILocation(line: 216, column: 31, scope: !2006)
!2084 = !DILocation(line: 216, column: 33, scope: !2006)
!2085 = !DILocation(line: 216, column: 9, scope: !2006)
!2086 = !DILocation(line: 216, column: 16, scope: !2006)
!2087 = !DILocation(line: 216, column: 24, scope: !2006)
!2088 = !{!1460, !1393, i64 48}
!2089 = !DILocation(line: 217, column: 9, scope: !2006)
!2090 = !DILocation(line: 219, column: 32, scope: !2006)
!2091 = !DILocation(line: 219, column: 37, scope: !2006)
!2092 = !DILocation(line: 219, column: 39, scope: !2006)
!2093 = !DILocation(line: 219, column: 9, scope: !2006)
!2094 = !DILocation(line: 219, column: 16, scope: !2006)
!2095 = !DILocation(line: 219, column: 30, scope: !2006)
!2096 = !{!1460, !1462, i64 60}
!2097 = !DILocation(line: 220, column: 9, scope: !2006)
!2098 = !DILocation(line: 222, column: 9, scope: !2006)
!2099 = !DILocation(line: 224, column: 1, scope: !1996)
!2100 = !DISubprogram(name: "http_header_request_get", scope: !745, file: !745, line: 125, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!114, !2103, !744, !163, !49}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2105 = !DISubprogram(name: "http_header_str_contains_token", scope: !745, file: !745, line: 111, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!87, !163, !49, !163, !49}
!2108 = distinct !DISubprogram(name: "buffer_clen", scope: !43, file: !43, line: 283, type: !2109, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!49, !476}
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "b", arg: 1, scope: !2108, file: !43, line: 283, type: !476)
!2113 = !DILocation(line: 283, column: 51, scope: !2108)
!2114 = !DILocation(line: 284, column: 12, scope: !2108)
!2115 = !DILocation(line: 284, column: 15, scope: !2108)
!2116 = !DILocation(line: 284, column: 28, scope: !2108)
!2117 = !DILocation(line: 284, column: 31, scope: !2108)
!2118 = !DILocation(line: 284, column: 25, scope: !2108)
!2119 = !DILocation(line: 284, column: 20, scope: !2108)
!2120 = !DILocation(line: 284, column: 5, scope: !2108)
!2121 = distinct !DISubprogram(name: "mod_wstunnel_patch_config", scope: !2, file: !2, line: 232, type: !2122, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !1227, !1338}
!2124 = !{!2125, !2126, !2127, !2129}
!2125 = !DILocalVariable(name: "r", arg: 1, scope: !2121, file: !2, line: 232, type: !1227)
!2126 = !DILocalVariable(name: "p", arg: 2, scope: !2121, file: !2, line: 232, type: !1338)
!2127 = !DILocalVariable(name: "i", scope: !2128, file: !2, line: 234, type: !87)
!2128 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 234, column: 5)
!2129 = !DILocalVariable(name: "used", scope: !2128, file: !2, line: 234, type: !87)
!2130 = !DILocation(line: 232, column: 58, scope: !2121)
!2131 = !DILocation(line: 232, column: 81, scope: !2121)
!2132 = !DILocation(line: 233, column: 13, scope: !2121)
!2133 = !DILocation(line: 233, column: 16, scope: !2121)
!2134 = !DILocation(line: 233, column: 23, scope: !2121)
!2135 = !DILocation(line: 233, column: 26, scope: !2121)
!2136 = !DILocation(line: 233, column: 5, scope: !2121)
!2137 = !DILocation(line: 234, column: 10, scope: !2128)
!2138 = !DILocation(line: 234, column: 14, scope: !2128)
!2139 = !DILocation(line: 234, column: 21, scope: !2128)
!2140 = !DILocation(line: 234, column: 28, scope: !2128)
!2141 = !DILocation(line: 234, column: 31, scope: !2128)
!2142 = !DILocation(line: 234, column: 40, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 234, column: 5)
!2144 = !DILocation(line: 234, column: 44, scope: !2143)
!2145 = !DILocation(line: 234, column: 42, scope: !2143)
!2146 = !DILocation(line: 234, column: 5, scope: !2128)
!2147 = !DILocation(line: 234, column: 5, scope: !2143)
!2148 = !DILocation(line: 235, column: 31, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 235, column: 13)
!2150 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 234, column: 55)
!2151 = !DILocation(line: 235, column: 44, scope: !2149)
!2152 = !DILocation(line: 235, column: 47, scope: !2149)
!2153 = !DILocation(line: 235, column: 54, scope: !2149)
!2154 = !DILocation(line: 235, column: 57, scope: !2149)
!2155 = !DILocation(line: 235, column: 13, scope: !2149)
!2156 = !DILocation(line: 235, column: 13, scope: !2150)
!2157 = !DILocation(line: 236, column: 40, scope: !2149)
!2158 = !DILocation(line: 236, column: 43, scope: !2149)
!2159 = !DILocation(line: 236, column: 49, scope: !2149)
!2160 = !DILocation(line: 236, column: 52, scope: !2149)
!2161 = !DILocation(line: 236, column: 59, scope: !2149)
!2162 = !DILocation(line: 236, column: 62, scope: !2149)
!2163 = !DILocation(line: 236, column: 69, scope: !2149)
!2164 = !DILocation(line: 236, column: 72, scope: !2149)
!2165 = !DILocation(line: 236, column: 58, scope: !2149)
!2166 = !DILocation(line: 236, column: 13, scope: !2149)
!2167 = !DILocation(line: 237, column: 5, scope: !2150)
!2168 = !DILocation(line: 234, column: 50, scope: !2143)
!2169 = distinct !{!2169, !2146, !2170, !1607}
!2170 = !DILocation(line: 237, column: 5, scope: !2128)
!2171 = !DILocation(line: 238, column: 1, scope: !2121)
!2172 = !DISubprogram(name: "gw_check_extension", scope: !91, file: !91, line: 362, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!12, !169, !834, !87, !454}
!2175 = distinct !DISubprogram(name: "wstunnel_handler_setup", scope: !2, file: !2, line: 481, type: !2176, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!12, !1227, !1338}
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2187}
!2179 = !DILocalVariable(name: "r", arg: 1, scope: !2175, file: !2, line: 481, type: !1227)
!2180 = !DILocalVariable(name: "p", arg: 2, scope: !2175, file: !2, line: 481, type: !1338)
!2181 = !DILocalVariable(name: "hctx", scope: !2175, file: !2, line: 482, type: !1016)
!2182 = !DILocalVariable(name: "hybivers", scope: !2175, file: !2, line: 483, type: !87)
!2183 = !DILocalVariable(name: "binary", scope: !2175, file: !2, line: 512, type: !15)
!2184 = !DILocalVariable(name: "vb", scope: !2185, file: !2, line: 514, type: !476)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 513, column: 18)
!2186 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 513, column: 9)
!2187 = !DILocalVariable(name: "s", scope: !2188, file: !2, line: 517, type: !163)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 517, column: 13)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 516, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 516, column: 13)
!2191 = !DILocation(line: 481, column: 61, scope: !2175)
!2192 = !DILocation(line: 481, column: 84, scope: !2175)
!2193 = !DILocation(line: 482, column: 5, scope: !2175)
!2194 = !DILocation(line: 482, column: 18, scope: !2175)
!2195 = !DILocation(line: 482, column: 25, scope: !2175)
!2196 = !DILocation(line: 482, column: 28, scope: !2175)
!2197 = !DILocation(line: 482, column: 39, scope: !2175)
!2198 = !DILocation(line: 482, column: 42, scope: !2175)
!2199 = !DILocation(line: 483, column: 5, scope: !2175)
!2200 = !DILocation(line: 483, column: 9, scope: !2175)
!2201 = !DILocation(line: 484, column: 18, scope: !2175)
!2202 = !DILocation(line: 484, column: 21, scope: !2175)
!2203 = !DILocation(line: 484, column: 26, scope: !2175)
!2204 = !{!1690, !1393, i64 96}
!2205 = !DILocation(line: 484, column: 5, scope: !2175)
!2206 = !DILocation(line: 484, column: 11, scope: !2175)
!2207 = !DILocation(line: 484, column: 16, scope: !2175)
!2208 = !DILocation(line: 485, column: 5, scope: !2175)
!2209 = !DILocation(line: 485, column: 11, scope: !2175)
!2210 = !DILocation(line: 485, column: 18, scope: !2175)
!2211 = !DILocation(line: 485, column: 21, scope: !2175)
!2212 = !{i64 0, i64 8, !1392, i64 8, i64 8, !1392, i64 16, i64 8, !1392, i64 24, i64 8, !1392, i64 32, i64 4, !1466, i64 36, i64 4, !1466, i64 40, i64 4, !1466, i64 48, i64 8, !1392, i64 56, i64 4, !1466, i64 60, i64 2, !2213}
!2213 = !{!1462, !1462, i64 0}
!2214 = !DILocation(line: 486, column: 39, scope: !2175)
!2215 = !DILocation(line: 486, column: 42, scope: !2175)
!2216 = !DILocation(line: 486, column: 16, scope: !2175)
!2217 = !DILocation(line: 486, column: 14, scope: !2175)
!2218 = !DILocation(line: 487, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 487, column: 9)
!2220 = !DILocation(line: 487, column: 18, scope: !2219)
!2221 = !DILocation(line: 487, column: 9, scope: !2175)
!2222 = !DILocation(line: 488, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 487, column: 23)
!2224 = !DILocation(line: 488, column: 12, scope: !2223)
!2225 = !DILocation(line: 488, column: 27, scope: !2223)
!2226 = !DILocation(line: 489, column: 9, scope: !2223)
!2227 = !DILocation(line: 491, column: 22, scope: !2175)
!2228 = !DILocation(line: 491, column: 5, scope: !2175)
!2229 = !DILocation(line: 491, column: 11, scope: !2175)
!2230 = !DILocation(line: 491, column: 20, scope: !2175)
!2231 = !DILocation(line: 492, column: 14, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 492, column: 9)
!2233 = !DILocation(line: 492, column: 11, scope: !2232)
!2234 = !DILocation(line: 492, column: 9, scope: !2175)
!2235 = !DILocation(line: 493, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 493, column: 9)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 492, column: 24)
!2238 = !DILocation(line: 493, column: 9, scope: !2237)
!2239 = !DILocation(line: 493, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 493, column: 9)
!2241 = !DILocation(line: 494, column: 5, scope: !2237)
!2242 = !DILocation(line: 496, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 496, column: 9)
!2244 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 495, column: 10)
!2245 = !DILocation(line: 496, column: 9, scope: !2244)
!2246 = !DILocation(line: 496, column: 9, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 496, column: 9)
!2248 = !DILocation(line: 499, column: 5, scope: !2175)
!2249 = !DILocation(line: 499, column: 11, scope: !2175)
!2250 = !DILocation(line: 499, column: 14, scope: !2175)
!2251 = !DILocation(line: 499, column: 19, scope: !2175)
!2252 = !DILocation(line: 499, column: 31, scope: !2175)
!2253 = !{!1846, !1459, i64 168}
!2254 = !DILocation(line: 500, column: 33, scope: !2175)
!2255 = !DILocation(line: 500, column: 5, scope: !2175)
!2256 = !DILocation(line: 500, column: 11, scope: !2175)
!2257 = !DILocation(line: 500, column: 14, scope: !2175)
!2258 = !DILocation(line: 500, column: 19, scope: !2175)
!2259 = !DILocation(line: 500, column: 31, scope: !2175)
!2260 = !{!1846, !1393, i64 192}
!2261 = !DILocation(line: 501, column: 5, scope: !2175)
!2262 = !DILocation(line: 501, column: 11, scope: !2175)
!2263 = !DILocation(line: 501, column: 14, scope: !2175)
!2264 = !DILocation(line: 501, column: 19, scope: !2175)
!2265 = !DILocation(line: 501, column: 31, scope: !2175)
!2266 = !{!1846, !1393, i64 200}
!2267 = !DILocation(line: 502, column: 5, scope: !2175)
!2268 = !DILocation(line: 502, column: 11, scope: !2175)
!2269 = !DILocation(line: 502, column: 14, scope: !2175)
!2270 = !DILocation(line: 502, column: 31, scope: !2175)
!2271 = !{!1846, !1393, i64 304}
!2272 = !DILocation(line: 503, column: 5, scope: !2175)
!2273 = !DILocation(line: 503, column: 11, scope: !2175)
!2274 = !DILocation(line: 503, column: 14, scope: !2175)
!2275 = !DILocation(line: 503, column: 31, scope: !2175)
!2276 = !{!1846, !1393, i64 312}
!2277 = !DILocation(line: 504, column: 5, scope: !2175)
!2278 = !DILocation(line: 504, column: 11, scope: !2175)
!2279 = !DILocation(line: 504, column: 14, scope: !2175)
!2280 = !DILocation(line: 504, column: 31, scope: !2175)
!2281 = !{!1846, !1393, i64 344}
!2282 = !DILocation(line: 505, column: 5, scope: !2175)
!2283 = !DILocation(line: 505, column: 11, scope: !2175)
!2284 = !DILocation(line: 505, column: 14, scope: !2175)
!2285 = !DILocation(line: 505, column: 31, scope: !2175)
!2286 = !{!1846, !1393, i64 336}
!2287 = !DILocation(line: 506, column: 33, scope: !2175)
!2288 = !DILocation(line: 506, column: 5, scope: !2175)
!2289 = !DILocation(line: 506, column: 11, scope: !2175)
!2290 = !DILocation(line: 506, column: 14, scope: !2175)
!2291 = !DILocation(line: 506, column: 31, scope: !2175)
!2292 = !{!1846, !1393, i64 112}
!2293 = !DILocation(line: 508, column: 5, scope: !2175)
!2294 = !DILocation(line: 508, column: 11, scope: !2175)
!2295 = !DILocation(line: 508, column: 17, scope: !2175)
!2296 = !DILocation(line: 508, column: 31, scope: !2175)
!2297 = !{!1846, !1394, i64 352}
!2298 = !DILocation(line: 509, column: 5, scope: !2175)
!2299 = !DILocation(line: 509, column: 11, scope: !2175)
!2300 = !DILocation(line: 509, column: 17, scope: !2175)
!2301 = !DILocation(line: 509, column: 21, scope: !2175)
!2302 = !DILocation(line: 509, column: 31, scope: !2175)
!2303 = !{!1846, !1402, i64 360}
!2304 = !DILocation(line: 510, column: 33, scope: !2175)
!2305 = !DILocation(line: 510, column: 5, scope: !2175)
!2306 = !DILocation(line: 510, column: 11, scope: !2175)
!2307 = !DILocation(line: 510, column: 17, scope: !2175)
!2308 = !DILocation(line: 510, column: 31, scope: !2175)
!2309 = !{!1846, !1393, i64 400}
!2310 = !DILocation(line: 512, column: 5, scope: !2175)
!2311 = !DILocation(line: 512, column: 18, scope: !2175)
!2312 = !DILocation(line: 512, column: 27, scope: !2175)
!2313 = !DILocation(line: 512, column: 33, scope: !2175)
!2314 = !DILocation(line: 512, column: 38, scope: !2175)
!2315 = !{!1846, !1459, i64 496}
!2316 = !DILocation(line: 513, column: 10, scope: !2186)
!2317 = !DILocation(line: 513, column: 9, scope: !2175)
!2318 = !DILocation(line: 514, column: 9, scope: !2185)
!2319 = !DILocation(line: 514, column: 23, scope: !2185)
!2320 = !DILocation(line: 515, column: 35, scope: !2185)
!2321 = !DILocation(line: 515, column: 11, scope: !2185)
!2322 = !DILocation(line: 516, column: 21, scope: !2190)
!2323 = !DILocation(line: 516, column: 18, scope: !2190)
!2324 = !DILocation(line: 516, column: 13, scope: !2185)
!2325 = !DILocation(line: 517, column: 18, scope: !2188)
!2326 = !DILocation(line: 517, column: 30, scope: !2188)
!2327 = !DILocation(line: 517, column: 34, scope: !2188)
!2328 = !DILocation(line: 517, column: 38, scope: !2188)
!2329 = !DILocation(line: 517, column: 44, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 517, column: 13)
!2331 = !DILocation(line: 517, column: 43, scope: !2330)
!2332 = !DILocation(line: 517, column: 13, scope: !2188)
!2333 = !DILocation(line: 518, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 517, column: 52)
!2335 = !DILocation(line: 518, column: 25, scope: !2334)
!2336 = !DILocation(line: 518, column: 24, scope: !2334)
!2337 = !DILocation(line: 518, column: 26, scope: !2334)
!2338 = !DILocation(line: 518, column: 31, scope: !2334)
!2339 = !DILocation(line: 518, column: 34, scope: !2334)
!2340 = !DILocation(line: 518, column: 33, scope: !2334)
!2341 = !DILocation(line: 518, column: 35, scope: !2334)
!2342 = !DILocation(line: 518, column: 41, scope: !2334)
!2343 = !DILocation(line: 518, column: 44, scope: !2334)
!2344 = !DILocation(line: 518, column: 43, scope: !2334)
!2345 = !DILocation(line: 518, column: 45, scope: !2334)
!2346 = !DILocation(line: 518, column: 51, scope: !2334)
!2347 = !DILocation(line: 518, column: 54, scope: !2334)
!2348 = !DILocation(line: 518, column: 53, scope: !2334)
!2349 = !DILocation(line: 518, column: 55, scope: !2334)
!2350 = !DILocation(line: 518, column: 63, scope: !2334)
!2351 = distinct !{!2351, !2333, !2352, !1607}
!2352 = !DILocation(line: 518, column: 65, scope: !2334)
!2353 = !DILocation(line: 519, column: 41, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 519, column: 21)
!2355 = !DILocation(line: 519, column: 21, scope: !2354)
!2356 = !DILocation(line: 519, column: 21, scope: !2334)
!2357 = !DILocation(line: 520, column: 23, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 519, column: 70)
!2359 = !DILocation(line: 521, column: 21, scope: !2358)
!2360 = !DILocation(line: 521, column: 29, scope: !2358)
!2361 = !DILocation(line: 521, column: 28, scope: !2358)
!2362 = !DILocation(line: 521, column: 30, scope: !2358)
!2363 = !DILocation(line: 521, column: 35, scope: !2358)
!2364 = !DILocation(line: 521, column: 38, scope: !2358)
!2365 = !DILocation(line: 521, column: 37, scope: !2358)
!2366 = !DILocation(line: 521, column: 39, scope: !2358)
!2367 = !DILocation(line: 521, column: 45, scope: !2358)
!2368 = !DILocation(line: 521, column: 48, scope: !2358)
!2369 = !DILocation(line: 521, column: 47, scope: !2358)
!2370 = !DILocation(line: 521, column: 49, scope: !2358)
!2371 = !DILocation(line: 521, column: 55, scope: !2358)
!2372 = !DILocation(line: 521, column: 58, scope: !2358)
!2373 = !DILocation(line: 521, column: 57, scope: !2358)
!2374 = !DILocation(line: 521, column: 59, scope: !2358)
!2375 = !DILocation(line: 521, column: 67, scope: !2358)
!2376 = distinct !{!2376, !2359, !2377, !1607}
!2377 = !DILocation(line: 521, column: 69, scope: !2358)
!2378 = !DILocation(line: 522, column: 26, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 522, column: 25)
!2380 = !DILocation(line: 522, column: 25, scope: !2379)
!2381 = !DILocation(line: 522, column: 27, scope: !2379)
!2382 = !DILocation(line: 522, column: 32, scope: !2379)
!2383 = !DILocation(line: 522, column: 35, scope: !2379)
!2384 = !DILocation(line: 522, column: 34, scope: !2379)
!2385 = !DILocation(line: 522, column: 36, scope: !2379)
!2386 = !DILocation(line: 522, column: 25, scope: !2358)
!2387 = !DILocation(line: 523, column: 25, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 522, column: 44)
!2389 = !DILocation(line: 523, column: 31, scope: !2388)
!2390 = !DILocation(line: 523, column: 40, scope: !2388)
!2391 = !{!1846, !1459, i64 424}
!2392 = !DILocation(line: 524, column: 32, scope: !2388)
!2393 = !DILocation(line: 525, column: 25, scope: !2388)
!2394 = !DILocation(line: 527, column: 17, scope: !2358)
!2395 = !DILocation(line: 528, column: 46, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 528, column: 26)
!2397 = !DILocation(line: 528, column: 26, scope: !2396)
!2398 = !DILocation(line: 528, column: 26, scope: !2354)
!2399 = !DILocation(line: 529, column: 23, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 528, column: 75)
!2401 = !DILocation(line: 530, column: 21, scope: !2400)
!2402 = !DILocation(line: 530, column: 29, scope: !2400)
!2403 = !DILocation(line: 530, column: 28, scope: !2400)
!2404 = !DILocation(line: 530, column: 30, scope: !2400)
!2405 = !DILocation(line: 530, column: 35, scope: !2400)
!2406 = !DILocation(line: 530, column: 38, scope: !2400)
!2407 = !DILocation(line: 530, column: 37, scope: !2400)
!2408 = !DILocation(line: 530, column: 39, scope: !2400)
!2409 = !DILocation(line: 530, column: 45, scope: !2400)
!2410 = !DILocation(line: 530, column: 48, scope: !2400)
!2411 = !DILocation(line: 530, column: 47, scope: !2400)
!2412 = !DILocation(line: 530, column: 49, scope: !2400)
!2413 = !DILocation(line: 530, column: 55, scope: !2400)
!2414 = !DILocation(line: 530, column: 58, scope: !2400)
!2415 = !DILocation(line: 530, column: 57, scope: !2400)
!2416 = !DILocation(line: 530, column: 59, scope: !2400)
!2417 = !DILocation(line: 530, column: 67, scope: !2400)
!2418 = distinct !{!2418, !2401, !2419, !1607}
!2419 = !DILocation(line: 530, column: 69, scope: !2400)
!2420 = !DILocation(line: 531, column: 26, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 531, column: 25)
!2422 = !DILocation(line: 531, column: 25, scope: !2421)
!2423 = !DILocation(line: 531, column: 27, scope: !2421)
!2424 = !DILocation(line: 531, column: 32, scope: !2421)
!2425 = !DILocation(line: 531, column: 35, scope: !2421)
!2426 = !DILocation(line: 531, column: 34, scope: !2421)
!2427 = !DILocation(line: 531, column: 36, scope: !2421)
!2428 = !DILocation(line: 531, column: 25, scope: !2400)
!2429 = !DILocation(line: 532, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 531, column: 44)
!2431 = !DILocation(line: 532, column: 31, scope: !2430)
!2432 = !DILocation(line: 532, column: 40, scope: !2430)
!2433 = !DILocation(line: 533, column: 25, scope: !2430)
!2434 = !DILocation(line: 535, column: 17, scope: !2400)
!2435 = !DILocation(line: 536, column: 28, scope: !2334)
!2436 = !DILocation(line: 536, column: 21, scope: !2334)
!2437 = !DILocation(line: 536, column: 19, scope: !2334)
!2438 = !DILocation(line: 537, column: 29, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 537, column: 21)
!2440 = !DILocation(line: 537, column: 26, scope: !2439)
!2441 = !DILocation(line: 537, column: 21, scope: !2334)
!2442 = !DILocation(line: 537, column: 32, scope: !2439)
!2443 = !DILocation(line: 538, column: 13, scope: !2334)
!2444 = !DILocation(line: 517, column: 47, scope: !2330)
!2445 = !DILocation(line: 517, column: 13, scope: !2330)
!2446 = distinct !{!2446, !2332, !2447, !1607}
!2447 = !DILocation(line: 538, column: 13, scope: !2188)
!2448 = !DILocation(line: 539, column: 9, scope: !2189)
!2449 = !DILocation(line: 540, column: 5, scope: !2186)
!2450 = !DILocation(line: 540, column: 5, scope: !2185)
!2451 = !DILocation(line: 542, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 542, column: 9)
!2453 = !DILocation(line: 542, column: 9, scope: !2175)
!2454 = !DILocation(line: 543, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 543, column: 9)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 542, column: 17)
!2457 = !DILocation(line: 543, column: 9, scope: !2456)
!2458 = !DILocation(line: 543, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 543, column: 9)
!2460 = !DILocation(line: 544, column: 9, scope: !2456)
!2461 = !DILocation(line: 544, column: 15, scope: !2456)
!2462 = !DILocation(line: 544, column: 21, scope: !2456)
!2463 = !DILocation(line: 544, column: 34, scope: !2456)
!2464 = !{!1846, !1394, i64 384}
!2465 = !DILocation(line: 545, column: 9, scope: !2456)
!2466 = !DILocation(line: 545, column: 15, scope: !2456)
!2467 = !DILocation(line: 545, column: 21, scope: !2456)
!2468 = !DILocation(line: 545, column: 34, scope: !2456)
!2469 = !{!1846, !1394, i64 388}
!2470 = !DILocation(line: 546, column: 9, scope: !2456)
!2471 = !DILocation(line: 546, column: 15, scope: !2456)
!2472 = !DILocation(line: 546, column: 21, scope: !2456)
!2473 = !DILocation(line: 546, column: 34, scope: !2456)
!2474 = !{!1846, !1394, i64 392}
!2475 = !DILocation(line: 547, column: 5, scope: !2456)
!2476 = !DILocation(line: 549, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 549, column: 9)
!2478 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 548, column: 10)
!2479 = !DILocation(line: 549, column: 9, scope: !2478)
!2480 = !DILocation(line: 549, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 549, column: 9)
!2482 = !DILocation(line: 550, column: 9, scope: !2478)
!2483 = !DILocation(line: 550, column: 15, scope: !2478)
!2484 = !DILocation(line: 550, column: 21, scope: !2478)
!2485 = !DILocation(line: 550, column: 34, scope: !2478)
!2486 = !DILocation(line: 551, column: 9, scope: !2478)
!2487 = !DILocation(line: 551, column: 15, scope: !2478)
!2488 = !DILocation(line: 551, column: 21, scope: !2478)
!2489 = !DILocation(line: 551, column: 34, scope: !2478)
!2490 = !DILocation(line: 552, column: 9, scope: !2478)
!2491 = !DILocation(line: 552, column: 15, scope: !2478)
!2492 = !DILocation(line: 552, column: 21, scope: !2478)
!2493 = !DILocation(line: 552, column: 34, scope: !2478)
!2494 = !DILocation(line: 555, column: 5, scope: !2175)
!2495 = !DILocation(line: 556, column: 1, scope: !2175)
!2496 = !DISubprogram(name: "config_check_cond", scope: !464, file: !464, line: 184, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!87, !169, !87}
!2499 = distinct !DISubprogram(name: "wstunnel_check_request", scope: !2, file: !2, line: 443, type: !2500, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2503)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!87, !1227, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DILocalVariable(name: "r", arg: 1, scope: !2499, file: !2, line: 443, type: !1227)
!2505 = !DILocalVariable(name: "hctx", arg: 2, scope: !2499, file: !2, line: 443, type: !2502)
!2506 = !DILocalVariable(name: "vers", scope: !2499, file: !2, line: 444, type: !1958)
!2507 = !DILocalVariable(name: "hybivers", scope: !2499, file: !2, line: 446, type: !2508)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2509 = !DILocation(line: 443, column: 54, scope: !2499)
!2510 = !DILocation(line: 443, column: 77, scope: !2499)
!2511 = !DILocation(line: 444, column: 5, scope: !2499)
!2512 = !DILocation(line: 444, column: 26, scope: !2499)
!2513 = !DILocation(line: 445, column: 31, scope: !2499)
!2514 = !DILocation(line: 445, column: 7, scope: !2499)
!2515 = !DILocation(line: 446, column: 5, scope: !2499)
!2516 = !DILocation(line: 446, column: 16, scope: !2499)
!2517 = !DILocation(line: 446, column: 36, scope: !2499)
!2518 = !DILocation(line: 446, column: 33, scope: !2499)
!2519 = !DILocation(line: 446, column: 27, scope: !2499)
!2520 = !DILocation(line: 447, column: 24, scope: !2499)
!2521 = !DILocation(line: 447, column: 30, scope: !2499)
!2522 = !DILocation(line: 447, column: 23, scope: !2499)
!2523 = !DILocation(line: 447, column: 9, scope: !2499)
!2524 = !DILocation(line: 447, column: 44, scope: !2499)
!2525 = !DILocation(line: 447, column: 50, scope: !2499)
!2526 = !DILocation(line: 447, column: 37, scope: !2499)
!2527 = !DILocation(line: 449, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 449, column: 9)
!2529 = !DILocation(line: 449, column: 18, scope: !2528)
!2530 = !DILocation(line: 449, column: 22, scope: !2528)
!2531 = !DILocation(line: 449, column: 25, scope: !2528)
!2532 = !DILocation(line: 449, column: 34, scope: !2528)
!2533 = !DILocation(line: 449, column: 9, scope: !2499)
!2534 = !DILocation(line: 450, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 450, column: 9)
!2536 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 449, column: 45)
!2537 = !DILocation(line: 450, column: 9, scope: !2536)
!2538 = !DILocation(line: 450, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 450, column: 9)
!2540 = !DILocation(line: 451, column: 9, scope: !2536)
!2541 = !DILocation(line: 451, column: 12, scope: !2536)
!2542 = !DILocation(line: 451, column: 24, scope: !2536)
!2543 = !{!1690, !1459, i64 4}
!2544 = !DILocation(line: 452, column: 9, scope: !2536)
!2545 = !DILocation(line: 456, column: 10, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 456, column: 9)
!2547 = !DILocation(line: 456, column: 13, scope: !2546)
!2548 = !{!1690, !1393, i64 432}
!2549 = !DILocation(line: 456, column: 23, scope: !2546)
!2550 = !DILocation(line: 456, column: 42, scope: !2546)
!2551 = !DILocation(line: 456, column: 45, scope: !2546)
!2552 = !DILocation(line: 456, column: 26, scope: !2546)
!2553 = !DILocation(line: 456, column: 9, scope: !2499)
!2554 = !DILocation(line: 457, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !2, line: 457, column: 9)
!2556 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 456, column: 57)
!2557 = !DILocation(line: 457, column: 9, scope: !2556)
!2558 = !DILocation(line: 457, column: 9, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 457, column: 9)
!2560 = !DILocation(line: 458, column: 9, scope: !2556)
!2561 = !DILocation(line: 458, column: 12, scope: !2556)
!2562 = !DILocation(line: 458, column: 24, scope: !2556)
!2563 = !DILocation(line: 459, column: 9, scope: !2556)
!2564 = !DILocation(line: 462, column: 37, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 462, column: 9)
!2566 = !DILocation(line: 462, column: 40, scope: !2565)
!2567 = !DILocation(line: 462, column: 10, scope: !2565)
!2568 = !DILocation(line: 462, column: 9, scope: !2499)
!2569 = !DILocation(line: 463, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 462, column: 47)
!2571 = !DILocation(line: 466, column: 17, scope: !2499)
!2572 = !DILocation(line: 466, column: 12, scope: !2499)
!2573 = !DILocation(line: 466, column: 5, scope: !2499)
!2574 = !DILocation(line: 467, column: 1, scope: !2499)
!2575 = distinct !DISubprogram(name: "wstunnel_recv_parse", scope: !2, file: !2, line: 389, type: !2576, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2581)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!12, !1227, !2578, !2580, !454}
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2581 = !{!2582, !2583, !2584, !2585, !2586}
!2582 = !DILocalVariable(name: "r", arg: 1, scope: !2575, file: !2, line: 389, type: !1227)
!2583 = !DILocalVariable(name: "opts", arg: 2, scope: !2575, file: !2, line: 389, type: !2578)
!2584 = !DILocalVariable(name: "b", arg: 3, scope: !2575, file: !2, line: 389, type: !2580)
!2585 = !DILocalVariable(name: "n", arg: 4, scope: !2575, file: !2, line: 389, type: !454)
!2586 = !DILocalVariable(name: "hctx", scope: !2575, file: !2, line: 390, type: !1016)
!2587 = !DILocation(line: 389, column: 57, scope: !2575)
!2588 = !DILocation(line: 389, column: 87, scope: !2575)
!2589 = !DILocation(line: 389, column: 108, scope: !2575)
!2590 = !DILocation(line: 389, column: 118, scope: !2575)
!2591 = !DILocation(line: 390, column: 5, scope: !2575)
!2592 = !DILocation(line: 390, column: 18, scope: !2575)
!2593 = !DILocation(line: 390, column: 40, scope: !2575)
!2594 = !DILocation(line: 390, column: 46, scope: !2575)
!2595 = !{!1848, !1393, i64 32}
!2596 = !DILocation(line: 391, column: 5, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 391, column: 5)
!2598 = !DILocation(line: 391, column: 5, scope: !2575)
!2599 = !DILocation(line: 391, column: 5, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 391, column: 5)
!2601 = !{!1846, !1459, i64 136}
!2602 = !DILocation(line: 392, column: 14, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 392, column: 9)
!2604 = !DILocation(line: 392, column: 11, scope: !2603)
!2605 = !DILocation(line: 392, column: 9, scope: !2575)
!2606 = !DILocation(line: 392, column: 17, scope: !2603)
!2607 = !DILocation(line: 393, column: 33, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 393, column: 9)
!2609 = !DILocation(line: 393, column: 38, scope: !2608)
!2610 = !DILocation(line: 393, column: 44, scope: !2608)
!2611 = !DILocation(line: 393, column: 50, scope: !2608)
!2612 = !DILocation(line: 393, column: 63, scope: !2608)
!2613 = !DILocation(line: 393, column: 66, scope: !2608)
!2614 = !DILocation(line: 393, column: 70, scope: !2608)
!2615 = !DILocation(line: 393, column: 9, scope: !2608)
!2616 = !DILocation(line: 393, column: 73, scope: !2608)
!2617 = !DILocation(line: 393, column: 9, scope: !2575)
!2618 = !DILocation(line: 394, column: 9, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 394, column: 9)
!2620 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 393, column: 78)
!2621 = !DILocation(line: 394, column: 9, scope: !2620)
!2622 = !DILocation(line: 394, column: 9, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 394, column: 9)
!2624 = !DILocation(line: 395, column: 9, scope: !2620)
!2625 = !DILocation(line: 397, column: 18, scope: !2575)
!2626 = !DILocation(line: 397, column: 5, scope: !2575)
!2627 = !DILocation(line: 398, column: 5, scope: !2575)
!2628 = !DILocation(line: 399, column: 5, scope: !2575)
!2629 = !DILocation(line: 400, column: 1, scope: !2575)
!2630 = distinct !DISubprogram(name: "wstunnel_stdin_append", scope: !2, file: !2, line: 369, type: !2631, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2634)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!12, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "gwhctx", arg: 1, scope: !2630, file: !2, line: 369, type: !2633)
!2636 = !DILocalVariable(name: "hctx", scope: !2630, file: !2, line: 373, type: !1016)
!2637 = !DILocalVariable(name: "r", scope: !2638, file: !2, line: 380, type: !1227)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 376, column: 10)
!2639 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 374, column: 9)
!2640 = !DILocation(line: 369, column: 56, scope: !2630)
!2641 = !DILocation(line: 373, column: 5, scope: !2630)
!2642 = !DILocation(line: 373, column: 18, scope: !2630)
!2643 = !DILocation(line: 373, column: 40, scope: !2630)
!2644 = !DILocation(line: 374, column: 38, scope: !2639)
!2645 = !DILocation(line: 374, column: 14, scope: !2639)
!2646 = !DILocation(line: 374, column: 11, scope: !2639)
!2647 = !DILocation(line: 374, column: 9, scope: !2630)
!2648 = !DILocation(line: 375, column: 9, scope: !2639)
!2649 = !DILocation(line: 380, column: 9, scope: !2638)
!2650 = !DILocation(line: 380, column: 28, scope: !2638)
!2651 = !DILocation(line: 380, column: 32, scope: !2638)
!2652 = !DILocation(line: 380, column: 38, scope: !2638)
!2653 = !DILocation(line: 380, column: 41, scope: !2638)
!2654 = !{!1846, !1393, i64 264}
!2655 = !DILocation(line: 381, column: 9, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 381, column: 9)
!2657 = !DILocation(line: 381, column: 9, scope: !2638)
!2658 = !DILocation(line: 381, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 381, column: 9)
!2660 = !{!1690, !1393, i64 56}
!2661 = !DILocation(line: 382, column: 9, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 382, column: 9)
!2663 = !DILocation(line: 382, column: 9, scope: !2638)
!2664 = !DILocation(line: 382, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 382, column: 9)
!2666 = !DILocation(line: 383, column: 33, scope: !2638)
!2667 = !DILocation(line: 383, column: 9, scope: !2638)
!2668 = !DILocation(line: 384, column: 33, scope: !2638)
!2669 = !DILocation(line: 384, column: 36, scope: !2638)
!2670 = !DILocation(line: 384, column: 42, scope: !2638)
!2671 = !DILocation(line: 384, column: 45, scope: !2638)
!2672 = !{!1846, !1393, i64 280}
!2673 = !DILocation(line: 384, column: 9, scope: !2638)
!2674 = !DILocation(line: 385, column: 9, scope: !2638)
!2675 = !DILocation(line: 386, column: 5, scope: !2639)
!2676 = !DILocation(line: 387, column: 1, scope: !2630)
!2677 = distinct !DISubprogram(name: "wstunnel_create_env", scope: !2, file: !2, line: 347, type: !2631, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2678)
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "gwhctx", arg: 1, scope: !2677, file: !2, line: 347, type: !2633)
!2680 = !DILocalVariable(name: "hctx", scope: !2677, file: !2, line: 348, type: !1016)
!2681 = !DILocalVariable(name: "r", scope: !2677, file: !2, line: 349, type: !1227)
!2682 = !DILocalVariable(name: "rc", scope: !2677, file: !2, line: 350, type: !12)
!2683 = !DILocation(line: 347, column: 54, scope: !2677)
!2684 = !DILocation(line: 348, column: 5, scope: !2677)
!2685 = !DILocation(line: 348, column: 18, scope: !2677)
!2686 = !DILocation(line: 348, column: 40, scope: !2677)
!2687 = !DILocation(line: 349, column: 5, scope: !2677)
!2688 = !DILocation(line: 349, column: 24, scope: !2677)
!2689 = !DILocation(line: 349, column: 28, scope: !2677)
!2690 = !DILocation(line: 349, column: 34, scope: !2677)
!2691 = !DILocation(line: 349, column: 37, scope: !2677)
!2692 = !DILocation(line: 350, column: 5, scope: !2677)
!2693 = !DILocation(line: 350, column: 15, scope: !2677)
!2694 = !DILocation(line: 351, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 351, column: 9)
!2696 = !DILocation(line: 351, column: 17, scope: !2695)
!2697 = !{!1690, !1402, i64 408}
!2698 = !DILocation(line: 351, column: 11, scope: !2695)
!2699 = !DILocation(line: 351, column: 32, scope: !2695)
!2700 = !DILocation(line: 351, column: 35, scope: !2695)
!2701 = !DILocation(line: 351, column: 38, scope: !2695)
!2702 = !DILocation(line: 351, column: 51, scope: !2695)
!2703 = !DILocation(line: 351, column: 9, scope: !2677)
!2704 = !DILocation(line: 352, column: 49, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 351, column: 71)
!2706 = !DILocation(line: 352, column: 9, scope: !2705)
!2707 = !DILocation(line: 353, column: 39, scope: !2705)
!2708 = !DILocation(line: 353, column: 42, scope: !2705)
!2709 = !DILocation(line: 353, column: 58, scope: !2705)
!2710 = !DILocation(line: 353, column: 61, scope: !2705)
!2711 = !DILocation(line: 353, column: 9, scope: !2705)
!2712 = !DILocation(line: 354, column: 5, scope: !2705)
!2713 = !DILocation(line: 355, column: 49, scope: !2677)
!2714 = !DILocation(line: 355, column: 10, scope: !2677)
!2715 = !DILocation(line: 355, column: 8, scope: !2677)
!2716 = !DILocation(line: 356, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 356, column: 9)
!2718 = !DILocation(line: 356, column: 12, scope: !2717)
!2719 = !DILocation(line: 356, column: 9, scope: !2677)
!2720 = !DILocation(line: 356, column: 37, scope: !2717)
!2721 = !DILocation(line: 356, column: 30, scope: !2717)
!2722 = !DILocation(line: 358, column: 23, scope: !2677)
!2723 = !DILocation(line: 358, column: 26, scope: !2677)
!2724 = !DILocation(line: 358, column: 39, scope: !2677)
!2725 = !DILocation(line: 358, column: 22, scope: !2677)
!2726 = !DILocation(line: 358, column: 5, scope: !2677)
!2727 = !DILocation(line: 358, column: 8, scope: !2677)
!2728 = !DILocation(line: 358, column: 20, scope: !2677)
!2729 = !DILocation(line: 361, column: 5, scope: !2677)
!2730 = !DILocation(line: 361, column: 8, scope: !2677)
!2731 = !DILocation(line: 361, column: 26, scope: !2677)
!2732 = !{!1690, !1394, i64 553}
!2733 = !DILocation(line: 363, column: 21, scope: !2677)
!2734 = !DILocation(line: 363, column: 5, scope: !2677)
!2735 = !DILocation(line: 363, column: 11, scope: !2677)
!2736 = !DILocation(line: 363, column: 19, scope: !2677)
!2737 = !DILocation(line: 364, column: 25, scope: !2677)
!2738 = !DILocation(line: 364, column: 31, scope: !2677)
!2739 = !DILocation(line: 364, column: 5, scope: !2677)
!2740 = !DILocation(line: 366, column: 5, scope: !2677)
!2741 = !DILocation(line: 367, column: 1, scope: !2677)
!2742 = distinct !DISubprogram(name: "wstunnel_handler_ctx_free", scope: !2, file: !2, line: 476, type: !450, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2743)
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "gwhctx", arg: 1, scope: !2742, file: !2, line: 476, type: !28)
!2745 = !DILocalVariable(name: "hctx", scope: !2742, file: !2, line: 477, type: !1016)
!2746 = !DILocation(line: 476, column: 45, scope: !2742)
!2747 = !DILocation(line: 477, column: 5, scope: !2742)
!2748 = !DILocation(line: 477, column: 18, scope: !2742)
!2749 = !DILocation(line: 477, column: 40, scope: !2742)
!2750 = !DILocation(line: 478, column: 26, scope: !2742)
!2751 = !DILocation(line: 478, column: 32, scope: !2742)
!2752 = !DILocation(line: 478, column: 38, scope: !2742)
!2753 = !DILocation(line: 478, column: 5, scope: !2742)
!2754 = !DILocation(line: 479, column: 1, scope: !2742)
!2755 = distinct !DISubprogram(name: "wstunnel_backend_error", scope: !2, file: !2, line: 469, type: !2756, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2633}
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "gwhctx", arg: 1, scope: !2755, file: !2, line: 469, type: !2633)
!2760 = !DILocalVariable(name: "hctx", scope: !2755, file: !2, line: 470, type: !1016)
!2761 = !DILocation(line: 469, column: 52, scope: !2755)
!2762 = !DILocation(line: 470, column: 5, scope: !2755)
!2763 = !DILocation(line: 470, column: 18, scope: !2755)
!2764 = !DILocation(line: 470, column: 40, scope: !2755)
!2765 = !DILocation(line: 471, column: 9, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2755, file: !2, line: 471, column: 9)
!2767 = !DILocation(line: 471, column: 15, scope: !2766)
!2768 = !DILocation(line: 471, column: 18, scope: !2766)
!2769 = !DILocation(line: 471, column: 24, scope: !2766)
!2770 = !DILocation(line: 471, column: 42, scope: !2766)
!2771 = !DILocation(line: 471, column: 45, scope: !2766)
!2772 = !DILocation(line: 471, column: 51, scope: !2766)
!2773 = !DILocation(line: 471, column: 54, scope: !2766)
!2774 = !DILocation(line: 471, column: 60, scope: !2766)
!2775 = !DILocation(line: 471, column: 9, scope: !2755)
!2776 = !DILocation(line: 472, column: 33, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2766, file: !2, line: 471, column: 78)
!2778 = !DILocation(line: 472, column: 9, scope: !2777)
!2779 = !DILocation(line: 473, column: 5, scope: !2777)
!2780 = !DILocation(line: 474, column: 1, scope: !2755)
!2781 = !DISubprogram(name: "chunk_buffer_acquire", scope: !98, file: !98, line: 60, type: !2782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!114}
!2784 = !DISubprogram(name: "buffer_eq_icase_ssn", scope: !43, file: !43, line: 147, type: !2785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!87, !1959, !1959, !1960}
!2787 = !DISubprogram(name: "strchr", scope: !2788, file: !2788, line: 246, type: !2789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!47, !163, !87}
!2791 = distinct !DISubprogram(name: "light_isdigit", scope: !43, file: !43, line: 214, type: !2792, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!87, !87}
!2794 = !{!2795}
!2795 = !DILocalVariable(name: "c", arg: 1, scope: !2791, file: !43, line: 214, type: !87)
!2796 = !DILocation(line: 214, column: 37, scope: !2791)
!2797 = !DILocation(line: 215, column: 20, scope: !2791)
!2798 = !DILocation(line: 215, column: 21, scope: !2791)
!2799 = !DILocation(line: 215, column: 26, scope: !2791)
!2800 = !DILocation(line: 215, column: 2, scope: !2791)
!2801 = !DISubprogram(name: "strtol", scope: !2802, file: !2802, line: 177, type: !2803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2802 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!119, !2805, !2806, !87}
!2805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!2807 = distinct !DISubprogram(name: "wstunnel_is_allowed_origin", scope: !2, file: !2, line: 402, type: !2500, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2808)
!2808 = !{!2809, !2810, !2811, !2813, !2814, !2815, !2817, !2820}
!2809 = !DILocalVariable(name: "r", arg: 1, scope: !2807, file: !2, line: 402, type: !1227)
!2810 = !DILocalVariable(name: "hctx", arg: 2, scope: !2807, file: !2, line: 402, type: !2502)
!2811 = !DILocalVariable(name: "allowed_origins", scope: !2807, file: !2, line: 406, type: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!2813 = !DILocalVariable(name: "origin", scope: !2807, file: !2, line: 407, type: !476)
!2814 = !DILocalVariable(name: "olen", scope: !2807, file: !2, line: 408, type: !454)
!2815 = !DILocalVariable(name: "i", scope: !2816, file: !2, line: 429, type: !454)
!2816 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 429, column: 5)
!2817 = !DILocalVariable(name: "b", scope: !2818, file: !2, line: 430, type: !114)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 429, column: 56)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !2, line: 429, column: 5)
!2820 = !DILocalVariable(name: "blen", scope: !2818, file: !2, line: 431, type: !454)
!2821 = !DILocation(line: 402, column: 58, scope: !2807)
!2822 = !DILocation(line: 402, column: 81, scope: !2807)
!2823 = !DILocation(line: 406, column: 5, scope: !2807)
!2824 = !DILocation(line: 406, column: 25, scope: !2807)
!2825 = !DILocation(line: 406, column: 43, scope: !2807)
!2826 = !DILocation(line: 406, column: 49, scope: !2807)
!2827 = !DILocation(line: 406, column: 54, scope: !2807)
!2828 = !{!1846, !1393, i64 488}
!2829 = !DILocation(line: 407, column: 5, scope: !2807)
!2830 = !DILocation(line: 407, column: 19, scope: !2807)
!2831 = !DILocation(line: 408, column: 5, scope: !2807)
!2832 = !DILocation(line: 408, column: 12, scope: !2807)
!2833 = !DILocation(line: 410, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 410, column: 9)
!2835 = !DILocation(line: 410, column: 14, scope: !2834)
!2836 = !DILocation(line: 410, column: 33, scope: !2834)
!2837 = !DILocation(line: 410, column: 41, scope: !2834)
!2838 = !DILocation(line: 410, column: 58, scope: !2834)
!2839 = !DILocation(line: 410, column: 38, scope: !2834)
!2840 = !DILocation(line: 410, column: 9, scope: !2807)
!2841 = !DILocation(line: 411, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2, line: 411, column: 9)
!2843 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 410, column: 64)
!2844 = !DILocation(line: 411, column: 9, scope: !2843)
!2845 = !DILocation(line: 411, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 411, column: 9)
!2847 = !DILocation(line: 412, column: 9, scope: !2843)
!2848 = !DILocation(line: 417, column: 38, scope: !2807)
!2849 = !DILocation(line: 417, column: 14, scope: !2807)
!2850 = !DILocation(line: 417, column: 12, scope: !2807)
!2851 = !DILocation(line: 418, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 418, column: 9)
!2853 = !DILocation(line: 418, column: 14, scope: !2852)
!2854 = !DILocation(line: 418, column: 9, scope: !2807)
!2855 = !DILocation(line: 420, column: 35, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 418, column: 25)
!2857 = !DILocation(line: 420, column: 11, scope: !2856)
!2858 = !DILocation(line: 419, column: 16, scope: !2856)
!2859 = !DILocation(line: 421, column: 5, scope: !2856)
!2860 = !DILocation(line: 422, column: 12, scope: !2807)
!2861 = !DILocation(line: 422, column: 33, scope: !2807)
!2862 = !DILocation(line: 422, column: 21, scope: !2807)
!2863 = !DILocation(line: 422, column: 10, scope: !2807)
!2864 = !DILocation(line: 423, column: 14, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 423, column: 9)
!2866 = !DILocation(line: 423, column: 11, scope: !2865)
!2867 = !DILocation(line: 423, column: 9, scope: !2807)
!2868 = !DILocation(line: 424, column: 9, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 424, column: 9)
!2870 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 423, column: 20)
!2871 = !DILocation(line: 424, column: 9, scope: !2870)
!2872 = !DILocation(line: 424, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !2, line: 424, column: 9)
!2874 = !DILocation(line: 425, column: 9, scope: !2870)
!2875 = !DILocation(line: 425, column: 12, scope: !2870)
!2876 = !DILocation(line: 425, column: 24, scope: !2870)
!2877 = !DILocation(line: 426, column: 9, scope: !2870)
!2878 = !DILocation(line: 429, column: 10, scope: !2816)
!2879 = !DILocation(line: 429, column: 17, scope: !2816)
!2880 = !DILocation(line: 429, column: 24, scope: !2819)
!2881 = !DILocation(line: 429, column: 28, scope: !2819)
!2882 = !DILocation(line: 429, column: 45, scope: !2819)
!2883 = !DILocation(line: 429, column: 26, scope: !2819)
!2884 = !DILocation(line: 429, column: 5, scope: !2816)
!2885 = !DILocation(line: 430, column: 9, scope: !2818)
!2886 = !DILocation(line: 430, column: 17, scope: !2818)
!2887 = !DILocation(line: 430, column: 38, scope: !2818)
!2888 = !DILocation(line: 430, column: 55, scope: !2818)
!2889 = !DILocation(line: 430, column: 60, scope: !2818)
!2890 = !DILocation(line: 430, column: 65, scope: !2818)
!2891 = !DILocation(line: 431, column: 9, scope: !2818)
!2892 = !DILocation(line: 431, column: 16, scope: !2818)
!2893 = !DILocation(line: 431, column: 35, scope: !2818)
!2894 = !DILocation(line: 431, column: 23, scope: !2818)
!2895 = !DILocation(line: 432, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 432, column: 13)
!2897 = !DILocation(line: 432, column: 21, scope: !2896)
!2898 = !DILocation(line: 432, column: 19, scope: !2896)
!2899 = !DILocation(line: 433, column: 13, scope: !2896)
!2900 = !DILocation(line: 432, column: 28, scope: !2896)
!2901 = !DILocation(line: 432, column: 36, scope: !2896)
!2902 = !DILocation(line: 432, column: 40, scope: !2896)
!2903 = !DILocation(line: 432, column: 45, scope: !2896)
!2904 = !DILocation(line: 432, column: 44, scope: !2896)
!2905 = !DILocation(line: 432, column: 49, scope: !2896)
!2906 = !DILocation(line: 432, column: 53, scope: !2896)
!2907 = !DILocation(line: 432, column: 62, scope: !2896)
!2908 = !DILocation(line: 432, column: 70, scope: !2896)
!2909 = !DILocation(line: 432, column: 67, scope: !2896)
!2910 = !DILocation(line: 433, column: 28, scope: !2896)
!2911 = !DILocation(line: 433, column: 36, scope: !2896)
!2912 = !DILocation(line: 433, column: 40, scope: !2896)
!2913 = !DILocation(line: 433, column: 39, scope: !2896)
!2914 = !DILocation(line: 433, column: 45, scope: !2896)
!2915 = !DILocation(line: 433, column: 44, scope: !2896)
!2916 = !DILocation(line: 433, column: 51, scope: !2896)
!2917 = !DILocation(line: 433, column: 54, scope: !2896)
!2918 = !DILocation(line: 433, column: 59, scope: !2896)
!2919 = !DILocation(line: 433, column: 21, scope: !2896)
!2920 = !DILocation(line: 433, column: 18, scope: !2896)
!2921 = !DILocation(line: 432, column: 13, scope: !2818)
!2922 = !DILocation(line: 434, column: 13, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !2, line: 434, column: 13)
!2924 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 433, column: 66)
!2925 = !DILocation(line: 434, column: 13, scope: !2924)
!2926 = !DILocation(line: 434, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !2, line: 434, column: 13)
!2928 = !DILocation(line: 435, column: 13, scope: !2924)
!2929 = !DILocation(line: 437, column: 5, scope: !2819)
!2930 = !DILocation(line: 437, column: 5, scope: !2818)
!2931 = !DILocation(line: 429, column: 51, scope: !2819)
!2932 = !DILocation(line: 429, column: 5, scope: !2819)
!2933 = distinct !{!2933, !2884, !2934, !1607}
!2934 = !DILocation(line: 437, column: 5, scope: !2816)
!2935 = !DILocation(line: 438, column: 5, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 438, column: 5)
!2937 = !DILocation(line: 438, column: 5, scope: !2807)
!2938 = !DILocation(line: 438, column: 5, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !2, line: 438, column: 5)
!2940 = !DILocation(line: 439, column: 5, scope: !2807)
!2941 = !DILocation(line: 439, column: 8, scope: !2807)
!2942 = !DILocation(line: 439, column: 20, scope: !2807)
!2943 = !DILocation(line: 440, column: 5, scope: !2807)
!2944 = !DILocation(line: 441, column: 1, scope: !2807)
!2945 = !DISubprogram(name: "memcmp", scope: !2788, file: !2788, line: 64, type: !2946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!87, !2948, !2948, !454}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2950 = distinct !DISubprogram(name: "mod_wstunnel_frame_send", scope: !2, file: !2, line: 1304, type: !1219, scopeLine: 1305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DILocalVariable(name: "hctx", arg: 1, scope: !2950, file: !2, line: 1304, type: !1016)
!2953 = !DILocalVariable(name: "type", arg: 2, scope: !2950, file: !2, line: 1304, type: !1038)
!2954 = !DILocalVariable(name: "payload", arg: 3, scope: !2950, file: !2, line: 1305, type: !163)
!2955 = !DILocalVariable(name: "siz", arg: 4, scope: !2950, file: !2, line: 1305, type: !454)
!2956 = !DILocation(line: 1304, column: 42, scope: !2950)
!2957 = !DILocation(line: 1304, column: 74, scope: !2950)
!2958 = !DILocation(line: 1305, column: 42, scope: !2950)
!2959 = !DILocation(line: 1305, column: 58, scope: !2950)
!2960 = !DILocation(line: 1307, column: 9, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1307, column: 9)
!2962 = !DILocation(line: 1307, column: 15, scope: !2961)
!2963 = !DILocation(line: 1307, column: 24, scope: !2961)
!2964 = !DILocation(line: 1307, column: 9, scope: !2950)
!2965 = !DILocation(line: 1307, column: 51, scope: !2961)
!2966 = !DILocation(line: 1307, column: 57, scope: !2961)
!2967 = !DILocation(line: 1307, column: 63, scope: !2961)
!2968 = !DILocation(line: 1307, column: 72, scope: !2961)
!2969 = !DILocation(line: 1307, column: 37, scope: !2961)
!2970 = !DILocation(line: 1307, column: 30, scope: !2961)
!2971 = !DILocation(line: 1310, column: 14, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1310, column: 9)
!2973 = !DILocation(line: 1310, column: 20, scope: !2972)
!2974 = !DILocation(line: 1310, column: 11, scope: !2972)
!2975 = !DILocation(line: 1310, column: 9, scope: !2950)
!2976 = !DILocation(line: 1310, column: 50, scope: !2972)
!2977 = !DILocation(line: 1310, column: 56, scope: !2972)
!2978 = !DILocation(line: 1310, column: 62, scope: !2972)
!2979 = !DILocation(line: 1310, column: 71, scope: !2972)
!2980 = !DILocation(line: 1310, column: 37, scope: !2972)
!2981 = !DILocation(line: 1310, column: 30, scope: !2972)
!2982 = !DILocation(line: 1312, column: 5, scope: !2950)
!2983 = !DILocation(line: 1313, column: 1, scope: !2950)
!2984 = distinct !DISubprogram(name: "buffer_clear", scope: !43, file: !43, line: 335, type: !2985, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !114}
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "b", arg: 1, scope: !2984, file: !43, line: 335, type: !114)
!2989 = !DILocation(line: 335, column: 41, scope: !2984)
!2990 = !DILocation(line: 336, column: 2, scope: !2984)
!2991 = !DILocation(line: 336, column: 5, scope: !2984)
!2992 = !DILocation(line: 336, column: 10, scope: !2984)
!2993 = !DILocation(line: 337, column: 1, scope: !2984)
!2994 = distinct !DISubprogram(name: "send_rfc_6455", scope: !2, file: !2, line: 1048, type: !1219, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2996 = !DILocalVariable(name: "hctx", arg: 1, scope: !2994, file: !2, line: 1048, type: !1016)
!2997 = !DILocalVariable(name: "type", arg: 2, scope: !2994, file: !2, line: 1048, type: !1038)
!2998 = !DILocalVariable(name: "payload", arg: 3, scope: !2994, file: !2, line: 1048, type: !163)
!2999 = !DILocalVariable(name: "siz", arg: 4, scope: !2994, file: !2, line: 1048, type: !454)
!3000 = !DILocalVariable(name: "mem", scope: !2994, file: !2, line: 1049, type: !1120)
!3001 = !DILocalVariable(name: "len", scope: !2994, file: !2, line: 1050, type: !454)
!3002 = !DILocalVariable(name: "r", scope: !2994, file: !2, line: 1105, type: !1227)
!3003 = !DILocation(line: 1048, column: 39, scope: !2994)
!3004 = !DILocation(line: 1048, column: 71, scope: !2994)
!3005 = !DILocation(line: 1048, column: 89, scope: !2994)
!3006 = !DILocation(line: 1048, column: 105, scope: !2994)
!3007 = !DILocation(line: 1049, column: 5, scope: !2994)
!3008 = !DILocation(line: 1049, column: 10, scope: !2994)
!3009 = !DILocation(line: 1050, column: 5, scope: !2994)
!3010 = !DILocation(line: 1050, column: 12, scope: !2994)
!3011 = !DILocation(line: 1053, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1053, column: 9)
!3013 = !DILocation(line: 1053, column: 17, scope: !3012)
!3014 = !DILocation(line: 1053, column: 25, scope: !3012)
!3015 = !DILocation(line: 1053, column: 32, scope: !3012)
!3016 = !DILocation(line: 1053, column: 37, scope: !3012)
!3017 = !DILocation(line: 1054, column: 29, scope: !3012)
!3018 = !DILocation(line: 1054, column: 32, scope: !3012)
!3019 = !DILocation(line: 1054, column: 37, scope: !3012)
!3020 = !DILocation(line: 1053, column: 9, scope: !2994)
!3021 = !DILocation(line: 1055, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3012, file: !2, line: 1054, column: 74)
!3023 = !DILocation(line: 1058, column: 13, scope: !2994)
!3024 = !DILocation(line: 1058, column: 5, scope: !2994)
!3025 = !DILocation(line: 1060, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1058, column: 19)
!3027 = !DILocation(line: 1060, column: 16, scope: !3026)
!3028 = !DILocation(line: 1061, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1061, column: 9)
!3030 = !DILocation(line: 1061, column: 9, scope: !3026)
!3031 = !DILocation(line: 1061, column: 9, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 1061, column: 9)
!3033 = !DILocation(line: 1062, column: 9, scope: !3026)
!3034 = !DILocation(line: 1064, column: 9, scope: !3026)
!3035 = !DILocation(line: 1064, column: 16, scope: !3026)
!3036 = !DILocation(line: 1065, column: 9, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1065, column: 9)
!3038 = !DILocation(line: 1065, column: 9, scope: !3026)
!3039 = !DILocation(line: 1065, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1065, column: 9)
!3041 = !DILocation(line: 1066, column: 9, scope: !3026)
!3042 = !DILocation(line: 1068, column: 9, scope: !3026)
!3043 = !DILocation(line: 1068, column: 16, scope: !3026)
!3044 = !DILocation(line: 1069, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1069, column: 9)
!3046 = !DILocation(line: 1069, column: 9, scope: !3026)
!3047 = !DILocation(line: 1069, column: 9, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !2, line: 1069, column: 9)
!3049 = !DILocation(line: 1070, column: 9, scope: !3026)
!3050 = !DILocation(line: 1072, column: 9, scope: !3026)
!3051 = !DILocation(line: 1072, column: 16, scope: !3026)
!3052 = !DILocation(line: 1073, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1073, column: 9)
!3054 = !DILocation(line: 1073, column: 9, scope: !3026)
!3055 = !DILocation(line: 1073, column: 9, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 1073, column: 9)
!3057 = !DILocation(line: 1074, column: 9, scope: !3026)
!3058 = !DILocation(line: 1075, column: 5, scope: !3026)
!3059 = !DILocation(line: 1077, column: 9, scope: !3026)
!3060 = !DILocation(line: 1077, column: 16, scope: !3026)
!3061 = !DILocation(line: 1078, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1078, column: 9)
!3063 = !DILocation(line: 1078, column: 9, scope: !3026)
!3064 = !DILocation(line: 1078, column: 9, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !2, line: 1078, column: 9)
!3066 = !DILocation(line: 1079, column: 9, scope: !3026)
!3067 = !DILocation(line: 1082, column: 5, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1082, column: 5)
!3069 = !DILocation(line: 1082, column: 5, scope: !2994)
!3070 = !DILocation(line: 1082, column: 5, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 1082, column: 5)
!3072 = !DILocation(line: 1083, column: 9, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1083, column: 9)
!3074 = !DILocation(line: 1083, column: 13, scope: !3073)
!3075 = !DILocation(line: 1083, column: 9, scope: !2994)
!3076 = !DILocation(line: 1084, column: 18, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !2, line: 1083, column: 42)
!3078 = !DILocation(line: 1084, column: 9, scope: !3077)
!3079 = !DILocation(line: 1084, column: 16, scope: !3077)
!3080 = !DILocation(line: 1085, column: 13, scope: !3077)
!3081 = !DILocation(line: 1086, column: 5, scope: !3077)
!3082 = !DILocation(line: 1087, column: 14, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3073, file: !2, line: 1087, column: 14)
!3084 = !DILocation(line: 1087, column: 18, scope: !3083)
!3085 = !DILocation(line: 1087, column: 14, scope: !3073)
!3086 = !DILocation(line: 1088, column: 9, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !2, line: 1087, column: 33)
!3088 = !DILocation(line: 1088, column: 16, scope: !3087)
!3089 = !DILocation(line: 1089, column: 19, scope: !3087)
!3090 = !DILocation(line: 1089, column: 23, scope: !3087)
!3091 = !DILocation(line: 1089, column: 29, scope: !3087)
!3092 = !DILocation(line: 1089, column: 18, scope: !3087)
!3093 = !DILocation(line: 1089, column: 9, scope: !3087)
!3094 = !DILocation(line: 1089, column: 16, scope: !3087)
!3095 = !DILocation(line: 1090, column: 18, scope: !3087)
!3096 = !DILocation(line: 1090, column: 22, scope: !3087)
!3097 = !DILocation(line: 1090, column: 9, scope: !3087)
!3098 = !DILocation(line: 1090, column: 16, scope: !3087)
!3099 = !DILocation(line: 1091, column: 13, scope: !3087)
!3100 = !DILocation(line: 1092, column: 5, scope: !3087)
!3101 = !DILocation(line: 1094, column: 9, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3083, file: !2, line: 1093, column: 10)
!3103 = !DILocation(line: 1094, column: 16, scope: !3102)
!3104 = !DILocation(line: 1095, column: 9, scope: !3102)
!3105 = !DILocation(line: 1095, column: 16, scope: !3102)
!3106 = !DILocation(line: 1096, column: 9, scope: !3102)
!3107 = !DILocation(line: 1096, column: 16, scope: !3102)
!3108 = !DILocation(line: 1097, column: 9, scope: !3102)
!3109 = !DILocation(line: 1097, column: 16, scope: !3102)
!3110 = !DILocation(line: 1098, column: 9, scope: !3102)
!3111 = !DILocation(line: 1098, column: 16, scope: !3102)
!3112 = !DILocation(line: 1099, column: 19, scope: !3102)
!3113 = !DILocation(line: 1099, column: 23, scope: !3102)
!3114 = !DILocation(line: 1099, column: 30, scope: !3102)
!3115 = !DILocation(line: 1099, column: 18, scope: !3102)
!3116 = !DILocation(line: 1099, column: 9, scope: !3102)
!3117 = !DILocation(line: 1099, column: 16, scope: !3102)
!3118 = !DILocation(line: 1100, column: 19, scope: !3102)
!3119 = !DILocation(line: 1100, column: 23, scope: !3102)
!3120 = !DILocation(line: 1100, column: 30, scope: !3102)
!3121 = !DILocation(line: 1100, column: 18, scope: !3102)
!3122 = !DILocation(line: 1100, column: 9, scope: !3102)
!3123 = !DILocation(line: 1100, column: 16, scope: !3102)
!3124 = !DILocation(line: 1101, column: 19, scope: !3102)
!3125 = !DILocation(line: 1101, column: 23, scope: !3102)
!3126 = !DILocation(line: 1101, column: 29, scope: !3102)
!3127 = !DILocation(line: 1101, column: 18, scope: !3102)
!3128 = !DILocation(line: 1101, column: 9, scope: !3102)
!3129 = !DILocation(line: 1101, column: 16, scope: !3102)
!3130 = !DILocation(line: 1102, column: 18, scope: !3102)
!3131 = !DILocation(line: 1102, column: 22, scope: !3102)
!3132 = !DILocation(line: 1102, column: 9, scope: !3102)
!3133 = !DILocation(line: 1102, column: 16, scope: !3102)
!3134 = !DILocation(line: 1103, column: 13, scope: !3102)
!3135 = !DILocation(line: 1105, column: 5, scope: !2994)
!3136 = !DILocation(line: 1105, column: 24, scope: !2994)
!3137 = !DILocation(line: 1105, column: 28, scope: !2994)
!3138 = !DILocation(line: 1105, column: 34, scope: !2994)
!3139 = !DILocation(line: 1105, column: 37, scope: !2994)
!3140 = !DILocation(line: 1106, column: 27, scope: !2994)
!3141 = !DILocation(line: 1106, column: 30, scope: !2994)
!3142 = !DILocation(line: 1106, column: 35, scope: !2994)
!3143 = !DILocation(line: 1106, column: 5, scope: !2994)
!3144 = !DILocation(line: 1107, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1107, column: 9)
!3146 = !DILocation(line: 1107, column: 9, scope: !2994)
!3147 = !DILocation(line: 1107, column: 36, scope: !3145)
!3148 = !DILocation(line: 1107, column: 39, scope: !3145)
!3149 = !DILocation(line: 1107, column: 48, scope: !3145)
!3150 = !DILocation(line: 1107, column: 14, scope: !3145)
!3151 = !DILocation(line: 1108, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1108, column: 5)
!3153 = !DILocation(line: 1108, column: 5, scope: !2994)
!3154 = !DILocation(line: 1108, column: 5, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 1108, column: 5)
!3156 = !DILocation(line: 1110, column: 5, scope: !2994)
!3157 = !DILocation(line: 1111, column: 1, scope: !2994)
!3158 = !DILocation(line: 892, column: 38, scope: !1218)
!3159 = !DILocation(line: 892, column: 70, scope: !1218)
!3160 = !DILocation(line: 892, column: 88, scope: !1218)
!3161 = !DILocation(line: 892, column: 104, scope: !1218)
!3162 = !DILocation(line: 895, column: 5, scope: !1218)
!3163 = !DILocation(line: 895, column: 24, scope: !1218)
!3164 = !DILocation(line: 895, column: 28, scope: !1218)
!3165 = !DILocation(line: 895, column: 34, scope: !1218)
!3166 = !DILocation(line: 895, column: 37, scope: !1218)
!3167 = !DILocation(line: 896, column: 5, scope: !1218)
!3168 = !DILocation(line: 896, column: 11, scope: !1218)
!3169 = !DILocation(line: 897, column: 5, scope: !1218)
!3170 = !DILocation(line: 897, column: 12, scope: !1218)
!3171 = !DILocation(line: 899, column: 13, scope: !1218)
!3172 = !DILocation(line: 899, column: 5, scope: !1218)
!3173 = !DILocation(line: 901, column: 18, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 901, column: 13)
!3175 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 899, column: 19)
!3176 = !DILocation(line: 901, column: 15, scope: !3174)
!3177 = !DILocation(line: 901, column: 13, scope: !3175)
!3178 = !DILocation(line: 901, column: 23, scope: !3174)
!3179 = !DILocation(line: 902, column: 31, scope: !3175)
!3180 = !DILocation(line: 902, column: 9, scope: !3175)
!3181 = !DILocation(line: 903, column: 31, scope: !3175)
!3182 = !DILocation(line: 903, column: 34, scope: !3175)
!3183 = !DILocation(line: 903, column: 43, scope: !3175)
!3184 = !DILocation(line: 903, column: 9, scope: !3175)
!3185 = !DILocation(line: 904, column: 31, scope: !3175)
!3186 = !DILocation(line: 904, column: 9, scope: !3175)
!3187 = !DILocation(line: 905, column: 15, scope: !3175)
!3188 = !DILocation(line: 905, column: 18, scope: !3175)
!3189 = !DILocation(line: 905, column: 13, scope: !3175)
!3190 = !DILocation(line: 906, column: 9, scope: !3175)
!3191 = !DILocation(line: 908, column: 18, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 908, column: 13)
!3193 = !DILocation(line: 908, column: 15, scope: !3192)
!3194 = !DILocation(line: 908, column: 13, scope: !3175)
!3195 = !DILocation(line: 908, column: 23, scope: !3192)
!3196 = !DILocation(line: 909, column: 31, scope: !3175)
!3197 = !DILocation(line: 909, column: 9, scope: !3175)
!3198 = !DILocation(line: 910, column: 18, scope: !3175)
!3199 = !DILocation(line: 910, column: 21, scope: !3175)
!3200 = !DILocation(line: 910, column: 16, scope: !3175)
!3201 = !DILocation(line: 910, column: 24, scope: !3175)
!3202 = !DILocation(line: 910, column: 26, scope: !3175)
!3203 = !DILocation(line: 910, column: 13, scope: !3175)
!3204 = !DILocation(line: 912, column: 25, scope: !3175)
!3205 = !DILocation(line: 912, column: 15, scope: !3175)
!3206 = !DILocation(line: 912, column: 13, scope: !3175)
!3207 = !DILocation(line: 913, column: 13, scope: !3175)
!3208 = !DILocation(line: 913, column: 12, scope: !3175)
!3209 = !DILocation(line: 914, column: 31, scope: !3175)
!3210 = !DILocation(line: 914, column: 34, scope: !3175)
!3211 = !DILocation(line: 914, column: 39, scope: !3175)
!3212 = !DILocation(line: 914, column: 9, scope: !3175)
!3213 = !DILocation(line: 915, column: 14, scope: !3175)
!3214 = !DILocation(line: 915, column: 9, scope: !3175)
!3215 = !DILocation(line: 916, column: 31, scope: !3175)
!3216 = !DILocation(line: 916, column: 9, scope: !3175)
!3217 = !DILocation(line: 917, column: 13, scope: !3175)
!3218 = !DILocation(line: 918, column: 9, scope: !3175)
!3219 = !DILocation(line: 920, column: 31, scope: !3175)
!3220 = !DILocation(line: 920, column: 9, scope: !3175)
!3221 = !DILocation(line: 921, column: 31, scope: !3175)
!3222 = !DILocation(line: 921, column: 9, scope: !3175)
!3223 = !DILocation(line: 922, column: 13, scope: !3175)
!3224 = !DILocation(line: 923, column: 9, scope: !3175)
!3225 = !DILocation(line: 925, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 925, column: 9)
!3227 = !DILocation(line: 925, column: 9, scope: !3175)
!3228 = !DILocation(line: 925, column: 9, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !2, line: 925, column: 9)
!3230 = !DILocation(line: 926, column: 9, scope: !3175)
!3231 = !DILocation(line: 928, column: 5, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 928, column: 5)
!3233 = !DILocation(line: 928, column: 5, scope: !1218)
!3234 = !DILocation(line: 928, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !2, line: 928, column: 5)
!3236 = !DILocation(line: 930, column: 5, scope: !1218)
!3237 = !DILocation(line: 931, column: 1, scope: !1218)
!3238 = !DISubprogram(name: "http_chunk_append_mem", scope: !3239, file: !3239, line: 11, type: !3240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3239 = !DIFile(filename: "spack-src/src/http_chunk.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "d35da29ddeb3c6fed6be21558f1a2fe4")
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!87, !169, !163, !454}
!3242 = !DISubprogram(name: "ck_malloc", scope: !1935, file: !1935, line: 72, type: !3243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!28, !454}
!3245 = !DISubprogram(name: "li_base64_enc", scope: !829, file: !829, line: 16, type: !3246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!454, !3248, !454, !3249, !454, !3250, !87}
!3248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!3249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1057)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "base64_charset", file: !829, line: 10, baseType: !828)
!3251 = !DISubprogram(name: "free", scope: !2802, file: !2802, line: 555, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = distinct !DISubprogram(name: "mod_wstunnel_frame_recv", scope: !2, file: !2, line: 1315, type: !3253, scopeLine: 1315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!87, !1016}
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "hctx", arg: 1, scope: !3252, file: !2, line: 1315, type: !1016)
!3257 = !DILocation(line: 1315, column: 42, scope: !3252)
!3258 = !DILocation(line: 1317, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3252, file: !2, line: 1317, column: 9)
!3260 = !DILocation(line: 1317, column: 15, scope: !3259)
!3261 = !DILocation(line: 1317, column: 24, scope: !3259)
!3262 = !DILocation(line: 1317, column: 9, scope: !3252)
!3263 = !DILocation(line: 1317, column: 51, scope: !3259)
!3264 = !DILocation(line: 1317, column: 37, scope: !3259)
!3265 = !DILocation(line: 1317, column: 30, scope: !3259)
!3266 = !DILocation(line: 1320, column: 14, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3252, file: !2, line: 1320, column: 9)
!3268 = !DILocation(line: 1320, column: 20, scope: !3267)
!3269 = !DILocation(line: 1320, column: 11, scope: !3267)
!3270 = !DILocation(line: 1320, column: 9, scope: !3252)
!3271 = !DILocation(line: 1320, column: 50, scope: !3267)
!3272 = !DILocation(line: 1320, column: 37, scope: !3267)
!3273 = !DILocation(line: 1320, column: 30, scope: !3267)
!3274 = !DILocation(line: 1322, column: 5, scope: !3252)
!3275 = !DILocation(line: 1323, column: 1, scope: !3252)
!3276 = distinct !DISubprogram(name: "recv_rfc_6455", scope: !2, file: !2, line: 1121, type: !3253, scopeLine: 1121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3284, !3287, !3288}
!3278 = !DILocalVariable(name: "hctx", arg: 1, scope: !3276, file: !2, line: 1121, type: !1016)
!3279 = !DILocalVariable(name: "r", scope: !3276, file: !2, line: 1122, type: !1227)
!3280 = !DILocalVariable(name: "cq", scope: !3276, file: !2, line: 1123, type: !96)
!3281 = !DILocalVariable(name: "payload", scope: !3276, file: !2, line: 1124, type: !114)
!3282 = !DILocalVariable(name: "c", scope: !3283, file: !2, line: 1127, type: !102)
!3283 = distinct !DILexicalBlock(scope: !3276, file: !2, line: 1127, column: 5)
!3284 = !DILocalVariable(name: "frame", scope: !3285, file: !2, line: 1128, type: !47)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 1127, column: 48)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !2, line: 1127, column: 5)
!3287 = !DILocalVariable(name: "flen", scope: !3285, file: !2, line: 1130, type: !454)
!3288 = !DILocalVariable(name: "i", scope: !3289, file: !2, line: 1133, type: !454)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 1133, column: 9)
!3290 = !DILocation(line: 1121, column: 39, scope: !3276)
!3291 = !DILocation(line: 1122, column: 5, scope: !3276)
!3292 = !DILocation(line: 1122, column: 24, scope: !3276)
!3293 = !DILocation(line: 1122, column: 28, scope: !3276)
!3294 = !DILocation(line: 1122, column: 34, scope: !3276)
!3295 = !DILocation(line: 1122, column: 37, scope: !3276)
!3296 = !DILocation(line: 1123, column: 5, scope: !3276)
!3297 = !DILocation(line: 1123, column: 17, scope: !3276)
!3298 = !DILocation(line: 1123, column: 23, scope: !3276)
!3299 = !DILocation(line: 1123, column: 26, scope: !3276)
!3300 = !DILocation(line: 1124, column: 5, scope: !3276)
!3301 = !DILocation(line: 1124, column: 13, scope: !3276)
!3302 = !DILocation(line: 1124, column: 23, scope: !3276)
!3303 = !DILocation(line: 1124, column: 29, scope: !3276)
!3304 = !DILocation(line: 1124, column: 35, scope: !3276)
!3305 = !DILocation(line: 1125, column: 5, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3276, file: !2, line: 1125, column: 5)
!3307 = !DILocation(line: 1125, column: 5, scope: !3276)
!3308 = !DILocation(line: 1125, column: 5, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !2, line: 1125, column: 5)
!3310 = !DILocation(line: 1127, column: 10, scope: !3283)
!3311 = !DILocation(line: 1127, column: 17, scope: !3283)
!3312 = !DILocation(line: 1127, column: 21, scope: !3283)
!3313 = !DILocation(line: 1127, column: 25, scope: !3283)
!3314 = !{!1694, !1393, i64 0}
!3315 = !DILocation(line: 1127, column: 32, scope: !3286)
!3316 = !DILocation(line: 1127, column: 5, scope: !3283)
!3317 = !DILocation(line: 1128, column: 9, scope: !3285)
!3318 = !DILocation(line: 1128, column: 15, scope: !3285)
!3319 = !DILocation(line: 1128, column: 23, scope: !3285)
!3320 = !DILocation(line: 1128, column: 26, scope: !3285)
!3321 = !{!3322, !1393, i64 16}
!3322 = !{!"chunk", !1393, i64 0, !1394, i64 8, !1393, i64 16, !1402, i64 24, !3323, i64 32}
!3323 = !{!"", !1402, i64 0, !1459, i64 8, !1459, i64 12, !1393, i64 16, !1393, i64 24, !1393, i64 32}
!3324 = !DILocation(line: 1128, column: 31, scope: !3285)
!3325 = !DILocation(line: 1128, column: 35, scope: !3285)
!3326 = !DILocation(line: 1128, column: 38, scope: !3285)
!3327 = !{!3322, !1402, i64 24}
!3328 = !DILocation(line: 1128, column: 34, scope: !3285)
!3329 = !DILocation(line: 1130, column: 9, scope: !3285)
!3330 = !DILocation(line: 1130, column: 16, scope: !3285)
!3331 = !DILocation(line: 1130, column: 44, scope: !3285)
!3332 = !DILocation(line: 1130, column: 47, scope: !3285)
!3333 = !DILocation(line: 1130, column: 32, scope: !3285)
!3334 = !DILocation(line: 1130, column: 54, scope: !3285)
!3335 = !DILocation(line: 1130, column: 57, scope: !3285)
!3336 = !DILocation(line: 1130, column: 52, scope: !3285)
!3337 = !DILocation(line: 1132, column: 9, scope: !3285)
!3338 = !DILocation(line: 1132, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !2, line: 1132, column: 9)
!3340 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 1132, column: 9)
!3341 = !{!3322, !1394, i64 8}
!3342 = !DILocation(line: 1132, column: 9, scope: !3340)
!3343 = !DILocation(line: 1133, column: 14, scope: !3289)
!3344 = !DILocation(line: 1133, column: 21, scope: !3289)
!3345 = !DILocation(line: 1133, column: 28, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3289, file: !2, line: 1133, column: 9)
!3347 = !DILocation(line: 1133, column: 32, scope: !3346)
!3348 = !DILocation(line: 1133, column: 30, scope: !3346)
!3349 = !DILocation(line: 1133, column: 9, scope: !3289)
!3350 = !DILocation(line: 1134, column: 21, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 1133, column: 40)
!3352 = !DILocation(line: 1134, column: 27, scope: !3351)
!3353 = !DILocation(line: 1134, column: 33, scope: !3351)
!3354 = !DILocation(line: 1134, column: 13, scope: !3351)
!3355 = !DILocation(line: 1136, column: 25, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3351, file: !2, line: 1134, column: 40)
!3357 = !DILocation(line: 1136, column: 31, scope: !3356)
!3358 = !DILocation(line: 1136, column: 34, scope: !3356)
!3359 = !DILocation(line: 1136, column: 17, scope: !3356)
!3360 = !DILocation(line: 1138, column: 21, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1138, column: 21)
!3362 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1136, column: 42)
!3363 = !DILocation(line: 1138, column: 21, scope: !3362)
!3364 = !DILocation(line: 1138, column: 21, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1138, column: 21)
!3366 = !DILocation(line: 1139, column: 40, scope: !3362)
!3367 = !DILocation(line: 1139, column: 46, scope: !3362)
!3368 = !DILocation(line: 1139, column: 52, scope: !3362)
!3369 = !DILocation(line: 1139, column: 21, scope: !3362)
!3370 = !DILocation(line: 1139, column: 27, scope: !3362)
!3371 = !DILocation(line: 1139, column: 33, scope: !3362)
!3372 = !DILocation(line: 1139, column: 38, scope: !3362)
!3373 = !DILocation(line: 1140, column: 21, scope: !3362)
!3374 = !DILocation(line: 1142, column: 21, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1142, column: 21)
!3376 = !DILocation(line: 1142, column: 21, scope: !3362)
!3377 = !DILocation(line: 1142, column: 21, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 1142, column: 21)
!3379 = !DILocation(line: 1143, column: 21, scope: !3362)
!3380 = !DILocation(line: 1143, column: 27, scope: !3362)
!3381 = !DILocation(line: 1143, column: 33, scope: !3362)
!3382 = !DILocation(line: 1143, column: 38, scope: !3362)
!3383 = !DILocation(line: 1144, column: 47, scope: !3362)
!3384 = !DILocation(line: 1144, column: 53, scope: !3362)
!3385 = !DILocation(line: 1144, column: 59, scope: !3362)
!3386 = !DILocation(line: 1144, column: 21, scope: !3362)
!3387 = !DILocation(line: 1144, column: 27, scope: !3362)
!3388 = !DILocation(line: 1144, column: 33, scope: !3362)
!3389 = !DILocation(line: 1144, column: 45, scope: !3362)
!3390 = !DILocation(line: 1145, column: 21, scope: !3362)
!3391 = !DILocation(line: 1147, column: 21, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1147, column: 21)
!3393 = !DILocation(line: 1147, column: 21, scope: !3362)
!3394 = !DILocation(line: 1147, column: 21, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 1147, column: 21)
!3396 = !DILocation(line: 1148, column: 21, scope: !3362)
!3397 = !DILocation(line: 1148, column: 27, scope: !3362)
!3398 = !DILocation(line: 1148, column: 33, scope: !3362)
!3399 = !DILocation(line: 1148, column: 38, scope: !3362)
!3400 = !DILocation(line: 1149, column: 47, scope: !3362)
!3401 = !DILocation(line: 1149, column: 53, scope: !3362)
!3402 = !DILocation(line: 1149, column: 59, scope: !3362)
!3403 = !DILocation(line: 1149, column: 21, scope: !3362)
!3404 = !DILocation(line: 1149, column: 27, scope: !3362)
!3405 = !DILocation(line: 1149, column: 33, scope: !3362)
!3406 = !DILocation(line: 1149, column: 45, scope: !3362)
!3407 = !DILocation(line: 1150, column: 21, scope: !3362)
!3408 = !DILocation(line: 1152, column: 21, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1152, column: 21)
!3410 = !DILocation(line: 1152, column: 21, scope: !3362)
!3411 = !DILocation(line: 1152, column: 21, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !2, line: 1152, column: 21)
!3413 = !DILocation(line: 1153, column: 21, scope: !3362)
!3414 = !DILocation(line: 1153, column: 27, scope: !3362)
!3415 = !DILocation(line: 1153, column: 33, scope: !3362)
!3416 = !DILocation(line: 1153, column: 38, scope: !3362)
!3417 = !DILocation(line: 1154, column: 21, scope: !3362)
!3418 = !DILocation(line: 1156, column: 21, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1156, column: 21)
!3420 = !DILocation(line: 1156, column: 21, scope: !3362)
!3421 = !DILocation(line: 1156, column: 21, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !2, line: 1156, column: 21)
!3423 = !DILocation(line: 1157, column: 21, scope: !3362)
!3424 = !DILocation(line: 1157, column: 27, scope: !3362)
!3425 = !DILocation(line: 1157, column: 33, scope: !3362)
!3426 = !DILocation(line: 1157, column: 38, scope: !3362)
!3427 = !DILocation(line: 1158, column: 21, scope: !3362)
!3428 = !DILocation(line: 1160, column: 21, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1160, column: 21)
!3430 = !DILocation(line: 1160, column: 21, scope: !3362)
!3431 = !DILocation(line: 1160, column: 21, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !2, line: 1160, column: 21)
!3433 = !DILocation(line: 1161, column: 21, scope: !3362)
!3434 = !DILocation(line: 1161, column: 27, scope: !3362)
!3435 = !DILocation(line: 1161, column: 33, scope: !3362)
!3436 = !DILocation(line: 1161, column: 38, scope: !3362)
!3437 = !DILocation(line: 1162, column: 21, scope: !3362)
!3438 = !DILocation(line: 1165, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1165, column: 21)
!3440 = !DILocation(line: 1165, column: 21, scope: !3362)
!3441 = !DILocation(line: 1165, column: 21, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !2, line: 1165, column: 21)
!3443 = !DILocation(line: 1166, column: 21, scope: !3362)
!3444 = !DILocation(line: 1169, column: 18, scope: !3356)
!3445 = !DILocation(line: 1170, column: 17, scope: !3356)
!3446 = !DILocation(line: 1170, column: 23, scope: !3356)
!3447 = !DILocation(line: 1170, column: 29, scope: !3356)
!3448 = !DILocation(line: 1170, column: 35, scope: !3356)
!3449 = !DILocation(line: 1171, column: 17, scope: !3356)
!3450 = !DILocation(line: 1173, column: 22, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1173, column: 21)
!3452 = !DILocation(line: 1173, column: 28, scope: !3451)
!3453 = !DILocation(line: 1173, column: 31, scope: !3451)
!3454 = !DILocation(line: 1173, column: 39, scope: !3451)
!3455 = !DILocation(line: 1173, column: 21, scope: !3356)
!3456 = !DILocation(line: 1174, column: 21, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 1174, column: 21)
!3458 = distinct !DILexicalBlock(scope: !3451, file: !2, line: 1173, column: 48)
!3459 = !DILocation(line: 1174, column: 21, scope: !3458)
!3460 = !DILocation(line: 1174, column: 21, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !2, line: 1174, column: 21)
!3462 = !DILocation(line: 1175, column: 21, scope: !3458)
!3463 = !DILocation(line: 1177, column: 17, scope: !3356)
!3464 = !DILocation(line: 1177, column: 23, scope: !3356)
!3465 = !DILocation(line: 1177, column: 29, scope: !3356)
!3466 = !DILocation(line: 1177, column: 33, scope: !3356)
!3467 = !DILocation(line: 1177, column: 42, scope: !3356)
!3468 = !{!1846, !1459, i64 372}
!3469 = !DILocation(line: 1178, column: 50, scope: !3356)
!3470 = !DILocation(line: 1178, column: 56, scope: !3356)
!3471 = !DILocation(line: 1178, column: 59, scope: !3356)
!3472 = !DILocation(line: 1178, column: 39, scope: !3356)
!3473 = !DILocation(line: 1178, column: 17, scope: !3356)
!3474 = !DILocation(line: 1178, column: 23, scope: !3356)
!3475 = !DILocation(line: 1178, column: 29, scope: !3356)
!3476 = !DILocation(line: 1178, column: 33, scope: !3356)
!3477 = !DILocation(line: 1178, column: 37, scope: !3356)
!3478 = !DILocation(line: 1179, column: 21, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1179, column: 21)
!3480 = !DILocation(line: 1179, column: 27, scope: !3479)
!3481 = !DILocation(line: 1179, column: 33, scope: !3479)
!3482 = !DILocation(line: 1179, column: 37, scope: !3479)
!3483 = !DILocation(line: 1179, column: 41, scope: !3479)
!3484 = !DILocation(line: 1179, column: 21, scope: !3356)
!3485 = !DILocation(line: 1180, column: 21, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !2, line: 1180, column: 21)
!3487 = distinct !DILexicalBlock(scope: !3479, file: !2, line: 1179, column: 47)
!3488 = !DILocation(line: 1180, column: 21, scope: !3487)
!3489 = !DILocation(line: 1180, column: 21, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !2, line: 1180, column: 21)
!3491 = !DILocation(line: 1182, column: 21, scope: !3487)
!3492 = !DILocation(line: 1182, column: 27, scope: !3487)
!3493 = !DILocation(line: 1182, column: 33, scope: !3487)
!3494 = !DILocation(line: 1182, column: 39, scope: !3487)
!3495 = !DILocation(line: 1183, column: 17, scope: !3487)
!3496 = !DILocation(line: 1184, column: 26, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3479, file: !2, line: 1184, column: 26)
!3498 = !DILocation(line: 1184, column: 32, scope: !3497)
!3499 = !DILocation(line: 1184, column: 38, scope: !3497)
!3500 = !DILocation(line: 1184, column: 42, scope: !3497)
!3501 = !DILocation(line: 1184, column: 46, scope: !3497)
!3502 = !DILocation(line: 1184, column: 26, scope: !3479)
!3503 = !DILocation(line: 1185, column: 21, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3497, file: !2, line: 1184, column: 76)
!3505 = !DILocation(line: 1185, column: 27, scope: !3504)
!3506 = !DILocation(line: 1185, column: 33, scope: !3504)
!3507 = !DILocation(line: 1185, column: 37, scope: !3504)
!3508 = !DILocation(line: 1185, column: 41, scope: !3504)
!3509 = !DILocation(line: 1186, column: 21, scope: !3504)
!3510 = !DILocation(line: 1186, column: 27, scope: !3504)
!3511 = !DILocation(line: 1186, column: 33, scope: !3504)
!3512 = !DILocation(line: 1186, column: 37, scope: !3504)
!3513 = !DILocation(line: 1186, column: 45, scope: !3504)
!3514 = !{!1846, !1459, i64 368}
!3515 = !DILocation(line: 1187, column: 21, scope: !3504)
!3516 = !DILocation(line: 1187, column: 27, scope: !3504)
!3517 = !DILocation(line: 1187, column: 33, scope: !3504)
!3518 = !DILocation(line: 1187, column: 39, scope: !3504)
!3519 = !DILocation(line: 1189, column: 17, scope: !3504)
!3520 = !DILocation(line: 1190, column: 26, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3497, file: !2, line: 1190, column: 26)
!3522 = !DILocation(line: 1190, column: 32, scope: !3521)
!3523 = !DILocation(line: 1190, column: 38, scope: !3521)
!3524 = !DILocation(line: 1190, column: 42, scope: !3521)
!3525 = !DILocation(line: 1190, column: 46, scope: !3521)
!3526 = !DILocation(line: 1190, column: 26, scope: !3497)
!3527 = !DILocation(line: 1191, column: 21, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3521, file: !2, line: 1190, column: 76)
!3529 = !DILocation(line: 1191, column: 27, scope: !3528)
!3530 = !DILocation(line: 1191, column: 33, scope: !3528)
!3531 = !DILocation(line: 1191, column: 37, scope: !3528)
!3532 = !DILocation(line: 1191, column: 41, scope: !3528)
!3533 = !DILocation(line: 1192, column: 21, scope: !3528)
!3534 = !DILocation(line: 1192, column: 27, scope: !3528)
!3535 = !DILocation(line: 1192, column: 33, scope: !3528)
!3536 = !DILocation(line: 1192, column: 37, scope: !3528)
!3537 = !DILocation(line: 1192, column: 45, scope: !3528)
!3538 = !DILocation(line: 1193, column: 21, scope: !3528)
!3539 = !DILocation(line: 1193, column: 27, scope: !3528)
!3540 = !DILocation(line: 1193, column: 33, scope: !3528)
!3541 = !DILocation(line: 1193, column: 39, scope: !3528)
!3542 = !DILocation(line: 1195, column: 17, scope: !3528)
!3543 = !DILocation(line: 1197, column: 21, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 1197, column: 21)
!3545 = distinct !DILexicalBlock(scope: !3521, file: !2, line: 1196, column: 22)
!3546 = !DILocation(line: 1197, column: 21, scope: !3545)
!3547 = !DILocation(line: 1197, column: 21, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 1197, column: 21)
!3549 = !DILocation(line: 1199, column: 21, scope: !3545)
!3550 = !DILocation(line: 1199, column: 27, scope: !3545)
!3551 = !DILocation(line: 1199, column: 33, scope: !3545)
!3552 = !DILocation(line: 1199, column: 39, scope: !3545)
!3553 = !DILocation(line: 1201, column: 18, scope: !3356)
!3554 = !DILocation(line: 1202, column: 17, scope: !3356)
!3555 = !DILocation(line: 1205, column: 22, scope: !3356)
!3556 = !DILocation(line: 1205, column: 28, scope: !3356)
!3557 = !DILocation(line: 1205, column: 34, scope: !3356)
!3558 = !DILocation(line: 1205, column: 38, scope: !3356)
!3559 = !DILocation(line: 1205, column: 42, scope: !3356)
!3560 = !DILocation(line: 1205, column: 51, scope: !3356)
!3561 = !DILocation(line: 1205, column: 57, scope: !3356)
!3562 = !DILocation(line: 1205, column: 60, scope: !3356)
!3563 = !DILocation(line: 1205, column: 50, scope: !3356)
!3564 = !DILocation(line: 1205, column: 48, scope: !3356)
!3565 = !DILocation(line: 1204, column: 17, scope: !3356)
!3566 = !DILocation(line: 1204, column: 23, scope: !3356)
!3567 = !DILocation(line: 1204, column: 29, scope: !3356)
!3568 = !DILocation(line: 1204, column: 33, scope: !3356)
!3569 = !DILocation(line: 1204, column: 37, scope: !3356)
!3570 = !DILocation(line: 1206, column: 17, scope: !3356)
!3571 = !DILocation(line: 1206, column: 23, scope: !3356)
!3572 = !DILocation(line: 1206, column: 29, scope: !3356)
!3573 = !DILocation(line: 1206, column: 33, scope: !3356)
!3574 = !DILocation(line: 1206, column: 40, scope: !3356)
!3575 = !DILocation(line: 1207, column: 21, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1207, column: 21)
!3577 = !DILocation(line: 1207, column: 27, scope: !3576)
!3578 = !DILocation(line: 1207, column: 33, scope: !3576)
!3579 = !DILocation(line: 1207, column: 37, scope: !3576)
!3580 = !DILocation(line: 1207, column: 45, scope: !3576)
!3581 = !DILocation(line: 1207, column: 21, scope: !3356)
!3582 = !DILocation(line: 1208, column: 25, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !2, line: 1208, column: 25)
!3584 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 1207, column: 51)
!3585 = !DILocation(line: 1208, column: 31, scope: !3583)
!3586 = !DILocation(line: 1208, column: 37, scope: !3583)
!3587 = !DILocation(line: 1208, column: 42, scope: !3583)
!3588 = !DILocation(line: 1208, column: 75, scope: !3583)
!3589 = !DILocation(line: 1209, column: 25, scope: !3583)
!3590 = !DILocation(line: 1209, column: 31, scope: !3583)
!3591 = !DILocation(line: 1209, column: 37, scope: !3583)
!3592 = !DILocation(line: 1209, column: 41, scope: !3583)
!3593 = !DILocation(line: 1209, column: 45, scope: !3583)
!3594 = !DILocation(line: 1208, column: 25, scope: !3584)
!3595 = !DILocation(line: 1210, column: 25, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !2, line: 1210, column: 25)
!3597 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 1209, column: 69)
!3598 = !DILocation(line: 1210, column: 25, scope: !3597)
!3599 = !DILocation(line: 1210, column: 25, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !2, line: 1210, column: 25)
!3601 = !DILocation(line: 1212, column: 25, scope: !3597)
!3602 = !DILocation(line: 1214, column: 21, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3584, file: !2, line: 1214, column: 21)
!3604 = !DILocation(line: 1214, column: 21, scope: !3584)
!3605 = !DILocation(line: 1214, column: 21, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !2, line: 1214, column: 21)
!3607 = !DILocation(line: 1216, column: 21, scope: !3584)
!3608 = !DILocation(line: 1216, column: 27, scope: !3584)
!3609 = !DILocation(line: 1216, column: 33, scope: !3584)
!3610 = !DILocation(line: 1216, column: 39, scope: !3584)
!3611 = !DILocation(line: 1217, column: 17, scope: !3584)
!3612 = !DILocation(line: 1218, column: 18, scope: !3356)
!3613 = !DILocation(line: 1219, column: 17, scope: !3356)
!3614 = !DILocation(line: 1221, column: 66, scope: !3356)
!3615 = !DILocation(line: 1221, column: 72, scope: !3356)
!3616 = !DILocation(line: 1221, column: 17, scope: !3356)
!3617 = !DILocation(line: 1221, column: 23, scope: !3356)
!3618 = !DILocation(line: 1221, column: 29, scope: !3356)
!3619 = !DILocation(line: 1221, column: 33, scope: !3356)
!3620 = !DILocation(line: 1221, column: 38, scope: !3356)
!3621 = !DILocation(line: 1221, column: 44, scope: !3356)
!3622 = !DILocation(line: 1221, column: 50, scope: !3356)
!3623 = !DILocation(line: 1221, column: 54, scope: !3356)
!3624 = !DILocation(line: 1221, column: 64, scope: !3356)
!3625 = !DILocation(line: 1222, column: 17, scope: !3356)
!3626 = !DILocation(line: 1222, column: 23, scope: !3356)
!3627 = !DILocation(line: 1222, column: 29, scope: !3356)
!3628 = !DILocation(line: 1222, column: 33, scope: !3356)
!3629 = !DILocation(line: 1222, column: 41, scope: !3356)
!3630 = !DILocation(line: 1223, column: 21, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1223, column: 21)
!3632 = !DILocation(line: 1223, column: 27, scope: !3631)
!3633 = !DILocation(line: 1223, column: 33, scope: !3631)
!3634 = !DILocation(line: 1223, column: 37, scope: !3631)
!3635 = !DILocation(line: 1223, column: 46, scope: !3631)
!3636 = !DILocation(line: 1223, column: 21, scope: !3356)
!3637 = !DILocation(line: 1224, column: 21, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !2, line: 1223, column: 73)
!3639 = !DILocation(line: 1224, column: 27, scope: !3638)
!3640 = !DILocation(line: 1224, column: 33, scope: !3638)
!3641 = !DILocation(line: 1224, column: 37, scope: !3638)
!3642 = !DILocation(line: 1224, column: 46, scope: !3638)
!3643 = !DILocation(line: 1225, column: 25, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3638, file: !2, line: 1225, column: 25)
!3645 = !DILocation(line: 1225, column: 31, scope: !3644)
!3646 = !DILocation(line: 1225, column: 37, scope: !3644)
!3647 = !DILocation(line: 1225, column: 42, scope: !3644)
!3648 = !DILocation(line: 1225, column: 75, scope: !3644)
!3649 = !DILocation(line: 1226, column: 25, scope: !3644)
!3650 = !DILocation(line: 1226, column: 31, scope: !3644)
!3651 = !DILocation(line: 1226, column: 37, scope: !3644)
!3652 = !DILocation(line: 1226, column: 41, scope: !3644)
!3653 = !DILocation(line: 1226, column: 45, scope: !3644)
!3654 = !DILocation(line: 1225, column: 25, scope: !3638)
!3655 = !DILocation(line: 1227, column: 49, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3644, file: !2, line: 1226, column: 51)
!3657 = !DILocation(line: 1227, column: 25, scope: !3656)
!3658 = !DILocation(line: 1230, column: 21, scope: !3656)
!3659 = !DILocation(line: 1231, column: 25, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3638, file: !2, line: 1231, column: 25)
!3661 = !DILocation(line: 1231, column: 31, scope: !3660)
!3662 = !DILocation(line: 1231, column: 37, scope: !3660)
!3663 = !DILocation(line: 1231, column: 41, scope: !3660)
!3664 = !DILocation(line: 1231, column: 45, scope: !3660)
!3665 = !DILocation(line: 1231, column: 25, scope: !3638)
!3666 = !DILocation(line: 1232, column: 25, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1231, column: 51)
!3668 = !DILocation(line: 1232, column: 31, scope: !3667)
!3669 = !DILocation(line: 1232, column: 37, scope: !3667)
!3670 = !DILocation(line: 1232, column: 43, scope: !3667)
!3671 = !DILocation(line: 1233, column: 21, scope: !3667)
!3672 = !DILocation(line: 1235, column: 25, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1234, column: 26)
!3674 = !DILocation(line: 1235, column: 31, scope: !3673)
!3675 = !DILocation(line: 1235, column: 37, scope: !3673)
!3676 = !DILocation(line: 1235, column: 43, scope: !3673)
!3677 = !DILocation(line: 1238, column: 17, scope: !3638)
!3678 = !DILocation(line: 1239, column: 18, scope: !3356)
!3679 = !DILocation(line: 1240, column: 17, scope: !3356)
!3680 = !DILocation(line: 1243, column: 21, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1243, column: 21)
!3682 = !DILocation(line: 1243, column: 27, scope: !3681)
!3683 = !DILocation(line: 1243, column: 33, scope: !3681)
!3684 = !DILocation(line: 1243, column: 37, scope: !3681)
!3685 = !DILocation(line: 1243, column: 44, scope: !3681)
!3686 = !DILocation(line: 1243, column: 51, scope: !3681)
!3687 = !DILocation(line: 1243, column: 49, scope: !3681)
!3688 = !DILocation(line: 1243, column: 41, scope: !3681)
!3689 = !DILocation(line: 1243, column: 21, scope: !3356)
!3690 = !DILocation(line: 1244, column: 21, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 1244, column: 21)
!3692 = distinct !DILexicalBlock(scope: !3681, file: !2, line: 1243, column: 54)
!3693 = !DILocation(line: 1244, column: 21, scope: !3692)
!3694 = !DILocation(line: 1244, column: 21, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 1244, column: 21)
!3696 = !DILocation(line: 1246, column: 46, scope: !3692)
!3697 = !DILocation(line: 1246, column: 55, scope: !3692)
!3698 = !DILocation(line: 1246, column: 61, scope: !3692)
!3699 = !DILocation(line: 1246, column: 60, scope: !3692)
!3700 = !DILocation(line: 1247, column: 47, scope: !3692)
!3701 = !DILocation(line: 1247, column: 53, scope: !3692)
!3702 = !DILocation(line: 1247, column: 59, scope: !3692)
!3703 = !DILocation(line: 1247, column: 63, scope: !3692)
!3704 = !DILocation(line: 1247, column: 67, scope: !3692)
!3705 = !DILocation(line: 1246, column: 21, scope: !3692)
!3706 = !DILocation(line: 1248, column: 35, scope: !3692)
!3707 = !DILocation(line: 1248, column: 41, scope: !3692)
!3708 = !DILocation(line: 1248, column: 47, scope: !3692)
!3709 = !DILocation(line: 1248, column: 51, scope: !3692)
!3710 = !DILocation(line: 1248, column: 55, scope: !3692)
!3711 = !DILocation(line: 1248, column: 23, scope: !3692)
!3712 = !DILocation(line: 1249, column: 21, scope: !3692)
!3713 = !DILocation(line: 1249, column: 27, scope: !3692)
!3714 = !DILocation(line: 1249, column: 33, scope: !3692)
!3715 = !DILocation(line: 1249, column: 37, scope: !3692)
!3716 = !DILocation(line: 1249, column: 41, scope: !3692)
!3717 = !DILocation(line: 1250, column: 21, scope: !3692)
!3718 = !DILocation(line: 1250, column: 27, scope: !3692)
!3719 = !DILocation(line: 1250, column: 33, scope: !3692)
!3720 = !DILocation(line: 1250, column: 39, scope: !3692)
!3721 = !DILocation(line: 1251, column: 21, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 1251, column: 21)
!3723 = !DILocation(line: 1251, column: 21, scope: !3692)
!3724 = !DILocation(line: 1251, column: 21, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 1251, column: 21)
!3726 = !DILocation(line: 1253, column: 17, scope: !3692)
!3727 = !DILocation(line: 1255, column: 21, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !2, line: 1255, column: 21)
!3729 = distinct !DILexicalBlock(scope: !3681, file: !2, line: 1254, column: 22)
!3730 = !DILocation(line: 1255, column: 21, scope: !3729)
!3731 = !DILocation(line: 1255, column: 21, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3728, file: !2, line: 1255, column: 21)
!3733 = !DILocation(line: 1256, column: 46, scope: !3729)
!3734 = !DILocation(line: 1256, column: 55, scope: !3729)
!3735 = !DILocation(line: 1256, column: 61, scope: !3729)
!3736 = !DILocation(line: 1256, column: 60, scope: !3729)
!3737 = !DILocation(line: 1256, column: 64, scope: !3729)
!3738 = !DILocation(line: 1256, column: 71, scope: !3729)
!3739 = !DILocation(line: 1256, column: 69, scope: !3729)
!3740 = !DILocation(line: 1256, column: 21, scope: !3729)
!3741 = !DILocation(line: 1257, column: 44, scope: !3729)
!3742 = !DILocation(line: 1257, column: 51, scope: !3729)
!3743 = !DILocation(line: 1257, column: 49, scope: !3729)
!3744 = !DILocation(line: 1257, column: 21, scope: !3729)
!3745 = !DILocation(line: 1257, column: 27, scope: !3729)
!3746 = !DILocation(line: 1257, column: 33, scope: !3729)
!3747 = !DILocation(line: 1257, column: 37, scope: !3729)
!3748 = !DILocation(line: 1257, column: 41, scope: !3729)
!3749 = !DILocation(line: 1258, column: 26, scope: !3729)
!3750 = !DILocation(line: 1258, column: 33, scope: !3729)
!3751 = !DILocation(line: 1258, column: 31, scope: !3729)
!3752 = !DILocation(line: 1258, column: 23, scope: !3729)
!3753 = !DILocation(line: 1259, column: 21, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3729, file: !2, line: 1259, column: 21)
!3755 = !DILocation(line: 1259, column: 21, scope: !3729)
!3756 = !DILocation(line: 1259, column: 21, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !2, line: 1259, column: 21)
!3758 = !DILocation(line: 1262, column: 25, scope: !3356)
!3759 = !DILocation(line: 1262, column: 31, scope: !3356)
!3760 = !DILocation(line: 1262, column: 37, scope: !3356)
!3761 = !DILocation(line: 1262, column: 17, scope: !3356)
!3762 = !DILocation(line: 1266, column: 36, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 1265, column: 19)
!3764 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1262, column: 43)
!3765 = !DILocation(line: 1266, column: 21, scope: !3763)
!3766 = !DILocation(line: 1267, column: 47, scope: !3763)
!3767 = !DILocation(line: 1267, column: 53, scope: !3763)
!3768 = !DILocation(line: 1267, column: 56, scope: !3763)
!3769 = !DILocation(line: 1267, column: 60, scope: !3763)
!3770 = !DILocation(line: 1267, column: 21, scope: !3763)
!3771 = !DILocation(line: 1269, column: 21, scope: !3763)
!3772 = !DILocation(line: 1272, column: 25, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 1272, column: 25)
!3774 = !DILocation(line: 1272, column: 31, scope: !3773)
!3775 = !DILocation(line: 1272, column: 37, scope: !3773)
!3776 = !DILocation(line: 1272, column: 41, scope: !3773)
!3777 = !DILocation(line: 1272, column: 45, scope: !3773)
!3778 = !DILocation(line: 1272, column: 25, scope: !3764)
!3779 = !DILocation(line: 1273, column: 40, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3773, file: !2, line: 1272, column: 51)
!3781 = !DILocation(line: 1273, column: 25, scope: !3780)
!3782 = !DILocation(line: 1274, column: 49, scope: !3780)
!3783 = !DILocation(line: 1276, column: 27, scope: !3780)
!3784 = !DILocation(line: 1276, column: 36, scope: !3780)
!3785 = !DILocation(line: 1276, column: 53, scope: !3780)
!3786 = !DILocation(line: 1276, column: 41, scope: !3780)
!3787 = !DILocation(line: 1274, column: 25, scope: !3780)
!3788 = !DILocation(line: 1277, column: 38, scope: !3780)
!3789 = !DILocation(line: 1277, column: 25, scope: !3780)
!3790 = !DILocation(line: 1278, column: 21, scope: !3780)
!3791 = !DILocation(line: 1279, column: 21, scope: !3764)
!3792 = !DILocation(line: 1281, column: 34, scope: !3764)
!3793 = !DILocation(line: 1281, column: 21, scope: !3764)
!3794 = !DILocation(line: 1282, column: 21, scope: !3764)
!3795 = !DILocation(line: 1283, column: 17, scope: !3764)
!3796 = !DILocation(line: 1285, column: 21, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 1285, column: 21)
!3798 = !DILocation(line: 1285, column: 21, scope: !3764)
!3799 = !DILocation(line: 1285, column: 21, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !2, line: 1285, column: 21)
!3801 = !DILocation(line: 1286, column: 21, scope: !3764)
!3802 = !DILocation(line: 1288, column: 17, scope: !3356)
!3803 = !DILocation(line: 1290, column: 17, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1290, column: 17)
!3805 = !DILocation(line: 1290, column: 17, scope: !3356)
!3806 = !DILocation(line: 1290, column: 17, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3804, file: !2, line: 1290, column: 17)
!3808 = !DILocation(line: 1291, column: 17, scope: !3356)
!3809 = !DILocation(line: 1133, column: 9, scope: !3346)
!3810 = distinct !{!3810, !3349, !3811, !1607}
!3811 = !DILocation(line: 1293, column: 9, scope: !3289)
!3812 = !DILocation(line: 1294, column: 5, scope: !3286)
!3813 = !DILocation(line: 1294, column: 5, scope: !3285)
!3814 = !DILocation(line: 1127, column: 39, scope: !3286)
!3815 = !DILocation(line: 1127, column: 42, scope: !3286)
!3816 = !{!3322, !1393, i64 0}
!3817 = !DILocation(line: 1127, column: 37, scope: !3286)
!3818 = !DILocation(line: 1127, column: 5, scope: !3286)
!3819 = distinct !{!3819, !3316, !3820, !1607}
!3820 = !DILocation(line: 1294, column: 5, scope: !3283)
!3821 = !DILocation(line: 1297, column: 29, scope: !3276)
!3822 = !DILocation(line: 1297, column: 51, scope: !3276)
!3823 = !DILocation(line: 1297, column: 33, scope: !3276)
!3824 = !DILocation(line: 1297, column: 5, scope: !3276)
!3825 = !DILocation(line: 1298, column: 5, scope: !3276)
!3826 = !DILocation(line: 1299, column: 1, scope: !3276)
!3827 = distinct !DISubprogram(name: "recv_ietf_00", scope: !2, file: !2, line: 933, type: !3253, scopeLine: 933, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3836, !3839, !3840, !3842, !3850}
!3829 = !DILocalVariable(name: "hctx", arg: 1, scope: !3827, file: !2, line: 933, type: !1016)
!3830 = !DILocalVariable(name: "r", scope: !3827, file: !2, line: 934, type: !1227)
!3831 = !DILocalVariable(name: "cq", scope: !3827, file: !2, line: 935, type: !96)
!3832 = !DILocalVariable(name: "payload", scope: !3827, file: !2, line: 936, type: !114)
!3833 = !DILocalVariable(name: "mem", scope: !3827, file: !2, line: 937, type: !47)
!3834 = !DILocalVariable(name: "c", scope: !3835, file: !2, line: 940, type: !102)
!3835 = distinct !DILexicalBlock(scope: !3827, file: !2, line: 940, column: 5)
!3836 = !DILocalVariable(name: "frame", scope: !3837, file: !2, line: 941, type: !47)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !2, line: 940, column: 48)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !2, line: 940, column: 5)
!3839 = !DILocalVariable(name: "flen", scope: !3837, file: !2, line: 943, type: !454)
!3840 = !DILocalVariable(name: "i", scope: !3841, file: !2, line: 946, type: !454)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 946, column: 9)
!3842 = !DILocalVariable(name: "b", scope: !3843, file: !2, line: 999, type: !114)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !2, line: 998, column: 55)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !2, line: 997, column: 25)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 996, column: 22)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 990, column: 21)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !2, line: 947, column: 40)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !2, line: 946, column: 40)
!3849 = distinct !DILexicalBlock(scope: !3841, file: !2, line: 946, column: 9)
!3850 = !DILocalVariable(name: "len", scope: !3843, file: !2, line: 1000, type: !454)
!3851 = !DILocation(line: 933, column: 38, scope: !3827)
!3852 = !DILocation(line: 934, column: 5, scope: !3827)
!3853 = !DILocation(line: 934, column: 24, scope: !3827)
!3854 = !DILocation(line: 934, column: 28, scope: !3827)
!3855 = !DILocation(line: 934, column: 34, scope: !3827)
!3856 = !DILocation(line: 934, column: 37, scope: !3827)
!3857 = !DILocation(line: 935, column: 5, scope: !3827)
!3858 = !DILocation(line: 935, column: 17, scope: !3827)
!3859 = !DILocation(line: 935, column: 23, scope: !3827)
!3860 = !DILocation(line: 935, column: 26, scope: !3827)
!3861 = !DILocation(line: 936, column: 5, scope: !3827)
!3862 = !DILocation(line: 936, column: 13, scope: !3827)
!3863 = !DILocation(line: 936, column: 23, scope: !3827)
!3864 = !DILocation(line: 936, column: 29, scope: !3827)
!3865 = !DILocation(line: 936, column: 35, scope: !3827)
!3866 = !DILocation(line: 937, column: 5, scope: !3827)
!3867 = !DILocation(line: 937, column: 11, scope: !3827)
!3868 = !DILocation(line: 938, column: 5, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3827, file: !2, line: 938, column: 5)
!3870 = !DILocation(line: 938, column: 5, scope: !3827)
!3871 = !DILocation(line: 938, column: 5, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !2, line: 938, column: 5)
!3873 = !DILocation(line: 940, column: 10, scope: !3835)
!3874 = !DILocation(line: 940, column: 17, scope: !3835)
!3875 = !DILocation(line: 940, column: 21, scope: !3835)
!3876 = !DILocation(line: 940, column: 25, scope: !3835)
!3877 = !DILocation(line: 940, column: 32, scope: !3838)
!3878 = !DILocation(line: 940, column: 5, scope: !3835)
!3879 = !DILocation(line: 941, column: 9, scope: !3837)
!3880 = !DILocation(line: 941, column: 15, scope: !3837)
!3881 = !DILocation(line: 941, column: 23, scope: !3837)
!3882 = !DILocation(line: 941, column: 26, scope: !3837)
!3883 = !DILocation(line: 941, column: 31, scope: !3837)
!3884 = !DILocation(line: 941, column: 35, scope: !3837)
!3885 = !DILocation(line: 941, column: 38, scope: !3837)
!3886 = !DILocation(line: 941, column: 34, scope: !3837)
!3887 = !DILocation(line: 943, column: 9, scope: !3837)
!3888 = !DILocation(line: 943, column: 16, scope: !3837)
!3889 = !DILocation(line: 943, column: 44, scope: !3837)
!3890 = !DILocation(line: 943, column: 47, scope: !3837)
!3891 = !DILocation(line: 943, column: 32, scope: !3837)
!3892 = !DILocation(line: 943, column: 54, scope: !3837)
!3893 = !DILocation(line: 943, column: 57, scope: !3837)
!3894 = !DILocation(line: 943, column: 52, scope: !3837)
!3895 = !DILocation(line: 945, column: 9, scope: !3837)
!3896 = !DILocation(line: 945, column: 9, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !2, line: 945, column: 9)
!3898 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 945, column: 9)
!3899 = !DILocation(line: 945, column: 9, scope: !3898)
!3900 = !DILocation(line: 946, column: 14, scope: !3841)
!3901 = !DILocation(line: 946, column: 21, scope: !3841)
!3902 = !DILocation(line: 946, column: 28, scope: !3849)
!3903 = !DILocation(line: 946, column: 32, scope: !3849)
!3904 = !DILocation(line: 946, column: 30, scope: !3849)
!3905 = !DILocation(line: 946, column: 9, scope: !3841)
!3906 = !DILocation(line: 947, column: 21, scope: !3848)
!3907 = !DILocation(line: 947, column: 27, scope: !3848)
!3908 = !DILocation(line: 947, column: 33, scope: !3848)
!3909 = !DILocation(line: 947, column: 13, scope: !3848)
!3910 = !DILocation(line: 949, column: 17, scope: !3847)
!3911 = !DILocation(line: 949, column: 23, scope: !3847)
!3912 = !DILocation(line: 949, column: 29, scope: !3847)
!3913 = !DILocation(line: 949, column: 33, scope: !3847)
!3914 = !DILocation(line: 949, column: 37, scope: !3847)
!3915 = !DILocation(line: 950, column: 21, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 950, column: 21)
!3917 = !DILocation(line: 950, column: 27, scope: !3916)
!3918 = !DILocation(line: 950, column: 30, scope: !3916)
!3919 = !DILocation(line: 950, column: 21, scope: !3847)
!3920 = !DILocation(line: 951, column: 21, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3916, file: !2, line: 950, column: 39)
!3922 = !DILocation(line: 951, column: 27, scope: !3921)
!3923 = !DILocation(line: 951, column: 33, scope: !3921)
!3924 = !DILocation(line: 951, column: 39, scope: !3921)
!3925 = !DILocation(line: 952, column: 22, scope: !3921)
!3926 = !DILocation(line: 953, column: 17, scope: !3921)
!3927 = !DILocation(line: 954, column: 44, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3916, file: !2, line: 954, column: 26)
!3929 = !DILocation(line: 954, column: 51, scope: !3928)
!3930 = !DILocation(line: 954, column: 26, scope: !3928)
!3931 = !DILocation(line: 954, column: 54, scope: !3928)
!3932 = !DILocation(line: 954, column: 26, scope: !3916)
!3933 = !DILocation(line: 955, column: 21, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !2, line: 955, column: 21)
!3935 = distinct !DILexicalBlock(scope: !3928, file: !2, line: 954, column: 63)
!3936 = !DILocation(line: 955, column: 21, scope: !3935)
!3937 = !DILocation(line: 955, column: 21, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 955, column: 21)
!3939 = !DILocation(line: 956, column: 21, scope: !3935)
!3940 = !DILocation(line: 959, column: 21, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !2, line: 959, column: 21)
!3942 = distinct !DILexicalBlock(scope: !3928, file: !2, line: 958, column: 22)
!3943 = !DILocation(line: 959, column: 21, scope: !3942)
!3944 = !DILocation(line: 959, column: 21, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3941, file: !2, line: 959, column: 21)
!3946 = !DILocation(line: 960, column: 21, scope: !3942)
!3947 = !DILocation(line: 962, column: 17, scope: !3847)
!3948 = !DILocation(line: 964, column: 38, scope: !3847)
!3949 = !DILocation(line: 964, column: 44, scope: !3847)
!3950 = !DILocation(line: 964, column: 43, scope: !3847)
!3951 = !DILocation(line: 964, column: 53, scope: !3847)
!3952 = !DILocation(line: 964, column: 60, scope: !3847)
!3953 = !DILocation(line: 964, column: 58, scope: !3847)
!3954 = !DILocation(line: 964, column: 31, scope: !3847)
!3955 = !DILocation(line: 964, column: 21, scope: !3847)
!3956 = !DILocation(line: 965, column: 21, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 965, column: 21)
!3958 = !DILocation(line: 965, column: 25, scope: !3957)
!3959 = !DILocation(line: 965, column: 21, scope: !3847)
!3960 = !DILocation(line: 966, column: 21, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 966, column: 21)
!3962 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 965, column: 34)
!3963 = !DILocation(line: 966, column: 21, scope: !3962)
!3964 = !DILocation(line: 966, column: 21, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !2, line: 966, column: 21)
!3966 = !DILocation(line: 967, column: 44, scope: !3962)
!3967 = !DILocation(line: 967, column: 51, scope: !3962)
!3968 = !DILocation(line: 967, column: 49, scope: !3962)
!3969 = !DILocation(line: 967, column: 21, scope: !3962)
!3970 = !DILocation(line: 967, column: 27, scope: !3962)
!3971 = !DILocation(line: 967, column: 33, scope: !3962)
!3972 = !DILocation(line: 967, column: 37, scope: !3962)
!3973 = !DILocation(line: 967, column: 41, scope: !3962)
!3974 = !DILocation(line: 968, column: 25, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 968, column: 25)
!3976 = !DILocation(line: 968, column: 31, scope: !3975)
!3977 = !DILocation(line: 968, column: 37, scope: !3975)
!3978 = !DILocation(line: 968, column: 41, scope: !3975)
!3979 = !DILocation(line: 968, column: 45, scope: !3975)
!3980 = !DILocation(line: 968, column: 25, scope: !3962)
!3981 = !DILocation(line: 969, column: 25, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !2, line: 969, column: 25)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !2, line: 968, column: 69)
!3984 = !DILocation(line: 969, column: 25, scope: !3983)
!3985 = !DILocation(line: 969, column: 25, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3982, file: !2, line: 969, column: 25)
!3987 = !DILocation(line: 971, column: 25, scope: !3983)
!3988 = !DILocation(line: 973, column: 46, scope: !3962)
!3989 = !DILocation(line: 973, column: 55, scope: !3962)
!3990 = !DILocation(line: 973, column: 61, scope: !3962)
!3991 = !DILocation(line: 973, column: 60, scope: !3962)
!3992 = !DILocation(line: 973, column: 64, scope: !3962)
!3993 = !DILocation(line: 973, column: 71, scope: !3962)
!3994 = !DILocation(line: 973, column: 69, scope: !3962)
!3995 = !DILocation(line: 973, column: 21, scope: !3962)
!3996 = !DILocation(line: 974, column: 26, scope: !3962)
!3997 = !DILocation(line: 974, column: 33, scope: !3962)
!3998 = !DILocation(line: 974, column: 31, scope: !3962)
!3999 = !DILocation(line: 974, column: 23, scope: !3962)
!4000 = !DILocation(line: 975, column: 17, scope: !3962)
!4001 = !DILocation(line: 977, column: 21, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 977, column: 21)
!4003 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 976, column: 22)
!4004 = !DILocation(line: 977, column: 21, scope: !4003)
!4005 = !DILocation(line: 977, column: 21, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !2, line: 977, column: 21)
!4007 = !DILocation(line: 979, column: 45, scope: !4003)
!4008 = !DILocation(line: 979, column: 52, scope: !4003)
!4009 = !DILocation(line: 979, column: 58, scope: !4003)
!4010 = !DILocation(line: 979, column: 57, scope: !4003)
!4011 = !DILocation(line: 979, column: 49, scope: !4003)
!4012 = !DILocation(line: 979, column: 21, scope: !4003)
!4013 = !DILocation(line: 979, column: 27, scope: !4003)
!4014 = !DILocation(line: 979, column: 33, scope: !4003)
!4015 = !DILocation(line: 979, column: 37, scope: !4003)
!4016 = !DILocation(line: 979, column: 41, scope: !4003)
!4017 = !DILocation(line: 980, column: 25, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 980, column: 25)
!4019 = !DILocation(line: 980, column: 31, scope: !4018)
!4020 = !DILocation(line: 980, column: 37, scope: !4018)
!4021 = !DILocation(line: 980, column: 41, scope: !4018)
!4022 = !DILocation(line: 980, column: 45, scope: !4018)
!4023 = !DILocation(line: 980, column: 25, scope: !4003)
!4024 = !DILocation(line: 981, column: 25, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 981, column: 25)
!4026 = distinct !DILexicalBlock(scope: !4018, file: !2, line: 980, column: 69)
!4027 = !DILocation(line: 981, column: 25, scope: !4026)
!4028 = !DILocation(line: 981, column: 25, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 981, column: 25)
!4030 = !DILocation(line: 983, column: 25, scope: !4026)
!4031 = !DILocation(line: 985, column: 46, scope: !4003)
!4032 = !DILocation(line: 985, column: 55, scope: !4003)
!4033 = !DILocation(line: 985, column: 61, scope: !4003)
!4034 = !DILocation(line: 985, column: 60, scope: !4003)
!4035 = !DILocation(line: 985, column: 64, scope: !4003)
!4036 = !DILocation(line: 985, column: 71, scope: !4003)
!4037 = !DILocation(line: 985, column: 77, scope: !4003)
!4038 = !DILocation(line: 985, column: 76, scope: !4003)
!4039 = !DILocation(line: 985, column: 68, scope: !4003)
!4040 = !DILocation(line: 985, column: 21, scope: !4003)
!4041 = !DILocation(line: 986, column: 27, scope: !4003)
!4042 = !DILocation(line: 986, column: 34, scope: !4003)
!4043 = !DILocation(line: 986, column: 40, scope: !4003)
!4044 = !DILocation(line: 986, column: 39, scope: !4003)
!4045 = !DILocation(line: 986, column: 31, scope: !4003)
!4046 = !DILocation(line: 986, column: 23, scope: !4003)
!4047 = !DILocation(line: 987, column: 21, scope: !4003)
!4048 = !DILocation(line: 987, column: 27, scope: !4003)
!4049 = !DILocation(line: 987, column: 33, scope: !4003)
!4050 = !DILocation(line: 987, column: 39, scope: !4003)
!4051 = !DILocation(line: 989, column: 18, scope: !3847)
!4052 = !DILocation(line: 990, column: 21, scope: !3846)
!4053 = !DILocation(line: 990, column: 27, scope: !3846)
!4054 = !DILocation(line: 990, column: 33, scope: !3846)
!4055 = !DILocation(line: 990, column: 38, scope: !3846)
!4056 = !DILocation(line: 991, column: 21, scope: !3846)
!4057 = !DILocation(line: 991, column: 41, scope: !3846)
!4058 = !DILocation(line: 991, column: 25, scope: !3846)
!4059 = !DILocation(line: 990, column: 21, scope: !3847)
!4060 = !DILocation(line: 992, column: 21, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 991, column: 51)
!4062 = !DILocation(line: 992, column: 27, scope: !4061)
!4063 = !DILocation(line: 992, column: 33, scope: !4061)
!4064 = !DILocation(line: 992, column: 37, scope: !4061)
!4065 = !DILocation(line: 992, column: 41, scope: !4061)
!4066 = !DILocation(line: 993, column: 47, scope: !4061)
!4067 = !DILocation(line: 993, column: 53, scope: !4061)
!4068 = !DILocation(line: 993, column: 56, scope: !4061)
!4069 = !DILocation(line: 993, column: 60, scope: !4061)
!4070 = !DILocation(line: 993, column: 21, scope: !4061)
!4071 = !DILocation(line: 995, column: 17, scope: !4061)
!4072 = !DILocation(line: 997, column: 25, scope: !3844)
!4073 = !DILocation(line: 997, column: 31, scope: !3844)
!4074 = !DILocation(line: 997, column: 37, scope: !3844)
!4075 = !DILocation(line: 997, column: 43, scope: !3844)
!4076 = !DILocation(line: 998, column: 25, scope: !3844)
!4077 = !DILocation(line: 998, column: 45, scope: !3844)
!4078 = !DILocation(line: 998, column: 29, scope: !3844)
!4079 = !DILocation(line: 997, column: 25, scope: !3845)
!4080 = !DILocation(line: 999, column: 25, scope: !3843)
!4081 = !DILocation(line: 999, column: 33, scope: !3843)
!4082 = !DILocation(line: 1000, column: 25, scope: !3843)
!4083 = !DILocation(line: 1000, column: 32, scope: !3843)
!4084 = !DILocation(line: 1000, column: 50, scope: !3843)
!4085 = !DILocation(line: 1000, column: 38, scope: !3843)
!4086 = !DILocation(line: 1001, column: 32, scope: !3843)
!4087 = !DILocation(line: 1001, column: 35, scope: !3843)
!4088 = !DILocation(line: 1001, column: 38, scope: !3843)
!4089 = !DILocation(line: 1001, column: 40, scope: !3843)
!4090 = !DILocation(line: 1001, column: 42, scope: !3843)
!4091 = !DILocation(line: 1001, column: 29, scope: !3843)
!4092 = !DILocation(line: 1002, column: 48, scope: !3843)
!4093 = !DILocation(line: 1002, column: 54, scope: !3843)
!4094 = !DILocation(line: 1002, column: 57, scope: !3843)
!4095 = !DILocation(line: 1002, column: 25, scope: !3843)
!4096 = !DILocation(line: 1003, column: 29, scope: !3843)
!4097 = !DILocation(line: 1003, column: 35, scope: !3843)
!4098 = !DILocation(line: 1003, column: 38, scope: !3843)
!4099 = !DILocation(line: 1003, column: 41, scope: !3843)
!4100 = !{!1846, !1393, i64 64}
!4101 = !DILocation(line: 1003, column: 47, scope: !3843)
!4102 = !DILocation(line: 1003, column: 27, scope: !3843)
!4103 = !DILocation(line: 1004, column: 43, scope: !3843)
!4104 = !DILocation(line: 1004, column: 31, scope: !3843)
!4105 = !DILocation(line: 1004, column: 29, scope: !3843)
!4106 = !DILocation(line: 1005, column: 25, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 1005, column: 25)
!4108 = !DILocation(line: 1005, column: 25, scope: !3843)
!4109 = !DILocation(line: 1005, column: 25, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !2, line: 1005, column: 25)
!4111 = !DILocation(line: 1008, column: 57, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 1007, column: 29)
!4113 = !DILocation(line: 1008, column: 60, scope: !4112)
!4114 = !DILocation(line: 1008, column: 29, scope: !4112)
!4115 = !DILocation(line: 1007, column: 34, scope: !4112)
!4116 = !DILocation(line: 1007, column: 29, scope: !3843)
!4117 = !DILocation(line: 1010, column: 29, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !2, line: 1010, column: 29)
!4119 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 1009, column: 75)
!4120 = !DILocation(line: 1010, column: 29, scope: !4119)
!4121 = !DILocation(line: 1010, column: 29, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !2, line: 1010, column: 29)
!4123 = !DILocation(line: 1011, column: 29, scope: !4119)
!4124 = !DILocation(line: 1013, column: 38, scope: !3843)
!4125 = !DILocation(line: 1013, column: 25, scope: !3843)
!4126 = !DILocation(line: 1015, column: 61, scope: !3843)
!4127 = !DILocation(line: 1015, column: 49, scope: !3843)
!4128 = !DILocation(line: 1015, column: 64, scope: !3843)
!4129 = !DILocation(line: 1015, column: 63, scope: !3843)
!4130 = !DILocation(line: 1015, column: 25, scope: !3843)
!4131 = !DILocation(line: 1015, column: 31, scope: !3843)
!4132 = !DILocation(line: 1015, column: 34, scope: !3843)
!4133 = !DILocation(line: 1015, column: 37, scope: !3843)
!4134 = !DILocation(line: 1015, column: 46, scope: !3843)
!4135 = !{!1846, !1402, i64 72}
!4136 = !DILocation(line: 1016, column: 21, scope: !3844)
!4137 = !DILocation(line: 1016, column: 21, scope: !3843)
!4138 = !DILocation(line: 1018, column: 17, scope: !3847)
!4139 = !DILocation(line: 1020, column: 17, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !3847, file: !2, line: 1020, column: 17)
!4141 = !DILocation(line: 1020, column: 17, scope: !3847)
!4142 = !DILocation(line: 1020, column: 17, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 1020, column: 17)
!4144 = !DILocation(line: 1021, column: 17, scope: !3847)
!4145 = !DILocation(line: 946, column: 9, scope: !3849)
!4146 = distinct !{!4146, !3905, !4147, !1607}
!4147 = !DILocation(line: 1023, column: 9, scope: !3841)
!4148 = !DILocation(line: 1024, column: 5, scope: !3838)
!4149 = !DILocation(line: 1024, column: 5, scope: !3837)
!4150 = !DILocation(line: 940, column: 39, scope: !3838)
!4151 = !DILocation(line: 940, column: 42, scope: !3838)
!4152 = !DILocation(line: 940, column: 37, scope: !3838)
!4153 = !DILocation(line: 940, column: 5, scope: !3838)
!4154 = distinct !{!4154, !3878, !4155, !1607}
!4155 = !DILocation(line: 1024, column: 5, scope: !3835)
!4156 = !DILocation(line: 1027, column: 29, scope: !3827)
!4157 = !DILocation(line: 1027, column: 51, scope: !3827)
!4158 = !DILocation(line: 1027, column: 33, scope: !3827)
!4159 = !DILocation(line: 1027, column: 5, scope: !3827)
!4160 = !DILocation(line: 1028, column: 5, scope: !3827)
!4161 = !DILocation(line: 1029, column: 1, scope: !3827)
!4162 = distinct !DISubprogram(name: "chunkqueue_length", scope: !98, file: !98, line: 170, type: !4163, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4167)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!116, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!4167 = !{!4168}
!4168 = !DILocalVariable(name: "cq", arg: 1, scope: !4162, file: !98, line: 170, type: !4165)
!4169 = !DILocation(line: 170, column: 57, scope: !4162)
!4170 = !DILocation(line: 171, column: 9, scope: !4162)
!4171 = !DILocation(line: 171, column: 13, scope: !4162)
!4172 = !{!1694, !1402, i64 16}
!4173 = !DILocation(line: 171, column: 24, scope: !4162)
!4174 = !DILocation(line: 171, column: 28, scope: !4162)
!4175 = !{!1694, !1402, i64 24}
!4176 = !DILocation(line: 171, column: 22, scope: !4162)
!4177 = !DILocation(line: 171, column: 2, scope: !4162)
!4178 = !DISubprogram(name: "ck_assert_failed", scope: !1935, file: !1935, line: 109, type: !4179, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !163, !15, !163}
!4181 = !DISubprogram(name: "buffer_append_string_len", scope: !43, file: !43, line: 107, type: !4182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !4184, !2805, !454}
!4184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!4185 = distinct !DISubprogram(name: "unmask_payload", scope: !2, file: !2, line: 1113, type: !4186, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !1016}
!4188 = !{!4189, !4190, !4191, !4193}
!4189 = !DILocalVariable(name: "hctx", arg: 1, scope: !4185, file: !2, line: 1113, type: !1016)
!4190 = !DILocalVariable(name: "b", scope: !4185, file: !2, line: 1114, type: !2580)
!4191 = !DILocalVariable(name: "i", scope: !4192, file: !2, line: 1115, type: !454)
!4192 = distinct !DILexicalBlock(scope: !4185, file: !2, line: 1115, column: 5)
!4193 = !DILocalVariable(name: "used", scope: !4192, file: !2, line: 1115, type: !454)
!4194 = !DILocation(line: 1113, column: 41, scope: !4185)
!4195 = !DILocation(line: 1114, column: 5, scope: !4185)
!4196 = !DILocation(line: 1114, column: 20, scope: !4185)
!4197 = !DILocation(line: 1114, column: 24, scope: !4185)
!4198 = !DILocation(line: 1114, column: 30, scope: !4185)
!4199 = !DILocation(line: 1114, column: 36, scope: !4185)
!4200 = !DILocation(line: 1115, column: 10, scope: !4192)
!4201 = !DILocation(line: 1115, column: 17, scope: !4192)
!4202 = !DILocation(line: 1115, column: 24, scope: !4192)
!4203 = !DILocation(line: 1115, column: 43, scope: !4192)
!4204 = !DILocation(line: 1115, column: 31, scope: !4192)
!4205 = !DILocation(line: 1115, column: 47, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 1115, column: 5)
!4207 = !DILocation(line: 1115, column: 51, scope: !4206)
!4208 = !DILocation(line: 1115, column: 49, scope: !4206)
!4209 = !DILocation(line: 1115, column: 5, scope: !4192)
!4210 = !DILocation(line: 1115, column: 5, scope: !4206)
!4211 = !DILocation(line: 1116, column: 22, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4206, file: !2, line: 1115, column: 62)
!4213 = !DILocation(line: 1116, column: 28, scope: !4212)
!4214 = !DILocation(line: 1116, column: 34, scope: !4212)
!4215 = !DILocation(line: 1116, column: 38, scope: !4212)
!4216 = !DILocation(line: 1116, column: 43, scope: !4212)
!4217 = !DILocation(line: 1116, column: 49, scope: !4212)
!4218 = !DILocation(line: 1116, column: 55, scope: !4212)
!4219 = !DILocation(line: 1116, column: 59, scope: !4212)
!4220 = !DILocation(line: 1116, column: 9, scope: !4212)
!4221 = !DILocation(line: 1116, column: 12, scope: !4212)
!4222 = !DILocation(line: 1116, column: 16, scope: !4212)
!4223 = !DILocation(line: 1116, column: 19, scope: !4212)
!4224 = !DILocation(line: 1117, column: 37, scope: !4212)
!4225 = !DILocation(line: 1117, column: 43, scope: !4212)
!4226 = !DILocation(line: 1117, column: 49, scope: !4212)
!4227 = !DILocation(line: 1117, column: 53, scope: !4212)
!4228 = !DILocation(line: 1117, column: 62, scope: !4212)
!4229 = !DILocation(line: 1117, column: 67, scope: !4212)
!4230 = !DILocation(line: 1117, column: 9, scope: !4212)
!4231 = !DILocation(line: 1117, column: 15, scope: !4212)
!4232 = !DILocation(line: 1117, column: 21, scope: !4212)
!4233 = !DILocation(line: 1117, column: 25, scope: !4212)
!4234 = !DILocation(line: 1117, column: 34, scope: !4212)
!4235 = !DILocation(line: 1118, column: 5, scope: !4212)
!4236 = !DILocation(line: 1115, column: 57, scope: !4206)
!4237 = distinct !{!4237, !4209, !4238, !1607}
!4238 = !DILocation(line: 1118, column: 5, scope: !4192)
!4239 = !DILocation(line: 1119, column: 1, scope: !4185)
!4240 = !DISubprogram(name: "chunkqueue_append_buffer", scope: !98, file: !98, line: 92, type: !4241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4243, !4184}
!4243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!4244 = !DISubprogram(name: "chunkqueue_mark_written", scope: !98, file: !98, line: 141, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{null, !96, !116}
!4247 = !DISubprogram(name: "memchr", scope: !2788, file: !2788, line: 107, type: !4248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!28, !2948, !87, !454}
!4250 = distinct !DISubprogram(name: "buffer_is_unset", scope: !43, file: !43, line: 268, type: !1962, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4251)
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "b", arg: 1, scope: !4250, file: !43, line: 268, type: !476)
!4253 = !DILocation(line: 268, column: 49, scope: !4250)
!4254 = !DILocation(line: 269, column: 17, scope: !4250)
!4255 = !DILocation(line: 269, column: 20, scope: !4250)
!4256 = !DILocation(line: 269, column: 14, scope: !4250)
!4257 = !DILocation(line: 269, column: 5, scope: !4250)
!4258 = !DISubprogram(name: "chunkqueue_get_memory", scope: !98, file: !98, line: 133, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!47, !4243, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4262)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!4263 = !DISubprogram(name: "buffer_append_base64_decode", scope: !829, file: !829, line: 14, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!1054, !114, !163, !454, !3250}
!4266 = !DISubprogram(name: "http_response_upgrade_read_body_unknown", scope: !598, file: !598, line: 58, type: !4267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !169}
!4269 = !DISubprogram(name: "chunkqueue_append_chunkqueue", scope: !98, file: !98, line: 95, type: !4270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4243, !4243}
!4272 = distinct !DISubprogram(name: "mod_wstunnel_handshake_create_response", scope: !2, file: !2, line: 840, type: !4273, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!12, !1016}
!4275 = !{!4276, !4277, !4278}
!4276 = !DILocalVariable(name: "hctx", arg: 1, scope: !4272, file: !2, line: 840, type: !1016)
!4277 = !DILocalVariable(name: "r", scope: !4272, file: !2, line: 841, type: !1227)
!4278 = !DILocalVariable(name: "cq", scope: !4279, file: !2, line: 858, type: !96)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !2, line: 854, column: 69)
!4280 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 854, column: 9)
!4281 = !DILocation(line: 840, column: 63, scope: !4272)
!4282 = !DILocation(line: 841, column: 5, scope: !4272)
!4283 = !DILocation(line: 841, column: 24, scope: !4272)
!4284 = !DILocation(line: 841, column: 28, scope: !4272)
!4285 = !DILocation(line: 841, column: 34, scope: !4272)
!4286 = !DILocation(line: 841, column: 37, scope: !4272)
!4287 = !DILocation(line: 843, column: 9, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 843, column: 9)
!4289 = !DILocation(line: 843, column: 15, scope: !4288)
!4290 = !DILocation(line: 843, column: 24, scope: !4288)
!4291 = !DILocation(line: 843, column: 9, scope: !4272)
!4292 = !DILocation(line: 844, column: 9, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !2, line: 844, column: 9)
!4294 = distinct !DILexicalBlock(scope: !4288, file: !2, line: 843, column: 30)
!4295 = !DILocation(line: 844, column: 9, scope: !4294)
!4296 = !DILocation(line: 844, column: 9, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !2, line: 844, column: 9)
!4298 = !DILocation(line: 845, column: 43, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !2, line: 845, column: 13)
!4300 = !DILocation(line: 845, column: 18, scope: !4299)
!4301 = !DILocation(line: 845, column: 15, scope: !4299)
!4302 = !DILocation(line: 845, column: 13, scope: !4294)
!4303 = !DILocation(line: 846, column: 13, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4299, file: !2, line: 845, column: 50)
!4305 = !DILocation(line: 846, column: 16, scope: !4304)
!4306 = !DILocation(line: 846, column: 28, scope: !4304)
!4307 = !DILocation(line: 847, column: 13, scope: !4304)
!4308 = !DILocation(line: 849, column: 9, scope: !4294)
!4309 = !DILocation(line: 854, column: 9, scope: !4280)
!4310 = !DILocation(line: 854, column: 15, scope: !4280)
!4311 = !DILocation(line: 854, column: 24, scope: !4280)
!4312 = !DILocation(line: 854, column: 29, scope: !4280)
!4313 = !DILocation(line: 854, column: 32, scope: !4280)
!4314 = !DILocation(line: 854, column: 35, scope: !4280)
!4315 = !DILocation(line: 854, column: 48, scope: !4280)
!4316 = !DILocation(line: 854, column: 9, scope: !4272)
!4317 = !DILocation(line: 858, column: 9, scope: !4279)
!4318 = !DILocation(line: 858, column: 21, scope: !4279)
!4319 = !DILocation(line: 858, column: 27, scope: !4279)
!4320 = !DILocation(line: 858, column: 30, scope: !4279)
!4321 = !DILocation(line: 859, column: 31, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4279, file: !2, line: 859, column: 13)
!4323 = !DILocation(line: 859, column: 13, scope: !4322)
!4324 = !DILocation(line: 859, column: 35, scope: !4322)
!4325 = !DILocation(line: 859, column: 13, scope: !4279)
!4326 = !DILocation(line: 860, column: 13, scope: !4322)
!4327 = !DILocation(line: 863, column: 9, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4279, file: !2, line: 863, column: 9)
!4329 = !DILocation(line: 863, column: 9, scope: !4279)
!4330 = !DILocation(line: 863, column: 9, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4328, file: !2, line: 863, column: 9)
!4332 = !DILocation(line: 864, column: 42, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4279, file: !2, line: 864, column: 13)
!4334 = !DILocation(line: 864, column: 18, scope: !4333)
!4335 = !DILocation(line: 864, column: 15, scope: !4333)
!4336 = !DILocation(line: 864, column: 13, scope: !4279)
!4337 = !DILocation(line: 865, column: 13, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4333, file: !2, line: 864, column: 49)
!4339 = !DILocation(line: 865, column: 16, scope: !4338)
!4340 = !DILocation(line: 865, column: 28, scope: !4338)
!4341 = !DILocation(line: 866, column: 13, scope: !4338)
!4342 = !DILocation(line: 868, column: 9, scope: !4279)
!4343 = !DILocation(line: 869, column: 5, scope: !4280)
!4344 = !DILocation(line: 872, column: 5, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 872, column: 5)
!4346 = !DILocation(line: 872, column: 5, scope: !4272)
!4347 = !DILocation(line: 872, column: 5, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4345, file: !2, line: 872, column: 5)
!4349 = !DILocation(line: 873, column: 5, scope: !4272)
!4350 = !DILocation(line: 873, column: 8, scope: !4272)
!4351 = !DILocation(line: 873, column: 20, scope: !4272)
!4352 = !DILocation(line: 874, column: 5, scope: !4272)
!4353 = !DILocation(line: 875, column: 1, scope: !4272)
!4354 = !DISubprogram(name: "gw_set_transparent", scope: !91, file: !91, line: 368, type: !2756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4355 = distinct !DISubprogram(name: "create_response_rfc_6455", scope: !2, file: !2, line: 790, type: !3253, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4356)
!4356 = !{!4357, !4358, !4359, !4376, !4378, !4379}
!4357 = !DILocalVariable(name: "hctx", arg: 1, scope: !4355, file: !2, line: 790, type: !1016)
!4358 = !DILocalVariable(name: "r", scope: !4355, file: !2, line: 791, type: !1227)
!4359 = !DILocalVariable(name: "sha", scope: !4360, file: !2, line: 793, type: !4362)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !2, line: 792, column: 44)
!4361 = distinct !DILexicalBlock(scope: !4355, file: !2, line: 792, column: 7)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_CTX", file: !4363, line: 60, baseType: !4364)
!4363 = !DIFile(filename: "spack-src/src/algo_sha1.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "31207e688e1c556b07b086905a1d7201")
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SHA_CTX", file: !4363, line: 56, size: 736, elements: !4365)
!4365 = !{!4366, !4369, !4371}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4364, file: !4363, line: 57, baseType: !4367, size: 160)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 160, elements: !1244)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha1_quadbyte", file: !4363, line: 47, baseType: !49)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4364, file: !4363, line: 58, baseType: !4370, size: 64, offset: 160)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 64, elements: !861)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4364, file: !4363, line: 59, baseType: !4372, size: 512, offset: 224)
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4373, size: 512, elements: !4374)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sha1_byte", file: !4363, line: 48, baseType: !204)
!4374 = !{!4375}
!4375 = !DISubrange(count: 64)
!4376 = !DILocalVariable(name: "sha_digest", scope: !4360, file: !2, line: 794, type: !4377)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 160, elements: !1081)
!4378 = !DILocalVariable(name: "value_wskey", scope: !4360, file: !2, line: 796, type: !476)
!4379 = !DILocalVariable(name: "value", scope: !4360, file: !2, line: 819, type: !2580)
!4380 = !DILocation(line: 790, column: 50, scope: !4355)
!4381 = !DILocation(line: 791, column: 5, scope: !4355)
!4382 = !DILocation(line: 791, column: 24, scope: !4355)
!4383 = !DILocation(line: 791, column: 28, scope: !4355)
!4384 = !DILocation(line: 791, column: 34, scope: !4355)
!4385 = !DILocation(line: 791, column: 37, scope: !4355)
!4386 = !DILocation(line: 792, column: 7, scope: !4361)
!4387 = !DILocation(line: 792, column: 10, scope: !4361)
!4388 = !DILocation(line: 792, column: 23, scope: !4361)
!4389 = !DILocation(line: 792, column: 7, scope: !4355)
!4390 = !DILocation(line: 793, column: 5, scope: !4360)
!4391 = !DILocation(line: 793, column: 13, scope: !4360)
!4392 = !DILocation(line: 794, column: 5, scope: !4360)
!4393 = !DILocation(line: 794, column: 19, scope: !4360)
!4394 = !DILocation(line: 796, column: 5, scope: !4360)
!4395 = !DILocation(line: 796, column: 19, scope: !4360)
!4396 = !DILocation(line: 797, column: 31, scope: !4360)
!4397 = !DILocation(line: 797, column: 7, scope: !4360)
!4398 = !DILocation(line: 798, column: 17, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4360, file: !2, line: 798, column: 9)
!4400 = !DILocation(line: 798, column: 14, scope: !4399)
!4401 = !DILocation(line: 798, column: 9, scope: !4360)
!4402 = !DILocation(line: 799, column: 9, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !2, line: 799, column: 9)
!4404 = distinct !DILexicalBlock(scope: !4399, file: !2, line: 798, column: 30)
!4405 = !DILocation(line: 799, column: 9, scope: !4404)
!4406 = !DILocation(line: 799, column: 9, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !2, line: 799, column: 9)
!4408 = !DILocation(line: 800, column: 9, scope: !4404)
!4409 = !DILocation(line: 805, column: 5, scope: !4360)
!4410 = !DILocation(line: 806, column: 46, scope: !4360)
!4411 = !DILocation(line: 806, column: 5, scope: !4360)
!4412 = !DILocation(line: 807, column: 5, scope: !4360)
!4413 = !DILocation(line: 808, column: 16, scope: !4360)
!4414 = !DILocation(line: 808, column: 5, scope: !4360)
!4415 = !DILocation(line: 810, column: 30, scope: !4360)
!4416 = !DILocation(line: 810, column: 5, scope: !4360)
!4417 = !DILocation(line: 819, column: 5, scope: !4360)
!4418 = !DILocation(line: 819, column: 20, scope: !4360)
!4419 = !DILocation(line: 820, column: 36, scope: !4360)
!4420 = !DILocation(line: 820, column: 7, scope: !4360)
!4421 = !DILocation(line: 822, column: 5, scope: !4360)
!4422 = !DILocation(line: 823, column: 3, scope: !4361)
!4423 = !DILocation(line: 823, column: 3, scope: !4360)
!4424 = !DILocation(line: 825, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4355, file: !2, line: 825, column: 9)
!4426 = !DILocation(line: 825, column: 15, scope: !4425)
!4427 = !DILocation(line: 825, column: 21, scope: !4425)
!4428 = !DILocation(line: 825, column: 26, scope: !4425)
!4429 = !DILocation(line: 825, column: 9, scope: !4355)
!4430 = !DILocation(line: 826, column: 34, scope: !4425)
!4431 = !DILocation(line: 826, column: 9, scope: !4425)
!4432 = !DILocation(line: 829, column: 20, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4425, file: !2, line: 829, column: 14)
!4434 = !DILocation(line: 829, column: 26, scope: !4433)
!4435 = !DILocation(line: 829, column: 17, scope: !4433)
!4436 = !DILocation(line: 829, column: 14, scope: !4425)
!4437 = !DILocation(line: 830, column: 34, scope: !4433)
!4438 = !DILocation(line: 830, column: 9, scope: !4433)
!4439 = !DILocation(line: 834, column: 5, scope: !4355)
!4440 = !DILocation(line: 835, column: 1, scope: !4355)
!4441 = distinct !DISubprogram(name: "create_response_ietf_00", scope: !2, file: !2, line: 728, type: !3253, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4442)
!4442 = !{!4443, !4444, !4445, !4446}
!4443 = !DILocalVariable(name: "hctx", arg: 1, scope: !4441, file: !2, line: 728, type: !1016)
!4444 = !DILocalVariable(name: "r", scope: !4441, file: !2, line: 729, type: !1227)
!4445 = !DILocalVariable(name: "origin", scope: !4441, file: !2, line: 733, type: !476)
!4446 = !DILocalVariable(name: "value", scope: !4441, file: !2, line: 770, type: !2580)
!4447 = !DILocation(line: 728, column: 49, scope: !4441)
!4448 = !DILocation(line: 729, column: 5, scope: !4441)
!4449 = !DILocation(line: 729, column: 24, scope: !4441)
!4450 = !DILocation(line: 729, column: 28, scope: !4441)
!4451 = !DILocation(line: 729, column: 34, scope: !4441)
!4452 = !DILocation(line: 729, column: 37, scope: !4441)
!4453 = !DILocation(line: 733, column: 5, scope: !4441)
!4454 = !DILocation(line: 733, column: 19, scope: !4441)
!4455 = !DILocation(line: 733, column: 52, scope: !4441)
!4456 = !DILocation(line: 733, column: 28, scope: !4441)
!4457 = !DILocation(line: 734, column: 17, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4441, file: !2, line: 734, column: 9)
!4459 = !DILocation(line: 734, column: 14, scope: !4458)
!4460 = !DILocation(line: 734, column: 9, scope: !4441)
!4461 = !DILocation(line: 736, column: 35, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4458, file: !2, line: 734, column: 25)
!4463 = !DILocation(line: 736, column: 11, scope: !4462)
!4464 = !DILocation(line: 735, column: 16, scope: !4462)
!4465 = !DILocation(line: 737, column: 5, scope: !4462)
!4466 = !DILocation(line: 738, column: 17, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4441, file: !2, line: 738, column: 9)
!4468 = !DILocation(line: 738, column: 14, scope: !4467)
!4469 = !DILocation(line: 738, column: 9, scope: !4441)
!4470 = !DILocation(line: 739, column: 9, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !2, line: 739, column: 9)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !2, line: 738, column: 25)
!4473 = !DILocation(line: 739, column: 9, scope: !4472)
!4474 = !DILocation(line: 739, column: 9, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4471, file: !2, line: 739, column: 9)
!4476 = !DILocation(line: 740, column: 9, scope: !4472)
!4477 = !DILocation(line: 742, column: 10, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4441, file: !2, line: 742, column: 9)
!4479 = !DILocation(line: 742, column: 13, scope: !4478)
!4480 = !DILocation(line: 742, column: 23, scope: !4478)
!4481 = !DILocation(line: 742, column: 42, scope: !4478)
!4482 = !DILocation(line: 742, column: 45, scope: !4478)
!4483 = !DILocation(line: 742, column: 26, scope: !4478)
!4484 = !DILocation(line: 742, column: 9, scope: !4441)
!4485 = !DILocation(line: 743, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 743, column: 9)
!4487 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 742, column: 57)
!4488 = !DILocation(line: 743, column: 9, scope: !4487)
!4489 = !DILocation(line: 743, column: 9, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 743, column: 9)
!4491 = !DILocation(line: 744, column: 9, scope: !4487)
!4492 = !DILocation(line: 748, column: 24, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4441, file: !2, line: 748, column: 9)
!4494 = !DILocation(line: 748, column: 9, scope: !4493)
!4495 = !DILocation(line: 748, column: 27, scope: !4493)
!4496 = !DILocation(line: 748, column: 9, scope: !4441)
!4497 = !DILocation(line: 749, column: 9, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !2, line: 749, column: 9)
!4499 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 748, column: 32)
!4500 = !DILocation(line: 749, column: 9, scope: !4499)
!4501 = !DILocation(line: 749, column: 9, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !2, line: 749, column: 9)
!4503 = !DILocation(line: 750, column: 9, scope: !4499)
!4504 = !DILocation(line: 753, column: 30, scope: !4441)
!4505 = !DILocation(line: 753, column: 5, scope: !4441)
!4506 = !DILocation(line: 770, column: 5, scope: !4441)
!4507 = !DILocation(line: 770, column: 20, scope: !4441)
!4508 = !DILocation(line: 771, column: 36, scope: !4441)
!4509 = !DILocation(line: 771, column: 7, scope: !4441)
!4510 = !DILocation(line: 773, column: 33, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4441, file: !2, line: 773, column: 9)
!4512 = !DILocation(line: 773, column: 36, scope: !4511)
!4513 = !DILocation(line: 773, column: 40, scope: !4511)
!4514 = !DILocation(line: 773, column: 9, scope: !4511)
!4515 = !DILocation(line: 773, column: 9, scope: !4441)
!4516 = !DILocation(line: 774, column: 32, scope: !4511)
!4517 = !DILocation(line: 774, column: 9, scope: !4511)
!4518 = !DILocation(line: 776, column: 32, scope: !4511)
!4519 = !DILocation(line: 776, column: 9, scope: !4511)
!4520 = !DILocation(line: 777, column: 24, scope: !4441)
!4521 = !DILocation(line: 777, column: 31, scope: !4441)
!4522 = !DILocation(line: 778, column: 31, scope: !4441)
!4523 = !{!1690, !1393, i64 288}
!4524 = !DILocation(line: 777, column: 5, scope: !4441)
!4525 = !DILocation(line: 779, column: 5, scope: !4441)
!4526 = !DILocation(line: 780, column: 1, scope: !4441)
!4527 = !DISubprogram(name: "SHA1_Init", scope: !4363, file: !4363, line: 63, type: !4528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{null, !4530}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4531 = !DISubprogram(name: "SHA1_Update", scope: !4363, file: !4363, line: 64, type: !4532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !4530, !4534, !15}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4536 = !DISubprogram(name: "SHA1_Final", scope: !4363, file: !4363, line: 65, type: !4537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !4539, !4530}
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4540 = !DISubprogram(name: "http_header_response_set", scope: !745, file: !745, line: 120, type: !4541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !169, !744, !163, !49, !163, !49}
!4543 = !DISubprogram(name: "http_header_response_set_ptr", scope: !745, file: !745, line: 118, type: !4544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!114, !169, !744, !163, !49}
!4546 = !DISubprogram(name: "buffer_append_base64_enc", scope: !829, file: !829, line: 24, type: !4547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!47, !114, !1057, !454, !3250, !87}
!4549 = distinct !DISubprogram(name: "create_MD5_sum", scope: !2, file: !2, line: 697, type: !4550, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!87, !1227}
!4552 = !{!4553, !4554, !4555, !4556}
!4553 = !DILocalVariable(name: "r", arg: 1, scope: !4549, file: !2, line: 697, type: !1227)
!4554 = !DILocalVariable(name: "buf", scope: !4549, file: !2, line: 698, type: !369)
!4555 = !DILocalVariable(name: "key1", scope: !4549, file: !2, line: 700, type: !476)
!4556 = !DILocalVariable(name: "key2", scope: !4549, file: !2, line: 702, type: !476)
!4557 = !DILocation(line: 697, column: 46, scope: !4549)
!4558 = !DILocation(line: 698, column: 5, scope: !4549)
!4559 = !DILocation(line: 698, column: 14, scope: !4549)
!4560 = !DILocation(line: 700, column: 5, scope: !4549)
!4561 = !DILocation(line: 700, column: 19, scope: !4549)
!4562 = !DILocation(line: 701, column: 31, scope: !4549)
!4563 = !DILocation(line: 701, column: 7, scope: !4549)
!4564 = !DILocation(line: 702, column: 5, scope: !4549)
!4565 = !DILocation(line: 702, column: 19, scope: !4549)
!4566 = !DILocation(line: 703, column: 31, scope: !4549)
!4567 = !DILocation(line: 703, column: 7, scope: !4549)
!4568 = !DILocation(line: 705, column: 17, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4549, file: !2, line: 705, column: 9)
!4570 = !DILocation(line: 705, column: 14, scope: !4569)
!4571 = !DILocation(line: 705, column: 22, scope: !4569)
!4572 = !DILocation(line: 705, column: 40, scope: !4569)
!4573 = !DILocation(line: 705, column: 43, scope: !4569)
!4574 = !DILocation(line: 705, column: 47, scope: !4569)
!4575 = !DILocation(line: 705, column: 25, scope: !4569)
!4576 = !DILocation(line: 705, column: 53, scope: !4569)
!4577 = !DILocation(line: 705, column: 57, scope: !4569)
!4578 = !DILocation(line: 706, column: 17, scope: !4569)
!4579 = !DILocation(line: 706, column: 14, scope: !4569)
!4580 = !DILocation(line: 706, column: 22, scope: !4569)
!4581 = !DILocation(line: 706, column: 40, scope: !4569)
!4582 = !DILocation(line: 706, column: 43, scope: !4569)
!4583 = !DILocation(line: 706, column: 47, scope: !4569)
!4584 = !DILocation(line: 706, column: 25, scope: !4569)
!4585 = !DILocation(line: 706, column: 53, scope: !4569)
!4586 = !DILocation(line: 706, column: 57, scope: !4569)
!4587 = !DILocation(line: 707, column: 18, scope: !4569)
!4588 = !DILocation(line: 707, column: 30, scope: !4569)
!4589 = !DILocation(line: 707, column: 33, scope: !4569)
!4590 = !DILocation(line: 707, column: 9, scope: !4569)
!4591 = !DILocation(line: 707, column: 58, scope: !4569)
!4592 = !DILocation(line: 705, column: 9, scope: !4549)
!4593 = !DILocation(line: 708, column: 9, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4569, file: !2, line: 707, column: 63)
!4595 = !DILocation(line: 723, column: 31, scope: !4549)
!4596 = !DILocation(line: 723, column: 36, scope: !4549)
!4597 = !DILocation(line: 723, column: 5, scope: !4549)
!4598 = !DILocation(line: 724, column: 28, scope: !4549)
!4599 = !DILocation(line: 724, column: 31, scope: !4549)
!4600 = !DILocation(line: 724, column: 52, scope: !4549)
!4601 = !DILocation(line: 724, column: 5, scope: !4549)
!4602 = !DILocation(line: 725, column: 5, scope: !4549)
!4603 = !DILocation(line: 726, column: 1, scope: !4549)
!4604 = !DISubprogram(name: "buffer_eq_slen", scope: !43, file: !43, line: 159, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4605 = !DISubprogram(name: "buffer_copy_string_len", scope: !43, file: !43, line: 103, type: !4182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4606 = !DISubprogram(name: "buffer_append_str2", scope: !43, file: !43, line: 108, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4184, !163, !454, !163, !454}
!4609 = distinct !DISubprogram(name: "get_key_number", scope: !2, file: !2, line: 676, type: !4610, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4613)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!87, !4612, !476}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4623}
!4614 = !DILocalVariable(name: "ret", arg: 1, scope: !4609, file: !2, line: 676, type: !4612)
!4615 = !DILocalVariable(name: "b", arg: 2, scope: !4609, file: !2, line: 676, type: !476)
!4616 = !DILocalVariable(name: "s", scope: !4609, file: !2, line: 677, type: !1959)
!4617 = !DILocalVariable(name: "j", scope: !4609, file: !2, line: 678, type: !454)
!4618 = !DILocalVariable(name: "n", scope: !4609, file: !2, line: 679, type: !456)
!4619 = !DILocalVariable(name: "sp", scope: !4609, file: !2, line: 680, type: !49)
!4620 = !DILocalVariable(name: "tmp", scope: !4609, file: !2, line: 681, type: !1125)
!4621 = !DILocalVariable(name: "i", scope: !4622, file: !2, line: 683, type: !454)
!4622 = distinct !DILexicalBlock(scope: !4609, file: !2, line: 683, column: 5)
!4623 = !DILocalVariable(name: "used", scope: !4622, file: !2, line: 683, type: !454)
!4624 = !DILocation(line: 676, column: 37, scope: !4609)
!4625 = !DILocation(line: 676, column: 56, scope: !4609)
!4626 = !DILocation(line: 677, column: 5, scope: !4609)
!4627 = !DILocation(line: 677, column: 24, scope: !4609)
!4628 = !DILocation(line: 677, column: 28, scope: !4609)
!4629 = !DILocation(line: 677, column: 31, scope: !4609)
!4630 = !DILocation(line: 678, column: 5, scope: !4609)
!4631 = !DILocation(line: 678, column: 12, scope: !4609)
!4632 = !DILocation(line: 679, column: 5, scope: !4609)
!4633 = !DILocation(line: 679, column: 19, scope: !4609)
!4634 = !DILocation(line: 680, column: 5, scope: !4609)
!4635 = !DILocation(line: 680, column: 14, scope: !4609)
!4636 = !DILocation(line: 681, column: 5, scope: !4609)
!4637 = !DILocation(line: 681, column: 10, scope: !4609)
!4638 = !DILocation(line: 683, column: 10, scope: !4622)
!4639 = !DILocation(line: 683, column: 17, scope: !4622)
!4640 = !DILocation(line: 683, column: 24, scope: !4622)
!4641 = !DILocation(line: 683, column: 43, scope: !4622)
!4642 = !DILocation(line: 683, column: 31, scope: !4622)
!4643 = !DILocation(line: 683, column: 47, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4622, file: !2, line: 683, column: 5)
!4645 = !DILocation(line: 683, column: 51, scope: !4644)
!4646 = !DILocation(line: 683, column: 49, scope: !4644)
!4647 = !DILocation(line: 683, column: 5, scope: !4622)
!4648 = !DILocation(line: 684, column: 27, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !2, line: 684, column: 13)
!4650 = distinct !DILexicalBlock(scope: !4644, file: !2, line: 683, column: 62)
!4651 = !DILocation(line: 684, column: 29, scope: !4649)
!4652 = !DILocation(line: 684, column: 13, scope: !4649)
!4653 = !DILocation(line: 684, column: 13, scope: !4650)
!4654 = !DILocation(line: 685, column: 22, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4649, file: !2, line: 684, column: 34)
!4656 = !DILocation(line: 685, column: 24, scope: !4655)
!4657 = !DILocation(line: 685, column: 17, scope: !4655)
!4658 = !DILocation(line: 685, column: 13, scope: !4655)
!4659 = !DILocation(line: 685, column: 20, scope: !4655)
!4660 = !DILocation(line: 686, column: 17, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4655, file: !2, line: 686, column: 17)
!4662 = !DILocation(line: 686, column: 21, scope: !4661)
!4663 = !DILocation(line: 686, column: 17, scope: !4655)
!4664 = !DILocation(line: 686, column: 37, scope: !4661)
!4665 = !DILocation(line: 687, column: 9, scope: !4655)
!4666 = !DILocation(line: 688, column: 18, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4649, file: !2, line: 688, column: 18)
!4668 = !DILocation(line: 688, column: 20, scope: !4667)
!4669 = !DILocation(line: 688, column: 23, scope: !4667)
!4670 = !DILocation(line: 688, column: 18, scope: !4649)
!4671 = !DILocation(line: 688, column: 31, scope: !4667)
!4672 = !DILocation(line: 689, column: 5, scope: !4650)
!4673 = !DILocation(line: 683, column: 57, scope: !4644)
!4674 = !DILocation(line: 683, column: 5, scope: !4644)
!4675 = distinct !{!4675, !4647, !4676, !1607}
!4676 = !DILocation(line: 689, column: 5, scope: !4622)
!4677 = !DILocation(line: 690, column: 9, scope: !4609)
!4678 = !DILocation(line: 690, column: 5, scope: !4609)
!4679 = !DILocation(line: 690, column: 12, scope: !4609)
!4680 = !DILocation(line: 691, column: 17, scope: !4609)
!4681 = !DILocation(line: 691, column: 9, scope: !4609)
!4682 = !DILocation(line: 691, column: 7, scope: !4609)
!4683 = !DILocation(line: 692, column: 9, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4609, file: !2, line: 692, column: 9)
!4685 = !DILocation(line: 692, column: 11, scope: !4684)
!4686 = !DILocation(line: 692, column: 24, scope: !4684)
!4687 = !DILocation(line: 692, column: 32, scope: !4684)
!4688 = !DILocation(line: 692, column: 29, scope: !4684)
!4689 = !DILocation(line: 692, column: 35, scope: !4684)
!4690 = !DILocation(line: 692, column: 53, scope: !4684)
!4691 = !DILocation(line: 692, column: 39, scope: !4684)
!4692 = !DILocation(line: 692, column: 9, scope: !4609)
!4693 = !DILocation(line: 692, column: 60, scope: !4684)
!4694 = !DILocation(line: 693, column: 22, scope: !4609)
!4695 = !DILocation(line: 693, column: 12, scope: !4609)
!4696 = !DILocation(line: 693, column: 26, scope: !4609)
!4697 = !DILocation(line: 693, column: 24, scope: !4609)
!4698 = !DILocation(line: 693, column: 6, scope: !4609)
!4699 = !DILocation(line: 693, column: 10, scope: !4609)
!4700 = !DILocation(line: 694, column: 5, scope: !4609)
!4701 = !DILocation(line: 695, column: 1, scope: !4609)
!4702 = distinct !DISubprogram(name: "get_key3", scope: !2, file: !2, line: 666, type: !4703, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!87, !1227, !47, !49}
!4705 = !{!4706, !4707, !4708, !4709}
!4706 = !DILocalVariable(name: "r", arg: 1, scope: !4702, file: !2, line: 666, type: !1227)
!4707 = !DILocalVariable(name: "buf", arg: 2, scope: !4702, file: !2, line: 666, type: !47)
!4708 = !DILocalVariable(name: "bytes", arg: 3, scope: !4702, file: !2, line: 666, type: !49)
!4709 = !DILocalVariable(name: "cq", scope: !4702, file: !2, line: 669, type: !96)
!4710 = !DILocation(line: 666, column: 40, scope: !4702)
!4711 = !DILocation(line: 666, column: 49, scope: !4702)
!4712 = !DILocation(line: 666, column: 63, scope: !4702)
!4713 = !DILocation(line: 669, column: 5, scope: !4702)
!4714 = !DILocation(line: 669, column: 17, scope: !4702)
!4715 = !DILocation(line: 669, column: 23, scope: !4702)
!4716 = !DILocation(line: 669, column: 26, scope: !4702)
!4717 = !DILocation(line: 673, column: 33, scope: !4702)
!4718 = !DILocation(line: 673, column: 37, scope: !4702)
!4719 = !DILocation(line: 673, column: 42, scope: !4702)
!4720 = !DILocation(line: 673, column: 49, scope: !4702)
!4721 = !DILocation(line: 673, column: 52, scope: !4702)
!4722 = !DILocation(line: 673, column: 57, scope: !4702)
!4723 = !DILocation(line: 673, column: 12, scope: !4702)
!4724 = !DILocation(line: 674, column: 1, scope: !4702)
!4725 = !DILocation(line: 673, column: 5, scope: !4702)
!4726 = distinct !DISubprogram(name: "MD5_once", scope: !4727, file: !4727, line: 959, type: !4728, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4732)
!4727 = !DIFile(filename: "spack-src/src/sys-crypto-md.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "7951607ef4c61fceefd843bd3eb18ab1")
!4728 = !DISubroutineType(types: !4729)
!4729 = !{null, !4730, !4731, !1960}
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!4731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!4732 = !{!4733, !4734, !4735, !4736}
!4733 = !DILocalVariable(name: "digest", arg: 1, scope: !4726, file: !4727, line: 959, type: !4730)
!4734 = !DILocalVariable(name: "data", arg: 2, scope: !4726, file: !4727, line: 959, type: !4731)
!4735 = !DILocalVariable(name: "n", arg: 3, scope: !4726, file: !4727, line: 959, type: !1960)
!4736 = !DILocalVariable(name: "ctx", scope: !4726, file: !4727, line: 959, type: !4737)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !4738, line: 38, baseType: !4739)
!4738 = !DIFile(filename: "spack-src/src/algo_md5.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "e86764137ad76a3bd186ab824428f14a")
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4738, line: 34, size: 704, elements: !4740)
!4740 = !{!4741, !4742, !4743}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4739, file: !4738, line: 35, baseType: !369, size: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4739, file: !4738, line: 36, baseType: !860, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4739, file: !4738, line: 37, baseType: !4744, size: 512, offset: 192)
!4744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 512, elements: !4374)
!4745 = !DILocation(line: 959, column: 1, scope: !4726)
!4746 = !DISubprogram(name: "chunkqueue_append_mem", scope: !98, file: !98, line: 88, type: !4747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !4243, !2805, !454}
!4749 = !DISubprogram(name: "strtoul", scope: !2802, file: !2802, line: 181, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!456, !2805, !2806, !87}
!4752 = !DISubprogram(name: "chunkqueue_read_data", scope: !98, file: !98, line: 163, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!87, !96, !47, !49, !4755}
!4755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !148)
!4756 = !DISubprogram(name: "MD5_Init", scope: !4738, file: !4738, line: 44, type: !4757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !4759}
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4760 = !DISubprogram(name: "MD5_Update", scope: !4738, file: !4738, line: 45, type: !4761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{null, !4759, !2948, !15}
!4763 = !DISubprogram(name: "MD5_Final", scope: !4738, file: !4738, line: 46, type: !4764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !1054, !4759}
!4766 = !DISubprogram(name: "chunk_buffer_release", scope: !98, file: !98, line: 62, type: !2985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4767 = !DISubprogram(name: "gw_handle_trigger", scope: !91, file: !91, line: 365, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4768 = distinct !DISubprogram(name: "connection_jq_append", scope: !25, file: !25, line: 71, type: !4769, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !4773)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4772)
!4772 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !284)
!4773 = !{!4774}
!4774 = !DILocalVariable(name: "con", arg: 1, scope: !4768, file: !25, line: 71, type: !4771)
!4775 = !DILocation(line: 71, column: 69, scope: !4768)
!4776 = !DILocation(line: 73, column: 10, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4768, file: !25, line: 73, column: 9)
!4778 = !DILocation(line: 73, column: 15, scope: !4777)
!4779 = !{!1864, !1393, i64 824}
!4780 = !DILocation(line: 73, column: 9, scope: !4768)
!4781 = !DILocation(line: 74, column: 23, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4777, file: !25, line: 73, column: 23)
!4783 = !DILocation(line: 74, column: 9, scope: !4782)
!4784 = !DILocation(line: 74, column: 14, scope: !4782)
!4785 = !DILocation(line: 74, column: 21, scope: !4782)
!4786 = !DILocation(line: 75, column: 26, scope: !4782)
!4787 = !DILocation(line: 75, column: 24, scope: !4782)
!4788 = !DILocation(line: 76, column: 5, scope: !4782)
!4789 = !DILocation(line: 77, column: 1, scope: !4768)
