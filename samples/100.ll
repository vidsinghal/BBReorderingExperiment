; ModuleID = 'samples/100.bc'
source_filename = "mod_proxy_scgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_struct = type { ptr, %union.cmd_func, ptr, i32, i32, ptr }
%union.cmd_func = type { ptr }
%struct.module_struct = type { i32, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.apr_bucket_type_t = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.scgi_config = type { ptr, ptr }
%struct.request_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i64, ptr, i32, i32, ptr, i64, ptr, ptr, i64, i64, i64, ptr, i64, i32, i32, i32, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.apr_uri_t, %struct.apr_finfo_t, ptr, ptr, ptr, ptr, ptr, i32, i64 }
%struct.apr_uri_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.apr_finfo_t = type { ptr, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.conn_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.server_rec = type { ptr, ptr, ptr, ptr, %struct.ap_logconf, ptr, ptr, ptr, i32, i8, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8 }
%struct.ap_logconf = type { ptr, i32 }
%struct.proxy_conn_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, ptr, ptr, ptr }
%struct.scgi_request_config = type { ptr, i32 }
%struct.apr_array_header_t = type { ptr, i32, i32, i32, ptr }
%struct.apr_table_entry_t = type { ptr, ptr, i32 }
%struct.socket_ex_data = type { ptr, ptr }
%struct.proxy_worker = type { %struct.proxy_hashes, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proxy_hashes = type { i32, i32 }
%struct.proxy_worker_shared = type { [96 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [16 x i8], [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.proxy_hashes, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i64, i64, ptr, i16, [64 x i8], [16 x i8], i32, i32, i32, i32, i32, i64, [16 x i8], [256 x i8], i64, i8, [64 x i8], [384 x i8] }
%struct.apr_bucket_brigade = type { ptr, %struct.apr_bucket_list, ptr }
%struct.apr_bucket_list = type { ptr, ptr }
%struct.apr_bucket = type { %struct.anon, ptr, i64, i64, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.apr_bucket_heap = type { %struct.apr_bucket_refcount, ptr, i64, ptr }
%struct.apr_bucket_refcount = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !0
@scgi_sendfile_off = global ptr @.str, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [11 x i8] c"X-Sendfile\00", align 1, !dbg !983
@scgi_sendfile_on = global ptr @.str.1, align 8, !dbg !988
@scgi_internal_redirect_off = global ptr @.str, align 8, !dbg !990
@.str.2 = private unnamed_addr constant [9 x i8] c"Location\00", align 1, !dbg !992
@scgi_internal_redirect_on = global ptr @.str.2, align 8, !dbg !997
@.str.3 = private unnamed_addr constant [17 x i8] c"mod_proxy_scgi.c\00", align 1, !dbg !999
@scgi_cmds = internal constant [3 x %struct.command_struct] [%struct.command_struct { ptr @.str.4, %union.cmd_func { ptr @scgi_set_send_file }, ptr null, i32 192, i32 1, ptr @.str.5 }, %struct.command_struct { ptr @.str.6, %union.cmd_func { ptr @scgi_set_internal_redirect }, ptr null, i32 192, i32 1, ptr @.str.7 }, %struct.command_struct zeroinitializer], align 16, !dbg !1157
@proxy_scgi_module = global %struct.module_struct { i32 20120211, i32 126, i32 -1, ptr @.str.3, ptr null, ptr null, i64 1095774772, ptr null, ptr @create_scgi_config, ptr @merge_scgi_config, ptr null, ptr null, ptr @scgi_cmds, ptr @register_hooks, i32 0 }, align 8, !dbg !1004
@.str.4 = private unnamed_addr constant [18 x i8] c"ProxySCGISendfile\00", align 1, !dbg !1137
@.str.5 = private unnamed_addr constant [63 x i8] c"The name of the X-Sendfile pseudo response header or On or Off\00", align 1, !dbg !1142
@.str.6 = private unnamed_addr constant [26 x i8] c"ProxySCGIInternalRedirect\00", align 1, !dbg !1147
@.str.7 = private unnamed_addr constant [52 x i8] c"The name of the pseudo response header or On or Off\00", align 1, !dbg !1152
@.str.8 = private unnamed_addr constant [4 x i8] c"Off\00", align 1, !dbg !1162
@.str.9 = private unnamed_addr constant [3 x i8] c"On\00", align 1, !dbg !1164
@.str.10 = private unnamed_addr constant [15 x i8] c"request_status\00", align 1, !dbg !1167
@.str.11 = private unnamed_addr constant [8 x i8] c"scgi://\00", align 1, !dbg !1172
@.str.12 = private unnamed_addr constant [26 x i8] c"AH00865: declining URL %s\00", align 1, !dbg !1180
@.str.13 = private unnamed_addr constant [5 x i8] c"SCGI\00", align 1, !dbg !1182
@.str.14 = private unnamed_addr constant [53 x i8] c"AH00866: failed to make connection to backend: %s:%u\00", align 1, !dbg !1187
@.str.15 = private unnamed_addr constant [18 x i8] c"GATEWAY_INTERFACE\00", align 1, !dbg !1192
@.str.16 = private unnamed_addr constant [15 x i8] c"CONTENT_LENGTH\00", align 1, !dbg !1194
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1, !dbg !1196
@.str.18 = private unnamed_addr constant [5 x i8] c"%lu:\00", align 1, !dbg !1198
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !1200
@.str.20 = private unnamed_addr constant [38 x i8] c"AH00858: sending data to %s:%u failed\00", align 1, !dbg !1205
@.str.21 = private unnamed_addr constant [39 x i8] c"AH00859: receiving request body failed\00", align 1, !dbg !1210
@.str.22 = private unnamed_addr constant [51 x i8] c"AH00860: error reading response headers from %s:%u\00", align 1, !dbg !1215
@.str.23 = private unnamed_addr constant [46 x i8] c"AH00861: Found %s: %s - preparing subrequest.\00", align 1, !dbg !1220
@bucket_type_socket_ex = internal constant %struct.apr_bucket_type_t { ptr @.str.24, i32 5, i32 0, ptr @apr_bucket_destroy_noop, ptr @bucket_socket_ex_read, ptr @apr_bucket_setaside_notimpl, ptr @apr_bucket_split_notimpl, ptr @apr_bucket_copy_notimpl }, align 8, !dbg !1230
@.str.24 = private unnamed_addr constant [10 x i8] c"SOCKET_EX\00", align 1, !dbg !1225
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1232
@.str.26 = private unnamed_addr constant [34 x i8] c"AH00857: error parsing URL %s: %s\00", align 1, !dbg !1237
@.str.27 = private unnamed_addr constant [4 x i8] c":%u\00", align 1, !dbg !1242
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !1244
@.str.29 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !1246
@.str.30 = private unnamed_addr constant [14 x i8] c"proxy:scgi://\00", align 1, !dbg !1248
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !1253
@.str.32 = private unnamed_addr constant [20 x i8] c"proxy-scgi-pathinfo\00", align 1, !dbg !1255
@.str.33 = private unnamed_addr constant [33 x i8] c"AH00862: Internal redirect to %s\00", align 1, !dbg !1260
@.str.34 = private unnamed_addr constant [4 x i8] c"GET\00", align 1, !dbg !1265
@.str.35 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1, !dbg !1267
@.str.36 = private unnamed_addr constant [31 x i8] c"AH00863: File subrequest to %s\00", align 1, !dbg !1269
@.str.37 = private unnamed_addr constant [86 x i8] c"AH00864: Subrequest to file '%s' not possible. (rr->status=%d, rr->finfo.filetype=%d)\00", align 1, !dbg !1274

; Function Attrs: nounwind uwtable
define internal ptr @create_scgi_config(ptr noundef %p, ptr noundef %dummy) #0 !dbg !1285 {
entry:
  %p.addr = alloca ptr, align 8
  %dummy.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1287, metadata !DIExpression()), !dbg !1300
  store ptr %dummy, ptr %dummy.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !1288, metadata !DIExpression()), !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1302
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1289, metadata !DIExpression()), !dbg !1303
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1304, !tbaa !1296
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 16), !dbg !1305
  store ptr %call, ptr %conf, align 8, !dbg !1303, !tbaa !1296
  %1 = load ptr, ptr %conf, align 8, !dbg !1306, !tbaa !1296
  %sendfile = getelementptr inbounds %struct.scgi_config, ptr %1, i32 0, i32 0, !dbg !1307
  store ptr null, ptr %sendfile, align 8, !dbg !1308, !tbaa !1309
  %2 = load ptr, ptr %conf, align 8, !dbg !1311, !tbaa !1296
  %internal_redirect = getelementptr inbounds %struct.scgi_config, ptr %2, i32 0, i32 1, !dbg !1312
  store ptr null, ptr %internal_redirect, align 8, !dbg !1313, !tbaa !1314
  %3 = load ptr, ptr %conf, align 8, !dbg !1315, !tbaa !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1316
  ret ptr %3, !dbg !1317
}

; Function Attrs: nounwind uwtable
define internal ptr @merge_scgi_config(ptr noundef %p, ptr noundef %base_, ptr noundef %add_) #0 !dbg !1318 {
entry:
  %p.addr = alloca ptr, align 8
  %base_.addr = alloca ptr, align 8
  %add_.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %add = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1320, metadata !DIExpression()), !dbg !1326
  store ptr %base_, ptr %base_.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %base_.addr, metadata !1321, metadata !DIExpression()), !dbg !1327
  store ptr %add_, ptr %add_.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %add_.addr, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #6, !dbg !1329
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !1323, metadata !DIExpression()), !dbg !1330
  %0 = load ptr, ptr %base_.addr, align 8, !dbg !1331, !tbaa !1296
  store ptr %0, ptr %base, align 8, !dbg !1330, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %add) #6, !dbg !1329
  tail call void @llvm.dbg.declare(metadata ptr %add, metadata !1324, metadata !DIExpression()), !dbg !1332
  %1 = load ptr, ptr %add_.addr, align 8, !dbg !1333, !tbaa !1296
  store ptr %1, ptr %add, align 8, !dbg !1332, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1329
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1325, metadata !DIExpression()), !dbg !1334
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1335, !tbaa !1296
  %call = call ptr @apr_palloc(ptr noundef %2, i64 noundef 16), !dbg !1336
  store ptr %call, ptr %conf, align 8, !dbg !1334, !tbaa !1296
  %3 = load ptr, ptr %add, align 8, !dbg !1337, !tbaa !1296
  %sendfile = getelementptr inbounds %struct.scgi_config, ptr %3, i32 0, i32 0, !dbg !1338
  %4 = load ptr, ptr %sendfile, align 8, !dbg !1338, !tbaa !1309
  %tobool = icmp ne ptr %4, null, !dbg !1337
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1337

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %add, align 8, !dbg !1339, !tbaa !1296
  %sendfile1 = getelementptr inbounds %struct.scgi_config, ptr %5, i32 0, i32 0, !dbg !1340
  %6 = load ptr, ptr %sendfile1, align 8, !dbg !1340, !tbaa !1309
  br label %cond.end, !dbg !1337

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %base, align 8, !dbg !1341, !tbaa !1296
  %sendfile2 = getelementptr inbounds %struct.scgi_config, ptr %7, i32 0, i32 0, !dbg !1342
  %8 = load ptr, ptr %sendfile2, align 8, !dbg !1342, !tbaa !1309
  br label %cond.end, !dbg !1337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %8, %cond.false ], !dbg !1337
  %9 = load ptr, ptr %conf, align 8, !dbg !1343, !tbaa !1296
  %sendfile3 = getelementptr inbounds %struct.scgi_config, ptr %9, i32 0, i32 0, !dbg !1344
  store ptr %cond, ptr %sendfile3, align 8, !dbg !1345, !tbaa !1309
  %10 = load ptr, ptr %add, align 8, !dbg !1346, !tbaa !1296
  %internal_redirect = getelementptr inbounds %struct.scgi_config, ptr %10, i32 0, i32 1, !dbg !1347
  %11 = load ptr, ptr %internal_redirect, align 8, !dbg !1347, !tbaa !1314
  %tobool4 = icmp ne ptr %11, null, !dbg !1346
  br i1 %tobool4, label %cond.true5, label %cond.false7, !dbg !1346

cond.true5:                                       ; preds = %cond.end
  %12 = load ptr, ptr %add, align 8, !dbg !1348, !tbaa !1296
  %internal_redirect6 = getelementptr inbounds %struct.scgi_config, ptr %12, i32 0, i32 1, !dbg !1349
  %13 = load ptr, ptr %internal_redirect6, align 8, !dbg !1349, !tbaa !1314
  br label %cond.end9, !dbg !1346

cond.false7:                                      ; preds = %cond.end
  %14 = load ptr, ptr %base, align 8, !dbg !1350, !tbaa !1296
  %internal_redirect8 = getelementptr inbounds %struct.scgi_config, ptr %14, i32 0, i32 1, !dbg !1351
  %15 = load ptr, ptr %internal_redirect8, align 8, !dbg !1351, !tbaa !1314
  br label %cond.end9, !dbg !1346

cond.end9:                                        ; preds = %cond.false7, %cond.true5
  %cond10 = phi ptr [ %13, %cond.true5 ], [ %15, %cond.false7 ], !dbg !1346
  %16 = load ptr, ptr %conf, align 8, !dbg !1352, !tbaa !1296
  %internal_redirect11 = getelementptr inbounds %struct.scgi_config, ptr %16, i32 0, i32 1, !dbg !1353
  store ptr %cond10, ptr %internal_redirect11, align 8, !dbg !1354, !tbaa !1314
  %17 = load ptr, ptr %conf, align 8, !dbg !1355, !tbaa !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %add) #6, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #6, !dbg !1356
  ret ptr %17, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal void @register_hooks(ptr noundef %p) #0 !dbg !1358 {
entry:
  %p.addr = alloca ptr, align 8
  %apu__hook = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1360, metadata !DIExpression()), !dbg !1367
  call void @proxy_hook_scheme_handler(ptr noundef @scgi_handler, ptr noundef null, ptr noundef null, i32 noundef 0), !dbg !1368
  call void @proxy_hook_canon_handler(ptr noundef @scgi_canon, ptr noundef null, ptr noundef null, i32 noundef 0), !dbg !1369
  br label %do.body, !dbg !1370

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %apu__hook) #6, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %apu__hook, metadata !1361, metadata !DIExpression()), !dbg !1371
  store ptr @scgi_request_status, ptr %apu__hook, align 8, !dbg !1371, !tbaa !1296
  %0 = load ptr, ptr %apu__hook, align 8, !dbg !1371, !tbaa !1296
  call void @apr_optional_hook_add(ptr noundef @.str.10, ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 10), !dbg !1371
  call void @llvm.lifetime.end.p0(i64 8, ptr %apu__hook) #6, !dbg !1370
  br label %do.end, !dbg !1371

do.end:                                           ; preds = %do.body
  ret void, !dbg !1372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1373 ptr @apr_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @scgi_set_send_file(ptr noundef %cmd, ptr noundef %mconfig, ptr noundef %arg) #0 !dbg !1376 {
entry:
  %cmd.addr = alloca ptr, align 8
  %mconfig.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1378, metadata !DIExpression()), !dbg !1382
  store ptr %mconfig, ptr %mconfig.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %mconfig.addr, metadata !1379, metadata !DIExpression()), !dbg !1383
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1380, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1381, metadata !DIExpression()), !dbg !1386
  %0 = load ptr, ptr %mconfig.addr, align 8, !dbg !1387, !tbaa !1296
  store ptr %0, ptr %conf, align 8, !dbg !1386, !tbaa !1296
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !1388, !tbaa !1296
  %call = call i32 @strcasecmp(ptr noundef %1, ptr noundef @.str.8) #7, !dbg !1390
  %tobool = icmp ne i32 %call, 0, !dbg !1390
  br i1 %tobool, label %if.else, label %if.then, !dbg !1391

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @scgi_sendfile_off, align 8, !dbg !1392, !tbaa !1296
  %3 = load ptr, ptr %conf, align 8, !dbg !1394, !tbaa !1296
  %sendfile = getelementptr inbounds %struct.scgi_config, ptr %3, i32 0, i32 0, !dbg !1395
  store ptr %2, ptr %sendfile, align 8, !dbg !1396, !tbaa !1309
  br label %if.end7, !dbg !1397

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !1398, !tbaa !1296
  %call1 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.9) #7, !dbg !1400
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1400
  br i1 %tobool2, label %if.else5, label %if.then3, !dbg !1401

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr @scgi_sendfile_on, align 8, !dbg !1402, !tbaa !1296
  %6 = load ptr, ptr %conf, align 8, !dbg !1404, !tbaa !1296
  %sendfile4 = getelementptr inbounds %struct.scgi_config, ptr %6, i32 0, i32 0, !dbg !1405
  store ptr %5, ptr %sendfile4, align 8, !dbg !1406, !tbaa !1309
  br label %if.end, !dbg !1407

if.else5:                                         ; preds = %if.else
  %7 = load ptr, ptr %arg.addr, align 8, !dbg !1408, !tbaa !1296
  %8 = load ptr, ptr %conf, align 8, !dbg !1410, !tbaa !1296
  %sendfile6 = getelementptr inbounds %struct.scgi_config, ptr %8, i32 0, i32 0, !dbg !1411
  store ptr %7, ptr %sendfile6, align 8, !dbg !1412, !tbaa !1309
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1413
  ret ptr null, !dbg !1414
}

; Function Attrs: nounwind uwtable
define internal ptr @scgi_set_internal_redirect(ptr noundef %cmd, ptr noundef %mconfig, ptr noundef %arg) #0 !dbg !1415 {
entry:
  %cmd.addr = alloca ptr, align 8
  %mconfig.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1417, metadata !DIExpression()), !dbg !1421
  store ptr %mconfig, ptr %mconfig.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %mconfig.addr, metadata !1418, metadata !DIExpression()), !dbg !1422
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1419, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1424
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1420, metadata !DIExpression()), !dbg !1425
  %0 = load ptr, ptr %mconfig.addr, align 8, !dbg !1426, !tbaa !1296
  store ptr %0, ptr %conf, align 8, !dbg !1425, !tbaa !1296
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !1427, !tbaa !1296
  %call = call i32 @strcasecmp(ptr noundef %1, ptr noundef @.str.8) #7, !dbg !1429
  %tobool = icmp ne i32 %call, 0, !dbg !1429
  br i1 %tobool, label %if.else, label %if.then, !dbg !1430

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @scgi_internal_redirect_off, align 8, !dbg !1431, !tbaa !1296
  %3 = load ptr, ptr %conf, align 8, !dbg !1433, !tbaa !1296
  %internal_redirect = getelementptr inbounds %struct.scgi_config, ptr %3, i32 0, i32 1, !dbg !1434
  store ptr %2, ptr %internal_redirect, align 8, !dbg !1435, !tbaa !1314
  br label %if.end7, !dbg !1436

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !1437, !tbaa !1296
  %call1 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.9) #7, !dbg !1439
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1439
  br i1 %tobool2, label %if.else5, label %if.then3, !dbg !1440

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr @scgi_internal_redirect_on, align 8, !dbg !1441, !tbaa !1296
  %6 = load ptr, ptr %conf, align 8, !dbg !1443, !tbaa !1296
  %internal_redirect4 = getelementptr inbounds %struct.scgi_config, ptr %6, i32 0, i32 1, !dbg !1444
  store ptr %5, ptr %internal_redirect4, align 8, !dbg !1445, !tbaa !1314
  br label %if.end, !dbg !1446

if.else5:                                         ; preds = %if.else
  %7 = load ptr, ptr %arg.addr, align 8, !dbg !1447, !tbaa !1296
  %8 = load ptr, ptr %conf, align 8, !dbg !1449, !tbaa !1296
  %internal_redirect6 = getelementptr inbounds %struct.scgi_config, ptr %8, i32 0, i32 1, !dbg !1450
  store ptr %7, ptr %internal_redirect6, align 8, !dbg !1451, !tbaa !1314
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1452
  ret ptr null, !dbg !1453
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1454 i32 @strcasecmp(ptr noundef, ptr noundef) #3

declare !dbg !1458 void @proxy_hook_scheme_handler(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @scgi_handler(ptr noundef %r, ptr noundef %worker, ptr noundef %conf, ptr noundef %url, ptr noundef %proxyname, i16 noundef zeroext %proxyport) #0 !dbg !1465 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %worker.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %url.addr = alloca ptr, align 8
  %proxyname.addr = alloca ptr, align 8
  %proxyport.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %backend = alloca ptr, align 8
  %p = alloca ptr, align 8
  %uri = alloca ptr, align 8
  %dummy = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1467, metadata !DIExpression()), !dbg !1480
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !1468, metadata !DIExpression()), !dbg !1481
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1469, metadata !DIExpression()), !dbg !1482
  store ptr %url, ptr %url.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %url.addr, metadata !1470, metadata !DIExpression()), !dbg !1483
  store ptr %proxyname, ptr %proxyname.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %proxyname.addr, metadata !1471, metadata !DIExpression()), !dbg !1484
  store i16 %proxyport, ptr %proxyport.addr, align 2, !tbaa !1485
  tail call void @llvm.dbg.declare(metadata ptr %proxyport.addr, metadata !1472, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1488
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1473, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 8, ptr %backend) #6, !dbg !1490
  tail call void @llvm.dbg.declare(metadata ptr %backend, metadata !1474, metadata !DIExpression()), !dbg !1491
  store ptr null, ptr %backend, align 8, !dbg !1491, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !1492
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1475, metadata !DIExpression()), !dbg !1493
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1494, !tbaa !1296
  %pool = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 0, !dbg !1495
  %1 = load ptr, ptr %pool, align 8, !dbg !1495, !tbaa !1496
  store ptr %1, ptr %p, align 8, !dbg !1493, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri) #6, !dbg !1502
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !1476, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.start.p0(i64 1, ptr %dummy) #6, !dbg !1504
  tail call void @llvm.dbg.declare(metadata ptr %dummy, metadata !1478, metadata !DIExpression()), !dbg !1505
  %2 = load ptr, ptr %url.addr, align 8, !dbg !1506, !tbaa !1296
  %call = call i32 @ap_cstr_casecmpn(ptr noundef %2, ptr noundef @.str.11, i64 noundef 7), !dbg !1508
  %tobool = icmp ne i32 %call, 0, !dbg !1508
  br i1 %tobool, label %if.then, label %if.end98, !dbg !1509

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1510

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1512

cond.true:                                        ; preds = %do.body
  %3 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1512, !tbaa !1515
  br label %cond.end, !dbg !1512

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1512

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %cond.false ], !dbg !1512
  %cmp = icmp slt i32 %cond, 0, !dbg !1512
  br i1 %cmp, label %cond.true43, label %lor.lhs.false, !dbg !1512

lor.lhs.false:                                    ; preds = %cond.end
  %4 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 56, !dbg !1512
  %5 = load ptr, ptr %log, align 8, !dbg !1512, !tbaa !1516
  %tobool1 = icmp ne ptr %5, null, !dbg !1512
  br i1 %tobool1, label %cond.true2, label %cond.false4, !dbg !1512

cond.true2:                                       ; preds = %lor.lhs.false
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log3 = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 56, !dbg !1512
  %7 = load ptr, ptr %log3, align 8, !dbg !1512, !tbaa !1516
  br label %cond.end14, !dbg !1512

cond.false4:                                      ; preds = %lor.lhs.false
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 1, !dbg !1512
  %9 = load ptr, ptr %connection, align 8, !dbg !1512, !tbaa !1517
  %log5 = getelementptr inbounds %struct.conn_rec, ptr %9, i32 0, i32 24, !dbg !1512
  %10 = load ptr, ptr %log5, align 8, !dbg !1512, !tbaa !1518
  %tobool6 = icmp ne ptr %10, null, !dbg !1512
  br i1 %tobool6, label %cond.true7, label %cond.false10, !dbg !1512

cond.true7:                                       ; preds = %cond.false4
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection8 = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 1, !dbg !1512
  %12 = load ptr, ptr %connection8, align 8, !dbg !1512, !tbaa !1517
  %log9 = getelementptr inbounds %struct.conn_rec, ptr %12, i32 0, i32 24, !dbg !1512
  %13 = load ptr, ptr %log9, align 8, !dbg !1512, !tbaa !1518
  br label %cond.end12, !dbg !1512

cond.false10:                                     ; preds = %cond.false4
  %14 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %server = getelementptr inbounds %struct.request_rec, ptr %14, i32 0, i32 2, !dbg !1512
  %15 = load ptr, ptr %server, align 8, !dbg !1512, !tbaa !1520
  %log11 = getelementptr inbounds %struct.server_rec, ptr %15, i32 0, i32 4, !dbg !1512
  br label %cond.end12, !dbg !1512

cond.end12:                                       ; preds = %cond.false10, %cond.true7
  %cond13 = phi ptr [ %13, %cond.true7 ], [ %log11, %cond.false10 ], !dbg !1512
  br label %cond.end14, !dbg !1512

cond.end14:                                       ; preds = %cond.end12, %cond.true2
  %cond15 = phi ptr [ %7, %cond.true2 ], [ %cond13, %cond.end12 ], !dbg !1512
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %cond15, i32 0, i32 0, !dbg !1512
  %16 = load ptr, ptr %module_levels, align 8, !dbg !1512, !tbaa !1521
  %cmp16 = icmp eq ptr %16, null, !dbg !1512
  br i1 %cmp16, label %cond.true43, label %lor.lhs.false17, !dbg !1512

lor.lhs.false17:                                  ; preds = %cond.end14
  %17 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log18 = getelementptr inbounds %struct.request_rec, ptr %17, i32 0, i32 56, !dbg !1512
  %18 = load ptr, ptr %log18, align 8, !dbg !1512, !tbaa !1516
  %tobool19 = icmp ne ptr %18, null, !dbg !1512
  br i1 %tobool19, label %cond.true20, label %cond.false22, !dbg !1512

cond.true20:                                      ; preds = %lor.lhs.false17
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log21 = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 56, !dbg !1512
  %20 = load ptr, ptr %log21, align 8, !dbg !1512, !tbaa !1516
  br label %cond.end34, !dbg !1512

cond.false22:                                     ; preds = %lor.lhs.false17
  %21 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection23 = getelementptr inbounds %struct.request_rec, ptr %21, i32 0, i32 1, !dbg !1512
  %22 = load ptr, ptr %connection23, align 8, !dbg !1512, !tbaa !1517
  %log24 = getelementptr inbounds %struct.conn_rec, ptr %22, i32 0, i32 24, !dbg !1512
  %23 = load ptr, ptr %log24, align 8, !dbg !1512, !tbaa !1518
  %tobool25 = icmp ne ptr %23, null, !dbg !1512
  br i1 %tobool25, label %cond.true26, label %cond.false29, !dbg !1512

cond.true26:                                      ; preds = %cond.false22
  %24 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection27 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 1, !dbg !1512
  %25 = load ptr, ptr %connection27, align 8, !dbg !1512, !tbaa !1517
  %log28 = getelementptr inbounds %struct.conn_rec, ptr %25, i32 0, i32 24, !dbg !1512
  %26 = load ptr, ptr %log28, align 8, !dbg !1512, !tbaa !1518
  br label %cond.end32, !dbg !1512

cond.false29:                                     ; preds = %cond.false22
  %27 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %server30 = getelementptr inbounds %struct.request_rec, ptr %27, i32 0, i32 2, !dbg !1512
  %28 = load ptr, ptr %server30, align 8, !dbg !1512, !tbaa !1520
  %log31 = getelementptr inbounds %struct.server_rec, ptr %28, i32 0, i32 4, !dbg !1512
  br label %cond.end32, !dbg !1512

cond.end32:                                       ; preds = %cond.false29, %cond.true26
  %cond33 = phi ptr [ %26, %cond.true26 ], [ %log31, %cond.false29 ], !dbg !1512
  br label %cond.end34, !dbg !1512

cond.end34:                                       ; preds = %cond.end32, %cond.true20
  %cond35 = phi ptr [ %20, %cond.true20 ], [ %cond33, %cond.end32 ], !dbg !1512
  %module_levels36 = getelementptr inbounds %struct.ap_logconf, ptr %cond35, i32 0, i32 0, !dbg !1512
  %29 = load ptr, ptr %module_levels36, align 8, !dbg !1512, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true37, label %cond.false38, !dbg !1512

cond.true37:                                      ; preds = %cond.end34
  %30 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1512, !tbaa !1515
  br label %cond.end39, !dbg !1512

cond.false38:                                     ; preds = %cond.end34
  br label %cond.end39, !dbg !1512

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %30, %cond.true37 ], [ -1, %cond.false38 ], !dbg !1512
  %idxprom = sext i32 %cond40 to i64, !dbg !1512
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %idxprom, !dbg !1512
  %31 = load i8, ptr %arrayidx, align 1, !dbg !1512, !tbaa !1523
  %conv = sext i8 %31 to i32, !dbg !1512
  %cmp41 = icmp slt i32 %conv, 0, !dbg !1512
  br i1 %cmp41, label %cond.true43, label %cond.false62, !dbg !1512

cond.true43:                                      ; preds = %cond.end39, %cond.end14, %cond.end
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log44 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 56, !dbg !1512
  %33 = load ptr, ptr %log44, align 8, !dbg !1512, !tbaa !1516
  %tobool45 = icmp ne ptr %33, null, !dbg !1512
  br i1 %tobool45, label %cond.true46, label %cond.false48, !dbg !1512

cond.true46:                                      ; preds = %cond.true43
  %34 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log47 = getelementptr inbounds %struct.request_rec, ptr %34, i32 0, i32 56, !dbg !1512
  %35 = load ptr, ptr %log47, align 8, !dbg !1512, !tbaa !1516
  br label %cond.end60, !dbg !1512

cond.false48:                                     ; preds = %cond.true43
  %36 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection49 = getelementptr inbounds %struct.request_rec, ptr %36, i32 0, i32 1, !dbg !1512
  %37 = load ptr, ptr %connection49, align 8, !dbg !1512, !tbaa !1517
  %log50 = getelementptr inbounds %struct.conn_rec, ptr %37, i32 0, i32 24, !dbg !1512
  %38 = load ptr, ptr %log50, align 8, !dbg !1512, !tbaa !1518
  %tobool51 = icmp ne ptr %38, null, !dbg !1512
  br i1 %tobool51, label %cond.true52, label %cond.false55, !dbg !1512

cond.true52:                                      ; preds = %cond.false48
  %39 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection53 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 1, !dbg !1512
  %40 = load ptr, ptr %connection53, align 8, !dbg !1512, !tbaa !1517
  %log54 = getelementptr inbounds %struct.conn_rec, ptr %40, i32 0, i32 24, !dbg !1512
  %41 = load ptr, ptr %log54, align 8, !dbg !1512, !tbaa !1518
  br label %cond.end58, !dbg !1512

cond.false55:                                     ; preds = %cond.false48
  %42 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %server56 = getelementptr inbounds %struct.request_rec, ptr %42, i32 0, i32 2, !dbg !1512
  %43 = load ptr, ptr %server56, align 8, !dbg !1512, !tbaa !1520
  %log57 = getelementptr inbounds %struct.server_rec, ptr %43, i32 0, i32 4, !dbg !1512
  br label %cond.end58, !dbg !1512

cond.end58:                                       ; preds = %cond.false55, %cond.true52
  %cond59 = phi ptr [ %41, %cond.true52 ], [ %log57, %cond.false55 ], !dbg !1512
  br label %cond.end60, !dbg !1512

cond.end60:                                       ; preds = %cond.end58, %cond.true46
  %cond61 = phi ptr [ %35, %cond.true46 ], [ %cond59, %cond.end58 ], !dbg !1512
  %level = getelementptr inbounds %struct.ap_logconf, ptr %cond61, i32 0, i32 1, !dbg !1512
  %44 = load i32, ptr %level, align 8, !dbg !1512, !tbaa !1524
  br label %cond.end89, !dbg !1512

cond.false62:                                     ; preds = %cond.end39
  %45 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log63 = getelementptr inbounds %struct.request_rec, ptr %45, i32 0, i32 56, !dbg !1512
  %46 = load ptr, ptr %log63, align 8, !dbg !1512, !tbaa !1516
  %tobool64 = icmp ne ptr %46, null, !dbg !1512
  br i1 %tobool64, label %cond.true65, label %cond.false67, !dbg !1512

cond.true65:                                      ; preds = %cond.false62
  %47 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %log66 = getelementptr inbounds %struct.request_rec, ptr %47, i32 0, i32 56, !dbg !1512
  %48 = load ptr, ptr %log66, align 8, !dbg !1512, !tbaa !1516
  br label %cond.end79, !dbg !1512

cond.false67:                                     ; preds = %cond.false62
  %49 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection68 = getelementptr inbounds %struct.request_rec, ptr %49, i32 0, i32 1, !dbg !1512
  %50 = load ptr, ptr %connection68, align 8, !dbg !1512, !tbaa !1517
  %log69 = getelementptr inbounds %struct.conn_rec, ptr %50, i32 0, i32 24, !dbg !1512
  %51 = load ptr, ptr %log69, align 8, !dbg !1512, !tbaa !1518
  %tobool70 = icmp ne ptr %51, null, !dbg !1512
  br i1 %tobool70, label %cond.true71, label %cond.false74, !dbg !1512

cond.true71:                                      ; preds = %cond.false67
  %52 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %connection72 = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 1, !dbg !1512
  %53 = load ptr, ptr %connection72, align 8, !dbg !1512, !tbaa !1517
  %log73 = getelementptr inbounds %struct.conn_rec, ptr %53, i32 0, i32 24, !dbg !1512
  %54 = load ptr, ptr %log73, align 8, !dbg !1512, !tbaa !1518
  br label %cond.end77, !dbg !1512

cond.false74:                                     ; preds = %cond.false67
  %55 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %server75 = getelementptr inbounds %struct.request_rec, ptr %55, i32 0, i32 2, !dbg !1512
  %56 = load ptr, ptr %server75, align 8, !dbg !1512, !tbaa !1520
  %log76 = getelementptr inbounds %struct.server_rec, ptr %56, i32 0, i32 4, !dbg !1512
  br label %cond.end77, !dbg !1512

cond.end77:                                       ; preds = %cond.false74, %cond.true71
  %cond78 = phi ptr [ %54, %cond.true71 ], [ %log76, %cond.false74 ], !dbg !1512
  br label %cond.end79, !dbg !1512

cond.end79:                                       ; preds = %cond.end77, %cond.true65
  %cond80 = phi ptr [ %48, %cond.true65 ], [ %cond78, %cond.end77 ], !dbg !1512
  %module_levels81 = getelementptr inbounds %struct.ap_logconf, ptr %cond80, i32 0, i32 0, !dbg !1512
  %57 = load ptr, ptr %module_levels81, align 8, !dbg !1512, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true82, label %cond.false83, !dbg !1512

cond.true82:                                      ; preds = %cond.end79
  %58 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1512, !tbaa !1515
  br label %cond.end84, !dbg !1512

cond.false83:                                     ; preds = %cond.end79
  br label %cond.end84, !dbg !1512

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %58, %cond.true82 ], [ -1, %cond.false83 ], !dbg !1512
  %idxprom86 = sext i32 %cond85 to i64, !dbg !1512
  %arrayidx87 = getelementptr inbounds i8, ptr %57, i64 %idxprom86, !dbg !1512
  %59 = load i8, ptr %arrayidx87, align 1, !dbg !1512, !tbaa !1523
  %conv88 = sext i8 %59 to i32, !dbg !1512
  br label %cond.end89, !dbg !1512

cond.end89:                                       ; preds = %cond.end84, %cond.end60
  %cond90 = phi i32 [ %44, %cond.end60 ], [ %conv88, %cond.end84 ], !dbg !1512
  %cmp91 = icmp sge i32 %cond90, 7, !dbg !1512
  br i1 %cmp91, label %if.then93, label %if.end, !dbg !1525

if.then93:                                        ; preds = %cond.end89
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true94, label %cond.false95, !dbg !1512

cond.true94:                                      ; preds = %if.then93
  %60 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1512, !tbaa !1515
  br label %cond.end96, !dbg !1512

cond.false95:                                     ; preds = %if.then93
  br label %cond.end96, !dbg !1512

cond.end96:                                       ; preds = %cond.false95, %cond.true94
  %cond97 = phi i32 [ %60, %cond.true94 ], [ -1, %cond.false95 ], !dbg !1512
  %61 = load ptr, ptr %r.addr, align 8, !dbg !1512, !tbaa !1296
  %62 = load ptr, ptr %url.addr, align 8, !dbg !1512, !tbaa !1296
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 537, i32 noundef %cond97, i32 noundef 7, i32 noundef 0, ptr noundef %61, ptr noundef @.str.12, ptr noundef %62), !dbg !1512
  br label %if.end, !dbg !1512

if.end:                                           ; preds = %cond.end96, %cond.end89
  br label %do.cond, !dbg !1525

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1525

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4, !dbg !1526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !1526

if.end98:                                         ; preds = %entry
  %63 = load ptr, ptr %worker.addr, align 8, !dbg !1527, !tbaa !1296
  %64 = load ptr, ptr %r.addr, align 8, !dbg !1528, !tbaa !1296
  %server99 = getelementptr inbounds %struct.request_rec, ptr %64, i32 0, i32 2, !dbg !1529
  %65 = load ptr, ptr %server99, align 8, !dbg !1529, !tbaa !1520
  %call100 = call i32 @ap_proxy_acquire_connection(ptr noundef @.str.13, ptr noundef %backend, ptr noundef %63, ptr noundef %65), !dbg !1530
  store i32 %call100, ptr %status, align 4, !dbg !1531, !tbaa !1515
  %66 = load i32, ptr %status, align 4, !dbg !1532, !tbaa !1515
  %cmp101 = icmp ne i32 %66, 0, !dbg !1534
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !1535

if.then103:                                       ; preds = %if.end98
  br label %cleanup, !dbg !1536

if.end104:                                        ; preds = %if.end98
  %67 = load ptr, ptr %backend, align 8, !dbg !1538, !tbaa !1296
  %is_ssl = getelementptr inbounds %struct.proxy_conn_rec, ptr %67, i32 0, i32 12, !dbg !1539
  %bf.load = load i8, ptr %is_ssl, align 2, !dbg !1540
  %bf.clear = and i8 %bf.load, -2, !dbg !1540
  %bf.set = or i8 %bf.clear, 0, !dbg !1540
  store i8 %bf.set, ptr %is_ssl, align 2, !dbg !1540
  %68 = load ptr, ptr %p, align 8, !dbg !1541, !tbaa !1296
  %call105 = call ptr @apr_palloc(ptr noundef %68, i64 noundef 88), !dbg !1542
  store ptr %call105, ptr %uri, align 8, !dbg !1543, !tbaa !1296
  %69 = load ptr, ptr %p, align 8, !dbg !1544, !tbaa !1296
  %70 = load ptr, ptr %r.addr, align 8, !dbg !1545, !tbaa !1296
  %71 = load ptr, ptr %conf.addr, align 8, !dbg !1546, !tbaa !1296
  %72 = load ptr, ptr %worker.addr, align 8, !dbg !1547, !tbaa !1296
  %73 = load ptr, ptr %backend, align 8, !dbg !1548, !tbaa !1296
  %74 = load ptr, ptr %uri, align 8, !dbg !1549, !tbaa !1296
  %75 = load ptr, ptr %proxyname.addr, align 8, !dbg !1550, !tbaa !1296
  %76 = load i16, ptr %proxyport.addr, align 2, !dbg !1551, !tbaa !1485
  %call106 = call i32 @ap_proxy_determine_connection(ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %url.addr, ptr noundef %75, i16 noundef zeroext %76, ptr noundef %dummy, i32 noundef 1), !dbg !1552
  store i32 %call106, ptr %status, align 4, !dbg !1553, !tbaa !1515
  %77 = load i32, ptr %status, align 4, !dbg !1554, !tbaa !1515
  %cmp107 = icmp ne i32 %77, 0, !dbg !1556
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !1557

if.then109:                                       ; preds = %if.end104
  br label %cleanup, !dbg !1558

if.end110:                                        ; preds = %if.end104
  %78 = load ptr, ptr %backend, align 8, !dbg !1560, !tbaa !1296
  %79 = load ptr, ptr %worker.addr, align 8, !dbg !1562, !tbaa !1296
  %80 = load ptr, ptr %r.addr, align 8, !dbg !1563, !tbaa !1296
  %server111 = getelementptr inbounds %struct.request_rec, ptr %80, i32 0, i32 2, !dbg !1564
  %81 = load ptr, ptr %server111, align 8, !dbg !1564, !tbaa !1520
  %call112 = call i32 @ap_proxy_connect_backend(ptr noundef @.str.13, ptr noundef %78, ptr noundef %79, ptr noundef %81), !dbg !1565
  %tobool113 = icmp ne i32 %call112, 0, !dbg !1565
  br i1 %tobool113, label %if.then114, label %if.end123, !dbg !1566

if.then114:                                       ; preds = %if.end110
  br label %do.body115, !dbg !1567

do.body115:                                       ; preds = %if.then114
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true116, label %cond.false117, !dbg !1569

cond.true116:                                     ; preds = %do.body115
  %82 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1569, !tbaa !1515
  br label %cond.end118, !dbg !1569

cond.false117:                                    ; preds = %do.body115
  br label %cond.end118, !dbg !1569

cond.end118:                                      ; preds = %cond.false117, %cond.true116
  %cond119 = phi i32 [ %82, %cond.true116 ], [ -1, %cond.false117 ], !dbg !1569
  %83 = load ptr, ptr %r.addr, align 8, !dbg !1569, !tbaa !1296
  %84 = load ptr, ptr %backend, align 8, !dbg !1569, !tbaa !1296
  %hostname = getelementptr inbounds %struct.proxy_conn_rec, ptr %84, i32 0, i32 4, !dbg !1569
  %85 = load ptr, ptr %hostname, align 8, !dbg !1569, !tbaa !1572
  %86 = load ptr, ptr %backend, align 8, !dbg !1569, !tbaa !1296
  %port = getelementptr inbounds %struct.proxy_conn_rec, ptr %86, i32 0, i32 11, !dbg !1569
  %87 = load i16, ptr %port, align 4, !dbg !1569, !tbaa !1574
  %conv120 = zext i16 %87 to i32, !dbg !1569
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 561, i32 noundef %cond119, i32 noundef 3, i32 noundef 0, ptr noundef %83, ptr noundef @.str.14, ptr noundef %85, i32 noundef %conv120), !dbg !1569
  br label %do.cond121, !dbg !1575

do.cond121:                                       ; preds = %cond.end118
  br label %do.end122, !dbg !1575

do.end122:                                        ; preds = %do.cond121
  store i32 503, ptr %status, align 4, !dbg !1576, !tbaa !1515
  br label %cleanup, !dbg !1577

if.end123:                                        ; preds = %if.end110
  %88 = load ptr, ptr %r.addr, align 8, !dbg !1578, !tbaa !1296
  %call124 = call i32 @ap_setup_client_block(ptr noundef %88, i32 noundef 1), !dbg !1580
  store i32 %call124, ptr %status, align 4, !dbg !1581, !tbaa !1515
  %cmp125 = icmp ne i32 %call124, 0, !dbg !1582
  br i1 %cmp125, label %if.then139, label %lor.lhs.false127, !dbg !1583

lor.lhs.false127:                                 ; preds = %if.end123
  %89 = load ptr, ptr %r.addr, align 8, !dbg !1584, !tbaa !1296
  %90 = load ptr, ptr %backend, align 8, !dbg !1585, !tbaa !1296
  %call128 = call i32 @send_headers(ptr noundef %89, ptr noundef %90), !dbg !1586
  store i32 %call128, ptr %status, align 4, !dbg !1587, !tbaa !1515
  %cmp129 = icmp ne i32 %call128, 0, !dbg !1588
  br i1 %cmp129, label %if.then139, label %lor.lhs.false131, !dbg !1589

lor.lhs.false131:                                 ; preds = %lor.lhs.false127
  %91 = load ptr, ptr %r.addr, align 8, !dbg !1590, !tbaa !1296
  %92 = load ptr, ptr %backend, align 8, !dbg !1591, !tbaa !1296
  %call132 = call i32 @send_request_body(ptr noundef %91, ptr noundef %92), !dbg !1592
  store i32 %call132, ptr %status, align 4, !dbg !1593, !tbaa !1515
  %cmp133 = icmp ne i32 %call132, 0, !dbg !1594
  br i1 %cmp133, label %if.then139, label %lor.lhs.false135, !dbg !1595

lor.lhs.false135:                                 ; preds = %lor.lhs.false131
  %93 = load ptr, ptr %r.addr, align 8, !dbg !1596, !tbaa !1296
  %94 = load ptr, ptr %backend, align 8, !dbg !1597, !tbaa !1296
  %call136 = call i32 @pass_response(ptr noundef %93, ptr noundef %94), !dbg !1598
  store i32 %call136, ptr %status, align 4, !dbg !1599, !tbaa !1515
  %cmp137 = icmp ne i32 %call136, 0, !dbg !1600
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !1601

if.then139:                                       ; preds = %lor.lhs.false135, %lor.lhs.false131, %lor.lhs.false127, %if.end123
  br label %cleanup, !dbg !1602

if.end140:                                        ; preds = %lor.lhs.false135
  br label %cleanup, !dbg !1604

cleanup:                                          ; preds = %if.end140, %if.then139, %do.end122, %if.then109, %if.then103
  tail call void @llvm.dbg.label(metadata !1479), !dbg !1605
  %95 = load ptr, ptr %backend, align 8, !dbg !1606, !tbaa !1296
  %tobool141 = icmp ne ptr %95, null, !dbg !1606
  br i1 %tobool141, label %if.then142, label %if.end148, !dbg !1608

if.then142:                                       ; preds = %cleanup
  %96 = load ptr, ptr %backend, align 8, !dbg !1609, !tbaa !1296
  %close = getelementptr inbounds %struct.proxy_conn_rec, ptr %96, i32 0, i32 12, !dbg !1611
  %bf.load143 = load i8, ptr %close, align 2, !dbg !1612
  %bf.clear144 = and i8 %bf.load143, -3, !dbg !1612
  %bf.set145 = or i8 %bf.clear144, 2, !dbg !1612
  store i8 %bf.set145, ptr %close, align 2, !dbg !1612
  %97 = load ptr, ptr %backend, align 8, !dbg !1613, !tbaa !1296
  %98 = load ptr, ptr %r.addr, align 8, !dbg !1614, !tbaa !1296
  %server146 = getelementptr inbounds %struct.request_rec, ptr %98, i32 0, i32 2, !dbg !1615
  %99 = load ptr, ptr %server146, align 8, !dbg !1615, !tbaa !1520
  %call147 = call i32 @ap_proxy_release_connection(ptr noundef @.str.13, ptr noundef %97, ptr noundef %99), !dbg !1616
  br label %if.end148, !dbg !1617

if.end148:                                        ; preds = %if.then142, %cleanup
  %100 = load i32, ptr %status, align 4, !dbg !1618, !tbaa !1515
  store i32 %100, ptr %retval, align 4, !dbg !1619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !1619

cleanup149:                                       ; preds = %if.end148, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %dummy) #6, !dbg !1620
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri) #6, !dbg !1620
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !1620
  call void @llvm.lifetime.end.p0(i64 8, ptr %backend) #6, !dbg !1620
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1620
  %101 = load i32, ptr %retval, align 4, !dbg !1620
  ret i32 %101, !dbg !1620
}

declare !dbg !1621 void @proxy_hook_canon_handler(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @scgi_canon(ptr noundef %r, ptr noundef %url) #0 !dbg !1628 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %url.addr = alloca ptr, align 8
  %host = alloca ptr, align 8
  %sport = alloca [7 x i8], align 1
  %err = alloca ptr, align 8
  %path = alloca ptr, align 8
  %port = alloca i16, align 2
  %def_port = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1630, metadata !DIExpression()), !dbg !1641
  store ptr %url, ptr %url.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %url.addr, metadata !1631, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #6, !dbg !1643
  tail call void @llvm.dbg.declare(metadata ptr %host, metadata !1632, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 7, ptr %sport) #6, !dbg !1643
  tail call void @llvm.dbg.declare(metadata ptr %sport, metadata !1633, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #6, !dbg !1646
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1637, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #6, !dbg !1646
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !1638, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 2, ptr %port) #6, !dbg !1649
  tail call void @llvm.dbg.declare(metadata ptr %port, metadata !1639, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 2, ptr %def_port) #6, !dbg !1649
  tail call void @llvm.dbg.declare(metadata ptr %def_port, metadata !1640, metadata !DIExpression()), !dbg !1651
  %0 = load ptr, ptr %url.addr, align 8, !dbg !1652, !tbaa !1296
  %call = call i32 @ap_cstr_casecmpn(ptr noundef %0, ptr noundef @.str.11, i64 noundef 7), !dbg !1654
  %tobool = icmp ne i32 %call, 0, !dbg !1654
  br i1 %tobool, label %if.then, label %if.end, !dbg !1655

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1656

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %url.addr, align 8, !dbg !1658, !tbaa !1296
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 5, !dbg !1658
  store ptr %add.ptr, ptr %url.addr, align 8, !dbg !1658, !tbaa !1296
  store i16 4000, ptr %def_port, align 2, !dbg !1659, !tbaa !1485
  store i16 4000, ptr %port, align 2, !dbg !1660, !tbaa !1485
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1661, !tbaa !1296
  %pool = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 0, !dbg !1662
  %3 = load ptr, ptr %pool, align 8, !dbg !1662, !tbaa !1496
  %call1 = call ptr @ap_proxy_canon_netloc(ptr noundef %3, ptr noundef %url.addr, ptr noundef null, ptr noundef null, ptr noundef %host, ptr noundef %port), !dbg !1663
  store ptr %call1, ptr %err, align 8, !dbg !1664, !tbaa !1296
  %4 = load ptr, ptr %err, align 8, !dbg !1665, !tbaa !1296
  %tobool2 = icmp ne ptr %4, null, !dbg !1665
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1667

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !1668

do.body:                                          ; preds = %if.then3
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1670

cond.true:                                        ; preds = %do.body
  %5 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1670, !tbaa !1515
  br label %cond.end, !dbg !1670

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1670

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -1, %cond.false ], !dbg !1670
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1670, !tbaa !1296
  %7 = load ptr, ptr %url.addr, align 8, !dbg !1670, !tbaa !1296
  %8 = load ptr, ptr %err, align 8, !dbg !1670, !tbaa !1296
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 192, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %6, ptr noundef @.str.26, ptr noundef %7, ptr noundef %8), !dbg !1670
  br label %do.cond, !dbg !1673

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1673

do.end:                                           ; preds = %do.cond
  store i32 400, ptr %retval, align 4, !dbg !1674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1674

if.end4:                                          ; preds = %if.end
  %9 = load i16, ptr %port, align 2, !dbg !1675, !tbaa !1485
  %conv = zext i16 %9 to i32, !dbg !1675
  %10 = load i16, ptr %def_port, align 2, !dbg !1677, !tbaa !1485
  %conv5 = zext i16 %10 to i32, !dbg !1677
  %cmp = icmp ne i32 %conv, %conv5, !dbg !1678
  br i1 %cmp, label %if.then7, label %if.else, !dbg !1679

if.then7:                                         ; preds = %if.end4
  %arraydecay = getelementptr inbounds [7 x i8], ptr %sport, i64 0, i64 0, !dbg !1680
  %11 = load i16, ptr %port, align 2, !dbg !1682, !tbaa !1485
  %conv8 = zext i16 %11 to i32, !dbg !1682
  %call9 = call i32 (ptr, i64, ptr, ...) @apr_snprintf(ptr noundef %arraydecay, i64 noundef 7, ptr noundef @.str.27, i32 noundef %conv8), !dbg !1683
  br label %if.end10, !dbg !1684

if.else:                                          ; preds = %if.end4
  %arrayidx = getelementptr inbounds [7 x i8], ptr %sport, i64 0, i64 0, !dbg !1685
  store i8 0, ptr %arrayidx, align 1, !dbg !1687, !tbaa !1523
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %12 = load ptr, ptr %host, align 8, !dbg !1688, !tbaa !1296
  %call11 = call ptr @strchr(ptr noundef %12, i32 noundef 58) #7, !dbg !1688
  %tobool12 = icmp ne ptr %call11, null, !dbg !1688
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !1690

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %r.addr, align 8, !dbg !1691, !tbaa !1296
  %pool14 = getelementptr inbounds %struct.request_rec, ptr %13, i32 0, i32 0, !dbg !1693
  %14 = load ptr, ptr %pool14, align 8, !dbg !1693, !tbaa !1496
  %15 = load ptr, ptr %host, align 8, !dbg !1694, !tbaa !1296
  %call15 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %14, ptr noundef @.str.28, ptr noundef %15, ptr noundef @.str.29, ptr noundef null), !dbg !1695
  store ptr %call15, ptr %host, align 8, !dbg !1696, !tbaa !1296
  br label %if.end16, !dbg !1697

if.end16:                                         ; preds = %if.then13, %if.end10
  %16 = load ptr, ptr %r.addr, align 8, !dbg !1698, !tbaa !1296
  %pool17 = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 0, !dbg !1699
  %17 = load ptr, ptr %pool17, align 8, !dbg !1699, !tbaa !1496
  %18 = load ptr, ptr %url.addr, align 8, !dbg !1700, !tbaa !1296
  %19 = load ptr, ptr %url.addr, align 8, !dbg !1701, !tbaa !1296
  %call18 = call i64 @strlen(ptr noundef %19) #7, !dbg !1702
  %conv19 = trunc i64 %call18 to i32, !dbg !1702
  %20 = load ptr, ptr %r.addr, align 8, !dbg !1703, !tbaa !1296
  %proxyreq = getelementptr inbounds %struct.request_rec, ptr %20, i32 0, i32 8, !dbg !1704
  %21 = load i32, ptr %proxyreq, align 4, !dbg !1704, !tbaa !1705
  %call20 = call ptr @ap_proxy_canonenc(ptr noundef %17, ptr noundef %18, i32 noundef %conv19, i32 noundef 0, i32 noundef 0, i32 noundef %21), !dbg !1706
  store ptr %call20, ptr %path, align 8, !dbg !1707, !tbaa !1296
  %22 = load ptr, ptr %path, align 8, !dbg !1708, !tbaa !1296
  %tobool21 = icmp ne ptr %22, null, !dbg !1708
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1710

if.then22:                                        ; preds = %if.end16
  store i32 400, ptr %retval, align 4, !dbg !1711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1711

if.end23:                                         ; preds = %if.end16
  %23 = load ptr, ptr %r.addr, align 8, !dbg !1713, !tbaa !1296
  %pool24 = getelementptr inbounds %struct.request_rec, ptr %23, i32 0, i32 0, !dbg !1714
  %24 = load ptr, ptr %pool24, align 8, !dbg !1714, !tbaa !1496
  %25 = load ptr, ptr %host, align 8, !dbg !1715, !tbaa !1296
  %arraydecay25 = getelementptr inbounds [7 x i8], ptr %sport, i64 0, i64 0, !dbg !1716
  %26 = load ptr, ptr %path, align 8, !dbg !1717, !tbaa !1296
  %call26 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %24, ptr noundef @.str.30, ptr noundef %25, ptr noundef %arraydecay25, ptr noundef @.str.31, ptr noundef %26, ptr noundef null), !dbg !1718
  %27 = load ptr, ptr %r.addr, align 8, !dbg !1719, !tbaa !1296
  %filename = getelementptr inbounds %struct.request_rec, ptr %27, i32 0, i32 48, !dbg !1720
  store ptr %call26, ptr %filename, align 8, !dbg !1721, !tbaa !1722
  %28 = load ptr, ptr %r.addr, align 8, !dbg !1723, !tbaa !1296
  %subprocess_env = getelementptr inbounds %struct.request_rec, ptr %28, i32 0, i32 37, !dbg !1725
  %29 = load ptr, ptr %subprocess_env, align 8, !dbg !1725, !tbaa !1726
  %call27 = call ptr @apr_table_get(ptr noundef %29, ptr noundef @.str.32), !dbg !1727
  %tobool28 = icmp ne ptr %call27, null, !dbg !1727
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !1728

if.then29:                                        ; preds = %if.end23
  %30 = load ptr, ptr %r.addr, align 8, !dbg !1729, !tbaa !1296
  %pool30 = getelementptr inbounds %struct.request_rec, ptr %30, i32 0, i32 0, !dbg !1731
  %31 = load ptr, ptr %pool30, align 8, !dbg !1731, !tbaa !1496
  %32 = load ptr, ptr %path, align 8, !dbg !1732, !tbaa !1296
  %call31 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %31, ptr noundef @.str.31, ptr noundef %32, ptr noundef null), !dbg !1733
  %33 = load ptr, ptr %r.addr, align 8, !dbg !1734, !tbaa !1296
  %path_info = getelementptr inbounds %struct.request_rec, ptr %33, i32 0, i32 50, !dbg !1735
  store ptr %call31, ptr %path_info, align 8, !dbg !1736, !tbaa !1737
  br label %if.end32, !dbg !1738

if.end32:                                         ; preds = %if.then29, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !1739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1739

cleanup:                                          ; preds = %if.end32, %if.then22, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %def_port) #6, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 2, ptr %port) #6, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #6, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #6, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 7, ptr %sport) #6, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #6, !dbg !1740
  %34 = load i32, ptr %retval, align 4, !dbg !1740
  ret i32 %34, !dbg !1740
}

; Function Attrs: nounwind uwtable
define internal i32 @scgi_request_status(ptr noundef %status, ptr noundef %r) #0 !dbg !1741 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %req_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rr = alloca ptr, align 8
  store ptr %status, ptr %status.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1743, metadata !DIExpression()), !dbg !1758
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1744, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 8, ptr %req_conf) #6, !dbg !1760
  tail call void @llvm.dbg.declare(metadata ptr %req_conf, metadata !1745, metadata !DIExpression()), !dbg !1761
  %0 = load ptr, ptr %status.addr, align 8, !dbg !1762, !tbaa !1296
  %1 = load i32, ptr %0, align 4, !dbg !1763, !tbaa !1515
  %cmp = icmp eq i32 %1, 0, !dbg !1764
  br i1 %cmp, label %land.lhs.true, label %if.end250, !dbg !1765

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1766, !tbaa !1296
  %request_config = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 55, !dbg !1766
  %3 = load ptr, ptr %request_config, align 8, !dbg !1766, !tbaa !1767
  %4 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @proxy_scgi_module, i32 0, i32 2), align 8, !dbg !1766, !tbaa !1768
  %idxprom = sext i32 %4 to i64, !dbg !1766
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1766
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1766, !tbaa !1296
  store ptr %5, ptr %req_conf, align 8, !dbg !1770, !tbaa !1296
  %tobool = icmp ne ptr %5, null, !dbg !1770
  br i1 %tobool, label %if.then, label %if.end250, !dbg !1771

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %req_conf, align 8, !dbg !1772, !tbaa !1296
  %type = getelementptr inbounds %struct.scgi_request_config, ptr %6, i32 0, i32 1, !dbg !1773
  %7 = load i32, ptr %type, align 8, !dbg !1773, !tbaa !1774
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb107
  ], !dbg !1776

sw.bb:                                            ; preds = %if.then
  br label %do.body, !dbg !1777

do.body:                                          ; preds = %sw.bb
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1778

cond.true:                                        ; preds = %do.body
  %8 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1778, !tbaa !1515
  br label %cond.end, !dbg !1778

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1778

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -1, %cond.false ], !dbg !1778
  %cmp1 = icmp slt i32 %cond, 0, !dbg !1778
  br i1 %cmp1, label %cond.true46, label %lor.lhs.false, !dbg !1778

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log = getelementptr inbounds %struct.request_rec, ptr %9, i32 0, i32 56, !dbg !1778
  %10 = load ptr, ptr %log, align 8, !dbg !1778, !tbaa !1516
  %tobool2 = icmp ne ptr %10, null, !dbg !1778
  br i1 %tobool2, label %cond.true3, label %cond.false5, !dbg !1778

cond.true3:                                       ; preds = %lor.lhs.false
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log4 = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 56, !dbg !1778
  %12 = load ptr, ptr %log4, align 8, !dbg !1778, !tbaa !1516
  br label %cond.end15, !dbg !1778

cond.false5:                                      ; preds = %lor.lhs.false
  %13 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection = getelementptr inbounds %struct.request_rec, ptr %13, i32 0, i32 1, !dbg !1778
  %14 = load ptr, ptr %connection, align 8, !dbg !1778, !tbaa !1517
  %log6 = getelementptr inbounds %struct.conn_rec, ptr %14, i32 0, i32 24, !dbg !1778
  %15 = load ptr, ptr %log6, align 8, !dbg !1778, !tbaa !1518
  %tobool7 = icmp ne ptr %15, null, !dbg !1778
  br i1 %tobool7, label %cond.true8, label %cond.false11, !dbg !1778

cond.true8:                                       ; preds = %cond.false5
  %16 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection9 = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 1, !dbg !1778
  %17 = load ptr, ptr %connection9, align 8, !dbg !1778, !tbaa !1517
  %log10 = getelementptr inbounds %struct.conn_rec, ptr %17, i32 0, i32 24, !dbg !1778
  %18 = load ptr, ptr %log10, align 8, !dbg !1778, !tbaa !1518
  br label %cond.end13, !dbg !1778

cond.false11:                                     ; preds = %cond.false5
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %server = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 2, !dbg !1778
  %20 = load ptr, ptr %server, align 8, !dbg !1778, !tbaa !1520
  %log12 = getelementptr inbounds %struct.server_rec, ptr %20, i32 0, i32 4, !dbg !1778
  br label %cond.end13, !dbg !1778

cond.end13:                                       ; preds = %cond.false11, %cond.true8
  %cond14 = phi ptr [ %18, %cond.true8 ], [ %log12, %cond.false11 ], !dbg !1778
  br label %cond.end15, !dbg !1778

cond.end15:                                       ; preds = %cond.end13, %cond.true3
  %cond16 = phi ptr [ %12, %cond.true3 ], [ %cond14, %cond.end13 ], !dbg !1778
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %cond16, i32 0, i32 0, !dbg !1778
  %21 = load ptr, ptr %module_levels, align 8, !dbg !1778, !tbaa !1521
  %cmp17 = icmp eq ptr %21, null, !dbg !1778
  br i1 %cmp17, label %cond.true46, label %lor.lhs.false18, !dbg !1778

lor.lhs.false18:                                  ; preds = %cond.end15
  %22 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log19 = getelementptr inbounds %struct.request_rec, ptr %22, i32 0, i32 56, !dbg !1778
  %23 = load ptr, ptr %log19, align 8, !dbg !1778, !tbaa !1516
  %tobool20 = icmp ne ptr %23, null, !dbg !1778
  br i1 %tobool20, label %cond.true21, label %cond.false23, !dbg !1778

cond.true21:                                      ; preds = %lor.lhs.false18
  %24 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log22 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 56, !dbg !1778
  %25 = load ptr, ptr %log22, align 8, !dbg !1778, !tbaa !1516
  br label %cond.end35, !dbg !1778

cond.false23:                                     ; preds = %lor.lhs.false18
  %26 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection24 = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 1, !dbg !1778
  %27 = load ptr, ptr %connection24, align 8, !dbg !1778, !tbaa !1517
  %log25 = getelementptr inbounds %struct.conn_rec, ptr %27, i32 0, i32 24, !dbg !1778
  %28 = load ptr, ptr %log25, align 8, !dbg !1778, !tbaa !1518
  %tobool26 = icmp ne ptr %28, null, !dbg !1778
  br i1 %tobool26, label %cond.true27, label %cond.false30, !dbg !1778

cond.true27:                                      ; preds = %cond.false23
  %29 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection28 = getelementptr inbounds %struct.request_rec, ptr %29, i32 0, i32 1, !dbg !1778
  %30 = load ptr, ptr %connection28, align 8, !dbg !1778, !tbaa !1517
  %log29 = getelementptr inbounds %struct.conn_rec, ptr %30, i32 0, i32 24, !dbg !1778
  %31 = load ptr, ptr %log29, align 8, !dbg !1778, !tbaa !1518
  br label %cond.end33, !dbg !1778

cond.false30:                                     ; preds = %cond.false23
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %server31 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 2, !dbg !1778
  %33 = load ptr, ptr %server31, align 8, !dbg !1778, !tbaa !1520
  %log32 = getelementptr inbounds %struct.server_rec, ptr %33, i32 0, i32 4, !dbg !1778
  br label %cond.end33, !dbg !1778

cond.end33:                                       ; preds = %cond.false30, %cond.true27
  %cond34 = phi ptr [ %31, %cond.true27 ], [ %log32, %cond.false30 ], !dbg !1778
  br label %cond.end35, !dbg !1778

cond.end35:                                       ; preds = %cond.end33, %cond.true21
  %cond36 = phi ptr [ %25, %cond.true21 ], [ %cond34, %cond.end33 ], !dbg !1778
  %module_levels37 = getelementptr inbounds %struct.ap_logconf, ptr %cond36, i32 0, i32 0, !dbg !1778
  %34 = load ptr, ptr %module_levels37, align 8, !dbg !1778, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true38, label %cond.false39, !dbg !1778

cond.true38:                                      ; preds = %cond.end35
  %35 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1778, !tbaa !1515
  br label %cond.end40, !dbg !1778

cond.false39:                                     ; preds = %cond.end35
  br label %cond.end40, !dbg !1778

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i32 [ %35, %cond.true38 ], [ -1, %cond.false39 ], !dbg !1778
  %idxprom42 = sext i32 %cond41 to i64, !dbg !1778
  %arrayidx43 = getelementptr inbounds i8, ptr %34, i64 %idxprom42, !dbg !1778
  %36 = load i8, ptr %arrayidx43, align 1, !dbg !1778, !tbaa !1523
  %conv = sext i8 %36 to i32, !dbg !1778
  %cmp44 = icmp slt i32 %conv, 0, !dbg !1778
  br i1 %cmp44, label %cond.true46, label %cond.false65, !dbg !1778

cond.true46:                                      ; preds = %cond.end40, %cond.end15, %cond.end
  %37 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log47 = getelementptr inbounds %struct.request_rec, ptr %37, i32 0, i32 56, !dbg !1778
  %38 = load ptr, ptr %log47, align 8, !dbg !1778, !tbaa !1516
  %tobool48 = icmp ne ptr %38, null, !dbg !1778
  br i1 %tobool48, label %cond.true49, label %cond.false51, !dbg !1778

cond.true49:                                      ; preds = %cond.true46
  %39 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log50 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 56, !dbg !1778
  %40 = load ptr, ptr %log50, align 8, !dbg !1778, !tbaa !1516
  br label %cond.end63, !dbg !1778

cond.false51:                                     ; preds = %cond.true46
  %41 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection52 = getelementptr inbounds %struct.request_rec, ptr %41, i32 0, i32 1, !dbg !1778
  %42 = load ptr, ptr %connection52, align 8, !dbg !1778, !tbaa !1517
  %log53 = getelementptr inbounds %struct.conn_rec, ptr %42, i32 0, i32 24, !dbg !1778
  %43 = load ptr, ptr %log53, align 8, !dbg !1778, !tbaa !1518
  %tobool54 = icmp ne ptr %43, null, !dbg !1778
  br i1 %tobool54, label %cond.true55, label %cond.false58, !dbg !1778

cond.true55:                                      ; preds = %cond.false51
  %44 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection56 = getelementptr inbounds %struct.request_rec, ptr %44, i32 0, i32 1, !dbg !1778
  %45 = load ptr, ptr %connection56, align 8, !dbg !1778, !tbaa !1517
  %log57 = getelementptr inbounds %struct.conn_rec, ptr %45, i32 0, i32 24, !dbg !1778
  %46 = load ptr, ptr %log57, align 8, !dbg !1778, !tbaa !1518
  br label %cond.end61, !dbg !1778

cond.false58:                                     ; preds = %cond.false51
  %47 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %server59 = getelementptr inbounds %struct.request_rec, ptr %47, i32 0, i32 2, !dbg !1778
  %48 = load ptr, ptr %server59, align 8, !dbg !1778, !tbaa !1520
  %log60 = getelementptr inbounds %struct.server_rec, ptr %48, i32 0, i32 4, !dbg !1778
  br label %cond.end61, !dbg !1778

cond.end61:                                       ; preds = %cond.false58, %cond.true55
  %cond62 = phi ptr [ %46, %cond.true55 ], [ %log60, %cond.false58 ], !dbg !1778
  br label %cond.end63, !dbg !1778

cond.end63:                                       ; preds = %cond.end61, %cond.true49
  %cond64 = phi ptr [ %40, %cond.true49 ], [ %cond62, %cond.end61 ], !dbg !1778
  %level = getelementptr inbounds %struct.ap_logconf, ptr %cond64, i32 0, i32 1, !dbg !1778
  %49 = load i32, ptr %level, align 8, !dbg !1778, !tbaa !1524
  br label %cond.end92, !dbg !1778

cond.false65:                                     ; preds = %cond.end40
  %50 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log66 = getelementptr inbounds %struct.request_rec, ptr %50, i32 0, i32 56, !dbg !1778
  %51 = load ptr, ptr %log66, align 8, !dbg !1778, !tbaa !1516
  %tobool67 = icmp ne ptr %51, null, !dbg !1778
  br i1 %tobool67, label %cond.true68, label %cond.false70, !dbg !1778

cond.true68:                                      ; preds = %cond.false65
  %52 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %log69 = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 56, !dbg !1778
  %53 = load ptr, ptr %log69, align 8, !dbg !1778, !tbaa !1516
  br label %cond.end82, !dbg !1778

cond.false70:                                     ; preds = %cond.false65
  %54 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection71 = getelementptr inbounds %struct.request_rec, ptr %54, i32 0, i32 1, !dbg !1778
  %55 = load ptr, ptr %connection71, align 8, !dbg !1778, !tbaa !1517
  %log72 = getelementptr inbounds %struct.conn_rec, ptr %55, i32 0, i32 24, !dbg !1778
  %56 = load ptr, ptr %log72, align 8, !dbg !1778, !tbaa !1518
  %tobool73 = icmp ne ptr %56, null, !dbg !1778
  br i1 %tobool73, label %cond.true74, label %cond.false77, !dbg !1778

cond.true74:                                      ; preds = %cond.false70
  %57 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %connection75 = getelementptr inbounds %struct.request_rec, ptr %57, i32 0, i32 1, !dbg !1778
  %58 = load ptr, ptr %connection75, align 8, !dbg !1778, !tbaa !1517
  %log76 = getelementptr inbounds %struct.conn_rec, ptr %58, i32 0, i32 24, !dbg !1778
  %59 = load ptr, ptr %log76, align 8, !dbg !1778, !tbaa !1518
  br label %cond.end80, !dbg !1778

cond.false77:                                     ; preds = %cond.false70
  %60 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %server78 = getelementptr inbounds %struct.request_rec, ptr %60, i32 0, i32 2, !dbg !1778
  %61 = load ptr, ptr %server78, align 8, !dbg !1778, !tbaa !1520
  %log79 = getelementptr inbounds %struct.server_rec, ptr %61, i32 0, i32 4, !dbg !1778
  br label %cond.end80, !dbg !1778

cond.end80:                                       ; preds = %cond.false77, %cond.true74
  %cond81 = phi ptr [ %59, %cond.true74 ], [ %log79, %cond.false77 ], !dbg !1778
  br label %cond.end82, !dbg !1778

cond.end82:                                       ; preds = %cond.end80, %cond.true68
  %cond83 = phi ptr [ %53, %cond.true68 ], [ %cond81, %cond.end80 ], !dbg !1778
  %module_levels84 = getelementptr inbounds %struct.ap_logconf, ptr %cond83, i32 0, i32 0, !dbg !1778
  %62 = load ptr, ptr %module_levels84, align 8, !dbg !1778, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true85, label %cond.false86, !dbg !1778

cond.true85:                                      ; preds = %cond.end82
  %63 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1778, !tbaa !1515
  br label %cond.end87, !dbg !1778

cond.false86:                                     ; preds = %cond.end82
  br label %cond.end87, !dbg !1778

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi i32 [ %63, %cond.true85 ], [ -1, %cond.false86 ], !dbg !1778
  %idxprom89 = sext i32 %cond88 to i64, !dbg !1778
  %arrayidx90 = getelementptr inbounds i8, ptr %62, i64 %idxprom89, !dbg !1778
  %64 = load i8, ptr %arrayidx90, align 1, !dbg !1778, !tbaa !1523
  %conv91 = sext i8 %64 to i32, !dbg !1778
  br label %cond.end92, !dbg !1778

cond.end92:                                       ; preds = %cond.end87, %cond.end63
  %cond93 = phi i32 [ %49, %cond.end63 ], [ %conv91, %cond.end87 ], !dbg !1778
  %cmp94 = icmp sge i32 %cond93, 7, !dbg !1778
  br i1 %cmp94, label %if.then96, label %if.end, !dbg !1781

if.then96:                                        ; preds = %cond.end92
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true97, label %cond.false98, !dbg !1778

cond.true97:                                      ; preds = %if.then96
  %65 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1778, !tbaa !1515
  br label %cond.end99, !dbg !1778

cond.false98:                                     ; preds = %if.then96
  br label %cond.end99, !dbg !1778

cond.end99:                                       ; preds = %cond.false98, %cond.true97
  %cond100 = phi i32 [ %65, %cond.true97 ], [ -1, %cond.false98 ], !dbg !1778
  %66 = load ptr, ptr %r.addr, align 8, !dbg !1778, !tbaa !1296
  %67 = load ptr, ptr %req_conf, align 8, !dbg !1778, !tbaa !1296
  %location = getelementptr inbounds %struct.scgi_request_config, ptr %67, i32 0, i32 0, !dbg !1778
  %68 = load ptr, ptr %location, align 8, !dbg !1778, !tbaa !1782
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 473, i32 noundef %cond100, i32 noundef 7, i32 noundef 0, ptr noundef %66, ptr noundef @.str.33, ptr noundef %68), !dbg !1778
  br label %if.end, !dbg !1778

if.end:                                           ; preds = %cond.end99, %cond.end92
  br label %do.cond, !dbg !1781

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1781

do.end:                                           ; preds = %do.cond
  %69 = load ptr, ptr %r.addr, align 8, !dbg !1783, !tbaa !1296
  %status_line = getelementptr inbounds %struct.request_rec, ptr %69, i32 0, i32 14, !dbg !1784
  store ptr null, ptr %status_line, align 8, !dbg !1785, !tbaa !1786
  %70 = load ptr, ptr %r.addr, align 8, !dbg !1787, !tbaa !1296
  %method_number = getelementptr inbounds %struct.request_rec, ptr %70, i32 0, i32 16, !dbg !1789
  %71 = load i32, ptr %method_number, align 4, !dbg !1789, !tbaa !1790
  %cmp101 = icmp ne i32 %71, 0, !dbg !1791
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !1792

if.then103:                                       ; preds = %do.end
  %72 = load ptr, ptr %r.addr, align 8, !dbg !1793, !tbaa !1296
  %method = getelementptr inbounds %struct.request_rec, ptr %72, i32 0, i32 17, !dbg !1795
  store ptr @.str.34, ptr %method, align 8, !dbg !1796, !tbaa !1797
  %73 = load ptr, ptr %r.addr, align 8, !dbg !1798, !tbaa !1296
  %method_number104 = getelementptr inbounds %struct.request_rec, ptr %73, i32 0, i32 16, !dbg !1799
  store i32 0, ptr %method_number104, align 4, !dbg !1800, !tbaa !1790
  br label %if.end105, !dbg !1801

if.end105:                                        ; preds = %if.then103, %do.end
  %74 = load ptr, ptr %r.addr, align 8, !dbg !1802, !tbaa !1296
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %74, i32 0, i32 34, !dbg !1803
  %75 = load ptr, ptr %headers_in, align 8, !dbg !1803, !tbaa !1804
  call void @apr_table_unset(ptr noundef %75, ptr noundef @.str.35), !dbg !1805
  %76 = load ptr, ptr %req_conf, align 8, !dbg !1806, !tbaa !1296
  %location106 = getelementptr inbounds %struct.scgi_request_config, ptr %76, i32 0, i32 0, !dbg !1807
  %77 = load ptr, ptr %location106, align 8, !dbg !1807, !tbaa !1782
  %78 = load ptr, ptr %r.addr, align 8, !dbg !1808, !tbaa !1296
  call void @ap_internal_redirect_handler(ptr noundef %77, ptr noundef %78), !dbg !1809
  store i32 0, ptr %retval, align 4, !dbg !1810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup251, !dbg !1810

sw.bb107:                                         ; preds = %if.then
  br label %do.body108, !dbg !1811

do.body108:                                       ; preds = %sw.bb107
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true109, label %cond.false110, !dbg !1812

cond.true109:                                     ; preds = %do.body108
  %79 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1812, !tbaa !1515
  br label %cond.end111, !dbg !1812

cond.false110:                                    ; preds = %do.body108
  br label %cond.end111, !dbg !1812

cond.end111:                                      ; preds = %cond.false110, %cond.true109
  %cond112 = phi i32 [ %79, %cond.true109 ], [ -1, %cond.false110 ], !dbg !1812
  %cmp113 = icmp slt i32 %cond112, 0, !dbg !1812
  br i1 %cmp113, label %cond.true166, label %lor.lhs.false115, !dbg !1812

lor.lhs.false115:                                 ; preds = %cond.end111
  %80 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log116 = getelementptr inbounds %struct.request_rec, ptr %80, i32 0, i32 56, !dbg !1812
  %81 = load ptr, ptr %log116, align 8, !dbg !1812, !tbaa !1516
  %tobool117 = icmp ne ptr %81, null, !dbg !1812
  br i1 %tobool117, label %cond.true118, label %cond.false120, !dbg !1812

cond.true118:                                     ; preds = %lor.lhs.false115
  %82 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log119 = getelementptr inbounds %struct.request_rec, ptr %82, i32 0, i32 56, !dbg !1812
  %83 = load ptr, ptr %log119, align 8, !dbg !1812, !tbaa !1516
  br label %cond.end132, !dbg !1812

cond.false120:                                    ; preds = %lor.lhs.false115
  %84 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection121 = getelementptr inbounds %struct.request_rec, ptr %84, i32 0, i32 1, !dbg !1812
  %85 = load ptr, ptr %connection121, align 8, !dbg !1812, !tbaa !1517
  %log122 = getelementptr inbounds %struct.conn_rec, ptr %85, i32 0, i32 24, !dbg !1812
  %86 = load ptr, ptr %log122, align 8, !dbg !1812, !tbaa !1518
  %tobool123 = icmp ne ptr %86, null, !dbg !1812
  br i1 %tobool123, label %cond.true124, label %cond.false127, !dbg !1812

cond.true124:                                     ; preds = %cond.false120
  %87 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection125 = getelementptr inbounds %struct.request_rec, ptr %87, i32 0, i32 1, !dbg !1812
  %88 = load ptr, ptr %connection125, align 8, !dbg !1812, !tbaa !1517
  %log126 = getelementptr inbounds %struct.conn_rec, ptr %88, i32 0, i32 24, !dbg !1812
  %89 = load ptr, ptr %log126, align 8, !dbg !1812, !tbaa !1518
  br label %cond.end130, !dbg !1812

cond.false127:                                    ; preds = %cond.false120
  %90 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %server128 = getelementptr inbounds %struct.request_rec, ptr %90, i32 0, i32 2, !dbg !1812
  %91 = load ptr, ptr %server128, align 8, !dbg !1812, !tbaa !1520
  %log129 = getelementptr inbounds %struct.server_rec, ptr %91, i32 0, i32 4, !dbg !1812
  br label %cond.end130, !dbg !1812

cond.end130:                                      ; preds = %cond.false127, %cond.true124
  %cond131 = phi ptr [ %89, %cond.true124 ], [ %log129, %cond.false127 ], !dbg !1812
  br label %cond.end132, !dbg !1812

cond.end132:                                      ; preds = %cond.end130, %cond.true118
  %cond133 = phi ptr [ %83, %cond.true118 ], [ %cond131, %cond.end130 ], !dbg !1812
  %module_levels134 = getelementptr inbounds %struct.ap_logconf, ptr %cond133, i32 0, i32 0, !dbg !1812
  %92 = load ptr, ptr %module_levels134, align 8, !dbg !1812, !tbaa !1521
  %cmp135 = icmp eq ptr %92, null, !dbg !1812
  br i1 %cmp135, label %cond.true166, label %lor.lhs.false137, !dbg !1812

lor.lhs.false137:                                 ; preds = %cond.end132
  %93 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log138 = getelementptr inbounds %struct.request_rec, ptr %93, i32 0, i32 56, !dbg !1812
  %94 = load ptr, ptr %log138, align 8, !dbg !1812, !tbaa !1516
  %tobool139 = icmp ne ptr %94, null, !dbg !1812
  br i1 %tobool139, label %cond.true140, label %cond.false142, !dbg !1812

cond.true140:                                     ; preds = %lor.lhs.false137
  %95 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log141 = getelementptr inbounds %struct.request_rec, ptr %95, i32 0, i32 56, !dbg !1812
  %96 = load ptr, ptr %log141, align 8, !dbg !1812, !tbaa !1516
  br label %cond.end154, !dbg !1812

cond.false142:                                    ; preds = %lor.lhs.false137
  %97 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection143 = getelementptr inbounds %struct.request_rec, ptr %97, i32 0, i32 1, !dbg !1812
  %98 = load ptr, ptr %connection143, align 8, !dbg !1812, !tbaa !1517
  %log144 = getelementptr inbounds %struct.conn_rec, ptr %98, i32 0, i32 24, !dbg !1812
  %99 = load ptr, ptr %log144, align 8, !dbg !1812, !tbaa !1518
  %tobool145 = icmp ne ptr %99, null, !dbg !1812
  br i1 %tobool145, label %cond.true146, label %cond.false149, !dbg !1812

cond.true146:                                     ; preds = %cond.false142
  %100 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection147 = getelementptr inbounds %struct.request_rec, ptr %100, i32 0, i32 1, !dbg !1812
  %101 = load ptr, ptr %connection147, align 8, !dbg !1812, !tbaa !1517
  %log148 = getelementptr inbounds %struct.conn_rec, ptr %101, i32 0, i32 24, !dbg !1812
  %102 = load ptr, ptr %log148, align 8, !dbg !1812, !tbaa !1518
  br label %cond.end152, !dbg !1812

cond.false149:                                    ; preds = %cond.false142
  %103 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %server150 = getelementptr inbounds %struct.request_rec, ptr %103, i32 0, i32 2, !dbg !1812
  %104 = load ptr, ptr %server150, align 8, !dbg !1812, !tbaa !1520
  %log151 = getelementptr inbounds %struct.server_rec, ptr %104, i32 0, i32 4, !dbg !1812
  br label %cond.end152, !dbg !1812

cond.end152:                                      ; preds = %cond.false149, %cond.true146
  %cond153 = phi ptr [ %102, %cond.true146 ], [ %log151, %cond.false149 ], !dbg !1812
  br label %cond.end154, !dbg !1812

cond.end154:                                      ; preds = %cond.end152, %cond.true140
  %cond155 = phi ptr [ %96, %cond.true140 ], [ %cond153, %cond.end152 ], !dbg !1812
  %module_levels156 = getelementptr inbounds %struct.ap_logconf, ptr %cond155, i32 0, i32 0, !dbg !1812
  %105 = load ptr, ptr %module_levels156, align 8, !dbg !1812, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true157, label %cond.false158, !dbg !1812

cond.true157:                                     ; preds = %cond.end154
  %106 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1812, !tbaa !1515
  br label %cond.end159, !dbg !1812

cond.false158:                                    ; preds = %cond.end154
  br label %cond.end159, !dbg !1812

cond.end159:                                      ; preds = %cond.false158, %cond.true157
  %cond160 = phi i32 [ %106, %cond.true157 ], [ -1, %cond.false158 ], !dbg !1812
  %idxprom161 = sext i32 %cond160 to i64, !dbg !1812
  %arrayidx162 = getelementptr inbounds i8, ptr %105, i64 %idxprom161, !dbg !1812
  %107 = load i8, ptr %arrayidx162, align 1, !dbg !1812, !tbaa !1523
  %conv163 = sext i8 %107 to i32, !dbg !1812
  %cmp164 = icmp slt i32 %conv163, 0, !dbg !1812
  br i1 %cmp164, label %cond.true166, label %cond.false186, !dbg !1812

cond.true166:                                     ; preds = %cond.end159, %cond.end132, %cond.end111
  %108 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log167 = getelementptr inbounds %struct.request_rec, ptr %108, i32 0, i32 56, !dbg !1812
  %109 = load ptr, ptr %log167, align 8, !dbg !1812, !tbaa !1516
  %tobool168 = icmp ne ptr %109, null, !dbg !1812
  br i1 %tobool168, label %cond.true169, label %cond.false171, !dbg !1812

cond.true169:                                     ; preds = %cond.true166
  %110 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log170 = getelementptr inbounds %struct.request_rec, ptr %110, i32 0, i32 56, !dbg !1812
  %111 = load ptr, ptr %log170, align 8, !dbg !1812, !tbaa !1516
  br label %cond.end183, !dbg !1812

cond.false171:                                    ; preds = %cond.true166
  %112 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection172 = getelementptr inbounds %struct.request_rec, ptr %112, i32 0, i32 1, !dbg !1812
  %113 = load ptr, ptr %connection172, align 8, !dbg !1812, !tbaa !1517
  %log173 = getelementptr inbounds %struct.conn_rec, ptr %113, i32 0, i32 24, !dbg !1812
  %114 = load ptr, ptr %log173, align 8, !dbg !1812, !tbaa !1518
  %tobool174 = icmp ne ptr %114, null, !dbg !1812
  br i1 %tobool174, label %cond.true175, label %cond.false178, !dbg !1812

cond.true175:                                     ; preds = %cond.false171
  %115 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection176 = getelementptr inbounds %struct.request_rec, ptr %115, i32 0, i32 1, !dbg !1812
  %116 = load ptr, ptr %connection176, align 8, !dbg !1812, !tbaa !1517
  %log177 = getelementptr inbounds %struct.conn_rec, ptr %116, i32 0, i32 24, !dbg !1812
  %117 = load ptr, ptr %log177, align 8, !dbg !1812, !tbaa !1518
  br label %cond.end181, !dbg !1812

cond.false178:                                    ; preds = %cond.false171
  %118 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %server179 = getelementptr inbounds %struct.request_rec, ptr %118, i32 0, i32 2, !dbg !1812
  %119 = load ptr, ptr %server179, align 8, !dbg !1812, !tbaa !1520
  %log180 = getelementptr inbounds %struct.server_rec, ptr %119, i32 0, i32 4, !dbg !1812
  br label %cond.end181, !dbg !1812

cond.end181:                                      ; preds = %cond.false178, %cond.true175
  %cond182 = phi ptr [ %117, %cond.true175 ], [ %log180, %cond.false178 ], !dbg !1812
  br label %cond.end183, !dbg !1812

cond.end183:                                      ; preds = %cond.end181, %cond.true169
  %cond184 = phi ptr [ %111, %cond.true169 ], [ %cond182, %cond.end181 ], !dbg !1812
  %level185 = getelementptr inbounds %struct.ap_logconf, ptr %cond184, i32 0, i32 1, !dbg !1812
  %120 = load i32, ptr %level185, align 8, !dbg !1812, !tbaa !1524
  br label %cond.end213, !dbg !1812

cond.false186:                                    ; preds = %cond.end159
  %121 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log187 = getelementptr inbounds %struct.request_rec, ptr %121, i32 0, i32 56, !dbg !1812
  %122 = load ptr, ptr %log187, align 8, !dbg !1812, !tbaa !1516
  %tobool188 = icmp ne ptr %122, null, !dbg !1812
  br i1 %tobool188, label %cond.true189, label %cond.false191, !dbg !1812

cond.true189:                                     ; preds = %cond.false186
  %123 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %log190 = getelementptr inbounds %struct.request_rec, ptr %123, i32 0, i32 56, !dbg !1812
  %124 = load ptr, ptr %log190, align 8, !dbg !1812, !tbaa !1516
  br label %cond.end203, !dbg !1812

cond.false191:                                    ; preds = %cond.false186
  %125 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection192 = getelementptr inbounds %struct.request_rec, ptr %125, i32 0, i32 1, !dbg !1812
  %126 = load ptr, ptr %connection192, align 8, !dbg !1812, !tbaa !1517
  %log193 = getelementptr inbounds %struct.conn_rec, ptr %126, i32 0, i32 24, !dbg !1812
  %127 = load ptr, ptr %log193, align 8, !dbg !1812, !tbaa !1518
  %tobool194 = icmp ne ptr %127, null, !dbg !1812
  br i1 %tobool194, label %cond.true195, label %cond.false198, !dbg !1812

cond.true195:                                     ; preds = %cond.false191
  %128 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %connection196 = getelementptr inbounds %struct.request_rec, ptr %128, i32 0, i32 1, !dbg !1812
  %129 = load ptr, ptr %connection196, align 8, !dbg !1812, !tbaa !1517
  %log197 = getelementptr inbounds %struct.conn_rec, ptr %129, i32 0, i32 24, !dbg !1812
  %130 = load ptr, ptr %log197, align 8, !dbg !1812, !tbaa !1518
  br label %cond.end201, !dbg !1812

cond.false198:                                    ; preds = %cond.false191
  %131 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %server199 = getelementptr inbounds %struct.request_rec, ptr %131, i32 0, i32 2, !dbg !1812
  %132 = load ptr, ptr %server199, align 8, !dbg !1812, !tbaa !1520
  %log200 = getelementptr inbounds %struct.server_rec, ptr %132, i32 0, i32 4, !dbg !1812
  br label %cond.end201, !dbg !1812

cond.end201:                                      ; preds = %cond.false198, %cond.true195
  %cond202 = phi ptr [ %130, %cond.true195 ], [ %log200, %cond.false198 ], !dbg !1812
  br label %cond.end203, !dbg !1812

cond.end203:                                      ; preds = %cond.end201, %cond.true189
  %cond204 = phi ptr [ %124, %cond.true189 ], [ %cond202, %cond.end201 ], !dbg !1812
  %module_levels205 = getelementptr inbounds %struct.ap_logconf, ptr %cond204, i32 0, i32 0, !dbg !1812
  %133 = load ptr, ptr %module_levels205, align 8, !dbg !1812, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true206, label %cond.false207, !dbg !1812

cond.true206:                                     ; preds = %cond.end203
  %134 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1812, !tbaa !1515
  br label %cond.end208, !dbg !1812

cond.false207:                                    ; preds = %cond.end203
  br label %cond.end208, !dbg !1812

cond.end208:                                      ; preds = %cond.false207, %cond.true206
  %cond209 = phi i32 [ %134, %cond.true206 ], [ -1, %cond.false207 ], !dbg !1812
  %idxprom210 = sext i32 %cond209 to i64, !dbg !1812
  %arrayidx211 = getelementptr inbounds i8, ptr %133, i64 %idxprom210, !dbg !1812
  %135 = load i8, ptr %arrayidx211, align 1, !dbg !1812, !tbaa !1523
  %conv212 = sext i8 %135 to i32, !dbg !1812
  br label %cond.end213, !dbg !1812

cond.end213:                                      ; preds = %cond.end208, %cond.end183
  %cond214 = phi i32 [ %120, %cond.end183 ], [ %conv212, %cond.end208 ], !dbg !1812
  %cmp215 = icmp sge i32 %cond214, 7, !dbg !1812
  br i1 %cmp215, label %if.then217, label %if.end223, !dbg !1815

if.then217:                                       ; preds = %cond.end213
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true218, label %cond.false219, !dbg !1812

cond.true218:                                     ; preds = %if.then217
  %136 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1812, !tbaa !1515
  br label %cond.end220, !dbg !1812

cond.false219:                                    ; preds = %if.then217
  br label %cond.end220, !dbg !1812

cond.end220:                                      ; preds = %cond.false219, %cond.true218
  %cond221 = phi i32 [ %136, %cond.true218 ], [ -1, %cond.false219 ], !dbg !1812
  %137 = load ptr, ptr %r.addr, align 8, !dbg !1812, !tbaa !1296
  %138 = load ptr, ptr %req_conf, align 8, !dbg !1812, !tbaa !1296
  %location222 = getelementptr inbounds %struct.scgi_request_config, ptr %138, i32 0, i32 0, !dbg !1812
  %139 = load ptr, ptr %location222, align 8, !dbg !1812, !tbaa !1782
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 488, i32 noundef %cond221, i32 noundef 7, i32 noundef 0, ptr noundef %137, ptr noundef @.str.36, ptr noundef %139), !dbg !1812
  br label %if.end223, !dbg !1812

if.end223:                                        ; preds = %cond.end220, %cond.end213
  br label %do.cond224, !dbg !1815

do.cond224:                                       ; preds = %if.end223
  br label %do.end225, !dbg !1815

do.end225:                                        ; preds = %do.cond224
  br label %do.body226, !dbg !1816

do.body226:                                       ; preds = %do.end225
  call void @llvm.lifetime.start.p0(i64 8, ptr %rr) #6, !dbg !1817
  tail call void @llvm.dbg.declare(metadata ptr %rr, metadata !1753, metadata !DIExpression()), !dbg !1818
  %140 = load ptr, ptr %req_conf, align 8, !dbg !1819, !tbaa !1296
  %location227 = getelementptr inbounds %struct.scgi_request_config, ptr %140, i32 0, i32 0, !dbg !1820
  %141 = load ptr, ptr %location227, align 8, !dbg !1820, !tbaa !1782
  %142 = load ptr, ptr %r.addr, align 8, !dbg !1821, !tbaa !1296
  %143 = load ptr, ptr %r.addr, align 8, !dbg !1822, !tbaa !1296
  %output_filters = getelementptr inbounds %struct.request_rec, ptr %143, i32 0, i32 59, !dbg !1823
  %144 = load ptr, ptr %output_filters, align 8, !dbg !1823, !tbaa !1824
  %call = call ptr @ap_sub_req_lookup_file(ptr noundef %141, ptr noundef %142, ptr noundef %144), !dbg !1825
  store ptr %call, ptr %rr, align 8, !dbg !1826, !tbaa !1296
  %145 = load ptr, ptr %rr, align 8, !dbg !1827, !tbaa !1296
  %status228 = getelementptr inbounds %struct.request_rec, ptr %145, i32 0, i32 15, !dbg !1829
  %146 = load i32, ptr %status228, align 8, !dbg !1829, !tbaa !1830
  %cmp229 = icmp eq i32 %146, 200, !dbg !1831
  br i1 %cmp229, label %land.lhs.true231, label %if.else, !dbg !1832

land.lhs.true231:                                 ; preds = %do.body226
  %147 = load ptr, ptr %rr, align 8, !dbg !1833, !tbaa !1296
  %finfo = getelementptr inbounds %struct.request_rec, ptr %147, i32 0, i32 67, !dbg !1834
  %filetype = getelementptr inbounds %struct.apr_finfo_t, ptr %finfo, i32 0, i32 3, !dbg !1835
  %148 = load i32, ptr %filetype, align 8, !dbg !1835, !tbaa !1836
  %cmp232 = icmp ne i32 %148, 0, !dbg !1837
  br i1 %cmp232, label %if.then234, label %if.else, !dbg !1838

if.then234:                                       ; preds = %land.lhs.true231
  %149 = load ptr, ptr %rr, align 8, !dbg !1839, !tbaa !1296
  %call235 = call i32 @ap_run_sub_req(ptr noundef %149), !dbg !1841
  br label %if.end247, !dbg !1842

if.else:                                          ; preds = %land.lhs.true231, %do.body226
  br label %do.body236, !dbg !1843

do.body236:                                       ; preds = %if.else
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true237, label %cond.false238, !dbg !1845

cond.true237:                                     ; preds = %do.body236
  %150 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !1845, !tbaa !1515
  br label %cond.end239, !dbg !1845

cond.false238:                                    ; preds = %do.body236
  br label %cond.end239, !dbg !1845

cond.end239:                                      ; preds = %cond.false238, %cond.true237
  %cond240 = phi i32 [ %150, %cond.true237 ], [ -1, %cond.false238 ], !dbg !1845
  %151 = load ptr, ptr %r.addr, align 8, !dbg !1845, !tbaa !1296
  %152 = load ptr, ptr %req_conf, align 8, !dbg !1845, !tbaa !1296
  %location241 = getelementptr inbounds %struct.scgi_request_config, ptr %152, i32 0, i32 0, !dbg !1845
  %153 = load ptr, ptr %location241, align 8, !dbg !1845, !tbaa !1782
  %154 = load ptr, ptr %rr, align 8, !dbg !1845, !tbaa !1296
  %status242 = getelementptr inbounds %struct.request_rec, ptr %154, i32 0, i32 15, !dbg !1845
  %155 = load i32, ptr %status242, align 8, !dbg !1845, !tbaa !1830
  %156 = load ptr, ptr %rr, align 8, !dbg !1845, !tbaa !1296
  %finfo243 = getelementptr inbounds %struct.request_rec, ptr %156, i32 0, i32 67, !dbg !1845
  %filetype244 = getelementptr inbounds %struct.apr_finfo_t, ptr %finfo243, i32 0, i32 3, !dbg !1845
  %157 = load i32, ptr %filetype244, align 8, !dbg !1845, !tbaa !1836
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 504, i32 noundef %cond240, i32 noundef 3, i32 noundef 0, ptr noundef %151, ptr noundef @.str.37, ptr noundef %153, i32 noundef %155, i32 noundef %157), !dbg !1845
  br label %do.cond245, !dbg !1848

do.cond245:                                       ; preds = %cond.end239
  br label %do.end246, !dbg !1848

do.end246:                                        ; preds = %do.cond245
  %158 = load ptr, ptr %status.addr, align 8, !dbg !1849, !tbaa !1296
  store i32 500, ptr %158, align 4, !dbg !1850, !tbaa !1515
  %159 = load ptr, ptr %status.addr, align 8, !dbg !1851, !tbaa !1296
  %160 = load i32, ptr %159, align 4, !dbg !1852, !tbaa !1515
  store i32 %160, ptr %retval, align 4, !dbg !1853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1853

if.end247:                                        ; preds = %if.then234
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1854
  br label %cleanup, !dbg !1854

cleanup:                                          ; preds = %if.end247, %do.end246
  call void @llvm.lifetime.end.p0(i64 8, ptr %rr) #6, !dbg !1854
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup251 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond248, !dbg !1855

do.cond248:                                       ; preds = %cleanup.cont
  br label %do.end249, !dbg !1855

do.end249:                                        ; preds = %do.cond248
  store i32 0, ptr %retval, align 4, !dbg !1856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup251, !dbg !1856

sw.epilog:                                        ; preds = %if.then
  br label %if.end250, !dbg !1857

if.end250:                                        ; preds = %sw.epilog, %land.lhs.true, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup251, !dbg !1858

cleanup251:                                       ; preds = %if.end250, %do.end249, %cleanup, %if.end105
  call void @llvm.lifetime.end.p0(i64 8, ptr %req_conf) #6, !dbg !1859
  %161 = load i32, ptr %retval, align 4, !dbg !1859
  ret i32 %161, !dbg !1859
}

declare !dbg !1860 void @apr_optional_hook_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1864 i32 @ap_cstr_casecmpn(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1867 void @ap_log_rerror_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !1872 i32 @ap_proxy_acquire_connection(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1876 i32 @ap_proxy_determine_connection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #2

declare !dbg !1880 i32 @ap_proxy_connect_backend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1883 i32 @ap_setup_client_block(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @send_headers(ptr noundef %r, ptr noundef %conn) #0 !dbg !1887 {
entry:
  %r.addr = alloca ptr, align 8
  %conn.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %bodylen = alloca ptr, align 8
  %ns_len = alloca ptr, align 8
  %env_table = alloca ptr, align 8
  %env = alloca ptr, align 8
  %j = alloca i32, align 4
  %len = alloca i64, align 8
  %bodylen_size = alloca i64, align 8
  %headerlen = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1891, metadata !DIExpression()), !dbg !1907
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !1892, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !1909
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1893, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #6, !dbg !1909
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !1894, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 8, ptr %bodylen) #6, !dbg !1909
  tail call void @llvm.dbg.declare(metadata ptr %bodylen, metadata !1895, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_len) #6, !dbg !1913
  tail call void @llvm.dbg.declare(metadata ptr %ns_len, metadata !1896, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %env_table) #6, !dbg !1915
  tail call void @llvm.dbg.declare(metadata ptr %env_table, metadata !1897, metadata !DIExpression()), !dbg !1916
  call void @llvm.lifetime.start.p0(i64 8, ptr %env) #6, !dbg !1917
  tail call void @llvm.dbg.declare(metadata ptr %env, metadata !1900, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !1919
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1903, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1904, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr %bodylen_size) #6, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %bodylen_size, metadata !1905, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %headerlen) #6, !dbg !1924
  tail call void @llvm.dbg.declare(metadata ptr %headerlen, metadata !1906, metadata !DIExpression()), !dbg !1925
  store i64 22, ptr %headerlen, align 8, !dbg !1925, !tbaa !1926
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1927, !tbaa !1296
  call void @ap_add_common_vars(ptr noundef %0), !dbg !1928
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1929, !tbaa !1296
  call void @ap_add_cgi_vars(ptr noundef %1), !dbg !1930
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1931, !tbaa !1296
  %subprocess_env = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 37, !dbg !1932
  %3 = load ptr, ptr %subprocess_env, align 8, !dbg !1932, !tbaa !1726
  %call = call ptr @apr_table_elts(ptr noundef %3), !dbg !1933
  store ptr %call, ptr %env_table, align 8, !dbg !1934, !tbaa !1296
  %4 = load ptr, ptr %env_table, align 8, !dbg !1935, !tbaa !1296
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %4, i32 0, i32 4, !dbg !1936
  %5 = load ptr, ptr %elts, align 8, !dbg !1936, !tbaa !1937
  store ptr %5, ptr %env, align 8, !dbg !1939, !tbaa !1296
  store i32 0, ptr %j, align 4, !dbg !1940, !tbaa !1515
  br label %for.cond, !dbg !1942

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %j, align 4, !dbg !1943, !tbaa !1515
  %7 = load ptr, ptr %env_table, align 8, !dbg !1945, !tbaa !1296
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %7, i32 0, i32 2, !dbg !1946
  %8 = load i32, ptr %nelts, align 4, !dbg !1946, !tbaa !1947
  %cmp = icmp slt i32 %6, %8, !dbg !1948
  br i1 %cmp, label %for.body, label %for.end, !dbg !1949

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %env, align 8, !dbg !1950, !tbaa !1296
  %10 = load i32, ptr %j, align 4, !dbg !1953, !tbaa !1515
  %idxprom = sext i32 %10 to i64, !dbg !1950
  %arrayidx = getelementptr inbounds %struct.apr_table_entry_t, ptr %9, i64 %idxprom, !dbg !1950
  %key = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx, i32 0, i32 0, !dbg !1954
  %11 = load ptr, ptr %key, align 8, !dbg !1954, !tbaa !1955
  %call1 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.15) #7, !dbg !1957
  %tobool = icmp ne i32 %call1, 0, !dbg !1957
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1958

lor.lhs.false:                                    ; preds = %for.body
  %12 = load ptr, ptr %env, align 8, !dbg !1959, !tbaa !1296
  %13 = load i32, ptr %j, align 4, !dbg !1960, !tbaa !1515
  %idxprom2 = sext i32 %13 to i64, !dbg !1959
  %arrayidx3 = getelementptr inbounds %struct.apr_table_entry_t, ptr %12, i64 %idxprom2, !dbg !1959
  %key4 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx3, i32 0, i32 0, !dbg !1961
  %14 = load ptr, ptr %key4, align 8, !dbg !1961, !tbaa !1955
  %call5 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.16) #7, !dbg !1962
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1962
  br i1 %tobool6, label %lor.lhs.false7, label %if.then, !dbg !1963

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %15 = load ptr, ptr %env, align 8, !dbg !1964, !tbaa !1296
  %16 = load i32, ptr %j, align 4, !dbg !1965, !tbaa !1515
  %idxprom8 = sext i32 %16 to i64, !dbg !1964
  %arrayidx9 = getelementptr inbounds %struct.apr_table_entry_t, ptr %15, i64 %idxprom8, !dbg !1964
  %key10 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx9, i32 0, i32 0, !dbg !1966
  %17 = load ptr, ptr %key10, align 8, !dbg !1966, !tbaa !1955
  %call11 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.13) #7, !dbg !1967
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1967
  br i1 %tobool12, label %if.end, label %if.then, !dbg !1968

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !1969

if.end:                                           ; preds = %lor.lhs.false7
  %18 = load ptr, ptr %env, align 8, !dbg !1971, !tbaa !1296
  %19 = load i32, ptr %j, align 4, !dbg !1972, !tbaa !1515
  %idxprom13 = sext i32 %19 to i64, !dbg !1971
  %arrayidx14 = getelementptr inbounds %struct.apr_table_entry_t, ptr %18, i64 %idxprom13, !dbg !1971
  %key15 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx14, i32 0, i32 0, !dbg !1973
  %20 = load ptr, ptr %key15, align 8, !dbg !1973, !tbaa !1955
  %call16 = call i64 @strlen(ptr noundef %20) #7, !dbg !1974
  %21 = load ptr, ptr %env, align 8, !dbg !1975, !tbaa !1296
  %22 = load i32, ptr %j, align 4, !dbg !1976, !tbaa !1515
  %idxprom17 = sext i32 %22 to i64, !dbg !1975
  %arrayidx18 = getelementptr inbounds %struct.apr_table_entry_t, ptr %21, i64 %idxprom17, !dbg !1975
  %val = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx18, i32 0, i32 1, !dbg !1977
  %23 = load ptr, ptr %val, align 8, !dbg !1977, !tbaa !1978
  %call19 = call i64 @strlen(ptr noundef %23) #7, !dbg !1979
  %add = add i64 %call16, %call19, !dbg !1980
  %add20 = add i64 %add, 2, !dbg !1981
  %24 = load i64, ptr %headerlen, align 8, !dbg !1982, !tbaa !1926
  %add21 = add i64 %24, %add20, !dbg !1982
  store i64 %add21, ptr %headerlen, align 8, !dbg !1982, !tbaa !1926
  br label %for.inc, !dbg !1983

for.inc:                                          ; preds = %if.end, %if.then
  %25 = load i32, ptr %j, align 4, !dbg !1984, !tbaa !1515
  %inc = add nsw i32 %25, 1, !dbg !1984
  store i32 %inc, ptr %j, align 4, !dbg !1984, !tbaa !1515
  br label %for.cond, !dbg !1985, !llvm.loop !1986

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %r.addr, align 8, !dbg !1989, !tbaa !1296
  %pool = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 0, !dbg !1990
  %27 = load ptr, ptr %pool, align 8, !dbg !1990, !tbaa !1496
  %28 = load ptr, ptr %r.addr, align 8, !dbg !1991, !tbaa !1296
  %remaining = getelementptr inbounds %struct.request_rec, ptr %28, i32 0, i32 32, !dbg !1992
  %29 = load i64, ptr %remaining, align 8, !dbg !1992, !tbaa !1993
  %call22 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %27, ptr noundef @.str.17, i64 noundef %29), !dbg !1994
  store ptr %call22, ptr %bodylen, align 8, !dbg !1995, !tbaa !1296
  %30 = load ptr, ptr %bodylen, align 8, !dbg !1996, !tbaa !1296
  %call23 = call i64 @strlen(ptr noundef %30) #7, !dbg !1997
  %add24 = add i64 %call23, 1, !dbg !1998
  store i64 %add24, ptr %bodylen_size, align 8, !dbg !1999, !tbaa !1926
  %31 = load i64, ptr %bodylen_size, align 8, !dbg !2000, !tbaa !1926
  %32 = load i64, ptr %headerlen, align 8, !dbg !2001, !tbaa !1926
  %add25 = add i64 %32, %31, !dbg !2001
  store i64 %add25, ptr %headerlen, align 8, !dbg !2001, !tbaa !1926
  %33 = load ptr, ptr %r.addr, align 8, !dbg !2002, !tbaa !1296
  %pool26 = getelementptr inbounds %struct.request_rec, ptr %33, i32 0, i32 0, !dbg !2003
  %34 = load ptr, ptr %pool26, align 8, !dbg !2003, !tbaa !1496
  %35 = load i64, ptr %headerlen, align 8, !dbg !2004, !tbaa !1926
  %call27 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %34, ptr noundef @.str.18, i64 noundef %35), !dbg !2005
  store ptr %call27, ptr %ns_len, align 8, !dbg !2006, !tbaa !1296
  %36 = load ptr, ptr %ns_len, align 8, !dbg !2007, !tbaa !1296
  %call28 = call i64 @strlen(ptr noundef %36) #7, !dbg !2008
  store i64 %call28, ptr %len, align 8, !dbg !2009, !tbaa !1926
  %37 = load i64, ptr %len, align 8, !dbg !2010, !tbaa !1926
  %add29 = add i64 %37, 1, !dbg !2011
  %38 = load i64, ptr %headerlen, align 8, !dbg !2012, !tbaa !1926
  %add30 = add i64 %38, %add29, !dbg !2012
  store i64 %add30, ptr %headerlen, align 8, !dbg !2012, !tbaa !1926
  %39 = load ptr, ptr %r.addr, align 8, !dbg !2013, !tbaa !1296
  %pool31 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 0, !dbg !2014
  %40 = load ptr, ptr %pool31, align 8, !dbg !2014, !tbaa !1496
  %41 = load i64, ptr %headerlen, align 8, !dbg !2015, !tbaa !1926
  %call32 = call ptr @apr_palloc(ptr noundef %40, i64 noundef %41), !dbg !2016
  store ptr %call32, ptr %buf, align 8, !dbg !2017, !tbaa !1296
  store ptr %call32, ptr %cp, align 8, !dbg !2018, !tbaa !1296
  %42 = load ptr, ptr %cp, align 8, !dbg !2019, !tbaa !1296
  %43 = load ptr, ptr %ns_len, align 8, !dbg !2020, !tbaa !1296
  %44 = load i64, ptr %len, align 8, !dbg !2021, !tbaa !1926
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 %44, i1 false), !dbg !2022
  %45 = load i64, ptr %len, align 8, !dbg !2023, !tbaa !1926
  %46 = load ptr, ptr %cp, align 8, !dbg !2024, !tbaa !1296
  %add.ptr = getelementptr inbounds i8, ptr %46, i64 %45, !dbg !2024
  store ptr %add.ptr, ptr %cp, align 8, !dbg !2024, !tbaa !1296
  %47 = load ptr, ptr %cp, align 8, !dbg !2025, !tbaa !1296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 @.str.16, i64 15, i1 false), !dbg !2026
  %48 = load ptr, ptr %cp, align 8, !dbg !2027, !tbaa !1296
  %add.ptr33 = getelementptr inbounds i8, ptr %48, i64 15, !dbg !2027
  store ptr %add.ptr33, ptr %cp, align 8, !dbg !2027, !tbaa !1296
  %49 = load ptr, ptr %cp, align 8, !dbg !2028, !tbaa !1296
  %50 = load ptr, ptr %bodylen, align 8, !dbg !2029, !tbaa !1296
  %51 = load i64, ptr %bodylen_size, align 8, !dbg !2030, !tbaa !1926
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %50, i64 %51, i1 false), !dbg !2031
  %52 = load i64, ptr %bodylen_size, align 8, !dbg !2032, !tbaa !1926
  %53 = load ptr, ptr %cp, align 8, !dbg !2033, !tbaa !1296
  %add.ptr34 = getelementptr inbounds i8, ptr %53, i64 %52, !dbg !2033
  store ptr %add.ptr34, ptr %cp, align 8, !dbg !2033, !tbaa !1296
  %54 = load ptr, ptr %cp, align 8, !dbg !2034, !tbaa !1296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 @.str.13, i64 5, i1 false), !dbg !2035
  %55 = load ptr, ptr %cp, align 8, !dbg !2036, !tbaa !1296
  %add.ptr35 = getelementptr inbounds i8, ptr %55, i64 5, !dbg !2036
  store ptr %add.ptr35, ptr %cp, align 8, !dbg !2036, !tbaa !1296
  %56 = load ptr, ptr %cp, align 8, !dbg !2037, !tbaa !1296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 @.str.19, i64 2, i1 false), !dbg !2038
  %57 = load ptr, ptr %cp, align 8, !dbg !2039, !tbaa !1296
  %add.ptr36 = getelementptr inbounds i8, ptr %57, i64 2, !dbg !2039
  store ptr %add.ptr36, ptr %cp, align 8, !dbg !2039, !tbaa !1296
  store i32 0, ptr %j, align 4, !dbg !2040, !tbaa !1515
  br label %for.cond37, !dbg !2042

for.cond37:                                       ; preds = %for.inc78, %for.end
  %58 = load i32, ptr %j, align 4, !dbg !2043, !tbaa !1515
  %59 = load ptr, ptr %env_table, align 8, !dbg !2045, !tbaa !1296
  %nelts38 = getelementptr inbounds %struct.apr_array_header_t, ptr %59, i32 0, i32 2, !dbg !2046
  %60 = load i32, ptr %nelts38, align 4, !dbg !2046, !tbaa !1947
  %cmp39 = icmp slt i32 %58, %60, !dbg !2047
  br i1 %cmp39, label %for.body40, label %for.end80, !dbg !2048

for.body40:                                       ; preds = %for.cond37
  %61 = load ptr, ptr %env, align 8, !dbg !2049, !tbaa !1296
  %62 = load i32, ptr %j, align 4, !dbg !2052, !tbaa !1515
  %idxprom41 = sext i32 %62 to i64, !dbg !2049
  %arrayidx42 = getelementptr inbounds %struct.apr_table_entry_t, ptr %61, i64 %idxprom41, !dbg !2049
  %key43 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx42, i32 0, i32 0, !dbg !2053
  %63 = load ptr, ptr %key43, align 8, !dbg !2053, !tbaa !1955
  %call44 = call i32 @strcmp(ptr noundef %63, ptr noundef @.str.15) #7, !dbg !2054
  %tobool45 = icmp ne i32 %call44, 0, !dbg !2054
  br i1 %tobool45, label %lor.lhs.false46, label %if.then58, !dbg !2055

lor.lhs.false46:                                  ; preds = %for.body40
  %64 = load ptr, ptr %env, align 8, !dbg !2056, !tbaa !1296
  %65 = load i32, ptr %j, align 4, !dbg !2057, !tbaa !1515
  %idxprom47 = sext i32 %65 to i64, !dbg !2056
  %arrayidx48 = getelementptr inbounds %struct.apr_table_entry_t, ptr %64, i64 %idxprom47, !dbg !2056
  %key49 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx48, i32 0, i32 0, !dbg !2058
  %66 = load ptr, ptr %key49, align 8, !dbg !2058, !tbaa !1955
  %call50 = call i32 @strcmp(ptr noundef %66, ptr noundef @.str.16) #7, !dbg !2059
  %tobool51 = icmp ne i32 %call50, 0, !dbg !2059
  br i1 %tobool51, label %lor.lhs.false52, label %if.then58, !dbg !2060

lor.lhs.false52:                                  ; preds = %lor.lhs.false46
  %67 = load ptr, ptr %env, align 8, !dbg !2061, !tbaa !1296
  %68 = load i32, ptr %j, align 4, !dbg !2062, !tbaa !1515
  %idxprom53 = sext i32 %68 to i64, !dbg !2061
  %arrayidx54 = getelementptr inbounds %struct.apr_table_entry_t, ptr %67, i64 %idxprom53, !dbg !2061
  %key55 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx54, i32 0, i32 0, !dbg !2063
  %69 = load ptr, ptr %key55, align 8, !dbg !2063, !tbaa !1955
  %call56 = call i32 @strcmp(ptr noundef %69, ptr noundef @.str.13) #7, !dbg !2064
  %tobool57 = icmp ne i32 %call56, 0, !dbg !2064
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2065

if.then58:                                        ; preds = %lor.lhs.false52, %lor.lhs.false46, %for.body40
  br label %for.inc78, !dbg !2066

if.end59:                                         ; preds = %lor.lhs.false52
  %70 = load ptr, ptr %env, align 8, !dbg !2068, !tbaa !1296
  %71 = load i32, ptr %j, align 4, !dbg !2069, !tbaa !1515
  %idxprom60 = sext i32 %71 to i64, !dbg !2068
  %arrayidx61 = getelementptr inbounds %struct.apr_table_entry_t, ptr %70, i64 %idxprom60, !dbg !2068
  %key62 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx61, i32 0, i32 0, !dbg !2070
  %72 = load ptr, ptr %key62, align 8, !dbg !2070, !tbaa !1955
  %call63 = call i64 @strlen(ptr noundef %72) #7, !dbg !2071
  %add64 = add i64 %call63, 1, !dbg !2072
  store i64 %add64, ptr %len, align 8, !dbg !2073, !tbaa !1926
  %73 = load ptr, ptr %cp, align 8, !dbg !2074, !tbaa !1296
  %74 = load ptr, ptr %env, align 8, !dbg !2075, !tbaa !1296
  %75 = load i32, ptr %j, align 4, !dbg !2076, !tbaa !1515
  %idxprom65 = sext i32 %75 to i64, !dbg !2075
  %arrayidx66 = getelementptr inbounds %struct.apr_table_entry_t, ptr %74, i64 %idxprom65, !dbg !2075
  %key67 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx66, i32 0, i32 0, !dbg !2077
  %76 = load ptr, ptr %key67, align 8, !dbg !2077, !tbaa !1955
  %77 = load i64, ptr %len, align 8, !dbg !2078, !tbaa !1926
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %76, i64 %77, i1 false), !dbg !2079
  %78 = load i64, ptr %len, align 8, !dbg !2080, !tbaa !1926
  %79 = load ptr, ptr %cp, align 8, !dbg !2081, !tbaa !1296
  %add.ptr68 = getelementptr inbounds i8, ptr %79, i64 %78, !dbg !2081
  store ptr %add.ptr68, ptr %cp, align 8, !dbg !2081, !tbaa !1296
  %80 = load ptr, ptr %env, align 8, !dbg !2082, !tbaa !1296
  %81 = load i32, ptr %j, align 4, !dbg !2083, !tbaa !1515
  %idxprom69 = sext i32 %81 to i64, !dbg !2082
  %arrayidx70 = getelementptr inbounds %struct.apr_table_entry_t, ptr %80, i64 %idxprom69, !dbg !2082
  %val71 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx70, i32 0, i32 1, !dbg !2084
  %82 = load ptr, ptr %val71, align 8, !dbg !2084, !tbaa !1978
  %call72 = call i64 @strlen(ptr noundef %82) #7, !dbg !2085
  %add73 = add i64 %call72, 1, !dbg !2086
  store i64 %add73, ptr %len, align 8, !dbg !2087, !tbaa !1926
  %83 = load ptr, ptr %cp, align 8, !dbg !2088, !tbaa !1296
  %84 = load ptr, ptr %env, align 8, !dbg !2089, !tbaa !1296
  %85 = load i32, ptr %j, align 4, !dbg !2090, !tbaa !1515
  %idxprom74 = sext i32 %85 to i64, !dbg !2089
  %arrayidx75 = getelementptr inbounds %struct.apr_table_entry_t, ptr %84, i64 %idxprom74, !dbg !2089
  %val76 = getelementptr inbounds %struct.apr_table_entry_t, ptr %arrayidx75, i32 0, i32 1, !dbg !2091
  %86 = load ptr, ptr %val76, align 8, !dbg !2091, !tbaa !1978
  %87 = load i64, ptr %len, align 8, !dbg !2092, !tbaa !1926
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %86, i64 %87, i1 false), !dbg !2093
  %88 = load i64, ptr %len, align 8, !dbg !2094, !tbaa !1926
  %89 = load ptr, ptr %cp, align 8, !dbg !2095, !tbaa !1296
  %add.ptr77 = getelementptr inbounds i8, ptr %89, i64 %88, !dbg !2095
  store ptr %add.ptr77, ptr %cp, align 8, !dbg !2095, !tbaa !1296
  br label %for.inc78, !dbg !2096

for.inc78:                                        ; preds = %if.end59, %if.then58
  %90 = load i32, ptr %j, align 4, !dbg !2097, !tbaa !1515
  %inc79 = add nsw i32 %90, 1, !dbg !2097
  store i32 %inc79, ptr %j, align 4, !dbg !2097, !tbaa !1515
  br label %for.cond37, !dbg !2098, !llvm.loop !2099

for.end80:                                        ; preds = %for.cond37
  %91 = load ptr, ptr %cp, align 8, !dbg !2101, !tbaa !1296
  %incdec.ptr = getelementptr inbounds i8, ptr %91, i32 1, !dbg !2101
  store ptr %incdec.ptr, ptr %cp, align 8, !dbg !2101, !tbaa !1296
  store i8 44, ptr %91, align 1, !dbg !2102, !tbaa !1523
  %92 = load ptr, ptr %conn.addr, align 8, !dbg !2103, !tbaa !1296
  %93 = load ptr, ptr %buf, align 8, !dbg !2104, !tbaa !1296
  %94 = load i64, ptr %headerlen, align 8, !dbg !2105, !tbaa !1926
  %95 = load ptr, ptr %r.addr, align 8, !dbg !2106, !tbaa !1296
  %call81 = call i32 @sendall(ptr noundef %92, ptr noundef %93, i64 noundef %94, ptr noundef %95), !dbg !2107
  call void @llvm.lifetime.end.p0(i64 8, ptr %headerlen) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %bodylen_size) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %env) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %env_table) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_len) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %bodylen) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #6, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !2108
  ret i32 %call81, !dbg !2109
}

; Function Attrs: nounwind uwtable
define internal i32 @send_request_body(ptr noundef %r, ptr noundef %conn) #0 !dbg !2110 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %conn.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %status = alloca i32, align 4
  %readlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2112, metadata !DIExpression()), !dbg !2119
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !2113, metadata !DIExpression()), !dbg !2120
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2121, !tbaa !1296
  %call = call i32 @ap_should_client_block(ptr noundef %0), !dbg !2122
  %tobool = icmp ne i32 %call, 0, !dbg !2122
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2123

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !2124
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2114, metadata !DIExpression()), !dbg !2125
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2126, !tbaa !1296
  %pool = getelementptr inbounds %struct.request_rec, ptr %1, i32 0, i32 0, !dbg !2127
  %2 = load ptr, ptr %pool, align 8, !dbg !2127, !tbaa !1496
  %call1 = call ptr @apr_palloc(ptr noundef %2, i64 noundef 8192), !dbg !2128
  store ptr %call1, ptr %buf, align 8, !dbg !2125, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2129
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2117, metadata !DIExpression()), !dbg !2130
  call void @llvm.lifetime.start.p0(i64 8, ptr %readlen) #6, !dbg !2131
  tail call void @llvm.dbg.declare(metadata ptr %readlen, metadata !2118, metadata !DIExpression()), !dbg !2132
  %3 = load ptr, ptr %r.addr, align 8, !dbg !2133, !tbaa !1296
  %4 = load ptr, ptr %buf, align 8, !dbg !2134, !tbaa !1296
  %call2 = call i64 @ap_get_client_block(ptr noundef %3, ptr noundef %4, i64 noundef 8192), !dbg !2135
  store i64 %call2, ptr %readlen, align 8, !dbg !2136, !tbaa !1926
  br label %while.cond, !dbg !2137

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i64, ptr %readlen, align 8, !dbg !2138, !tbaa !1926
  %cmp = icmp sgt i64 %5, 0, !dbg !2139
  br i1 %cmp, label %while.body, label %while.end, !dbg !2137

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %conn.addr, align 8, !dbg !2140, !tbaa !1296
  %7 = load ptr, ptr %buf, align 8, !dbg !2142, !tbaa !1296
  %8 = load i64, ptr %readlen, align 8, !dbg !2143, !tbaa !1926
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2144, !tbaa !1296
  %call3 = call i32 @sendall(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9), !dbg !2145
  store i32 %call3, ptr %status, align 4, !dbg !2146, !tbaa !1515
  %10 = load i32, ptr %status, align 4, !dbg !2147, !tbaa !1515
  %cmp4 = icmp ne i32 %10, 0, !dbg !2149
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2150

if.then5:                                         ; preds = %while.body
  store i32 503, ptr %retval, align 4, !dbg !2151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2151

if.end:                                           ; preds = %while.body
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2153, !tbaa !1296
  %12 = load ptr, ptr %buf, align 8, !dbg !2154, !tbaa !1296
  %call6 = call i64 @ap_get_client_block(ptr noundef %11, ptr noundef %12, i64 noundef 8192), !dbg !2155
  store i64 %call6, ptr %readlen, align 8, !dbg !2156, !tbaa !1926
  br label %while.cond, !dbg !2137, !llvm.loop !2157

while.end:                                        ; preds = %while.cond
  %13 = load i64, ptr %readlen, align 8, !dbg !2159, !tbaa !1926
  %cmp7 = icmp eq i64 %13, -1, !dbg !2161
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2162

if.then8:                                         ; preds = %while.end
  br label %do.body, !dbg !2163

do.body:                                          ; preds = %if.then8
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2165

cond.true:                                        ; preds = %do.body
  %14 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2165, !tbaa !1515
  br label %cond.end, !dbg !2165

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2165

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ -1, %cond.false ], !dbg !2165
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2165, !tbaa !1296
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 348, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %15, ptr noundef @.str.21), !dbg !2165
  br label %do.cond, !dbg !2168

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !2168

do.end:                                           ; preds = %do.cond
  store i32 500, ptr %retval, align 4, !dbg !2169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2169

if.end9:                                          ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2170
  br label %cleanup, !dbg !2170

cleanup:                                          ; preds = %if.end9, %do.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %readlen) #6, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !2170
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !2171

if.end12:                                         ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4, !dbg !2172
  br label %return, !dbg !2172

return:                                           ; preds = %if.end12, %cleanup
  %16 = load i32, ptr %retval, align 4, !dbg !2173
  ret i32 %16, !dbg !2173

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pass_response(ptr noundef %r, ptr noundef %conn) #0 !dbg !2174 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %conn.addr = alloca ptr, align 8
  %bb = alloca ptr, align 8
  %b = alloca ptr, align 8
  %location = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %sock_data = alloca ptr, align 8
  %status = alloca i32, align 4
  %ap__b = alloca ptr, align 8
  %ap__b24 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca i16, align 2
  %req_conf = alloca ptr, align 8
  %err205 = alloca i16, align 2
  %location_header = alloca ptr, align 8
  %req_conf226 = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2176, metadata !DIExpression()), !dbg !2209
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !2177, metadata !DIExpression()), !dbg !2210
  call void @llvm.lifetime.start.p0(i64 8, ptr %bb) #6, !dbg !2211
  tail call void @llvm.dbg.declare(metadata ptr %bb, metadata !2178, metadata !DIExpression()), !dbg !2212
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6, !dbg !2213
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2179, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 8, ptr %location) #6, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %location, metadata !2180, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2217
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2181, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 8, ptr %sock_data) #6, !dbg !2219
  tail call void @llvm.dbg.declare(metadata ptr %sock_data, metadata !2182, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2221
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2190, metadata !DIExpression()), !dbg !2222
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2223, !tbaa !1296
  %pool = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 0, !dbg !2224
  %1 = load ptr, ptr %pool, align 8, !dbg !2224, !tbaa !1496
  %call = call ptr @apr_palloc(ptr noundef %1, i64 noundef 16), !dbg !2225
  store ptr %call, ptr %sock_data, align 8, !dbg !2226, !tbaa !1296
  %2 = load ptr, ptr %conn.addr, align 8, !dbg !2227, !tbaa !1296
  %sock = getelementptr inbounds %struct.proxy_conn_rec, ptr %2, i32 0, i32 7, !dbg !2228
  %3 = load ptr, ptr %sock, align 8, !dbg !2228, !tbaa !2229
  %4 = load ptr, ptr %sock_data, align 8, !dbg !2230, !tbaa !1296
  %sock1 = getelementptr inbounds %struct.socket_ex_data, ptr %4, i32 0, i32 0, !dbg !2231
  store ptr %3, ptr %sock1, align 8, !dbg !2232, !tbaa !1309
  %5 = load ptr, ptr %conn.addr, align 8, !dbg !2233, !tbaa !1296
  %worker = getelementptr inbounds %struct.proxy_conn_rec, ptr %5, i32 0, i32 2, !dbg !2234
  %6 = load ptr, ptr %worker, align 8, !dbg !2234, !tbaa !2235
  %s = getelementptr inbounds %struct.proxy_worker, ptr %6, i32 0, i32 3, !dbg !2236
  %7 = load ptr, ptr %s, align 8, !dbg !2236, !tbaa !2237
  %read = getelementptr inbounds %struct.proxy_worker_shared, ptr %7, i32 0, i32 33, !dbg !2240
  %8 = load ptr, ptr %sock_data, align 8, !dbg !2241, !tbaa !1296
  %counter = getelementptr inbounds %struct.socket_ex_data, ptr %8, i32 0, i32 1, !dbg !2242
  store ptr %read, ptr %counter, align 8, !dbg !2243, !tbaa !1314
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2244, !tbaa !1296
  %pool2 = getelementptr inbounds %struct.request_rec, ptr %9, i32 0, i32 0, !dbg !2245
  %10 = load ptr, ptr %pool2, align 8, !dbg !2245, !tbaa !1496
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2246, !tbaa !1296
  %connection = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 1, !dbg !2247
  %12 = load ptr, ptr %connection, align 8, !dbg !2247, !tbaa !1517
  %bucket_alloc = getelementptr inbounds %struct.conn_rec, ptr %12, i32 0, i32 16, !dbg !2248
  %13 = load ptr, ptr %bucket_alloc, align 8, !dbg !2248, !tbaa !2249
  %call3 = call ptr @apr_brigade_create(ptr noundef %10, ptr noundef %13), !dbg !2250
  store ptr %call3, ptr %bb, align 8, !dbg !2251, !tbaa !1296
  %14 = load ptr, ptr %sock_data, align 8, !dbg !2252, !tbaa !1296
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2253, !tbaa !1296
  %connection4 = getelementptr inbounds %struct.request_rec, ptr %15, i32 0, i32 1, !dbg !2254
  %16 = load ptr, ptr %connection4, align 8, !dbg !2254, !tbaa !1517
  %bucket_alloc5 = getelementptr inbounds %struct.conn_rec, ptr %16, i32 0, i32 16, !dbg !2255
  %17 = load ptr, ptr %bucket_alloc5, align 8, !dbg !2255, !tbaa !2249
  %call6 = call ptr @bucket_socket_ex_create(ptr noundef %14, ptr noundef %17), !dbg !2256
  store ptr %call6, ptr %b, align 8, !dbg !2257, !tbaa !1296
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap__b) #6, !dbg !2259
  tail call void @llvm.dbg.declare(metadata ptr %ap__b, metadata !2191, metadata !DIExpression()), !dbg !2259
  %18 = load ptr, ptr %b, align 8, !dbg !2259, !tbaa !1296
  store ptr %18, ptr %ap__b, align 8, !dbg !2259, !tbaa !1296
  br label %do.body7, !dbg !2259

do.body7:                                         ; preds = %do.body
  %19 = load ptr, ptr %bb, align 8, !dbg !2260, !tbaa !1296
  %list = getelementptr inbounds %struct.apr_bucket_brigade, ptr %19, i32 0, i32 1, !dbg !2260
  %next = getelementptr inbounds %struct.apr_bucket_list, ptr %list, i32 0, i32 0, !dbg !2260
  %add.ptr = getelementptr inbounds i8, ptr %next, i64 0, !dbg !2260
  %20 = load ptr, ptr %ap__b, align 8, !dbg !2260, !tbaa !1296
  %link = getelementptr inbounds %struct.apr_bucket, ptr %20, i32 0, i32 0, !dbg !2260
  %next8 = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !2260
  store volatile ptr %add.ptr, ptr %next8, align 8, !dbg !2260, !tbaa !2262
  %21 = load ptr, ptr %bb, align 8, !dbg !2260, !tbaa !1296
  %list9 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %21, i32 0, i32 1, !dbg !2260
  %prev = getelementptr inbounds %struct.apr_bucket_list, ptr %list9, i32 0, i32 1, !dbg !2260
  %22 = load volatile ptr, ptr %prev, align 8, !dbg !2260, !tbaa !2264
  %23 = load ptr, ptr %ap__b, align 8, !dbg !2260, !tbaa !1296
  %link10 = getelementptr inbounds %struct.apr_bucket, ptr %23, i32 0, i32 0, !dbg !2260
  %prev11 = getelementptr inbounds %struct.anon, ptr %link10, i32 0, i32 1, !dbg !2260
  store volatile ptr %22, ptr %prev11, align 8, !dbg !2260, !tbaa !2267
  %24 = load ptr, ptr %ap__b, align 8, !dbg !2260, !tbaa !1296
  %25 = load ptr, ptr %bb, align 8, !dbg !2260, !tbaa !1296
  %list12 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %25, i32 0, i32 1, !dbg !2260
  %prev13 = getelementptr inbounds %struct.apr_bucket_list, ptr %list12, i32 0, i32 1, !dbg !2260
  %26 = load volatile ptr, ptr %prev13, align 8, !dbg !2260, !tbaa !2264
  %link14 = getelementptr inbounds %struct.apr_bucket, ptr %26, i32 0, i32 0, !dbg !2260
  %next15 = getelementptr inbounds %struct.anon, ptr %link14, i32 0, i32 0, !dbg !2260
  store volatile ptr %24, ptr %next15, align 8, !dbg !2260, !tbaa !2262
  %27 = load ptr, ptr %ap__b, align 8, !dbg !2260, !tbaa !1296
  %28 = load ptr, ptr %bb, align 8, !dbg !2260, !tbaa !1296
  %list16 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %28, i32 0, i32 1, !dbg !2260
  %prev17 = getelementptr inbounds %struct.apr_bucket_list, ptr %list16, i32 0, i32 1, !dbg !2260
  store volatile ptr %27, ptr %prev17, align 8, !dbg !2260, !tbaa !2264
  br label %do.cond, !dbg !2260

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2260

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap__b) #6, !dbg !2258
  br label %do.cond18, !dbg !2259

do.cond18:                                        ; preds = %do.end
  br label %do.end19, !dbg !2259

do.end19:                                         ; preds = %do.cond18
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2268, !tbaa !1296
  %connection20 = getelementptr inbounds %struct.request_rec, ptr %29, i32 0, i32 1, !dbg !2269
  %30 = load ptr, ptr %connection20, align 8, !dbg !2269, !tbaa !1517
  %bucket_alloc21 = getelementptr inbounds %struct.conn_rec, ptr %30, i32 0, i32 16, !dbg !2270
  %31 = load ptr, ptr %bucket_alloc21, align 8, !dbg !2270, !tbaa !2249
  %call22 = call ptr @apr_bucket_eos_create(ptr noundef %31), !dbg !2271
  store ptr %call22, ptr %b, align 8, !dbg !2272, !tbaa !1296
  br label %do.body23, !dbg !2273

do.body23:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap__b24) #6, !dbg !2274
  tail call void @llvm.dbg.declare(metadata ptr %ap__b24, metadata !2193, metadata !DIExpression()), !dbg !2274
  %32 = load ptr, ptr %b, align 8, !dbg !2274, !tbaa !1296
  store ptr %32, ptr %ap__b24, align 8, !dbg !2274, !tbaa !1296
  br label %do.body25, !dbg !2274

do.body25:                                        ; preds = %do.body23
  %33 = load ptr, ptr %bb, align 8, !dbg !2275, !tbaa !1296
  %list26 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %33, i32 0, i32 1, !dbg !2275
  %next27 = getelementptr inbounds %struct.apr_bucket_list, ptr %list26, i32 0, i32 0, !dbg !2275
  %add.ptr28 = getelementptr inbounds i8, ptr %next27, i64 0, !dbg !2275
  %34 = load ptr, ptr %ap__b24, align 8, !dbg !2275, !tbaa !1296
  %link29 = getelementptr inbounds %struct.apr_bucket, ptr %34, i32 0, i32 0, !dbg !2275
  %next30 = getelementptr inbounds %struct.anon, ptr %link29, i32 0, i32 0, !dbg !2275
  store volatile ptr %add.ptr28, ptr %next30, align 8, !dbg !2275, !tbaa !2262
  %35 = load ptr, ptr %bb, align 8, !dbg !2275, !tbaa !1296
  %list31 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %35, i32 0, i32 1, !dbg !2275
  %prev32 = getelementptr inbounds %struct.apr_bucket_list, ptr %list31, i32 0, i32 1, !dbg !2275
  %36 = load volatile ptr, ptr %prev32, align 8, !dbg !2275, !tbaa !2264
  %37 = load ptr, ptr %ap__b24, align 8, !dbg !2275, !tbaa !1296
  %link33 = getelementptr inbounds %struct.apr_bucket, ptr %37, i32 0, i32 0, !dbg !2275
  %prev34 = getelementptr inbounds %struct.anon, ptr %link33, i32 0, i32 1, !dbg !2275
  store volatile ptr %36, ptr %prev34, align 8, !dbg !2275, !tbaa !2267
  %38 = load ptr, ptr %ap__b24, align 8, !dbg !2275, !tbaa !1296
  %39 = load ptr, ptr %bb, align 8, !dbg !2275, !tbaa !1296
  %list35 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %39, i32 0, i32 1, !dbg !2275
  %prev36 = getelementptr inbounds %struct.apr_bucket_list, ptr %list35, i32 0, i32 1, !dbg !2275
  %40 = load volatile ptr, ptr %prev36, align 8, !dbg !2275, !tbaa !2264
  %link37 = getelementptr inbounds %struct.apr_bucket, ptr %40, i32 0, i32 0, !dbg !2275
  %next38 = getelementptr inbounds %struct.anon, ptr %link37, i32 0, i32 0, !dbg !2275
  store volatile ptr %38, ptr %next38, align 8, !dbg !2275, !tbaa !2262
  %41 = load ptr, ptr %ap__b24, align 8, !dbg !2275, !tbaa !1296
  %42 = load ptr, ptr %bb, align 8, !dbg !2275, !tbaa !1296
  %list39 = getelementptr inbounds %struct.apr_bucket_brigade, ptr %42, i32 0, i32 1, !dbg !2275
  %prev40 = getelementptr inbounds %struct.apr_bucket_list, ptr %list39, i32 0, i32 1, !dbg !2275
  store volatile ptr %41, ptr %prev40, align 8, !dbg !2275, !tbaa !2264
  br label %do.cond41, !dbg !2275

do.cond41:                                        ; preds = %do.body25
  br label %do.end42, !dbg !2275

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap__b24) #6, !dbg !2273
  br label %do.cond43, !dbg !2274

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !2274

do.end44:                                         ; preds = %do.cond43
  %43 = load ptr, ptr %r.addr, align 8, !dbg !2277, !tbaa !1296
  %44 = load ptr, ptr %bb, align 8, !dbg !2278, !tbaa !1296
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2279

cond.true:                                        ; preds = %do.end44
  %45 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2279, !tbaa !1515
  br label %cond.end, !dbg !2279

cond.false:                                       ; preds = %do.end44
  br label %cond.end, !dbg !2279

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ -1, %cond.false ], !dbg !2279
  %call45 = call i32 @ap_scan_script_header_err_brigade_ex(ptr noundef %43, ptr noundef %44, ptr noundef null, i32 noundef %cond), !dbg !2280
  store i32 %call45, ptr %status, align 4, !dbg !2281, !tbaa !1515
  %46 = load i32, ptr %status, align 4, !dbg !2282, !tbaa !1515
  %cmp = icmp ne i32 %46, 0, !dbg !2284
  br i1 %cmp, label %if.then, label %if.end, !dbg !2285

if.then:                                          ; preds = %cond.end
  br label %do.body46, !dbg !2286

do.body46:                                        ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true47, label %cond.false48, !dbg !2288

cond.true47:                                      ; preds = %do.body46
  %47 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2288, !tbaa !1515
  br label %cond.end49, !dbg !2288

cond.false48:                                     ; preds = %do.body46
  br label %cond.end49, !dbg !2288

cond.end49:                                       ; preds = %cond.false48, %cond.true47
  %cond50 = phi i32 [ %47, %cond.true47 ], [ -1, %cond.false48 ], !dbg !2288
  %48 = load ptr, ptr %r.addr, align 8, !dbg !2288, !tbaa !1296
  %49 = load ptr, ptr %conn.addr, align 8, !dbg !2288, !tbaa !1296
  %hostname = getelementptr inbounds %struct.proxy_conn_rec, ptr %49, i32 0, i32 4, !dbg !2288
  %50 = load ptr, ptr %hostname, align 8, !dbg !2288, !tbaa !1572
  %51 = load ptr, ptr %conn.addr, align 8, !dbg !2288, !tbaa !1296
  %port = getelementptr inbounds %struct.proxy_conn_rec, ptr %51, i32 0, i32 11, !dbg !2288
  %52 = load i16, ptr %port, align 4, !dbg !2288, !tbaa !1574
  %conv = zext i16 %52 to i32, !dbg !2288
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 383, i32 noundef %cond50, i32 noundef 3, i32 noundef 0, ptr noundef %48, ptr noundef @.str.22, ptr noundef %50, i32 noundef %conv), !dbg !2288
  br label %do.cond51, !dbg !2291

do.cond51:                                        ; preds = %cond.end49
  br label %do.end52, !dbg !2291

do.end52:                                         ; preds = %do.cond51
  %53 = load ptr, ptr %r.addr, align 8, !dbg !2292, !tbaa !1296
  %status_line = getelementptr inbounds %struct.request_rec, ptr %53, i32 0, i32 14, !dbg !2293
  store ptr null, ptr %status_line, align 8, !dbg !2294, !tbaa !1786
  %54 = load ptr, ptr %bb, align 8, !dbg !2295, !tbaa !1296
  %call53 = call i32 @apr_brigade_destroy(ptr noundef %54), !dbg !2296
  %55 = load i32, ptr %status, align 4, !dbg !2297, !tbaa !1515
  store i32 %55, ptr %retval, align 4, !dbg !2298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup256, !dbg !2298

if.end:                                           ; preds = %cond.end
  %56 = load ptr, ptr %r.addr, align 8, !dbg !2299, !tbaa !1296
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %56, i32 0, i32 54, !dbg !2299
  %57 = load ptr, ptr %per_dir_config, align 8, !dbg !2299, !tbaa !2300
  %58 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @proxy_scgi_module, i32 0, i32 2), align 8, !dbg !2299, !tbaa !1768
  %idxprom = sext i32 %58 to i64, !dbg !2299
  %arrayidx = getelementptr inbounds ptr, ptr %57, i64 %idxprom, !dbg !2299
  %59 = load ptr, ptr %arrayidx, align 8, !dbg !2299, !tbaa !1296
  store ptr %59, ptr %conf, align 8, !dbg !2301, !tbaa !1296
  %60 = load ptr, ptr %conf, align 8, !dbg !2302, !tbaa !1296
  %sendfile = getelementptr inbounds %struct.scgi_config, ptr %60, i32 0, i32 0, !dbg !2303
  %61 = load ptr, ptr %sendfile, align 8, !dbg !2303, !tbaa !1309
  %tobool = icmp ne ptr %61, null, !dbg !2302
  br i1 %tobool, label %land.lhs.true, label %if.end194, !dbg !2304

land.lhs.true:                                    ; preds = %if.end
  %62 = load ptr, ptr %conf, align 8, !dbg !2305, !tbaa !1296
  %sendfile54 = getelementptr inbounds %struct.scgi_config, ptr %62, i32 0, i32 0, !dbg !2306
  %63 = load ptr, ptr %sendfile54, align 8, !dbg !2306, !tbaa !1309
  %64 = load ptr, ptr @scgi_sendfile_off, align 8, !dbg !2307, !tbaa !1296
  %cmp55 = icmp ne ptr %63, %64, !dbg !2308
  br i1 %cmp55, label %if.then57, label %if.end194, !dbg !2309

if.then57:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr %err) #6, !dbg !2310
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2195, metadata !DIExpression()), !dbg !2311
  store i16 1, ptr %err, align 2, !dbg !2311, !tbaa !1485
  %65 = load ptr, ptr %r.addr, align 8, !dbg !2312, !tbaa !1296
  %err_headers_out = getelementptr inbounds %struct.request_rec, ptr %65, i32 0, i32 36, !dbg !2313
  %66 = load ptr, ptr %err_headers_out, align 8, !dbg !2313, !tbaa !2314
  %67 = load ptr, ptr %conf, align 8, !dbg !2315, !tbaa !1296
  %sendfile58 = getelementptr inbounds %struct.scgi_config, ptr %67, i32 0, i32 0, !dbg !2316
  %68 = load ptr, ptr %sendfile58, align 8, !dbg !2316, !tbaa !1309
  %call59 = call ptr @apr_table_get(ptr noundef %66, ptr noundef %68), !dbg !2317
  store ptr %call59, ptr %location, align 8, !dbg !2318, !tbaa !1296
  %69 = load ptr, ptr %location, align 8, !dbg !2319, !tbaa !1296
  %tobool60 = icmp ne ptr %69, null, !dbg !2319
  br i1 %tobool60, label %if.end64, label %if.then61, !dbg !2321

if.then61:                                        ; preds = %if.then57
  store i16 0, ptr %err, align 2, !dbg !2322, !tbaa !1485
  %70 = load ptr, ptr %r.addr, align 8, !dbg !2324, !tbaa !1296
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %70, i32 0, i32 35, !dbg !2325
  %71 = load ptr, ptr %headers_out, align 8, !dbg !2325, !tbaa !2326
  %72 = load ptr, ptr %conf, align 8, !dbg !2327, !tbaa !1296
  %sendfile62 = getelementptr inbounds %struct.scgi_config, ptr %72, i32 0, i32 0, !dbg !2328
  %73 = load ptr, ptr %sendfile62, align 8, !dbg !2328, !tbaa !1309
  %call63 = call ptr @apr_table_get(ptr noundef %71, ptr noundef %73), !dbg !2329
  store ptr %call63, ptr %location, align 8, !dbg !2330, !tbaa !1296
  br label %if.end64, !dbg !2331

if.end64:                                         ; preds = %if.then61, %if.then57
  %74 = load ptr, ptr %location, align 8, !dbg !2332, !tbaa !1296
  %tobool65 = icmp ne ptr %74, null, !dbg !2332
  br i1 %tobool65, label %if.then66, label %if.end193, !dbg !2333

if.then66:                                        ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 8, ptr %req_conf) #6, !dbg !2334
  tail call void @llvm.dbg.declare(metadata ptr %req_conf, metadata !2199, metadata !DIExpression()), !dbg !2335
  %75 = load ptr, ptr %r.addr, align 8, !dbg !2336, !tbaa !1296
  %pool67 = getelementptr inbounds %struct.request_rec, ptr %75, i32 0, i32 0, !dbg !2337
  %76 = load ptr, ptr %pool67, align 8, !dbg !2337, !tbaa !1496
  %call68 = call ptr @apr_palloc(ptr noundef %76, i64 noundef 16), !dbg !2338
  store ptr %call68, ptr %req_conf, align 8, !dbg !2335, !tbaa !1296
  br label %do.body69, !dbg !2339

do.body69:                                        ; preds = %if.then66
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true70, label %cond.false71, !dbg !2340

cond.true70:                                      ; preds = %do.body69
  %77 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2340, !tbaa !1515
  br label %cond.end72, !dbg !2340

cond.false71:                                     ; preds = %do.body69
  br label %cond.end72, !dbg !2340

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi i32 [ %77, %cond.true70 ], [ -1, %cond.false71 ], !dbg !2340
  %cmp74 = icmp slt i32 %cond73, 0, !dbg !2340
  br i1 %cmp74, label %cond.true123, label %lor.lhs.false, !dbg !2340

lor.lhs.false:                                    ; preds = %cond.end72
  %78 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log = getelementptr inbounds %struct.request_rec, ptr %78, i32 0, i32 56, !dbg !2340
  %79 = load ptr, ptr %log, align 8, !dbg !2340, !tbaa !1516
  %tobool76 = icmp ne ptr %79, null, !dbg !2340
  br i1 %tobool76, label %cond.true77, label %cond.false79, !dbg !2340

cond.true77:                                      ; preds = %lor.lhs.false
  %80 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log78 = getelementptr inbounds %struct.request_rec, ptr %80, i32 0, i32 56, !dbg !2340
  %81 = load ptr, ptr %log78, align 8, !dbg !2340, !tbaa !1516
  br label %cond.end90, !dbg !2340

cond.false79:                                     ; preds = %lor.lhs.false
  %82 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection80 = getelementptr inbounds %struct.request_rec, ptr %82, i32 0, i32 1, !dbg !2340
  %83 = load ptr, ptr %connection80, align 8, !dbg !2340, !tbaa !1517
  %log81 = getelementptr inbounds %struct.conn_rec, ptr %83, i32 0, i32 24, !dbg !2340
  %84 = load ptr, ptr %log81, align 8, !dbg !2340, !tbaa !1518
  %tobool82 = icmp ne ptr %84, null, !dbg !2340
  br i1 %tobool82, label %cond.true83, label %cond.false86, !dbg !2340

cond.true83:                                      ; preds = %cond.false79
  %85 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection84 = getelementptr inbounds %struct.request_rec, ptr %85, i32 0, i32 1, !dbg !2340
  %86 = load ptr, ptr %connection84, align 8, !dbg !2340, !tbaa !1517
  %log85 = getelementptr inbounds %struct.conn_rec, ptr %86, i32 0, i32 24, !dbg !2340
  %87 = load ptr, ptr %log85, align 8, !dbg !2340, !tbaa !1518
  br label %cond.end88, !dbg !2340

cond.false86:                                     ; preds = %cond.false79
  %88 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %server = getelementptr inbounds %struct.request_rec, ptr %88, i32 0, i32 2, !dbg !2340
  %89 = load ptr, ptr %server, align 8, !dbg !2340, !tbaa !1520
  %log87 = getelementptr inbounds %struct.server_rec, ptr %89, i32 0, i32 4, !dbg !2340
  br label %cond.end88, !dbg !2340

cond.end88:                                       ; preds = %cond.false86, %cond.true83
  %cond89 = phi ptr [ %87, %cond.true83 ], [ %log87, %cond.false86 ], !dbg !2340
  br label %cond.end90, !dbg !2340

cond.end90:                                       ; preds = %cond.end88, %cond.true77
  %cond91 = phi ptr [ %81, %cond.true77 ], [ %cond89, %cond.end88 ], !dbg !2340
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %cond91, i32 0, i32 0, !dbg !2340
  %90 = load ptr, ptr %module_levels, align 8, !dbg !2340, !tbaa !1521
  %cmp92 = icmp eq ptr %90, null, !dbg !2340
  br i1 %cmp92, label %cond.true123, label %lor.lhs.false94, !dbg !2340

lor.lhs.false94:                                  ; preds = %cond.end90
  %91 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log95 = getelementptr inbounds %struct.request_rec, ptr %91, i32 0, i32 56, !dbg !2340
  %92 = load ptr, ptr %log95, align 8, !dbg !2340, !tbaa !1516
  %tobool96 = icmp ne ptr %92, null, !dbg !2340
  br i1 %tobool96, label %cond.true97, label %cond.false99, !dbg !2340

cond.true97:                                      ; preds = %lor.lhs.false94
  %93 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log98 = getelementptr inbounds %struct.request_rec, ptr %93, i32 0, i32 56, !dbg !2340
  %94 = load ptr, ptr %log98, align 8, !dbg !2340, !tbaa !1516
  br label %cond.end111, !dbg !2340

cond.false99:                                     ; preds = %lor.lhs.false94
  %95 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection100 = getelementptr inbounds %struct.request_rec, ptr %95, i32 0, i32 1, !dbg !2340
  %96 = load ptr, ptr %connection100, align 8, !dbg !2340, !tbaa !1517
  %log101 = getelementptr inbounds %struct.conn_rec, ptr %96, i32 0, i32 24, !dbg !2340
  %97 = load ptr, ptr %log101, align 8, !dbg !2340, !tbaa !1518
  %tobool102 = icmp ne ptr %97, null, !dbg !2340
  br i1 %tobool102, label %cond.true103, label %cond.false106, !dbg !2340

cond.true103:                                     ; preds = %cond.false99
  %98 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection104 = getelementptr inbounds %struct.request_rec, ptr %98, i32 0, i32 1, !dbg !2340
  %99 = load ptr, ptr %connection104, align 8, !dbg !2340, !tbaa !1517
  %log105 = getelementptr inbounds %struct.conn_rec, ptr %99, i32 0, i32 24, !dbg !2340
  %100 = load ptr, ptr %log105, align 8, !dbg !2340, !tbaa !1518
  br label %cond.end109, !dbg !2340

cond.false106:                                    ; preds = %cond.false99
  %101 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %server107 = getelementptr inbounds %struct.request_rec, ptr %101, i32 0, i32 2, !dbg !2340
  %102 = load ptr, ptr %server107, align 8, !dbg !2340, !tbaa !1520
  %log108 = getelementptr inbounds %struct.server_rec, ptr %102, i32 0, i32 4, !dbg !2340
  br label %cond.end109, !dbg !2340

cond.end109:                                      ; preds = %cond.false106, %cond.true103
  %cond110 = phi ptr [ %100, %cond.true103 ], [ %log108, %cond.false106 ], !dbg !2340
  br label %cond.end111, !dbg !2340

cond.end111:                                      ; preds = %cond.end109, %cond.true97
  %cond112 = phi ptr [ %94, %cond.true97 ], [ %cond110, %cond.end109 ], !dbg !2340
  %module_levels113 = getelementptr inbounds %struct.ap_logconf, ptr %cond112, i32 0, i32 0, !dbg !2340
  %103 = load ptr, ptr %module_levels113, align 8, !dbg !2340, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true114, label %cond.false115, !dbg !2340

cond.true114:                                     ; preds = %cond.end111
  %104 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2340, !tbaa !1515
  br label %cond.end116, !dbg !2340

cond.false115:                                    ; preds = %cond.end111
  br label %cond.end116, !dbg !2340

cond.end116:                                      ; preds = %cond.false115, %cond.true114
  %cond117 = phi i32 [ %104, %cond.true114 ], [ -1, %cond.false115 ], !dbg !2340
  %idxprom118 = sext i32 %cond117 to i64, !dbg !2340
  %arrayidx119 = getelementptr inbounds i8, ptr %103, i64 %idxprom118, !dbg !2340
  %105 = load i8, ptr %arrayidx119, align 1, !dbg !2340, !tbaa !1523
  %conv120 = sext i8 %105 to i32, !dbg !2340
  %cmp121 = icmp slt i32 %conv120, 0, !dbg !2340
  br i1 %cmp121, label %cond.true123, label %cond.false142, !dbg !2340

cond.true123:                                     ; preds = %cond.end116, %cond.end90, %cond.end72
  %106 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log124 = getelementptr inbounds %struct.request_rec, ptr %106, i32 0, i32 56, !dbg !2340
  %107 = load ptr, ptr %log124, align 8, !dbg !2340, !tbaa !1516
  %tobool125 = icmp ne ptr %107, null, !dbg !2340
  br i1 %tobool125, label %cond.true126, label %cond.false128, !dbg !2340

cond.true126:                                     ; preds = %cond.true123
  %108 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log127 = getelementptr inbounds %struct.request_rec, ptr %108, i32 0, i32 56, !dbg !2340
  %109 = load ptr, ptr %log127, align 8, !dbg !2340, !tbaa !1516
  br label %cond.end140, !dbg !2340

cond.false128:                                    ; preds = %cond.true123
  %110 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection129 = getelementptr inbounds %struct.request_rec, ptr %110, i32 0, i32 1, !dbg !2340
  %111 = load ptr, ptr %connection129, align 8, !dbg !2340, !tbaa !1517
  %log130 = getelementptr inbounds %struct.conn_rec, ptr %111, i32 0, i32 24, !dbg !2340
  %112 = load ptr, ptr %log130, align 8, !dbg !2340, !tbaa !1518
  %tobool131 = icmp ne ptr %112, null, !dbg !2340
  br i1 %tobool131, label %cond.true132, label %cond.false135, !dbg !2340

cond.true132:                                     ; preds = %cond.false128
  %113 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection133 = getelementptr inbounds %struct.request_rec, ptr %113, i32 0, i32 1, !dbg !2340
  %114 = load ptr, ptr %connection133, align 8, !dbg !2340, !tbaa !1517
  %log134 = getelementptr inbounds %struct.conn_rec, ptr %114, i32 0, i32 24, !dbg !2340
  %115 = load ptr, ptr %log134, align 8, !dbg !2340, !tbaa !1518
  br label %cond.end138, !dbg !2340

cond.false135:                                    ; preds = %cond.false128
  %116 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %server136 = getelementptr inbounds %struct.request_rec, ptr %116, i32 0, i32 2, !dbg !2340
  %117 = load ptr, ptr %server136, align 8, !dbg !2340, !tbaa !1520
  %log137 = getelementptr inbounds %struct.server_rec, ptr %117, i32 0, i32 4, !dbg !2340
  br label %cond.end138, !dbg !2340

cond.end138:                                      ; preds = %cond.false135, %cond.true132
  %cond139 = phi ptr [ %115, %cond.true132 ], [ %log137, %cond.false135 ], !dbg !2340
  br label %cond.end140, !dbg !2340

cond.end140:                                      ; preds = %cond.end138, %cond.true126
  %cond141 = phi ptr [ %109, %cond.true126 ], [ %cond139, %cond.end138 ], !dbg !2340
  %level = getelementptr inbounds %struct.ap_logconf, ptr %cond141, i32 0, i32 1, !dbg !2340
  %118 = load i32, ptr %level, align 8, !dbg !2340, !tbaa !1524
  br label %cond.end169, !dbg !2340

cond.false142:                                    ; preds = %cond.end116
  %119 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log143 = getelementptr inbounds %struct.request_rec, ptr %119, i32 0, i32 56, !dbg !2340
  %120 = load ptr, ptr %log143, align 8, !dbg !2340, !tbaa !1516
  %tobool144 = icmp ne ptr %120, null, !dbg !2340
  br i1 %tobool144, label %cond.true145, label %cond.false147, !dbg !2340

cond.true145:                                     ; preds = %cond.false142
  %121 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %log146 = getelementptr inbounds %struct.request_rec, ptr %121, i32 0, i32 56, !dbg !2340
  %122 = load ptr, ptr %log146, align 8, !dbg !2340, !tbaa !1516
  br label %cond.end159, !dbg !2340

cond.false147:                                    ; preds = %cond.false142
  %123 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection148 = getelementptr inbounds %struct.request_rec, ptr %123, i32 0, i32 1, !dbg !2340
  %124 = load ptr, ptr %connection148, align 8, !dbg !2340, !tbaa !1517
  %log149 = getelementptr inbounds %struct.conn_rec, ptr %124, i32 0, i32 24, !dbg !2340
  %125 = load ptr, ptr %log149, align 8, !dbg !2340, !tbaa !1518
  %tobool150 = icmp ne ptr %125, null, !dbg !2340
  br i1 %tobool150, label %cond.true151, label %cond.false154, !dbg !2340

cond.true151:                                     ; preds = %cond.false147
  %126 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %connection152 = getelementptr inbounds %struct.request_rec, ptr %126, i32 0, i32 1, !dbg !2340
  %127 = load ptr, ptr %connection152, align 8, !dbg !2340, !tbaa !1517
  %log153 = getelementptr inbounds %struct.conn_rec, ptr %127, i32 0, i32 24, !dbg !2340
  %128 = load ptr, ptr %log153, align 8, !dbg !2340, !tbaa !1518
  br label %cond.end157, !dbg !2340

cond.false154:                                    ; preds = %cond.false147
  %129 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %server155 = getelementptr inbounds %struct.request_rec, ptr %129, i32 0, i32 2, !dbg !2340
  %130 = load ptr, ptr %server155, align 8, !dbg !2340, !tbaa !1520
  %log156 = getelementptr inbounds %struct.server_rec, ptr %130, i32 0, i32 4, !dbg !2340
  br label %cond.end157, !dbg !2340

cond.end157:                                      ; preds = %cond.false154, %cond.true151
  %cond158 = phi ptr [ %128, %cond.true151 ], [ %log156, %cond.false154 ], !dbg !2340
  br label %cond.end159, !dbg !2340

cond.end159:                                      ; preds = %cond.end157, %cond.true145
  %cond160 = phi ptr [ %122, %cond.true145 ], [ %cond158, %cond.end157 ], !dbg !2340
  %module_levels161 = getelementptr inbounds %struct.ap_logconf, ptr %cond160, i32 0, i32 0, !dbg !2340
  %131 = load ptr, ptr %module_levels161, align 8, !dbg !2340, !tbaa !1521
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true162, label %cond.false163, !dbg !2340

cond.true162:                                     ; preds = %cond.end159
  %132 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2340, !tbaa !1515
  br label %cond.end164, !dbg !2340

cond.false163:                                    ; preds = %cond.end159
  br label %cond.end164, !dbg !2340

cond.end164:                                      ; preds = %cond.false163, %cond.true162
  %cond165 = phi i32 [ %132, %cond.true162 ], [ -1, %cond.false163 ], !dbg !2340
  %idxprom166 = sext i32 %cond165 to i64, !dbg !2340
  %arrayidx167 = getelementptr inbounds i8, ptr %131, i64 %idxprom166, !dbg !2340
  %133 = load i8, ptr %arrayidx167, align 1, !dbg !2340, !tbaa !1523
  %conv168 = sext i8 %133 to i32, !dbg !2340
  br label %cond.end169, !dbg !2340

cond.end169:                                      ; preds = %cond.end164, %cond.end140
  %cond170 = phi i32 [ %118, %cond.end140 ], [ %conv168, %cond.end164 ], !dbg !2340
  %cmp171 = icmp sge i32 %cond170, 7, !dbg !2340
  br i1 %cmp171, label %if.then173, label %if.end179, !dbg !2343

if.then173:                                       ; preds = %cond.end169
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true174, label %cond.false175, !dbg !2340

cond.true174:                                     ; preds = %if.then173
  %134 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2340, !tbaa !1515
  br label %cond.end176, !dbg !2340

cond.false175:                                    ; preds = %if.then173
  br label %cond.end176, !dbg !2340

cond.end176:                                      ; preds = %cond.false175, %cond.true174
  %cond177 = phi i32 [ %134, %cond.true174 ], [ -1, %cond.false175 ], !dbg !2340
  %135 = load ptr, ptr %r.addr, align 8, !dbg !2340, !tbaa !1296
  %136 = load ptr, ptr %conf, align 8, !dbg !2340, !tbaa !1296
  %sendfile178 = getelementptr inbounds %struct.scgi_config, ptr %136, i32 0, i32 0, !dbg !2340
  %137 = load ptr, ptr %sendfile178, align 8, !dbg !2340, !tbaa !1309
  %138 = load ptr, ptr %location, align 8, !dbg !2340, !tbaa !1296
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 403, i32 noundef %cond177, i32 noundef 7, i32 noundef 0, ptr noundef %135, ptr noundef @.str.23, ptr noundef %137, ptr noundef %138), !dbg !2340
  br label %if.end179, !dbg !2340

if.end179:                                        ; preds = %cond.end176, %cond.end169
  br label %do.cond180, !dbg !2343

do.cond180:                                       ; preds = %if.end179
  br label %do.end181, !dbg !2343

do.end181:                                        ; preds = %do.cond180
  %139 = load i16, ptr %err, align 2, !dbg !2344, !tbaa !1485
  %tobool182 = icmp ne i16 %139, 0, !dbg !2344
  br i1 %tobool182, label %if.then183, label %if.else, !dbg !2346

if.then183:                                       ; preds = %do.end181
  %140 = load ptr, ptr %r.addr, align 8, !dbg !2347, !tbaa !1296
  %err_headers_out184 = getelementptr inbounds %struct.request_rec, ptr %140, i32 0, i32 36, !dbg !2349
  %141 = load ptr, ptr %err_headers_out184, align 8, !dbg !2349, !tbaa !2314
  %142 = load ptr, ptr %conf, align 8, !dbg !2350, !tbaa !1296
  %sendfile185 = getelementptr inbounds %struct.scgi_config, ptr %142, i32 0, i32 0, !dbg !2351
  %143 = load ptr, ptr %sendfile185, align 8, !dbg !2351, !tbaa !1309
  call void @apr_table_unset(ptr noundef %141, ptr noundef %143), !dbg !2352
  br label %if.end188, !dbg !2353

if.else:                                          ; preds = %do.end181
  %144 = load ptr, ptr %r.addr, align 8, !dbg !2354, !tbaa !1296
  %headers_out186 = getelementptr inbounds %struct.request_rec, ptr %144, i32 0, i32 35, !dbg !2356
  %145 = load ptr, ptr %headers_out186, align 8, !dbg !2356, !tbaa !2326
  %146 = load ptr, ptr %conf, align 8, !dbg !2357, !tbaa !1296
  %sendfile187 = getelementptr inbounds %struct.scgi_config, ptr %146, i32 0, i32 0, !dbg !2358
  %147 = load ptr, ptr %sendfile187, align 8, !dbg !2358, !tbaa !1309
  call void @apr_table_unset(ptr noundef %145, ptr noundef %147), !dbg !2359
  br label %if.end188

if.end188:                                        ; preds = %if.else, %if.then183
  %148 = load ptr, ptr %location, align 8, !dbg !2360, !tbaa !1296
  %149 = load ptr, ptr %req_conf, align 8, !dbg !2361, !tbaa !1296
  %location189 = getelementptr inbounds %struct.scgi_request_config, ptr %149, i32 0, i32 0, !dbg !2362
  store ptr %148, ptr %location189, align 8, !dbg !2363, !tbaa !1782
  %150 = load ptr, ptr %req_conf, align 8, !dbg !2364, !tbaa !1296
  %type = getelementptr inbounds %struct.scgi_request_config, ptr %150, i32 0, i32 1, !dbg !2365
  store i32 1, ptr %type, align 8, !dbg !2366, !tbaa !1774
  %151 = load ptr, ptr %req_conf, align 8, !dbg !2367, !tbaa !1296
  %152 = load ptr, ptr %r.addr, align 8, !dbg !2367, !tbaa !1296
  %request_config = getelementptr inbounds %struct.request_rec, ptr %152, i32 0, i32 55, !dbg !2367
  %153 = load ptr, ptr %request_config, align 8, !dbg !2367, !tbaa !1767
  %154 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @proxy_scgi_module, i32 0, i32 2), align 8, !dbg !2367, !tbaa !1768
  %idxprom190 = sext i32 %154 to i64, !dbg !2367
  %arrayidx191 = getelementptr inbounds ptr, ptr %153, i64 %idxprom190, !dbg !2367
  store ptr %151, ptr %arrayidx191, align 8, !dbg !2367, !tbaa !1296
  %155 = load ptr, ptr %bb, align 8, !dbg !2368, !tbaa !1296
  %call192 = call i32 @apr_brigade_destroy(ptr noundef %155), !dbg !2369
  store i32 0, ptr %retval, align 4, !dbg !2370
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %req_conf) #6, !dbg !2371
  br label %cleanup

if.end193:                                        ; preds = %if.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2372
  br label %cleanup, !dbg !2372

cleanup:                                          ; preds = %if.end193, %if.end188
  call void @llvm.lifetime.end.p0(i64 2, ptr %err) #6, !dbg !2372
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup256 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end194, !dbg !2373

if.end194:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %156 = load ptr, ptr %r.addr, align 8, !dbg !2374, !tbaa !1296
  %status195 = getelementptr inbounds %struct.request_rec, ptr %156, i32 0, i32 15, !dbg !2375
  %157 = load i32, ptr %status195, align 8, !dbg !2375, !tbaa !1830
  %cmp196 = icmp eq i32 %157, 200, !dbg !2376
  br i1 %cmp196, label %land.lhs.true198, label %if.end251, !dbg !2377

land.lhs.true198:                                 ; preds = %if.end194
  %158 = load ptr, ptr %conf, align 8, !dbg !2378, !tbaa !1296
  %internal_redirect = getelementptr inbounds %struct.scgi_config, ptr %158, i32 0, i32 1, !dbg !2379
  %159 = load ptr, ptr %internal_redirect, align 8, !dbg !2379, !tbaa !1314
  %tobool199 = icmp ne ptr %159, null, !dbg !2378
  br i1 %tobool199, label %lor.lhs.false200, label %if.then204, !dbg !2380

lor.lhs.false200:                                 ; preds = %land.lhs.true198
  %160 = load ptr, ptr %conf, align 8, !dbg !2381, !tbaa !1296
  %internal_redirect201 = getelementptr inbounds %struct.scgi_config, ptr %160, i32 0, i32 1, !dbg !2382
  %161 = load ptr, ptr %internal_redirect201, align 8, !dbg !2382, !tbaa !1314
  %162 = load ptr, ptr @scgi_internal_redirect_off, align 8, !dbg !2383, !tbaa !1296
  %cmp202 = icmp ne ptr %161, %162, !dbg !2384
  br i1 %cmp202, label %if.then204, label %if.end251, !dbg !2385

if.then204:                                       ; preds = %lor.lhs.false200, %land.lhs.true198
  call void @llvm.lifetime.start.p0(i64 2, ptr %err205) #6, !dbg !2386
  tail call void @llvm.dbg.declare(metadata ptr %err205, metadata !2202, metadata !DIExpression()), !dbg !2387
  store i16 1, ptr %err205, align 2, !dbg !2387, !tbaa !1485
  call void @llvm.lifetime.start.p0(i64 8, ptr %location_header) #6, !dbg !2388
  tail call void @llvm.dbg.declare(metadata ptr %location_header, metadata !2205, metadata !DIExpression()), !dbg !2389
  %163 = load ptr, ptr %conf, align 8, !dbg !2390, !tbaa !1296
  %internal_redirect206 = getelementptr inbounds %struct.scgi_config, ptr %163, i32 0, i32 1, !dbg !2391
  %164 = load ptr, ptr %internal_redirect206, align 8, !dbg !2391, !tbaa !1314
  %tobool207 = icmp ne ptr %164, null, !dbg !2390
  br i1 %tobool207, label %cond.true208, label %cond.false210, !dbg !2390

cond.true208:                                     ; preds = %if.then204
  %165 = load ptr, ptr %conf, align 8, !dbg !2392, !tbaa !1296
  %internal_redirect209 = getelementptr inbounds %struct.scgi_config, ptr %165, i32 0, i32 1, !dbg !2393
  %166 = load ptr, ptr %internal_redirect209, align 8, !dbg !2393, !tbaa !1314
  br label %cond.end211, !dbg !2390

cond.false210:                                    ; preds = %if.then204
  %167 = load ptr, ptr @scgi_internal_redirect_on, align 8, !dbg !2394, !tbaa !1296
  br label %cond.end211, !dbg !2390

cond.end211:                                      ; preds = %cond.false210, %cond.true208
  %cond212 = phi ptr [ %166, %cond.true208 ], [ %167, %cond.false210 ], !dbg !2390
  store ptr %cond212, ptr %location_header, align 8, !dbg !2389, !tbaa !1296
  %168 = load ptr, ptr %r.addr, align 8, !dbg !2395, !tbaa !1296
  %err_headers_out213 = getelementptr inbounds %struct.request_rec, ptr %168, i32 0, i32 36, !dbg !2396
  %169 = load ptr, ptr %err_headers_out213, align 8, !dbg !2396, !tbaa !2314
  %170 = load ptr, ptr %location_header, align 8, !dbg !2397, !tbaa !1296
  %call214 = call ptr @apr_table_get(ptr noundef %169, ptr noundef %170), !dbg !2398
  store ptr %call214, ptr %location, align 8, !dbg !2399, !tbaa !1296
  %171 = load ptr, ptr %location, align 8, !dbg !2400, !tbaa !1296
  %tobool215 = icmp ne ptr %171, null, !dbg !2400
  br i1 %tobool215, label %if.end219, label %if.then216, !dbg !2402

if.then216:                                       ; preds = %cond.end211
  store i16 0, ptr %err205, align 2, !dbg !2403, !tbaa !1485
  %172 = load ptr, ptr %r.addr, align 8, !dbg !2405, !tbaa !1296
  %headers_out217 = getelementptr inbounds %struct.request_rec, ptr %172, i32 0, i32 35, !dbg !2406
  %173 = load ptr, ptr %headers_out217, align 8, !dbg !2406, !tbaa !2326
  %174 = load ptr, ptr %location_header, align 8, !dbg !2407, !tbaa !1296
  %call218 = call ptr @apr_table_get(ptr noundef %173, ptr noundef %174), !dbg !2408
  store ptr %call218, ptr %location, align 8, !dbg !2409, !tbaa !1296
  br label %if.end219, !dbg !2410

if.end219:                                        ; preds = %if.then216, %cond.end211
  %175 = load ptr, ptr %location, align 8, !dbg !2411, !tbaa !1296
  %tobool220 = icmp ne ptr %175, null, !dbg !2411
  br i1 %tobool220, label %land.lhs.true221, label %if.end246, !dbg !2412

land.lhs.true221:                                 ; preds = %if.end219
  %176 = load ptr, ptr %location, align 8, !dbg !2413, !tbaa !1296
  %177 = load i8, ptr %176, align 1, !dbg !2414, !tbaa !1523
  %conv222 = sext i8 %177 to i32, !dbg !2414
  %cmp223 = icmp eq i32 %conv222, 47, !dbg !2415
  br i1 %cmp223, label %if.then225, label %if.end246, !dbg !2416

if.then225:                                       ; preds = %land.lhs.true221
  call void @llvm.lifetime.start.p0(i64 8, ptr %req_conf226) #6, !dbg !2417
  tail call void @llvm.dbg.declare(metadata ptr %req_conf226, metadata !2206, metadata !DIExpression()), !dbg !2418
  %178 = load ptr, ptr %r.addr, align 8, !dbg !2419, !tbaa !1296
  %pool227 = getelementptr inbounds %struct.request_rec, ptr %178, i32 0, i32 0, !dbg !2420
  %179 = load ptr, ptr %pool227, align 8, !dbg !2420, !tbaa !1496
  %call228 = call ptr @apr_palloc(ptr noundef %179, i64 noundef 16), !dbg !2421
  store ptr %call228, ptr %req_conf226, align 8, !dbg !2418, !tbaa !1296
  %180 = load ptr, ptr %location_header, align 8, !dbg !2422, !tbaa !1296
  %call229 = call i32 @ap_cstr_casecmp(ptr noundef %180, ptr noundef @.str.2), !dbg !2424
  %tobool230 = icmp ne i32 %call229, 0, !dbg !2424
  br i1 %tobool230, label %if.then231, label %if.end238, !dbg !2425

if.then231:                                       ; preds = %if.then225
  %181 = load i16, ptr %err205, align 2, !dbg !2426, !tbaa !1485
  %tobool232 = icmp ne i16 %181, 0, !dbg !2426
  br i1 %tobool232, label %if.then233, label %if.else235, !dbg !2429

if.then233:                                       ; preds = %if.then231
  %182 = load ptr, ptr %r.addr, align 8, !dbg !2430, !tbaa !1296
  %err_headers_out234 = getelementptr inbounds %struct.request_rec, ptr %182, i32 0, i32 36, !dbg !2432
  %183 = load ptr, ptr %err_headers_out234, align 8, !dbg !2432, !tbaa !2314
  %184 = load ptr, ptr %location_header, align 8, !dbg !2433, !tbaa !1296
  call void @apr_table_unset(ptr noundef %183, ptr noundef %184), !dbg !2434
  br label %if.end237, !dbg !2435

if.else235:                                       ; preds = %if.then231
  %185 = load ptr, ptr %r.addr, align 8, !dbg !2436, !tbaa !1296
  %headers_out236 = getelementptr inbounds %struct.request_rec, ptr %185, i32 0, i32 35, !dbg !2438
  %186 = load ptr, ptr %headers_out236, align 8, !dbg !2438, !tbaa !2326
  %187 = load ptr, ptr %location_header, align 8, !dbg !2439, !tbaa !1296
  call void @apr_table_unset(ptr noundef %186, ptr noundef %187), !dbg !2440
  br label %if.end237

if.end237:                                        ; preds = %if.else235, %if.then233
  br label %if.end238, !dbg !2441

if.end238:                                        ; preds = %if.end237, %if.then225
  %188 = load ptr, ptr %location, align 8, !dbg !2442, !tbaa !1296
  %189 = load ptr, ptr %req_conf226, align 8, !dbg !2443, !tbaa !1296
  %location239 = getelementptr inbounds %struct.scgi_request_config, ptr %189, i32 0, i32 0, !dbg !2444
  store ptr %188, ptr %location239, align 8, !dbg !2445, !tbaa !1782
  %190 = load ptr, ptr %req_conf226, align 8, !dbg !2446, !tbaa !1296
  %type240 = getelementptr inbounds %struct.scgi_request_config, ptr %190, i32 0, i32 1, !dbg !2447
  store i32 0, ptr %type240, align 8, !dbg !2448, !tbaa !1774
  %191 = load ptr, ptr %req_conf226, align 8, !dbg !2449, !tbaa !1296
  %192 = load ptr, ptr %r.addr, align 8, !dbg !2449, !tbaa !1296
  %request_config241 = getelementptr inbounds %struct.request_rec, ptr %192, i32 0, i32 55, !dbg !2449
  %193 = load ptr, ptr %request_config241, align 8, !dbg !2449, !tbaa !1767
  %194 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @proxy_scgi_module, i32 0, i32 2), align 8, !dbg !2449, !tbaa !1768
  %idxprom242 = sext i32 %194 to i64, !dbg !2449
  %arrayidx243 = getelementptr inbounds ptr, ptr %193, i64 %idxprom242, !dbg !2449
  store ptr %191, ptr %arrayidx243, align 8, !dbg !2449, !tbaa !1296
  %195 = load ptr, ptr %bb, align 8, !dbg !2450, !tbaa !1296
  %call244 = call i32 @apr_brigade_destroy(ptr noundef %195), !dbg !2451
  store i32 0, ptr %retval, align 4, !dbg !2452
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %req_conf226) #6, !dbg !2453
  br label %cleanup247

if.end246:                                        ; preds = %land.lhs.true221, %if.end219
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2454
  br label %cleanup247, !dbg !2454

cleanup247:                                       ; preds = %if.end246, %if.end238
  call void @llvm.lifetime.end.p0(i64 8, ptr %location_header) #6, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 2, ptr %err205) #6, !dbg !2454
  %cleanup.dest249 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest249, label %cleanup256 [
    i32 0, label %cleanup.cont250
  ]

cleanup.cont250:                                  ; preds = %cleanup247
  br label %if.end251, !dbg !2455

if.end251:                                        ; preds = %cleanup.cont250, %lor.lhs.false200, %if.end194
  %196 = load ptr, ptr %r.addr, align 8, !dbg !2456, !tbaa !1296
  %output_filters = getelementptr inbounds %struct.request_rec, ptr %196, i32 0, i32 59, !dbg !2458
  %197 = load ptr, ptr %output_filters, align 8, !dbg !2458, !tbaa !1824
  %198 = load ptr, ptr %bb, align 8, !dbg !2459, !tbaa !1296
  %call252 = call i32 @ap_pass_brigade(ptr noundef %197, ptr noundef %198), !dbg !2460
  %tobool253 = icmp ne i32 %call252, 0, !dbg !2460
  br i1 %tobool253, label %if.then254, label %if.end255, !dbg !2461

if.then254:                                       ; preds = %if.end251
  store i32 -102, ptr %retval, align 4, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup256, !dbg !2462

if.end255:                                        ; preds = %if.end251
  store i32 0, ptr %retval, align 4, !dbg !2464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup256, !dbg !2464

cleanup256:                                       ; preds = %if.end255, %if.then254, %cleanup247, %cleanup, %do.end52
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %sock_data) #6, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %location) #6, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %bb) #6, !dbg !2465
  %199 = load i32, ptr %retval, align 4, !dbg !2465
  ret i32 %199, !dbg !2465
}

declare !dbg !2466 i32 @ap_proxy_release_connection(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2469 void @ap_add_common_vars(ptr noundef) #2

declare !dbg !2473 void @ap_add_cgi_vars(ptr noundef) #2

declare !dbg !2474 ptr @apr_table_elts(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2479 i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2481 i64 @strlen(ptr noundef) #3

declare !dbg !2484 ptr @apr_psprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal i32 @sendall(ptr noundef %conn, ptr noundef %buf, i64 noundef %length, ptr noundef %r) #0 !dbg !2488 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %written = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !2492, metadata !DIExpression()), !dbg !2498
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2493, metadata !DIExpression()), !dbg !2499
  store i64 %length, ptr %length.addr, align 8, !tbaa !1926
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !2494, metadata !DIExpression()), !dbg !2500
  store ptr %r, ptr %r.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2495, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !2502
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2496, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #6, !dbg !2504
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !2497, metadata !DIExpression()), !dbg !2505
  br label %while.cond, !dbg !2506

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %length.addr, align 8, !dbg !2507, !tbaa !1926
  %cmp = icmp ugt i64 %0, 0, !dbg !2508
  br i1 %cmp, label %while.body, label %while.end, !dbg !2506

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %length.addr, align 8, !dbg !2509, !tbaa !1926
  store i64 %1, ptr %written, align 8, !dbg !2511, !tbaa !1926
  %2 = load ptr, ptr %conn.addr, align 8, !dbg !2512, !tbaa !1296
  %sock = getelementptr inbounds %struct.proxy_conn_rec, ptr %2, i32 0, i32 7, !dbg !2514
  %3 = load ptr, ptr %sock, align 8, !dbg !2514, !tbaa !2229
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2515, !tbaa !1296
  %call = call i32 @apr_socket_send(ptr noundef %3, ptr noundef %4, ptr noundef %written), !dbg !2516
  store i32 %call, ptr %rv, align 4, !dbg !2517, !tbaa !1515
  %cmp1 = icmp ne i32 %call, 0, !dbg !2518
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2519

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !2520

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2522

cond.true:                                        ; preds = %do.body
  %5 = load i32, ptr getelementptr (i8, ptr @proxy_scgi_module, i64 8), align 4, !dbg !2522, !tbaa !1515
  br label %cond.end, !dbg !2522

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2522

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -1, %cond.false ], !dbg !2522
  %6 = load i32, ptr %rv, align 4, !dbg !2522, !tbaa !1515
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2522, !tbaa !1296
  %8 = load ptr, ptr %conn.addr, align 8, !dbg !2522, !tbaa !1296
  %hostname = getelementptr inbounds %struct.proxy_conn_rec, ptr %8, i32 0, i32 4, !dbg !2522
  %9 = load ptr, ptr %hostname, align 8, !dbg !2522, !tbaa !1572
  %10 = load ptr, ptr %conn.addr, align 8, !dbg !2522, !tbaa !1296
  %port = getelementptr inbounds %struct.proxy_conn_rec, ptr %10, i32 0, i32 11, !dbg !2522
  %11 = load i16, ptr %port, align 4, !dbg !2522, !tbaa !1574
  %conv = zext i16 %11 to i32, !dbg !2522
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str.3, i32 noundef 237, i32 noundef %cond, i32 noundef 3, i32 noundef %6, ptr noundef %7, ptr noundef @.str.20, ptr noundef %9, i32 noundef %conv), !dbg !2522
  br label %do.cond, !dbg !2525

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !2525

do.end:                                           ; preds = %do.cond
  store i32 503, ptr %retval, align 4, !dbg !2526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2526

if.end:                                           ; preds = %while.body
  %12 = load i64, ptr %written, align 8, !dbg !2527, !tbaa !1926
  %13 = load ptr, ptr %conn.addr, align 8, !dbg !2528, !tbaa !1296
  %worker = getelementptr inbounds %struct.proxy_conn_rec, ptr %13, i32 0, i32 2, !dbg !2529
  %14 = load ptr, ptr %worker, align 8, !dbg !2529, !tbaa !2235
  %s = getelementptr inbounds %struct.proxy_worker, ptr %14, i32 0, i32 3, !dbg !2530
  %15 = load ptr, ptr %s, align 8, !dbg !2530, !tbaa !2237
  %transferred = getelementptr inbounds %struct.proxy_worker_shared, ptr %15, i32 0, i32 32, !dbg !2531
  %16 = load i64, ptr %transferred, align 8, !dbg !2532, !tbaa !2533
  %add = add i64 %16, %12, !dbg !2532
  store i64 %add, ptr %transferred, align 8, !dbg !2532, !tbaa !2533
  %17 = load i64, ptr %written, align 8, !dbg !2535, !tbaa !1926
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !2536, !tbaa !1296
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %17, !dbg !2536
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !2536, !tbaa !1296
  %19 = load i64, ptr %written, align 8, !dbg !2537, !tbaa !1926
  %20 = load i64, ptr %length.addr, align 8, !dbg !2538, !tbaa !1926
  %sub = sub i64 %20, %19, !dbg !2538
  store i64 %sub, ptr %length.addr, align 8, !dbg !2538, !tbaa !1926
  br label %while.cond, !dbg !2506, !llvm.loop !2539

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !2541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2541

cleanup:                                          ; preds = %while.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #6, !dbg !2542
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !2542
  %21 = load i32, ptr %retval, align 4, !dbg !2542
  ret i32 %21, !dbg !2542
}

declare !dbg !2543 i32 @apr_socket_send(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2546 i32 @ap_should_client_block(ptr noundef) #2

declare !dbg !2549 i64 @ap_get_client_block(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2552 ptr @apr_brigade_create(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bucket_socket_ex_create(ptr noundef %data, ptr noundef %list) #0 !dbg !2555 {
entry:
  %data.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2559, metadata !DIExpression()), !dbg !2562
  store ptr %list, ptr %list.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6, !dbg !2564
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2561, metadata !DIExpression()), !dbg !2565
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2566, !tbaa !1296
  %call = call ptr @apr_bucket_alloc(i64 noundef 64, ptr noundef %0), !dbg !2567
  store ptr %call, ptr %b, align 8, !dbg !2565, !tbaa !1296
  br label %do.body, !dbg !2568

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %b, align 8, !dbg !2569, !tbaa !1296
  %2 = load ptr, ptr %b, align 8, !dbg !2569, !tbaa !1296
  %link = getelementptr inbounds %struct.apr_bucket, ptr %2, i32 0, i32 0, !dbg !2569
  %next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !2569
  store volatile ptr %1, ptr %next, align 8, !dbg !2569, !tbaa !2262
  %3 = load ptr, ptr %b, align 8, !dbg !2569, !tbaa !1296
  %4 = load ptr, ptr %b, align 8, !dbg !2569, !tbaa !1296
  %link1 = getelementptr inbounds %struct.apr_bucket, ptr %4, i32 0, i32 0, !dbg !2569
  %prev = getelementptr inbounds %struct.anon, ptr %link1, i32 0, i32 1, !dbg !2569
  store volatile ptr %3, ptr %prev, align 8, !dbg !2569, !tbaa !2267
  br label %do.cond, !dbg !2569

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2569

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %b, align 8, !dbg !2571, !tbaa !1296
  %free = getelementptr inbounds %struct.apr_bucket, ptr %5, i32 0, i32 5, !dbg !2572
  store ptr @apr_bucket_free, ptr %free, align 8, !dbg !2573, !tbaa !2574
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2575, !tbaa !1296
  %7 = load ptr, ptr %b, align 8, !dbg !2576, !tbaa !1296
  %list2 = getelementptr inbounds %struct.apr_bucket, ptr %7, i32 0, i32 6, !dbg !2577
  store ptr %6, ptr %list2, align 8, !dbg !2578, !tbaa !2579
  %8 = load ptr, ptr %b, align 8, !dbg !2580, !tbaa !1296
  %9 = load ptr, ptr %data.addr, align 8, !dbg !2581, !tbaa !1296
  %call3 = call ptr @bucket_socket_ex_make(ptr noundef %8, ptr noundef %9), !dbg !2582
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6, !dbg !2583
  ret ptr %call3, !dbg !2584
}

declare !dbg !2585 ptr @apr_bucket_eos_create(ptr noundef) #2

declare !dbg !2588 i32 @ap_scan_script_header_err_brigade_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2591 i32 @apr_brigade_destroy(ptr noundef) #2

declare !dbg !2594 ptr @apr_table_get(ptr noundef, ptr noundef) #2

declare !dbg !2597 void @apr_table_unset(ptr noundef, ptr noundef) #2

declare !dbg !2600 i32 @ap_cstr_casecmp(ptr noundef, ptr noundef) #2

declare !dbg !2601 i32 @ap_pass_brigade(ptr noundef, ptr noundef) #2

declare !dbg !2602 ptr @apr_bucket_alloc(i64 noundef, ptr noundef) #2

declare !dbg !2605 void @apr_bucket_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bucket_socket_ex_make(ptr noundef %b, ptr noundef %data) #0 !dbg !2606 {
entry:
  %b.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2610, metadata !DIExpression()), !dbg !2612
  store ptr %data, ptr %data.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2611, metadata !DIExpression()), !dbg !2613
  %0 = load ptr, ptr %b.addr, align 8, !dbg !2614, !tbaa !1296
  %type = getelementptr inbounds %struct.apr_bucket, ptr %0, i32 0, i32 1, !dbg !2615
  store ptr @bucket_type_socket_ex, ptr %type, align 8, !dbg !2616, !tbaa !2617
  %1 = load ptr, ptr %b.addr, align 8, !dbg !2618, !tbaa !1296
  %length = getelementptr inbounds %struct.apr_bucket, ptr %1, i32 0, i32 2, !dbg !2619
  store i64 -1, ptr %length, align 8, !dbg !2620, !tbaa !2621
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2622, !tbaa !1296
  %start = getelementptr inbounds %struct.apr_bucket, ptr %2, i32 0, i32 3, !dbg !2623
  store i64 -1, ptr %start, align 8, !dbg !2624, !tbaa !2625
  %3 = load ptr, ptr %data.addr, align 8, !dbg !2626, !tbaa !1296
  %4 = load ptr, ptr %b.addr, align 8, !dbg !2627, !tbaa !1296
  %data1 = getelementptr inbounds %struct.apr_bucket, ptr %4, i32 0, i32 4, !dbg !2628
  store ptr %3, ptr %data1, align 8, !dbg !2629, !tbaa !2630
  %5 = load ptr, ptr %b.addr, align 8, !dbg !2631, !tbaa !1296
  ret ptr %5, !dbg !2632
}

declare void @apr_bucket_destroy_noop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @bucket_socket_ex_read(ptr noundef %a, ptr noundef %str, ptr noundef %len, i32 noundef %block) #0 !dbg !2633 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %block.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %rv = alloca i32, align 4
  %timeout = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %h = alloca ptr, align 8
  %ap__a = alloca ptr, align 8
  %ap__b = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2635, metadata !DIExpression()), !dbg !2662
  store ptr %str, ptr %str.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2636, metadata !DIExpression()), !dbg !2663
  store ptr %len, ptr %len.addr, align 8, !tbaa !1296
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2637, metadata !DIExpression()), !dbg !2664
  store i32 %block, ptr %block.addr, align 4, !tbaa !1523
  tail call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !2638, metadata !DIExpression()), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6, !dbg !2666
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !2639, metadata !DIExpression()), !dbg !2667
  %0 = load ptr, ptr %a.addr, align 8, !dbg !2668, !tbaa !1296
  %data1 = getelementptr inbounds %struct.apr_bucket, ptr %0, i32 0, i32 4, !dbg !2669
  %1 = load ptr, ptr %data1, align 8, !dbg !2669, !tbaa !2630
  store ptr %1, ptr %data, align 8, !dbg !2667, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !2670
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2640, metadata !DIExpression()), !dbg !2671
  %2 = load ptr, ptr %data, align 8, !dbg !2672, !tbaa !1296
  %sock = getelementptr inbounds %struct.socket_ex_data, ptr %2, i32 0, i32 0, !dbg !2673
  %3 = load ptr, ptr %sock, align 8, !dbg !2673, !tbaa !1309
  store ptr %3, ptr %p, align 8, !dbg !2671, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !2674
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2641, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !2676
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2642, metadata !DIExpression()), !dbg !2677
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #6, !dbg !2678
  tail call void @llvm.dbg.declare(metadata ptr %timeout, metadata !2643, metadata !DIExpression()), !dbg !2679
  %4 = load i32, ptr %block.addr, align 4, !dbg !2680, !tbaa !1523
  %cmp = icmp eq i32 %4, 1, !dbg !2682
  br i1 %cmp, label %if.then, label %if.end, !dbg !2683

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p, align 8, !dbg !2684, !tbaa !1296
  %call = call i32 @apr_socket_timeout_get(ptr noundef %5, ptr noundef %timeout), !dbg !2686
  %6 = load ptr, ptr %p, align 8, !dbg !2687, !tbaa !1296
  %call2 = call i32 @apr_socket_timeout_set(ptr noundef %6, i64 noundef 0), !dbg !2688
  br label %if.end, !dbg !2689

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %str.addr, align 8, !dbg !2690, !tbaa !1296
  store ptr null, ptr %7, align 8, !dbg !2691, !tbaa !1296
  %8 = load ptr, ptr %len.addr, align 8, !dbg !2692, !tbaa !1296
  store i64 8000, ptr %8, align 8, !dbg !2693, !tbaa !1926
  %9 = load ptr, ptr %len.addr, align 8, !dbg !2694, !tbaa !1296
  %10 = load i64, ptr %9, align 8, !dbg !2695, !tbaa !1926
  %11 = load ptr, ptr %a.addr, align 8, !dbg !2696, !tbaa !1296
  %list = getelementptr inbounds %struct.apr_bucket, ptr %11, i32 0, i32 6, !dbg !2697
  %12 = load ptr, ptr %list, align 8, !dbg !2697, !tbaa !2579
  %call3 = call ptr @apr_bucket_alloc(i64 noundef %10, ptr noundef %12), !dbg !2698
  store ptr %call3, ptr %buf, align 8, !dbg !2699, !tbaa !1296
  %13 = load ptr, ptr %p, align 8, !dbg !2700, !tbaa !1296
  %14 = load ptr, ptr %buf, align 8, !dbg !2701, !tbaa !1296
  %15 = load ptr, ptr %len.addr, align 8, !dbg !2702, !tbaa !1296
  %call4 = call i32 @apr_socket_recv(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !2703
  store i32 %call4, ptr %rv, align 4, !dbg !2704, !tbaa !1515
  %16 = load i32, ptr %block.addr, align 4, !dbg !2705, !tbaa !1523
  %cmp5 = icmp eq i32 %16, 1, !dbg !2707
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2708

if.then6:                                         ; preds = %if.end
  %17 = load ptr, ptr %p, align 8, !dbg !2709, !tbaa !1296
  %18 = load i64, ptr %timeout, align 8, !dbg !2711, !tbaa !1926
  %call7 = call i32 @apr_socket_timeout_set(ptr noundef %17, i64 noundef %18), !dbg !2712
  br label %if.end8, !dbg !2713

if.end8:                                          ; preds = %if.then6, %if.end
  %19 = load i32, ptr %rv, align 4, !dbg !2714, !tbaa !1515
  %cmp9 = icmp ne i32 %19, 0, !dbg !2716
  br i1 %cmp9, label %land.lhs.true, label %if.end12, !dbg !2717

land.lhs.true:                                    ; preds = %if.end8
  %20 = load i32, ptr %rv, align 4, !dbg !2718, !tbaa !1515
  %cmp10 = icmp ne i32 %20, 70014, !dbg !2719
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2720

if.then11:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %buf, align 8, !dbg !2721, !tbaa !1296
  call void @apr_bucket_free(ptr noundef %21), !dbg !2723
  %22 = load i32, ptr %rv, align 4, !dbg !2724, !tbaa !1515
  store i32 %22, ptr %retval, align 4, !dbg !2725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2725

if.end12:                                         ; preds = %land.lhs.true, %if.end8
  %23 = load ptr, ptr %len.addr, align 8, !dbg !2726, !tbaa !1296
  %24 = load i64, ptr %23, align 8, !dbg !2727, !tbaa !1926
  %cmp13 = icmp ugt i64 %24, 0, !dbg !2728
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2729

if.then14:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6, !dbg !2730
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2644, metadata !DIExpression()), !dbg !2731
  %25 = load ptr, ptr %len.addr, align 8, !dbg !2732, !tbaa !1296
  %26 = load i64, ptr %25, align 8, !dbg !2733, !tbaa !1926
  %27 = load ptr, ptr %data, align 8, !dbg !2734, !tbaa !1296
  %counter = getelementptr inbounds %struct.socket_ex_data, ptr %27, i32 0, i32 1, !dbg !2735
  %28 = load ptr, ptr %counter, align 8, !dbg !2735, !tbaa !1314
  %29 = load i64, ptr %28, align 8, !dbg !2736, !tbaa !1926
  %add = add i64 %29, %26, !dbg !2736
  store i64 %add, ptr %28, align 8, !dbg !2736, !tbaa !1926
  %30 = load ptr, ptr %a.addr, align 8, !dbg !2737, !tbaa !1296
  %31 = load ptr, ptr %buf, align 8, !dbg !2738, !tbaa !1296
  %32 = load ptr, ptr %len.addr, align 8, !dbg !2739, !tbaa !1296
  %33 = load i64, ptr %32, align 8, !dbg !2740, !tbaa !1926
  %call15 = call ptr @apr_bucket_heap_make(ptr noundef %30, ptr noundef %31, i64 noundef %33, ptr noundef @apr_bucket_free), !dbg !2741
  store ptr %call15, ptr %a.addr, align 8, !dbg !2742, !tbaa !1296
  %34 = load ptr, ptr %a.addr, align 8, !dbg !2743, !tbaa !1296
  %data16 = getelementptr inbounds %struct.apr_bucket, ptr %34, i32 0, i32 4, !dbg !2744
  %35 = load ptr, ptr %data16, align 8, !dbg !2744, !tbaa !2630
  store ptr %35, ptr %h, align 8, !dbg !2745, !tbaa !1296
  %36 = load ptr, ptr %h, align 8, !dbg !2746, !tbaa !1296
  %alloc_len = getelementptr inbounds %struct.apr_bucket_heap, ptr %36, i32 0, i32 2, !dbg !2747
  store i64 8000, ptr %alloc_len, align 8, !dbg !2748, !tbaa !2749
  %37 = load ptr, ptr %buf, align 8, !dbg !2752, !tbaa !1296
  %38 = load ptr, ptr %str.addr, align 8, !dbg !2753, !tbaa !1296
  store ptr %37, ptr %38, align 8, !dbg !2754, !tbaa !1296
  br label %do.body, !dbg !2755

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap__a) #6, !dbg !2756
  tail call void @llvm.dbg.declare(metadata ptr %ap__a, metadata !2659, metadata !DIExpression()), !dbg !2756
  %39 = load ptr, ptr %a.addr, align 8, !dbg !2756, !tbaa !1296
  store ptr %39, ptr %ap__a, align 8, !dbg !2756, !tbaa !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap__b) #6, !dbg !2756
  tail call void @llvm.dbg.declare(metadata ptr %ap__b, metadata !2661, metadata !DIExpression()), !dbg !2756
  %40 = load ptr, ptr %data, align 8, !dbg !2756, !tbaa !1296
  %41 = load ptr, ptr %a.addr, align 8, !dbg !2756, !tbaa !1296
  %list17 = getelementptr inbounds %struct.apr_bucket, ptr %41, i32 0, i32 6, !dbg !2756
  %42 = load ptr, ptr %list17, align 8, !dbg !2756, !tbaa !2579
  %call18 = call ptr @bucket_socket_ex_create(ptr noundef %40, ptr noundef %42), !dbg !2756
  store ptr %call18, ptr %ap__b, align 8, !dbg !2756, !tbaa !1296
  br label %do.body19, !dbg !2756

do.body19:                                        ; preds = %do.body
  %43 = load ptr, ptr %ap__a, align 8, !dbg !2757, !tbaa !1296
  %44 = load ptr, ptr %ap__b, align 8, !dbg !2757, !tbaa !1296
  %link = getelementptr inbounds %struct.apr_bucket, ptr %44, i32 0, i32 0, !dbg !2757
  %prev = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 1, !dbg !2757
  store volatile ptr %43, ptr %prev, align 8, !dbg !2757, !tbaa !2267
  %45 = load ptr, ptr %ap__a, align 8, !dbg !2757, !tbaa !1296
  %link20 = getelementptr inbounds %struct.apr_bucket, ptr %45, i32 0, i32 0, !dbg !2757
  %next = getelementptr inbounds %struct.anon, ptr %link20, i32 0, i32 0, !dbg !2757
  %46 = load volatile ptr, ptr %next, align 8, !dbg !2757, !tbaa !2262
  %47 = load ptr, ptr %ap__b, align 8, !dbg !2757, !tbaa !1296
  %link21 = getelementptr inbounds %struct.apr_bucket, ptr %47, i32 0, i32 0, !dbg !2757
  %next22 = getelementptr inbounds %struct.anon, ptr %link21, i32 0, i32 0, !dbg !2757
  store volatile ptr %46, ptr %next22, align 8, !dbg !2757, !tbaa !2262
  %48 = load ptr, ptr %ap__b, align 8, !dbg !2757, !tbaa !1296
  %49 = load ptr, ptr %ap__a, align 8, !dbg !2757, !tbaa !1296
  %link23 = getelementptr inbounds %struct.apr_bucket, ptr %49, i32 0, i32 0, !dbg !2757
  %next24 = getelementptr inbounds %struct.anon, ptr %link23, i32 0, i32 0, !dbg !2757
  %50 = load volatile ptr, ptr %next24, align 8, !dbg !2757, !tbaa !2262
  %link25 = getelementptr inbounds %struct.apr_bucket, ptr %50, i32 0, i32 0, !dbg !2757
  %prev26 = getelementptr inbounds %struct.anon, ptr %link25, i32 0, i32 1, !dbg !2757
  store volatile ptr %48, ptr %prev26, align 8, !dbg !2757, !tbaa !2267
  %51 = load ptr, ptr %ap__b, align 8, !dbg !2757, !tbaa !1296
  %52 = load ptr, ptr %ap__a, align 8, !dbg !2757, !tbaa !1296
  %link27 = getelementptr inbounds %struct.apr_bucket, ptr %52, i32 0, i32 0, !dbg !2757
  %next28 = getelementptr inbounds %struct.anon, ptr %link27, i32 0, i32 0, !dbg !2757
  store volatile ptr %51, ptr %next28, align 8, !dbg !2757, !tbaa !2262
  br label %do.cond, !dbg !2757

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !2757

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap__b) #6, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap__a) #6, !dbg !2755
  br label %do.cond29, !dbg !2756

do.cond29:                                        ; preds = %do.end
  br label %do.end30, !dbg !2756

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6, !dbg !2759
  br label %if.end33, !dbg !2760

if.else:                                          ; preds = %if.end12
  %53 = load ptr, ptr %buf, align 8, !dbg !2761, !tbaa !1296
  call void @apr_bucket_free(ptr noundef %53), !dbg !2763
  %54 = load ptr, ptr %a.addr, align 8, !dbg !2764, !tbaa !1296
  %call31 = call ptr @apr_bucket_immortal_make(ptr noundef %54, ptr noundef @.str.25, i64 noundef 0), !dbg !2765
  store ptr %call31, ptr %a.addr, align 8, !dbg !2766, !tbaa !1296
  %55 = load ptr, ptr %a.addr, align 8, !dbg !2767, !tbaa !1296
  %data32 = getelementptr inbounds %struct.apr_bucket, ptr %55, i32 0, i32 4, !dbg !2768
  %56 = load ptr, ptr %data32, align 8, !dbg !2768, !tbaa !2630
  %57 = load ptr, ptr %str.addr, align 8, !dbg !2769, !tbaa !1296
  store ptr %56, ptr %57, align 8, !dbg !2770, !tbaa !1296
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.end30
  store i32 0, ptr %retval, align 4, !dbg !2771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2771

cleanup:                                          ; preds = %if.end33, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #6, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6, !dbg !2772
  %58 = load i32, ptr %retval, align 4, !dbg !2772
  ret i32 %58, !dbg !2772
}

declare i32 @apr_bucket_setaside_notimpl(ptr noundef, ptr noundef) #2

declare i32 @apr_bucket_split_notimpl(ptr noundef, i64 noundef) #2

declare i32 @apr_bucket_copy_notimpl(ptr noundef, ptr noundef) #2

declare !dbg !2773 i32 @apr_socket_timeout_get(ptr noundef, ptr noundef) #2

declare !dbg !2777 i32 @apr_socket_timeout_set(ptr noundef, i64 noundef) #2

declare !dbg !2780 i32 @apr_socket_recv(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2783 ptr @apr_bucket_heap_make(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !2786 ptr @apr_bucket_immortal_make(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2789 ptr @ap_proxy_canon_netloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2794 i32 @apr_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2797 ptr @strchr(ptr noundef, i32 noundef) #3

declare !dbg !2800 ptr @apr_pstrcat(ptr noundef, ...) #2

declare !dbg !2803 ptr @ap_proxy_canonenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !2806 void @ap_internal_redirect_handler(ptr noundef, ptr noundef) #2

declare !dbg !2810 ptr @ap_sub_req_lookup_file(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2813 i32 @ap_run_sub_req(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1279, !1280, !1281, !1282, !1283}
!llvm.ident = !{!1284}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mod_proxy_scgi.c", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/proxy", checksumkind: CSK_MD5, checksum: "8c2ea6844e0fc6d1051cb7d0654061bb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "scgi_sendfile_off", scope: !9, file: !2, line: 65, type: !33, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !971, globals: !982, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !28, !86, !110, !119, !127, !139, !144, !149, !161, !247, !277, !923, !929, !960, !964}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cmd_how", file: !12, line: 49, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "include/http_config.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "478a5811bd142d8034ca8ebc320f852f")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!15 = !DIEnumerator(name: "RAW_ARGS", value: 0)
!16 = !DIEnumerator(name: "TAKE1", value: 1)
!17 = !DIEnumerator(name: "TAKE2", value: 2)
!18 = !DIEnumerator(name: "ITERATE", value: 3)
!19 = !DIEnumerator(name: "ITERATE2", value: 4)
!20 = !DIEnumerator(name: "FLAG", value: 5)
!21 = !DIEnumerator(name: "NO_ARGS", value: 6)
!22 = !DIEnumerator(name: "TAKE12", value: 7)
!23 = !DIEnumerator(name: "TAKE3", value: 8)
!24 = !DIEnumerator(name: "TAKE23", value: 9)
!25 = !DIEnumerator(name: "TAKE123", value: 10)
!26 = !DIEnumerator(name: "TAKE13", value: 11)
!27 = !DIEnumerator(name: "TAKE_ARGV", value: 12)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !30, file: !29, line: 151, baseType: !13, size: 32, elements: !107)
!29 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_buckets.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "afcd28b2e200d46cb3a438f3ad8fc6de")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_type_t", file: !29, line: 131, size: 448, elements: !31)
!31 = !{!32, !35, !37, !38, !43, !90, !98, !102}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !29, line: 135, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "num_func", scope: !30, file: !29, line: 140, baseType: !36, size: 32, offset: 64)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "is_metadata", scope: !30, file: !29, line: 156, baseType: !28, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !30, file: !29, line: 164, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !30, file: !29, line: 176, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !49, !83, !84, !85}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_status_t", file: !48, line: 44, baseType: !36)
!48 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_errno.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "571a7b9d4a9f11f6d27db63c8ba4bc85")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket", file: !29, line: 121, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket", file: !29, line: 224, size: 512, elements: !52)
!52 = !{!53, !60, !64, !70, !77, !78, !79}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !51, file: !29, line: 226, baseType: !54, size: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !29, line: 226, size: 128, elements: !55)
!55 = !{!56, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !29, line: 226, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !29, line: 226, baseType: !57, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !29, line: 228, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_type_t", file: !29, line: 126, baseType: !30)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !29, line: 234, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_size_t", file: !66, line: 379, baseType: !67)
!66 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "73077acfd8398d55139f48047843856b")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 70, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !51, file: !29, line: 242, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_off_t", file: !66, line: 381, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !73, line: 85, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 152, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !29, line: 244, baseType: !42, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !51, file: !29, line: 252, baseType: !39, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !51, file: !29, line: 254, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_alloc_t", file: !29, line: 123, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_alloc_t", file: !29, line: 123, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_read_type_e", file: !29, line: 60, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 57, baseType: !13, size: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "APR_BLOCK_READ", value: 0)
!89 = !DIEnumerator(name: "APR_NONBLOCK_READ", value: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "setaside", scope: !30, file: !29, line: 192, baseType: !91, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!47, !49, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_pool_t", file: !96, line: 60, baseType: !97)
!96 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_pools.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "ca846d53df1698194c1a577ccf147813")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_pool_t", file: !96, line: 60, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !30, file: !29, line: 203, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!47, !49, !65}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !30, file: !29, line: 211, baseType: !103, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!47, !49, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "APR_BUCKET_DATA", value: 0)
!109 = !DIEnumerator(name: "APR_BUCKET_METADATA", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 41, baseType: !13, size: 32, elements: !112)
!111 = !DIFile(filename: "include/util_filter.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "894e51124b630754ca6243e0c50426ad")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "AP_MODE_READBYTES", value: 0)
!114 = !DIEnumerator(name: "AP_MODE_GETLINE", value: 1)
!115 = !DIEnumerator(name: "AP_MODE_EATCRLF", value: 2)
!116 = !DIEnumerator(name: "AP_MODE_SPECULATIVE", value: 3)
!117 = !DIEnumerator(name: "AP_MODE_EXHAUSTIVE", value: 4)
!118 = !DIEnumerator(name: "AP_MODE_INIT", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 158, baseType: !13, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIEnumerator(name: "AP_FTYPE_RESOURCE", value: 10)
!122 = !DIEnumerator(name: "AP_FTYPE_CONTENT_SET", value: 20)
!123 = !DIEnumerator(name: "AP_FTYPE_PROTOCOL", value: 30)
!124 = !DIEnumerator(name: "AP_FTYPE_TRANSCODE", value: 40)
!125 = !DIEnumerator(name: "AP_FTYPE_CONNECTION", value: 50)
!126 = !DIEnumerator(name: "AP_FTYPE_NETWORK", value: 60)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1251, baseType: !13, size: 32, elements: !129)
!128 = !DIFile(filename: "include/httpd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "13796706810e88ffd526cf3216ebbaab")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138}
!130 = !DIEnumerator(name: "CONN_STATE_CHECK_REQUEST_LINE_READABLE", value: 0)
!131 = !DIEnumerator(name: "CONN_STATE_READ_REQUEST_LINE", value: 1)
!132 = !DIEnumerator(name: "CONN_STATE_HANDLER", value: 2)
!133 = !DIEnumerator(name: "CONN_STATE_WRITE_COMPLETION", value: 3)
!134 = !DIEnumerator(name: "CONN_STATE_SUSPENDED", value: 4)
!135 = !DIEnumerator(name: "CONN_STATE_LINGER", value: 5)
!136 = !DIEnumerator(name: "CONN_STATE_LINGER_NORMAL", value: 6)
!137 = !DIEnumerator(name: "CONN_STATE_LINGER_SHORT", value: 7)
!138 = !DIEnumerator(name: "CONN_STATE_NUM", value: 8)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1264, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "CONN_SENSE_DEFAULT", value: 0)
!142 = !DIEnumerator(name: "CONN_SENSE_WANT_READ", value: 1)
!143 = !DIEnumerator(name: "CONN_SENSE_WANT_WRITE", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1136, baseType: !13, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "AP_CONN_UNKNOWN", value: 0)
!147 = !DIEnumerator(name: "AP_CONN_CLOSE", value: 1)
!148 = !DIEnumerator(name: "AP_CONN_KEEPALIVE", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 62, baseType: !13, size: 32, elements: !151)
!150 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_info.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "58895203e42ced4eaee1557b60315f00")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIEnumerator(name: "APR_NOFILE", value: 0)
!153 = !DIEnumerator(name: "APR_REG", value: 1)
!154 = !DIEnumerator(name: "APR_DIR", value: 2)
!155 = !DIEnumerator(name: "APR_CHR", value: 3)
!156 = !DIEnumerator(name: "APR_BLK", value: 4)
!157 = !DIEnumerator(name: "APR_PIPE", value: 5)
!158 = !DIEnumerator(name: "APR_LNK", value: 6)
!159 = !DIEnumerator(name: "APR_SOCK", value: 7)
!160 = !DIEnumerator(name: "APR_UNKFILE", value: 127)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !163, file: !162, line: 433, baseType: !13, size: 32, elements: !273)
!162 = !DIFile(filename: "./mod_proxy.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/proxy", checksumkind: CSK_MD5, checksum: "054a5ab46cf39a749e57e3d480c5bec4")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 414, size: 11584, elements: !164)
!164 = !{!165, !169, !173, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !196, !197, !198, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !260, !261, !262, !266, !267, !268, !269}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !162, line: 415, baseType: !166, size: 768)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 768, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !163, file: !162, line: 416, baseType: !170, size: 128, offset: 768)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !163, file: !162, line: 417, baseType: !174, size: 512, offset: 896)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !163, file: !162, line: 418, baseType: !174, size: 512, offset: 1408)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !163, file: !162, line: 419, baseType: !174, size: 512, offset: 1920)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flusher", scope: !163, file: !162, line: 420, baseType: !170, size: 128, offset: 2432)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uds_path", scope: !163, file: !162, line: 421, baseType: !166, size: 768, offset: 2560)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lbset", scope: !163, file: !162, line: 422, baseType: !36, size: 32, offset: 3328)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !163, file: !162, line: 423, baseType: !36, size: 32, offset: 3360)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "lbstatus", scope: !163, file: !162, line: 424, baseType: !36, size: 32, offset: 3392)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lbfactor", scope: !163, file: !162, line: 425, baseType: !36, size: 32, offset: 3424)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !163, file: !162, line: 426, baseType: !36, size: 32, offset: 3456)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "smax", scope: !163, file: !162, line: 427, baseType: !36, size: 32, offset: 3488)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "hmax", scope: !163, file: !162, line: 428, baseType: !36, size: 32, offset: 3520)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flush_wait", scope: !163, file: !162, line: 429, baseType: !36, size: 32, offset: 3552)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !163, file: !162, line: 430, baseType: !36, size: 32, offset: 3584)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !163, file: !162, line: 431, baseType: !191, size: 64, offset: 3616)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_hashes", file: !162, line: 410, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 407, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !192, file: !162, line: 408, baseType: !13, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fnv", scope: !192, file: !162, line: 409, baseType: !13, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !163, file: !162, line: 432, baseType: !13, size: 32, offset: 3680)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flush_packets", scope: !163, file: !162, line: 437, baseType: !161, size: 32, offset: 3712)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !163, file: !162, line: 438, baseType: !199, size: 64, offset: 3776)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_time_t", file: !200, line: 45, baseType: !201)
!200 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_time.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "1a8b9732d4ee010f71e3eb03e6e3a16e")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int64_t", file: !66, line: 371, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !203, line: 27, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 44, baseType: !76)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "error_time", scope: !163, file: !162, line: 439, baseType: !199, size: 64, offset: 3840)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !163, file: !162, line: 440, baseType: !207, size: 64, offset: 3904)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_interval_time_t", file: !200, line: 55, baseType: !201)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !163, file: !162, line: 442, baseType: !207, size: 64, offset: 3968)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !163, file: !162, line: 443, baseType: !207, size: 64, offset: 4032)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "acquire", scope: !163, file: !162, line: 444, baseType: !207, size: 64, offset: 4096)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ping_timeout", scope: !163, file: !162, line: 445, baseType: !207, size: 64, offset: 4160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "conn_timeout", scope: !163, file: !162, line: 446, baseType: !207, size: 64, offset: 4224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer_size", scope: !163, file: !162, line: 447, baseType: !65, size: 64, offset: 4288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffer_size", scope: !163, file: !162, line: 448, baseType: !65, size: 64, offset: 4352)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "elected", scope: !163, file: !162, line: 449, baseType: !65, size: 64, offset: 4416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !163, file: !162, line: 450, baseType: !65, size: 64, offset: 4480)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !163, file: !162, line: 451, baseType: !218, size: 16, offset: 4544)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_port_t", file: !219, line: 230, baseType: !220)
!219 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_network_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "d28b53dbcb33f6acce926c2efb3f7365")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint16_t", file: !66, line: 331, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !163, file: !162, line: 452, baseType: !71, size: 64, offset: 4608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !163, file: !162, line: 453, baseType: !71, size: 64, offset: 4672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !163, file: !162, line: 454, baseType: !42, size: 64, offset: 4736)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !163, file: !162, line: 455, baseType: !13, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "disablereuse", scope: !163, file: !162, line: 456, baseType: !13, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "is_address_reusable", scope: !163, file: !162, line: 457, baseType: !13, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "retry_set", scope: !163, file: !162, line: 458, baseType: !13, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_set", scope: !163, file: !162, line: 459, baseType: !13, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_set", scope: !163, file: !162, line: 460, baseType: !13, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ping_timeout_set", scope: !163, file: !162, line: 461, baseType: !13, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "conn_timeout_set", scope: !163, file: !162, line: 462, baseType: !13, size: 1, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer_size_set", scope: !163, file: !162, line: 463, baseType: !13, size: 1, offset: 4808, flags: DIFlagBitField, extraData: i64 4800)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffer_size_set", scope: !163, file: !162, line: 464, baseType: !13, size: 1, offset: 4809, flags: DIFlagBitField, extraData: i64 4800)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_set", scope: !163, file: !162, line: 465, baseType: !13, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "disablereuse_set", scope: !163, file: !162, line: 466, baseType: !13, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "was_malloced", scope: !163, file: !162, line: 467, baseType: !13, size: 1, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "is_name_matchable", scope: !163, file: !162, line: 468, baseType: !13, size: 1, offset: 4813, flags: DIFlagBitField, extraData: i64 4800)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hcuri", scope: !163, file: !162, line: 469, baseType: !174, size: 512, offset: 4816)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hcexpr", scope: !163, file: !162, line: 470, baseType: !170, size: 128, offset: 5328)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "passes", scope: !163, file: !162, line: 471, baseType: !36, size: 32, offset: 5472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !163, file: !162, line: 472, baseType: !36, size: 32, offset: 5504)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !163, file: !162, line: 473, baseType: !36, size: 32, offset: 5536)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "fcount", scope: !163, file: !162, line: 474, baseType: !36, size: 32, offset: 5568)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !163, file: !162, line: 475, baseType: !246, size: 32, offset: 5600)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hcmethod_t", file: !162, line: 81, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 79, baseType: !13, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!249 = !DIEnumerator(name: "NONE", value: 0)
!250 = !DIEnumerator(name: "TCP", value: 1)
!251 = !DIEnumerator(name: "OPTIONS", value: 2)
!252 = !DIEnumerator(name: "HEAD", value: 3)
!253 = !DIEnumerator(name: "GET", value: 4)
!254 = !DIEnumerator(name: "CPING", value: 5)
!255 = !DIEnumerator(name: "PROVIDER", value: 6)
!256 = !DIEnumerator(name: "OPTIONS11", value: 7)
!257 = !DIEnumerator(name: "HEAD11", value: 8)
!258 = !DIEnumerator(name: "GET11", value: 9)
!259 = !DIEnumerator(name: "EOT", value: 10)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !163, file: !162, line: 476, baseType: !207, size: 64, offset: 5632)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !163, file: !162, line: 477, baseType: !170, size: 128, offset: 5696)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hostname_ex", scope: !163, file: !162, line: 478, baseType: !263, size: 2048, offset: 5824)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "response_field_size", scope: !163, file: !162, line: 479, baseType: !65, size: 64, offset: 7872)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "response_field_size_set", scope: !163, file: !162, line: 480, baseType: !13, size: 1, offset: 7936, flags: DIFlagBitField, extraData: i64 7936)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "secret", scope: !163, file: !162, line: 481, baseType: !174, size: 512, offset: 7944)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name_ex", scope: !163, file: !162, line: 482, baseType: !270, size: 3072, offset: 8456)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3072, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 384)
!273 = !{!274, !275, !276}
!274 = !DIEnumerator(name: "flush_off", value: 0)
!275 = !DIEnumerator(name: "flush_on", value: 1)
!276 = !DIEnumerator(name: "flush_auto", value: 2)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !278, file: !162, line: 165, baseType: !13, size: 32, elements: !955)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 149, size: 1536, elements: !279)
!279 = !{!280, !292, !293, !294, !295, !296, !297, !298, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !928, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "proxies", scope: !278, file: !162, line: 150, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_array_header_t", file: !283, line: 59, baseType: !284)
!283 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_tables.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "82dd315cfdbab9381cd05a1d2abe34a2")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_array_header_t", file: !283, line: 62, size: 256, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !284, file: !283, line: 64, baseType: !94, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !284, file: !283, line: 66, baseType: !36, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !284, file: !283, line: 68, baseType: !36, size: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !284, file: !283, line: 70, baseType: !36, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !284, file: !283, line: 72, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sec_proxy", scope: !278, file: !162, line: 151, baseType: !281, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !278, file: !162, line: 152, baseType: !281, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "noproxies", scope: !278, file: !162, line: 153, baseType: !281, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dirconn", scope: !278, file: !162, line: 154, baseType: !281, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "workers", scope: !278, file: !162, line: 155, baseType: !281, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "balancers", scope: !278, file: !162, line: 156, baseType: !281, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !278, file: !162, line: 157, baseType: !299, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_worker", file: !162, line: 110, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_worker", file: !162, line: 488, size: 512, elements: !302)
!302 = !{!303, !304, !305, !762, !765, !907, !908, !909}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !301, file: !162, line: 489, baseType: !191, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "local_status", scope: !301, file: !162, line: 490, baseType: !13, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cp", scope: !301, file: !162, line: 491, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_conn_pool", file: !162, line: 111, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_conn_pool", file: !162, line: 295, size: 320, elements: !309)
!309 = !{!310, !311, !397, !402, !761}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !308, file: !162, line: 296, baseType: !94, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !308, file: !162, line: 297, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_sockaddr_t", file: !219, line: 235, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_sockaddr_t", file: !219, line: 239, size: 1536, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !322, !327, !328, !329, !330, !331}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !314, file: !219, line: 241, baseType: !94, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !314, file: !219, line: 243, baseType: !291, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "servname", scope: !314, file: !219, line: 245, baseType: !291, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !314, file: !219, line: 247, baseType: !218, size: 16, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !314, file: !219, line: 249, baseType: !321, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int32_t", file: !66, line: 333, baseType: !36)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !314, file: !219, line: 251, baseType: !323, size: 32, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socklen_t", file: !66, line: 382, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !325, line: 33, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !75, line: 210, baseType: !13)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_len", scope: !314, file: !219, line: 253, baseType: !36, size: 32, offset: 288)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "addr_str_len", scope: !314, file: !219, line: 256, baseType: !36, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_ptr", scope: !314, file: !219, line: 259, baseType: !42, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !219, line: 262, baseType: !312, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !314, file: !219, line: 280, baseType: !332, size: 1024, offset: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !219, line: 264, size: 1024, elements: !333)
!333 = !{!334, !358, !379, !388}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !332, file: !219, line: 266, baseType: !335, size: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !336, line: 245, size: 128, elements: !337)
!336 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!337 = !{!338, !341, !346, !353}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !335, file: !336, line: 247, baseType: !339, size: 16)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !340, line: 28, baseType: !221)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !335, file: !336, line: 248, baseType: !342, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !336, line: 123, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !344, line: 25, baseType: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !75, line: 40, baseType: !221)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !335, file: !336, line: 249, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !336, line: 31, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !347, file: !336, line: 33, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !336, line: 30, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !344, line: 26, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !75, line: 42, baseType: !13)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !335, file: !336, line: 252, baseType: !354, size: 64, offset: 64)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !356)
!355 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!356 = !{!357}
!357 = !DISubrange(count: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !332, file: !219, line: 269, baseType: !359, size: 224)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !336, line: 260, size: 224, elements: !360)
!360 = !{!361, !362, !363, !364, !378}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !359, file: !336, line: 262, baseType: !339, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !359, file: !336, line: 263, baseType: !342, size: 16, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !359, file: !336, line: 264, baseType: !351, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !359, file: !336, line: 265, baseType: !365, size: 128, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !336, line: 219, size: 128, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !365, file: !336, line: 226, baseType: !368, size: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !336, line: 221, size: 128, elements: !369)
!369 = !{!370, !374, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !368, file: !336, line: 223, baseType: !371, size: 128)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 128, elements: !171)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !344, line: 24, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !75, line: 38, baseType: !355)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !368, file: !336, line: 224, baseType: !375, size: 128)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !356)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !368, file: !336, line: 225, baseType: !377, size: 128)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !5)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !359, file: !336, line: 266, baseType: !351, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sas", scope: !332, file: !219, line: 274, baseType: !380, size: 1024)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !325, line: 193, size: 1024, elements: !381)
!381 = !{!382, !383, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !380, file: !325, line: 195, baseType: !339, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !380, file: !325, line: 196, baseType: !384, size: 944, offset: 16)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 118)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !380, file: !325, line: 197, baseType: !69, size: 64, offset: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !332, file: !219, line: 278, baseType: !389, size: 880)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !390, line: 29, size: 880, elements: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !389, file: !390, line: 31, baseType: !339, size: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !389, file: !390, line: 32, baseType: !394, size: 864, offset: 16)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 108)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !308, file: !162, line: 298, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_reslist_t", file: !400, line: 42, baseType: !401)
!400 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_reslist.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "20701328b8ceeb9b569fc3b0d2300ce2")
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_reslist_t", file: !400, line: 42, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !308, file: !162, line: 299, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_conn_rec", file: !162, line: 287, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 262, size: 896, elements: !406)
!406 = !{!407, !739, !740, !741, !742, !743, !744, !745, !749, !750, !751, !753, !754, !755, !756, !757, !758, !759, !760}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !405, file: !162, line: 263, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_rec", file: !128, line: 809, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_rec", file: !128, line: 1145, size: 1664, elements: !411)
!411 = !{!412, !413, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !491, !709, !710, !711, !713, !722, !723, !724, !725, !726, !727, !729, !730, !731, !732, !737, !738}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !410, file: !128, line: 1147, baseType: !94, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "base_server", scope: !410, file: !128, line: 1149, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_rec", file: !128, line: 807, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_rec", file: !128, line: 1315, size: 1536, elements: !417)
!417 = !{!418, !430, !431, !432, !437, !444, !447, !448, !449, !450, !451, !452, !453, !454, !455, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !416, file: !128, line: 1317, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "process_rec", file: !128, line: 805, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process_rec", file: !128, line: 822, size: 320, elements: !422)
!422 = !{!423, !424, !425, !426, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !421, file: !128, line: 824, baseType: !94, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pconf", scope: !421, file: !128, line: 826, baseType: !94, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !421, file: !128, line: 828, baseType: !33, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !421, file: !128, line: 830, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !421, file: !128, line: 832, baseType: !36, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !128, line: 1319, baseType: !414, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "error_fname", scope: !416, file: !128, line: 1324, baseType: !291, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !416, file: !128, line: 1326, baseType: !433, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_file_t", file: !435, line: 188, baseType: !436)
!435 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9f1a845f7255d07e28e3a10d24320b5d")
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_file_t", file: !150, line: 212, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !416, file: !128, line: 1328, baseType: !438, size: 128, offset: 256)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_logconf", file: !128, line: 1305, size: 128, elements: !439)
!439 = !{!440, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "module_levels", scope: !438, file: !128, line: 1307, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !438, file: !128, line: 1310, baseType: !36, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "module_config", scope: !416, file: !128, line: 1334, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_conf_vector_t", file: !128, line: 791, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_defaults", scope: !416, file: !128, line: 1336, baseType: !445, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "defn_name", scope: !416, file: !128, line: 1339, baseType: !33, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "defn_line_number", scope: !416, file: !128, line: 1341, baseType: !13, size: 32, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !416, file: !128, line: 1343, baseType: !4, size: 8, offset: 608)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !416, file: !128, line: 1349, baseType: !218, size: 16, offset: 624)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "server_scheme", scope: !416, file: !128, line: 1351, baseType: !33, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "server_admin", scope: !416, file: !128, line: 1356, baseType: !291, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "server_hostname", scope: !416, file: !128, line: 1358, baseType: !291, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !416, file: !128, line: 1363, baseType: !456, size: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_addr_rec", file: !128, line: 1293, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_addr_rec", file: !128, line: 1294, size: 256, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !128, line: 1296, baseType: !456, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "virthost", scope: !458, file: !128, line: 1298, baseType: !291, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !458, file: !128, line: 1300, baseType: !312, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "host_port", scope: !458, file: !128, line: 1302, baseType: !218, size: 16, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !416, file: !128, line: 1365, baseType: !207, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !416, file: !128, line: 1367, baseType: !207, size: 64, offset: 960)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !416, file: !128, line: 1369, baseType: !36, size: 32, offset: 1024)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !416, file: !128, line: 1371, baseType: !36, size: 32, offset: 1056)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !416, file: !128, line: 1374, baseType: !281, size: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wild_names", scope: !416, file: !128, line: 1376, baseType: !281, size: 64, offset: 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !416, file: !128, line: 1379, baseType: !33, size: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pathlen", scope: !416, file: !128, line: 1381, baseType: !36, size: 32, offset: 1280)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_line", scope: !416, file: !128, line: 1384, baseType: !36, size: 32, offset: 1312)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fieldsize", scope: !416, file: !128, line: 1386, baseType: !36, size: 32, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fields", scope: !416, file: !128, line: 1388, baseType: !36, size: 32, offset: 1376)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !416, file: !128, line: 1391, baseType: !42, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_set", scope: !416, file: !128, line: 1396, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vhost_lookup_data", scope: !410, file: !128, line: 1151, baseType: !42, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !410, file: !128, line: 1155, baseType: !312, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "client_addr", scope: !410, file: !128, line: 1159, baseType: !312, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "client_ip", scope: !410, file: !128, line: 1164, baseType: !291, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "remote_host", scope: !410, file: !128, line: 1168, baseType: !291, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "remote_logname", scope: !410, file: !128, line: 1171, baseType: !291, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !410, file: !128, line: 1174, baseType: !291, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "local_host", scope: !410, file: !128, line: 1177, baseType: !291, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !410, file: !128, line: 1180, baseType: !76, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "conn_config", scope: !410, file: !128, line: 1183, baseType: !445, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !410, file: !128, line: 1186, baseType: !488, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_t", file: !283, line: 56, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_t", file: !283, line: 56, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !410, file: !128, line: 1188, baseType: !492, size: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_t", file: !111, line: 259, size: 320, elements: !494)
!494 = !{!495, !544, !545, !546, !708}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "frec", scope: !493, file: !111, line: 263, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_rec_t", file: !111, line: 199, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_rec_t", file: !111, line: 215, size: 448, elements: !499)
!499 = !{!500, !501, !529, !534, !536, !540, !542, !543}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !111, line: 217, baseType: !33, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "filter_func", scope: !498, file: !111, line: 220, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_func", file: !111, line: 146, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ap_filter_func", file: !111, line: 143, size: 64, elements: !504)
!504 = !{!505, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "out_func", scope: !503, file: !111, line: 144, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_out_filter_func", file: !111, line: 134, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!47, !510, !512}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_t", file: !111, line: 94, baseType: !493)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_brigade", file: !29, line: 119, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_brigade", file: !29, line: 258, size: 256, elements: !515)
!515 = !{!516, !517, !522}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !514, file: !29, line: 264, baseType: !94, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !514, file: !29, line: 273, baseType: !518, size: 128, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_list", file: !29, line: 273, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !29, line: 273, baseType: !57, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !518, file: !29, line: 273, baseType: !57, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !514, file: !29, line: 275, baseType: !80, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "in_func", scope: !503, file: !111, line: 145, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_in_filter_func", file: !111, line: 136, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!47, !510, !512, !528, !85, !71}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_input_mode_t", file: !111, line: 63, baseType: !110)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "filter_init_func", scope: !498, file: !111, line: 230, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_init_filter_func", file: !111, line: 141, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!36, !510}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !111, line: 233, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !498, file: !111, line: 236, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_provider_t", file: !111, line: 200, baseType: !539)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_provider_t", file: !111, line: 200, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ftype", scope: !498, file: !111, line: 243, baseType: !541, size: 32, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_type", file: !111, line: 184, baseType: !119)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !498, file: !111, line: 246, baseType: !36, size: 32, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "proto_flags", scope: !498, file: !111, line: 249, baseType: !13, size: 32, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !493, file: !111, line: 266, baseType: !42, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !111, line: 269, baseType: !510, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !493, file: !111, line: 275, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_rec", file: !128, line: 811, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_rec", file: !128, line: 838, size: 5888, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !616, !617, !628, !629, !630, !631, !632, !633, !634, !639, !660, !697, !698, !699, !700, !701, !702, !703}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !549, file: !128, line: 840, baseType: !94, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !549, file: !128, line: 842, baseType: !408, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !549, file: !128, line: 844, baseType: !414, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !128, line: 847, baseType: !547, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !549, file: !128, line: 849, baseType: !547, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !549, file: !128, line: 853, baseType: !547, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "the_request", scope: !549, file: !128, line: 859, baseType: !291, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "assbackwards", scope: !549, file: !128, line: 861, baseType: !36, size: 32, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "proxyreq", scope: !549, file: !128, line: 866, baseType: !36, size: 32, offset: 480)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !549, file: !128, line: 868, baseType: !36, size: 32, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "proto_num", scope: !549, file: !128, line: 870, baseType: !36, size: 32, offset: 544)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !549, file: !128, line: 872, baseType: !291, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !549, file: !128, line: 876, baseType: !33, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "request_time", scope: !549, file: !128, line: 879, baseType: !199, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !549, file: !128, line: 882, baseType: !33, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !549, file: !128, line: 884, baseType: !36, size: 32, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "method_number", scope: !549, file: !128, line: 891, baseType: !36, size: 32, offset: 864)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !549, file: !128, line: 893, baseType: !33, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !549, file: !128, line: 915, baseType: !201, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_xmethods", scope: !549, file: !128, line: 917, baseType: !281, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_methods", scope: !549, file: !128, line: 919, baseType: !572, size: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_method_list_t", file: !128, line: 634, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_method_list_t", file: !128, line: 643, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "method_mask", scope: !574, file: !128, line: 645, baseType: !201, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "method_list", scope: !574, file: !128, line: 647, baseType: !281, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bodyct", scope: !549, file: !128, line: 922, baseType: !71, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !549, file: !128, line: 924, baseType: !71, size: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !549, file: !128, line: 926, baseType: !199, size: 64, offset: 1280)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !549, file: !128, line: 931, baseType: !33, size: 64, offset: 1344)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "clength", scope: !549, file: !128, line: 933, baseType: !71, size: 64, offset: 1408)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !549, file: !128, line: 935, baseType: !36, size: 32, offset: 1472)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "read_body", scope: !549, file: !128, line: 940, baseType: !36, size: 32, offset: 1504)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "read_chunked", scope: !549, file: !128, line: 942, baseType: !36, size: 32, offset: 1536)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_100", scope: !549, file: !128, line: 944, baseType: !13, size: 32, offset: 1568)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "kept_body", scope: !549, file: !128, line: 946, baseType: !512, size: 64, offset: 1600)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "body_table", scope: !549, file: !128, line: 950, baseType: !488, size: 64, offset: 1664)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !549, file: !128, line: 952, baseType: !71, size: 64, offset: 1728)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !549, file: !128, line: 954, baseType: !71, size: 64, offset: 1792)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !549, file: !128, line: 969, baseType: !488, size: 64, offset: 1856)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !549, file: !128, line: 971, baseType: !488, size: 64, offset: 1920)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "err_headers_out", scope: !549, file: !128, line: 974, baseType: !488, size: 64, offset: 1984)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "subprocess_env", scope: !549, file: !128, line: 976, baseType: !488, size: 64, offset: 2048)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !549, file: !128, line: 978, baseType: !488, size: 64, offset: 2112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !549, file: !128, line: 985, baseType: !33, size: 64, offset: 2176)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !549, file: !128, line: 987, baseType: !33, size: 64, offset: 2240)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !549, file: !128, line: 990, baseType: !33, size: 64, offset: 2304)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "content_languages", scope: !549, file: !128, line: 992, baseType: !281, size: 64, offset: 2368)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vlist_validator", scope: !549, file: !128, line: 995, baseType: !291, size: 64, offset: 2432)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !549, file: !128, line: 998, baseType: !291, size: 64, offset: 2496)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ap_auth_type", scope: !549, file: !128, line: 1000, baseType: !291, size: 64, offset: 2560)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !549, file: !128, line: 1007, baseType: !291, size: 64, offset: 2624)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !549, file: !128, line: 1009, baseType: !291, size: 64, offset: 2688)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !549, file: !128, line: 1011, baseType: !291, size: 64, offset: 2752)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_filename", scope: !549, file: !128, line: 1015, baseType: !291, size: 64, offset: 2816)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "path_info", scope: !549, file: !128, line: 1017, baseType: !291, size: 64, offset: 2880)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !549, file: !128, line: 1019, baseType: !291, size: 64, offset: 2944)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "used_path_info", scope: !549, file: !128, line: 1029, baseType: !36, size: 32, offset: 3008)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "eos_sent", scope: !549, file: !128, line: 1032, baseType: !36, size: 32, offset: 3040)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "per_dir_config", scope: !549, file: !128, line: 1040, baseType: !445, size: 64, offset: 3072)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "request_config", scope: !549, file: !128, line: 1042, baseType: !445, size: 64, offset: 3136)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !549, file: !128, line: 1047, baseType: !614, size: 64, offset: 3200)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !549, file: !128, line: 1052, baseType: !33, size: 64, offset: 3264)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !549, file: !128, line: 1060, baseType: !618, size: 64, offset: 3328)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htaccess_result", file: !128, line: 781, size: 320, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !620, file: !128, line: 783, baseType: !33, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !620, file: !128, line: 785, baseType: !36, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !620, file: !128, line: 787, baseType: !36, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !620, file: !128, line: 789, baseType: !488, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !620, file: !128, line: 791, baseType: !445, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !128, line: 793, baseType: !618, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !549, file: !128, line: 1063, baseType: !492, size: 64, offset: 3392)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !549, file: !128, line: 1065, baseType: !492, size: 64, offset: 3456)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "proto_output_filters", scope: !549, file: !128, line: 1069, baseType: !492, size: 64, offset: 3520)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "proto_input_filters", scope: !549, file: !128, line: 1072, baseType: !492, size: 64, offset: 3584)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !549, file: !128, line: 1075, baseType: !36, size: 32, offset: 3648)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "no_local_copy", scope: !549, file: !128, line: 1077, baseType: !36, size: 32, offset: 3680)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "invoke_mtx", scope: !549, file: !128, line: 1082, baseType: !635, size: 64, offset: 3712)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_mutex_t", file: !637, line: 41, baseType: !638)
!637 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "333d6b386ebd5ebf2a57c53b3ab4b684")
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_mutex_t", file: !637, line: 41, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_uri", scope: !549, file: !128, line: 1085, baseType: !640, size: 704, offset: 3776)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uri_t", file: !641, line: 80, baseType: !642)
!641 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uri.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9269047179f727bd075392a12871b578")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_uri_t", file: !641, line: 85, size: 704, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !642, file: !641, line: 87, baseType: !291, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfo", scope: !642, file: !641, line: 89, baseType: !291, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !642, file: !641, line: 91, baseType: !291, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !642, file: !641, line: 93, baseType: !291, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !642, file: !641, line: 95, baseType: !291, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "port_str", scope: !642, file: !641, line: 97, baseType: !291, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !642, file: !641, line: 99, baseType: !291, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !642, file: !641, line: 101, baseType: !291, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !642, file: !641, line: 103, baseType: !291, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "hostent", scope: !642, file: !641, line: 106, baseType: !654, size: 64, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !641, line: 106, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !642, file: !641, line: 109, baseType: !218, size: 16, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !642, file: !641, line: 112, baseType: !13, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 656)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dns_looked_up", scope: !642, file: !641, line: 115, baseType: !13, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 656)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dns_resolved", scope: !642, file: !641, line: 117, baseType: !13, size: 1, offset: 658, flags: DIFlagBitField, extraData: i64 656)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "finfo", scope: !549, file: !128, line: 1087, baseType: !661, size: 960, offset: 4480)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_finfo_t", file: !150, line: 143, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_finfo_t", file: !150, line: 174, size: 960, elements: !663)
!663 = !{!664, !665, !666, !668, !670, !675, !679, !683, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !662, file: !150, line: 176, baseType: !94, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !662, file: !150, line: 179, baseType: !321, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "protection", scope: !662, file: !150, line: 181, baseType: !667, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_fileperms_t", file: !150, line: 125, baseType: !321)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !662, file: !150, line: 186, baseType: !669, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_filetype_e", file: !150, line: 72, baseType: !149)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !662, file: !150, line: 188, baseType: !671, size: 32, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uid_t", file: !672, line: 45, baseType: !673)
!672 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_user.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "724f26fd838740b0ca4b55f59030741b")
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !73, line: 79, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !75, line: 146, baseType: !13)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !662, file: !150, line: 190, baseType: !676, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_gid_t", file: !672, line: 54, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !73, line: 64, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !75, line: 147, baseType: !13)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !662, file: !150, line: 192, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ino_t", file: !66, line: 383, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !73, line: 47, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !75, line: 148, baseType: !69)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !662, file: !150, line: 194, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dev_t", file: !150, line: 135, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !73, line: 59, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !75, line: 145, baseType: !69)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !662, file: !150, line: 196, baseType: !321, size: 32, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !662, file: !150, line: 198, baseType: !71, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "csize", scope: !662, file: !150, line: 200, baseType: !71, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !662, file: !150, line: 202, baseType: !199, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !662, file: !150, line: 204, baseType: !199, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !662, file: !150, line: 206, baseType: !199, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !662, file: !150, line: 208, baseType: !33, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !150, line: 210, baseType: !33, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "filehand", scope: !662, file: !150, line: 212, baseType: !696, size: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_addr", scope: !549, file: !128, line: 1093, baseType: !312, size: 64, offset: 5440)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_ip", scope: !549, file: !128, line: 1094, baseType: !291, size: 64, offset: 5504)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_in", scope: !549, file: !128, line: 1097, baseType: !488, size: 64, offset: 5568)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_out", scope: !549, file: !128, line: 1099, baseType: !488, size: 64, offset: 5632)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_host", scope: !549, file: !128, line: 1104, baseType: !291, size: 64, offset: 5696)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !549, file: !128, line: 1108, baseType: !36, size: 32, offset: 5760)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bnotes", scope: !549, file: !128, line: 1113, baseType: !704, size: 64, offset: 5824)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_request_bnotes_t", file: !128, line: 662, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint64_t", file: !66, line: 372, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !344, line: 27, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !75, line: 45, baseType: !69)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !493, file: !111, line: 280, baseType: !408, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !410, file: !128, line: 1190, baseType: !492, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sbh", scope: !410, file: !128, line: 1192, baseType: !42, size: 64, offset: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !410, file: !128, line: 1194, baseType: !712, size: 64, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !410, file: !128, line: 1196, baseType: !714, size: 64, offset: 1088)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_t", file: !128, line: 813, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_state_t", file: !128, line: 1273, size: 64, elements: !717)
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !716, file: !128, line: 1275, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_e", file: !128, line: 1262, baseType: !127)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !716, file: !128, line: 1277, baseType: !721, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_sense_e", file: !128, line: 1268, baseType: !139)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_input_filters", scope: !410, file: !128, line: 1198, baseType: !36, size: 32, offset: 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_output_filters", scope: !410, file: !128, line: 1200, baseType: !36, size: 32, offset: 1184)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "clogging_input_filters", scope: !410, file: !128, line: 1205, baseType: !13, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !410, file: !128, line: 1209, baseType: !36, size: 2, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !410, file: !128, line: 1212, baseType: !13, size: 32, offset: 1248)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !410, file: !128, line: 1216, baseType: !728, size: 32, offset: 1280)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conn_keepalive_e", file: !128, line: 1140, baseType: !144)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "keepalives", scope: !410, file: !128, line: 1219, baseType: !36, size: 32, offset: 1312)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !410, file: !128, line: 1223, baseType: !614, size: 64, offset: 1344)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !410, file: !128, line: 1228, baseType: !33, size: 64, offset: 1408)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "current_thread", scope: !410, file: !128, line: 1237, baseType: !733, size: 64, offset: 1472)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_t", file: !735, line: 178, baseType: !736)
!735 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_proc.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "86521d0dbb7f1fbad577c4bb2abede6c")
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_t", file: !735, line: 178, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !410, file: !128, line: 1241, baseType: !408, size: 64, offset: 1536)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !410, file: !128, line: 1243, baseType: !36, size: 32, offset: 1600)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !405, file: !162, line: 264, baseType: !547, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !405, file: !162, line: 266, baseType: !299, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !405, file: !162, line: 267, baseType: !94, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !405, file: !162, line: 268, baseType: !33, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !405, file: !162, line: 269, baseType: !312, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "scpool", scope: !405, file: !162, line: 270, baseType: !94, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !405, file: !162, line: 271, baseType: !746, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socket_t", file: !219, line: 219, baseType: !748)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_socket_t", file: !219, line: 219, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !405, file: !162, line: 272, baseType: !42, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !405, file: !162, line: 273, baseType: !42, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !162, line: 274, baseType: !752, size: 32, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint32_t", file: !66, line: 334, baseType: !13)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !405, file: !162, line: 275, baseType: !218, size: 16, offset: 672)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "is_ssl", scope: !405, file: !162, line: 276, baseType: !13, size: 1, offset: 688, flags: DIFlagBitField, extraData: i64 688)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !405, file: !162, line: 277, baseType: !13, size: 1, offset: 689, flags: DIFlagBitField, extraData: i64 688)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "need_flush", scope: !405, file: !162, line: 278, baseType: !13, size: 1, offset: 690, flags: DIFlagBitField, extraData: i64 688)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "inreslist", scope: !405, file: !162, line: 280, baseType: !13, size: 1, offset: 691, flags: DIFlagBitField, extraData: i64 688)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uds_path", scope: !405, file: !162, line: 281, baseType: !33, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_hostname", scope: !405, file: !162, line: 282, baseType: !33, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_bb", scope: !405, file: !162, line: 283, baseType: !512, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dns_pool", scope: !308, file: !162, line: 300, baseType: !94, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !301, file: !162, line: 492, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_worker_shared", file: !162, line: 483, baseType: !163)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "balancer", scope: !301, file: !162, line: 493, baseType: !766, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_balancer", file: !162, line: 109, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_balancer", file: !162, line: 544, size: 960, elements: !769)
!769 = !{!770, !771, !772, !777, !831, !832, !833, !834, !835, !855, !860, !861, !864, !865, !900, !901, !902, !903, !904}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "workers", scope: !768, file: !162, line: 545, baseType: !281, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "errstatuses", scope: !768, file: !162, line: 546, baseType: !281, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wslot", scope: !768, file: !162, line: 547, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slotmem_instance_t", file: !775, line: 75, baseType: !776)
!775 = !DIFile(filename: "include/ap_slotmem.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "6ee60fa7abb26ba4349a0486e09ea431")
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_slotmem_instance_t", file: !775, line: 75, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !768, file: !162, line: 548, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slotmem_provider_t", file: !775, line: 192, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_slotmem_provider_t", file: !775, line: 86, size: 832, elements: !781)
!781 = !{!782, !783, !791, !797, !802, !807, !812, !813, !817, !818, !822, !826, !830}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !780, file: !775, line: 90, baseType: !33, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "doall", scope: !780, file: !775, line: 99, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!47, !773, !787, !42, !94}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slotmem_callback_fn_t", file: !775, line: 84, baseType: !789)
!789 = !DISubroutineType(types: !790)
!790 = !{!47, !42, !42, !94}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !780, file: !775, line: 111, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!47, !795, !33, !65, !13, !796, !94}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slotmem_type_t", file: !775, line: 55, baseType: !13)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !780, file: !775, line: 122, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!47, !795, !33, !84, !801, !94}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dptr", scope: !780, file: !775, line: 130, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!47, !773, !13, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !780, file: !775, line: 139, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!47, !773, !13, !811, !65}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !780, file: !775, line: 148, baseType: !808, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !780, file: !775, line: 154, baseType: !814, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!13, !773}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_free_slots", scope: !780, file: !775, line: 162, baseType: !814, size: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "slot_size", scope: !780, file: !775, line: 168, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!65, !773}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !780, file: !775, line: 175, baseType: !823, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!47, !773, !801}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !780, file: !775, line: 182, baseType: !827, size: 64, offset: 704)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!47, !773, !13}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fgrab", scope: !780, file: !775, line: 189, baseType: !827, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "growth", scope: !768, file: !162, line: 549, baseType: !36, size: 32, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "max_workers", scope: !768, file: !162, line: 550, baseType: !36, size: 32, offset: 288)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !768, file: !162, line: 551, baseType: !191, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wupdated", scope: !768, file: !162, line: 552, baseType: !199, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lbmethod", scope: !768, file: !162, line: 553, baseType: !836, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_balancer_method", file: !162, line: 112, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_balancer_method", file: !162, line: 568, size: 384, elements: !839)
!839 = !{!840, !841, !845, !846, !850, !851}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !162, line: 569, baseType: !33, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "finder", scope: !838, file: !162, line: 570, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!299, !766, !547}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !838, file: !162, line: 572, baseType: !42, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !838, file: !162, line: 573, baseType: !847, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!47, !766, !414}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !838, file: !162, line: 574, baseType: !847, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "updatelbstatus", scope: !838, file: !162, line: 575, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!47, !766, !299, !414}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gmutex", scope: !768, file: !162, line: 554, baseType: !856, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_global_mutex_t", file: !858, line: 47, baseType: !859)
!858 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_global_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "3395409b8bc15f5cf566602cb6137726")
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_global_mutex_t", file: !858, line: 47, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tmutex", scope: !768, file: !162, line: 556, baseType: !635, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sconf", scope: !768, file: !162, line: 558, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_server_conf", file: !162, line: 207, baseType: !278)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !768, file: !162, line: 559, baseType: !42, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !768, file: !162, line: 560, baseType: !866, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_balancer_shared", file: !162, line: 540, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 512, size: 4352, elements: !869)
!869 = !{!870, !871, !872, !873, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_path", scope: !868, file: !162, line: 513, baseType: !174, size: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !868, file: !162, line: 514, baseType: !174, size: 512, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lbpname", scope: !868, file: !162, line: 515, baseType: !170, size: 128, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !868, file: !162, line: 516, baseType: !874, size: 296, offset: 1152)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 37)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !868, file: !162, line: 517, baseType: !166, size: 768, offset: 1448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sname", scope: !868, file: !162, line: 518, baseType: !166, size: 768, offset: 2216)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "vpath", scope: !868, file: !162, line: 519, baseType: !174, size: 512, offset: 2984)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "vhost", scope: !868, file: !162, line: 520, baseType: !174, size: 512, offset: 3496)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !868, file: !162, line: 521, baseType: !207, size: 64, offset: 4032)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "wupdated", scope: !868, file: !162, line: 522, baseType: !199, size: 64, offset: 4096)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "max_attempts", scope: !868, file: !162, line: 523, baseType: !36, size: 32, offset: 4160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !868, file: !162, line: 524, baseType: !36, size: 32, offset: 4192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !868, file: !162, line: 525, baseType: !191, size: 64, offset: 4224)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_force", scope: !868, file: !162, line: 526, baseType: !13, size: 1, offset: 4288, flags: DIFlagBitField, extraData: i64 4288)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "scolonsep", scope: !868, file: !162, line: 527, baseType: !13, size: 1, offset: 4289, flags: DIFlagBitField, extraData: i64 4288)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "max_attempts_set", scope: !868, file: !162, line: 528, baseType: !13, size: 1, offset: 4290, flags: DIFlagBitField, extraData: i64 4288)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "was_malloced", scope: !868, file: !162, line: 529, baseType: !13, size: 1, offset: 4291, flags: DIFlagBitField, extraData: i64 4288)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !868, file: !162, line: 530, baseType: !13, size: 1, offset: 4292, flags: DIFlagBitField, extraData: i64 4288)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vhosted", scope: !868, file: !162, line: 531, baseType: !13, size: 1, offset: 4293, flags: DIFlagBitField, extraData: i64 4288)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !868, file: !162, line: 532, baseType: !13, size: 1, offset: 4294, flags: DIFlagBitField, extraData: i64 4288)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "forcerecovery", scope: !868, file: !162, line: 533, baseType: !13, size: 1, offset: 4295, flags: DIFlagBitField, extraData: i64 4288)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_separator", scope: !868, file: !162, line: 534, baseType: !4, size: 8, offset: 4296)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "forcerecovery_set", scope: !868, file: !162, line: 535, baseType: !13, size: 1, offset: 4304, flags: DIFlagBitField, extraData: i64 4304)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "scolonsep_set", scope: !868, file: !162, line: 536, baseType: !13, size: 1, offset: 4305, flags: DIFlagBitField, extraData: i64 4304)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_force_set", scope: !868, file: !162, line: 537, baseType: !13, size: 1, offset: 4306, flags: DIFlagBitField, extraData: i64 4304)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_set", scope: !868, file: !162, line: 538, baseType: !13, size: 1, offset: 4307, flags: DIFlagBitField, extraData: i64 4304)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_separator_set", scope: !868, file: !162, line: 539, baseType: !13, size: 1, offset: 4308, flags: DIFlagBitField, extraData: i64 4304)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "failontimeout", scope: !768, file: !162, line: 561, baseType: !36, size: 32, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "failontimeout_set", scope: !768, file: !162, line: 562, baseType: !13, size: 1, offset: 864, flags: DIFlagBitField, extraData: i64 864)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "growth_set", scope: !768, file: !162, line: 563, baseType: !13, size: 1, offset: 865, flags: DIFlagBitField, extraData: i64 864)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lbmethod_set", scope: !768, file: !162, line: 564, baseType: !13, size: 1, offset: 866, flags: DIFlagBitField, extraData: i64 864)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "section_config", scope: !768, file: !162, line: 565, baseType: !905, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conf_vector_t", file: !12, line: 509, baseType: !446)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tmutex", scope: !301, file: !162, line: 495, baseType: !635, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !301, file: !162, line: 497, baseType: !42, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "section_config", scope: !301, file: !162, line: 498, baseType: !905, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !278, file: !162, line: 158, baseType: !299, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !278, file: !162, line: 159, baseType: !33, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !278, file: !162, line: 160, baseType: !33, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !278, file: !162, line: 161, baseType: !94, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !278, file: !162, line: 162, baseType: !36, size: 32, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "max_balancers", scope: !278, file: !162, line: 163, baseType: !36, size: 32, offset: 800)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "bgrowth", scope: !278, file: !162, line: 164, baseType: !36, size: 32, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "viaopt", scope: !278, file: !162, line: 170, baseType: !277, size: 32, offset: 864)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer_size", scope: !278, file: !162, line: 171, baseType: !65, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffer_size", scope: !278, file: !162, line: 172, baseType: !65, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "maxfwd", scope: !278, file: !162, line: 173, baseType: !76, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !278, file: !162, line: 174, baseType: !207, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "badopt", scope: !278, file: !162, line: 179, baseType: !923, size: 32, offset: 1152)
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !278, file: !162, line: 175, baseType: !13, size: 32, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIEnumerator(name: "bad_error", value: 0)
!926 = !DIEnumerator(name: "bad_ignore", value: 1)
!927 = !DIEnumerator(name: "bad_body", value: 2)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_status", scope: !278, file: !162, line: 184, baseType: !929, size: 32, offset: 1184)
!929 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !278, file: !162, line: 180, baseType: !13, size: 32, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIEnumerator(name: "status_off", value: 0)
!932 = !DIEnumerator(name: "status_on", value: 1)
!933 = !DIEnumerator(name: "status_full", value: 2)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "source_address", scope: !278, file: !162, line: 185, baseType: !312, size: 64, offset: 1216)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !278, file: !162, line: 186, baseType: !856, size: 64, offset: 1280)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bslot", scope: !278, file: !162, line: 187, baseType: !773, size: 64, offset: 1344)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !278, file: !162, line: 188, baseType: !778, size: 64, offset: 1408)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "req_set", scope: !278, file: !162, line: 190, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "viaopt_set", scope: !278, file: !162, line: 191, baseType: !13, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer_size_set", scope: !278, file: !162, line: 192, baseType: !13, size: 1, offset: 1474, flags: DIFlagBitField, extraData: i64 1472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "io_buffer_size_set", scope: !278, file: !162, line: 193, baseType: !13, size: 1, offset: 1475, flags: DIFlagBitField, extraData: i64 1472)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "maxfwd_set", scope: !278, file: !162, line: 194, baseType: !13, size: 1, offset: 1476, flags: DIFlagBitField, extraData: i64 1472)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_set", scope: !278, file: !162, line: 195, baseType: !13, size: 1, offset: 1477, flags: DIFlagBitField, extraData: i64 1472)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "badopt_set", scope: !278, file: !162, line: 196, baseType: !13, size: 1, offset: 1478, flags: DIFlagBitField, extraData: i64 1472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_status_set", scope: !278, file: !162, line: 197, baseType: !13, size: 1, offset: 1479, flags: DIFlagBitField, extraData: i64 1472)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "source_address_set", scope: !278, file: !162, line: 198, baseType: !13, size: 1, offset: 1480, flags: DIFlagBitField, extraData: i64 1472)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bgrowth_set", scope: !278, file: !162, line: 199, baseType: !13, size: 1, offset: 1481, flags: DIFlagBitField, extraData: i64 1472)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bal_persist", scope: !278, file: !162, line: 200, baseType: !13, size: 1, offset: 1482, flags: DIFlagBitField, extraData: i64 1472)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !278, file: !162, line: 201, baseType: !13, size: 1, offset: 1483, flags: DIFlagBitField, extraData: i64 1472)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_set", scope: !278, file: !162, line: 202, baseType: !13, size: 1, offset: 1484, flags: DIFlagBitField, extraData: i64 1472)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ppinherit", scope: !278, file: !162, line: 203, baseType: !13, size: 1, offset: 1485, flags: DIFlagBitField, extraData: i64 1472)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ppinherit_set", scope: !278, file: !162, line: 204, baseType: !13, size: 1, offset: 1486, flags: DIFlagBitField, extraData: i64 1472)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "map_encoded_one", scope: !278, file: !162, line: 205, baseType: !13, size: 1, offset: 1487, flags: DIFlagBitField, extraData: i64 1472)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "map_encoded_all", scope: !278, file: !162, line: 206, baseType: !13, size: 1, offset: 1488, flags: DIFlagBitField, extraData: i64 1472)
!955 = !{!956, !957, !958, !959}
!956 = !DIEnumerator(name: "via_off", value: 0)
!957 = !DIEnumerator(name: "via_on", value: 1)
!958 = !DIEnumerator(name: "via_block", value: 2)
!959 = !DIEnumerator(name: "via_full", value: 3)
!960 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 55, baseType: !13, size: 32, elements: !961)
!961 = !{!962, !963}
!962 = !DIEnumerator(name: "scgi_internal_redirect", value: 0)
!963 = !DIEnumerator(name: "scgi_sendfile", value: 1)
!964 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enctype", file: !162, line: 75, baseType: !13, size: 32, elements: !965)
!965 = !{!966, !967, !968, !969, !970}
!966 = !DIEnumerator(name: "enc_path", value: 0)
!967 = !DIEnumerator(name: "enc_search", value: 1)
!968 = !DIEnumerator(name: "enc_user", value: 2)
!969 = !DIEnumerator(name: "enc_fpath", value: 3)
!970 = !DIEnumerator(name: "enc_parm", value: 4)
!971 = !{!42, !972, !975, !65, !58, !291, !76, !806}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_entry_t", file: !283, line: 78, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_entry_t", file: !283, line: 81, size: 192, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !977, file: !283, line: 83, baseType: !291, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !977, file: !283, line: 87, baseType: !291, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "key_checksum", scope: !977, file: !283, line: 90, baseType: !752, size: 32, offset: 128)
!982 = !{!0, !7, !983, !988, !990, !992, !997, !999, !1004, !1137, !1142, !1147, !1152, !1157, !1162, !1164, !1167, !1172, !1175, !1180, !1182, !1187, !1192, !1194, !1196, !1198, !1200, !1205, !1210, !1215, !1220, !1225, !1230, !1232, !1237, !1242, !1244, !1246, !1248, !1253, !1255, !1260, !1265, !1267, !1269, !1274}
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !985, isLocal: true, isDefinition: true)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 11)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(name: "scgi_sendfile_on", scope: !9, file: !2, line: 66, type: !33, isLocal: false, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(name: "scgi_internal_redirect_off", scope: !9, file: !2, line: 67, type: !33, isLocal: false, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !994, isLocal: true, isDefinition: true)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 9)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(name: "scgi_internal_redirect_on", scope: !9, file: !2, line: 68, type: !33, isLocal: false, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !2, line: 667, type: !1001, isLocal: true, isDefinition: true)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 17)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(name: "proxy_scgi_module", scope: !9, file: !2, line: 666, type: !1006, isLocal: false, isDefinition: true)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "module", file: !12, line: 344, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_struct", file: !12, line: 345, size: 896, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1016, !1017, !1021, !1025, !1029, !1033, !1034, !1132, !1136}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1007, file: !12, line: 349, baseType: !36, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !1007, file: !12, line: 352, baseType: !36, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "module_index", scope: !1007, file: !12, line: 354, baseType: !36, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1007, file: !12, line: 357, baseType: !33, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_load_handle", scope: !1007, file: !12, line: 359, baseType: !42, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !12, line: 364, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1007, file: !12, line: 368, baseType: !69, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_args", scope: !1007, file: !12, line: 374, baseType: !1018, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !419}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "create_dir_config", scope: !1007, file: !12, line: 381, baseType: !1022, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!42, !94, !291}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "merge_dir_config", scope: !1007, file: !12, line: 389, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!42, !94, !42, !42}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_config", scope: !1007, file: !12, line: 396, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!42, !94, !414}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "merge_server_config", scope: !1007, file: !12, line: 404, baseType: !1026, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !1007, file: !12, line: 409, baseType: !1035, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_rec", file: !12, line: 203, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_struct", file: !12, line: 204, size: 320, elements: !1039)
!1039 = !{!1040, !1041, !1128, !1129, !1130, !1131}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1038, file: !12, line: 206, baseType: !33, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1038, file: !12, line: 208, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_func", file: !12, line: 101, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 82, size: 64, elements: !1044)
!1044 = !{!1045, !1105, !1109, !1115, !1116, !1120, !1124}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "no_args", scope: !1043, file: !12, line: 84, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!33, !1049, !42}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_parms", file: !12, line: 74, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_parms_struct", file: !12, line: 288, size: 960, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1080, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1051, file: !12, line: 290, baseType: !42, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !1051, file: !12, line: 292, baseType: !36, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !1051, file: !12, line: 294, baseType: !36, size: 32, offset: 96)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !1051, file: !12, line: 296, baseType: !488, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "limited", scope: !1051, file: !12, line: 298, baseType: !201, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "limited_xmethods", scope: !1051, file: !12, line: 300, baseType: !281, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "xlimited", scope: !1051, file: !12, line: 302, baseType: !572, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "config_file", scope: !1051, file: !12, line: 305, baseType: !1061, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_configfile_t", file: !12, line: 267, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_configfile_t", file: !12, line: 268, size: 384, elements: !1064)
!1064 = !{!1065, !1069, !1073, !1077, !1078, !1079}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "getch", scope: !1063, file: !12, line: 270, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!47, !291, !42}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "getstr", scope: !1063, file: !12, line: 272, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!47, !42, !65, !42}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1063, file: !12, line: 274, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!47, !42}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1063, file: !12, line: 276, baseType: !42, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1063, file: !12, line: 278, baseType: !33, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1063, file: !12, line: 280, baseType: !13, size: 32, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !1051, file: !12, line: 307, baseType: !1081, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_directive_t", file: !1083, line: 35, baseType: !1084)
!1083 = !DIFile(filename: "include/util_cfgtree.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "c91452b9a51fb2ed560e306e1998c613")
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_directive_t", file: !1083, line: 46, size: 576, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1090, !1091, !1092, !1093, !1094, !1095}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !1084, file: !1083, line: 48, baseType: !33, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1084, file: !1083, line: 51, baseType: !33, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !1083, line: 53, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !1084, file: !1083, line: 55, baseType: !1089, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1084, file: !1083, line: 57, baseType: !1089, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1084, file: !1083, line: 60, baseType: !42, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1084, file: !1083, line: 64, baseType: !33, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "line_num", scope: !1084, file: !1083, line: 66, baseType: !36, size: 32, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1084, file: !1083, line: 73, baseType: !1089, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1051, file: !12, line: 310, baseType: !94, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !1051, file: !12, line: 313, baseType: !94, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1051, file: !12, line: 315, baseType: !414, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1051, file: !12, line: 322, baseType: !291, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1051, file: !12, line: 324, baseType: !1035, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1051, file: !12, line: 327, baseType: !445, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "err_directive", scope: !1051, file: !12, line: 329, baseType: !1103, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "raw_args", scope: !1043, file: !12, line: 86, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!33, !1049, !42, !33}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "take_argv", scope: !1043, file: !12, line: 89, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!33, !1049, !42, !36, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "take1", scope: !1043, file: !12, line: 92, baseType: !1106, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "take2", scope: !1043, file: !12, line: 94, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!33, !1049, !42, !33, !33}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "take3", scope: !1043, file: !12, line: 97, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!33, !1049, !42, !33, !33, !33}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1043, file: !12, line: 100, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!33, !1049, !42, !36}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_data", scope: !1038, file: !12, line: 210, baseType: !42, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "req_override", scope: !1038, file: !12, line: 212, baseType: !36, size: 32, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "args_how", scope: !1038, file: !12, line: 214, baseType: !11, size: 32, offset: 224)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "errmsg", scope: !1038, file: !12, line: 217, baseType: !33, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "register_hooks", scope: !1007, file: !12, line: 417, baseType: !1133, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !94}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !12, line: 420, baseType: !36, size: 32, offset: 832)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !1139, isLocal: true, isDefinition: true)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 18)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !1144, isLocal: true, isDefinition: true)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 63)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 650, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 26)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 650, type: !1154, isLocal: true, isDefinition: true)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 52)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(name: "scgi_cmds", scope: !9, file: !2, line: 644, type: !1159, isLocal: true, isDefinition: true)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 960, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 3)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !3, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !1166, isLocal: true, isDefinition: true)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !1160)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !1169, isLocal: true, isDefinition: true)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 15)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !1174, isLocal: true, isDefinition: true)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !356)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(name: "aplog_module_index", scope: !9, file: !1177, line: 148, type: !1178, isLocal: true, isDefinition: true)
!1177 = !DIFile(filename: "include/http_log.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "ce7bde9ead508f1c34c81b1931b44b16")
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !1149, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !1184, isLocal: true, isDefinition: true)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 5)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !1189, isLocal: true, isDefinition: true)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 53)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !1139, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !1169, isLocal: true, isDefinition: true)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !3, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !1184, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !1202, isLocal: true, isDefinition: true)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 2)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !1207, isLocal: true, isDefinition: true)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 38)
!1210 = !DIGlobalVariableExpression(var: !1211, expr: !DIExpression())
!1211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !1212, isLocal: true, isDefinition: true)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 39)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !1217, isLocal: true, isDefinition: true)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 51)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !1222, isLocal: true, isDefinition: true)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 46)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression())
!1226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !1227, isLocal: true, isDefinition: true)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 10)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "bucket_type_socket_ex", scope: !9, file: !2, line: 144, type: !62, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !1234, isLocal: true, isDefinition: true)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 1)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !1239, isLocal: true, isDefinition: true)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 34)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !3, isLocal: true, isDefinition: true)
!1244 = !DIGlobalVariableExpression(var: !1245, expr: !DIExpression())
!1245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !1202, isLocal: true, isDefinition: true)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !1202, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !1250, isLocal: true, isDefinition: true)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 14)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression())
!1254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !1202, isLocal: true, isDefinition: true)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !1257, isLocal: true, isDefinition: true)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 20)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !1262, isLocal: true, isDefinition: true)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 33)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !3, isLocal: true, isDefinition: true)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression())
!1268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !1169, isLocal: true, isDefinition: true)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !1271, isLocal: true, isDefinition: true)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 31)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !1276, isLocal: true, isDefinition: true)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 86)
!1279 = !{i32 7, !"Dwarf Version", i32 5}
!1280 = !{i32 2, !"Debug Info Version", i32 3}
!1281 = !{i32 1, !"wchar_size", i32 4}
!1282 = !{i32 8, !"PIC Level", i32 2}
!1283 = !{i32 7, !"uwtable", i32 2}
!1284 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1285 = distinct !DISubprogram(name: "create_scgi_config", scope: !2, file: !2, line: 585, type: !1023, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DILocalVariable(name: "p", arg: 1, scope: !1285, file: !2, line: 585, type: !94)
!1288 = !DILocalVariable(name: "dummy", arg: 2, scope: !1285, file: !2, line: 585, type: !291)
!1289 = !DILocalVariable(name: "conf", scope: !1285, file: !2, line: 587, type: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "scgi_config", file: !2, line: 73, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 70, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1292, file: !2, line: 71, baseType: !33, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "internal_redirect", scope: !1292, file: !2, line: 72, baseType: !33, size: 64, offset: 64)
!1296 = !{!1297, !1297, i64 0}
!1297 = !{!"any pointer", !1298, i64 0}
!1298 = !{!"omnipotent char", !1299, i64 0}
!1299 = !{!"Simple C/C++ TBAA"}
!1300 = !DILocation(line: 585, column: 45, scope: !1285)
!1301 = !DILocation(line: 585, column: 54, scope: !1285)
!1302 = !DILocation(line: 587, column: 5, scope: !1285)
!1303 = !DILocation(line: 587, column: 18, scope: !1285)
!1304 = !DILocation(line: 587, column: 34, scope: !1285)
!1305 = !DILocation(line: 587, column: 23, scope: !1285)
!1306 = !DILocation(line: 589, column: 5, scope: !1285)
!1307 = !DILocation(line: 589, column: 11, scope: !1285)
!1308 = !DILocation(line: 589, column: 20, scope: !1285)
!1309 = !{!1310, !1297, i64 0}
!1310 = !{!"", !1297, i64 0, !1297, i64 8}
!1311 = !DILocation(line: 590, column: 5, scope: !1285)
!1312 = !DILocation(line: 590, column: 11, scope: !1285)
!1313 = !DILocation(line: 590, column: 29, scope: !1285)
!1314 = !{!1310, !1297, i64 8}
!1315 = !DILocation(line: 592, column: 12, scope: !1285)
!1316 = !DILocation(line: 593, column: 1, scope: !1285)
!1317 = !DILocation(line: 592, column: 5, scope: !1285)
!1318 = distinct !DISubprogram(name: "merge_scgi_config", scope: !2, file: !2, line: 596, type: !1027, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325}
!1320 = !DILocalVariable(name: "p", arg: 1, scope: !1318, file: !2, line: 596, type: !94)
!1321 = !DILocalVariable(name: "base_", arg: 2, scope: !1318, file: !2, line: 596, type: !42)
!1322 = !DILocalVariable(name: "add_", arg: 3, scope: !1318, file: !2, line: 596, type: !42)
!1323 = !DILocalVariable(name: "base", scope: !1318, file: !2, line: 598, type: !1290)
!1324 = !DILocalVariable(name: "add", scope: !1318, file: !2, line: 598, type: !1290)
!1325 = !DILocalVariable(name: "conf", scope: !1318, file: !2, line: 598, type: !1290)
!1326 = !DILocation(line: 596, column: 44, scope: !1318)
!1327 = !DILocation(line: 596, column: 53, scope: !1318)
!1328 = !DILocation(line: 596, column: 66, scope: !1318)
!1329 = !DILocation(line: 598, column: 5, scope: !1318)
!1330 = !DILocation(line: 598, column: 18, scope: !1318)
!1331 = !DILocation(line: 598, column: 23, scope: !1318)
!1332 = !DILocation(line: 598, column: 31, scope: !1318)
!1333 = !DILocation(line: 598, column: 35, scope: !1318)
!1334 = !DILocation(line: 598, column: 42, scope: !1318)
!1335 = !DILocation(line: 598, column: 58, scope: !1318)
!1336 = !DILocation(line: 598, column: 47, scope: !1318)
!1337 = !DILocation(line: 600, column: 22, scope: !1318)
!1338 = !DILocation(line: 600, column: 27, scope: !1318)
!1339 = !DILocation(line: 600, column: 38, scope: !1318)
!1340 = !DILocation(line: 600, column: 43, scope: !1318)
!1341 = !DILocation(line: 600, column: 53, scope: !1318)
!1342 = !DILocation(line: 600, column: 59, scope: !1318)
!1343 = !DILocation(line: 600, column: 5, scope: !1318)
!1344 = !DILocation(line: 600, column: 11, scope: !1318)
!1345 = !DILocation(line: 600, column: 20, scope: !1318)
!1346 = !DILocation(line: 601, column: 31, scope: !1318)
!1347 = !DILocation(line: 601, column: 36, scope: !1318)
!1348 = !DILocation(line: 602, column: 33, scope: !1318)
!1349 = !DILocation(line: 602, column: 38, scope: !1318)
!1350 = !DILocation(line: 603, column: 33, scope: !1318)
!1351 = !DILocation(line: 603, column: 39, scope: !1318)
!1352 = !DILocation(line: 601, column: 5, scope: !1318)
!1353 = !DILocation(line: 601, column: 11, scope: !1318)
!1354 = !DILocation(line: 601, column: 29, scope: !1318)
!1355 = !DILocation(line: 604, column: 12, scope: !1318)
!1356 = !DILocation(line: 605, column: 1, scope: !1318)
!1357 = !DILocation(line: 604, column: 5, scope: !1318)
!1358 = distinct !DISubprogram(name: "register_hooks", scope: !2, file: !2, line: 657, type: !1134, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1359)
!1359 = !{!1360, !1361}
!1360 = !DILocalVariable(name: "p", arg: 1, scope: !1358, file: !2, line: 657, type: !94)
!1361 = !DILocalVariable(name: "apu__hook", scope: !1362, file: !2, line: 661, type: !1363)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 661, column: 5)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_HOOK_request_status_t", file: !162, line: 670, baseType: !1365)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!36, !1179, !547}
!1367 = !DILocation(line: 657, column: 40, scope: !1358)
!1368 = !DILocation(line: 659, column: 5, scope: !1358)
!1369 = !DILocation(line: 660, column: 5, scope: !1358)
!1370 = !DILocation(line: 661, column: 5, scope: !1358)
!1371 = !DILocation(line: 661, column: 5, scope: !1362)
!1372 = !DILocation(line: 663, column: 1, scope: !1358)
!1373 = !DISubprogram(name: "apr_palloc", scope: !96, file: !96, line: 430, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!42, !94, !65}
!1376 = distinct !DISubprogram(name: "scgi_set_send_file", scope: !2, file: !2, line: 608, type: !1107, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1377)
!1377 = !{!1378, !1379, !1380, !1381}
!1378 = !DILocalVariable(name: "cmd", arg: 1, scope: !1376, file: !2, line: 608, type: !1049)
!1379 = !DILocalVariable(name: "mconfig", arg: 2, scope: !1376, file: !2, line: 608, type: !42)
!1380 = !DILocalVariable(name: "arg", arg: 3, scope: !1376, file: !2, line: 609, type: !33)
!1381 = !DILocalVariable(name: "conf", scope: !1376, file: !2, line: 611, type: !1290)
!1382 = !DILocation(line: 608, column: 50, scope: !1376)
!1383 = !DILocation(line: 608, column: 61, scope: !1376)
!1384 = !DILocation(line: 609, column: 51, scope: !1376)
!1385 = !DILocation(line: 611, column: 5, scope: !1376)
!1386 = !DILocation(line: 611, column: 18, scope: !1376)
!1387 = !DILocation(line: 611, column: 23, scope: !1376)
!1388 = !DILocation(line: 613, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 613, column: 9)
!1390 = !DILocation(line: 613, column: 10, scope: !1389)
!1391 = !DILocation(line: 613, column: 9, scope: !1376)
!1392 = !DILocation(line: 614, column: 26, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 613, column: 34)
!1394 = !DILocation(line: 614, column: 9, scope: !1393)
!1395 = !DILocation(line: 614, column: 15, scope: !1393)
!1396 = !DILocation(line: 614, column: 24, scope: !1393)
!1397 = !DILocation(line: 615, column: 5, scope: !1393)
!1398 = !DILocation(line: 616, column: 26, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 616, column: 14)
!1400 = !DILocation(line: 616, column: 15, scope: !1399)
!1401 = !DILocation(line: 616, column: 14, scope: !1389)
!1402 = !DILocation(line: 617, column: 26, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 616, column: 38)
!1404 = !DILocation(line: 617, column: 9, scope: !1403)
!1405 = !DILocation(line: 617, column: 15, scope: !1403)
!1406 = !DILocation(line: 617, column: 24, scope: !1403)
!1407 = !DILocation(line: 618, column: 5, scope: !1403)
!1408 = !DILocation(line: 620, column: 26, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 619, column: 10)
!1410 = !DILocation(line: 620, column: 9, scope: !1409)
!1411 = !DILocation(line: 620, column: 15, scope: !1409)
!1412 = !DILocation(line: 620, column: 24, scope: !1409)
!1413 = !DILocation(line: 623, column: 1, scope: !1376)
!1414 = !DILocation(line: 622, column: 5, scope: !1376)
!1415 = distinct !DISubprogram(name: "scgi_set_internal_redirect", scope: !2, file: !2, line: 626, type: !1107, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1416)
!1416 = !{!1417, !1418, !1419, !1420}
!1417 = !DILocalVariable(name: "cmd", arg: 1, scope: !1415, file: !2, line: 626, type: !1049)
!1418 = !DILocalVariable(name: "mconfig", arg: 2, scope: !1415, file: !2, line: 626, type: !42)
!1419 = !DILocalVariable(name: "arg", arg: 3, scope: !1415, file: !2, line: 627, type: !33)
!1420 = !DILocalVariable(name: "conf", scope: !1415, file: !2, line: 629, type: !1290)
!1421 = !DILocation(line: 626, column: 58, scope: !1415)
!1422 = !DILocation(line: 626, column: 69, scope: !1415)
!1423 = !DILocation(line: 627, column: 59, scope: !1415)
!1424 = !DILocation(line: 629, column: 5, scope: !1415)
!1425 = !DILocation(line: 629, column: 18, scope: !1415)
!1426 = !DILocation(line: 629, column: 25, scope: !1415)
!1427 = !DILocation(line: 631, column: 21, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 631, column: 9)
!1429 = !DILocation(line: 631, column: 10, scope: !1428)
!1430 = !DILocation(line: 631, column: 9, scope: !1415)
!1431 = !DILocation(line: 632, column: 35, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 631, column: 34)
!1433 = !DILocation(line: 632, column: 9, scope: !1432)
!1434 = !DILocation(line: 632, column: 15, scope: !1432)
!1435 = !DILocation(line: 632, column: 33, scope: !1432)
!1436 = !DILocation(line: 633, column: 5, scope: !1432)
!1437 = !DILocation(line: 634, column: 26, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 634, column: 14)
!1439 = !DILocation(line: 634, column: 15, scope: !1438)
!1440 = !DILocation(line: 634, column: 14, scope: !1428)
!1441 = !DILocation(line: 635, column: 35, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 634, column: 38)
!1443 = !DILocation(line: 635, column: 9, scope: !1442)
!1444 = !DILocation(line: 635, column: 15, scope: !1442)
!1445 = !DILocation(line: 635, column: 33, scope: !1442)
!1446 = !DILocation(line: 636, column: 5, scope: !1442)
!1447 = !DILocation(line: 638, column: 35, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 637, column: 10)
!1449 = !DILocation(line: 638, column: 9, scope: !1448)
!1450 = !DILocation(line: 638, column: 15, scope: !1448)
!1451 = !DILocation(line: 638, column: 33, scope: !1448)
!1452 = !DILocation(line: 641, column: 1, scope: !1415)
!1453 = !DILocation(line: 640, column: 5, scope: !1415)
!1454 = !DISubprogram(name: "strcasecmp", scope: !1455, file: !1455, line: 116, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!36, !33, !33}
!1458 = !DISubprogram(name: "proxy_hook_scheme_handler", scope: !162, file: !162, line: 632, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1461, !427, !427, !36}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_HOOK_scheme_handler_t", file: !162, line: 632, baseType: !1463)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!36, !547, !299, !862, !291, !33, !218}
!1465 = distinct !DISubprogram(name: "scgi_handler", scope: !2, file: !2, line: 526, type: !1463, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1478, !1479}
!1467 = !DILocalVariable(name: "r", arg: 1, scope: !1465, file: !2, line: 526, type: !547)
!1468 = !DILocalVariable(name: "worker", arg: 2, scope: !1465, file: !2, line: 526, type: !299)
!1469 = !DILocalVariable(name: "conf", arg: 3, scope: !1465, file: !2, line: 527, type: !862)
!1470 = !DILocalVariable(name: "url", arg: 4, scope: !1465, file: !2, line: 527, type: !291)
!1471 = !DILocalVariable(name: "proxyname", arg: 5, scope: !1465, file: !2, line: 528, type: !33)
!1472 = !DILocalVariable(name: "proxyport", arg: 6, scope: !1465, file: !2, line: 528, type: !218)
!1473 = !DILocalVariable(name: "status", scope: !1465, file: !2, line: 530, type: !36)
!1474 = !DILocalVariable(name: "backend", scope: !1465, file: !2, line: 531, type: !403)
!1475 = !DILocalVariable(name: "p", scope: !1465, file: !2, line: 532, type: !94)
!1476 = !DILocalVariable(name: "uri", scope: !1465, file: !2, line: 533, type: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1478 = !DILocalVariable(name: "dummy", scope: !1465, file: !2, line: 534, type: !4)
!1479 = !DILabel(scope: !1465, name: "cleanup", file: !2, line: 576)
!1480 = !DILocation(line: 526, column: 38, scope: !1465)
!1481 = !DILocation(line: 526, column: 55, scope: !1465)
!1482 = !DILocation(line: 527, column: 44, scope: !1465)
!1483 = !DILocation(line: 527, column: 56, scope: !1465)
!1484 = !DILocation(line: 528, column: 37, scope: !1465)
!1485 = !{!1486, !1486, i64 0}
!1486 = !{!"short", !1298, i64 0}
!1487 = !DILocation(line: 528, column: 59, scope: !1465)
!1488 = !DILocation(line: 530, column: 5, scope: !1465)
!1489 = !DILocation(line: 530, column: 9, scope: !1465)
!1490 = !DILocation(line: 531, column: 5, scope: !1465)
!1491 = !DILocation(line: 531, column: 21, scope: !1465)
!1492 = !DILocation(line: 532, column: 5, scope: !1465)
!1493 = !DILocation(line: 532, column: 17, scope: !1465)
!1494 = !DILocation(line: 532, column: 21, scope: !1465)
!1495 = !DILocation(line: 532, column: 24, scope: !1465)
!1496 = !{!1497, !1297, i64 0}
!1497 = !{!"request_rec", !1297, i64 0, !1297, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1297, i64 40, !1297, i64 48, !1498, i64 56, !1498, i64 60, !1498, i64 64, !1498, i64 68, !1297, i64 72, !1297, i64 80, !1499, i64 88, !1297, i64 96, !1498, i64 104, !1498, i64 108, !1297, i64 112, !1499, i64 120, !1297, i64 128, !1297, i64 136, !1499, i64 144, !1499, i64 152, !1499, i64 160, !1297, i64 168, !1499, i64 176, !1498, i64 184, !1498, i64 188, !1498, i64 192, !1498, i64 196, !1297, i64 200, !1297, i64 208, !1499, i64 216, !1499, i64 224, !1297, i64 232, !1297, i64 240, !1297, i64 248, !1297, i64 256, !1297, i64 264, !1297, i64 272, !1297, i64 280, !1297, i64 288, !1297, i64 296, !1297, i64 304, !1297, i64 312, !1297, i64 320, !1297, i64 328, !1297, i64 336, !1297, i64 344, !1297, i64 352, !1297, i64 360, !1297, i64 368, !1498, i64 376, !1498, i64 380, !1297, i64 384, !1297, i64 392, !1297, i64 400, !1297, i64 408, !1297, i64 416, !1297, i64 424, !1297, i64 432, !1297, i64 440, !1297, i64 448, !1498, i64 456, !1498, i64 460, !1297, i64 464, !1500, i64 472, !1501, i64 560, !1297, i64 680, !1297, i64 688, !1297, i64 696, !1297, i64 704, !1297, i64 712, !1498, i64 720, !1499, i64 728}
!1498 = !{!"int", !1298, i64 0}
!1499 = !{!"long", !1298, i64 0}
!1500 = !{!"apr_uri_t", !1297, i64 0, !1297, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1297, i64 40, !1297, i64 48, !1297, i64 56, !1297, i64 64, !1297, i64 72, !1486, i64 80, !1498, i64 82, !1498, i64 82, !1498, i64 82}
!1501 = !{!"apr_finfo_t", !1297, i64 0, !1498, i64 8, !1498, i64 12, !1298, i64 16, !1498, i64 20, !1498, i64 24, !1499, i64 32, !1499, i64 40, !1498, i64 48, !1499, i64 56, !1499, i64 64, !1499, i64 72, !1499, i64 80, !1499, i64 88, !1297, i64 96, !1297, i64 104, !1297, i64 112}
!1502 = !DILocation(line: 533, column: 5, scope: !1465)
!1503 = !DILocation(line: 533, column: 16, scope: !1465)
!1504 = !DILocation(line: 534, column: 5, scope: !1465)
!1505 = !DILocation(line: 534, column: 10, scope: !1465)
!1506 = !DILocation(line: 536, column: 26, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 536, column: 9)
!1508 = !DILocation(line: 536, column: 9, scope: !1507)
!1509 = !DILocation(line: 536, column: 9, scope: !1465)
!1510 = !DILocation(line: 537, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 536, column: 66)
!1512 = !DILocation(line: 537, column: 9, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 537, column: 9)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 537, column: 9)
!1515 = !{!1498, !1498, i64 0}
!1516 = !{!1497, !1297, i64 400}
!1517 = !{!1497, !1297, i64 8}
!1518 = !{!1519, !1297, i64 168}
!1519 = !{!"conn_rec", !1297, i64 0, !1297, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1297, i64 40, !1297, i64 48, !1297, i64 56, !1297, i64 64, !1297, i64 72, !1499, i64 80, !1297, i64 88, !1297, i64 96, !1297, i64 104, !1297, i64 112, !1297, i64 120, !1297, i64 128, !1297, i64 136, !1498, i64 144, !1498, i64 148, !1498, i64 152, !1498, i64 152, !1498, i64 156, !1298, i64 160, !1498, i64 164, !1297, i64 168, !1297, i64 176, !1297, i64 184, !1297, i64 192, !1498, i64 200}
!1520 = !{!1497, !1297, i64 16}
!1521 = !{!1522, !1297, i64 0}
!1522 = !{!"ap_logconf", !1297, i64 0, !1498, i64 8}
!1523 = !{!1298, !1298, i64 0}
!1524 = !{!1522, !1498, i64 8}
!1525 = !DILocation(line: 537, column: 9, scope: !1514)
!1526 = !DILocation(line: 539, column: 9, scope: !1511)
!1527 = !DILocation(line: 543, column: 68, scope: !1465)
!1528 = !DILocation(line: 544, column: 42, scope: !1465)
!1529 = !DILocation(line: 544, column: 45, scope: !1465)
!1530 = !DILocation(line: 543, column: 14, scope: !1465)
!1531 = !DILocation(line: 543, column: 12, scope: !1465)
!1532 = !DILocation(line: 545, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 545, column: 9)
!1534 = !DILocation(line: 545, column: 16, scope: !1533)
!1535 = !DILocation(line: 545, column: 9, scope: !1465)
!1536 = !DILocation(line: 546, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 545, column: 23)
!1538 = !DILocation(line: 548, column: 5, scope: !1465)
!1539 = !DILocation(line: 548, column: 14, scope: !1465)
!1540 = !DILocation(line: 548, column: 21, scope: !1465)
!1541 = !DILocation(line: 551, column: 22, scope: !1465)
!1542 = !DILocation(line: 551, column: 11, scope: !1465)
!1543 = !DILocation(line: 551, column: 9, scope: !1465)
!1544 = !DILocation(line: 552, column: 44, scope: !1465)
!1545 = !DILocation(line: 552, column: 47, scope: !1465)
!1546 = !DILocation(line: 552, column: 50, scope: !1465)
!1547 = !DILocation(line: 552, column: 56, scope: !1465)
!1548 = !DILocation(line: 552, column: 64, scope: !1465)
!1549 = !DILocation(line: 553, column: 44, scope: !1465)
!1550 = !DILocation(line: 553, column: 55, scope: !1465)
!1551 = !DILocation(line: 553, column: 66, scope: !1465)
!1552 = !DILocation(line: 552, column: 14, scope: !1465)
!1553 = !DILocation(line: 552, column: 12, scope: !1465)
!1554 = !DILocation(line: 555, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 555, column: 9)
!1556 = !DILocation(line: 555, column: 16, scope: !1555)
!1557 = !DILocation(line: 555, column: 9, scope: !1465)
!1558 = !DILocation(line: 556, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 555, column: 23)
!1560 = !DILocation(line: 560, column: 50, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 560, column: 9)
!1562 = !DILocation(line: 560, column: 59, scope: !1561)
!1563 = !DILocation(line: 560, column: 67, scope: !1561)
!1564 = !DILocation(line: 560, column: 70, scope: !1561)
!1565 = !DILocation(line: 560, column: 9, scope: !1561)
!1566 = !DILocation(line: 560, column: 9, scope: !1465)
!1567 = !DILocation(line: 561, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 560, column: 79)
!1569 = !DILocation(line: 561, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 561, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 561, column: 9)
!1572 = !{!1573, !1297, i64 32}
!1573 = !{!"", !1297, i64 0, !1297, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1297, i64 40, !1297, i64 48, !1297, i64 56, !1297, i64 64, !1297, i64 72, !1498, i64 80, !1486, i64 84, !1498, i64 86, !1498, i64 86, !1498, i64 86, !1498, i64 86, !1297, i64 88, !1297, i64 96, !1297, i64 104}
!1574 = !{!1573, !1486, i64 84}
!1575 = !DILocation(line: 561, column: 9, scope: !1571)
!1576 = !DILocation(line: 564, column: 16, scope: !1568)
!1577 = !DILocation(line: 565, column: 9, scope: !1568)
!1578 = !DILocation(line: 569, column: 45, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 569, column: 12)
!1580 = !DILocation(line: 569, column: 23, scope: !1579)
!1581 = !DILocation(line: 569, column: 21, scope: !1579)
!1582 = !DILocation(line: 569, column: 72, scope: !1579)
!1583 = !DILocation(line: 570, column: 9, scope: !1579)
!1584 = !DILocation(line: 570, column: 36, scope: !1579)
!1585 = !DILocation(line: 570, column: 39, scope: !1579)
!1586 = !DILocation(line: 570, column: 23, scope: !1579)
!1587 = !DILocation(line: 570, column: 21, scope: !1579)
!1588 = !DILocation(line: 570, column: 49, scope: !1579)
!1589 = !DILocation(line: 571, column: 9, scope: !1579)
!1590 = !DILocation(line: 571, column: 41, scope: !1579)
!1591 = !DILocation(line: 571, column: 44, scope: !1579)
!1592 = !DILocation(line: 571, column: 23, scope: !1579)
!1593 = !DILocation(line: 571, column: 21, scope: !1579)
!1594 = !DILocation(line: 571, column: 54, scope: !1579)
!1595 = !DILocation(line: 572, column: 9, scope: !1579)
!1596 = !DILocation(line: 572, column: 37, scope: !1579)
!1597 = !DILocation(line: 572, column: 40, scope: !1579)
!1598 = !DILocation(line: 572, column: 23, scope: !1579)
!1599 = !DILocation(line: 572, column: 21, scope: !1579)
!1600 = !DILocation(line: 572, column: 50, scope: !1579)
!1601 = !DILocation(line: 569, column: 12, scope: !1465)
!1602 = !DILocation(line: 573, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 572, column: 58)
!1604 = !DILocation(line: 572, column: 55, scope: !1579)
!1605 = !DILocation(line: 576, column: 1, scope: !1465)
!1606 = !DILocation(line: 577, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 577, column: 9)
!1608 = !DILocation(line: 577, column: 9, scope: !1465)
!1609 = !DILocation(line: 578, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 577, column: 18)
!1611 = !DILocation(line: 578, column: 18, scope: !1610)
!1612 = !DILocation(line: 578, column: 24, scope: !1610)
!1613 = !DILocation(line: 579, column: 53, scope: !1610)
!1614 = !DILocation(line: 579, column: 62, scope: !1610)
!1615 = !DILocation(line: 579, column: 65, scope: !1610)
!1616 = !DILocation(line: 579, column: 9, scope: !1610)
!1617 = !DILocation(line: 580, column: 5, scope: !1610)
!1618 = !DILocation(line: 581, column: 12, scope: !1465)
!1619 = !DILocation(line: 581, column: 5, scope: !1465)
!1620 = !DILocation(line: 582, column: 1, scope: !1465)
!1621 = !DISubprogram(name: "proxy_hook_canon_handler", scope: !162, file: !162, line: 638, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1624, !427, !427, !36}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_HOOK_canon_handler_t", file: !162, line: 638, baseType: !1626)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!36, !547, !291}
!1628 = distinct !DISubprogram(name: "scgi_canon", scope: !2, file: !2, line: 177, type: !1626, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1637, !1638, !1639, !1640}
!1630 = !DILocalVariable(name: "r", arg: 1, scope: !1628, file: !2, line: 177, type: !547)
!1631 = !DILocalVariable(name: "url", arg: 2, scope: !1628, file: !2, line: 177, type: !291)
!1632 = !DILocalVariable(name: "host", scope: !1628, file: !2, line: 179, type: !291)
!1633 = !DILocalVariable(name: "sport", scope: !1628, file: !2, line: 179, type: !1634)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 7)
!1637 = !DILocalVariable(name: "err", scope: !1628, file: !2, line: 180, type: !33)
!1638 = !DILocalVariable(name: "path", scope: !1628, file: !2, line: 180, type: !33)
!1639 = !DILocalVariable(name: "port", scope: !1628, file: !2, line: 181, type: !218)
!1640 = !DILocalVariable(name: "def_port", scope: !1628, file: !2, line: 181, type: !218)
!1641 = !DILocation(line: 177, column: 36, scope: !1628)
!1642 = !DILocation(line: 177, column: 45, scope: !1628)
!1643 = !DILocation(line: 179, column: 5, scope: !1628)
!1644 = !DILocation(line: 179, column: 11, scope: !1628)
!1645 = !DILocation(line: 179, column: 17, scope: !1628)
!1646 = !DILocation(line: 180, column: 5, scope: !1628)
!1647 = !DILocation(line: 180, column: 17, scope: !1628)
!1648 = !DILocation(line: 180, column: 23, scope: !1628)
!1649 = !DILocation(line: 181, column: 5, scope: !1628)
!1650 = !DILocation(line: 181, column: 16, scope: !1628)
!1651 = !DILocation(line: 181, column: 22, scope: !1628)
!1652 = !DILocation(line: 183, column: 26, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 183, column: 9)
!1654 = !DILocation(line: 183, column: 9, scope: !1653)
!1655 = !DILocation(line: 183, column: 9, scope: !1628)
!1656 = !DILocation(line: 184, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 183, column: 66)
!1658 = !DILocation(line: 186, column: 9, scope: !1628)
!1659 = !DILocation(line: 188, column: 21, scope: !1628)
!1660 = !DILocation(line: 188, column: 10, scope: !1628)
!1661 = !DILocation(line: 190, column: 33, scope: !1628)
!1662 = !DILocation(line: 190, column: 36, scope: !1628)
!1663 = !DILocation(line: 190, column: 11, scope: !1628)
!1664 = !DILocation(line: 190, column: 9, scope: !1628)
!1665 = !DILocation(line: 191, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 191, column: 9)
!1667 = !DILocation(line: 191, column: 9, scope: !1628)
!1668 = !DILocation(line: 192, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 191, column: 14)
!1670 = !DILocation(line: 192, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 192, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 192, column: 9)
!1673 = !DILocation(line: 192, column: 9, scope: !1672)
!1674 = !DILocation(line: 194, column: 9, scope: !1669)
!1675 = !DILocation(line: 197, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 197, column: 9)
!1677 = !DILocation(line: 197, column: 17, scope: !1676)
!1678 = !DILocation(line: 197, column: 14, scope: !1676)
!1679 = !DILocation(line: 197, column: 9, scope: !1628)
!1680 = !DILocation(line: 198, column: 22, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 197, column: 27)
!1682 = !DILocation(line: 198, column: 51, scope: !1681)
!1683 = !DILocation(line: 198, column: 9, scope: !1681)
!1684 = !DILocation(line: 199, column: 5, scope: !1681)
!1685 = !DILocation(line: 201, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 200, column: 10)
!1687 = !DILocation(line: 201, column: 18, scope: !1686)
!1688 = !DILocation(line: 204, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 204, column: 9)
!1690 = !DILocation(line: 204, column: 9, scope: !1628)
!1691 = !DILocation(line: 205, column: 28, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 204, column: 31)
!1693 = !DILocation(line: 205, column: 31, scope: !1692)
!1694 = !DILocation(line: 205, column: 42, scope: !1692)
!1695 = !DILocation(line: 205, column: 16, scope: !1692)
!1696 = !DILocation(line: 205, column: 14, scope: !1692)
!1697 = !DILocation(line: 206, column: 5, scope: !1692)
!1698 = !DILocation(line: 208, column: 30, scope: !1628)
!1699 = !DILocation(line: 208, column: 33, scope: !1628)
!1700 = !DILocation(line: 208, column: 39, scope: !1628)
!1701 = !DILocation(line: 208, column: 51, scope: !1628)
!1702 = !DILocation(line: 208, column: 44, scope: !1628)
!1703 = !DILocation(line: 209, column: 30, scope: !1628)
!1704 = !DILocation(line: 209, column: 33, scope: !1628)
!1705 = !{!1497, !1498, i64 60}
!1706 = !DILocation(line: 208, column: 12, scope: !1628)
!1707 = !DILocation(line: 208, column: 10, scope: !1628)
!1708 = !DILocation(line: 210, column: 10, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 210, column: 9)
!1710 = !DILocation(line: 210, column: 9, scope: !1628)
!1711 = !DILocation(line: 211, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 210, column: 16)
!1713 = !DILocation(line: 214, column: 31, scope: !1628)
!1714 = !DILocation(line: 214, column: 34, scope: !1628)
!1715 = !DILocation(line: 214, column: 63, scope: !1628)
!1716 = !DILocation(line: 214, column: 69, scope: !1628)
!1717 = !DILocation(line: 215, column: 31, scope: !1628)
!1718 = !DILocation(line: 214, column: 19, scope: !1628)
!1719 = !DILocation(line: 214, column: 5, scope: !1628)
!1720 = !DILocation(line: 214, column: 8, scope: !1628)
!1721 = !DILocation(line: 214, column: 17, scope: !1628)
!1722 = !{!1497, !1297, i64 344}
!1723 = !DILocation(line: 217, column: 23, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 217, column: 9)
!1725 = !DILocation(line: 217, column: 26, scope: !1724)
!1726 = !{!1497, !1297, i64 256}
!1727 = !DILocation(line: 217, column: 9, scope: !1724)
!1728 = !DILocation(line: 217, column: 9, scope: !1628)
!1729 = !DILocation(line: 218, column: 36, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 217, column: 66)
!1731 = !DILocation(line: 218, column: 39, scope: !1730)
!1732 = !DILocation(line: 218, column: 50, scope: !1730)
!1733 = !DILocation(line: 218, column: 24, scope: !1730)
!1734 = !DILocation(line: 218, column: 9, scope: !1730)
!1735 = !DILocation(line: 218, column: 12, scope: !1730)
!1736 = !DILocation(line: 218, column: 22, scope: !1730)
!1737 = !{!1497, !1297, i64 360}
!1738 = !DILocation(line: 219, column: 5, scope: !1730)
!1739 = !DILocation(line: 221, column: 5, scope: !1628)
!1740 = !DILocation(line: 222, column: 1, scope: !1628)
!1741 = distinct !DISubprogram(name: "scgi_request_status", scope: !2, file: !2, line: 464, type: !1365, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1742)
!1742 = !{!1743, !1744, !1745, !1753}
!1743 = !DILocalVariable(name: "status", arg: 1, scope: !1741, file: !2, line: 464, type: !1179)
!1744 = !DILocalVariable(name: "r", arg: 2, scope: !1741, file: !2, line: 464, type: !547)
!1745 = !DILocalVariable(name: "req_conf", scope: !1741, file: !2, line: 466, type: !1746)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "scgi_request_config", file: !2, line: 63, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 60, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1748, file: !2, line: 61, baseType: !33, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1748, file: !2, line: 62, baseType: !1752, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "scgi_request_type", file: !2, line: 58, baseType: !960)
!1753 = !DILocalVariable(name: "rr", scope: !1754, file: !2, line: 491, type: !547)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 490, column: 16)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 471, column: 33)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 470, column: 67)
!1757 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 468, column: 12)
!1758 = !DILocation(line: 464, column: 37, scope: !1741)
!1759 = !DILocation(line: 464, column: 58, scope: !1741)
!1760 = !DILocation(line: 466, column: 5, scope: !1741)
!1761 = !DILocation(line: 466, column: 26, scope: !1741)
!1762 = !DILocation(line: 468, column: 14, scope: !1757)
!1763 = !DILocation(line: 468, column: 13, scope: !1757)
!1764 = !DILocation(line: 468, column: 21, scope: !1757)
!1765 = !DILocation(line: 469, column: 9, scope: !1757)
!1766 = !DILocation(line: 469, column: 24, scope: !1757)
!1767 = !{!1497, !1297, i64 392}
!1768 = !{!1769, !1498, i64 8}
!1769 = !{!"module_struct", !1498, i64 0, !1498, i64 4, !1498, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1499, i64 40, !1297, i64 48, !1297, i64 56, !1297, i64 64, !1297, i64 72, !1297, i64 80, !1297, i64 88, !1297, i64 96, !1498, i64 104}
!1770 = !DILocation(line: 469, column: 22, scope: !1757)
!1771 = !DILocation(line: 468, column: 12, scope: !1741)
!1772 = !DILocation(line: 471, column: 17, scope: !1756)
!1773 = !DILocation(line: 471, column: 27, scope: !1756)
!1774 = !{!1775, !1298, i64 8}
!1775 = !{!"", !1297, i64 0, !1298, i64 8}
!1776 = !DILocation(line: 471, column: 9, scope: !1756)
!1777 = !DILocation(line: 473, column: 13, scope: !1755)
!1778 = !DILocation(line: 473, column: 13, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 473, column: 13)
!1780 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 473, column: 13)
!1781 = !DILocation(line: 473, column: 13, scope: !1780)
!1782 = !{!1775, !1297, i64 0}
!1783 = !DILocation(line: 476, column: 13, scope: !1755)
!1784 = !DILocation(line: 476, column: 16, scope: !1755)
!1785 = !DILocation(line: 476, column: 28, scope: !1755)
!1786 = !{!1497, !1297, i64 96}
!1787 = !DILocation(line: 477, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 477, column: 17)
!1789 = !DILocation(line: 477, column: 20, scope: !1788)
!1790 = !{!1497, !1498, i64 108}
!1791 = !DILocation(line: 477, column: 34, scope: !1788)
!1792 = !DILocation(line: 477, column: 17, scope: !1755)
!1793 = !DILocation(line: 479, column: 17, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !2, line: 477, column: 44)
!1795 = !DILocation(line: 479, column: 20, scope: !1794)
!1796 = !DILocation(line: 479, column: 27, scope: !1794)
!1797 = !{!1497, !1297, i64 112}
!1798 = !DILocation(line: 480, column: 17, scope: !1794)
!1799 = !DILocation(line: 480, column: 20, scope: !1794)
!1800 = !DILocation(line: 480, column: 34, scope: !1794)
!1801 = !DILocation(line: 481, column: 13, scope: !1794)
!1802 = !DILocation(line: 482, column: 29, scope: !1755)
!1803 = !DILocation(line: 482, column: 32, scope: !1755)
!1804 = !{!1497, !1297, i64 232}
!1805 = !DILocation(line: 482, column: 13, scope: !1755)
!1806 = !DILocation(line: 483, column: 42, scope: !1755)
!1807 = !DILocation(line: 483, column: 52, scope: !1755)
!1808 = !DILocation(line: 483, column: 62, scope: !1755)
!1809 = !DILocation(line: 483, column: 13, scope: !1755)
!1810 = !DILocation(line: 484, column: 13, scope: !1755)
!1811 = !DILocation(line: 488, column: 13, scope: !1755)
!1812 = !DILocation(line: 488, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 488, column: 13)
!1814 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 488, column: 13)
!1815 = !DILocation(line: 488, column: 13, scope: !1814)
!1816 = !DILocation(line: 490, column: 13, scope: !1755)
!1817 = !DILocation(line: 491, column: 17, scope: !1754)
!1818 = !DILocation(line: 491, column: 30, scope: !1754)
!1819 = !DILocation(line: 493, column: 45, scope: !1754)
!1820 = !DILocation(line: 493, column: 55, scope: !1754)
!1821 = !DILocation(line: 493, column: 65, scope: !1754)
!1822 = !DILocation(line: 494, column: 45, scope: !1754)
!1823 = !DILocation(line: 494, column: 48, scope: !1754)
!1824 = !{!1497, !1297, i64 424}
!1825 = !DILocation(line: 493, column: 22, scope: !1754)
!1826 = !DILocation(line: 493, column: 20, scope: !1754)
!1827 = !DILocation(line: 495, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 495, column: 21)
!1829 = !DILocation(line: 495, column: 25, scope: !1828)
!1830 = !{!1497, !1498, i64 104}
!1831 = !DILocation(line: 495, column: 32, scope: !1828)
!1832 = !DILocation(line: 495, column: 43, scope: !1828)
!1833 = !DILocation(line: 495, column: 46, scope: !1828)
!1834 = !DILocation(line: 495, column: 50, scope: !1828)
!1835 = !DILocation(line: 495, column: 56, scope: !1828)
!1836 = !{!1497, !1298, i64 576}
!1837 = !DILocation(line: 495, column: 65, scope: !1828)
!1838 = !DILocation(line: 495, column: 21, scope: !1754)
!1839 = !DILocation(line: 501, column: 36, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 495, column: 80)
!1841 = !DILocation(line: 501, column: 21, scope: !1840)
!1842 = !DILocation(line: 502, column: 17, scope: !1840)
!1843 = !DILocation(line: 504, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 503, column: 22)
!1845 = !DILocation(line: 504, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 504, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 504, column: 21)
!1848 = !DILocation(line: 504, column: 21, scope: !1847)
!1849 = !DILocation(line: 509, column: 22, scope: !1844)
!1850 = !DILocation(line: 509, column: 29, scope: !1844)
!1851 = !DILocation(line: 510, column: 29, scope: !1844)
!1852 = !DILocation(line: 510, column: 28, scope: !1844)
!1853 = !DILocation(line: 510, column: 21, scope: !1844)
!1854 = !DILocation(line: 512, column: 13, scope: !1755)
!1855 = !DILocation(line: 512, column: 13, scope: !1754)
!1856 = !DILocation(line: 514, column: 13, scope: !1755)
!1857 = !DILocation(line: 517, column: 5, scope: !1756)
!1858 = !DILocation(line: 519, column: 5, scope: !1741)
!1859 = !DILocation(line: 520, column: 1, scope: !1741)
!1860 = !DISubprogram(name: "apr_optional_hook_add", scope: !1861, file: !1861, line: 48, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1861 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_optional_hooks.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "088e22e83e3e63bd61888400d30644cd")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !33, !972, !427, !427, !36}
!1864 = !DISubprogram(name: "ap_cstr_casecmpn", scope: !128, file: !128, line: 2562, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!36, !33, !33, !65}
!1867 = !DISubprogram(name: "ap_log_rerror_", scope: !1177, file: !1177, line: 456, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !33, !36, !36, !36, !47, !1870, !33, null}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!1872 = !DISubprogram(name: "ap_proxy_acquire_connection", scope: !162, file: !162, line: 1071, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!36, !33, !1875, !299, !414}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1876 = !DISubprogram(name: "ap_proxy_determine_connection", scope: !162, file: !162, line: 1037, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!36, !94, !547, !862, !299, !403, !1477, !1879, !33, !218, !291, !36}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1880 = !DISubprogram(name: "ap_proxy_connect_backend", scope: !162, file: !162, line: 1118, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!36, !33, !403, !299, !414}
!1883 = !DISubprogram(name: "ap_setup_client_block", scope: !1884, file: !1884, line: 577, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1884 = !DIFile(filename: "include/http_protocol.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "7b8f2c60fabe1ef06f77b57dff1987b8")
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!36, !547, !36}
!1887 = distinct !DISubprogram(name: "send_headers", scope: !2, file: !2, line: 256, type: !1888, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!36, !547, !403}
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1900, !1903, !1904, !1905, !1906}
!1891 = !DILocalVariable(name: "r", arg: 1, scope: !1887, file: !2, line: 256, type: !547)
!1892 = !DILocalVariable(name: "conn", arg: 2, scope: !1887, file: !2, line: 256, type: !403)
!1893 = !DILocalVariable(name: "buf", scope: !1887, file: !2, line: 258, type: !291)
!1894 = !DILocalVariable(name: "cp", scope: !1887, file: !2, line: 258, type: !291)
!1895 = !DILocalVariable(name: "bodylen", scope: !1887, file: !2, line: 258, type: !291)
!1896 = !DILocalVariable(name: "ns_len", scope: !1887, file: !2, line: 259, type: !33)
!1897 = !DILocalVariable(name: "env_table", scope: !1887, file: !2, line: 260, type: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!1900 = !DILocalVariable(name: "env", scope: !1887, file: !2, line: 261, type: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!1903 = !DILocalVariable(name: "j", scope: !1887, file: !2, line: 262, type: !36)
!1904 = !DILocalVariable(name: "len", scope: !1887, file: !2, line: 263, type: !65)
!1905 = !DILocalVariable(name: "bodylen_size", scope: !1887, file: !2, line: 263, type: !65)
!1906 = !DILocalVariable(name: "headerlen", scope: !1887, file: !2, line: 264, type: !65)
!1907 = !DILocation(line: 256, column: 38, scope: !1887)
!1908 = !DILocation(line: 256, column: 57, scope: !1887)
!1909 = !DILocation(line: 258, column: 5, scope: !1887)
!1910 = !DILocation(line: 258, column: 11, scope: !1887)
!1911 = !DILocation(line: 258, column: 17, scope: !1887)
!1912 = !DILocation(line: 258, column: 22, scope: !1887)
!1913 = !DILocation(line: 259, column: 5, scope: !1887)
!1914 = !DILocation(line: 259, column: 17, scope: !1887)
!1915 = !DILocation(line: 260, column: 5, scope: !1887)
!1916 = !DILocation(line: 260, column: 31, scope: !1887)
!1917 = !DILocation(line: 261, column: 5, scope: !1887)
!1918 = !DILocation(line: 261, column: 30, scope: !1887)
!1919 = !DILocation(line: 262, column: 5, scope: !1887)
!1920 = !DILocation(line: 262, column: 9, scope: !1887)
!1921 = !DILocation(line: 263, column: 5, scope: !1887)
!1922 = !DILocation(line: 263, column: 16, scope: !1887)
!1923 = !DILocation(line: 263, column: 21, scope: !1887)
!1924 = !DILocation(line: 264, column: 5, scope: !1887)
!1925 = !DILocation(line: 264, column: 16, scope: !1887)
!1926 = !{!1499, !1499, i64 0}
!1927 = !DILocation(line: 268, column: 24, scope: !1887)
!1928 = !DILocation(line: 268, column: 5, scope: !1887)
!1929 = !DILocation(line: 269, column: 21, scope: !1887)
!1930 = !DILocation(line: 269, column: 5, scope: !1887)
!1931 = !DILocation(line: 280, column: 32, scope: !1887)
!1932 = !DILocation(line: 280, column: 35, scope: !1887)
!1933 = !DILocation(line: 280, column: 17, scope: !1887)
!1934 = !DILocation(line: 280, column: 15, scope: !1887)
!1935 = !DILocation(line: 281, column: 32, scope: !1887)
!1936 = !DILocation(line: 281, column: 43, scope: !1887)
!1937 = !{!1938, !1297, i64 24}
!1938 = !{!"apr_array_header_t", !1297, i64 0, !1498, i64 8, !1498, i64 12, !1498, i64 16, !1297, i64 24}
!1939 = !DILocation(line: 281, column: 9, scope: !1887)
!1940 = !DILocation(line: 282, column: 12, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 282, column: 5)
!1942 = !DILocation(line: 282, column: 10, scope: !1941)
!1943 = !DILocation(line: 282, column: 17, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 282, column: 5)
!1945 = !DILocation(line: 282, column: 21, scope: !1944)
!1946 = !DILocation(line: 282, column: 32, scope: !1944)
!1947 = !{!1938, !1498, i64 12}
!1948 = !DILocation(line: 282, column: 19, scope: !1944)
!1949 = !DILocation(line: 282, column: 5, scope: !1941)
!1950 = !DILocation(line: 283, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 283, column: 16)
!1952 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 282, column: 44)
!1953 = !DILocation(line: 283, column: 29, scope: !1951)
!1954 = !DILocation(line: 283, column: 32, scope: !1951)
!1955 = !{!1956, !1297, i64 0}
!1956 = !{!"apr_table_entry_t", !1297, i64 0, !1297, i64 8, !1498, i64 16}
!1957 = !DILocation(line: 283, column: 18, scope: !1951)
!1958 = !DILocation(line: 284, column: 13, scope: !1951)
!1959 = !DILocation(line: 284, column: 25, scope: !1951)
!1960 = !DILocation(line: 284, column: 29, scope: !1951)
!1961 = !DILocation(line: 284, column: 32, scope: !1951)
!1962 = !DILocation(line: 284, column: 18, scope: !1951)
!1963 = !DILocation(line: 285, column: 13, scope: !1951)
!1964 = !DILocation(line: 285, column: 25, scope: !1951)
!1965 = !DILocation(line: 285, column: 29, scope: !1951)
!1966 = !DILocation(line: 285, column: 32, scope: !1951)
!1967 = !DILocation(line: 285, column: 18, scope: !1951)
!1968 = !DILocation(line: 283, column: 16, scope: !1952)
!1969 = !DILocation(line: 286, column: 13, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 285, column: 51)
!1971 = !DILocation(line: 288, column: 29, scope: !1952)
!1972 = !DILocation(line: 288, column: 33, scope: !1952)
!1973 = !DILocation(line: 288, column: 36, scope: !1952)
!1974 = !DILocation(line: 288, column: 22, scope: !1952)
!1975 = !DILocation(line: 288, column: 50, scope: !1952)
!1976 = !DILocation(line: 288, column: 54, scope: !1952)
!1977 = !DILocation(line: 288, column: 57, scope: !1952)
!1978 = !{!1956, !1297, i64 8}
!1979 = !DILocation(line: 288, column: 43, scope: !1952)
!1980 = !DILocation(line: 288, column: 41, scope: !1952)
!1981 = !DILocation(line: 288, column: 62, scope: !1952)
!1982 = !DILocation(line: 288, column: 19, scope: !1952)
!1983 = !DILocation(line: 289, column: 5, scope: !1952)
!1984 = !DILocation(line: 282, column: 39, scope: !1944)
!1985 = !DILocation(line: 282, column: 5, scope: !1944)
!1986 = distinct !{!1986, !1949, !1987, !1988}
!1987 = !DILocation(line: 289, column: 5, scope: !1941)
!1988 = !{!"llvm.loop.mustprogress"}
!1989 = !DILocation(line: 290, column: 28, scope: !1887)
!1990 = !DILocation(line: 290, column: 31, scope: !1887)
!1991 = !DILocation(line: 290, column: 56, scope: !1887)
!1992 = !DILocation(line: 290, column: 59, scope: !1887)
!1993 = !{!1497, !1499, i64 216}
!1994 = !DILocation(line: 290, column: 15, scope: !1887)
!1995 = !DILocation(line: 290, column: 13, scope: !1887)
!1996 = !DILocation(line: 291, column: 27, scope: !1887)
!1997 = !DILocation(line: 291, column: 20, scope: !1887)
!1998 = !DILocation(line: 291, column: 36, scope: !1887)
!1999 = !DILocation(line: 291, column: 18, scope: !1887)
!2000 = !DILocation(line: 292, column: 18, scope: !1887)
!2001 = !DILocation(line: 292, column: 15, scope: !1887)
!2002 = !DILocation(line: 294, column: 27, scope: !1887)
!2003 = !DILocation(line: 294, column: 30, scope: !1887)
!2004 = !DILocation(line: 294, column: 60, scope: !1887)
!2005 = !DILocation(line: 294, column: 14, scope: !1887)
!2006 = !DILocation(line: 294, column: 12, scope: !1887)
!2007 = !DILocation(line: 295, column: 18, scope: !1887)
!2008 = !DILocation(line: 295, column: 11, scope: !1887)
!2009 = !DILocation(line: 295, column: 9, scope: !1887)
!2010 = !DILocation(line: 296, column: 18, scope: !1887)
!2011 = !DILocation(line: 296, column: 22, scope: !1887)
!2012 = !DILocation(line: 296, column: 15, scope: !1887)
!2013 = !DILocation(line: 297, column: 27, scope: !1887)
!2014 = !DILocation(line: 297, column: 30, scope: !1887)
!2015 = !DILocation(line: 297, column: 36, scope: !1887)
!2016 = !DILocation(line: 297, column: 16, scope: !1887)
!2017 = !DILocation(line: 297, column: 14, scope: !1887)
!2018 = !DILocation(line: 297, column: 8, scope: !1887)
!2019 = !DILocation(line: 298, column: 12, scope: !1887)
!2020 = !DILocation(line: 298, column: 16, scope: !1887)
!2021 = !DILocation(line: 298, column: 24, scope: !1887)
!2022 = !DILocation(line: 298, column: 5, scope: !1887)
!2023 = !DILocation(line: 299, column: 11, scope: !1887)
!2024 = !DILocation(line: 299, column: 8, scope: !1887)
!2025 = !DILocation(line: 301, column: 12, scope: !1887)
!2026 = !DILocation(line: 301, column: 5, scope: !1887)
!2027 = !DILocation(line: 302, column: 8, scope: !1887)
!2028 = !DILocation(line: 303, column: 12, scope: !1887)
!2029 = !DILocation(line: 303, column: 16, scope: !1887)
!2030 = !DILocation(line: 303, column: 25, scope: !1887)
!2031 = !DILocation(line: 303, column: 5, scope: !1887)
!2032 = !DILocation(line: 304, column: 11, scope: !1887)
!2033 = !DILocation(line: 304, column: 8, scope: !1887)
!2034 = !DILocation(line: 305, column: 12, scope: !1887)
!2035 = !DILocation(line: 305, column: 5, scope: !1887)
!2036 = !DILocation(line: 306, column: 8, scope: !1887)
!2037 = !DILocation(line: 307, column: 12, scope: !1887)
!2038 = !DILocation(line: 307, column: 5, scope: !1887)
!2039 = !DILocation(line: 308, column: 8, scope: !1887)
!2040 = !DILocation(line: 310, column: 12, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 310, column: 5)
!2042 = !DILocation(line: 310, column: 10, scope: !2041)
!2043 = !DILocation(line: 310, column: 17, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 310, column: 5)
!2045 = !DILocation(line: 310, column: 21, scope: !2044)
!2046 = !DILocation(line: 310, column: 32, scope: !2044)
!2047 = !DILocation(line: 310, column: 19, scope: !2044)
!2048 = !DILocation(line: 310, column: 5, scope: !2041)
!2049 = !DILocation(line: 311, column: 25, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 311, column: 16)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 310, column: 44)
!2052 = !DILocation(line: 311, column: 29, scope: !2050)
!2053 = !DILocation(line: 311, column: 32, scope: !2050)
!2054 = !DILocation(line: 311, column: 18, scope: !2050)
!2055 = !DILocation(line: 312, column: 13, scope: !2050)
!2056 = !DILocation(line: 312, column: 25, scope: !2050)
!2057 = !DILocation(line: 312, column: 29, scope: !2050)
!2058 = !DILocation(line: 312, column: 32, scope: !2050)
!2059 = !DILocation(line: 312, column: 18, scope: !2050)
!2060 = !DILocation(line: 313, column: 13, scope: !2050)
!2061 = !DILocation(line: 313, column: 25, scope: !2050)
!2062 = !DILocation(line: 313, column: 29, scope: !2050)
!2063 = !DILocation(line: 313, column: 32, scope: !2050)
!2064 = !DILocation(line: 313, column: 18, scope: !2050)
!2065 = !DILocation(line: 311, column: 16, scope: !2051)
!2066 = !DILocation(line: 314, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 313, column: 51)
!2068 = !DILocation(line: 316, column: 22, scope: !2051)
!2069 = !DILocation(line: 316, column: 26, scope: !2051)
!2070 = !DILocation(line: 316, column: 29, scope: !2051)
!2071 = !DILocation(line: 316, column: 15, scope: !2051)
!2072 = !DILocation(line: 316, column: 34, scope: !2051)
!2073 = !DILocation(line: 316, column: 13, scope: !2051)
!2074 = !DILocation(line: 317, column: 16, scope: !2051)
!2075 = !DILocation(line: 317, column: 20, scope: !2051)
!2076 = !DILocation(line: 317, column: 24, scope: !2051)
!2077 = !DILocation(line: 317, column: 27, scope: !2051)
!2078 = !DILocation(line: 317, column: 32, scope: !2051)
!2079 = !DILocation(line: 317, column: 9, scope: !2051)
!2080 = !DILocation(line: 318, column: 15, scope: !2051)
!2081 = !DILocation(line: 318, column: 12, scope: !2051)
!2082 = !DILocation(line: 319, column: 22, scope: !2051)
!2083 = !DILocation(line: 319, column: 26, scope: !2051)
!2084 = !DILocation(line: 319, column: 29, scope: !2051)
!2085 = !DILocation(line: 319, column: 15, scope: !2051)
!2086 = !DILocation(line: 319, column: 34, scope: !2051)
!2087 = !DILocation(line: 319, column: 13, scope: !2051)
!2088 = !DILocation(line: 320, column: 16, scope: !2051)
!2089 = !DILocation(line: 320, column: 20, scope: !2051)
!2090 = !DILocation(line: 320, column: 24, scope: !2051)
!2091 = !DILocation(line: 320, column: 27, scope: !2051)
!2092 = !DILocation(line: 320, column: 32, scope: !2051)
!2093 = !DILocation(line: 320, column: 9, scope: !2051)
!2094 = !DILocation(line: 321, column: 15, scope: !2051)
!2095 = !DILocation(line: 321, column: 12, scope: !2051)
!2096 = !DILocation(line: 322, column: 5, scope: !2051)
!2097 = !DILocation(line: 310, column: 39, scope: !2044)
!2098 = !DILocation(line: 310, column: 5, scope: !2044)
!2099 = distinct !{!2099, !2048, !2100, !1988}
!2100 = !DILocation(line: 322, column: 5, scope: !2041)
!2101 = !DILocation(line: 323, column: 8, scope: !1887)
!2102 = !DILocation(line: 323, column: 11, scope: !1887)
!2103 = !DILocation(line: 325, column: 20, scope: !1887)
!2104 = !DILocation(line: 325, column: 26, scope: !1887)
!2105 = !DILocation(line: 325, column: 31, scope: !1887)
!2106 = !DILocation(line: 325, column: 42, scope: !1887)
!2107 = !DILocation(line: 325, column: 12, scope: !1887)
!2108 = !DILocation(line: 326, column: 1, scope: !1887)
!2109 = !DILocation(line: 325, column: 5, scope: !1887)
!2110 = distinct !DISubprogram(name: "send_request_body", scope: !2, file: !2, line: 332, type: !1888, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2111)
!2111 = !{!2112, !2113, !2114, !2117, !2118}
!2112 = !DILocalVariable(name: "r", arg: 1, scope: !2110, file: !2, line: 332, type: !547)
!2113 = !DILocalVariable(name: "conn", arg: 2, scope: !2110, file: !2, line: 332, type: !403)
!2114 = !DILocalVariable(name: "buf", scope: !2115, file: !2, line: 335, type: !291)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 334, column: 36)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 334, column: 9)
!2117 = !DILocalVariable(name: "status", scope: !2115, file: !2, line: 336, type: !36)
!2118 = !DILocalVariable(name: "readlen", scope: !2115, file: !2, line: 337, type: !76)
!2119 = !DILocation(line: 332, column: 43, scope: !2110)
!2120 = !DILocation(line: 332, column: 62, scope: !2110)
!2121 = !DILocation(line: 334, column: 32, scope: !2116)
!2122 = !DILocation(line: 334, column: 9, scope: !2116)
!2123 = !DILocation(line: 334, column: 9, scope: !2110)
!2124 = !DILocation(line: 335, column: 9, scope: !2115)
!2125 = !DILocation(line: 335, column: 15, scope: !2115)
!2126 = !DILocation(line: 335, column: 32, scope: !2115)
!2127 = !DILocation(line: 335, column: 35, scope: !2115)
!2128 = !DILocation(line: 335, column: 21, scope: !2115)
!2129 = !DILocation(line: 336, column: 9, scope: !2115)
!2130 = !DILocation(line: 336, column: 13, scope: !2115)
!2131 = !DILocation(line: 337, column: 9, scope: !2115)
!2132 = !DILocation(line: 337, column: 14, scope: !2115)
!2133 = !DILocation(line: 339, column: 39, scope: !2115)
!2134 = !DILocation(line: 339, column: 42, scope: !2115)
!2135 = !DILocation(line: 339, column: 19, scope: !2115)
!2136 = !DILocation(line: 339, column: 17, scope: !2115)
!2137 = !DILocation(line: 340, column: 9, scope: !2115)
!2138 = !DILocation(line: 340, column: 16, scope: !2115)
!2139 = !DILocation(line: 340, column: 24, scope: !2115)
!2140 = !DILocation(line: 341, column: 30, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 340, column: 29)
!2142 = !DILocation(line: 341, column: 36, scope: !2141)
!2143 = !DILocation(line: 341, column: 53, scope: !2141)
!2144 = !DILocation(line: 341, column: 62, scope: !2141)
!2145 = !DILocation(line: 341, column: 22, scope: !2141)
!2146 = !DILocation(line: 341, column: 20, scope: !2141)
!2147 = !DILocation(line: 342, column: 17, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 342, column: 17)
!2149 = !DILocation(line: 342, column: 24, scope: !2148)
!2150 = !DILocation(line: 342, column: 17, scope: !2141)
!2151 = !DILocation(line: 343, column: 17, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 342, column: 31)
!2153 = !DILocation(line: 345, column: 43, scope: !2141)
!2154 = !DILocation(line: 345, column: 46, scope: !2141)
!2155 = !DILocation(line: 345, column: 23, scope: !2141)
!2156 = !DILocation(line: 345, column: 21, scope: !2141)
!2157 = distinct !{!2157, !2137, !2158, !1988}
!2158 = !DILocation(line: 346, column: 9, scope: !2115)
!2159 = !DILocation(line: 347, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2115, file: !2, line: 347, column: 13)
!2161 = !DILocation(line: 347, column: 21, scope: !2160)
!2162 = !DILocation(line: 347, column: 13, scope: !2115)
!2163 = !DILocation(line: 348, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 347, column: 28)
!2165 = !DILocation(line: 348, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 348, column: 13)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 348, column: 13)
!2168 = !DILocation(line: 348, column: 13, scope: !2167)
!2169 = !DILocation(line: 350, column: 13, scope: !2164)
!2170 = !DILocation(line: 352, column: 5, scope: !2116)
!2171 = !DILocation(line: 352, column: 5, scope: !2115)
!2172 = !DILocation(line: 354, column: 5, scope: !2110)
!2173 = !DILocation(line: 355, column: 1, scope: !2110)
!2174 = distinct !DISubprogram(name: "pass_response", scope: !2, file: !2, line: 361, type: !1888, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2190, !2191, !2193, !2195, !2199, !2202, !2205, !2206}
!2176 = !DILocalVariable(name: "r", arg: 1, scope: !2174, file: !2, line: 361, type: !547)
!2177 = !DILocalVariable(name: "conn", arg: 2, scope: !2174, file: !2, line: 361, type: !403)
!2178 = !DILocalVariable(name: "bb", scope: !2174, file: !2, line: 363, type: !512)
!2179 = !DILocalVariable(name: "b", scope: !2174, file: !2, line: 364, type: !49)
!2180 = !DILocalVariable(name: "location", scope: !2174, file: !2, line: 365, type: !33)
!2181 = !DILocalVariable(name: "conf", scope: !2174, file: !2, line: 366, type: !1290)
!2182 = !DILocalVariable(name: "sock_data", scope: !2174, file: !2, line: 367, type: !2183)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "socket_ex_data", file: !2, line: 87, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 84, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !2185, file: !2, line: 85, baseType: !746, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !2185, file: !2, line: 86, baseType: !2189, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!2190 = !DILocalVariable(name: "status", scope: !2174, file: !2, line: 368, type: !36)
!2191 = !DILocalVariable(name: "ap__b", scope: !2192, file: !2, line: 376, type: !49)
!2192 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 376, column: 5)
!2193 = !DILocalVariable(name: "ap__b", scope: !2194, file: !2, line: 378, type: !49)
!2194 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 378, column: 5)
!2195 = !DILocalVariable(name: "err", scope: !2196, file: !2, line: 393, type: !2198)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 392, column: 64)
!2197 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 392, column: 9)
!2198 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2199 = !DILocalVariable(name: "req_conf", scope: !2200, file: !2, line: 401, type: !1746)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 400, column: 23)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 400, column: 13)
!2202 = !DILocalVariable(name: "err", scope: !2203, file: !2, line: 425, type: !2198)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 424, column: 72)
!2204 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 422, column: 9)
!2205 = !DILocalVariable(name: "location_header", scope: !2203, file: !2, line: 426, type: !33)
!2206 = !DILocalVariable(name: "req_conf", scope: !2207, file: !2, line: 435, type: !1746)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 434, column: 43)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 434, column: 13)
!2209 = !DILocation(line: 361, column: 39, scope: !2174)
!2210 = !DILocation(line: 361, column: 58, scope: !2174)
!2211 = !DILocation(line: 363, column: 5, scope: !2174)
!2212 = !DILocation(line: 363, column: 25, scope: !2174)
!2213 = !DILocation(line: 364, column: 5, scope: !2174)
!2214 = !DILocation(line: 364, column: 17, scope: !2174)
!2215 = !DILocation(line: 365, column: 5, scope: !2174)
!2216 = !DILocation(line: 365, column: 17, scope: !2174)
!2217 = !DILocation(line: 366, column: 5, scope: !2174)
!2218 = !DILocation(line: 366, column: 18, scope: !2174)
!2219 = !DILocation(line: 367, column: 5, scope: !2174)
!2220 = !DILocation(line: 367, column: 21, scope: !2174)
!2221 = !DILocation(line: 368, column: 5, scope: !2174)
!2222 = !DILocation(line: 368, column: 9, scope: !2174)
!2223 = !DILocation(line: 370, column: 28, scope: !2174)
!2224 = !DILocation(line: 370, column: 31, scope: !2174)
!2225 = !DILocation(line: 370, column: 17, scope: !2174)
!2226 = !DILocation(line: 370, column: 15, scope: !2174)
!2227 = !DILocation(line: 371, column: 23, scope: !2174)
!2228 = !DILocation(line: 371, column: 29, scope: !2174)
!2229 = !{!1573, !1297, i64 56}
!2230 = !DILocation(line: 371, column: 5, scope: !2174)
!2231 = !DILocation(line: 371, column: 16, scope: !2174)
!2232 = !DILocation(line: 371, column: 21, scope: !2174)
!2233 = !DILocation(line: 372, column: 27, scope: !2174)
!2234 = !DILocation(line: 372, column: 33, scope: !2174)
!2235 = !{!1573, !1297, i64 16}
!2236 = !DILocation(line: 372, column: 41, scope: !2174)
!2237 = !{!2238, !1297, i64 24}
!2238 = !{!"proxy_worker", !2239, i64 0, !1498, i64 8, !1297, i64 16, !1297, i64 24, !1297, i64 32, !1297, i64 40, !1297, i64 48, !1297, i64 56}
!2239 = !{!"", !1498, i64 0, !1498, i64 4}
!2240 = !DILocation(line: 372, column: 44, scope: !2174)
!2241 = !DILocation(line: 372, column: 5, scope: !2174)
!2242 = !DILocation(line: 372, column: 16, scope: !2174)
!2243 = !DILocation(line: 372, column: 24, scope: !2174)
!2244 = !DILocation(line: 374, column: 29, scope: !2174)
!2245 = !DILocation(line: 374, column: 32, scope: !2174)
!2246 = !DILocation(line: 374, column: 38, scope: !2174)
!2247 = !DILocation(line: 374, column: 41, scope: !2174)
!2248 = !DILocation(line: 374, column: 53, scope: !2174)
!2249 = !{!1519, !1297, i64 128}
!2250 = !DILocation(line: 374, column: 10, scope: !2174)
!2251 = !DILocation(line: 374, column: 8, scope: !2174)
!2252 = !DILocation(line: 375, column: 33, scope: !2174)
!2253 = !DILocation(line: 375, column: 44, scope: !2174)
!2254 = !DILocation(line: 375, column: 47, scope: !2174)
!2255 = !DILocation(line: 375, column: 59, scope: !2174)
!2256 = !DILocation(line: 375, column: 9, scope: !2174)
!2257 = !DILocation(line: 375, column: 7, scope: !2174)
!2258 = !DILocation(line: 376, column: 5, scope: !2174)
!2259 = !DILocation(line: 376, column: 5, scope: !2192)
!2260 = !DILocation(line: 376, column: 5, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 376, column: 5)
!2262 = !{!2263, !1297, i64 0}
!2263 = !{!"apr_bucket", !1310, i64 0, !1297, i64 16, !1499, i64 24, !1499, i64 32, !1297, i64 40, !1297, i64 48, !1297, i64 56}
!2264 = !{!2265, !1297, i64 16}
!2265 = !{!"apr_bucket_brigade", !1297, i64 0, !2266, i64 8, !1297, i64 24}
!2266 = !{!"apr_bucket_list", !1297, i64 0, !1297, i64 8}
!2267 = !{!2263, !1297, i64 8}
!2268 = !DILocation(line: 377, column: 31, scope: !2174)
!2269 = !DILocation(line: 377, column: 34, scope: !2174)
!2270 = !DILocation(line: 377, column: 46, scope: !2174)
!2271 = !DILocation(line: 377, column: 9, scope: !2174)
!2272 = !DILocation(line: 377, column: 7, scope: !2174)
!2273 = !DILocation(line: 378, column: 5, scope: !2174)
!2274 = !DILocation(line: 378, column: 5, scope: !2194)
!2275 = !DILocation(line: 378, column: 5, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2194, file: !2, line: 378, column: 5)
!2277 = !DILocation(line: 380, column: 51, scope: !2174)
!2278 = !DILocation(line: 380, column: 54, scope: !2174)
!2279 = !DILocation(line: 381, column: 51, scope: !2174)
!2280 = !DILocation(line: 380, column: 14, scope: !2174)
!2281 = !DILocation(line: 380, column: 12, scope: !2174)
!2282 = !DILocation(line: 382, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 382, column: 9)
!2284 = !DILocation(line: 382, column: 16, scope: !2283)
!2285 = !DILocation(line: 382, column: 9, scope: !2174)
!2286 = !DILocation(line: 383, column: 9, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 382, column: 23)
!2288 = !DILocation(line: 383, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 383, column: 9)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 383, column: 9)
!2291 = !DILocation(line: 383, column: 9, scope: !2290)
!2292 = !DILocation(line: 386, column: 9, scope: !2287)
!2293 = !DILocation(line: 386, column: 12, scope: !2287)
!2294 = !DILocation(line: 386, column: 24, scope: !2287)
!2295 = !DILocation(line: 387, column: 29, scope: !2287)
!2296 = !DILocation(line: 387, column: 9, scope: !2287)
!2297 = !DILocation(line: 388, column: 16, scope: !2287)
!2298 = !DILocation(line: 388, column: 9, scope: !2287)
!2299 = !DILocation(line: 391, column: 12, scope: !2174)
!2300 = !{!1497, !1297, i64 384}
!2301 = !DILocation(line: 391, column: 10, scope: !2174)
!2302 = !DILocation(line: 392, column: 9, scope: !2197)
!2303 = !DILocation(line: 392, column: 15, scope: !2197)
!2304 = !DILocation(line: 392, column: 24, scope: !2197)
!2305 = !DILocation(line: 392, column: 27, scope: !2197)
!2306 = !DILocation(line: 392, column: 33, scope: !2197)
!2307 = !DILocation(line: 392, column: 45, scope: !2197)
!2308 = !DILocation(line: 392, column: 42, scope: !2197)
!2309 = !DILocation(line: 392, column: 9, scope: !2174)
!2310 = !DILocation(line: 393, column: 9, scope: !2196)
!2311 = !DILocation(line: 393, column: 15, scope: !2196)
!2312 = !DILocation(line: 395, column: 34, scope: !2196)
!2313 = !DILocation(line: 395, column: 37, scope: !2196)
!2314 = !{!1497, !1297, i64 248}
!2315 = !DILocation(line: 395, column: 54, scope: !2196)
!2316 = !DILocation(line: 395, column: 60, scope: !2196)
!2317 = !DILocation(line: 395, column: 20, scope: !2196)
!2318 = !DILocation(line: 395, column: 18, scope: !2196)
!2319 = !DILocation(line: 396, column: 14, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 396, column: 13)
!2321 = !DILocation(line: 396, column: 13, scope: !2196)
!2322 = !DILocation(line: 397, column: 17, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !2, line: 396, column: 24)
!2324 = !DILocation(line: 398, column: 38, scope: !2323)
!2325 = !DILocation(line: 398, column: 41, scope: !2323)
!2326 = !{!1497, !1297, i64 240}
!2327 = !DILocation(line: 398, column: 54, scope: !2323)
!2328 = !DILocation(line: 398, column: 60, scope: !2323)
!2329 = !DILocation(line: 398, column: 24, scope: !2323)
!2330 = !DILocation(line: 398, column: 22, scope: !2323)
!2331 = !DILocation(line: 399, column: 9, scope: !2323)
!2332 = !DILocation(line: 400, column: 13, scope: !2201)
!2333 = !DILocation(line: 400, column: 13, scope: !2196)
!2334 = !DILocation(line: 401, column: 13, scope: !2200)
!2335 = !DILocation(line: 401, column: 34, scope: !2200)
!2336 = !DILocation(line: 401, column: 56, scope: !2200)
!2337 = !DILocation(line: 401, column: 59, scope: !2200)
!2338 = !DILocation(line: 401, column: 45, scope: !2200)
!2339 = !DILocation(line: 403, column: 13, scope: !2200)
!2340 = !DILocation(line: 403, column: 13, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 403, column: 13)
!2342 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 403, column: 13)
!2343 = !DILocation(line: 403, column: 13, scope: !2342)
!2344 = !DILocation(line: 407, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 407, column: 17)
!2346 = !DILocation(line: 407, column: 17, scope: !2200)
!2347 = !DILocation(line: 408, column: 33, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 407, column: 22)
!2349 = !DILocation(line: 408, column: 36, scope: !2348)
!2350 = !DILocation(line: 408, column: 53, scope: !2348)
!2351 = !DILocation(line: 408, column: 59, scope: !2348)
!2352 = !DILocation(line: 408, column: 17, scope: !2348)
!2353 = !DILocation(line: 409, column: 13, scope: !2348)
!2354 = !DILocation(line: 411, column: 33, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 410, column: 18)
!2356 = !DILocation(line: 411, column: 36, scope: !2355)
!2357 = !DILocation(line: 411, column: 49, scope: !2355)
!2358 = !DILocation(line: 411, column: 55, scope: !2355)
!2359 = !DILocation(line: 411, column: 17, scope: !2355)
!2360 = !DILocation(line: 413, column: 34, scope: !2200)
!2361 = !DILocation(line: 413, column: 13, scope: !2200)
!2362 = !DILocation(line: 413, column: 23, scope: !2200)
!2363 = !DILocation(line: 413, column: 32, scope: !2200)
!2364 = !DILocation(line: 414, column: 13, scope: !2200)
!2365 = !DILocation(line: 414, column: 23, scope: !2200)
!2366 = !DILocation(line: 414, column: 28, scope: !2200)
!2367 = !DILocation(line: 415, column: 13, scope: !2200)
!2368 = !DILocation(line: 417, column: 33, scope: !2200)
!2369 = !DILocation(line: 417, column: 13, scope: !2200)
!2370 = !DILocation(line: 418, column: 13, scope: !2200)
!2371 = !DILocation(line: 419, column: 9, scope: !2201)
!2372 = !DILocation(line: 420, column: 5, scope: !2197)
!2373 = !DILocation(line: 420, column: 5, scope: !2196)
!2374 = !DILocation(line: 422, column: 9, scope: !2204)
!2375 = !DILocation(line: 422, column: 12, scope: !2204)
!2376 = !DILocation(line: 422, column: 19, scope: !2204)
!2377 = !DILocation(line: 423, column: 9, scope: !2204)
!2378 = !DILocation(line: 423, column: 14, scope: !2204)
!2379 = !DILocation(line: 423, column: 20, scope: !2204)
!2380 = !DILocation(line: 424, column: 13, scope: !2204)
!2381 = !DILocation(line: 424, column: 16, scope: !2204)
!2382 = !DILocation(line: 424, column: 22, scope: !2204)
!2383 = !DILocation(line: 424, column: 43, scope: !2204)
!2384 = !DILocation(line: 424, column: 40, scope: !2204)
!2385 = !DILocation(line: 422, column: 9, scope: !2174)
!2386 = !DILocation(line: 425, column: 9, scope: !2203)
!2387 = !DILocation(line: 425, column: 15, scope: !2203)
!2388 = !DILocation(line: 426, column: 9, scope: !2203)
!2389 = !DILocation(line: 426, column: 21, scope: !2203)
!2390 = !DILocation(line: 426, column: 39, scope: !2203)
!2391 = !DILocation(line: 426, column: 45, scope: !2203)
!2392 = !DILocation(line: 427, column: 13, scope: !2203)
!2393 = !DILocation(line: 427, column: 19, scope: !2203)
!2394 = !DILocation(line: 427, column: 39, scope: !2203)
!2395 = !DILocation(line: 429, column: 34, scope: !2203)
!2396 = !DILocation(line: 429, column: 37, scope: !2203)
!2397 = !DILocation(line: 429, column: 54, scope: !2203)
!2398 = !DILocation(line: 429, column: 20, scope: !2203)
!2399 = !DILocation(line: 429, column: 18, scope: !2203)
!2400 = !DILocation(line: 430, column: 14, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 430, column: 13)
!2402 = !DILocation(line: 430, column: 13, scope: !2203)
!2403 = !DILocation(line: 431, column: 17, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 430, column: 24)
!2405 = !DILocation(line: 432, column: 38, scope: !2404)
!2406 = !DILocation(line: 432, column: 41, scope: !2404)
!2407 = !DILocation(line: 432, column: 54, scope: !2404)
!2408 = !DILocation(line: 432, column: 24, scope: !2404)
!2409 = !DILocation(line: 432, column: 22, scope: !2404)
!2410 = !DILocation(line: 433, column: 9, scope: !2404)
!2411 = !DILocation(line: 434, column: 13, scope: !2208)
!2412 = !DILocation(line: 434, column: 22, scope: !2208)
!2413 = !DILocation(line: 434, column: 26, scope: !2208)
!2414 = !DILocation(line: 434, column: 25, scope: !2208)
!2415 = !DILocation(line: 434, column: 35, scope: !2208)
!2416 = !DILocation(line: 434, column: 13, scope: !2203)
!2417 = !DILocation(line: 435, column: 13, scope: !2207)
!2418 = !DILocation(line: 435, column: 34, scope: !2207)
!2419 = !DILocation(line: 435, column: 56, scope: !2207)
!2420 = !DILocation(line: 435, column: 59, scope: !2207)
!2421 = !DILocation(line: 435, column: 45, scope: !2207)
!2422 = !DILocation(line: 437, column: 33, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 437, column: 17)
!2424 = !DILocation(line: 437, column: 17, scope: !2423)
!2425 = !DILocation(line: 437, column: 17, scope: !2207)
!2426 = !DILocation(line: 438, column: 21, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 438, column: 21)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 437, column: 63)
!2429 = !DILocation(line: 438, column: 21, scope: !2428)
!2430 = !DILocation(line: 439, column: 37, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 438, column: 26)
!2432 = !DILocation(line: 439, column: 40, scope: !2431)
!2433 = !DILocation(line: 439, column: 57, scope: !2431)
!2434 = !DILocation(line: 439, column: 21, scope: !2431)
!2435 = !DILocation(line: 440, column: 17, scope: !2431)
!2436 = !DILocation(line: 442, column: 37, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 441, column: 22)
!2438 = !DILocation(line: 442, column: 40, scope: !2437)
!2439 = !DILocation(line: 442, column: 53, scope: !2437)
!2440 = !DILocation(line: 442, column: 21, scope: !2437)
!2441 = !DILocation(line: 444, column: 13, scope: !2428)
!2442 = !DILocation(line: 445, column: 34, scope: !2207)
!2443 = !DILocation(line: 445, column: 13, scope: !2207)
!2444 = !DILocation(line: 445, column: 23, scope: !2207)
!2445 = !DILocation(line: 445, column: 32, scope: !2207)
!2446 = !DILocation(line: 446, column: 13, scope: !2207)
!2447 = !DILocation(line: 446, column: 23, scope: !2207)
!2448 = !DILocation(line: 446, column: 28, scope: !2207)
!2449 = !DILocation(line: 447, column: 13, scope: !2207)
!2450 = !DILocation(line: 449, column: 33, scope: !2207)
!2451 = !DILocation(line: 449, column: 13, scope: !2207)
!2452 = !DILocation(line: 450, column: 13, scope: !2207)
!2453 = !DILocation(line: 451, column: 9, scope: !2208)
!2454 = !DILocation(line: 452, column: 5, scope: !2204)
!2455 = !DILocation(line: 452, column: 5, scope: !2203)
!2456 = !DILocation(line: 454, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 454, column: 9)
!2458 = !DILocation(line: 454, column: 28, scope: !2457)
!2459 = !DILocation(line: 454, column: 44, scope: !2457)
!2460 = !DILocation(line: 454, column: 9, scope: !2457)
!2461 = !DILocation(line: 454, column: 9, scope: !2174)
!2462 = !DILocation(line: 455, column: 9, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 454, column: 49)
!2464 = !DILocation(line: 458, column: 5, scope: !2174)
!2465 = !DILocation(line: 459, column: 1, scope: !2174)
!2466 = !DISubprogram(name: "ap_proxy_release_connection", scope: !162, file: !162, line: 1083, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!36, !33, !403, !414}
!2469 = !DISubprogram(name: "ap_add_common_vars", scope: !2470, file: !2470, line: 78, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2470 = !DIFile(filename: "include/util_script.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "d1d42f2cc7c99c4f3395cf73b714d7a9")
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !547}
!2473 = !DISubprogram(name: "ap_add_cgi_vars", scope: !2470, file: !2470, line: 71, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2474 = !DISubprogram(name: "apr_table_elts", scope: !283, file: !283, line: 98, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!1898, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!2479 = !DISubprogram(name: "strcmp", scope: !2480, file: !2480, line: 156, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2480 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2481 = !DISubprogram(name: "strlen", scope: !2480, file: !2480, line: 407, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!69, !33}
!2484 = !DISubprogram(name: "apr_psprintf", scope: !2485, file: !2485, line: 182, type: !2486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2485 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_strings.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f876519c65276b07631e818685d4ffb3")
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!291, !94, !33, null}
!2488 = distinct !DISubprogram(name: "sendall", scope: !2, file: !2, line: 228, type: !2489, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!36, !403, !33, !65, !547}
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497}
!2492 = !DILocalVariable(name: "conn", arg: 1, scope: !2488, file: !2, line: 228, type: !403)
!2493 = !DILocalVariable(name: "buf", arg: 2, scope: !2488, file: !2, line: 228, type: !33)
!2494 = !DILocalVariable(name: "length", arg: 3, scope: !2488, file: !2, line: 228, type: !65)
!2495 = !DILocalVariable(name: "r", arg: 4, scope: !2488, file: !2, line: 229, type: !547)
!2496 = !DILocalVariable(name: "rv", scope: !2488, file: !2, line: 231, type: !47)
!2497 = !DILocalVariable(name: "written", scope: !2488, file: !2, line: 232, type: !65)
!2498 = !DILocation(line: 228, column: 36, scope: !2488)
!2499 = !DILocation(line: 228, column: 54, scope: !2488)
!2500 = !DILocation(line: 228, column: 70, scope: !2488)
!2501 = !DILocation(line: 229, column: 33, scope: !2488)
!2502 = !DILocation(line: 231, column: 5, scope: !2488)
!2503 = !DILocation(line: 231, column: 18, scope: !2488)
!2504 = !DILocation(line: 232, column: 5, scope: !2488)
!2505 = !DILocation(line: 232, column: 16, scope: !2488)
!2506 = !DILocation(line: 234, column: 5, scope: !2488)
!2507 = !DILocation(line: 234, column: 12, scope: !2488)
!2508 = !DILocation(line: 234, column: 19, scope: !2488)
!2509 = !DILocation(line: 235, column: 19, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 234, column: 24)
!2511 = !DILocation(line: 235, column: 17, scope: !2510)
!2512 = !DILocation(line: 236, column: 35, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 236, column: 13)
!2514 = !DILocation(line: 236, column: 41, scope: !2513)
!2515 = !DILocation(line: 236, column: 47, scope: !2513)
!2516 = !DILocation(line: 236, column: 19, scope: !2513)
!2517 = !DILocation(line: 236, column: 17, scope: !2513)
!2518 = !DILocation(line: 236, column: 63, scope: !2513)
!2519 = !DILocation(line: 236, column: 13, scope: !2510)
!2520 = !DILocation(line: 237, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 236, column: 79)
!2522 = !DILocation(line: 237, column: 13, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 237, column: 13)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 237, column: 13)
!2525 = !DILocation(line: 237, column: 13, scope: !2524)
!2526 = !DILocation(line: 240, column: 13, scope: !2521)
!2527 = !DILocation(line: 244, column: 41, scope: !2510)
!2528 = !DILocation(line: 244, column: 9, scope: !2510)
!2529 = !DILocation(line: 244, column: 15, scope: !2510)
!2530 = !DILocation(line: 244, column: 23, scope: !2510)
!2531 = !DILocation(line: 244, column: 26, scope: !2510)
!2532 = !DILocation(line: 244, column: 38, scope: !2510)
!2533 = !{!2534, !1499, i64 576}
!2534 = !{!"", !1298, i64 0, !1298, i64 96, !1298, i64 112, !1298, i64 176, !1298, i64 240, !1298, i64 304, !1298, i64 320, !1498, i64 416, !1498, i64 420, !1498, i64 424, !1498, i64 428, !1498, i64 432, !1498, i64 436, !1498, i64 440, !1498, i64 444, !1498, i64 448, !2239, i64 452, !1498, i64 460, !1298, i64 464, !1499, i64 472, !1499, i64 480, !1499, i64 488, !1499, i64 496, !1499, i64 504, !1499, i64 512, !1499, i64 520, !1499, i64 528, !1499, i64 536, !1499, i64 544, !1499, i64 552, !1499, i64 560, !1486, i64 568, !1499, i64 576, !1499, i64 584, !1297, i64 592, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 600, !1498, i64 601, !1498, i64 601, !1498, i64 601, !1498, i64 601, !1498, i64 601, !1498, i64 601, !1298, i64 602, !1298, i64 666, !1498, i64 684, !1498, i64 688, !1498, i64 692, !1498, i64 696, !1298, i64 700, !1499, i64 704, !1298, i64 712, !1298, i64 728, !1499, i64 984, !1498, i64 992, !1298, i64 993, !1298, i64 1057}
!2535 = !DILocation(line: 245, column: 16, scope: !2510)
!2536 = !DILocation(line: 245, column: 13, scope: !2510)
!2537 = !DILocation(line: 246, column: 19, scope: !2510)
!2538 = !DILocation(line: 246, column: 16, scope: !2510)
!2539 = distinct !{!2539, !2506, !2540, !1988}
!2540 = !DILocation(line: 247, column: 5, scope: !2488)
!2541 = !DILocation(line: 249, column: 5, scope: !2488)
!2542 = !DILocation(line: 250, column: 1, scope: !2488)
!2543 = !DISubprogram(name: "apr_socket_send", scope: !219, file: !219, line: 566, type: !2544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!47, !746, !33, !84}
!2546 = !DISubprogram(name: "ap_should_client_block", scope: !1884, file: !1884, line: 587, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!36, !547}
!2549 = !DISubprogram(name: "ap_get_client_block", scope: !1884, file: !1884, line: 598, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!76, !547, !291, !65}
!2552 = !DISubprogram(name: "apr_brigade_create", scope: !29, file: !29, line: 660, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!512, !94, !80}
!2555 = distinct !DISubprogram(name: "bucket_socket_ex_create", scope: !2, file: !2, line: 162, type: !2556, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!49, !2183, !80}
!2558 = !{!2559, !2560, !2561}
!2559 = !DILocalVariable(name: "data", arg: 1, scope: !2555, file: !2, line: 162, type: !2183)
!2560 = !DILocalVariable(name: "list", arg: 2, scope: !2555, file: !2, line: 163, type: !80)
!2561 = !DILocalVariable(name: "b", scope: !2555, file: !2, line: 165, type: !49)
!2562 = !DILocation(line: 162, column: 60, scope: !2555)
!2563 = !DILocation(line: 163, column: 64, scope: !2555)
!2564 = !DILocation(line: 165, column: 5, scope: !2555)
!2565 = !DILocation(line: 165, column: 17, scope: !2555)
!2566 = !DILocation(line: 165, column: 50, scope: !2555)
!2567 = !DILocation(line: 165, column: 21, scope: !2555)
!2568 = !DILocation(line: 167, column: 5, scope: !2555)
!2569 = !DILocation(line: 167, column: 5, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 167, column: 5)
!2571 = !DILocation(line: 168, column: 5, scope: !2555)
!2572 = !DILocation(line: 168, column: 8, scope: !2555)
!2573 = !DILocation(line: 168, column: 13, scope: !2555)
!2574 = !{!2263, !1297, i64 48}
!2575 = !DILocation(line: 169, column: 15, scope: !2555)
!2576 = !DILocation(line: 169, column: 5, scope: !2555)
!2577 = !DILocation(line: 169, column: 8, scope: !2555)
!2578 = !DILocation(line: 169, column: 13, scope: !2555)
!2579 = !{!2263, !1297, i64 56}
!2580 = !DILocation(line: 170, column: 34, scope: !2555)
!2581 = !DILocation(line: 170, column: 37, scope: !2555)
!2582 = !DILocation(line: 170, column: 12, scope: !2555)
!2583 = !DILocation(line: 171, column: 1, scope: !2555)
!2584 = !DILocation(line: 170, column: 5, scope: !2555)
!2585 = !DISubprogram(name: "apr_bucket_eos_create", scope: !29, file: !29, line: 1343, type: !2586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!49, !80}
!2588 = !DISubprogram(name: "ap_scan_script_header_err_brigade_ex", scope: !2470, file: !2470, line: 134, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!36, !547, !512, !291, !36}
!2591 = !DISubprogram(name: "apr_brigade_destroy", scope: !29, file: !29, line: 668, type: !2592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!47, !512}
!2594 = !DISubprogram(name: "apr_table_get", scope: !283, file: !283, line: 268, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!33, !2477, !33}
!2597 = !DISubprogram(name: "apr_table_unset", scope: !283, file: !283, line: 312, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !488, !33}
!2600 = !DISubprogram(name: "ap_cstr_casecmp", scope: !128, file: !128, line: 2548, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2601 = !DISubprogram(name: "ap_pass_brigade", scope: !111, file: !111, line: 314, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2602 = !DISubprogram(name: "apr_bucket_alloc", scope: !29, file: !29, line: 983, type: !2603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!42, !65, !80}
!2605 = !DISubprogram(name: "apr_bucket_free", scope: !29, file: !29, line: 989, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2606 = distinct !DISubprogram(name: "bucket_socket_ex_make", scope: !2, file: !2, line: 153, type: !2607, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!49, !49, !2183}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "b", arg: 1, scope: !2606, file: !2, line: 153, type: !49)
!2611 = !DILocalVariable(name: "data", arg: 2, scope: !2606, file: !2, line: 153, type: !2183)
!2612 = !DILocation(line: 153, column: 54, scope: !2606)
!2613 = !DILocation(line: 153, column: 73, scope: !2606)
!2614 = !DILocation(line: 155, column: 5, scope: !2606)
!2615 = !DILocation(line: 155, column: 8, scope: !2606)
!2616 = !DILocation(line: 155, column: 20, scope: !2606)
!2617 = !{!2263, !1297, i64 16}
!2618 = !DILocation(line: 156, column: 5, scope: !2606)
!2619 = !DILocation(line: 156, column: 8, scope: !2606)
!2620 = !DILocation(line: 156, column: 20, scope: !2606)
!2621 = !{!2263, !1499, i64 24}
!2622 = !DILocation(line: 157, column: 5, scope: !2606)
!2623 = !DILocation(line: 157, column: 8, scope: !2606)
!2624 = !DILocation(line: 157, column: 20, scope: !2606)
!2625 = !{!2263, !1499, i64 32}
!2626 = !DILocation(line: 158, column: 22, scope: !2606)
!2627 = !DILocation(line: 158, column: 5, scope: !2606)
!2628 = !DILocation(line: 158, column: 8, scope: !2606)
!2629 = !DILocation(line: 158, column: 20, scope: !2606)
!2630 = !{!2263, !1297, i64 40}
!2631 = !DILocation(line: 159, column: 12, scope: !2606)
!2632 = !DILocation(line: 159, column: 5, scope: !2606)
!2633 = distinct !DISubprogram(name: "bucket_socket_ex_read", scope: !2, file: !2, line: 93, type: !45, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2659, !2661}
!2635 = !DILocalVariable(name: "a", arg: 1, scope: !2633, file: !2, line: 93, type: !49)
!2636 = !DILocalVariable(name: "str", arg: 2, scope: !2633, file: !2, line: 93, type: !83)
!2637 = !DILocalVariable(name: "len", arg: 3, scope: !2633, file: !2, line: 94, type: !84)
!2638 = !DILocalVariable(name: "block", arg: 4, scope: !2633, file: !2, line: 95, type: !85)
!2639 = !DILocalVariable(name: "data", scope: !2633, file: !2, line: 97, type: !2183)
!2640 = !DILocalVariable(name: "p", scope: !2633, file: !2, line: 98, type: !746)
!2641 = !DILocalVariable(name: "buf", scope: !2633, file: !2, line: 99, type: !291)
!2642 = !DILocalVariable(name: "rv", scope: !2633, file: !2, line: 100, type: !47)
!2643 = !DILocalVariable(name: "timeout", scope: !2633, file: !2, line: 101, type: !207)
!2644 = !DILocalVariable(name: "h", scope: !2645, file: !2, line: 124, type: !2647)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !2, line: 123, column: 19)
!2646 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 123, column: 9)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_heap", file: !29, line: 539, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_heap", file: !29, line: 543, size: 256, elements: !2650)
!2650 = !{!2651, !2656, !2657, !2658}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2649, file: !29, line: 545, baseType: !2652, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_refcount", file: !29, line: 524, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_refcount", file: !29, line: 531, size: 32, elements: !2654)
!2654 = !{!2655}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2653, file: !29, line: 533, baseType: !36, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2649, file: !29, line: 549, baseType: !291, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_len", scope: !2649, file: !29, line: 551, baseType: !65, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !2649, file: !29, line: 553, baseType: !39, size: 64, offset: 192)
!2659 = !DILocalVariable(name: "ap__a", scope: !2660, file: !2, line: 134, type: !49)
!2660 = distinct !DILexicalBlock(scope: !2645, file: !2, line: 134, column: 9)
!2661 = !DILocalVariable(name: "ap__b", scope: !2660, file: !2, line: 134, type: !49)
!2662 = !DILocation(line: 93, column: 55, scope: !2633)
!2663 = !DILocation(line: 93, column: 71, scope: !2633)
!2664 = !DILocation(line: 94, column: 55, scope: !2633)
!2665 = !DILocation(line: 95, column: 59, scope: !2633)
!2666 = !DILocation(line: 97, column: 5, scope: !2633)
!2667 = !DILocation(line: 97, column: 21, scope: !2633)
!2668 = !DILocation(line: 97, column: 28, scope: !2633)
!2669 = !DILocation(line: 97, column: 31, scope: !2633)
!2670 = !DILocation(line: 98, column: 5, scope: !2633)
!2671 = !DILocation(line: 98, column: 19, scope: !2633)
!2672 = !DILocation(line: 98, column: 23, scope: !2633)
!2673 = !DILocation(line: 98, column: 29, scope: !2633)
!2674 = !DILocation(line: 99, column: 5, scope: !2633)
!2675 = !DILocation(line: 99, column: 11, scope: !2633)
!2676 = !DILocation(line: 100, column: 5, scope: !2633)
!2677 = !DILocation(line: 100, column: 18, scope: !2633)
!2678 = !DILocation(line: 101, column: 5, scope: !2633)
!2679 = !DILocation(line: 101, column: 25, scope: !2633)
!2680 = !DILocation(line: 103, column: 9, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 103, column: 9)
!2682 = !DILocation(line: 103, column: 15, scope: !2681)
!2683 = !DILocation(line: 103, column: 9, scope: !2633)
!2684 = !DILocation(line: 104, column: 32, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 103, column: 37)
!2686 = !DILocation(line: 104, column: 9, scope: !2685)
!2687 = !DILocation(line: 105, column: 32, scope: !2685)
!2688 = !DILocation(line: 105, column: 9, scope: !2685)
!2689 = !DILocation(line: 106, column: 5, scope: !2685)
!2690 = !DILocation(line: 108, column: 6, scope: !2633)
!2691 = !DILocation(line: 108, column: 10, scope: !2633)
!2692 = !DILocation(line: 109, column: 6, scope: !2633)
!2693 = !DILocation(line: 109, column: 10, scope: !2633)
!2694 = !DILocation(line: 110, column: 29, scope: !2633)
!2695 = !DILocation(line: 110, column: 28, scope: !2633)
!2696 = !DILocation(line: 110, column: 34, scope: !2633)
!2697 = !DILocation(line: 110, column: 37, scope: !2633)
!2698 = !DILocation(line: 110, column: 11, scope: !2633)
!2699 = !DILocation(line: 110, column: 9, scope: !2633)
!2700 = !DILocation(line: 112, column: 26, scope: !2633)
!2701 = !DILocation(line: 112, column: 29, scope: !2633)
!2702 = !DILocation(line: 112, column: 34, scope: !2633)
!2703 = !DILocation(line: 112, column: 10, scope: !2633)
!2704 = !DILocation(line: 112, column: 8, scope: !2633)
!2705 = !DILocation(line: 114, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 114, column: 9)
!2707 = !DILocation(line: 114, column: 15, scope: !2706)
!2708 = !DILocation(line: 114, column: 9, scope: !2633)
!2709 = !DILocation(line: 115, column: 32, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 114, column: 37)
!2711 = !DILocation(line: 115, column: 35, scope: !2710)
!2712 = !DILocation(line: 115, column: 9, scope: !2710)
!2713 = !DILocation(line: 116, column: 5, scope: !2710)
!2714 = !DILocation(line: 118, column: 9, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 118, column: 9)
!2716 = !DILocation(line: 118, column: 12, scope: !2715)
!2717 = !DILocation(line: 118, column: 27, scope: !2715)
!2718 = !DILocation(line: 118, column: 30, scope: !2715)
!2719 = !DILocation(line: 118, column: 33, scope: !2715)
!2720 = !DILocation(line: 118, column: 9, scope: !2633)
!2721 = !DILocation(line: 119, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 118, column: 45)
!2723 = !DILocation(line: 119, column: 9, scope: !2722)
!2724 = !DILocation(line: 120, column: 16, scope: !2722)
!2725 = !DILocation(line: 120, column: 9, scope: !2722)
!2726 = !DILocation(line: 123, column: 10, scope: !2646)
!2727 = !DILocation(line: 123, column: 9, scope: !2646)
!2728 = !DILocation(line: 123, column: 14, scope: !2646)
!2729 = !DILocation(line: 123, column: 9, scope: !2633)
!2730 = !DILocation(line: 124, column: 9, scope: !2645)
!2731 = !DILocation(line: 124, column: 26, scope: !2645)
!2732 = !DILocation(line: 127, column: 28, scope: !2645)
!2733 = !DILocation(line: 127, column: 27, scope: !2645)
!2734 = !DILocation(line: 127, column: 10, scope: !2645)
!2735 = !DILocation(line: 127, column: 16, scope: !2645)
!2736 = !DILocation(line: 127, column: 24, scope: !2645)
!2737 = !DILocation(line: 130, column: 34, scope: !2645)
!2738 = !DILocation(line: 130, column: 37, scope: !2645)
!2739 = !DILocation(line: 130, column: 43, scope: !2645)
!2740 = !DILocation(line: 130, column: 42, scope: !2645)
!2741 = !DILocation(line: 130, column: 13, scope: !2645)
!2742 = !DILocation(line: 130, column: 11, scope: !2645)
!2743 = !DILocation(line: 131, column: 13, scope: !2645)
!2744 = !DILocation(line: 131, column: 16, scope: !2645)
!2745 = !DILocation(line: 131, column: 11, scope: !2645)
!2746 = !DILocation(line: 132, column: 9, scope: !2645)
!2747 = !DILocation(line: 132, column: 12, scope: !2645)
!2748 = !DILocation(line: 132, column: 22, scope: !2645)
!2749 = !{!2750, !1499, i64 16}
!2750 = !{!"apr_bucket_heap", !2751, i64 0, !1297, i64 8, !1499, i64 16, !1297, i64 24}
!2751 = !{!"apr_bucket_refcount", !1498, i64 0}
!2752 = !DILocation(line: 133, column: 16, scope: !2645)
!2753 = !DILocation(line: 133, column: 10, scope: !2645)
!2754 = !DILocation(line: 133, column: 14, scope: !2645)
!2755 = !DILocation(line: 134, column: 9, scope: !2645)
!2756 = !DILocation(line: 134, column: 9, scope: !2660)
!2757 = !DILocation(line: 134, column: 9, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 134, column: 9)
!2759 = !DILocation(line: 135, column: 5, scope: !2646)
!2760 = !DILocation(line: 135, column: 5, scope: !2645)
!2761 = !DILocation(line: 137, column: 25, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2646, file: !2, line: 136, column: 10)
!2763 = !DILocation(line: 137, column: 9, scope: !2762)
!2764 = !DILocation(line: 138, column: 38, scope: !2762)
!2765 = !DILocation(line: 138, column: 13, scope: !2762)
!2766 = !DILocation(line: 138, column: 11, scope: !2762)
!2767 = !DILocation(line: 139, column: 16, scope: !2762)
!2768 = !DILocation(line: 139, column: 19, scope: !2762)
!2769 = !DILocation(line: 139, column: 10, scope: !2762)
!2770 = !DILocation(line: 139, column: 14, scope: !2762)
!2771 = !DILocation(line: 141, column: 5, scope: !2633)
!2772 = !DILocation(line: 142, column: 1, scope: !2633)
!2773 = !DISubprogram(name: "apr_socket_timeout_get", scope: !219, file: !219, line: 739, type: !2774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!47, !746, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!2777 = !DISubprogram(name: "apr_socket_timeout_set", scope: !219, file: !219, line: 709, type: !2778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!47, !746, !207}
!2780 = !DISubprogram(name: "apr_socket_recv", scope: !219, file: !219, line: 669, type: !2781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!47, !746, !291, !84}
!2783 = !DISubprogram(name: "apr_bucket_heap_make", scope: !29, file: !29, line: 1443, type: !2784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!49, !49, !33, !65, !39}
!2786 = !DISubprogram(name: "apr_bucket_immortal_make", scope: !29, file: !29, line: 1390, type: !2787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!49, !49, !33, !65}
!2789 = !DISubprogram(name: "ap_proxy_canon_netloc", scope: !162, file: !162, line: 681, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!291, !94, !2792, !1879, !1879, !1879, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2794 = !DISubprogram(name: "apr_snprintf", scope: !2485, file: !2485, line: 279, type: !2795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!36, !291, !65, !33, null}
!2797 = !DISubprogram(name: "strchr", scope: !2480, file: !2480, line: 246, type: !2798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!291, !33, !36}
!2800 = !DISubprogram(name: "apr_pstrcat", scope: !2485, file: !2485, line: 147, type: !2801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!291, !94, null}
!2803 = !DISubprogram(name: "ap_proxy_canonenc", scope: !162, file: !162, line: 679, type: !2804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!291, !94, !33, !36, !964, !36, !36}
!2806 = !DISubprogram(name: "ap_internal_redirect_handler", scope: !2807, file: !2807, line: 172, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2807 = !DIFile(filename: "include/http_request.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "50af58554133fe76584225d134c5ce9f")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !33, !547}
!2810 = !DISubprogram(name: "ap_sub_req_lookup_file", scope: !2807, file: !2807, line: 90, type: !2811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!547, !33, !1870, !510}
!2813 = !DISubprogram(name: "ap_run_sub_req", scope: !2807, file: !2807, line: 144, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
